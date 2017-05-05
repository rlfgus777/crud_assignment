class BoardController < ApplicationController
  def index
    @myBoard = Post.all
  end

  def show
    @myBoard = Post.all
  end

  def new
  end

  
  
  def create
    
    @makeBoard = Post.new
    @makeBoard.title = params[:inputTitle]
    @makeBoard.editor = params[:inputEditor]
    @makeBoard.content = params[:inputContent]
    @makeBoard.save
    
    redirect_to '/index'
    
  
  end
  
  def update
    ques_board = Post.find(params[:board_id])
    ques_board.title = params[:inputTitle]
    ques_board.editor = params[:inputEditor]
    ques_board.content = params[:inputContent]
    ques_board.save
    
    redirect_to '/show'
  end
  
  def edit
    @upd_board = Post.find(params[:board_id])
    
  end
  
  def destroy
    
    des_id = params[:board_id]
    des_board = Post.find(des_id)
    des_board.destroy
    
    redirect_to '/show'
    
  end
  
  
  
end
