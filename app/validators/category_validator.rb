class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category.match?("Fiction" || "Non-Fiction")
            record.errors[:category] << "Category needs to be either Fiction or Non-Fiction"
        end
    end
end
