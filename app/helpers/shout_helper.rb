module ShoutHelper
  def like_button(shout)
    if current_user.liked?(shout)
      link_to "Unlike", unlike_shout_path(shout), method: :delete
    else
      link_to "Like", like_shout_path(shout), method: :post
    end
  end

  def autolink(text)
    text.gsub(/@\w+/) { |metion| link_to metion, user_path(metion[1..-1]) }.html_safe
  end
end