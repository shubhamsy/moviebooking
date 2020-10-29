namespace :seat do
  task flush_data: :environment do
    @seats = Seat.all.update(checked: false)
    @rows = Row.all.update(checked: false)
  end
end