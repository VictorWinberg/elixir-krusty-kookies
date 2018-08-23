defmodule Krusty.IngredientView do
  use Krusty.Web, :view

  def render("index.json", %{ingredients: ingredients}) do
    %{data: render_many(ingredients, Krusty.IngredientView, "ingredient.json")}
  end

  def render("show.json", %{ingredient: ingredient}) do
    %{data: render_one(ingredient, Krusty.IngredientView, "ingredient.json")}
  end

  def render("ingredient.json", %{ingredient: ingredient}) do
    %{id: ingredient.id,
      name: ingredient.name}
  end
end