module ApplicationHelper
  def page_header(text)
  content_for(:page_header) { text.to_s }
end
def recipients_options
    s = ''
    User.all.each do |user|
      s << "<option value='#{user.id}'>#{user.first_name}</option>"
    end
    s.html_safe
  end
end
