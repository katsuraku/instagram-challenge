class CommentCreator
  attr_reader :my_comment, :current_user, :picture_id

  def initialize opts = {}
    @my_comment   = opts.fetch(:my_comment)
    @picture_id   = opts.fetch(:picture_id)
    @current_user = opts.fetch(:current_user)
  end

  def self.call opts
    new(opts).create_comment
  end

  def create_comment
    picture = Picture.find(picture_id)
    comment = picture.comments.build_with_user({:my_comment => my_comment}, current_user)
  end
end
