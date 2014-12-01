json.array!(@cal_taxes) do |cal_tax|
  json.extract! cal_tax, :id, :withtax, :withouttax
  json.url cal_tax_url(cal_tax, format: :json)
end
