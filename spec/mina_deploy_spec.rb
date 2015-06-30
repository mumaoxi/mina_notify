# coding: utf-8
require 'mina_notify'

describe MinaNotify do

  it 'test puts' do
    r = MinaNotify.trigger_function(nil, 'setup')

    expect(r.nil?).to eq(false)
  end
end