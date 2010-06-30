Rake::TaskManager.class_eval do
  def remove_task(task_name)
    @tasks.delete(task_name.to_s)
  end
end

Rake.application.remove_task 'db:test:prepare'

namespace :db do
  namespace :test do 
    task :prepare do |t|
      # rewrite the task to not do anything you don't want
    end
  end
end
