module ApplicationHelper
  def currency_color q, c
    if c > q
      "negative"
    else
      "positive"
    end
  end
end
