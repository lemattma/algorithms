require_relative './anagram'

describe '#anagram?' do
  it { expect(anagram?('casa', 'saca')).to be_truthy }
  it { expect(anagram?('casa', 'sapa')).to be_falsey }
  it { expect(anagram?('aa', 'saca')).to be_falsey }
  it { expect(anagram?('mom', 'oh')).to be_falsey }
end
