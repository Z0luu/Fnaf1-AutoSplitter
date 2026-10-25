state("FiveNightsAtFreddys")
{
	int area : "FiveNightsAtFreddys.exe", 0xAC9AC, 0x1F0;
}

startup
{
	vars.OldArea = null;
	vars.ShouldSplit = new HashSet<int> { 2, 9, 11, 13 };
}

update
{
	if (current.area == -1 && old.area != -1)
		vars.OldArea = old.area;

	// if (current.area != old.area)
		// print("[FNAF1] " + old.area + " -> " + current.area + " : OldArea = " + vars.OldArea);
}

start
{
	return current.area == 10;
}

split
{
	return (current.area != old.area && vars.OldArea == 6 && vars.ShouldSplit.Contains(current.area));
}

isLoading
{
	return current.area == -1;
}