def factor(list)
    number_pairs = list.length/2
    set = []
    first, *rest = *list
    rest.each_with_index do |person, index| 
      pairs = []
      pairs << [first, person]
      (1..number_pairs-1).each do |offset|
        pairs << [rest[(index-offset)%rest.length], rest[(index+offset)%rest.length]]
      end
      set << pairs
    end
    set
end

names = [
'Adriana DiPietro',
'Alexander Darvin',
'Ariel Ibarra',
'Brandon Gerbasi',
'Brock Byrd',
'Bryan Cervantes',
'Cailin Kless',
'Carissa Sarreal',
'Christina Howard',
'CJ Davis',
'Conner Fortner',
'Daniyella Harmon',
'Dasha Kondratyeva',
'David Mills',
'Eli Huebner',
'Ghamdan Mohsin',
'Janet Kim',
'Jessica Watts',
# 'John Zonneveld',
'Kayla Budzeak',
'Latisha Joe',
'Leah Schlackman',
# 'Leon Huggins',
'Mallory Johnson',
'Matthew Thomas',
'Moose Davis',
'QueenTesa Fuggett',
'Rachel Gauna',
'Rocio Batres',
'Tabatha Roman',
'Taylor Booth',
'Travis Lee',
'Valeria Copleman',
]

slow_names = [
]

num = rand(0..names.length-1)
puts "Number of students: #{names.length}"
new_names = names
if names.length % 2 != 0
  puts "Extra Student: #{names[num]}"
  new_names = names[0...num] + names[num+1...names.length]
end
sets = factor(new_names)
week_index = rand(0..sets.length - 1)
puts "Index used : #{week_index}"


sets[week_index].each do |pair|
    puts "| #{pair[0]}   | #{pair[1]}    |"
end

# num2 = rand(0..slow_names.length-1)
# puts "Number of students: #{slow_names.length}"
# new_names2 = slow_names
# if slow_names.length % 2 != 0
#   puts "Extra Student: #{slow_names[num2]}"
#   new_names2 = slow_names[0...num2] + slow_names[num2+1...slow_names.length]
# end
# sets2 = factor(new_names2)
# week_index2 = rand(0..sets2.length - 1)
# puts "Index used : #{week_index2}"


# sets2[week_index2].each do |pair|
#     puts "| #{pair[0]}   | #{pair[1]}    |"
# end



