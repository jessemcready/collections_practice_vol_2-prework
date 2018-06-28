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
  
  # first loop through our keys to get, in our case, the first names of our people
  keys.each do |pair|
    # then for each first_name=>"<name>" pair (Blake/Ashley)
    pair.each do |key, value|
      # we create a new empty hash person
      merged_person = {}
      # and begin with first giving that hash person a key value pair of first_name: "Blake/Ashley"
      merged_person[key] = value
      # then we have to traverse our data argument
      data.each do |person|
        # at each person that is already in our data array, get the hash for each person
        person.each do |name, characteristics|
          # name will either be Blake or Ashley, and characteristics is the hash of awesomeness, height, and last_name
          # if we get to the person we originally started back with merged_person[key] = value
          if name == merged_person[:first_name]
            # we want to traverse our characteristics hash 
            characteristics.each do |char, rating|
              # and add those characteristics to our merged_person hash, so that they are all on the same level
              merged_person[char] = rating
            end
            # push our merged person into our merged array and return it at the end
            merged << merged_person
          end
        end
      end
    end
  end
  merged
end

def find_cool(*args)
  cool = []
  args.each do |arg|
    arg.each do |pair|
      pair.each do |key, value|
          if value == "cool"
            cool << pair  
          end
      end
    end
  end
  cool
end

def organize_schools(*schools)
  schools.rehash
end