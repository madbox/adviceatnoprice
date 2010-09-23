require 'spec_helper'

describe "/advices/index.html.erb" do
  include AdvicesHelper

  before(:each) do
    assigns[:advices] = [
      stub_model(Advice,
        :email => "value for email"
      ),
      stub_model(Advice,
        :email => "value for email"
      )
    ]
  end

  it "renders a list of advices" do
    render
    response.should have_tag("tr>td", "value for email".to_s, 2)
  end
end
