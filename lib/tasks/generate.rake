require 'faker'

namespace :development do
  desc "Generates random test data."
  task seed: :environment do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:migrate"].invoke

    puts "Seeding Users..."
    10.times do
      user = User.create({
        name: Faker::Name.name,
        email: Faker::Internet.email
      })

      user.save
    end

    1.times do
      project = Project.create({
        name: Faker::Company.bs
      })
      project.save
    end

    the_project = Project.all.sample

    10.times do
      task = Task.create({
        title: Faker::Company.bs,
        description: Faker::Lorem.paragraph,
        owner: User.all.sample,
        requester: User.all.sample,
        sprint: [true,false].sample,
        project: the_project
      })
      task.save
      if [true,false].sample
        5.times do
          child = Task.create({
            title: Faker::Company.bs,
            description: Faker::Lorem.paragraph,
            owner: User.all.sample,
            requester: User.all.sample,
            sprint: [true,false].sample,
            project: the_project,
            parent_id: task.id
          })
          child.save
        end
      end
    end
  end
end
