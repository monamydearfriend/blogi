class Post < ActiveRecord::Base
  acts_as_taggable
  attr_accessible :body, :title,:tag_list,:content_type,:filename,:thumbnail,:size,:width,:height,:uploaded_data
  has_attachment :content_type => :image, 
                 :storage => :file_system, 
                 :resize_to => '320x200>',
                 :thumbnails => { :thumb => '100x100>' }
                 
                 

end
