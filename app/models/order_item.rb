class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product



    def unit_price
        if persisted?
            self[:unit_price]
        else 
            product.price
        end


    end


    def total
        unit_price*quantity


    end

    private

    def set_unit_price
        self[:unit_price]=unit_price

    end

    def set_total 
        set[:total]=total*quantity

    end

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "order_id", "product_id", "quantity", "total", "unit_price", "updated_at"]
      end
    
    


end
