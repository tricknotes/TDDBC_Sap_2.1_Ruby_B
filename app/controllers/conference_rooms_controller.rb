class ConferenceRoomsController < ApplicationController
  # GET /conference_rooms
  # GET /conference_rooms.json
  def index
    @conference_rooms = ConferenceRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conference_rooms }
    end
  end

  # GET /conference_rooms/1
  # GET /conference_rooms/1.json
  def show
    @conference_room = ConferenceRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conference_room }
    end
  end

  # GET /conference_rooms/new
  # GET /conference_rooms/new.json
  def new
    @conference_room = ConferenceRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conference_room }
    end
  end

  # GET /conference_rooms/1/edit
  def edit
    @conference_room = ConferenceRoom.find(params[:id])
  end

  # POST /conference_rooms
  # POST /conference_rooms.json
  def create
    @conference_room = ConferenceRoom.new(params[:conference_room])

    respond_to do |format|
      if @conference_room.save
        format.html { redirect_to @conference_room, notice: 'Conference room was successfully created.' }
        format.json { render json: @conference_room, status: :created, location: @conference_room }
      else
        format.html { render action: "new" }
        format.json { render json: @conference_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conference_rooms/1
  # PUT /conference_rooms/1.json
  def update
    @conference_room = ConferenceRoom.find(params[:id])

    respond_to do |format|
      if @conference_room.update_attributes(params[:conference_room])
        format.html { redirect_to @conference_room, notice: 'Conference room was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @conference_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conference_rooms/1
  # DELETE /conference_rooms/1.json
  def destroy
    @conference_room = ConferenceRoom.find(params[:id])
    @conference_room.destroy

    respond_to do |format|
      format.html { redirect_to conference_rooms_url }
      format.json { head :ok }
    end
  end
end
