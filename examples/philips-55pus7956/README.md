# Philips 55PUS7956/12 — variante personale

Lista derivata da [`../philips-50pud7406/`](../philips-50pud7406/), che copre la stessa scheda
(PH0M_EA_T32). In quella lista sono documentati un 65PUS7956 e un 55PUS7906/12.
**Questa variante non è ancora stata applicata su questo televisore.**

## Cosa cambia rispetto alla lista di partenza

| Componente | Lista di partenza | Questa variante |
|---|---|---|
| Ambilight (`org.droidtv.ambisvc`) | non toccato | non toccato |
| Screensaver Google (`com.google.android.backdrop`) | disattivato | **mantenuto** |
| Chromecast (`com.google.android.apps.mediashell`) | disattivato | **mantenuto** |
| Netflix, Prime Video | disattivati | **mantenuti** |
| HBO Max, Crunchyroll, YouTube, RaiPlay, Witty TV | non in lista | mantenuti |

## Prima di applicarla

1. Verifica la piattaforma: `ro.product.device` deve essere `PH0M_EA_T32`. Il firmware deve
   essere `TPM215E` su Android 11. Il televisore è uscito con Android 10, e la lista di partenza
   è testata solo su Android 11 e 14.
2. Controlla i nomi esatti dei pacchetti delle app da mantenere con `adb shell pm list packages`.
3. Applica la lista a piccoli gruppi e prova il televisore tra un gruppo e l'altro: telecomando,
   sorgenti HDMI, canali, Ambilight, cast dal telefono.

## Dopo

- Spegni il debug USB e quello di rete, revoca le autorizzazioni e riavvia.
- Dopo un riavvio completo il televisore si apre sulla TV in diretta: è un comportamento del firmware.
- Per annullare: `TV_HOST=<ip> tools/restore.sh examples/philips-55pus7956/debloat.txt`
