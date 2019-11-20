p "Clearing all messages..."
Message.destroy_all if Rails.env.development?

p "Clearing all connections..."
Connection.destroy_all if Rails.env.development?

p "Clearing all listings..."
ProfListing.destroy_all if Rails.env.development?

p "Clearing all users..."
User.destroy_all if Rails.env.development?

p "Creating new users(students)..."

sophie = User.create!(
  first_name: "Sophie",
  last_name: "Lejeune",
  bio: "Ex-PM, studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?woman",
  professional: false,
  email: "sophie@student.com",
  password: "password",
  password_confirmation: "password",
)

maddy = User.create!(
  first_name: "Maddy",
  last_name: "Long",
  bio: "Founder, studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?girl",
  professional: false,
  email: "maddy@student.com",
  password: "password",
  password_confirmation: "password",
)

ameya = User.create!(
  first_name: "Ameya",
  last_name: "Akhouri",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?guy",
  professional: false,
  email: "ameya@student.com",
  password: "password",
  password_confirmation: "password",
)

p "Creating new users(professionals)..."

sophie_prof = User.create!(
  first_name: "Sophie",
  last_name: "Prof",
  bio: "Ex-PM, studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?woman",
  professional: true,
  email: "sophie@professional.com",
  password: "password",
  password_confirmation: "password",
)

maddy_prof = User.create!(
  first_name: "Maddy",
  last_name: "Prof",
  bio: "Founder, studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?girl",
  professional: true,
  email: "maddy@professional.com",
  password: "password",
  password_confirmation: "password",
)

ameya_prof = User.create!(
  first_name: "Ameya",
  last_name: "Prof",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?guy",
  professional: true,
  email: "ameya@professional.com",
  password: "password",
  password_confirmation: "password",
)

p "Creating new listings..."

sophie_listing = ProfListing.create!(
  user: sophie_prof,
  company: "Animal Farm",
  industry: "Marketing and Advertising",
  role: "Analyst",
  active: true,
)

maddy_listing = ProfListing.create!(
  user: maddy_prof,
  company: "Life of Pi",
  industry: "Human Resources",
  role: "Consultant",
  active: true,
)

ameya_listing = ProfListing.create!(
  user: ameya_prof,
  company: "Manchester by the Sea",
  industry: "Human Resources",
  role: "Partner",
  active: true,
)

p "Creating connections..."

sophie_connection = Connection.create!(
  user: sophie,
  prof_listing: sophie_listing
)

maddy_connection = Connection.create!(
  user: maddy,
  prof_listing: maddy_listing
)

ameya_connection = Connection.create!(
  user: ameya,
  prof_listing: ameya_listing
)

p "Creating messages..."

Message.create!(
  user: ameya,
  connection: ameya_connection,
  content: "Hello!",
  read: true
)

sleep 1

Message.create!(
  user: ameya_prof,
  connection: ameya_connection,
  content: "Hi!",
  read: true
)

sleep 1

Message.create!(
  user: ameya,
  connection: ameya_connection,
  content: "How are you?",
  read: false
)
