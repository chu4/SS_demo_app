class Post < ApplicationRecord
  after_save ThinkingSphinx::RealTime.callback_for(:post)

  serialize :options, HashSerializer
  store_accessor :options, :active, :user
end
