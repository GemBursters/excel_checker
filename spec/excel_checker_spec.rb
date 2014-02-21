include ActionDispatch::TestProcess

describe  ExcelChecker do
  it 'should return true for excel files (xls and xlsx)' do
    file = fixture_file_upload(Rails.root.to_s + '/spec/fixtures/ebd.xls', 'application/xls')
    #file = File.open("#{Rails.root}/spec/fixtures/ebd.xls")
    ExcelChecker.validate_extension(file).should == true
  end
  
  it 'should return false on non excel files' do
    file = fixture_file_upload(Rails.root.to_s + '/spec/fixtures/chargefile_20120401.txt', 'application/xls')
    ExcelChecker.validate_extension(file).should == false
  end

end