require_relative './shared/pagination.rb'

class TaskRepository < Hanami::Repository
  include OmniscrapperHq::Repositories::Shared::Pagination

  associations do
    belongs_to :schema
    belongs_to :site
  end

  def delete_related_to(options)
    root.where(options).delete
  end
end
