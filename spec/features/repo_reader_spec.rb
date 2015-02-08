require_relative '../spec_helper'

RSpec.describe 'student', type: :feature, :js => true do
  before do
    @week = []
    0.upto(0) do |i|
      @week << (Time.now - 86400*(i)).strftime('%Y-%m-%d')
    end
  end
  %w{vosechu moedu23 smoip}.each do |user|
    it "#{user} did not do their homework" do
      visit "/#{user}"
      @week.each do |day|
        today = find("[data-date='#{day}']")
        expect(today['fill']).to_not eq "#eeeeee"
      end
    end
  end
end
