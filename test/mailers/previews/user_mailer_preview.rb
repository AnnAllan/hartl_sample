# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at
  # https://ide.c9.io/annallan/rails-tutorial
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at
  # https://ide.c9.io/annallan/rails-tutorial
  def password_reset
    UserMailer.password_reset
  end
end