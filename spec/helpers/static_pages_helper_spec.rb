require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the StaticPagesHelper. For example:
#
# describe StaticPagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

RSpec.describe StaticPagesHelper, type: :helper do
  describe ApplicationHelper do
    describe "#page_title" do
      it "returns true" do
        helper.page_title.should be_truthy #check home_helper_spec.rb
      end
    end
  end
end
