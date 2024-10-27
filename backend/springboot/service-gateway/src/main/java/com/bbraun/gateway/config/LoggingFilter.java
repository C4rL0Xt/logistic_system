package com.bbraun.gateway.config;

import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

@Component
public class LoggingFilter implements GlobalFilter {

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        HttpHeaders headers = exchange.getRequest().getHeaders();
        System.out.println("Request: " + headers);
        return chain.filter(exchange).then(Mono.fromRunnable(() -> {
            HttpHeaders responseHeaders = exchange.getResponse().getHeaders();
            System.out.println("Response: " + responseHeaders);
        }));
    }
}
