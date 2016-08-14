module ApplicationHelper
	Dir["/path/to/directory/*.rb"].each {|file| require file }
end
