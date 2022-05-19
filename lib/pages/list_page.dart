import 'package:checkpoint2/pages/components/BrunaoForm.dart';
import 'package:checkpoint2/pages/components/brunaoBotao.dart';
import 'package:checkpoint2/pages/components/brunaoCard.dart';
import 'package:checkpoint2/pages/components/brunaoPage.dart';
import 'package:checkpoint2/pages/components/brunaoText.dart';
import 'package:checkpoint2/pages/model/filme.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _ListPageStates();
  }

}

class _ListPageStates extends State<ListPage>{
    TextEditingController filmeNomeController = TextEditingController();
    TextEditingController filmeAnoController = TextEditingController();
    TextEditingController filmeDiretorController = TextEditingController();
    TextEditingController filmeNotaController = TextEditingController();

    List<FilmeModel> filmes = [];


  addNovoFilme({
    required String filmeNome,
    required String filmeAno,
    required String filmeDiretor,
    required String filmeNota
    }){
      setState(() {
        filmes.insert(0, FilmeModel(
          nome: filmeNome, 
          ano: filmeAno, 
          diretor: filmeDiretor, 
          avaliacao: filmeNota, 
          ),);
      });
    }


  @override 
  Widget build(BuildContext buildContext){
      return BrunaoPage(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BrunaoText('Insira seus filmes:'),
            const SizedBox(height: 15),
            BrunaoForm(label: 'Insira o Nome do filme', userInputController: filmeNomeController),
            const SizedBox(height: 15),
            BrunaoForm(label: 'Insira o Ano do filme', userInputController: filmeAnoController),
            const SizedBox(height: 15),
            BrunaoForm(label: 'Insira o Diretor do filme', userInputController: filmeDiretorController),
            const SizedBox(height: 15),
            BrunaoForm(label: 'Insira a Avaliacao do filme', userInputController: filmeNotaController),
            const SizedBox(height: 15),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index ){
                return const SizedBox(height: 15);
              }, //espacamento entre cada topico
              itemCount: filmes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var current = filmes[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      //add dialog
                      print('cliquei');
                    },
                    child: BrunaoCard(
                      nameText: current.nome.toString(),
                      authorText: current.diretor.toString(),
                      yearText: current.ano.toString(),
                      assessmentText: current.avaliacao.toString(), 
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
                        BrunaoBotao(
              buttonText: 'Adicionar novo filme',
              onPressed: () {
                addNovoFilme(
                    filmeNome: filmeNomeController.text,
                    filmeAno: filmeAnoController.text,
                    filmeDiretor: filmeDiretorController.text,
                    filmeNota: filmeNotaController.text
                    );
              },
            ),
          ]
      )
    )
    );
  }
}

