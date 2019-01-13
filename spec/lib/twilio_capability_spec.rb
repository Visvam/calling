require 'twilio-ruby'
#equire_relative '../../lib/twilio_capability'

describe TwilioCapability do
  describe '.generate' do
    it 'should generate the capability token' do
      token = described_class.generate('dashboard')
      expect(token).not_to be_empty
    end
  end
end