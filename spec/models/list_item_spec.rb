require 'spec_helper'

describe ListItem do
    it { should belong_to(:list) }
    it { should belong_to(:podcast) }
end
