class Instrument < ApplicationRecord

    def list_info
        self.name + " | " + self.classification
    end
end
