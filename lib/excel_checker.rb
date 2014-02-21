require "excel_checker/version"

module ExcelChecker
  def self.validate_extension (file)
     ["application/vnd.openxmlformats-officedocument.spreadsheetml.sheet","application/vnd.ms-excel","application/xls"].include?(file.content_type)
  end
end
