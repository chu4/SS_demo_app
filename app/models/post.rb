class Post < ApplicationRecord
  after_save ThinkingSphinx::RealTime.callback_for(:post)
end
