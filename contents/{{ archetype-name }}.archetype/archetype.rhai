let context = #{};

context += prompt("Project Name:", "project-name", #{
  cases: [
    CasedValue(KebabCase), 
  ], 
});

context += prompt("Greeting:", "greeting", #{
  defaults_with: "Hello, World!",
  help: "Cliche greeting",
});

render(Directory("contents"), context)

