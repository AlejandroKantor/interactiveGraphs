
# interactiveGraphs

This repository contain programs that create interactive graphs with R and Plot.ly. 

At the moment all files are used to for building interactive graphs of cost and average income of Peruvian University undergraduate programs.


## Main Files

| File   | Description |
|:-------|:------|
| [./interactiveGraphs.RProj][proj]   |    R project file  |
| [./scripts/makeCareerGraphs.R][makeR]   |  Main script |
| [./scripts/functions.R][makeR]    | Functions called by main script |
| [./data/input/resultados_busqueda.xlsx][input]    | Original data file downloaded from http://www.ponteencarrera.pe |



## Usage

Open ./interactiveGraphs.RProj, then open ./scripts/makeCareerGraphs.R within the R Project. Run or source file. 

## Example of graphs

The graphs are in Spanish because they are meant for a Peruvian audience. 

### Min cost

[External link](https://plot.ly/~AlejandroKantor/386.embed?link=False)

<iframe src="https://plot.ly/~AlejandroKantor/386.embed?link=False"  style="width: 100%" frameBorder="0" height="450" scrolling="no" seamless="seamless" 
class="myIframe">
</iframe>

### Max cost

[External link](https://plot.ly/~AlejandroKantor/388.embed?link=False)

<iframe src="https://plot.ly/~AlejandroKantor/388.embed?link=False"  style="width: 100%" frameBorder="0" height="450" scrolling="no" seamless="seamless" 
class="myIframe">
</iframe>

<script type="text/javascript" language="javascript"> 
$('.myIframe').css('height', $(window).height()+'px');
</script>


[proj]: https://github.com/AlejandroKantor/interactiveGraphs/blob/master/interactiveGraphs.Rproj

[makeR]: https://github.com/AlejandroKantor/interactiveGraphs/tree/master/scripts/makeCareerGraphs.R

[ScriptR]: https://github.com/AlejandroKantor/interactiveGraphs/tree/master/scripts/functions.R

[input]:
https://github.com/AlejandroKantor/interactiveGraphs/tree/master/input/resultados_busqueda.xlsx

