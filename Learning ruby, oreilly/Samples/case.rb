#!/usr/bin/env ruby

lang = :fr

dog = case lang
  when :en: "dog"
  when :es: "perro"
  when :fr: "chien"
  when :de: "Hund"
  else      "dog"
end
# "chien" is assigned to dog

lang = "de"

dog = case lang
  when "en": "dog"
  when "es": "perro"
  when "fr": "chien"
  when "de": "Hund"
  else      "dog"
end
# "Hund" is assigned to dog
