ActiveAdmin::CSVBuilder.class_eval do
  private
  def batch_size
    10000
  end
end