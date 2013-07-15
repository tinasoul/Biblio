class LibrariesController < ApplicationController
  # GET /libraries
  # GET /libraries.json
  def index
    @library = Library.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @libraries }
    end
  end

  # GET /libraries/1
  # GET /libraries/1.json
  def show
    @library = Library.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @library }
    end
  end

  # GET /Libraries/new
  # GET /Librariss/new.json
  def new
    @library = Library.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @library }
    end
  end

  # GET /Libraries/1/edit
  def edit
    @library = Library.find(params[:id])
  end

  # POST /Libraries
  # POST /Libraries.json
  def create
    @library = Library.new(params[:Library])

    respond_to do |format|
      if @library.save
        format.html { redirect_to @library, notice: 'Library was successfully created.' }
        format.json { render json: @library, status: :created, location: @library }
      else
        format.html { render action: "new" }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Libraries/1
  # PUT /Libraries/1.json
  def update
    @library = Library.find(params[:id])

    respond_to do |format|
      if @library.update_attributes(params[:Library])
        format.html { redirect_to @library, notice: 'Library was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Libraries/1
  # DELETE /Libraries/1.json
  def destroy
    @library = Library.find(params[:id])
    @library.destroy

    respond_to do |format|
      format.html { redirect_to Libraries_url }
      format.json { head :no_content }
    end
  end
end