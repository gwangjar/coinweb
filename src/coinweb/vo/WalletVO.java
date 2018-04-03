package coinweb.vo;

public class WalletVO {
	int id, money, coin_amount, avaliable_balance, using_balance, tot_money;
	String coin_name, state;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getCoin_amount() {
		return coin_amount;
	}
	public void setCoin_amount(int coin_amount) {
		this.coin_amount = coin_amount;
	}
	public int getAvaliable_balance() {
		return avaliable_balance;
	}
	public void setAvaliable_balance(int avaliable_balance) {
		this.avaliable_balance = avaliable_balance;
	}
	public int getUsing_balance() {
		return using_balance;
	}
	public void setUsing_balance(int using_balance) {
		this.using_balance = using_balance;
	}
	public int getTot_money() {
		return tot_money;
	}
	public void setTot_money(int tot_money) {
		this.tot_money = tot_money;
	}
	public String getCoin_name() {
		return coin_name;
	}
	public void setCoin_name(String coin_name) {
		this.coin_name = coin_name;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
}
