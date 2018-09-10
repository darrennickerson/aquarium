module AdsHelper
    def display_picture(ad)

        if ad.images.attached?
            image_tag(url_for(ad.images.first))
        else 
            image_tag("placeholder.png");

        end
            
    end 

    def categories
        [
          ['Saltwater Fish'],
          ['Freshwater Fish'],
          ['Corals'],
          ['Aquariums']
        ]

      end
end
