json.array!(@pins) do |pin|
  json.extract! pin, :id, :pun_text
  json.url pin_url(pin, format: :json)
end
