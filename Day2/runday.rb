inputFile = File.readlines("data.txt").map(&:chomp)
# inputFile = File.readlines("sample.txt").map(&:chomp)
def part1(input)
    totalValid = 0
    input.each do |line|
        currCount = 0
        rule, password = line.split(':')
        password.strip!
        count, char = rule.split(' ')
        min, max = count.split('-')
        password.each_char do |currChar|
            currCount += 1 if char == currChar
            break if currCount > max.to_i
        end
        totalValid += 1 if currCount.between?(min.to_i, max.to_i)
    end
    return totalValid
end

def part2(input)
    totalValid = 0
    input.each do |line|
        rule, password = line.split(':')
        password.strip!
        count, char = rule.split(' ')
        first, last = count.split('-')
        firstChar = first.to_i - 1
        lastChar = last.to_i - 1
        passwordChars = password.split('')
        totalValid += 1 if (passwordChars[firstChar] == char && passwordChars[lastChar] != char) || (passwordChars[firstChar] != char && passwordChars[lastChar] == char)
    end
    return totalValid
end

puts part1(inputFile)
puts part2(inputFile)
