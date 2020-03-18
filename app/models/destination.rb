class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def last_five
        self.posts.last(5)
    end

    def featured_post #TO-DO
        
    end

    def ave_age
        people = self.bloggers.uniq
        age_sum = people.age.reduce(:sum)
        age_average = age_sum/people.count
        age_average
    end
end
