class EventsController < ApplicationController
  helper_method :sort_column, :sort_direction, :filter, :filter_param

  # GET /events
  # GET /events.json
  def index
    unless params[:q].blank?
      @q = Event.search(params[:q])
      @events = @q.result

    else
     if params[:past] == "show"
       @events = Event.where('date < ?', Date.today).page(params[:page]).per_page(11).order("date DESC")
     else
        @events = Event.where('date >= ?', Date.today).page(params[:page]).per_page(11).order(:date)
        @events = @events.order(sort_column + " " + sort_direction)
        @events = @events.where(filter_param => filter) if filter
     end
   end




    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end


  end



  before_filter :confirm_logged_in, :only => [:show, :new, :edit, :create, :update, :destroy, :attendees]

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
    @event.user_id = session[:user_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  def attendees
    @title = "Attendees"
    @event = Event.find(params[:id])
    @attendances = @event.attendances.page(params[:page]).per_page(30)
    render 'show_follow'
  end

  before_filter :authorize_event_creator, :only => [:edit, :update, :destroy]
  helper_method :event_creator?

  def authorize_event_creator
    if ! event_creator?
      flash[:error] = 'That action is only permitted for the admin of this event.'
      redirect_to :back
    end
  end

  def event_creator?
    user = User.find(session[:user_id])
    event = Event.find(params[:id])
    user.id == event.user_id
  end

  before_filter :authorize_org_owner, :only => [:create, :new]
  helper_method :org_owner?

  def authorize_org_owner
    if ! org_owner?
      flash[:error] = 'That action is only permitted for an organization owner.'
      redirect_to :back
    end
  end

  def org_owner?
    user = User.find(session[:user_id])
    orgs = Organization.where(:user_id => user.id)
    if orgs.empty?
      false
    else
      true
    end
  end

  helper_method :future_event?

  def future_event?
    today = Date.today
    event = Event.find(params[:id])

    if today <= event.date
      true
    else
      false
    end
  end


  private

  def sort_column
    Event.column_names.include?(params[:sort]) ? params[:sort] : "date"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def filter_param
    if params[:cat_id]
      :category_id
    elsif params[:org_id]
      :organization_id
    end 
  end

  def filter
    if params[:cat_id]
      params[:cat_id]
    elsif params[:org_id]
      params[:org_id]
    else
      nil
    end
  end

end
