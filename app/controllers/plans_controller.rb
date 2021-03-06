class PlansController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
    redirect_to(overview_plans_url) && return if current_user.can_manage?
    @plans = current_user.plans.last_two
    respond_to do |format|
      format.html
      format.xml  { render :xml => @plans }
      format.txt
    end
  end

  def overview
    @users = User.where(:email.ne => current_user.email)
  end



  def multiple_update
    params[:plans].each do |id, data|
      if current_user.can_manage?
        plan = Plan.criteria.for_ids(id).first
      else
        plan = current_user.plans.criteria.for_ids(id).first
      end
      if plan
        plan.update_attributes(data)
      else
        if current_user.can_manage?
          plan = Plan.create(data.merge(:date_for =>Date.today))
        else
          plan = current_user.plans.create(data.merge(:date_for =>Date.today))
        end
      end
    end

    respond_to do |format|
      format.html { redirect_to(dashboard_plans_url, :notice => 'Plan was successfully updated.') }
      format.xml  { head :ok }
    end
  end

  def index
    @plans = current_user.plans.desc(:date_for).paginate(params)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plans }
    end
  end

  def show
    @plan = current_user.plans.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plan }
    end
  end

  def new
    @plan = current_user.plans.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plan }
    end
  end

  def edit
    @plan = current_user.plans.find(params[:id])
  end

  def create
    @plan = current_user.plans.new(params[:plan])

    respond_to do |format|
      if @plan.save
        format.html { redirect_to(@plan, :notice => 'Plan was successfully created.') }
        format.xml  { render :xml => @plan, :status => :created, :location => @plan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @plan = current_user.plans.find(params[:id])

    respond_to do |format|
      if @plan.update_attributes(params[:plan])
        format.html { redirect_to(@plan, :notice => 'Plan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @plan = current_user.plans.find(params[:id])
    @plan.destroy

    respond_to do |format|
      format.html { redirect_to(plans_url) }
      format.xml  { head :ok }
    end
  end
end
