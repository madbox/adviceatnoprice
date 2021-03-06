# -*- coding: utf-8 -*-
class AdvicesController < ApplicationController
  # GET /advices
  # GET /advices.xml
  def index
    redirect_to root_path
    # @advices = Advice.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.xml  { render :xml => @advices }
    # end
  end

  # GET /advices/1
  # GET /advices/1.xml
  def show
    redirect_to root_path
    # @advice = Advice.find(params[:id])

    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.xml  { render :xml => @advice }
    # end
  end

  # GET /advices/new
  # GET /advices/new.xml
  def new
    @advice = Advice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @advice }
    end
  end

  # GET /advices/1/edit
  def edit
    redirect_to root_path
    # @advice = Advice.find(params[:id])
  end

  # POST /advices
  # POST /advices.xml
  def create
    @advice = Advice.new(params[:advice])

    respond_to do |format|
      if @advice.save
        format.html { redirect_to(@advice, :notice => 'Совет отправлен.') }
        format.xml  { render :xml => @advice, :status => :created, :location => @advice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @advice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /advices/1
  # PUT /advices/1.xml
  def update
    redirect_to root_path
    # @advice = Advice.find(params[:id])

    # respond_to do |format|
    #   if @advice.update_attributes(params[:advice])
    #     format.html { redirect_to(@advice, :notice => 'Advice was successfully updated.') }
    #     format.xml  { head :ok }
    #   else
    #     format.html { render :action => "edit" }
    #     format.xml  { render :xml => @advice.errors, :status => :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /advices/1
  # DELETE /advices/1.xml
  def destroy
    redirect_to root_path
  #   @advice = Advice.find(params[:id])
  #   @advice.destroy

  #   respond_to do |format|
  #     format.html { redirect_to(advices_url) }
  #     format.xml  { head :ok }
  #   end
  end
end
