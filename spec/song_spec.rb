require 'spec_helper'

describe 'Song' do
    it 'is defined within lib/Hot_100' do
        expect(defined?(Hot100::Song)).to be_truthy
        expect(Hot100::Song).to be_a(Class)
    end
end