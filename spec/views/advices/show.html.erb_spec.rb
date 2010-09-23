require 'spec_helper'

describe "/advices/show.html.erb" do
  include AdvicesHelper
  before(:each) do
    assigns[:advice] = @advice = stub_model(Advice,
      :email => "value for email"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ email/)
  end
end
