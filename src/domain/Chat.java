package domain;

import java.util.ArrayList;
import java.util.List;

public class Chat {

    private Person person1;
    private Person person2;
    private List<Message> messages = new ArrayList<>();

    public Chat() {
    }

    public List<Message> getMessages() {
        return messages;
    }

    public void setPerson1(Person person1) {
        this.person1 = person1;
    }

    public void setPerson2(Person person2) {
        this.person2 = person2;
    }

    public Person getPerson1() {
        return person1;
    }

    public Person getPerson2() {
        return person2;
    }

    public Chat(Person person1, Person person2, List<Message> messages) {
        this.person1 = person1;
        this.person2 = person2;
        this.messages = messages;
    }

    public void addMessage(String m){
        Message mes = new Message(m);
        messages.add(mes);
    }

    public boolean equals(Chat c){
        if(this.person1 == c.getPerson2() && this.person2 == c.getPerson1()){return true;}
        else return false;
    }
}
