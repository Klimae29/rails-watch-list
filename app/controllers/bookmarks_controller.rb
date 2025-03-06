class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to @list, notice: "Film ajouté à la liste !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def bookmark_params
    params.required(:bookmark).permit(:comment, :movie_id)
  end
end
