package com.newword.beans;

public class Words {
	int wordId;
	String word;
	String wordMean;

	public Words(int wordId, String word, String wordMean) {
		this.wordId = wordId;
		this.word = word;
		this.wordMean = wordMean;
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

	public String getWordMean() {
		return wordMean;
	}

	public void setWordMean(String wordMean) {
		this.wordMean = wordMean;
	}


}
