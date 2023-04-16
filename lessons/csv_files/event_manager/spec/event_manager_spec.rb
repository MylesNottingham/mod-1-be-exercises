require 'pry'
require 'rspec'
require './lib/attendee'
require './lib/event_manager'

describe EventManager do
  describe "Small Event" do
    before :each do
      @event= EventManager.new("./data/event_attendees.csv")
    end

    it 'exists' do
      expect(@event).to be_an(EventManager)
    end

    it 'can create an array from attendees' do
      expect(@event.attendees).to be_an(Array)
      expect(@event.attendees.count).to eq(19)
      @event.attendees.each do |attendee|
        expect(attendee).to be_an(Attendee)
      end
    end

    it 'can create an array of attendees with correct info' do
      expect(@event.attendees.first.id).to eq("1")
      expect(@event.attendees.first.name).to eq("Allison Nguyen")
      expect(@event.attendees.first.zipcode).to eq("20010")
    end
  end

  describe "Large Event" do
    before :each do
      @event= EventManager.new("./data/full_event_attendees.csv")
    end

    it 'exists' do
      expect(@event).to be_an(EventManager)
    end

    it 'can create an array from attendees' do
      expect(@event.attendees).to be_an(Array)
      expect(@event.attendees.count).to eq(5175)
      @event.attendees.each do |attendee|
        expect(attendee).to be_an(Attendee)
      end
    end

    it 'can create an array of attendees with correct info' do
      expect(@event.attendees.first.id).to eq("1")
      expect(@event.attendees.first.name).to eq("Allison Nguyen")
      expect(@event.attendees.first.zipcode).to eq("20010")
    end
  end
end
