// Place all the behaviours and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function displayMatches(ingredients, recipes)
{
	var element = document.getElementById("matches");
	$(element).empty();		// remove old matches before adding new ones to avoid duplicates
	
	var inputVals = document.getElementById("Ingredient").value.split(' ');
	var recipe_ids = [];
	
	for (j = 0; j < inputVals.length; j++)
	{
		if (inputVals[j].length > 2)
		{
			for (i = 0; i < ingredients.length; i++)
			{
				if (ingredients[i].name.indexOf(inputVals[j]) !== -1)
				{
					if (recipe_ids.indexOf(ingredients[i].recipe_id) < 0)
					{
						recipe_ids.push(ingredients[i].recipe_id);
					}
				}
			}
		}
	}
	
	if (recipe_ids.length > 0)
	{	
		for (i = 0; i < recipe_ids.length; i++)
		{
			for (j = 0; j < recipes.length; j++)
			{
				if (recipes[j].id === recipe_ids[i])
				{
					$(element).append("<a href = \"/recipes/" + recipes[j].id + "\">" + recipes[j].name + "</a></br>");
					break;
				}
			}
		}
	}
}

function showComments()
{
	var arrowEle = document.getElementById("arrow");
	var commentContainer = document.getElementById("comments");
	
	if (arrowEle.className === "rightarrow")
	{
		arrowEle.className = "downarrow";
		commentContainer.style.display = "block";
	}
	else
	{
		arrowEle.className = "rightarrow";
		commentContainer.style.display = "none";
	}
}