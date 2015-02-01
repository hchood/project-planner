project_attrs = [
  {
    name: "Build first ember app",
    description: "Build an ember app so I can be a sweet Ember developer and make mad $$$$$"
  },
  {
    name: "Troll Eric",
    description: "Formulate plans to continuously troll Eric because it is fun."
  },
  {
    name: "Hack Richard's OK Cupid",
    description: "Tryna mess up Richard's dating game"
  }
]

project_attrs.each do |attrs|
  project = Project.find_by(attrs)

  if project.present?
    puts "Project '#{attrs[:name]}' already in DB."
  else
    Project.create(attrs)
    puts "Project '#{attrs[:name]}' created."
  end
end
