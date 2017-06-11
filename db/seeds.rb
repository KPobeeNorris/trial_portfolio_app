3.times do |topic|
  Topic.create!(
  title: "Title #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
  title: "My blog post #{blog}",
  body: "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.",
  topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
  title: "All the skills, well #{skill} of them anyway.",
  percent_utilised: 10
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio item #{portfolio_item}",
  subtitle: "Ruby on Rails",
  body: "Chuck swine jowl ham frankfurter. Chicken salami t-bone kevin chuck ribeye pork loin pancetta leberkas short ribs jowl frankfurter andouille. Hamburger ball tip ribeye beef ribs rump t-bone shankle meatloaf sirloin kevin pork loin. Alcatra chicken sausage pork loin. Tail corned beef cupim ball tip.",
  main_image: "http://via.placeholder.com/550x250",
  thumb_image: "http://via.placeholder.com/350x150",
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio item #{portfolio_item}",
  subtitle: "Javascript",
  body: "Chuck swine jowl ham frankfurter. Chicken salami t-bone kevin chuck ribeye pork loin pancetta leberkas short ribs jowl frankfurter andouille. Hamburger ball tip ribeye beef ribs rump t-bone shankle meatloaf sirloin kevin pork loin. Alcatra chicken sausage pork loin. Tail corned beef cupim ball tip.",
  main_image: "http://via.placeholder.com/550x250",
  thumb_image: "http://via.placeholder.com/350x150",
  )
end

puts "9 portfolio items created"
