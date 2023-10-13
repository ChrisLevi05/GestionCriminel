<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../spider/css/prison.css">
    <!-- font awesome cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <title>Prison</title>
</head>
<body>
    <div class="page">
        <div class="left">
            <div class="tete">
                <h2 class="titre"> Prison</h2>
                <button class="btn">Filtre <i class="fas fa-sort-down"></i></button>
            </div> 
            <table> 
                <tr> 
                    <th> Matricule</th> 
                    <th> Nom du prisonnnier </th> 
                    <th> Date de naissance</th> 
                    <th> Nationnalité </th>
                    <th> Taille </th>
                    <th> Date d'entrée </th>
                    <th> Status </th>
                    <th> Action </th>
                </tr>                    
                <tr> 
                    <td>1</td> 
                    <td> KOUAKOU </td>
                    <td> Jean Sébastien </td>
                    <td>12/12/2022</td> 
                    <td>Sénégalais</td> 
                    <td>187</td> 
                    <td>Prisonnier</td>
                    <td>
                        <div class="crud">
                            <button> <i class="fas fa-pen-alt"></i></button>
                            <button> <i class="fas fa-edit"></i></button>
                            <button> <i class="far fa-trash-alt"></i></button>
                        </div>
                    </td>
                </tr> 
            </table>
            
        </div>
        
        <div class="right">
            <img src="../images/agent.png" alt="" class="image">   
            <input type="file" name="" id="">
            <form action="" class="formulaire">
                <div class="inputDiv">
                    <label for="">Nom prisonnier :</label>
                    <input type="text" name="" id="" class="input">
                </div>
                <div class="inputDiv">
                    <label for="">Prenom prisonnier :</label>
                    <input type="text" name="" id="" class="input">
                </div>
                <div class="inputDiv">
                    <label for="">Sexe : </label><select name="" id="" class="input">
                        <option value=""></option>
                        <option value="2"> Masculin</option>
                        <option value="1"> Feminin</option>
                    </select>
                </div>
                <div class="inputDiv">
                    <label for="">Date de naissance :</label>
                    <input type="date" name="" id="" class="input">
                </div>
                <div class="inputDiv">
                    <label for="">Nationalité :</label>
                    <input type="text" name="" id="" class="input">
                </div>
                <div class="inputDiv">
                    <label for="">Taille :</label>
                    <input type="text" name="" id="" class="input">
                </div>
                <div class="inputDiv">
                    <label for="">Profession :</label>
                    <input type="text" name="" id="" class="input">
                </div>
                <div class="inputDiv">
                    <label for="">Date d'entrée :</label>
                    <input type="date" name="" id="" class="input">
                </div>
                <div class="inputDiv">
                    <label for="">Status : </label><select name="" id="" class="input">
                        <option value=""></option>
                        <option value="2"> Recherhcé(e)</option>
                        <option value="1"> Libre</option>
                        <option value="1"> Prison</option>
                    </select>
                </div>
                <div class="crud">
                    <button>Ajouter <i class="fas fa-pen-alt"></i></button>
                    <button>Modifier <i class="fas fa-edit"></i></button>
                    <button>Supprimer <i class="far fa-trash-alt"></i></button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>