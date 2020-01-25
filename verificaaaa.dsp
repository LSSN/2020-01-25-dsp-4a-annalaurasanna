// Crea un file di faust in cui esponi, in forma di commento, i principi della sintesi sottrattiva. realizza un esemoio attraverso un filtraggio passa banda.
// la sintesi sottrattiva è un modello di sintesi usata nella musica elettronica, dove una sorgente sonora viene filtrata sul piano 'spettrale', da essa si sottraggono le bande di frequenza. il principio su cui si basa questa sintesi è quello di un oscillatore che genera delle forme d'onda che abbiano già una propria conformazione armonica, come un onda quadra. tramite un filtro vengono selezionate solo alcune componeneti dell'onda, mentre le altre vengono escluse. per realizzare la sintesi sottrattiva digitale, occorre, proggettare la funzione di trasferimento del filtro che moltiplicata per la funzione in ingresso darà come risultato la forma d'onda filtrata.
//I numeri che identificano lo slider sono il valore iniziale, valore minimo, valore massimo e step incrementale; 
//Step incrementale è la precisione di passaggio da uno spettro all'altro;
//Il valore iniziale è il valore che deve assumere il controllo quando si aziona il programma;
//Il valore iniziale può essere solo tra il valore minimo e il valore massimo.
//lo slider può essere verticale e orizzontale, per cambiarlo da verticale (vslider) orizzontale (oslider)
//Per mettere un filtro dopo no.noise (no.noise :fi)
//il rumore è un suono che non ha ampiezza e non trasmette informazioni
//no.noise è un generatore causale di numeri tra -1 e 1 
//lo spettroscopio ci mostra il contenuto del suono nel dominio della frequenza  sull'asse delle 'x' le frequenze sull'asse delle 'y' l'ampiezza
//l'oscilloscopio ci mostra il contenuto del suono nel dominio del tempo. sull'asse delle 'x' abbiamo il tempo e sull'asse delle 'y' abbiamo le ampiezze
//lowpass è un filtro che significa 'passa basso', è quello tra i più semplici
//6000 in questo caso indica il punto di taglio, dove la frequenza inizia a diminuire
// il filtro highpass 
// dato un punto di taglio il filtro di primo ordine attenua 6 dB per ottava
//la velocità di un filtro è chiamato ordine
//la frequenza di taglio si chiama cut off
import("stdfaust.lib") ;
gain= vslider("gain",0,0,1,0.1) ;
process = no.noise : fi.lowpass(4,6000) : fi.highpass(4,6000); 
