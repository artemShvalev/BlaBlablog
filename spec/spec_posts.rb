require
class PostsController
  def post
    @post = Post.all
  end
end
Rspec.describe PostsController do
  context "When testing post class" do
    it "should say 'post' when we call the say_PostsController" do


    end
  end

end