def full_title(page_title)
  base_tittle = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_tittle
  else
    "#{base_tittle} | #{page_title}"
  end
end

def sign_in(user, options={})
  if options[:no_copybara]
    # Sign in when not use Copybara
    remember_token = User.new_remember_token
    cookies[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
  else
    visit signin_path
    fill_in "Email",    with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end