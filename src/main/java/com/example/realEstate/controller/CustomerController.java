package com.example.realEstate.controller;

import com.example.realEstate.entity.Offer;
import com.example.realEstate.entity.Property;
import com.example.realEstate.entity.httpdata.FavoriteRequest;
import com.example.realEstate.entity.httpdata.UpdateOfferPrice;
import com.example.realEstate.service.CustomerService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/customers")
public class CustomerController {
    final CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @PostMapping("/favorites")
    @ResponseStatus(HttpStatus.CREATED)
    public void addToFavorites(@RequestBody FavoriteRequest request) {
        customerService.addToFavorites(request.getCustomer_id(), request.getProperty_id());
    }

    @GetMapping("/{id}/favorites")
    @ResponseStatus(HttpStatus.OK)
    public List<Property> getFavorites(@PathVariable long id) {
        List<Property> properties = customerService.getFavoriteProperties(id);
        return properties;
    }

    @DeleteMapping("/{id}/favorites/{propertyId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteFromFavorites(@PathVariable long id, @PathVariable long propertyId) {
        customerService.removeFromFavorites(id, propertyId);
    }

    @PostMapping("/offers")
    @ResponseStatus(HttpStatus.CREATED)
    public void sendOffer(@RequestBody Offer offer) {
        customerService.makeOffer(offer);
    }

    @GetMapping("/{id}/offers")
    @ResponseStatus(HttpStatus.OK)
    public List<Offer> getOffers(@PathVariable long id) {
        List<Offer> offers = customerService.getOffers(id);
        return offers;
    }

    @DeleteMapping("/{id}/offers/{offerId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteOffer(@PathVariable long id, @PathVariable long offerId) {
        customerService.withdrawOffer(id, offerId);
    }

    @PutMapping("/{id}/offers/{offerId}")
    @ResponseStatus(HttpStatus.ACCEPTED)
    public void updateOffer(@PathVariable long id, @PathVariable long offerId, @RequestBody UpdateOfferPrice obj) {
        customerService.updateOfferPrice(id, offerId, obj.getPrice());
    }

    @GetMapping("/{id}/offers/{offerId}")
    @ResponseStatus(HttpStatus.OK)
    public Offer getOfferById(@PathVariable long id, @PathVariable long offerId) {
        Offer offer = customerService.getOfferById(id, offerId);
        return offer;
    }
}
