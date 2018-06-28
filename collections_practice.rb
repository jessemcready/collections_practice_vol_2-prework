# your code goes here
def begins_with_r(*args)
  args.each do |arg|
    arg.each do |word|
      if !word.start_with?("r")
        return false
      end
    end
  end
  true
end

def contain_a(*args)
  args_with_a = []
  args.each do |arg|
    arg.each do |word|
      if word.include?("a")
        args_with_a << word
      end 
    end 
  end
  args_with_a
end

def first_wa(*args)
  args.each do |arg|
    arg.each do |word|
      if word.to_s.start_with?("wa")
        return word
      end
    end
  end
end

def remove_non_strings(*args)
  strings = []
  args.each do |arg|
    arg.each do |word|
      if word.is_a?(String)
        strings << word
      end
    end
  end
  strings
end

def count_elements(*args)
  args.each do |arg|
    arg.each do |pair|
      count = arg.count(pair)
      arg.uniq!
      pair[:count] = count
    end
  end
  args.flatten
end

def merge_data(keys, data)
  merged = []
  merged_person = {}
  
  keys.each do |pair|
    pair.each do |key, value|
      merged_person[key] = value
      puts "MERGED_PERSON #{merged_person}"
      data.each do |person|
        person.each do |name, characteristics|
          if name == merged_person[:first_name]
            characteristics.each do |char, rating|
              merged_person[char] = rating  
            end
            merged << merged_person
          end
        end
      end
    end
  end
  merged
end

def find_cool(*args)
  
end

def organize_schools(*schools)
  
end