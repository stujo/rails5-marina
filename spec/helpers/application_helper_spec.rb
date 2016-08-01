require "rails_helper"

RSpec.describe ApplicationHelper, :type => :helper do
  describe "#meta_title" do
    it "includes the assigned title" do
      assign(:page_title, "My Title")
      expect(helper.meta_title).to eq 'My Title | Marina Athena'
    end
    it "uses default title when nothing assigned to page_title" do
      expect(helper.meta_title).to eq 'Marina Athena'
    end
  end
end