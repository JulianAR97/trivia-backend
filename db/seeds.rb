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


