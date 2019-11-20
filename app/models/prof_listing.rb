class ProfListing < ApplicationRecord
  belongs_to :user
  COMPANIES = ["Animal Farm", "Pride and Prejudice", "Manchester by the Sea", "Life of Pi","To Kill a Mockingbird"]
  ROLES = ["Analyst", "Consultant", "Junior Developer", "Partner", "Associate", "Product Manager"]
  INDUSTRIES = ["Information Technology and Services", "Marketing and Advertising", "Human Resources", "Computer Software", "Financial Services", "Staffing and Recruitment", "Internet", "Management Consulting", "Telecommunications", "Retail"]
end
