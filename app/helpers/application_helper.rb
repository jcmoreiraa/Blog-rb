# app/helpers/application_helper.rb
module ApplicationHelper
  def flash_class(type)
    case type
    when 'notice' then 'bg-green-500 text-white'
    when 'alert'  then 'bg-red-500 text-white'
    else 'bg-gray-500 text-white'
    end
  end
end
