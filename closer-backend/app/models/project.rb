class Project < ApplicationRecord
	mount_uploader :file, FileUploader
end