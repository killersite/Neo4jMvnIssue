// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ex.service;

import com.ex.domain.Restaurant;
import com.ex.repository.RestaurantRepository;
import com.ex.service.RestaurantServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RestaurantServiceImpl_Roo_Service {
    
    declare @type: RestaurantServiceImpl: @Service;
    
    declare @type: RestaurantServiceImpl: @Transactional;
    
    @Autowired
    RestaurantRepository RestaurantServiceImpl.restaurantRepository;
    
    public long RestaurantServiceImpl.countAllRestaurants() {
        return restaurantRepository.count();
    }
    
    public void RestaurantServiceImpl.deleteRestaurant(Restaurant restaurant) {
        restaurantRepository.delete(restaurant);
    }
    
    public Restaurant RestaurantServiceImpl.findRestaurant(Long id) {
        return restaurantRepository.findOne(id);
    }
    
    public List<Restaurant> RestaurantServiceImpl.findAllRestaurants() {
        return restaurantRepository.findAll();
    }
    
    public List<Restaurant> RestaurantServiceImpl.findRestaurantEntries(int firstResult, int maxResults) {
        return restaurantRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void RestaurantServiceImpl.saveRestaurant(Restaurant restaurant) {
        restaurantRepository.save(restaurant);
    }
    
    public Restaurant RestaurantServiceImpl.updateRestaurant(Restaurant restaurant) {
        return restaurantRepository.save(restaurant);
    }
    
}
