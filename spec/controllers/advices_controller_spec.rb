require 'spec_helper'

describe AdvicesController do

  def mock_advice(stubs={})
    @mock_advice ||= mock_model(Advice, stubs)
  end

  describe "GET index" do
    it "assigns all advices as @advices" do
      Advice.stub(:find).with(:all).and_return([mock_advice])
      get :index
      assigns[:advices].should == [mock_advice]
    end
  end

  describe "GET show" do
    it "assigns the requested advice as @advice" do
      Advice.stub(:find).with("37").and_return(mock_advice)
      get :show, :id => "37"
      assigns[:advice].should equal(mock_advice)
    end
  end

  describe "GET new" do
    it "assigns a new advice as @advice" do
      Advice.stub(:new).and_return(mock_advice)
      get :new
      assigns[:advice].should equal(mock_advice)
    end
  end

  describe "GET edit" do
    it "assigns the requested advice as @advice" do
      Advice.stub(:find).with("37").and_return(mock_advice)
      get :edit, :id => "37"
      assigns[:advice].should equal(mock_advice)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created advice as @advice" do
        Advice.stub(:new).with({'these' => 'params'}).and_return(mock_advice(:save => true))
        post :create, :advice => {:these => 'params'}
        assigns[:advice].should equal(mock_advice)
      end

      it "redirects to the created advice" do
        Advice.stub(:new).and_return(mock_advice(:save => true))
        post :create, :advice => {}
        response.should redirect_to(advice_url(mock_advice))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved advice as @advice" do
        Advice.stub(:new).with({'these' => 'params'}).and_return(mock_advice(:save => false))
        post :create, :advice => {:these => 'params'}
        assigns[:advice].should equal(mock_advice)
      end

      it "re-renders the 'new' template" do
        Advice.stub(:new).and_return(mock_advice(:save => false))
        post :create, :advice => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested advice" do
        Advice.should_receive(:find).with("37").and_return(mock_advice)
        mock_advice.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :advice => {:these => 'params'}
      end

      it "assigns the requested advice as @advice" do
        Advice.stub(:find).and_return(mock_advice(:update_attributes => true))
        put :update, :id => "1"
        assigns[:advice].should equal(mock_advice)
      end

      it "redirects to the advice" do
        Advice.stub(:find).and_return(mock_advice(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(advice_url(mock_advice))
      end
    end

    describe "with invalid params" do
      it "updates the requested advice" do
        Advice.should_receive(:find).with("37").and_return(mock_advice)
        mock_advice.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :advice => {:these => 'params'}
      end

      it "assigns the advice as @advice" do
        Advice.stub(:find).and_return(mock_advice(:update_attributes => false))
        put :update, :id => "1"
        assigns[:advice].should equal(mock_advice)
      end

      it "re-renders the 'edit' template" do
        Advice.stub(:find).and_return(mock_advice(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested advice" do
      Advice.should_receive(:find).with("37").and_return(mock_advice)
      mock_advice.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the advices list" do
      Advice.stub(:find).and_return(mock_advice(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(advices_url)
    end
  end

end
