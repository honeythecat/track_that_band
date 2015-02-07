require 'spec_helper'

describe Band do
	it { is_expected.to have_and_belong_to_many :venues }
	
end
