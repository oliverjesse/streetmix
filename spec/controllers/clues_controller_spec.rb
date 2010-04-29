require 'spec_helper'

describe CluesController do

  def mock_clue(stubs={})
    @mock_clue ||= mock_model(Clue, stubs)
  end

  describe "GET index" do
    it "assigns all clues as @clues" do
      Clue.stub!(:find).with(:all).and_return([mock_clue])
      get :index
      assigns[:clues].should == [mock_clue]
    end
  end

  describe "GET show" do
    it "assigns the requested clue as @clue" do
      Clue.stub!(:find).with("37").and_return(mock_clue)
      get :show, :id => "37"
      assigns[:clue].should equal(mock_clue)
    end
  end

  describe "GET new" do
    it "assigns a new clue as @clue" do
      Clue.stub!(:new).and_return(mock_clue)
      get :new
      assigns[:clue].should equal(mock_clue)
    end
  end

  describe "GET edit" do
    it "assigns the requested clue as @clue" do
      Clue.stub!(:find).with("37").and_return(mock_clue)
      get :edit, :id => "37"
      assigns[:clue].should equal(mock_clue)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created clue as @clue" do
        Clue.stub!(:new).with({'these' => 'params'}).and_return(mock_clue(:save => true))
        post :create, :clue => {:these => 'params'}
        assigns[:clue].should equal(mock_clue)
      end

      it "redirects to the created clue" do
        Clue.stub!(:new).and_return(mock_clue(:save => true))
        post :create, :clue => {}
        response.should redirect_to(clue_url(mock_clue))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved clue as @clue" do
        Clue.stub!(:new).with({'these' => 'params'}).and_return(mock_clue(:save => false))
        post :create, :clue => {:these => 'params'}
        assigns[:clue].should equal(mock_clue)
      end

      it "re-renders the 'new' template" do
        Clue.stub!(:new).and_return(mock_clue(:save => false))
        post :create, :clue => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested clue" do
        Clue.should_receive(:find).with("37").and_return(mock_clue)
        mock_clue.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :clue => {:these => 'params'}
      end

      it "assigns the requested clue as @clue" do
        Clue.stub!(:find).and_return(mock_clue(:update_attributes => true))
        put :update, :id => "1"
        assigns[:clue].should equal(mock_clue)
      end

      it "redirects to the clue" do
        Clue.stub!(:find).and_return(mock_clue(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(clue_url(mock_clue))
      end
    end

    describe "with invalid params" do
      it "updates the requested clue" do
        Clue.should_receive(:find).with("37").and_return(mock_clue)
        mock_clue.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :clue => {:these => 'params'}
      end

      it "assigns the clue as @clue" do
        Clue.stub!(:find).and_return(mock_clue(:update_attributes => false))
        put :update, :id => "1"
        assigns[:clue].should equal(mock_clue)
      end

      it "re-renders the 'edit' template" do
        Clue.stub!(:find).and_return(mock_clue(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested clue" do
      Clue.should_receive(:find).with("37").and_return(mock_clue)
      mock_clue.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the clues list" do
      Clue.stub!(:find).and_return(mock_clue(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(clues_url)
    end
  end

end
