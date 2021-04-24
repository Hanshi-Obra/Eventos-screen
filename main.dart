import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:date_field/date_field.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


enum Eventos { Boda, Corporativo,
Cumpleanos, Feria, Quinces, Graduacion, Otro}

enum Invitados { menostreinta, treintacincuenta ,
  cinquentasetenta, setentanoventa, noventacientoveinte, cientoveinteacincuenta, mascientocincuenta}

enum Estilos { Estandar, Sencillo,
  Lujo}

enum Duracion { unah,dosh,tresh,cuatroh,masdecuatroh}

enum MayorDeEdad {si,no}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Eventos? evento = Eventos.Otro;
  Estilos? estilo = Estilos.Estandar;
  Duracion? dura = Duracion.unah;
  Invitados? invitados = Invitados.menostreinta;
  MayorDeEdad? mde = MayorDeEdad.si;

   OpcionEventos(String nombre, value)=> Theme(
     data: Theme.of(context).copyWith(
         unselectedWidgetColor: Colors.red,
         disabledColor: Colors.red),
     child: Container(
       height: 35,
       child: ListTile(
          horizontalTitleGap: 0.0,
          minVerticalPadding: 0.0,
          title: Text(nombre, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.0)),
          leading: Transform.scale(
            scale: 0.7,
            child: Radio<Eventos>(
              value: value,
              activeColor: Colors.red ,
              focusColor: Colors.red,
              groupValue: evento,
              onChanged: (Eventos? value) {
                setState(() {
                  evento = value;
                });
              },
            ),
          ),
        ),
     ),
   );


  OpcionDuracion(String nombre, value)=> Theme(
    data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.red,
        disabledColor: Colors.red),
    child: Container(
      height: 35,
      child: ListTile(
        horizontalTitleGap: 0.0,
        title: Text(nombre, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.0)),
        leading: Transform.scale(
          scale: 0.7,
          child: Radio<Duracion>(
            value: value,
            activeColor: Colors.red ,
            focusColor: Colors.red,
            groupValue: dura,
            onChanged: (Duracion? value) {
              setState(() {
                dura = value;
              });
            },
          ),
        ),
      ),
    ),
  );


  OpcionEstilos(String nombre, value)=> Theme(
    data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.red,
        disabledColor: Colors.red),
    child: Container(
      height:35 ,
      child: ListTile(
        horizontalTitleGap: 0.0,
        title: Text(nombre, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.0)),
        leading: Transform.scale(
          scale: 0.7,
          child: Radio<Estilos>(
            value: value,
            activeColor: Colors.red ,
            focusColor: Colors.red,
            groupValue: estilo,
            onChanged: (Estilos? value) {
              setState(() {
                estilo = value;
              });
            },
          ),
        ),
      ),
    ),
  );


  OpcionInvitados(String nombre, value)=> Theme(
    data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.red,
        disabledColor: Colors.red),
    child: Container(
      height: 35,
      child: ListTile(
        horizontalTitleGap: 0.0,
        title: Text(nombre, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.0)),
        leading: Transform.scale(
          scale: 0.7,
          child: Radio<Invitados>(
            value: value,
            activeColor: Colors.red ,
            focusColor: Colors.red,
            groupValue: invitados,
            onChanged: (Invitados? value) {
              setState(() {
                invitados = value;
              });
            },
          ),
        ),
      ),
    ),
  );

  OpcionMayorDeEdad(String nombre, value)=> Theme(
    data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.red,
        disabledColor: Colors.red),
    child: Container(
      height: 35,
      child: ListTile(
        horizontalTitleGap: 0.0,
        title: Text(nombre, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.0)),
        leading: Transform.scale(
          scale: 0.7,
          child: Radio<MayorDeEdad>(
            value: value,
            activeColor: Colors.red ,
            focusColor: Colors.red,
            groupValue: mde,
            onChanged: (MayorDeEdad? value) {
              setState(() {
                mde = value;
              });
            },
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Text('LOS MEJORES PROFESIONALES A TU SERVICIO',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
            ),

            Container(height: 1600, width: 400,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
             child:(Column(
               children: [
                 Text('EXPLÍCANOS LO QUE NECESITAS',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.0),
                     textAlign: TextAlign.left),
                 Text('¿Cuál es el tipo de evento?', style: TextStyle( fontSize: 12.0)),
                 Expanded(
                   child: Row(
                     children: [
                       Expanded(
                         child: Column(
                           children:  [
                             OpcionEventos('Boda', Eventos.Boda),
                             OpcionEventos('Corporativo', Eventos.Corporativo),
                             OpcionEventos('Cumpleaños', Eventos.Cumpleanos),
                             OpcionEventos('Feria de eventos', Eventos.Feria),


                           ],
                         ),
                       ),
                       Expanded(
                         child: Column(
                           children:  [

                             OpcionEventos('Graduación', Eventos.Graduacion),
                             OpcionEventos('Quince Años', Eventos.Quinces),
                             OpcionEventos('Otros', Eventos.Otro),

                           ],
                         ),
                       ),

                     ],
                   ),
                 ),


                 Text('¿Cuántos invitados se esperan aproximadamente?',textAlign: TextAlign.center, style: TextStyle( fontSize: 12.0)),
                 Expanded(
                   child: Row(
                     children: [
                       Expanded(
                         child: Column(
                           children:  [
                             OpcionInvitados('Menos de 30', Invitados.menostreinta),
                             OpcionInvitados('De 30 a 50', Invitados.treintacincuenta),
                             OpcionInvitados('De 50 a 70', Invitados.cinquentasetenta),
                             OpcionInvitados('De 70 a 90', Invitados.setentanoventa),



                           ],
                         ),
                       ),
                       Expanded(
                         child: Column(
                           children:  [

                             OpcionInvitados('De 90 a 120', Invitados.noventacientoveinte),
                             OpcionInvitados('De 120 a 150', Invitados.cientoveinteacincuenta),
                             OpcionInvitados('Más de 150', Invitados.mascientocincuenta),

                           ],
                         ),
                       ),


                     ],
                   ),
                 ),

                 SizedBox(
                   height: 50,
                 ),


                 Text('¿Cuál es el estilo del evento?', style: TextStyle( fontSize: 12.0)),
                 Expanded(
                   child: Row(
                     children: [
                       Expanded(
                         child: Column(
                           children:  [
                             OpcionEstilos('Estándar/ Común', Estilos.Estandar),
                             OpcionEstilos('Sencillo/ Básico', Estilos.Sencillo),
                             OpcionEstilos('Lujo/ Premium', Estilos.Lujo),
                           ],
                         ),
                       ),



                     ],
                   ),
                 ),

                 Text('¿Cuál es la duración aproximada del evento?', style: TextStyle( fontSize: 12.0)),
                 Expanded(
                   child: Row(
                     children: [
                       Expanded(
                         child: Column(
                           children:  [
                             OpcionDuracion('1 hora',   Duracion.unah),
                             OpcionDuracion('2 horas',   Duracion.dosh),
                             OpcionDuracion('3 horas',   Duracion.tresh),
                             OpcionDuracion('4 horas',   Duracion.cuatroh),


                           ],
                         ),
                       ),
                       Expanded(
                         child: Column(
                           children:  [

                             OpcionDuracion('Más de 4 horas',   Duracion.masdecuatroh),

                           ],
                         ),
                       ),

                     ],
                   ),
                 ),

                 Container(
                   width: 275,
                   child: DateTimeFormField(

                     decoration: const InputDecoration(
                       hintStyle: TextStyle(color: Colors.black45),
                       fillColor: Colors.white,
                       errorStyle: TextStyle(color: Colors.redAccent),
                       border: OutlineInputBorder(),
                       suffixIcon: Icon(Icons.event_note),
                       labelText: 'Cuál es la fecha y hora del evento?',
                     ),
                     mode: DateTimeFieldPickerMode.dateAndTime,
                     autovalidateMode: AutovalidateMode.always,
                     validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                     onDateSelected: (DateTime value) {
                       print(value);
                     },
                   ),
                 ),

                 SizedBox(
                   height: 70,
                 ),

                 Container(
                   height: 30,
                     child: Text('¿Tienes más de 18 años?', style: TextStyle( fontSize: 12.0))),
                 Expanded(
                   child: Row(
                     children: [
                       Expanded(
                         child: Column(
                           children:  [
                             OpcionMayorDeEdad('Sí', MayorDeEdad.si),
                             OpcionMayorDeEdad('No', MayorDeEdad.no),
                           ],
                         ),
                       ),



                     ],
                   ),
                 ),
                 Text('Información adicional', style: TextStyle( fontSize: 12.0)),
                 SizedBox(
                   height: 20,
                 ),
                 Container(
                    width: 275,
                   child: TextField(
                     style: TextStyle( fontSize: 9.0),
                     maxLines: 5,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: "Describe lo que necesitas",
                       fillColor: Colors.white,
                       filled: true,

                     ),
                   ),
                 ),


               ],
             )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350]
              ),
            )
          ]

    ),
      )
    );
  }
}






