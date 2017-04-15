# Stress Test shell script
Breve script automatizzato per lanciare uno stress test su varie componenti hardware.

***
### **Menu**
+ [Requisiti](#requisiti)
+ [Istruzioni](#istruzioni)
+ [Precauzioni](#precauzioni)
+ [Consigli](#consigli)
+ [Scarico responsabilità](#scarico-responsabilita)
+ [About](#about)
***


## Requisiti
  1. Calcolatore con ubuntu, debian o derivati.
  2. Connessione internet (solo per l'installazione dei tool richiesti).
  3. Da un paio di minuti a qualche ora di tempo.

## Istruzioni
  #### Installazione
  Non è necessario installare nessun software, se necessario provvederà ad installarlo automaticamente.
  #### Uso
  1. Scaricare il file **stresstest.sh**.
  2. Aprire una shell.
  3. Recarsi nella cartella contenente il file appena scaricato (usando il comando **cd**, esempio: *cd /home/Gabriele/Scaricati*).
  4. Digitare **sudo -i** per acquisire i privilegi di amministratore.
  5. Digitare **sh stresstest.sh** per lanciare lo script.
  6. Seguire la proceduta guidata fornita dallo script.
  7. Monitorare lo stato del calcolatore (surriscaldamenti, freeze dello schermo, ecc.) .
  8. Se il computer non si riavvia, blocca, presenta errori, ecc, allora il test è andato a buon fine.

## Precauzioni
* **NON** lasciare **mai** il calcolatore sotto stress senza supervisione per un lungo periodo.
* **NON** posizionare oggetti in corrispodenza delle prese di ventilazione della macchina.
* **NON** provare ad utilizzare il calcolatore **durante** il test.
* Posizionare la macchina in un luogo **ben areato** e **lontano** da altre fonti di calore e/o materiali facilmente infiammabili.

## Consigli
Consiglio di monitorare le temperature della macchina (se possibile). Inoltre controllare manualmente che non ci siano rumori strani, scintillii o fumo.


## Scarico responsabilita
**Non mi assumo alcuna responsabilità su eventuali danni arrecati a cose o persone, causati dall'utilizzo di questo script.**
*Per altre informazioni è possibile leggere la licenza con cui viene rilasciato questo software.*

## About
  Questo script è stato realizzato per il [*Supporto IT*](http://linux.studenti.polito.it/wp) del [*Politecnico di Torino*](http://www.polito.it). Nasce con lo scopo di guidare, e quindi facilitare,  uno stress test delle componenti hw di un calcolatore.
  ***© Gabriele Russo 2017***
