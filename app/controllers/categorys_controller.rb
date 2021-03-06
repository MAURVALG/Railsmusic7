class CategorysController < ApplicationController

def index
  @categorys = Category.all
end

def new
@category = Category.new
end

def edit
  @category = Category.find(params[:id])
end

def create
  @category = Category.new(category_params)

 if @category.save
  redirect_to :action => :show, :id => @category.id
	else
		render 'new'
	end
end

def show
  @category = Category.find(params[:id])
end

def update
  @category = Category.find(params[:id])

  if @category.update_attributes(category_params)
    redirect_to :action => :show, :id => @category.id
  else
    render 'edit'
  end
end


def destroy
  @category = Category.find(params[:id])
  @category.destroy

  redirect_to :action => :index
end

private

def category_params
    params.require(:category).permit(:name)
  end
end
