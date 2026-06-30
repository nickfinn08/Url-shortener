package com.nick.urlshortener.services;

import com.nick.urlshortener.entities.ShortUrl;
import com.nick.urlshortener.models.ShortUrlDto;
import com.nick.urlshortener.models.UserDto;
import org.springframework.stereotype.Component;
import com.nick.urlshortener.entities.User;

@Component
public class EntityMapper {

    public ShortUrlDto toShortUrlDto(ShortUrl shortUrl) {
        UserDto userDto = null;
        if(shortUrl.getCreatedBy() != null) {
            userDto = toUserDto(shortUrl.getCreatedBy());
        }

        return new ShortUrlDto(
                shortUrl.getId(),
                shortUrl.getShortKey(),
                shortUrl.getOriginalUrl(),
                shortUrl.getIsPrivate(),
                shortUrl.getExpiresAt(),
                userDto,
                shortUrl.getClickCount(),
                shortUrl.getCreatedAt()
        );
    }
    public UserDto toUserDto(User user){
        return new UserDto(user.getId(), user.getName());
    }
}
