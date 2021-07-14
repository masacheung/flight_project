class Flight
    attr_reader :passengers

    def initialize(flight_num, cap)
        @flight_number = flight_num
        @capacity = cap
        @passengers = []
    end

    def full?
        @passengers.length == @capacity
    end

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !full?
            @passengers << passenger
        end
    end

    def list_passengers
        name = []
        @passengers.each do |ele|
            name << ele.name
        end
        return name
    end
    
    def [](number)
        @passengers[number]
    end

    def <<(passager)
        board_passenger(passager)
    end
end