json.array! @trucks do |truck|
  json.lat truck.latitude
  json.lng truck.longitude
  json.title truck.applicant
  json.content TrucksController.render(partial: 'trucks/truck',
                                       locals: { truck: truck }, 
                                       format: :html).squish
end