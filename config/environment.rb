require 'bundler'
Bundler.require

require_all 'app'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
<<<<<<< HEAD
=======
ActiveRecord::Base.logger = nil

>>>>>>> b9ff0e33d79aaf6be607382b74e012a73203a4c2


