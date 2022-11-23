{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "e8e5dce8",
   "metadata": {
    "papermill": {
     "duration": 0.00307,
     "end_time": "2022-11-23T07:14:50.638428",
     "exception": false,
     "start_time": "2022-11-23T07:14:50.635358",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Analyzing pokemon\n",
    "\n",
    "### Read csv file from kaggle"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "0706dd27",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-23T07:14:50.647650Z",
     "iopub.status.busy": "2022-11-23T07:14:50.644862Z",
     "iopub.status.idle": "2022-11-23T07:14:50.823655Z",
     "shell.execute_reply": "2022-11-23T07:14:50.821810Z"
    },
    "papermill": {
     "duration": 0.185637,
     "end_time": "2022-11-23T07:14:50.826107",
     "exception": false,
     "start_time": "2022-11-23T07:14:50.640470",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "pokedex <- read.csv('/kaggle/input/complete-pokemon-dataset-updated-090420/pokedex_(Update_05.20).csv', header=T)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "690c3717",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-23T07:14:50.867551Z",
     "iopub.status.busy": "2022-11-23T07:14:50.832075Z",
     "iopub.status.idle": "2022-11-23T07:14:50.916373Z",
     "shell.execute_reply": "2022-11-23T07:14:50.914730Z"
    },
    "papermill": {
     "duration": 0.090598,
     "end_time": "2022-11-23T07:14:50.918687",
     "exception": false,
     "start_time": "2022-11-23T07:14:50.828089",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 51</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>X</th><th scope=col>pokedex_number</th><th scope=col>name</th><th scope=col>german_name</th><th scope=col>japanese_name</th><th scope=col>generation</th><th scope=col>status</th><th scope=col>species</th><th scope=col>type_number</th><th scope=col>type_1</th><th scope=col>⋯</th><th scope=col>against_ground</th><th scope=col>against_flying</th><th scope=col>against_psychic</th><th scope=col>against_bug</th><th scope=col>against_rock</th><th scope=col>against_ghost</th><th scope=col>against_dragon</th><th scope=col>against_dark</th><th scope=col>against_steel</th><th scope=col>against_fairy</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>0</td><td>1</td><td>Bulbasaur    </td><td>Bisasam  </td><td>フシギダネ (Fushigidane)</td><td>1</td><td>Normal</td><td>Seed Pokémon  </td><td>2</td><td>Grass</td><td>⋯</td><td>1</td><td>2</td><td>2</td><td>1.0</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1.0</td><td>0.5</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1</td><td>2</td><td>Ivysaur      </td><td>Bisaknosp</td><td>フシギソウ (Fushigisou) </td><td>1</td><td>Normal</td><td>Seed Pokémon  </td><td>2</td><td>Grass</td><td>⋯</td><td>1</td><td>2</td><td>2</td><td>1.0</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1.0</td><td>0.5</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2</td><td>3</td><td>Venusaur     </td><td>Bisaflor </td><td>フシギバナ (Fushigibana)</td><td>1</td><td>Normal</td><td>Seed Pokémon  </td><td>2</td><td>Grass</td><td>⋯</td><td>1</td><td>2</td><td>2</td><td>1.0</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1.0</td><td>0.5</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>3</td><td>3</td><td>Mega Venusaur</td><td>Bisaflor </td><td>フシギバナ (Fushigibana)</td><td>1</td><td>Normal</td><td>Seed Pokémon  </td><td>2</td><td>Grass</td><td>⋯</td><td>1</td><td>2</td><td>2</td><td>1.0</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1.0</td><td>0.5</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>4</td><td>4</td><td>Charmander   </td><td>Glumanda </td><td>ヒトカゲ (Hitokage)     </td><td>1</td><td>Normal</td><td>Lizard Pokémon</td><td>1</td><td>Fire </td><td>⋯</td><td>2</td><td>1</td><td>1</td><td>0.5</td><td>2</td><td>1</td><td>1</td><td>1</td><td>0.5</td><td>0.5</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5</td><td>5</td><td>Charmeleon   </td><td>Glutexo  </td><td>リザード (Lizardo)      </td><td>1</td><td>Normal</td><td>Flame Pokémon </td><td>1</td><td>Fire </td><td>⋯</td><td>2</td><td>1</td><td>1</td><td>0.5</td><td>2</td><td>1</td><td>1</td><td>1</td><td>0.5</td><td>0.5</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 51\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & X & pokedex\\_number & name & german\\_name & japanese\\_name & generation & status & species & type\\_number & type\\_1 & ⋯ & against\\_ground & against\\_flying & against\\_psychic & against\\_bug & against\\_rock & against\\_ghost & against\\_dragon & against\\_dark & against\\_steel & against\\_fairy\\\\\n",
       "  & <int> & <int> & <chr> & <chr> & <chr> & <int> & <chr> & <chr> & <int> & <chr> & ⋯ & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 0 & 1 & Bulbasaur     & Bisasam   & フシギダネ (Fushigidane) & 1 & Normal & Seed Pokémon   & 2 & Grass & ⋯ & 1 & 2 & 2 & 1.0 & 1 & 1 & 1 & 1 & 1.0 & 0.5\\\\\n",
       "\t2 & 1 & 2 & Ivysaur       & Bisaknosp & フシギソウ (Fushigisou)  & 1 & Normal & Seed Pokémon   & 2 & Grass & ⋯ & 1 & 2 & 2 & 1.0 & 1 & 1 & 1 & 1 & 1.0 & 0.5\\\\\n",
       "\t3 & 2 & 3 & Venusaur      & Bisaflor  & フシギバナ (Fushigibana) & 1 & Normal & Seed Pokémon   & 2 & Grass & ⋯ & 1 & 2 & 2 & 1.0 & 1 & 1 & 1 & 1 & 1.0 & 0.5\\\\\n",
       "\t4 & 3 & 3 & Mega Venusaur & Bisaflor  & フシギバナ (Fushigibana) & 1 & Normal & Seed Pokémon   & 2 & Grass & ⋯ & 1 & 2 & 2 & 1.0 & 1 & 1 & 1 & 1 & 1.0 & 0.5\\\\\n",
       "\t5 & 4 & 4 & Charmander    & Glumanda  & ヒトカゲ (Hitokage)      & 1 & Normal & Lizard Pokémon & 1 & Fire  & ⋯ & 2 & 1 & 1 & 0.5 & 2 & 1 & 1 & 1 & 0.5 & 0.5\\\\\n",
       "\t6 & 5 & 5 & Charmeleon    & Glutexo   & リザード (Lizardo)       & 1 & Normal & Flame Pokémon  & 1 & Fire  & ⋯ & 2 & 1 & 1 & 0.5 & 2 & 1 & 1 & 1 & 0.5 & 0.5\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 51\n",
       "\n",
       "| <!--/--> | X &lt;int&gt; | pokedex_number &lt;int&gt; | name &lt;chr&gt; | german_name &lt;chr&gt; | japanese_name &lt;chr&gt; | generation &lt;int&gt; | status &lt;chr&gt; | species &lt;chr&gt; | type_number &lt;int&gt; | type_1 &lt;chr&gt; | ⋯ ⋯ | against_ground &lt;dbl&gt; | against_flying &lt;dbl&gt; | against_psychic &lt;dbl&gt; | against_bug &lt;dbl&gt; | against_rock &lt;dbl&gt; | against_ghost &lt;dbl&gt; | against_dragon &lt;dbl&gt; | against_dark &lt;dbl&gt; | against_steel &lt;dbl&gt; | against_fairy &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 0 | 1 | Bulbasaur     | Bisasam   | フシギダネ (Fushigidane) | 1 | Normal | Seed Pokémon   | 2 | Grass | ⋯ | 1 | 2 | 2 | 1.0 | 1 | 1 | 1 | 1 | 1.0 | 0.5 |\n",
       "| 2 | 1 | 2 | Ivysaur       | Bisaknosp | フシギソウ (Fushigisou)  | 1 | Normal | Seed Pokémon   | 2 | Grass | ⋯ | 1 | 2 | 2 | 1.0 | 1 | 1 | 1 | 1 | 1.0 | 0.5 |\n",
       "| 3 | 2 | 3 | Venusaur      | Bisaflor  | フシギバナ (Fushigibana) | 1 | Normal | Seed Pokémon   | 2 | Grass | ⋯ | 1 | 2 | 2 | 1.0 | 1 | 1 | 1 | 1 | 1.0 | 0.5 |\n",
       "| 4 | 3 | 3 | Mega Venusaur | Bisaflor  | フシギバナ (Fushigibana) | 1 | Normal | Seed Pokémon   | 2 | Grass | ⋯ | 1 | 2 | 2 | 1.0 | 1 | 1 | 1 | 1 | 1.0 | 0.5 |\n",
       "| 5 | 4 | 4 | Charmander    | Glumanda  | ヒトカゲ (Hitokage)      | 1 | Normal | Lizard Pokémon | 1 | Fire  | ⋯ | 2 | 1 | 1 | 0.5 | 2 | 1 | 1 | 1 | 0.5 | 0.5 |\n",
       "| 6 | 5 | 5 | Charmeleon    | Glutexo   | リザード (Lizardo)       | 1 | Normal | Flame Pokémon  | 1 | Fire  | ⋯ | 2 | 1 | 1 | 0.5 | 2 | 1 | 1 | 1 | 0.5 | 0.5 |\n",
       "\n"
      ],
      "text/plain": [
       "  X pokedex_number name          german_name japanese_name           \n",
       "1 0 1              Bulbasaur     Bisasam     フシギダネ (Fushigidane)\n",
       "2 1 2              Ivysaur       Bisaknosp   フシギソウ (Fushigisou) \n",
       "3 2 3              Venusaur      Bisaflor    フシギバナ (Fushigibana)\n",
       "4 3 3              Mega Venusaur Bisaflor    フシギバナ (Fushigibana)\n",
       "5 4 4              Charmander    Glumanda    ヒトカゲ (Hitokage)     \n",
       "6 5 5              Charmeleon    Glutexo     リザード (Lizardo)      \n",
       "  generation status species        type_number type_1 ⋯ against_ground\n",
       "1 1          Normal Seed Pokémon   2           Grass  ⋯ 1             \n",
       "2 1          Normal Seed Pokémon   2           Grass  ⋯ 1             \n",
       "3 1          Normal Seed Pokémon   2           Grass  ⋯ 1             \n",
       "4 1          Normal Seed Pokémon   2           Grass  ⋯ 1             \n",
       "5 1          Normal Lizard Pokémon 1           Fire   ⋯ 2             \n",
       "6 1          Normal Flame Pokémon  1           Fire   ⋯ 2             \n",
       "  against_flying against_psychic against_bug against_rock against_ghost\n",
       "1 2              2               1.0         1            1            \n",
       "2 2              2               1.0         1            1            \n",
       "3 2              2               1.0         1            1            \n",
       "4 2              2               1.0         1            1            \n",
       "5 1              1               0.5         2            1            \n",
       "6 1              1               0.5         2            1            \n",
       "  against_dragon against_dark against_steel against_fairy\n",
       "1 1              1            1.0           0.5          \n",
       "2 1              1            1.0           0.5          \n",
       "3 1              1            1.0           0.5          \n",
       "4 1              1            1.0           0.5          \n",
       "5 1              1            0.5           0.5          \n",
       "6 1              1            0.5           0.5          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'X'</li><li>'pokedex_number'</li><li>'name'</li><li>'german_name'</li><li>'japanese_name'</li><li>'generation'</li><li>'status'</li><li>'species'</li><li>'type_number'</li><li>'type_1'</li><li>'type_2'</li><li>'height_m'</li><li>'weight_kg'</li><li>'abilities_number'</li><li>'ability_1'</li><li>'ability_2'</li><li>'ability_hidden'</li><li>'total_points'</li><li>'hp'</li><li>'attack'</li><li>'defense'</li><li>'sp_attack'</li><li>'sp_defense'</li><li>'speed'</li><li>'catch_rate'</li><li>'base_friendship'</li><li>'base_experience'</li><li>'growth_rate'</li><li>'egg_type_number'</li><li>'egg_type_1'</li><li>'egg_type_2'</li><li>'percentage_male'</li><li>'egg_cycles'</li><li>'against_normal'</li><li>'against_fire'</li><li>'against_water'</li><li>'against_electric'</li><li>'against_grass'</li><li>'against_ice'</li><li>'against_fight'</li><li>'against_poison'</li><li>'against_ground'</li><li>'against_flying'</li><li>'against_psychic'</li><li>'against_bug'</li><li>'against_rock'</li><li>'against_ghost'</li><li>'against_dragon'</li><li>'against_dark'</li><li>'against_steel'</li><li>'against_fairy'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'X'\n",
       "\\item 'pokedex\\_number'\n",
       "\\item 'name'\n",
       "\\item 'german\\_name'\n",
       "\\item 'japanese\\_name'\n",
       "\\item 'generation'\n",
       "\\item 'status'\n",
       "\\item 'species'\n",
       "\\item 'type\\_number'\n",
       "\\item 'type\\_1'\n",
       "\\item 'type\\_2'\n",
       "\\item 'height\\_m'\n",
       "\\item 'weight\\_kg'\n",
       "\\item 'abilities\\_number'\n",
       "\\item 'ability\\_1'\n",
       "\\item 'ability\\_2'\n",
       "\\item 'ability\\_hidden'\n",
       "\\item 'total\\_points'\n",
       "\\item 'hp'\n",
       "\\item 'attack'\n",
       "\\item 'defense'\n",
       "\\item 'sp\\_attack'\n",
       "\\item 'sp\\_defense'\n",
       "\\item 'speed'\n",
       "\\item 'catch\\_rate'\n",
       "\\item 'base\\_friendship'\n",
       "\\item 'base\\_experience'\n",
       "\\item 'growth\\_rate'\n",
       "\\item 'egg\\_type\\_number'\n",
       "\\item 'egg\\_type\\_1'\n",
       "\\item 'egg\\_type\\_2'\n",
       "\\item 'percentage\\_male'\n",
       "\\item 'egg\\_cycles'\n",
       "\\item 'against\\_normal'\n",
       "\\item 'against\\_fire'\n",
       "\\item 'against\\_water'\n",
       "\\item 'against\\_electric'\n",
       "\\item 'against\\_grass'\n",
       "\\item 'against\\_ice'\n",
       "\\item 'against\\_fight'\n",
       "\\item 'against\\_poison'\n",
       "\\item 'against\\_ground'\n",
       "\\item 'against\\_flying'\n",
       "\\item 'against\\_psychic'\n",
       "\\item 'against\\_bug'\n",
       "\\item 'against\\_rock'\n",
       "\\item 'against\\_ghost'\n",
       "\\item 'against\\_dragon'\n",
       "\\item 'against\\_dark'\n",
       "\\item 'against\\_steel'\n",
       "\\item 'against\\_fairy'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'X'\n",
       "2. 'pokedex_number'\n",
       "3. 'name'\n",
       "4. 'german_name'\n",
       "5. 'japanese_name'\n",
       "6. 'generation'\n",
       "7. 'status'\n",
       "8. 'species'\n",
       "9. 'type_number'\n",
       "10. 'type_1'\n",
       "11. 'type_2'\n",
       "12. 'height_m'\n",
       "13. 'weight_kg'\n",
       "14. 'abilities_number'\n",
       "15. 'ability_1'\n",
       "16. 'ability_2'\n",
       "17. 'ability_hidden'\n",
       "18. 'total_points'\n",
       "19. 'hp'\n",
       "20. 'attack'\n",
       "21. 'defense'\n",
       "22. 'sp_attack'\n",
       "23. 'sp_defense'\n",
       "24. 'speed'\n",
       "25. 'catch_rate'\n",
       "26. 'base_friendship'\n",
       "27. 'base_experience'\n",
       "28. 'growth_rate'\n",
       "29. 'egg_type_number'\n",
       "30. 'egg_type_1'\n",
       "31. 'egg_type_2'\n",
       "32. 'percentage_male'\n",
       "33. 'egg_cycles'\n",
       "34. 'against_normal'\n",
       "35. 'against_fire'\n",
       "36. 'against_water'\n",
       "37. 'against_electric'\n",
       "38. 'against_grass'\n",
       "39. 'against_ice'\n",
       "40. 'against_fight'\n",
       "41. 'against_poison'\n",
       "42. 'against_ground'\n",
       "43. 'against_flying'\n",
       "44. 'against_psychic'\n",
       "45. 'against_bug'\n",
       "46. 'against_rock'\n",
       "47. 'against_ghost'\n",
       "48. 'against_dragon'\n",
       "49. 'against_dark'\n",
       "50. 'against_steel'\n",
       "51. 'against_fairy'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"X\"                \"pokedex_number\"   \"name\"             \"german_name\"     \n",
       " [5] \"japanese_name\"    \"generation\"       \"status\"           \"species\"         \n",
       " [9] \"type_number\"      \"type_1\"           \"type_2\"           \"height_m\"        \n",
       "[13] \"weight_kg\"        \"abilities_number\" \"ability_1\"        \"ability_2\"       \n",
       "[17] \"ability_hidden\"   \"total_points\"     \"hp\"               \"attack\"          \n",
       "[21] \"defense\"          \"sp_attack\"        \"sp_defense\"       \"speed\"           \n",
       "[25] \"catch_rate\"       \"base_friendship\"  \"base_experience\"  \"growth_rate\"     \n",
       "[29] \"egg_type_number\"  \"egg_type_1\"       \"egg_type_2\"       \"percentage_male\" \n",
       "[33] \"egg_cycles\"       \"against_normal\"   \"against_fire\"     \"against_water\"   \n",
       "[37] \"against_electric\" \"against_grass\"    \"against_ice\"      \"against_fight\"   \n",
       "[41] \"against_poison\"   \"against_ground\"   \"against_flying\"   \"against_psychic\" \n",
       "[45] \"against_bug\"      \"against_rock\"     \"against_ghost\"    \"against_dragon\"  \n",
       "[49] \"against_dark\"     \"against_steel\"    \"against_fairy\"   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(pokedex)\n",
    "names(pokedex)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f61cfe74",
   "metadata": {
    "papermill": {
     "duration": 0.002714,
     "end_time": "2022-11-23T07:14:50.924799",
     "exception": false,
     "start_time": "2022-11-23T07:14:50.922085",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### preprocessing"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "35300fc9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-23T07:14:50.933260Z",
     "iopub.status.busy": "2022-11-23T07:14:50.931799Z",
     "iopub.status.idle": "2022-11-23T07:14:50.963605Z",
     "shell.execute_reply": "2022-11-23T07:14:50.961816Z"
    },
    "papermill": {
     "duration": 0.038428,
     "end_time": "2022-11-23T07:14:50.965803",
     "exception": false,
     "start_time": "2022-11-23T07:14:50.927375",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dplyr’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(dplyr)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "f3bd8082",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-23T07:14:50.975058Z",
     "iopub.status.busy": "2022-11-23T07:14:50.973515Z",
     "iopub.status.idle": "2022-11-23T07:14:51.086277Z",
     "shell.execute_reply": "2022-11-23T07:14:51.083940Z"
    },
    "papermill": {
     "duration": 0.12029,
     "end_time": "2022-11-23T07:14:51.089242",
     "exception": false,
     "start_time": "2022-11-23T07:14:50.968952",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 18</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>pokedex_number</th><th scope=col>name</th><th scope=col>generation</th><th scope=col>status</th><th scope=col>type_number</th><th scope=col>type_1</th><th scope=col>type_2</th><th scope=col>height_m</th><th scope=col>weight_kg</th><th scope=col>total_points</th><th scope=col>hp</th><th scope=col>attack</th><th scope=col>defense</th><th scope=col>sp_attack</th><th scope=col>sp_defense</th><th scope=col>speed</th><th scope=col>growth_rate</th><th scope=col>percentage_male</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>1</td><td>Bulbasaur    </td><td>1</td><td>Normal</td><td>2</td><td>Grass</td><td>Poison</td><td>0.7</td><td>  6.9</td><td>318</td><td>45</td><td> 49</td><td> 49</td><td> 65</td><td> 65</td><td>45</td><td>Medium Slow</td><td>87.5</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2</td><td>Ivysaur      </td><td>1</td><td>Normal</td><td>2</td><td>Grass</td><td>Poison</td><td>1.0</td><td> 13.0</td><td>405</td><td>60</td><td> 62</td><td> 63</td><td> 80</td><td> 80</td><td>60</td><td>Medium Slow</td><td>87.5</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>3</td><td>Venusaur     </td><td>1</td><td>Normal</td><td>2</td><td>Grass</td><td>Poison</td><td>2.0</td><td>100.0</td><td>525</td><td>80</td><td> 82</td><td> 83</td><td>100</td><td>100</td><td>80</td><td>Medium Slow</td><td>87.5</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>3</td><td>Mega Venusaur</td><td>1</td><td>Normal</td><td>2</td><td>Grass</td><td>Poison</td><td>2.4</td><td>155.5</td><td>625</td><td>80</td><td>100</td><td>123</td><td>122</td><td>120</td><td>80</td><td>Medium Slow</td><td>87.5</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>4</td><td>Charmander   </td><td>1</td><td>Normal</td><td>1</td><td>Fire </td><td>      </td><td>0.6</td><td>  8.5</td><td>309</td><td>39</td><td> 52</td><td> 43</td><td> 60</td><td> 50</td><td>65</td><td>Medium Slow</td><td>87.5</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5</td><td>Charmeleon   </td><td>1</td><td>Normal</td><td>1</td><td>Fire </td><td>      </td><td>1.1</td><td> 19.0</td><td>405</td><td>58</td><td> 64</td><td> 58</td><td> 80</td><td> 65</td><td>80</td><td>Medium Slow</td><td>87.5</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 18\n",
       "\\begin{tabular}{r|llllllllllllllllll}\n",
       "  & pokedex\\_number & name & generation & status & type\\_number & type\\_1 & type\\_2 & height\\_m & weight\\_kg & total\\_points & hp & attack & defense & sp\\_attack & sp\\_defense & speed & growth\\_rate & percentage\\_male\\\\\n",
       "  & <int> & <chr> & <int> & <chr> & <int> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 1 & Bulbasaur     & 1 & Normal & 2 & Grass & Poison & 0.7 &   6.9 & 318 & 45 &  49 &  49 &  65 &  65 & 45 & Medium Slow & 87.5\\\\\n",
       "\t2 & 2 & Ivysaur       & 1 & Normal & 2 & Grass & Poison & 1.0 &  13.0 & 405 & 60 &  62 &  63 &  80 &  80 & 60 & Medium Slow & 87.5\\\\\n",
       "\t3 & 3 & Venusaur      & 1 & Normal & 2 & Grass & Poison & 2.0 & 100.0 & 525 & 80 &  82 &  83 & 100 & 100 & 80 & Medium Slow & 87.5\\\\\n",
       "\t4 & 3 & Mega Venusaur & 1 & Normal & 2 & Grass & Poison & 2.4 & 155.5 & 625 & 80 & 100 & 123 & 122 & 120 & 80 & Medium Slow & 87.5\\\\\n",
       "\t5 & 4 & Charmander    & 1 & Normal & 1 & Fire  &        & 0.6 &   8.5 & 309 & 39 &  52 &  43 &  60 &  50 & 65 & Medium Slow & 87.5\\\\\n",
       "\t6 & 5 & Charmeleon    & 1 & Normal & 1 & Fire  &        & 1.1 &  19.0 & 405 & 58 &  64 &  58 &  80 &  65 & 80 & Medium Slow & 87.5\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 18\n",
       "\n",
       "| <!--/--> | pokedex_number &lt;int&gt; | name &lt;chr&gt; | generation &lt;int&gt; | status &lt;chr&gt; | type_number &lt;int&gt; | type_1 &lt;chr&gt; | type_2 &lt;chr&gt; | height_m &lt;dbl&gt; | weight_kg &lt;dbl&gt; | total_points &lt;dbl&gt; | hp &lt;dbl&gt; | attack &lt;dbl&gt; | defense &lt;dbl&gt; | sp_attack &lt;dbl&gt; | sp_defense &lt;dbl&gt; | speed &lt;dbl&gt; | growth_rate &lt;chr&gt; | percentage_male &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 1 | Bulbasaur     | 1 | Normal | 2 | Grass | Poison | 0.7 |   6.9 | 318 | 45 |  49 |  49 |  65 |  65 | 45 | Medium Slow | 87.5 |\n",
       "| 2 | 2 | Ivysaur       | 1 | Normal | 2 | Grass | Poison | 1.0 |  13.0 | 405 | 60 |  62 |  63 |  80 |  80 | 60 | Medium Slow | 87.5 |\n",
       "| 3 | 3 | Venusaur      | 1 | Normal | 2 | Grass | Poison | 2.0 | 100.0 | 525 | 80 |  82 |  83 | 100 | 100 | 80 | Medium Slow | 87.5 |\n",
       "| 4 | 3 | Mega Venusaur | 1 | Normal | 2 | Grass | Poison | 2.4 | 155.5 | 625 | 80 | 100 | 123 | 122 | 120 | 80 | Medium Slow | 87.5 |\n",
       "| 5 | 4 | Charmander    | 1 | Normal | 1 | Fire  | <!----> | 0.6 |   8.5 | 309 | 39 |  52 |  43 |  60 |  50 | 65 | Medium Slow | 87.5 |\n",
       "| 6 | 5 | Charmeleon    | 1 | Normal | 1 | Fire  | <!----> | 1.1 |  19.0 | 405 | 58 |  64 |  58 |  80 |  65 | 80 | Medium Slow | 87.5 |\n",
       "\n"
      ],
      "text/plain": [
       "  pokedex_number name          generation status type_number type_1 type_2\n",
       "1 1              Bulbasaur     1          Normal 2           Grass  Poison\n",
       "2 2              Ivysaur       1          Normal 2           Grass  Poison\n",
       "3 3              Venusaur      1          Normal 2           Grass  Poison\n",
       "4 3              Mega Venusaur 1          Normal 2           Grass  Poison\n",
       "5 4              Charmander    1          Normal 1           Fire         \n",
       "6 5              Charmeleon    1          Normal 1           Fire         \n",
       "  height_m weight_kg total_points hp attack defense sp_attack sp_defense speed\n",
       "1 0.7        6.9     318          45  49     49      65        65        45   \n",
       "2 1.0       13.0     405          60  62     63      80        80        60   \n",
       "3 2.0      100.0     525          80  82     83     100       100        80   \n",
       "4 2.4      155.5     625          80 100    123     122       120        80   \n",
       "5 0.6        8.5     309          39  52     43      60        50        65   \n",
       "6 1.1       19.0     405          58  64     58      80        65        80   \n",
       "  growth_rate percentage_male\n",
       "1 Medium Slow 87.5           \n",
       "2 Medium Slow 87.5           \n",
       "3 Medium Slow 87.5           \n",
       "4 Medium Slow 87.5           \n",
       "5 Medium Slow 87.5           \n",
       "6 Medium Slow 87.5           "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "pokedex_backup <- pokedex\n",
    "pokedex <- pokedex %>% select(pokedex_number, name, generation, status, type_number, type_1, type_2, height_m, weight_kg, total_points, hp, attack, defense, sp_attack, sp_defense, speed, growth_rate, percentage_male)\n",
    "head(pokedex)"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 4.551985,
   "end_time": "2022-11-23T07:14:51.213179",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-11-23T07:14:46.661194",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
