package io.hari.apache.freemarker;

public class MyEntity {
    String name;
    String developer;

    public MyEntity(String name, String developer) {
        this.name = name;
        this.developer = developer;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeveloper() {
        return developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }
}
