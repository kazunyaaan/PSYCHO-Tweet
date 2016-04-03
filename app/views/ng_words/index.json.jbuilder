json.array!(@ng_words) do |ng_word|
  json.extract! ng_word, :id, :word, :point
  json.url ng_word_url(ng_word, format: :json)
end
