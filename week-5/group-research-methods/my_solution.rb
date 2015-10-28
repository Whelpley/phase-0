# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

=begin

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#
=end

# Person 4

=begin

Iterative solution here, refactored in the un-commented section:

def my_array_deletion_method!(source, thing_to_delete)
  source.each do |element|
    if element.to_s.include? thing_to_delete
      source.delete(element)
    end
  end
  return source
end

=end

def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |element| element.to_s.include? thing_to_delete}
end

=begin

Iterative solution here, refactored in the un-commented section:

def my_hash_deletion_method!(source, thing_to_delete)
  source.each_key do |key|
    if key.to_s == thing_to_delete
      source.delete(key)
    end
  end
  return source
end

=end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|key,value| key == thing_to_delete}
end

=begin
Identify and describe the Ruby method(s) you implemented.

The main method here is .delete_if (.delete was used in the original, iterative solution). On an array, it works like this:

  array.delete_if {|element| BOOLEAN}

With this code, if the BOOLEAN expression evaluates to True, that element in the array will be deleted.

This works similarly in the hash version:

  hash.delete_if {|key, value| BOOLEAN}

Again, if the BOOLEAN evaluates to True, that key/value pair will be deleted from the hash.

These are both destructive methods, as per the specs.

=end

=begin

# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#
=end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# I am getting better familiarity with the research process, and how to read the Ruby docs. I hope that my explanations are straightforward, and if not, I will learn about it in the feedback process.
#
#