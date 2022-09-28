package com.newword.beans;

//newword table
public class Word {

	private int wordId; // (auto_incerment primary key)
	private String word; // not null
	private String mean; // not null

	public Word() {
		super();
	}

	public Word(String word, String mean) {

		this.word = word;
		this.mean = mean;
	}

	public int getWordId() {
		return wordId;
	}

	public void setWordId(int wordId) {
		this.wordId = wordId;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getMean() {
		return mean;
	}

	public void setMean(String mean) {
		this.mean = mean;
	}

}
