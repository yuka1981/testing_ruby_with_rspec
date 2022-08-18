RSpec.describe "before and after hooks" do
  before(:context) do
    # 在 describe / context 前執行一次這個 block 內的程式碼
  end

  after(:context) do 
    # 在 describe / context 後執行一次這個 block 內的程式碼
  end

  before(:example) do
    # 在每個 example 前執行一次這個 block 的程式碼
  end

  after(:example) do
    # 在每個 example 後執行一次這個 block 的程式碼
  end
end
