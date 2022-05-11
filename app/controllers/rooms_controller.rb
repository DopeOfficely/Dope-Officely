class RoomsController < ApplicationController
  def index
    rooms = Room.all
    render json: rooms
  end

  def show
    room = Room.find(params[:id])
    date = params[:date].to_date || Date.today

    payload = []
    room.desks.includes(:books).each do |desk|
      payload << {
        id: desk.id,
        seat: desk.seat,
        description: desk.description,
        enabled: desk.enabled,
        booked: desk.books.any? { |book| book.date == date },
        booked_by: desk.books.find_by(date: date)&.user&.name
      }
    end
    render json: payload
  end
end
