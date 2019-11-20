p "Clearing all messages..."
Message.destroy_all

p "Clearing all connections..."
Connection.destroy_all

p "Clearing all listings..."
ProfListing.destroy_all

p "Clearing all users..."
User.destroy_all

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

ann_prof = User.create!(
  first_name: "Ann",
  last_name: "Prof",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?ann",
  professional: true,
  email: "ann@professional.com",
  password: "password",
  password_confirmation: "password",
)

donald_prof = User.create!(
  first_name: "Donald",
  last_name: "Prof",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?donald",
  professional: true,
  email: "donald@professional.com",
  password: "password",
  password_confirmation: "password",
)

kim_prof = User.create!(
  first_name: "Kim",
  last_name: "Prof",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?kim",
  email: "kim@professional.com",
  password: "password",
  password_confirmation: "password",
)

winnie_prof = User.create!(
  first_name: "Winnie",
  last_name: "Prof",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?winnie",
  email: "winnie@professional.com",
  password: "password",
  password_confirmation: "password",
)

justin_prof = User.create!(
  first_name: "Justin",
  last_name: "Beaver",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?justin",
  email: "justin@professional.com",
  password: "password",
  password_confirmation: "password",
)

taylor_prof = User.create!(
  first_name: "Taylor",
  last_name: "Lyft",
  bio: "Studying full stack development at Le Wagon.",
  remote_photo_url: "https://source.unsplash.com/featured/?taylor",
  email: "taylor@professional.com",
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

ann_listing = ProfListing.create!(
  user: ann_prof,
  company: "Pride and Prejudice",
  industry: "Information Technology and Services",
  role: "Junior Developer",
  active: true,
)

donald_listing = ProfListing.create!(
  user: donald_prof,
  company: "Animal Farm",
  industry: "MArketing and Advertising",
  role: "Analyst",
  active: true,
)

kim_listing = ProfListing.create!(
  user: kim_prof,
  company: "To Kill a Mockingbird",
  industry: "Telecommunications",
  role: "Analyst",
  active: true,
)

winnie_listing = ProfListing.create!(
  user: winnie_prof,
  company: "To Kill a Mockingbird",
  industry: "Telecommunications",
  role: "Partner",
  active: true,
)

justin_listing = ProfListing.create!(
  user: justin_prof,
  company: "To Kill a Mockingbird",
  industry: "Telecommunications",
  role: "Partner",
  active: true,
)

taylor_listing = ProfListing.create!(
  user: taylor_prof,
  company: "Manchester by the Sea",
  industry: "Human Resources",
  role: "Consultant",
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
