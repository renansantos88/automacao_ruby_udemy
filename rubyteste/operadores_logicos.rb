v1 = 1

v2 = 2

v3 = 3

v4 = 4


if (v1 < v2) && (v3 < v4)
    puts 'condição atentida pelos dois casos'
else
    puts 'condição não atendida pelos dois casos'
end


if (v1 < v2) || (v3 < v4)
    puts 'condição atentida pelos dois casos'
else
    puts 'condição não atendida pelos dois casos'
end

if !(v3 < v4)
    puts 'negação atentida'
else
    puts 'negação não atendida'
end

