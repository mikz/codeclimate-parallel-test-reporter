describe 'codeclimate-parallel-test-reporter' do

  def run(*args)
    system(subject, *args)
  end

  it 'quits without params' do
    expect(run).not_to be
  end

  it 'works with echo' do
    expect(run('echo')).to be
  end
end
