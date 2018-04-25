class RunSerializer < ActiveModel::Serializer
  attributes :id, :distance, :time, :log_date
end

def log_date
  created_at.strftime('%B %-d, %Y')
end
