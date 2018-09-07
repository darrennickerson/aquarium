module AdsHelper
    def display_picture(ad)

        if ad.images.attached?
            image_tag(url_for(ad.images.first))
        else 
            image_tag("placeholder.png");

        end
            
    end 
end
