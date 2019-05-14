package SL;

import java.util.Stack;

public class Hello {

    public String aaaaaaaaaaaaa = "123123";

    public static String getNickName() {
        return "alexluan";
    }

    private String address = "anhui";

    private Integer age = 12;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    private static Stack<String> stringStack;

    public static void main (String args[]) {
        stringStack = new Stack<String>();
        stringStack.push("1");
        stringStack.push("2");
        stringStack.push("3");
        stringStack.push("4");
        stringStack.push("5");
        stringStack.push("6");
        stringStack.push("7");
        stringStack.remove("3");
        System.out.print(stringStack.lastElement());
    }

}
