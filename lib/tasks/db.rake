namespace :db do
  db = 'vinyls-collection_development'

  desc 'Dumps the database to backups'
  task :dump do
    cmd = "pg_dump -F c -v -h localhost #{db} -f #{Rails.root}/db/backups/#{Time.now.strftime("%Y%m%d%H%M%S")}_#{db}.psql"
    puts cmd
    exec cmd
  end

  desc 'Restores the database from backups'
  task :restore, [:date] do |task, args|
    if args.date.present?
      cmd = "pg_restore -c -C -F c -v #{Rails.root}/db/backups/#{args.date}_#{db}.psql"
      Rake::Task['db:drop'].invoke
      Rake::Task['db:create'].invoke
      puts cmd
      exec cmd
    else
      puts 'Please pass a date to the task'
    end
  end
end
