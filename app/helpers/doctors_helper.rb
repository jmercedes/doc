module DoctorsHelper
  
  def to_columns(collection, num_columns)
    html = ""
    count = collection.size
    num_rows = (count / num_columns.to_f).ceil
    collection.each_with_index do |item, i|        
      html << '<td>'.html_safe if (i % num_rows == 0)
      html << yield(item, i)
      html << '</td>'.html_safe if (i % num_rows == 0 || i == (count - 1))
    end
    html
  end
  
end
