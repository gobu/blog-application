class TablesController < ApplicationController
	def index
		@tables = Table.all
	end

	def create

	end

	def insert
		@tables = Table.create
    		@tables.name=params[:name]
    		@tables.cellno=params[:cellno]
    		@tables.content = params[:content]
    		puts @tables.save
    		redirect_to "/tables"
	end

	def edit
		@tables = Table.find(params[:id])
	end

	def update
		@tables = Table.find(params[:id])
	        @tables.name=params[:name]
	        @tables.cellno=params[:cellno]
	        @tables.content = params[:content]
	        puts @tables.save
	        redirect_to "/tables/setting"
	end

	def delete
		@tables = Table.find(params[:id])
	        @tables.delete if @tables
	        redirect_to "/tables/setting"
	end
	
	def aboutme

	end

	def setting
		@tables=Table.all		
	end

	def view
		@table = Table.find(params[:id])
	end

	def updatelike
		@liketable = Like.create
		@liketable.name=params[:name]
                @liketable.comment=params[:comment]
		@liketable.table_id=params[:table_id]
                puts @liketable.save
                redirect_to "/tables/setting"
	end

	def likes
		@table = Table.find(params[:id])
		@liketable = @table.likes
	end

end
