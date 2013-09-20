require 'rubygems'
require 'debugger'
require 'mysql2'
require 'net/ssh/gateway'
debugger

gateway = Net::SSH::Gateway.new(
  'gsstver.cz8.ru',
  'gsstver'
 )
port = gateway.open('mysql.gsstver.cz8.ru', 3306, 3307)

client = Mysql2::Client.new(
  host: "mysql.gsstver.cz8.ru",
  username: 'dbu_gsstver_1',
  password: 'sQFb9Kk4NrS',
  database: 'dbu_gsstver_1',
  port: port
)
results = client.query("SELECT TABLES")
results.each do |row|
  p row
end
client.close

#require 'rubygems'
#require 'debugger'
#require 'active_record'
#require 'net/ssh/gateway'

#gateway = Net::SSH::Gateway.new('gsstver.cz8.ru', 'gsstver', :password => "ydacha1745")
#puts "true" if gateway.active?

#fork do
    #class MyClass < ActiveRecord::Base
        #establish_connection(
            #:adapter  => "mysql",
            #:host     => "mysql.gsstver.cz8.ru",
            #:username => "dbu_gsstver_1	",
            #:password => "sQFb9Kk4NrS",
            #:database => "dbu_gsstver_1",
            #:port     => 3306
        #)
    #end

    #puts MyClass.all.size
#end

#Process.wait

#gateway.shutdown!
