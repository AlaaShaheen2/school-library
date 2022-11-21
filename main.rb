require './app'
require './menu'

def main
  menu = Menu.new
  library = App.new
  puts "\nWelcome to School Library by Alaa!\n\n"
  menu.list_menu(library)
end

main
