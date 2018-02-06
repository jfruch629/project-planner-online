users = [
  { first_name: "Albert", last_name: "Hitchcock", email: "ahitchcock@gmail.com", },
  { first_name: "Daisy", last_name: "Smith", email: "dsmith@hotmail.com", },
  { first_name: "Jackson", last_name: "Tee", email: "jackson5@gmail.com", },
  { first_name: "Sir Riley", last_name: "The Third", email: "email@gmail.com", }
]

users.each do |attributes|
  User.create(attributes)
end

projects = [
  { name: "Music Space", description: "This is going to be a whole new product.. a whole new way of recieving music. It's LIVE shows performed by YOU for YOU!" },
  { name: "Hotdog Vendor" },
  { name: "Coffee House", description: "Online Coffee Shop... It's international coffee." }
]

projects.each do |attributes|
  Project.create(attributes)
end


Project.first.users << User.create(first_name: "Albert", last_name: "Hitchcock", email: "ahitchcock@gmail.com")
Project.first.users << User.create(first_name: "Daisy", last_name: "Smith", email: "dsmith@hotmail.com")

Project.second.users << User.create(first_name: "Jackson", last_name: "Tee", email: "jackson5@gmail.com")

Project.third.users << User.create(first_name: "Albert", last_name: "Hitchcock", email: "ahitchcock@gmail.com")
Project.third.users << User.create(first_name: "Daisy", last_name: "Smith", email: "dsmith@hotmail.com")
Project.third.users << User.create(first_name: "Sir Riley", last_name: "The Third", email: "email@gmail.com")

User.first.projects << [ Project.first, Project.third ]
User.second.projects << [ Project.first, Project.second ]
User.third.projects << Project.second
User.fourth.projects << Project.third



Project.first.tasks << Task.create(name: "Add some music samples", description: "In order to get a feel for how we should display the live streams of artists, we need some examples to mess around with.", project_id: 1, user_id: 1)
Project.first.tasks << Task.create(name: "Create front UI", description: "These guys are musicians! Let's get edgy here.", project_id: 1, user_id: 2)
Project.first.tasks << Task.create(name: "Create a Virtual MIDI for website", due_date: "2/15/18", project_id: 1)


Project.second.tasks << Task.create(name: "Come up with a game plan.. this one is still in the womb.", due_date: "2/10/2018", project_id: 2)

Project.third.tasks << Task.create(name: "Create a coffee purhase menu", description: "Keep the colors dark", due_date: "Tomorrow", project_id: 3)

User.first.tasks << Task.first
User.second.tasks << Task.second
