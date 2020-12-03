inputFile = File.readlines("data.txt").map(&:chomp)
# inputFile = File.readlines("sample.txt").map(&:chomp)
def part1(input)
    for counter in 0..(input.count-1)
        for otherCounter in counter..(input.count-1)
            if (input[counter].to_i + input[otherCounter].to_i) == 2020
                return input[counter].to_i *  input[otherCounter].to_i
            end
        end
    end
end
def part2(input)
    for counter in 0..(input.count-1)
        for otherCounter in counter..(input.count-1)
            if (input[counter].to_i + input[otherCounter].to_i) < 2020
                for anotherFuckingCounter in otherCounter..(input.count-1)
                    if (input[counter].to_i + input[otherCounter].to_i + input[anotherFuckingCounter].to_i) == 2020
                        return input[counter].to_i *  input[otherCounter].to_i * input[anotherFuckingCounter].to_i
                    end
                end
            end
        end
    end
end

puts part1(inputFile)
puts part2(inputFile)
