package com.nick.urlshortener.models;

public record CreateUserCmd(
        String email,
        String password,
        String name,
        Role role) {
}
