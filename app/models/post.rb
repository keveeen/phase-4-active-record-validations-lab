class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

    validate :title_content
    
    
    def title_content


        if title 
        phrases = ["Won't Believe", "Secret", "Top [number]", "Guess"]

        

         if phrases.none?{ |w| title.include?(w) }

                errors.add(:title, "Does not contain clickbait")
        end
    end
            

    end

        # %w{ant bear cat}.none? { |word| word.length == 5 } #=> true
      


    #    [1, 2, 3].each do |n|
    #     text = "Current number is: #{n}"
    #     puts text
    #   end

 
end
