require 'spec_helper'

require 'pry'

describe Mhem do
  it 'has a version number' do
    expect(Mhem::VERSION).not_to be nil
  end

  it 'encode performs Caesarian cypher' do
    expect(Mhem.encode('foobar')).to eq 'irredu'
  end

  it 'decode performs Caesarian cypher' do
    expect(Mhem.decode('irredu')).to eq 'foobar'
  end
end
