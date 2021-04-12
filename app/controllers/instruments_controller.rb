class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.all
    end

    def new
        @instrument = Instrument.new 
    end

    def create
        @instrument = Instrument.new(instrument_params)
        if @instrument.valid?
            @instrument.save
            redirect_to instrument_path(@instrument.id)
        else
            render :new
        end
    end

    def edit
        @instrument = Instrument.find(params[:id])
    end

    def update
        @instrument = Instrument.find(params[:id])
        @instrument.update(instrument_params)
        redirect_to instrument_path(@instrument.id)
    end

    private 
    def instrument_params
        params.require(:instrument).permit(:name, :classification)
    end

end
