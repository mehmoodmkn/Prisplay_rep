class Order < ActiveRecord::Base
  mount_uploader :file, AttachmentUploader
  scoped_search on: [:billboard_location, :time, :duration,:id]
end
