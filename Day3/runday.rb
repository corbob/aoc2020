inputFile = File.readlines("data.txt").map(&:chomp)
# inputFile = File.readlines("sample.txt").map(&:chomp)
def part1(input, xMov = 3, yMov = 1)
    totalTrees = xPos = yPos = 0
    input.each do |line|
        if (yPos % yMov) == 0 then
            currLine = line.split('')
            totalTrees += 1 if currLine[xPos] == '#'
            xPos = (xPos + xMov) % currLine.count
        end
        yPos += 1
    end
    return totalTrees
end

def part2(input)
    return part1(input, 1) * part1(input, 3) * part1(input, 5) * part1(input, 7) * part1(input, 1, 2)
end

puts part1(inputFile)
puts part2(inputFile)
