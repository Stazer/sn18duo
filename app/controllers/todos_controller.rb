class TodosController < ApplicationController
    def new
      @todo = Todo.new
    end

    def create
      Todo.create params.require(:todo).permit :name, :description, :deadline, :progress

      self.index
      render 'index'
    end

    def index
      @todos = Todo.all
    end

    def edit
      @todo = Todo.find params[:id]
    end

    def update
      Todo.update params[:id], params.require(:todo).permit(:name, :description, :deadline, :progress)

      self.index
      render 'index'
    end

    def destroy
      Todo.destroy params[:id]

      self.index
      render 'index'
    end
end
