[
  'Animals',     'Art',
  'Board Games', 'Books',
  'Celebrities', 'Comics',
  'Computers',   'Film',
  'Gadgets',     'General Knowledge',
  'Geography',   'History',
  'Music',       'Musicals',
  'Mythology',   'Politics',
  'Sports',      'T.V.',
  'Vehicles',    'Video Games'
].each do |cat|
  Category.create(name: cat)
end



10.times do
  alpha = 'abcdefghijklmnopqrstuvwxyz'.split('')
  # random number between 10 and 100
  count = (rand(5) + 1) * 10
  name = ''

  3.times do 
    name += alpha.sample
  end

  Score.create(name: name, count: count)
end


