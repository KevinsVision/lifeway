class User < ApplicationRecord

  validates :msg_id, uniqueness: true

# create a method that counts the words within the text
  def count
    # create an emtpy array
    list = []

    # downcase and hash all words
    num = message.downcase.scan(/\w+/).size
    # push the word count to array
    list.push(num)
    # call back the array
    list
  end

  #  ** Below I attempted to total the number of all words **
  # def total_words
  #   nums = User.all.word_count

  #   nums.each do |num|
  #     p num + num
  #   end
    
  # end

end
