package com.giasuanhem.service;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HeaderFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization logic if needed
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    	HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        

        httpResponse.setHeader("X-Content-Type-Options", "nosniff");

        Cookie[] cookies = httpRequest.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                // Add the SameSite attribute to the cookie header
                String cookieHeaderValue = cookie.getName() + "=" + cookie.getValue() + ";HttpOnly; SameSite=Lax; Secure";
                
                httpResponse.addHeader("Set-Cookie", cookieHeaderValue);
            }
        }
        
        // Forward the request to the next filter or servlet in the chain
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Cleanup logic if needed
    }
}
