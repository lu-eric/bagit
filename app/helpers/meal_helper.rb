module MealHelper
  def print_array(ary)
	ary.each do |item|
		concat (raw (item + "<br />"))
	end
  end
end
