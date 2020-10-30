class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [:new, :create]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(ticket_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def receipt_data
    number = Ticket.all.count + 1
    hash1 = Hash[params[:seatids].zip params[:rows]]

    hash1.each do |seatid,rowid|
      @seat = Seat.find_by(id: seatid).update(checked: true)
      @row = Row.find_by(id: rowid,seat_id:seatid).update(checked: true)
      @cust = Customer.create(name: params[:name],mobile_number: params[:mobile],email: params[:email])
      @ticket = Ticket.create(ticket_no: number,movie_id: params[:movie_id].to_i,price: params[:price].to_i,screen_id: params[:screen_id].to_i,show_id: params[:show_id].to_i,user_id: current_user.id,seats: params[:seats],rows: params[:rows],seat_id: seatid,row_id: rowid,customer_id: @cust.id)
    end
    redirect_to "/movies", notice: 'Ticket was booked successfully.' 
  end 

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:ticket_no,:user_id,:movie_id,:show_id,:screen_id,:price,:seat_id,:row_id,:customer_id,:seats => [],:rows => [])
    end
end
