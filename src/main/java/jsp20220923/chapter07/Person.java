package jsp20220923.chapter07;

public class Person {
	//읽고 쓸 수 있는
	//name, age 프로퍼티 작성
	private String name;
	private Integer age;
	
	public Person() {
		
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}
	
}
