class User < ActiveRecord::Base
  has_many :payments

  def as_json(options = {})
      super(options.merge(include: :payments))
  end
end
