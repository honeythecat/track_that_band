require 'spec_helper'

describe Venue do
	it { is_expected.to have_and_belong_to_many :bands }
	it { is_expected.to validate_presence_of :venue_name }
	#this is where you left off.
	it { is_expected.to validate_length_of :venue_name is_at_most d100 }
end
