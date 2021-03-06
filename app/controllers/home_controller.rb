class HomeController < ApplicationController

  layout "home"
  include HealthVault

  def index
    authenticate_health_vault
  end
  def authenticate_health_vault
    is_connection_success = params[:target]

    if is_connection_success == "AppAuthSuccess"
      begin
        app = Application.default
        connection = app.create_connection
        connection.authenticate
      rescue Exception => e
        flash.now[:warning]= 'Connection with Health Vault could not be established'
        redirect_to '/patients/activities/new'
      end

      if params[:wctoken].nil?
        flash.now[:danger]= 'Authentication failed, please try again'
        return
      end

      connection.user_auth_token = params[:wctoken]
      begin
        request = Request.create("GetPersonInfo", connection)
        result = request.send
        puts result.info.person_info.to_s
        current_user = User.retrieve(session[:username])
        current_user.hv_recordid = result.info.person_info.selected_record_id
        current_user.hv_personid = result.info.person_info.person_id
        current_user.save
        flash.now[:notice]= 'Connection to Health Vault Established'
      rescue Exception => e
        flash.now[:warning]= 'Connection with Health Vault Not Established'
        puts e.to_s
      end
      redirect_to '/patients/activities/new'
      return
    end

    redirect_to "http://www.epiceramlipcare.com"
    return

  end

  def download_pdf

    if physicians_physician_signed_in?

      send_file(
          "#{Rails.root}/public/EPICERAM_L_ORDER_FORM_REV.pdf",
          filename: "EPICERAM_L_ORDER_FORM_REV.pdf",
          type: "application/pdf"
      )
    else
      redirect_to '/physicians/physicians/sign_in'
      return
    end

  end

end
