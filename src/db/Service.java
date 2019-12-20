package db;

import domain.Chat;
import domain.Person;

import java.util.ArrayList;
import java.util.List;

public class Service {
    List<Chat> chatList;

    public Service() {
        this.chatList = new ArrayList<>();
    }

    public Chat getChat(Person person1, Person person2){
        for(Chat chat: chatList){
            if(((chat.getPerson1() == person1) && (chat.getPerson2() == person2)) || ((chat.getPerson1() == person2) && (chat.getPerson2() == person1))){
                return chat;
            }
        }

        return null;
    }

    public void addChat(Chat c){
        chatList.add(c);
    }

}
