class PostController < ApplicationController
  def create
    content = params["post"]["content"]
    post_type = params["post"]["post_type"]
    source = params["post"]["source"]

    @post = Post.create(user:current_user,content: content,post_type: post_type,source:source)
    respond_to do |format|
      format.js{ }
    end
  end

  def remove
  end

  def update
  end
end
