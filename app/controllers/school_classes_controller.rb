class SchoolClassesController < ApplicationController

  def index
  @school_classes = SchoolClasses.all
end

def show
  @school_class = SchoolClasses.find(params[:id])
end

def new
  @school_class = SchoolClasses.new
end

def create
  @post = Post.new(post_params)
  @post.save
  redirect_to post_path(@post)
end

def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  redirect_to post_path(@post)
end

def edit
  @post = Post.find(params[:id])
end

private

def post_params
  params.require(:post).permit(:title, :description)
end

end