def reformat_languages(languages)
  new_languages = {}
  languages.each do |style, languages|
    languages.each do |name, attributes|
      new_languages[name] ||= attributes
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