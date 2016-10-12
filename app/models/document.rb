class Document < ActiveRecord::Base
  mount_uploader :report, ReportUploader
end
