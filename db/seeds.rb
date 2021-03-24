categories = [
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
]

categories.each do |category_name|
  category = Category.create(name: category_name)


  10.times do
    alpha = 'abcdefghijklmnopqrstuvwxyz'.split('')
    # random number between 10 and 50
    count = (rand(5) + 1) * 10
    name = ''
    # random string of alphabet
    3.times do
      name += alpha.sample
    end
    Score.create(name: name, count: count, category: category)
  end
end


