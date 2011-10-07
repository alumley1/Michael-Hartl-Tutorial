require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    User.create!(:name => "Example User",
                 :email => "example@railstutorial.org",
                 :password => "foobar",
                 :password_confirmation => "foobar")
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end

# Added in to make annotations run automatically
namespace :db do
  task :migrate do
    unless Rails.env.production?
      require "annotate/annotate_models"
      AnnotateModels.do_annotations(:position_in_class => 'before',
                                    :position_in_fixture => 'before')
    end
  end

  namespace :migrate do
    [:up, :down, :reset, :redo].each do |t|
      task t do
        unless Rails.env.production?
          require "annotate/annotate_models"
          AnnotateModels.do_annotations(:position_in_class => 'before',
                                        :position_in_fixture => 'before')
        end
      end
    end
  end
end
