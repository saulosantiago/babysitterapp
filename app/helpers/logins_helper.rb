module LoginsHelper

    def log_in(user)
        session[:user_id] = user.id
    end


    def current_user
        
        @current_user ||= User.find_by(id: session[:user_id])

    end

    def logged_in?
        
        !current_user.nil?
    end

    def authenticate(email, password)

        @user = User.new
        @user = User.find_by( email: email, password: password)

        if @user != nil
            @user
        else
            nil
        end

    end

end
