package com.bean;

public class Triangle {
	double sideA,sideB,sideC,area,length;
	
	public Triangle(){
		sideA = 3;
		sideB = 4;
		sideC = 5;
	}
	
	public boolean isTriangle(){
		if(sideA+sideB>sideC&&sideA+sideC>sideB&&sideC+sideB>sideA)
		return true;
		else return false;
	}
	
	public double getSideA() {
		return sideA;
	}

	public void setSideA(double sideA) {
		this.sideA = sideA;
	}

	public double getSideB() {
		return sideB;
	}

	public void setSideB(double sideB) {
		this.sideB = sideB;
	}

	public double getSideC() {
		return sideC;
	}

	public void setSideC(double sideC) {
		this.sideC = sideC;
	}

	public double getArea() {
		double p = (sideA+sideB+sideC)/2;
		area = Math.sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public double getLength() {
		return length;
	}

	public void setLength(double length) {
		this.length = length;
	}
}
