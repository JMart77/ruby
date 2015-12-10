class Blog

	@@all_blog_posts = []
	@@num_blog_posts = 0

	def self.all
		@@all_blog_posts
	end
	
	def self.add(thing)
	    @@all_blog_posts << thing
        @@num_blog_posts += 1
    end

    def self.publish
    	@@all_blog_posts.each do |post|
    		"Title:\n #{post.get_title}"
    		"Body:\n #{post.get_content}"
    		"Publish Date:\n #{post.get_pbdate}"
    		"Author:\n #{post.get_author}"
    	end
    end
end    		



class BlogPost < Blog

	def self.create
    post = new
    puts "Name your blog post:"
    post.set_title = gets.chomp
    puts "Your blog post content:"
    post.set_content = gets.chomp
    puts "Time of blogpost:"
    post.set_pbdate = Time.now
    puts "Authored by:"
    post.set_author = gets.chomp
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
    end


	def set_title=(title)
		@title = title
	end
	
	def get_title
	    return @title
	end
	
	def set_content=(content)
	    @content = content
	end
	
	def get_content
	    return @content
	end
	
	def set_pbdate=(pbdate)
	    @pbdate = pbdate
	end
	
	def get_pbdate
	    return @pbdate
	end
	
	def set_author=(author)
	    @author = author
	end
	
	def get_author
	    return @author
	end

	def save
		BlogPost.add(self)
	end	
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish



