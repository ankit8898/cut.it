Url.delete_all

urls = ["https://www.facebook.com/ankit.8898",
        "http://linkedin.com/pub/ankit-gupta/25/205/254",
        "https://twitter.com/ankit8898",
        "https://github.com/ankit8898",
        "https://accounts.google.com/SignUp",
        "https://cse.google.com/cse/",
        "https://github.com"
        ]

urls.each do |url|
  url = Url.create!(name: url)
  puts "Created url: #{url.name}"
end
