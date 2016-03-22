
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.2.0/styles/default.min.css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.2.0/highlight.min.js"></script>


	<style type="text/css">
	.ui.container{
		margin:200px;
	}


	.title{
		margin-top: 3%;
	}
		.request{
			font-weight: bold;
			border-radius: 10px 0px 0px 10px;

			color:white;
	
			-moz-border-radius: 10px 0px 0px 10px;
			-webkit-border-radius: 10px 0px 0px 10px;
			border: 0px solid #000000;
		}

		.description{

			border-right: 2px solid #000000;
		}
		.description, .url{
			border-top: 2px solid #000000;
			border-bottom: 2px solid #000000;
			background-color: white;
		}

		.delete > *{
			border-color: #db2828;
			background-color: #f2aeae;

		}
		.post > *{
			border-color: #21ba45;
			background-color: #9eeeb1;
		}
		.put > *{
			border-color: #a5673f;
			background-color: #e2c5b3;
		}
		.get > *{
			background-color: #9ecdf0;
			border-color: #2185d0;
		}

		.delete > .request{
			background-color: #db2828;
		}
		.post > .request{
			background-color: #21ba45;
		}
		.put > .request{
			background-color: #a5673f;
		}
		.get > .request{
			background-color: #2185d0;
		}

		.get-content, .delete-content, .put-content, .post-content{
			border-radius: 0px 0px 10px 10px;
			-moz-border-radius: 0px 0px 10px 10px;
			-webkit-border-radius: 0px 0px 10px 10px;
			border: 2px solid #000000;
			padding: 15px;
			margin: -14px;
			border: 2px solid #000000;
			border-top: none;
		}

		.delete-content{
			border-color: #db2828;
		}
		.post-content{
			border-color: #21ba45;
		}
		.put-content{
			border-color: #a5673f;
		}
		.get-content{
			border-color: #2185d0;
		}

		.desc{
			font-size: 125%;
		}


	</style>
</head>
<body>
<div class="ui container">
	<div class="row">
		<div class="column">
			<div class="ui accordion">

				<!-- GET ALL-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/all</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer tous les utilisateurs</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>R�cup�rer tous les utilisateurs de la base de donn�es.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-all">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/all/{cd}" data-request="GET" data-container="div#get-users-all" data-form="form#get-users-all">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-all" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
							
						</form>
					</div>
				</div>

				<!-- GET-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer un utilisateur par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur sp�cifique dans la base de donn�es, par son <code>id</code>.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-id">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" data-default="" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � rechercher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/{id}/{cd}" data-request="GET" data-container="div#get-users-id" data-form="form#get-users-id">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-id" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>

				<!-- GET-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}/one/{member}</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer le membre d'un utilisateur par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur sp�cifique dans la base de donn�es, par son <code>id</code>, et donner le membre sp�cifi�.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-member">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" data-default="" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � rechercher</td>
									</tr>
									<tr>
										<td><code>member</code></td>
										<td>
											<div class="field">
												<select class="ui dropdown" name="param-gr-member" data-field="#param-member-get-users-member">
													<option value="id">ID</option>
													<option value="nom">Nom</option>
													<option value="prenom">Pr�nom</option>
													<option value="mail">Mail</option>
													<option value="password">Mot de Passe</option>
													<option value="rang">Rang</option>
													<option value="questions">Questions</option>
													<option value="questionnaires">Questionnaires</option>
													<option value="realisations">R�alisations</option>
													<option value="groupes">Groupes</option>
												</select>
												<input type="hidden" value="id" data-default="id" name="param-member" id="param-member-get-users-member">
											</div>
										</td>
										<td>Membre de l'utilisateur � afficher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/{id}/one/{member}/{cd}" data-request="GET" data-container="div#get-users-member" data-form="form#get-users-member">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-member" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>

				<!-- POST -->

				<div class="title">
					<div class="ui grid post">
						<div class="ui column center aligned one wide request">POST</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Mettre � jour un utilisateur</i></div>
					</div>
				</div>
				<div class="post-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Mettre � jour l'utilisateur d'id <code>{id}</code> avec les donn�es pass�es par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="last-name" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � modifier.</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="last-name" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							
							<div class="ui divider"></div>

							<h4><i class="file text outline icon"></i>Formulaire</h4>
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>mail</code></td>
										<td><input type="text" name="mail" placeholder="mail"></td>
										<td>Adresse Email de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>password</code></td>
										<td><input type="text" name="password" placeholder="password"></td>
										<td>Mot de passe de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>nom</code></td>
										<td><input type="text" name="nom" placeholder="nom"></td>
										<td>Nom de Famille de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>prenom</code></td>
										<td><input type="text" name="prenom" placeholder="prenom"></td>
										<td>Pr�nom de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>idRang</code></td>
										<td><input type="text" name="idRang" placeholder="idRang"></td>
										<td>Identifiant du rang de l'utilisateur</td>
									</tr>
								</tbody>
							</table>

							<button class="ui right labeled icon button green">
							  <i class="right arrow icon"></i>
							  Tester
							</button>
						</form>
					</div>
				</div>


				<!-- PUT -->

				<div class="title">
					<div class="ui grid put">
						<div class="ui column center aligned one wide request">PUT</div>
						<div class="ui column six wide url"><code>/user</code></div>
						<div class="ui column right aligned nine wide description"><i>Ajouter un utilisateur</i></div>
					</div>
				</div>
				<div class="put-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Ajouter un nouvel utilisateur avec les donn�es pass�es par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form">
							Aucun Param�tre pour cette fonction...
							
							<div class="ui divider"></div>

							<h4><i class="file text outline icon"></i>Formulaire</h4>
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>mail</code></td>
										<td><input type="text" name="mail" placeholder="mail"></td>
										<td>Adresse Email de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>password</code></td>
										<td><input type="text" name="password" placeholder="password"></td>
										<td>Mot de passe de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>nom</code></td>
										<td><input type="text" name="nom" placeholder="nom"></td>
										<td>Nom de Famille de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>prenom</code></td>
										<td><input type="text" name="prenom" placeholder="prenom"></td>
										<td>Pr�nom de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>idRang</code></td>
										<td><input type="text" name="idRang" placeholder="idRang"></td>
										<td>Identifiant du rang de l'utilisateur</td>
									</tr>
								</tbody>
							</table>

							<button class="ui right labeled icon button brown">
							  <i class="right arrow icon"></i>
							  Tester
							</button>
						</form>
					</div>
				</div>

				<!-- DELETE -->

				<div class="title">
					<div class="ui grid delete">
						<div class="ui column center aligned one wide request">DELETE</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Supprimer un utilisateur existant</i></div>
					</div>
				</div>
		
				<div class="delete-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Supprime un utilisateur par son <code>{id}</code>.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="count" id="count" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � supprimer</td>
									</tr>
								</tbody>
							</table>
							<button class="ui right labeled icon button red">
							  <i class="right arrow icon"></i>
							  Tester
							</button>
						</form>
					</div>
				</div>


			</div>
		</div>
	</div>
</div>

</body>

<script type="text/javascript">
	jQuery('.ui.accordion').accordion();
	jQuery('select.dropdown').dropdown();

	jQuery('select').change(function(){
		jQuery(jQuery(this).attr('data-field')).val(jQuery(this).find(':selected').val());
	});

	jQuery('.btn-ajax').click(function(){		
		var elt = jQuery(this);

		var baseUrl = "http://localhost:8080/QMP-Rest/rest/";
		//jQueryurlToShow = jQuerybaseUrl;
		var urlToShow = "http://qmp.com/api-v1/"

		var extUrl = elt.attr('data-ajax');



		jQuery(elt.attr("data-container")).find("code").parent().hide("fast");

		var arrStr = elt.attr('data-ajax').split(/[{}]/);
		for (var i = 1; i < arrStr.length-1; i+=2) {
			var value = jQuery(elt.attr("data-form")).find("input[name=param-"+arrStr[i]+"]").val();
			if (value == null || value == "") { value = jQuery(elt.attr("data-form")).find("*[name=param-"+arrStr[i]+"]").attr("data-default")};
			extUrl = extUrl.replace('{'+arrStr[i]+'}', value);
		};

		var url = baseUrl + extUrl;
		urlToShow +=  extUrl;

		console.log(value);
		console.log(url);


		jQuery(elt.attr("data-container")).find(".msg").html('<div class="ui icon message"><i class="notched circle loading icon"></i><div class="content"><div class="header">Loading</div><p>Request is being Loaded.</p></div></div>');

		jQuery.ajax({
			crossDomain:true,
		  method: elt.attr('data-request'),
		  url: url
		})
		.fail(function(xhr, textStatus, errorThrown) {
			var statusText = xhr.statusText;
			if(xhr.status == 0 )
				statusText = "Unable to Contact Server";
			jQuery(elt.attr("data-container")).find(".msg").html('<div class="ui icon red message"><i class="remove icon"></i><div class="content"><div class="header">'+xhr.status+' - '+statusText+'</div><p>'+urlToShow+'</p></div></div>');
			jQuery(elt.attr("data-container")).find("code").html("");
		})
		.done(function(data, status, xhr) {
			console.log(xhr);
			jQuery(elt.attr("data-container")).find("code").html(JSON.stringify(data, null, 4));
			jQuery('code.highlight').each(function(i, block) {
				hljs.highlightBlock(block);
			});
			jQuery(elt.attr("data-container")).find("code").parent().show("slow");
			jQuery(elt.attr("data-container")).find(".msg").html('<div class="ui icon green message"><i class="checkmark icon"></i><div class="content"><div class="header">'+xhr.status+' - '+xhr.statusText+'</div><p>'+urlToShow+'</p></div></div>');
		});
	});

</script>
</html>