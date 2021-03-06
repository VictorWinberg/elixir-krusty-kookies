defmodule Krusty.OrderView do
  use Krusty.Web, :view

  def render("index.json", %{orders: orders}) do
    %{data: render_many(orders, Krusty.OrderView, "order.json")}
  end

  def render("show.json", %{order: order}) do
    %{data: render_one(order, Krusty.OrderView, "order.json")}
  end

  def render("order.json", %{order: order}) do
    %{id: order.id,
      date: order.date,
      status: order.status,
      customer_id: order.customer_id}
  end
end
