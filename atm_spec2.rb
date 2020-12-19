require "./atm"

RSpec.describe ATM do
  context "存錢功能" do
    # before do
    #   @atm = ATM.new(10)
    # end
    let(:atm) { ATM.new(10) }

    it "可以存錢" do
      # AAA
      # A = Act
      atm.deposit(5)

      # A = Assert
      expect(atm.balance).to be 15
    end

    it "不可以存 0 元或是小於 0 元的金額（越存錢越少！）" do
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
