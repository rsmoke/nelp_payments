class ApplicationController < ActionController::Base
    before_action :current_program_year 

    def current_program_year
        @current_program_year ||= ProgramSetting.active_program.program_year
    rescue
        flash.now[:alert] = "Need to create a program setting!"
    end

    helper_method :current_program_year

end
