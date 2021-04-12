class ArtistInstrumentsController < ApplicationController

    def new
        @artist_instrument = ArtistInstrument.new 
    end

    def create
        @artist_instrument = ArtistInstrument.new(artist_instrument_params)
        if @artist_instrument.valid?
            @artist_instrument.save
            redirect_to artist_path(@artist_instrument.artist_id)
        else
            render :new
        end
    end
    
    private 
    def artist_instrument_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

end
