package com.knowarth.traineeregisteraion;

public class TraineeRegisteration {
	private int id;
	private String traineename;
	private String traineefield;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTraineename() {
		return traineename;
	}

	public void setTraineename(String traineename) {
		this.traineename = traineename;
	}

	public String getTraineefield() {
		return traineefield;
	}

	public void setTraineefield(String traineefield) {
		this.traineefield = traineefield;
	}

	@Override
	public String toString() {
		return "TraineeRegisteration [id=" + id + ", traineename=" + traineename + ", traineefield=" + traineefield
				+ "]";
	}
}