package com.example.demo;

public class Capital<F, S> {
	private String nation; // first member of pair
	private String capital; // second member of pair

	public Capital() {
		this.nation = "korea";
		this.capital = "seoul";
	}

	public Capital(String nation, String capital) {
		this.nation = nation;
		this.capital = capital;
	}

	public void setFirst(String nation) {
		this.nation = nation;
	}

	public void setSecond(String capital) {
		this.capital = capital;
	}

	public String getFirst() {
		return nation;
	}

	public String getSecond() {
		return capital;
	}
}