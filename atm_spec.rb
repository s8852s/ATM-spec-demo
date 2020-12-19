# 存錢功能
#   可以存錢
#   不可以存 0 元或是小於 0 元的金額（越存錢越少！）
# 領錢功能
#   可以領錢
#   不能領 0 元或是小於 0 元的金額（越領錢越多！）
#   不能領超過本身餘額

require "./atm" #把測試與實作檔案分離比較不會亂


RSpec.describe ATM do  #RSpec ATM都是常數
  context "存錢功能" do  #context=describe 功能的目錄 給自己看 沒有也沒關係 影片11:14
    	it "可以存錢" do   #it是測試的進入點

      #AAA 測試的3A原則  11:17
      # A = Arrange 先把東西new出來放好
      atm = ATM.new(10)
            
      # A Act 
      atm.deposit(5)

      # A = Assert
      expect(atm.balance).to be 15
      #=expect(atm.balance).to(be(15))
      #expect to都是RSpec的Mature 11:25
      #沒有逗號 有空白表示省略小括號or大括號
		end

		it "不可以存 0 元或是小於 0 元的金額（越存錢越少！）" do
      atm = ATM.new(10)
      atm.deposit(-5)
      expect(atm.balance).to be 10
    end
	end
	
	context "領錢功能" do
		it "可以領錢" do
			atm = ATM.new(10)
			atm.withdraw(5)
			expect(atm.balance).to be 5
		end
		
		it "不能領 0 元或是小於 0 元的金額" do
      atm = ATM.new(10)
      atm.withdraw(-5)
      expect(atm.balance).to be 10
		end
		
		it "不能領超過本身餘額" do
      atm = ATM.new(10)
      atm.withdraw(20)
      expect(atm.balance).to be 10
    end
  end
end