crumb :quotes_index do
  link 'Quotes list', quotes_path
end

crumb :quotes_new do
  link 'New quote', new_quote_path
  parent :quotes_index
end

crumb :quotes_edit do
  link 'Edit quote', edit_quote_path(quote)
  parent :quotes_index
end
