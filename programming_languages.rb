def reformat_languages(languages)
  new_languages = {}
  langauges.each do |style, languages|
    language.each do |name, attributes|
      new_langauges[name] ||= attributes
      new_languages[name][:style] = []
      new_languages[name][:style] << style
    end
  end
  new_languages
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}

reformat_languages(languages)