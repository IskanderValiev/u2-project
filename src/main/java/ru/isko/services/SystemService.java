package ru.isko.services;


public interface SystemService {

    void sendLink(Long userID);
    void generateTempPassword(Long userID);
    void resetPassword(String link);
}
