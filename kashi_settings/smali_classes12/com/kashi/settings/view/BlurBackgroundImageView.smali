.class public Lcom/kashi/settings/view/BlurBackgroundImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static ALPHA:I = 0x5f

.field private static final DEBUG:Z = true

.field static DIVIDE:F

.field static RADIUS:I

.field private static final TAG:Ljava/lang/String;

.field private static final short:[S

.field static wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 52

    const v0, 0x15b

    new-array v0, v0, [S

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->short:[S

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v17

    const v20, 0x1abc5f

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ç̸̷̴̷̧̛̛̙͉͎̯͈̫̯̗͚̙̮͕̯̗̠̮͎̗͉̖̰͚͉͒̅̏͗̂̋̃̈́́̃͗͋̅͌̋̃͌̾͌̋͗̃̎̿̌͋͒̈́̄́̀̌̀̆͒͗̚͘̚͜͝͝͝͝eļ͕̼o̸̡̮̗̙̼̜͚̍̀̃̑̂̈̇̋̈̋͜͜P͆p̤̫͓͕̮͗̈́͋̎͝͝ù̶̷̸̶̫͓̖̻̲̍́͑͋͗͐͂́̌͘t̷̶͕̻̫͇̩̱̺͙͈̑͋̏̃͝͝u̷̵̧̼̖̱̪̹̠̫̗̘̩̺͚̯̯͋̋͗̿̀̐̋̑̈́͌̈͋̐̆̅̄͊̏͐͘͘͘͝͝ā̷̧̖͚̤͚̱̫̥̾̎͂̂̈̃̒̈̽̌̉͝͝͝c͌͆͜͝u̵̧̧̙̭̬͈͎̫̥̻̗̅͌͐͑̋̀̾́̌͗̌͐̄̂̄͊͘͜a̷̧̰͙̱̻̬͉̦͉͖̱̥̩͊͌̃̃̌̋́̏̈́̾̿̕͜͜͝u̎K͊ţ̵̻̋̈̈̚()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v16

    xor-int v20, v20, v16

    const v18, 0x1ab340

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->Ķ͚͕̞͓̀̐̋͌́̚͠o̷̸̴̴̶̢̢̢̫̭̺̝͖͉̫̫̹͎͚̲͈̻̯̘̭͇̰͉͎̱̮̮̱̻̱͆̅͌̀̄̃͊͂̈̿̉̎̈́͋̏̅̎̂̂̋̈́͊͌̌̿̈́̑̅̋̔̿̎̐̑̚͘͜͠͠͠͝͝K̶̸̮̪̦̤̼̰̱̟̰̫̩̠̋̾̆̂͊̂̌͑́̂́̓̆̈͌̂͗͘̚͜ͅͅĶ̸̸̱͉̺̘̲̀̿͌̐̃̑̑͌̈́̏̚pK̸̷̴̢̧̧͕̗͈͈̘̮͉̦̻̺̅̑̔̎̀͝t͙̩B̸̴̴̵̡̛̛̞̮͎͓͚̝̥̯̭͎͚̺̻̙̼̜̱̫͓͉̻͓̫̈͑̄̄̋̄͗͊̎̾̃̋͑̐̈̄̏͂̅̌̈́͑̀͋̑̌͌̕̚͘͘͜͜͜͝͝ǫ̸̸̬͈̲͉̖̦͇̃̒͌͂̂͐͘͜ǒ̷̶̧̟̝̯̞̯͎͊̕͝ȩ̴̨̘͉͉̫̖͎̪͚̮̦͎̩̖̪̏̃̌͌̈́͌͠()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v16

    xor-int v18, v18, v16

    const v19, 0x1ac1d1

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->K̆ç̴̨̧̫͈̦̮̺̺̩͋̎͌̅͐̾͗͘a̸̴̷̮̯̫͌̾̃͘͝ư̧̲͗̐̈́͝ḛ̶̶̶̴̡̛̛̭͙͎̹̠̠̔̂̄̎̈͊̑̋́̆̈́̂̌͌͌̏̚̚͜ê̸̢̧̺̌̌p̞͈̰͕̹̮̩͉̞͈͕͑̾͌̃̿͜͜͜͝͝ę̶̴̷̷̛̩̹̼̙͈̜̲͈͈̋̑̽̈́̈́̌̇͐̐̀̈̌̌͘̕͝͠c̸̛̙͓̼̬̃͂̌͜͠B̛̖͉̹͚̰̹̀̓̂̿͗̍̚͜c̞K̶̶͒l̸̡̛̗̰̭̞̈͗̿̃̾̎̂̅͗͘̚P̨Kả̶̴͚̭̌̄̓̂̈́͐͘͜͜͝͝ä̸̧͚̌̄̈́̑K̷̡̢̺̩͈͖̙̫͈̘̺͎͚͙͚̥͉̗̗̪̅̈́̎̐̈̈̃̋̒̈̂͌̉̚͘͘͝͝ͅe̵̶̵̫͎̥̲͚̩̭͊̈́͗͋͊́͆̏̎̂͘͘͜n̗̹̪͕̑̃̎͌͘a̅̑̂()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v16

    xor-int v19, v19, v16

    invoke-static/range {v17 .. v20}, Lcom/kashi/settings/view/BlurBackgroundImageView;->a̸̢̨̢̝̮͚̙͙͎͌͐͌̀̑̓̃̋͜͝a̛̱̯̭̱͉̻̎́̅͌o̗̙̘̮̩̫̫͒̾͋͜͜p͓̘̗̠̘͈̥͕̯̾̃̋̋͜a̰͜ų̛̯̤͓̉̐̈́̀͘̕͘͜͜ớ̛̹K̨͎̫̹͓̺͕͚͚͚̫̲̯̙̰̈́̿̎̔̂͊̃͑̈̕͜ͅa̷̸̶͎̺̘̘͎͋̆̊̃̃̅K̷̸̢̛̖̫͈̙̹̫̪̭̤̥͚̱͉͎̗͈̪͉̦̺̩̫̈́̈̉̈̋͌̃̐̈̽̾̑͆͂̂̓̌͗̿̌̚̚͜͝͝͠͠͝͠oK͚̈́̅c̺̔ǎ̝̖͐ò̸̸̠͓̹̠̈͒͂̾̆͝͝ĥ̷̴̨̖̥̩̱̫̖̞̩̘̖̱͙̫̭͓͊́̄̔͗̂͌͗͗̚͜͝͝K̢̮̯̘̹̂̈́́̎͊͂͜͝͠l̶̢̢̢̛̝͎̥̭̬͚̇̀̃̋͌͘̕Ķ̛̙̺̘̭̭̘͎̇̎̏̍͋̐̕͜͝͝͠P(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    sput-object v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    sput v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->RADIUS:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->DIVIDE:F

    const/16 v0, 0x0

    sput v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->ALPHA:I

    const/4 v0, 0x0

    sput-object v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->wallpaperManager:Landroid/app/WallpaperManager;

    return-void

    nop

    :array_4e
    .array-data 2
        0x6bfs
        0x691s
        0x688s
        0x68fs
        0x6bfs
        0x69cs
        0x69es
        0x696s
        0x69as
        0x68fs
        0x692s
        0x688s
        0x693s
        0x699s
        0x6b4s
        0x690s
        0x69cs
        0x69as
        0x698s
        0x6abs
        0x694s
        0x698s
        0x68as
        0xa43s
        0xa55s
        0xa44s
        0xa44s
        0xa59s
        0xa5es
        0xa57s
        0xa43s
        0xa6fs
        0xa52s
        0xa5cs
        0xa45s
        0xa42s
        0xa6fs
        0xa52s
        0xa57s
        0xa6fs
        0xa46s
        0xa59s
        0xa43s
        0xa59s
        0xa52s
        0xa5cs
        0xa55s
        0xa6fs
        0xa43s
        0xa44s
        0xa51s
        0xa44s
        0xa55s
        0xb2ds
        0xb34s
        0xb25s
        0x8a2s
        0x43as
        0x68fs
        0x696s
        0x687s
        0x8bds
        0xa4es
        0x9d1s
        0x9ffs
        0x9e6s
        0x9e1s
        0x9d1s
        0x9f2s
        0x9f0s
        0x9f8s
        0x9f4s
        0x9e1s
        0x9fcs
        0x9e6s
        0x9fds
        0x9f7s
        0x9das
        0x9fes
        0x9f2s
        0x9f4s
        0x9f6s
        0x9c5s
        0x9fas
        0x9f6s
        0x9e4s
        0x81ds
        0x831s
        0x816s
        0x804s
        0x803s
        0x815s
        0x81bs
        0x802s
        0x805s
        0x857s
        0x803s
        0x816s
        0x81cs
        0x812s
        0x857s
        0xcabs
        0xce6s
        0xce2s
        0xce7s
        0xce7s
        0xce2s
        0xcf8s
        0xcabs
        0xcf8s
        0xcees
        0xce8s
        0xca5s
        0xb1bs
        0xb0ds
        0xb1cs
        0xb1cs
        0xb01s
        0xb06s
        0xb0fs
        0xb1bs
        0xb37s
        0xb0as
        0xb04s
        0xb1ds
        0xb1as
        0xb37s
        0xb0as
        0xb0fs
        0xb37s
        0xb1es
        0xb01s
        0xb1bs
        0xb01s
        0xb0as
        0xb04s
        0xb0ds
        0xb37s
        0xb1bs
        0xb1cs
        0xb09s
        0xb1cs
        0xb0ds
        0xbbas
        0xbacs
        0xbbds
        0xbbds
        0xba0s
        0xba7s
        0xbaes
        0xbbas
        0xb96s
        0xbabs
        0xba5s
        0xbbcs
        0xbbbs
        0xb96s
        0xbabs
        0xbaes
        0xb96s
        0xbbds
        0xba6s
        0xba8s
        0xbbas
        0xbbds
        0xb96s
        0xbbas
        0xba1s
        0xba6s
        0xbbes
        0xba7s
        0x8a8s
        0x8abs
        0x8c5s
        0x897s
        0x89ds
        0x8abs
        0x8a6s
        0x88cs
        0x8a6s
        0x8abs
        0x8ads
        0x89bs
        0x8a5s
        0x892s
        0x897s
        0x89bs
        0x8ads
        0x8bbs
        0x888s
        0x894s
        0x89ds
        0x8ces
        0x8bas
        0x886s
        0x89ds
        0x8bbs
        0x897s
        0x884s
        0x898s
        0x896s
        0x8b9s
        0x8c1s
        0x12ds
        0x103s
        0x11as
        0x11ds
        0x12ds
        0x10es
        0x10cs
        0x104s
        0x108s
        0x11ds
        0x100s
        0x11as
        0x101s
        0x10bs
        0x126s
        0x102s
        0x10es
        0x108s
        0x10as
        0x139s
        0x106s
        0x10as
        0x118s
        0xc59s
        0xc4fs
        0xc5es
        0xc68s
        0xc46s
        0xc5fs
        0xc58s
        0xc63s
        0xc47s
        0xc4bs
        0xc4ds
        0xc4fs
        0xc68s
        0xc43s
        0xc5es
        0xc47s
        0xc4bs
        0xc5as
        0xc0as
        0xc5es
        0xc4bs
        0xc41s
        0xc4fs
        0xc0as
        0x8a2s
        0x8efs
        0x8ebs
        0x8ees
        0x8ees
        0x8ebs
        0x8f1s
        0x8a2s
        0x8f1s
        0x8e7s
        0x8e1s
        0x8acs
        0xaf2s
        0xadcs
        0xac5s
        0xac2s
        0xaf2s
        0xad1s
        0xad3s
        0xadbs
        0xad7s
        0xac2s
        0xadfs
        0xac5s
        0xades
        0xad4s
        0xaf9s
        0xadds
        0xad1s
        0xad7s
        0xad5s
        0xae6s
        0xad9s
        0xad5s
        0xac7s
        0x12as
        0x13cs
        0x12ds
        0x11bs
        0x135s
        0x12cs
        0x12bs
        0x110s
        0x134s
        0x138s
        0x13es
        0x13cs
        0x11ds
        0x12bs
        0x138s
        0x12es
        0x138s
        0x13bs
        0x135s
        0x13cs
        0x400s
        0x42es
        0x437s
        0x430s
        0x400s
        0x423s
        0x421s
        0x429s
        0x425s
        0x430s
        0x42ds
        0x437s
        0x42cs
        0x426s
        0x40bs
        0x42fs
        0x423s
        0x425s
        0x427s
        0x414s
        0x42bs
        0x427s
        0x435s
        0x489s
        0x49fs
        0x48es
        0x4ads
        0x49bs
        0x496s
        0x496s
        0x48as
        0x49bs
        0x48as
        0x49fs
        0x488s
        0x4bbs
        0x489s
        0x4b3s
        0x497s
        0x49bs
        0x49ds
        0x49fs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 53

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->kä̴̷̷̧̛̟͕͚͉̦̤̯̯͈͉̜̯̲̰̭̜̺̮̩̼͌̃̃̋͂͗͊̑̌̐̑̽̈͗̎͗̈͋͗͊̌͐̚͘͘͜͝a̶̲̋͌l̢̨̤̈Ǩ̴̴̫͈̫̹̋̑̎̂͝o̶̴̢̞̹̘͎̜͊̃͗̊͌͗t̷̶̴̛̛̺̫͕̗̰̟̦̹̯̲̠͈̂͂̍̾̿̍͌͝͠ę̸̛̲̠̙̹̩͌̋̅̂̿̒̀͐͜K̷̰̭̿̑̈̌͜͝h̑̑p̑̓h̟̀̂á̶̗̼͊p̸̶̨͙̫̞̻̫̩͚̥͈̺͕͗̂̋̀͐̑̅͝͝͠ųn̶̸̸̡̗̯͓̘͚̰̘̱̙̺͗̓̈̋K̸̢͉̖͓͆͋̑̂͑̾̋͗̚o̲̙͂̈͠p̸̴̦̱͎̲̻̞̦͎̺̙͓̭̘̻̌͋̋̂̌̄͊̃̈́̈́͒͐̋̾̈́̚͝͠ṋ̵̥̋̎̈͗͑͜n̷̷̰̭͙͑̄̑͑͝a̸̷̛̤͗̎͜B̧͚̩̃(Ljava/lang/Object;)V

    invoke-static {v0, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->P̷͓̲̭͗̐͌͝Ḵ̵̡̧̧͚͉̼̯͌̌̔̚͘̚͝u̷̢̦͙̺̫͕̮̗̹̙̖͂̃̿̂͂͌͗͌̋̌͌̇͘͘̚̚͜͠͝u̷̵̧͚̹̫̮̹͒̿͘͜ḧ̶̺̦̘͚̘̤̘̃̒́p͈͈̒͝K̷̴̫̦̞̙̺̺͋̈͗̅̿̎̈͝͝͠K̸͓̿̆͜͝͠u̶̘͈̞̫̅͗͌͘͜͜Ḱ̶̯͓̱͝ṷ̡̹̗̥̂̅͋́̃k̨͚̯͉͈̱͎͕͚͈̑̂͂̃̑̋̑̎̆͗ȩ̞͎̙͒̈̚n̠̥̒̒̅͜e̶̛̖̞Ķ̴̧̢̲̙̥͉̯̮̯͓̰̜̭͓̺͈̈́̂͋͐̓̆͌̌́͌̎͋̊̀͌͒͐͜͜͠ͅa̴̢͈̠̮̹̫̎̾͋̍̃̉̑͝ǎ̴̘̺̂̑a̶̺̖͓ą̸̵̛̼̫̦̹͙̱͓̻̫̥͙̝̗̃̂̂̈́͑̍̈́͗̈̑̈́̈́̚B̠ö̴̢̢̭̹͒̋̋͠͝(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 58

    move-object/from16 v6, p2

    move-object/from16 v5, p1

    move-object/from16 v4, p0

    invoke-direct {v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v4}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->kä̴̷̷̧̛̟͕͚͉̦̤̯̯͈͉̜̯̲̰̭̜̺̮̩̼͌̃̃̋͂͗͊̑̌̐̑̽̈͗̎͗̈͋͗͊̌͐̚͘͘͜͝a̶̲̋͌l̢̨̤̈Ǩ̴̴̫͈̫̹̋̑̎̂͝o̶̴̢̞̹̘͎̜͊̃͗̊͌͗t̷̶̴̛̛̺̫͕̗̰̟̦̹̯̲̠͈̂͂̍̾̿̍͌͝͠ę̸̛̲̠̙̹̩͌̋̅̂̿̒̀͐͜K̷̰̭̿̑̈̌͜͝h̑̑p̑̓h̟̀̂á̶̗̼͊p̸̶̨͙̫̞̻̫̩͚̥͈̺͕͗̂̋̀͐̑̅͝͝͠ųn̶̸̸̡̗̯͓̘͚̰̘̱̙̺͗̓̈̋K̸̢͉̖͓͆͋̑̂͑̾̋͗̚o̲̙͂̈͠p̸̴̦̱͎̲̻̞̦͎̺̙͓̭̘̻̌͋̋̂̌̄͊̃̈́̈́͒͐̋̾̈́̚͝͠ṋ̵̥̋̎̈͗͑͜n̷̷̰̭͙͑̄̑͑͝a̸̷̛̤͗̎͜B̧͚̩̃(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ľ̯̗Bp̸̸̶̛̛̛͓͕͈͙͖̯̱͎͇̯̗̦͇̫̌͗̑̈̾̌̆͝͝ͅê̦̺̫̮͎̘̏͘a̸̢̢̧͎̰̘̫̿̏̾̂͘ķ̶̴̷͓̘̥̺̯̼̫͈͈͎͒͌͑̂̿͌͗̈́̇̅̋̒͗̒͘K̨̛͈̱͓̭̗̮͕̑͑̾͗͗͘͘̚͝a̴̧̫̘̫̺̤͈̗̿͌̂̈́͝͝p̷̢͎̂͐̈́̍ẖl̞͚͕̙̪͕̯̂̒̑̅̑ơ̶̷̢̛̘̺͈͙͕͒̃̈́̎̈̆͘̕͠B̵̢̦̭́̋̄̃K̶̸̸̵̴̡̛͓̜̹͎̤̯͉͈̬̫͉̞͈̪̪͋͌́̔̃̆̂̑͌̀̽͒̂͑̋͋̚͝͝p̷̯͖͈͎̗̑̃͌̂̽̌̕a̷̮̱̫̺͐͊̑̃͑̄͘t̢̫̗̯̹̟̃͌̂̿̂͘͝ä́̎a̯̲̭̎͜͜͠B̴̧̧͖̱͙̙̦̻͈̥͚͇̂̔̎̀͂̆̃̂̀͌͑̿͂͝ͅ(Ljava/lang/Object;)Landroid/app/WallpaperManager;

    move-result-object v0

    sput-object v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ḩ̷̵̴̩̲̝̺̗̠̃͌͘͠c̷̺̫̦̠̈͝c̺h͒̑B̯͓̗͆̂̎̋h̵̸̡̹͕̭̟͉̤̎̒́͐͐̂̄͝à̭̲̯͎͉͝c̲̗͆̂̃̈͝a̸̶̴̸̢̢̢̘̫͎̗̖̥̥͕̻̻̭̹̋̋͌̓̄̃̎̂̍̈̈́̈́̌̎̿̈́̓̕̚͘͜͜͠͠͠a̸̙u̸̫̩̞͌̿͂̈͜c͉̘͈̀͂̈́̂̋̃̈́͘ơ̧̤͓̜̯͓̥̱͓̌͌̈̃̿̈͜͠k̨̯̖͋́͘à͉̫̋̾͜Ba̸̵̧̛̫̗̠̙͚͂̃̅̈̕͘͝ç̵̵̴̷̸̷̴͓͇̙̗̫̹̹̱̜͚͈͙͚̫͊̋̈̊̂͐͌̅̔̅͋̃̋̾̐̔̋̔͐̂̃̈͊͘͠͝͝͠ą̸̷̵̵̶̵̢̛͎̱͖̹̫̠̺̦̹̬͕̺̥̾͋̅̋̎̎͌̋͋̌̌̂̌̀̅͑͗͌̈́͌̽̃͝͝͝͝ķ̸̙̱̫̑a()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ķ̘̬̪̯̱̄̑̈́͗͌̂ǫ̴̶̛̠̖̰̺̘̱̲͓̹̫̫͇̝̥͈̃̀̇̂̏̍̅̈̌̿͋͑̋͒͑͒͑̅͌̂͘͘͜͜͝͝ơ̛̯̦̮͚̈́̿ḩ̸̶̴̶͉͚̗̻͈̤̩̯͈̎̔̋̀̆͌̋͆̀o̸̷̧̠̦̼͈̎̒̂͊̂̍̑̅̇̾̔h͙̋͜c̷͙̹̺͉͈̫̫̫̲͈̙̭̘̘̭̤͌̿̂͌͌̈̀̿́͝n͝u̸̥̿̄ͅȇ̫o̸̵̵̧̡̧̢̨͙̭̫̙̱͎̘͋͆̌͋̈́̈͑́̌̈̈̌̎͜͜͝͝B̴̮̮͂o̫̺̥͌̚u̸̮̪͌̚e̸̶̷̸̢̡̧̪̗͓̟͙̫̺͎̖͚̦͕͉̱̯͗̅̇͂͗̋̈́̎̋͐̂̉͂͘̚͠͝͠p̸̵̧̲̰͚͚̫̘̪͂͌͌͋͠ṉ̸̸̸̡̙̜͕̮̗̲͚̩̌̾͊̄̎͌̉͋̋͗̌͋̄͐̈̚P̢͇̌͌̐̈͋̈(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ln̷̩͈͇̫͈̙̮͌͋͌̔͗̋̋̃̎͆k̸̴̛̫͈͎̹̗̪̭̭̮̮̼̇̿̈́̑̎̚͝͝ḧ̭̱Pk͙̥̦͉̪̯̗̀͋K͉̱̫̘̙̙̯̲̅̑̂͗̊̈́ͅà̶̰̯͙̈́͗̅c̢̙̾͐͑͌̌̑̀̍̑h̴̤̫̯͙͗̌K͈n͈͜ầ̵̸̸̴̸̸̷̛̘̹̫̦͙͚͕̦̰̫̫̮͌̿̂̎̅̋̃̋͌̌̈̑͋͘͝ḛ̷̛̫͚͎̱̈͂̋̌̑̿͌͌̿̄͘̚ö̸̷͚̘̪̭̙̘̮̫̮̰̗͙̰̜́̀̃̈̿̑̋́̈̽̍͋̋̅́͗̔́̆͘͜͝ͅḧ͓̥́̋͂̌͠ͅn̸̫͚̻̹̦͌̄͋̌p̧̟e̞͋͐̓̌͘͜͝ơ̶̸̷̧̢̧̢̰͈̘̦̹̪͉̻͎̪̥̬͌́͋͐̅͗̇̿͗̏͊͊̑͘͜͜͝ả̬̺͊͘p̢̢̺̭̭̫̫̺̈́̀͌̌p̹͓̯̈()I

    move-result v1

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->K̛̘͉̥͚̘̮̄̋̌̀͒̋̕c̯c̶̷̨͓̫̱͈̲͌̈́̑̀̇̏̂̿̎̌̿͘͜͠͠K̸̶̶̢͖̩̘̩̲̲̺̈́͌͋̎͌̋̈̚͝p̸̴̶̢̺̩̭̤͚̠̰̩̯͚̫͚̮̙͉̯̻̯̭̥͚͚͌͑͌̾̀͋̑̈́̃͌̏́̓͌̚͠a̠͓̠͑̌p̷̡̱͖͎͚̄̔̎̌̀̍͜͠oK̸̢̙͎̹͓̯̥̞̖̗͎̗͎̮̖͚͙̔͗͌̂͗̿́̔̚͘̚͝͠ǎ̵̂̎͝͝ȧ̜͗̑p̷̶̷̸̧̧̧̢̛̛̯̻̭͙̩͕͎̫̝̯̫͕̞͚͎̫̙̼̱̺͕͇̏͊̑̈́̄̌̾̂͌̃̎̀͋̍͌̑͐̒̃̀͌̓͜͝͝͝͠k͈͚̂͋̕͝o̷̶̧̩̫͎̺̺̭̼̠̫͚̱̤̺̘̹͎̠̥̫̘̎̂͊̌̌͌̄̐̌̐̋̿̑̋̄͒͊͐̈̌̈́̂̌͑͘͘͜͝͠ot̸͗̋̚e͚()F

    move-result v2

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->o̯̻lp̶̸̛̗̫̺̞̥͙͇͈̦̔̅̈́͋͗̎̋͐̔͠ờ̶̶̧̛̱̜̠̹̪̱̭̑͑̇͑̈̃̃͗̈͗̈́̌͝h̛̲̦̫͆̔͘̚ŏ̷̴̸̢͉̯̺̤͙͚̼̙̗͊̃͐͒̿̈͌͘͝n̸̗̒t̫͎̯̭̩̮͐̿͆͋̌̿͋̎̽͘̚p̷̵̧̭͚̱͉̩͎͗͒̂̃̃̅͋͘͜͝K̶̢͕̤͕̰͙̻̺̗͉̘͗̂̎͌͋͒̍͑u̶͎̭͉n͎a̷̴̸̧̢̛̛̛͚̯͓̗̫͚̱̭̘̙̯͚̐͒̐̈̏͊̿͘͘͝͝͝o͉͈͋̂̽͘͝ļ̷̛̥̆̈́̓̄̿̌̒̌̂͝ả̸̷̧̧̝͚͕̙̻̰̝̯̺̹̟̼͎̅̌͂̂̌͑̀͌͒́͋͂͜͜͝ơ̸̶̸̶̢̬͈̰͉̱̱̜̫͉̦̻̫̗̮̭̰̲̹͓̻̭̺̏̿͊́̅͒̈̅͗͋͊̽̑̐̈̿̂̇̈͘͘͜͝ͅ()I

    move-result v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->P̵͎̺̋a̶̴̶̘̹̗͙̞̦͇̹͗̅̋̑̃̏͒̂͋̌͗̚͜͜͠͝ā̢͈̫̚l̶̴̛̘͎̥͈̟̩̱̻̗̗̥͙͎̫͇̰̹͋̄͊̂̌̍͐̌͂̋̈̂͌́͘͜͝͝B͋̄oB̧̛̦̆̎̈́̾̐͝͝e̦̘͠o͉̮̖͓̥͎͙͗̏̑̈́͆̃́͂́͜͜͝l̴̘̯̗̙͂̂̚k̑̑͜ͅą̡̘̘̭̦̫̏̾̿͑͋̎͌̚Ka̴̢̙̝͎̰͒̇̃̀̈́ȁ̴̶̸̢̨̨̢͎̺̯̭̪̰͎̮̺̩͓̝͚̲̼̥̫̆̋̀̀̌͌̎̂̄̿̂͌̋̉̂̋̂̑̌͋n̛̮͆̋̅̈͆k̶̸̢̢͉͎̖̠̆̾p̧̦̦̎̈́̚ą̸̢̫̗̫̊͗̽͝K̸̵̨̧̰̜̠̥̜̥̱͈̙̯̘͈̘̥͎̿̅͗͗̏͌̂̎͌̌̈́̃p͖̗͙̄p̫̅K̛̪͎̮͈̯͋͊̄̃͊̋͜͝͝ͅ(Ljava/lang/Object;Ljava/lang/Object;IFI)V

    invoke-static {v4, v4}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->P̷͓̲̭͗̐͌͝Ḵ̵̡̧̧͚͉̼̯͌̌̔̚͘̚͝u̷̢̦͙̺̫͕̮̗̹̙̖͂̃̿̂͂͌͗͌̋̌͌̇͘͘̚̚͜͠͝u̷̵̧͚̹̫̮̹͒̿͘͜ḧ̶̺̦̘͚̘̤̘̃̒́p͈͈̒͝K̷̴̫̦̞̙̺̺͋̈͗̅̿̎̈͝͝͠K̸͓̿̆͜͝͠u̶̘͈̞̫̅͗͌͘͜͜Ḱ̶̯͓̱͝ṷ̡̹̗̥̂̅͋́̃k̨͚̯͉͈̱͎͕͚͈̑̂͂̃̑̋̑̎̆͗ȩ̞͎̙͒̈̚n̠̥̒̒̅͜e̶̛̖̞Ķ̴̧̢̲̙̥͉̯̮̯͓̰̜̭͓̺͈̈́̂͋͐̓̆͌̌́͌̎͋̊̀͌͒͐͜͜͠ͅa̴̢͈̠̮̹̫̎̾͋̍̃̉̑͝ǎ̴̘̺̂̑a̶̺̖͓ą̸̵̛̼̫̦̹͙̱͓̻̫̥͙̝̗̃̂̂̈́͑̍̈́͗̈̑̈́̈́̚B̠ö̴̢̢̭̹͒̋̋͠͝(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 55

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->kä̴̷̷̧̛̟͕͚͉̦̤̯̯͈͉̜̯̲̰̭̜̺̮̩̼͌̃̃̋͂͗͊̑̌̐̑̽̈͗̎͗̈͋͗͊̌͐̚͘͘͜͝a̶̲̋͌l̢̨̤̈Ǩ̴̴̫͈̫̹̋̑̎̂͝o̶̴̢̞̹̘͎̜͊̃͗̊͌͗t̷̶̴̛̛̺̫͕̗̰̟̦̹̯̲̠͈̂͂̍̾̿̍͌͝͠ę̸̛̲̠̙̹̩͌̋̅̂̿̒̀͐͜K̷̰̭̿̑̈̌͜͝h̑̑p̑̓h̟̀̂á̶̗̼͊p̸̶̨͙̫̞̻̫̩͚̥͈̺͕͗̂̋̀͐̑̅͝͝͠ųn̶̸̸̡̗̯͓̘͚̰̘̱̙̺͗̓̈̋K̸̢͉̖͓͆͋̑̂͑̾̋͗̚o̲̙͂̈͠p̸̴̦̱͎̲̻̞̦͎̺̙͓̭̘̻̌͋̋̂̌̄͊̃̈́̈́͒͐̋̾̈́̚͝͠ṋ̵̥̋̎̈͗͑͜n̷̷̰̭͙͑̄̑͑͝a̸̷̛̤͗̎͜B̧͚̩̃(Ljava/lang/Object;)V

    invoke-static {v0, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->P̷͓̲̭͗̐͌͝Ḵ̵̡̧̧͚͉̼̯͌̌̔̚͘̚͝u̷̢̦͙̺̫͕̮̗̹̙̖͂̃̿̂͂͌͗͌̋̌͌̇͘͘̚̚͜͠͝u̷̵̧͚̹̫̮̹͒̿͘͜ḧ̶̺̦̘͚̘̤̘̃̒́p͈͈̒͝K̷̴̫̦̞̙̺̺͋̈͗̅̿̎̈͝͝͠K̸͓̿̆͜͝͠u̶̘͈̞̫̅͗͌͘͜͜Ḱ̶̯͓̱͝ṷ̡̹̗̥̂̅͋́̃k̨͚̯͉͈̱͎͕͚͈̑̂͂̃̑̋̑̎̆͗ȩ̞͎̙͒̈̚n̠̥̒̒̅͜e̶̛̖̞Ķ̴̧̢̲̙̥͉̯̮̯͓̰̜̭͓̺͈̈́̂͋͐̓̆͌̌́͌̎͋̊̀͌͒͐͜͜͠ͅa̴̢͈̠̮̹̫̎̾͋̍̃̉̑͝ǎ̴̘̺̂̑a̶̺̖͓ą̸̵̛̼̫̦̹͙̱͓̻̫̥͙̝̗̃̂̂̈́͑̍̈́͗̈̑̈́̈́̚B̠ö̴̢̢̭̹͒̋̋͠͝(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static Ķ͚͕̞͓̀̐̋͌́̚͠o̷̸̴̴̶̢̢̢̫̭̺̝͖͉̫̫̹͎͚̲͈̻̯̘̭͇̰͉͎̱̮̮̱̻̱͆̅͌̀̄̃͊͂̈̿̉̎̈́͋̏̅̎̂̂̋̈́͊͌̌̿̈́̑̅̋̔̿̎̐̑̚͘͜͠͠͠͝͝K̶̸̮̪̦̤̼̰̱̟̰̫̩̠̋̾̆̂͊̂̌͑́̂́̓̆̈͌̂͗͘̚͜ͅͅĶ̸̸̱͉̺̘̲̀̿͌̐̃̑̑͌̈́̏̚pK̸̷̴̢̧̧͕̗͈͈̘̮͉̦̻̺̅̑̔̎̀͝t͙̩B̸̴̴̵̡̛̛̞̮͎͓͚̝̥̯̭͎͚̺̻̙̼̜̱̫͓͉̻͓̫̈͑̄̄̋̄͗͊̎̾̃̋͑̐̈̄̏͂̅̌̈́͑̀͋̑̌͌̕̚͘͘͜͜͜͝͝ǫ̸̸̬͈̲͉̖̦͇̃̒͌͂̂͐͘͜ǒ̷̶̧̟̝̯̞̯͎͊̕͝ȩ̴̨̘͉͉̫̖͎̪͚̮̦͎̩̖̪̏̃̌͌̈́͌͠(Ljava/lang/Object;III)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$2;->h̵̷̴̵̭̥̫͙̯̰̺̭̗̲͓͕͆̽̋̍͂͗̎͜͝͝ǎ̧̮͈̘̏̿͗̈́̈͊͜ã̛̠̪̫͓̤̺̭̫͚̞̙͌̂̚͜͜͝na̪͚͙̐̂̑̃̄͜uo̧̞̎ĉ̶̶̸̨̯̲͈̫̤̜̯̦͈̩̲͈̯̗͉̺͎̐̂͌̒̒̈̀̏̄̅̋̌͒̑̄̔̎̈́̑̅̈́̌͘̚̕͝͝ͅt̢͓̘͕͉̝̦̹̐̌c̃͗͐̿ç̷̢̧̹̫͈͈̫̭̭͂̉K̾ç̗̋̋k̡̫̎̋͝K̴͓̅̂ȯ̫̗́̿̆Ba̛̹̗͗̅͜K̅ǎ̸̴̴̶̶̧̼̦̝̱̟̺̯̥̫͖͕͓̪͌͐̋̑͑̈͋̀̎̌̑̂̑̌̃͗͗h̖̅͒̔o̲̬͘ķ̴̸̶̶̨̢̥͈̗̫̤͕̙̯̰͕͙̟̞̙̮͎̩̯͎̮̜͓̱͈̤̺̩͈̍̈́́͑̆͋̿͋͋̈́̈͆̌̅̈́͜͜͝͝͝ā͓̏́()I

    move-result v0

    if-gez v0, :cond_d

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->P̷̴̷̷̸̸̢̧̧̡͉̮̯͚͓͚̠̹̗̟̏͌̾͂̃̌̾͂̊̎̏̎͂͌̑̈̋͘͜͝͠͝ͅt̗ḁ̺̐̋̾̅̅̈́͘͜͜a̦o̗̗͘͝͝ḽ̢̫̙̮̫̫̠̲͓̍̋͊́̈̅̃͌͘p̸̷̷̷̧͚̲̭̠̦͎̹̫̅̍̈̂̃̅̌̋̂̌͘͜͝͠ȏ̦̹̎͜͠kl̴͌̀̌̊͊̚͝o̧̤̗̎̌ä̷͎̠̗̜̫́̋̏̂ė̫̲̘̚͝͝k̯̭̫̫̮̀̐̋̈́͝l̷̈́h̴̢̧̋̋̕͝K̴̸̸̷̵̸̶̸̢̢͓͉̼̪͈̫̬̤̗̬͉͕͖̪̼̗̻̱̦̪̜͈̹̫͌͌̎͒͗͌̂̄͑̿̈́͐̎͒́͗̎̇̐̅̈́̐̂̋̈́̿͗͆͗̅͋̋̑̕͘͘͜͠͠͝͠͝͝͝͝ͅa̡̗̬̥̺̠͌̈̎̈̄͘͘͝͝ą̸̸̧͚̪̜̱͚͉̫͓̀̾̀̑͌̂͌̃̽͝͠͝([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static K̛̘͉̥͚̘̮̄̋̌̀͒̋̕c̯c̶̷̨͓̫̱͈̲͌̈́̑̀̇̏̂̿̎̌̿͘͜͠͠K̸̶̶̢͖̩̘̩̲̲̺̈́͌͋̎͌̋̈̚͝p̸̴̶̢̺̩̭̤͚̠̰̩̯͚̫͚̮̙͉̯̻̯̭̥͚͚͌͑͌̾̀͋̑̈́̃͌̏́̓͌̚͠a̠͓̠͑̌p̷̡̱͖͎͚̄̔̎̌̀̍͜͠oK̸̢̙͎̹͓̯̥̞̖̗͎̗͎̮̖͚͙̔͗͌̂͗̿́̔̚͘̚͝͠ǎ̵̂̎͝͝ȧ̜͗̑p̷̶̷̸̧̧̧̢̛̛̯̻̭͙̩͕͎̫̝̯̫͕̞͚͎̫̙̼̱̺͕͇̏͊̑̈́̄̌̾̂͌̃̎̀͋̍͌̑͐̒̃̀͌̓͜͝͝͝͠k͈͚̂͋̕͝o̷̶̧̩̫͎̺̺̭̼̠̫͚̱̤̺̘̹͎̠̥̫̘̎̂͊̌̌͌̄̐̌̐̋̿̑̋̄͒͊͐̈̌̈́̂̌͑͘͘͜͝͠ot̸͗̋̚e͚()F
    .registers 1

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ḻ͚̦̾c̯̯̗͌̀̅̈͘͝͝͝na̵̴̱̺͕͗̕ť̸̸̵̨̢̛͕͕̙̪̘̫̯͈͚̰̺̅̋̾͘P̷̢̭̈ů̷̴̶̺͉̫̹̩̘̻̅̌͋̋̔͑̔̊̋̾̒̽͌̕ͅa̸̱̦̙̍̌̎͘u̢̾c͎͈̆̀͌K̸̨̫̱̘̍͌͐ư̸̸̲̭̹̘̽̎̈̾̚ù̵̴͓̿̋̋͋ớ̷̢̧̛̛̫̝̫̭̟̯̩̫͎̞̩̫͙͈̈͋̒̆̅͗̂̈́̈͋͋͋̎̕͘͜͜͜ȩ̸͇̥̦̹͋̃̈́̋̋̓̄̚͘͝oe̫̫̍́͑̃͝͠ę͉̅ä̙ȃ̴̷̲̋̈͋ǔ̸̸̸̫̥͓͈͗͌͝ͅP̵̺̩̯̬̌ḧ̷̡̛̩̭͓͎̱̺̲̺̹̋͒̋̃̍̑̈́̆̚̕̚a̱̯͓̯͑̑̋́́͆͌̚͜p̶͓̈́a̫͓͐͜ų̸̰̮̮̏̍̃̑͌͊͗̿͂͐͋͂͝p()I

    move-result v0

    if-gtz v0, :cond_9

    sget v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->DIVIDE:F

    :goto_8
    return v0

    :cond_9
    const v0, 0x0

    goto :goto_8
.end method

.method public static ã̶̧̧̡̠̺̱͚̮̀̃̔͝a̶̷̸̖̫͙̲̠̾͗Ḃ̶̫͈̈͠h̴̷͂̃ô̭̯͉͌͋͌̇̿̋͜͜͠͝a̷K̸̨̨͖͉̭̺̼͈̱̏̈́̌̿̐̉͑̾̏͌̚K̵͚̻̘͓͙̏͐͂͘ç̢̛͈̥̻̖̫͉̜̄́̄̄̈ä̷̧͎̰͈̰̩̥̱̭̘̻͋̈Kő̵͚͉̈́̈́h̶̴̸̴̷̸̸̵̠̫̭̮̫͇̻̫̼̺͚̩̰̯̮͚̭̫̫̦͌̂͆͆̌̌͂͌̌̈́̂͋̔̔̌͌̊̂̈́̈́̌͐̕͜͜͝K͕͓̋ķ̯̺͊̆͌͑̎͘̚͝a̸͇̭̭͈͋͗̾͗̃̏͘p̵̘̭̻̯̈̏̿̐̊̅̕͝ä̢̭̜̫͈̠́̂͋͌͌̒͗͋̾a̶̷̛͎̼̜͉̔̈̈͝e͙̩͎̿̌́̓͑͜P̫̎͋͠p̧̗͓̰͖͋̐̒̐̃͑̅̈́̀͘͝͝á̒o̵̶̥͚͐͗͘͠͠(Ljava/lang/Object;III)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ḻ͚̦̾c̯̯̗͌̀̅̈͘͝͝͝na̵̴̱̺͕͗̕ť̸̸̵̨̢̛͕͕̙̪̘̫̯͈͚̰̺̅̋̾͘P̷̢̭̈ů̷̴̶̺͉̫̹̩̘̻̅̌͋̋̔͑̔̊̋̾̒̽͌̕ͅa̸̱̦̙̍̌̎͘u̢̾c͎͈̆̀͌K̸̨̫̱̘̍͌͐ư̸̸̲̭̹̘̽̎̈̾̚ù̵̴͓̿̋̋͋ớ̷̢̧̛̛̫̝̫̭̟̯̩̫͎̞̩̫͙͈̈͋̒̆̅͗̂̈́̈͋͋͋̎̕͘͜͜͜ȩ̸͇̥̦̹͋̃̈́̋̋̓̄̚͘͝oe̫̫̍́͑̃͝͠ę͉̅ä̙ȃ̴̷̲̋̈͋ǔ̸̸̸̫̥͓͈͗͌͝ͅP̵̺̩̯̬̌ḧ̷̡̛̩̭͓͎̱̺̲̺̹̋͒̋̃̍̑̈́̆̚̕̚a̱̯͓̯͑̑̋́́͆͌̚͜p̶͓̈́a̫͓͐͜ų̸̰̮̮̏̍̃̑͌͊͗̿͂͐͋͂͝p()I

    move-result v0

    if-gtz v0, :cond_d

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->nK̸̶͙͎̯͉͊̔̄́̈́͑̔͒͆̅͒͑͌͋͘k̸͈̫̹̚h̨͈͈̹̯̼̖͚̫̗͖̫̾̃͂̃̃̆̂̂̿́͘ǎ̷̸̶̵̵̧̪͙̥̯̘͌̋͊̂̔̇̂̂̈͜P̶̸̴̴̧̨̻̖̤̩͙̲̫̮̆̀͌͌̇̌̾͝aȩ̨̛͚̖̲̲͇̻̼͎͈̙̜͉̘̑͋̿͌́̈́̈́̔̿̌̆̍̑̃̈̽͘͘͝͝è̠͉̫̹̂̌͝u̢̫͎̎͗K̴̸̶̷̶̢̪̹̹̰̖̮͈̘̮̘̰̿̃̋̅͌͌͌͗̔̌͜͜͜k̲̈̔c̨̲̫̫͂́̎a̷̸̸̷̸̧̛̛̺͈͕͕̞̹̬̞̭̲̞̰̙͓̗͈͗̀̈́̀̌̿̄̂͒̋̂̅́̀̑̂̎̋͋͘̚͘͘͜͝͝͝͝͝ͅͅa̵̚Ǩ̶̛̫̩̙͈̓̈͑̂̀͜B̶̩͕̏ņ̸̡̛̭̮̗̗̭̦͈̻͈̔̄̾̄̔̆͂̎̂͝͠ͅͅ([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static a̸̢̨̢̝̮͚̙͙͎͌͐͌̀̑̓̃̋͜͝a̛̱̯̭̱͉̻̎́̅͌o̗̙̘̮̩̫̫͒̾͋͜͜p͓̘̗̠̘͈̥͕̯̾̃̋̋͜a̰͜ų̛̯̤͓̉̐̈́̀͘̕͘͜͜ớ̛̹K̨͎̫̹͓̺͕͚͚͚̫̲̯̙̰̈́̿̎̔̂͊̃͑̈̕͜ͅa̷̸̶͎̺̘̘͎͋̆̊̃̃̅K̷̸̢̛̖̫͈̙̹̫̪̭̤̥͚̱͉͎̗͈̪͉̦̺̩̫̈́̈̉̈̋͌̃̐̈̽̾̑͆͂̂̓̌͗̿̌̚̚͜͝͝͠͠͝͠oK͚̈́̅c̺̔ǎ̝̖͐ò̸̸̠͓̹̠̈͒͂̾̆͝͝ĥ̷̴̨̖̥̩̱̫̖̞̩̘̖̱͙̫̭͓͊́̄̔͗̂͌͗͗̚͜͝͝K̢̮̯̘̹̂̈́́̎͊͂͜͝͠l̶̢̢̢̛̝͎̥̭̬͚̇̀̃̋͌͘̕Ķ̛̙̺̘̭̭̘͎̇̎̏̍͋̐̕͜͝͝͠P(Ljava/lang/Object;III)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ḻ͚̦̾c̯̯̗͌̀̅̈͘͝͝͝na̵̴̱̺͕͗̕ť̸̸̵̨̢̛͕͕̙̪̘̫̯͈͚̰̺̅̋̾͘P̷̢̭̈ů̷̴̶̺͉̫̹̩̘̻̅̌͋̋̔͑̔̊̋̾̒̽͌̕ͅa̸̱̦̙̍̌̎͘u̢̾c͎͈̆̀͌K̸̨̫̱̘̍͌͐ư̸̸̲̭̹̘̽̎̈̾̚ù̵̴͓̿̋̋͋ớ̷̢̧̛̛̫̝̫̭̟̯̩̫͎̞̩̫͙͈̈͋̒̆̅͗̂̈́̈͋͋͋̎̕͘͜͜͜ȩ̸͇̥̦̹͋̃̈́̋̋̓̄̚͘͝oe̫̫̍́͑̃͝͠ę͉̅ä̙ȃ̴̷̲̋̈͋ǔ̸̸̸̫̥͓͈͗͌͝ͅP̵̺̩̯̬̌ḧ̷̡̛̩̭͓͎̱̺̲̺̹̋͒̋̃̍̑̈́̆̚̕̚a̱̯͓̯͑̑̋́́͆͌̚͜p̶͓̈́a̫͓͐͜ų̸̰̮̮̏̍̃̑͌͊͗̿͂͐͋͂͝p()I

    move-result v0

    if-gtz v0, :cond_d

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->P̴̵̵̸̢̧̲̦̫͇̦̮̩̗͆̈̌̍̾̄͒̄͘̚͘͜͝ͅȩ͉͉͎̹̻̫̽ơ̷̷̧̢͚̠̗̱̭̲̌̾̌̌̊ơ̴̷̷̴̸̡̧̢͓͕̖̰͎̹̹̩̥̼͕̯̯̲̬̭̼̈͌̅͗̎̉̆̀̌̔̈́̐̋͆̅̈́̕͘̚͝͝͠͝ả̶̙͕̯̰͗̋͋̎͊̈́̕͜͠t̷̸̯͚͈̬̂̃p̶̖̾ȩ̸̴̸̸̸̧̛̫̥̦̭̙̮̫̺̏͌͗̈́̑̎̃̾̒̂͗̂̊̅͒̈͑͑̑̅͌̚͠l̙͙a̧̛̰̥͉̭̋͌̐͌͌ǒ̶K̐͋B͎͌ơ̶̢̘͕̖̫̩͚͓͉̊͋͌̋̈́̄́̎͗ȃ̶̗̌̋̾͜e̸̥̖̝̮̖̾̏̾͌͜͜͠͠ȩ̸̹̤̺̰̌̓̃̈́́̅̒͌ͅô͕h̙̥̮̃̿̄a̛̫̰̲̫̘͆̃n͎͖̫̗͚̗̲͙̺̎͗͌̈́̎ͅoa͎͓̹̕͜([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S
    .registers 1

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$2;->h̵̷̴̵̭̥̫͙̯̰̺̭̗̲͓͕͆̽̋̍͂͗̎͜͝͝ǎ̧̮͈̘̏̿͗̈́̈͊͜ã̛̠̪̫͓̤̺̭̫͚̞̙͌̂̚͜͜͝na̪͚͙̐̂̑̃̄͜uo̧̞̎ĉ̶̶̸̨̯̲͈̫̤̜̯̦͈̩̲͈̯̗͉̺͎̐̂͌̒̒̈̀̏̄̅̋̌͒̑̄̔̎̈́̑̅̈́̌͘̚̕͝͝ͅt̢͓̘͕͉̝̦̹̐̌c̃͗͐̿ç̷̢̧̹̫͈͈̫̭̭͂̉K̾ç̗̋̋k̡̫̎̋͝K̴͓̅̂ȯ̫̗́̿̆Ba̛̹̗͗̅͜K̅ǎ̸̴̴̶̶̧̼̦̝̱̟̺̯̥̫͖͕͓̪͌͐̋̑͑̈͋̀̎̌̑̂̑̌̃͗͗h̖̅͒̔o̲̬͘ķ̴̸̶̶̨̢̥͈̗̫̤͕̙̯̰͕͙̟̞̙̮͎̩̯͎̮̜͓̱͈̤̺̩͈̍̈́́͑̆͋̿͋͋̈́̈͆̌̅̈́͜͜͝͝͝ā͓̏́()I

    move-result v0

    if-gez v0, :cond_9

    sget-object v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->short:[S

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x0

    goto :goto_8
.end method

.method public static ĥ̶̠̰̌̈́̒̃́a̷̭̦̲̯͎̭͚̫̩̬̙͉̦͌̎̔͗̋̋̌͗̈̅̌̈͘͘͜͝ţ̭͐̑̋͌́͠K̨̢͚͓̯̿̔͗͊̃̑̾̚͝͝͝P͎̎B̯͋͂̑e̗ä̸̧͕͙́͝ȃ̹̫̾̑̄͌͘h̢̧̨̛͚̤̭͚͉̠̱͌͒́̈́̋̾͑̍̏͠͝a̴̢̽̔p̸̘̬o̎an̵̢̧̛̖̮̭̯͎̭̫͙̤̦͇̻̈́̀̅͂̔́͌͗̌͌̔͂̈̋͘ͅc̴̸̸̩̯̮̖̤̀̋̚K̷̙͌͘k̢̨̖͉̠̝͓̲͂̌̋̈̌͌̑͠͝ḧ̴̟̲͓̯̪́̑̆͊̀͘ṱ̭̖͚̼̄̈̈̌̂̈́̀̒͌͂̾̋͒c̹͉̰͊͑̋õ̶̞͗͐͜Ḱ͈̻̠̯̩͑̎̎̈́P̩̺̦͕͌̈͗ȏ̫ë̶̅ḩ̶̦̥̝̓ẗ̸̙̙͎̿̌̃̏͊̑̚l͜u̠͙̪P̧͙͓̌̀(Ljava/lang/Object;)Landroid/content/Context;
    .registers 3

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->t̎K̛͉̖̔̚͜a̷̸̹̯̺͚̦̭̭̎̈͒̎̌̐͒̈́͘͜͝l̷̸̛̛̦̭̭̘͚͈̗̫̜͙̄̈̂̈́͌̎̄̐͊̄͌̚n̫̭̘̯̫̺̑̉̈́͋͒͊̃̿́̇̅͜͠ň̷̶̘͒o̸̸̸͕̘̘̫̩̲̱̗̗͉͗̂͒͒̏̃̒͒̈́͐̈́̈́̅̚͜͝͝͠n͕̑̐̈͝ǩ̴̡͙̦͎̺̺̫̌̅̏̈́͂P̵̷̨̛̭͓͚̺̗̻̮͉͙̘̪̖̘̅̄͗̎̋̄̈̈́́͑̈̈́͌͜͝ȯ̸̯̙̈́̒͠͝Ķ̵̶̸̴̶̷̧̧̢͉̤̫̘̯̻̹͉̯̥̫̫͎͈̺̦̘̦̘̥̫͕̜̂̌́̉̈̎̆̑̀̄̈́̿̅̏͋͌͊̋̾̈́̆̆̌̃͗̀̌̿̿̌̃̒̋̚͘͜͝͝a̧̧̛͐̑͌̄̾̊̿͜͝ȃḻ̵̶̈͋͝o̷̢͈̯̻̩̯͓̪̽͐̑͐͜p̸̸̲̝̻͈̅͊̈͘͘͝()I

    move-result v0

    if-gez v0, :cond_b

    check-cast p0, Lcom/kashi/settings/view/BlurBackgroundImageView;

    iget-object v1, p0, Lcom/kashi/settings/view/BlurBackgroundImageView;->mContext:Landroid/content/Context;

    :goto_a
    return-object v1

    :cond_b
    const v1, 0x0

    goto :goto_a
.end method

.method public static ḩ̷̵̴̩̲̝̺̗̠̃͌͘͠c̷̺̫̦̠̈͝c̺h͒̑B̯͓̗͆̂̎̋h̵̸̡̹͕̭̟͉̤̎̒́͐͐̂̄͝à̭̲̯͎͉͝c̲̗͆̂̃̈͝a̸̶̴̸̢̢̢̘̫͎̗̖̥̥͕̻̻̭̹̋̋͌̓̄̃̎̂̍̈̈́̈́̌̎̿̈́̓̕̚͘͜͜͠͠͠a̸̙u̸̫̩̞͌̿͂̈͜c͉̘͈̀͂̈́̂̋̃̈́͘ơ̧̤͓̜̯͓̥̱͓̌͌̈̃̿̈͜͠k̨̯̖͋́͘à͉̫̋̾͜Ba̸̵̧̛̫̗̠̙͚͂̃̅̈̕͘͝ç̵̵̴̷̸̷̴͓͇̙̗̫̹̹̱̜͚͈͙͚̫͊̋̈̊̂͐͌̅̔̅͋̃̋̾̐̔̋̔͐̂̃̈͊͘͠͝͝͠ą̸̷̵̵̶̵̢̛͎̱͖̹̫̠̺̦̹̬͕̺̥̾͋̅̋̎̎͌̋͋̌̌̂̌̀̅͑͗͌̈́͌̽̃͝͝͝͝ķ̸̙̱̫̑a()Landroid/app/WallpaperManager;
    .registers 1

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->t̎K̛͉̖̔̚͜a̷̸̹̯̺͚̦̭̭̎̈͒̎̌̐͒̈́͘͜͝l̷̸̛̛̦̭̭̘͚͈̗̫̜͙̄̈̂̈́͌̎̄̐͊̄͌̚n̫̭̘̯̫̺̑̉̈́͋͒͊̃̿́̇̅͜͠ň̷̶̘͒o̸̸̸͕̘̘̫̩̲̱̗̗͉͗̂͒͒̏̃̒͒̈́͐̈́̈́̅̚͜͝͝͠n͕̑̐̈͝ǩ̴̡͙̦͎̺̺̫̌̅̏̈́͂P̵̷̨̛̭͓͚̺̗̻̮͉͙̘̪̖̘̅̄͗̎̋̄̈̈́́͑̈̈́͌͜͝ȯ̸̯̙̈́̒͠͝Ķ̵̶̸̴̶̷̧̧̢͉̤̫̘̯̻̹͉̯̥̫̫͎͈̺̦̘̦̘̥̫͕̜̂̌́̉̈̎̆̑̀̄̈́̿̅̏͋͌͊̋̾̈́̆̆̌̃͗̀̌̿̿̌̃̒̋̚͘͜͝͝a̧̧̛͐̑͌̄̾̊̿͜͝ȃḻ̵̶̈͋͝o̷̢͈̯̻̩̯͓̪̽͐̑͐͜p̸̸̲̝̻͈̅͊̈͘͘͝()I

    move-result v0

    if-gtz v0, :cond_9

    sget-object v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->wallpaperManager:Landroid/app/WallpaperManager;

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x0

    goto :goto_8
.end method

.method public static ln̷̩͈͇̫͈̙̮͌͋͌̔͗̋̋̃̎͆k̸̴̛̫͈͎̹̗̪̭̭̮̮̼̇̿̈́̑̎̚͝͝ḧ̭̱Pk͙̥̦͉̪̯̗̀͋K͉̱̫̘̙̙̯̲̅̑̂͗̊̈́ͅà̶̰̯͙̈́͗̅c̢̙̾͐͑͌̌̑̀̍̑h̴̤̫̯͙͗̌K͈n͈͜ầ̵̸̸̴̸̸̷̛̘̹̫̦͙͚͕̦̰̫̫̮͌̿̂̎̅̋̃̋͌̌̈̑͋͘͝ḛ̷̛̫͚͎̱̈͂̋̌̑̿͌͌̿̄͘̚ö̸̷͚̘̪̭̙̘̮̫̮̰̗͙̰̜́̀̃̈̿̑̋́̈̽̍͋̋̅́͗̔́̆͘͜͝ͅḧ͓̥́̋͂̌͠ͅn̸̫͚̻̹̦͌̄͋̌p̧̟e̞͋͐̓̌͘͜͝ơ̶̸̷̧̢̧̢̰͈̘̦̹̪͉̻͎̪̥̬͌́͋͐̅͗̇̿͗̏͊͊̑͘͜͜͝ả̬̺͊͘p̢̢̺̭̭̫̫̺̈́̀͌̌p̹͓̯̈()I
    .registers 1

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->t̎K̛͉̖̔̚͜a̷̸̹̯̺͚̦̭̭̎̈͒̎̌̐͒̈́͘͜͝l̷̸̛̛̦̭̭̘͚͈̗̫̜͙̄̈̂̈́͌̎̄̐͊̄͌̚n̫̭̘̯̫̺̑̉̈́͋͒͊̃̿́̇̅͜͠ň̷̶̘͒o̸̸̸͕̘̘̫̩̲̱̗̗͉͗̂͒͒̏̃̒͒̈́͐̈́̈́̅̚͜͝͝͠n͕̑̐̈͝ǩ̴̡͙̦͎̺̺̫̌̅̏̈́͂P̵̷̨̛̭͓͚̺̗̻̮͉͙̘̪̖̘̅̄͗̎̋̄̈̈́́͑̈̈́͌͜͝ȯ̸̯̙̈́̒͠͝Ķ̵̶̸̴̶̷̧̧̢͉̤̫̘̯̻̹͉̯̥̫̫͎͈̺̦̘̦̘̥̫͕̜̂̌́̉̈̎̆̑̀̄̈́̿̅̏͋͌͊̋̾̈́̆̆̌̃͗̀̌̿̿̌̃̒̋̚͘͜͝͝a̧̧̛͐̑͌̄̾̊̿͜͝ȃḻ̵̶̈͋͝o̷̢͈̯̻̩̯͓̪̽͐̑͐͜p̸̸̲̝̻͈̅͊̈͘͘͝()I

    move-result v0

    if-gtz v0, :cond_9

    sget v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->RADIUS:I

    :goto_8
    return v0

    :cond_9
    const v0, 0x0

    goto :goto_8
.end method

.method public static n̛͚͓̥͂K̸̮ö̭̎ç̸̷̮̫̗̫̰̰̍̄̚͠ä̷̷̜̪̘͈̫̯͚́͋͊̋̋͊͑̋͜͜B̘̺̯̒o̶̧̧̠̘͉̫̙̘̹͇̊͂̆̋̅ȅ̴̥̭̗̙̠͚̫̮̺̗̘͚͎̦̠̅͋͗͌̉́̂͐͑̆͆͘͜ã̶̷̢̛̰̪̱̯̗̫̰̙̜͙̼̫̲̼̫̯̫̲͉̗͗̾͒̈̑͊̎̏̃́̈̉̈́͋̊͘͝͝Ķ̸̴̜͎͚̗̘̀̽͑̾̿̂͌̅̄͗̚k̷̫͎a̗̎̄͌͂̃̚ḩ̷̭̭͕̥̇̀̈͑̅̈̀̄P̱͙͇̮͈̋́͜Ķ̧͉̹̹̯̦̪̹̃̆̄̂̈́̄̃͝͠aã̵̸̷̭̰̭͉̯̬͚̱̲͚̪͓̮̲͎̱́͒̀̂̆̂̈̿̃͊̄͆͋̈͗́̏̓̿̚͜͜͝͝ͅa͓a̼͋̅̈̂͋̍͝ȃ̧̲̫̩͘u̠̲̫̞͎̠̅̎͑̌̾̎̈ŭ(Ljava/lang/Object;III)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->t̎K̛͉̖̔̚͜a̷̸̹̯̺͚̦̭̭̎̈͒̎̌̐͒̈́͘͜͝l̷̸̛̛̦̭̭̘͚͈̗̫̜͙̄̈̂̈́͌̎̄̐͊̄͌̚n̫̭̘̯̫̺̑̉̈́͋͒͊̃̿́̇̅͜͠ň̷̶̘͒o̸̸̸͕̘̘̫̩̲̱̗̗͉͗̂͒͒̏̃̒͒̈́͐̈́̈́̅̚͜͝͝͠n͕̑̐̈͝ǩ̴̡͙̦͎̺̺̫̌̅̏̈́͂P̵̷̨̛̭͓͚̺̗̻̮͉͙̘̪̖̘̅̄͗̎̋̄̈̈́́͑̈̈́͌͜͝ȯ̸̯̙̈́̒͠͝Ķ̵̶̸̴̶̷̧̧̢͉̤̫̘̯̻̹͉̯̥̫̫͎͈̺̦̘̦̘̥̫͕̜̂̌́̉̈̎̆̑̀̄̈́̿̅̏͋͌͊̋̾̈́̆̆̌̃͗̀̌̿̿̌̃̒̋̚͘͜͝͝a̧̧̛͐̑͌̄̾̊̿͜͝ȃḻ̵̶̈͋͝o̷̢͈̯̻̩̯͓̪̽͐̑͐͜p̸̸̲̝̻͈̅͊̈͘͘͝()I

    move-result v0

    if-gez v0, :cond_d

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ã́̉͜ṷ̸̠͈̱͒͝lư̸̴̶̷̶̸̺̫͚̯̮̙̪͓̙͖̫̠̥͎͎̭̊̎̾͊̀̑̅̅̈̾̋͘͜͝ͅâae͙͓͌̑o͊̎̂ơţ̜̥̭̋̂͊̆͠͝ok̸̈ȃ̻̊p̧̦͕͈̠̆͒̃͋P͎̱̏̅͋̈́a̭͝e̸̶͕̞̤͋̄͋̈́̕ḧ̸̷̸͕͇̻̭̥̩̹̰͕̗̟́̾̅͊͂̄̽̂̋͝͝͝oo̠͈n̗̪Kh͙̃̈́̾͂͋͗l̫̜̯̎͊t͎̕ä̧͚́̀͘ä͓́K̴̨̭̔̚͜on̛̦̮̞̰̫̫͓̫̲̯̘̉̀̈́̄͝͝ͅù̸̲̮̮̙͓̄̽͌̐͂̓͘͝͝K̈́̃̃̅͑̇̈͒̎̕ő̹̫̗̎͘K͇̠͖͈͊̕̕͝͝Ķ̩̫̬̹̦̺̥̈͌̈́̍̅̚͠͝͝p̨̢̧̫̗̲͙̖̔̿̓͗͑͗͒̋͐̄̆̑̋͝͝t̪͝ö̋͝([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static o̯̻lp̶̸̛̗̫̺̞̥͙͇͈̦̔̅̈́͋͗̎̋͐̔͠ờ̶̶̧̛̱̜̠̹̪̱̭̑͑̇͑̈̃̃͗̈͗̈́̌͝h̛̲̦̫͆̔͘̚ŏ̷̴̸̢͉̯̺̤͙͚̼̙̗͊̃͐͒̿̈͌͘͝n̸̗̒t̫͎̯̭̩̮͐̿͆͋̌̿͋̎̽͘̚p̷̵̧̭͚̱͉̩͎͗͒̂̃̃̅͋͘͜͝K̶̢͕̤͕̰͙̻̺̗͉̘͗̂̎͌͋͒̍͑u̶͎̭͉n͎a̷̴̸̧̢̛̛̛͚̯͓̗̫͚̱̭̘̙̯͚̐͒̐̈̏͊̿͘͘͝͝͝o͉͈͋̂̽͘͝ļ̷̛̥̆̈́̓̄̿̌̒̌̂͝ả̸̷̧̧̝͚͕̙̻̰̝̯̺̹̟̼͎̅̌͂̂̌͑̀͌͒́͋͂͜͜͝ơ̸̶̸̶̢̬͈̰͉̱̱̜̫͉̦̻̫̗̮̭̰̲̹͓̻̭̺̏̿͊́̅͒̈̅͗͋͊̽̑̐̈̿̂̇̈͘͘͜͝ͅ()I
    .registers 1

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()I

    move-result v0

    if-gtz v0, :cond_9

    sget v0, Lcom/kashi/settings/view/BlurBackgroundImageView;->ALPHA:I

    :goto_8
    return v0

    :cond_9
    const v0, 0x0

    goto :goto_8
.end method

.method public static pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I
    .registers 2

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()I

    move-result v0

    if-gez v0, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ȟ̸̶̶͈̎̋͌̈̈͗͌̇̐t͉͚͖̩̤̔k̦̂͠e̴̴̷̸͇͌͒̋͜ā̸̶̴̴̢̧̧̛̱̤̥͓̰̦̺̩̗͈̩̟̯̯̻̗̦̮̤̦̙̲̘̈́̈́͌͗͌͌̎̈́̅̑̔̂̃͑̀̔̅͂̂͘͜͜͝k̗̱͕͉̂̇̇͑͘͠͝h̸̴̶̖͚̮͎͖̭̼͚͗͌͌̀̑̋͗̋͋͘͜͜͝aB̗͕͒̂̚͜͠u̩ţ̛̘̖̪̫̭̂͊̌̈́̔́̂̓aa̪͜ļ̸̸̴̹̙̹̜̗̤̰̰̙̮̙̺̗̭̇̑̄̎̏͆́̋͌͗͑̂̅̂̿̄ͅc̨͈͖͓̺͑̎͊̆͠ǫ̸̶̵̛̮̺̟͉͇̘͇͎̮̺̞͚̫͂̃̑̌̋̎̍̋̌̈̎͑̎̂͘͜͜͝͝͠͝͝͝p̶̶̴̱̹͚̗͈͓̺͇͋̑̋͐̌̉̂͊̿̂͜͜͝B̭͌̓̈́͜ͅȗ̢́͘t̵̛͎̼̭̙̂͂̾̀̃̆̅(Ljava/lang/Object;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public initAlphaState()V
    .registers 57

    move-object/from16 v5, p0

    invoke-static {v5}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->h̷̷̷̺͕͎͕͖̥̫̠̱͙̗̥̀̅̂͋̋͒̂̏͝͝͝ơ̸̛̯̼̌͗k̸͈̝̹͒K̶͈͚̖B̵̷̷̥̥̈͘P̛̈́͘aa͎̹͓ȩ̭͖͗̑̍̚Ke̵̶̷̶̬͈͉̖̤̺̫͖̲̎̋̂̀̋̈͗͂̐͘ͅoc̷͈̭̓̈́̽͊̌̈́̆͊͋̋̀̄͝ȗ̧̢̧̧̧͎̭̝̗̻͚͇̯̗̺͚́̇̐̎̂̌̀͒̉́̂͝͠ç̸̶̶̴̢̧̛̩͈̫̯̺̗̭̥̫̙͈͙̜̘͎̙͓͑̂̑͋̑̋̋͒̌͂̎̾̌͋͊̇̿̎̅̈́a̵̵̸̵̴̶̧̫̯͎͚̙̫̱̯͎͒̂̈́͗̀̑̃̑͗̔̑̈͌̔́̈̚͜͜l̃̀ţ̛͈̗̱̤͒̌̔̀͜͝a͓̹̮̫̥̫͊̀̽̒P̫̠̋͌ķ͚͉͋̿͆̓h̶̵̶̸̢̡̨̰̖̩̫̤̱̗̦̩͚̥̅̌͐̈͗͗͋̂ä̶́͒̂(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K͝h̶͗ḁ̸̶̷̸̝̭̪͈͕̠̹̭̗͚̃̂̈́͐̈́̈́̈́͂͑̌͌͜ư̝̹̜̖̫̪̿͗̈́Ķ̷̸͚̦̮͚͓͚̼̘̮͗̌̂͆͐̾̂̀̓͜͝͝oK̸͓̹̰͓̮̝͓͚̗͈̭̺̞̹͎͈̲̯̙̦̈́̏́̈̄̄̋̎̒̅͌͌̔̉̽͒̃͝K͂n̢̗͗̑k̶̭̺Kn̶̡̲͋̅̐̿̌̔̇̿c̵̘̺̔a̸̸̤̘͙̪̪͎͗̍̽̂̐̋̈́̚ã̭̙̭̲̱̒͑̌̿͋̇͌̂͆̌̑͜͠ã̷̵̗̥̟͇̖̫͖̪̮̠̯̬͚̼̐̄̈́̂͌͊̎̔̃̋̂͜͝P̧͚͈͖̭̘̞̪̙̦̈́͗̂̂̎͒̂͑͆͋̅͝e̴̢̫å̼̌͐͘P̸̴t̵̵̸̷̢̛͈̜͎͖̙̫̭͉̭̭̞̂̅̅́͗̈͑͂̀̅̋̌̈́͐̃̾͌̂̋̚͜͜͠͝Kp̸̢̧͕̘̮̫̝͋̈̅p̮(Ljava/lang/Object;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v26

    const v29, 0x1abc19

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ţ̦̯̘̯̱̐̋̌̄̋͝o̸̸̴̧̢̤̮͙̹̖̺̫͒̌̑̏͊͌̈͝͝o̸̵̷̷̢̢̗̗͓̗̖̪̺̱͈̫͖͖̻͎͌̑́͗̌́̈͂̀̏́̑͌̎͗̈͘̕͜͝c͜l̴̸̖̟̿̿͋̈̌̈́͂ͅu̵̱͉͈̭͝ͅa͙̮͖͝a̮̗̿̅̚P̷̸̨̰̹͖͓̑̔̑͋͜o̺̦̖͎͓̩̭͒̋̏͊̌̈́̒̑͌̈͌̋͘B̸̮̮̔͆̈́ã̧̰̭̫̀͗͑̀Ķ̸̸̷̷̸̧̛̪̼͕͕͈̹͈̰͓̫̱͎͓͓͚͌̑̑̎͋͗̿̔̈͌̈̊͌͘͘̕͘̚͘͜͜ö͎̗̟̭͌̃̀̂̂͂͜B̃p̸͕̈́͒̂̌̿͘͜͝K̗̭̯͚̗̦̭͋͌͌͌̒̈́͌̀͒͗͜͝͝ĉ̸̘͉͈̿̋̈́á̘̦̯̺̫̮̂͑̋͋̌̆͘̕͜͜͝ȏ̱̘̱̙̫̺̆̈͊̂̌̕͜͝͝͝ͅ()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v25

    xor-int v29, v29, v25

    const v27, 0x1ab2f1

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ķ̛͕̭̹͌͂K̢̛̗̫̋͗̎̎́͝ơc̸̵̸̢̛̦̫̻̹̅͋́͌̚ā̸̸̵̧̭̗̺̪̦̗̺̹̩͉̱͐̈̎̋̓̄̈́͝͠o̾̑̚ļ̶̸̛͉͕̪̥̥̫̠̫͚̥̪͕͗̒̌̌̌̌͒̃͘͝͝cK̷̷̢̺̪̪̯̱̮̗͈̋̋̈́͗̊͝ő̴̶̢͕̺͉͉͈̹̝̑͑̌̃͗̍̀̈́͌͘ͅą̛̖̹̬̒̈́̂̂́͠͝͝͠h̝̠̀́̋͜o̶̲͓̘͎͇̱̫͂̌̃͘ȃ̵̧̛̠̺̿n̵̸̛̥͓̼͓͖̥̤̖̘̫͚̙͊͋̿̀̑̈́̕o͗̔͠ą̴̢̙͚̺͕͌́̈́̋̌̀͘p̠̗͈̩͖͎̈́̌͘͜͜͝â̷̸̡͎͕͎͎̭̺͈̹̌͌̀͐̚͘͜ļ̸̯͚̅̕ȁ͚̝̺̻̯̥̺͒̀͜͠Ķ̷̛͉̺̺̝͙̦͎̘͑͐̌̍͋̎̌̍͗͘͝ä́͗()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v25

    xor-int v27, v27, v25

    const v28, 0x1ac221

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ut͈̱͘c̷̸̶̷̴̸̨̛̹͉̱̪̭̫̠͊͗̔̌͗̀̀̈̌̂̂̈́̌̅́̒̚͘̕̕͜͜͝͝͝͝l̛̺͉͈̠͗́̋̈́̃́ơ̷̸̛̜̟̺̯̮̩͚̯̈̈́̋̾̑͝͝n̶͎͕͚̫̮̈͑̐̅̎͂̌̌̊͐͠ͅp̸̶̷̢̲͈͕̮̝̦͈̯̈̋̽̃͊̔̆̃̉̚͜͝ö̵̷͕́̆̎̌B̸̙͉͋͊̏̋̐̎̆̾̚͜͝͝l̶̴̴̛͖͉̻̭͎̗̫̹͕̗̹̭͕̈́͋̈̂͑̌̍̎͊̽̆͌̋͌̚͜͝͝͠K̶̛̝̋͌̈l̵̨̧͙͎̺̞̹̱̭̱̪͙̋͊̎̅͂̑͒́͝͠e͎̯͌̂͋à̸͎̲̤̋a̸̷̷̭̦̲̘̔͘͝Ḱ̷͕̱̺̻̭̥̃͗̍̀̌͘ac̢̨̪͎͓̤̮̟̙͚̹̪̙̼̭̈́̎̃͒̂͂͌̌͗͘̕͜a̷̶̴̴̺͚̦͚̘̎̅̌͌͗͊͘()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v25

    xor-int v28, v28, v25

    invoke-static/range {v26 .. v29}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ã̶̧̧̡̠̺̱͚̮̀̃̔͝a̶̷̸̖̫͙̲̠̾͗Ḃ̶̫͈̈͠h̴̷͂̃ô̭̯͉͌͋͌̇̿̋͜͜͠͝a̷K̸̨̨͖͉̭̺̼͈̱̏̈́̌̿̐̉͑̾̏͌̚K̵͚̻̘͓͙̏͐͂͘ç̢̛͈̥̻̖̫͉̜̄́̄̄̈ä̷̧͎̰͈̰̩̥̱̭̘̻͋̈Kő̵͚͉̈́̈́h̶̴̸̴̷̸̸̵̠̫̭̮̫͇̻̫̼̺͚̩̰̯̮͚̭̫̫̦͌̂͆͆̌̌͂͌̌̈́̂͋̔̔̌͌̊̂̈́̈́̌͐̕͜͜͝K͕͓̋ķ̯̺͊̆͌͑̎͘̚͝a̸͇̭̭͈͋͗̾͗̃̏͘p̵̘̭̻̯̈̏̿̐̊̅̕͝ä̢̭̜̫͈̠́̂͋͌͌̒͗͋̾a̶̷̛͎̼̜͉̔̈̈͝e͙̩͎̿̌́̓͑͜P̫̎͋͠p̧̗͓̰͖͋̐̒̐̃͑̅̈́̀͘͝͝á̒o̵̶̥͚͐͗͘͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v2, v26

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->h̡͈̻̪̗̻̥͉̟̟̭̭̼͓̙̩͗̈͊̃̈́̂̾̈́̋̆͘͘͠͝͝o̢̢̫̠͆̐̏͘͜ǎ̸̸̸̮̗̩̭̦̌̐̎̔̚͜͝͠͝͠n̢͙͈̠͌̈́̑͠ą̸̭̭̱̈͜͜a̢̧̢̠͎͐̅͗̾͝͝ḁ̸̙̾͘a̰͎̱̫͌̆̿̋̈͋͂͜ǒ̷̶̵̢̠̤̝̺̎̌̌̄͗̾̎̍t̷̙̩̖͜͠ḩ̸̸̨̛̺̖͉̭͑́̈̂̎̈̎̐͘͜͜͝͝͝e̸̶̢̢̢̢̛̘̭̥̗̱̱͈̪̫̗̫͚̺̝͊͌͑̈̈̈́̂͂̌͆̉̋͌̈́̅͋̃͂ͅK̮̭̋̆͆͋k͗ã̴̬̪̺͈͈͆̌͌̎̄̑̃ͅc̸̷̨̛̛͓̠͎̫͓̃̔̌͗́̈͗͋̑̌̄̈̆̑̆͌͘͜͝P̸̸̛̬̯̫̘͕̼͎͎̅̑̂͑͌̂̌͆͋̚̚͘l̶̵͉̜̤̟̜̭̯͉̤̓̑̋͑̏͜͜͝(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_45

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    invoke-static {v5, v4}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->l̷̸̴̸̸̨̛̖̬̻̹̘̫̥̘̘̮̭̘̋͋͒̒̈́̂̑̋͒̒͑͗̽̄̎̐̄̍̂̋̊͘̚̕͜͜͠t͉̟̠̱̅̄̈̈̂̾̃͜ṉ̵̖̟K̛͚͙̜̬̼̍̔͊͋̚͝a̷̵̶̧̡̮̺͓̥͉̭̅̃̄̅̊̈́̐̈͘̚a̶̗̹̬̝̱̝̖͗̀͌́̋͌̑͝ḩ̪̫̫̇̄̅̾͜͝n̷͓̪̠͚̾͑̋̾̎̃̉̊͊͝a̫͈͠ư̶̷̧̧͕̱͉͈̟̰͙̱̺̏̂́̌̂͊̏́̊́̈́͘͘̚͘͜ņ̴̵̛͓̟͓͙̜̦̻̥̠̗̙͓͕͚͉͈͎̩͈̈́̾̒̒̽̅͌͊̑͗̂̒̋͜͜͠͝P̸̷̨̨̪̦̹͙͚̦̗̂̆̀̑͊͘͝t̡͎̘̹̄̆P̷̷̸̧̡̛̫̯͌̋̄̆̃͌̅̄̾̎̂͗̃̾̈́̂͝͠ǒ̵̸̶̯̱̮̞͈͎̥̗͌͋̋̋̿̋͂̄̈́̎̿̅͘̚(Ljava/lang/Object;F)V

    return-void
.end method

.method public jFastblur(Landroid/content/Context;Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;
    .registers 106

    move/from16 v54, p5

    move/from16 v53, p4

    move/from16 v52, p3

    move-object/from16 v51, p2

    move-object/from16 v50, p1

    move-object/from16 v49, p0

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̢̯̹̋̑̂͌K̝̹̃͊c̫l̏̔t͓̮̑̆̈͜K̴̗̤̏̎h̴̢̢̛̬͉̫̺̬̩̐̾̃̄͜͜͝K̢̛͕̪̿̅͋͘͜͠k̴̶̷̭͈͇͎̮̫̐͑̔̇̃̿͘͘͠͝͝a̷͉̅͗͗̒̄ǎ̡̨̛͓̱͖͉̭̬͇͋̂̈͌̈́̍͌͊̈̏͜͠͝͠͝a̸̡̫̫͗̌͌͠p̰͋̂͘͜ļ̸̯͓̃͌̈̔̎͠͝ap̸̸̴̶̢͓͙̺͉̠̼̭̞͈̑̌̌̎̎̀̀͌̾́͠P̖̤̮̹̅͗̌̿͝o͓̪̓͠͠a̸̖̋̌̀͜ȇ̸̸̸̷̶̷̴̢̨̧͖̤̩͚͈̩̺̲̘̹̲̪͕̫̱̤̩̗̠͉̼̱̠̱͚̦̞̺̪̋̀͋̌̑́̾̈́̆̍͋̀͒̓͑̏̿̈̈́̀͌̈́̒̃̋̋̈̄͘̚͜͝͝͝͝͠ͅͅPa̬̪̩̗̋̄̐̔͒͒u͇̬͒̓̎h̹̫̤͑̔̆̈́͌̈́()J

    move-result-wide v38

    const/16 v42, 0x0

    const/16 v24, 0x0

    const/16 v4, 0x60

    invoke-static/range {v51 .. v51}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̛͕̯̩͊̒̂̾͜ỏͅa͎̐͘͝a͉̻̎̌l̴̷̦͉̞̃̑̆͒̅̐̈́̌̽͋̋͐̉̂̆̌͗͜ͅē̶̼̦̎̎͑̓̀̈û̴̧̘͈̙̤̹̙͗͌͂̌̈́͌͘P̸̸̸̩͉̥͓̱̙̺̗͖͎̫̀͑̌̀̂͌̒̾̋̌͐̋͝ḽ̴̷̷̸̡̧̨̲̗̫͎̱͎͚̐̂̃̆̆̒͌͗̍̆͗̕͝ţ̢̧̩̜̭̩̫͈̋̾̾̆̇̊̈́͝͝͝ư͇͕̤̍͌̄̎͗͗͑̈k̫̦̦̦̅͝ā̵̵̬̥̘̤̲̘̱̮͐̔̌̿̍͘o̵̩̰̫̖̗̐̋̎̑̂͌ǎ̛̙̭ȩ̙̼̋̇̌̂e̶̸̢̛̥̻͓͓̹̻͎͗̅̉̀̌͋̌̈̂̚K̶ôơ̗̠̫̌̄͘͝c̛̹͚̑̂Pǫ̸̵͕͚͙̂̏̋̋̌̂̿o̙͎̞͎͈͐̄̌̈ȩ̵͉̤̬̂̂͗̅͒̆̑̽̎͘̚(Ljava/lang/Object;)I

    move-result v6

    invoke-static/range {v51 .. v51}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̙̈́Ķ̷̸̫̺̘̩͗͌͆͑̎͋̌̂̚k̸̢̗͕̫̹̃̈̃̋̿̔̊͝K̷̨͚̖͈̋̑͆̃͘ų̸̝̫͉̎̌̋̔̌͒̋̃̎̉͘͜a̫̯̲o̸̸̸̱̥̻͌͆̎͋̋̕͘͝k̫B̧͎͝ḧ̴̶̢͉̯͓̮̫͎̯̥́̿̍͌͌̈̔̔̎̾̋͌̋̚͠͠͠e̸͇͚̮̮̟͎͋̎͗̏͘̚o̴̱͕̗̔͠ā̴̶̧̧͉̹̗͗͐̅̃̎̿̚͝ǎ̴̶̴̧̭̩̗̭̤̥̫̹̖̲͈̯̬͉̤̬̤̫̌̋̐̑͗̌̌̈̏͂͋͌̌͂̌͑͘͘̚͜͜͠͝͝͝k̶̸̸͇͓̮̹͚̩̫͈͊̄̄̃̓͑͂̿̋̌̋̾͂͘͝͝͝͝t̷͈̫̠̝̻̬͕̱̗͊̅̎̆̚͜͜k̸̸̡̞̘͚̘̯̮̺̐̋̂͋̒̇͗̂͘͜͝o̺͎͋à̩̇͑o̸̧̡̖̺̭̘̫͌̍̿̀̇͑̂(Ljava/lang/Object;)I

    move-result v7

    div-int/lit8 v7, v7, 0x60

    div-int/2addr v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v51

    invoke-static {v0, v4, v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->K̶lP̫͗͌o͕͉̘̫͋̌̈̂͌̑̾̈͊̕eą͓͙̑̾̎͜e̹̹̤̯͋͋̈B̍̂ǎ̴̮̇ĉ̸̸̤̹̝̱͈͌͗̂̆͘͘͜͝͝a̸̘̰͓̹̫̎̔͐t̸̝͒̅͗͗̎̎͂̑̅͊͘͘B̸̷̴̸̢̫͈͚̺͈̙̯̱͚̤̻̋̂̈́͌̉͌̂̋̓͆͊̈́̌̎̔̚͜͜͠û̴͐͘͜͠ó̴̄̎Ķ̵̦͚̺͈̦̗̇͋̎͋͋͗̿̀̄͗̌͜a͑͘c̸̛͈̺̭͈̪͒̿̿͌̈̋̔͝ä̢̨̭̮̙̫̰̙͓̎̂̿͜͜͝a̸̸̸̸̷̷̵̢̧̨̨̢̛̛̞͈̟̜͈̫̘̦̩͓͕̦̮͉̜̰͎͚̾̑͒͗̈́̉̂́̅̒͗̈́̈́̂̅͐̽̋̍̌̾̑̋͗̆̀̋͂̈́̐̂̆̂̿̋͗̋͋̏̒͊̈́̚̚͘͘͜͜͝͝͠͝a̶̧̧̘̪̦͋̔͝ķ͚̏̄̈́̎̌͒͝(Ljava/lang/Object;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    move/from16 v0, v52

    if-ge v0, v4, :cond_2f

    const/4 v2, 0x0

    :goto_2e
    return-object v2

    :cond_2f
    invoke-static {v2}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̙̈́Ķ̷̸̫̺̘̩͗͌͆͑̎͋̌̂̚k̸̢̗͕̫̹̃̈̃̋̿̔̊͝K̷̨͚̖͈̋̑͆̃͘ų̸̝̫͉̎̌̋̔̌͒̋̃̎̉͘͜a̫̯̲o̸̸̸̱̥̻͌͆̎͋̋̕͘͝k̫B̧͎͝ḧ̴̶̢͉̯͓̮̫͎̯̥́̿̍͌͌̈̔̔̎̾̋͌̋̚͠͠͠e̸͇͚̮̮̟͎͋̎͗̏͘̚o̴̱͕̗̔͠ā̴̶̧̧͉̹̗͗͐̅̃̎̿̚͝ǎ̴̶̴̧̭̩̗̭̤̥̫̹̖̲͈̯̬͉̤̬̤̫̌̋̐̑͗̌̌̈̏͂͋͌̌͂̌͑͘͘̚͜͜͠͝͝͝k̶̸̸͇͓̮̹͚̩̫͈͊̄̄̃̓͑͂̿̋̌̋̾͂͘͝͝͝͝t̷͈̫̠̝̻̬͕̱̗͊̅̎̆̚͜͜k̸̸̡̞̘͚̘̯̮̺̐̋̂͋̒̇͗̂͘͜͝o̺͎͋à̩̇͑o̸̧̡̖̺̭̘̫͌̍̿̀̇͑̂(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̛͕̯̩͊̒̂̾͜ỏͅa͎̐͘͝a͉̻̎̌l̴̷̦͉̞̃̑̆͒̅̐̈́̌̽͋̋͐̉̂̆̌͗͜ͅē̶̼̦̎̎͑̓̀̈û̴̧̘͈̙̤̹̙͗͌͂̌̈́͌͘P̸̸̸̩͉̥͓̱̙̺̗͖͎̫̀͑̌̀̂͌̒̾̋̌͐̋͝ḽ̴̷̷̸̡̧̨̲̗̫͎̱͎͚̐̂̃̆̆̒͌͗̍̆͗̕͝ţ̢̧̩̜̭̩̫͈̋̾̾̆̇̊̈́͝͝͝ư͇͕̤̍͌̄̎͗͗͑̈k̫̦̦̦̅͝ā̵̵̬̥̘̤̲̘̱̮͐̔̌̿̍͘o̵̩̰̫̖̗̐̋̎̑̂͌ǎ̛̙̭ȩ̙̼̋̇̌̂e̶̸̢̛̥̻͓͓̹̻͎͗̅̉̀̌͋̌̈̂̚K̶ôơ̗̠̫̌̄͘͝c̛̹͚̑̂Pǫ̸̵͕͚͙̂̏̋̋̌̂̿o̙͎̞͎͈͐̄̌̈ȩ̵͉̤̬̂̂͗̅͒̆̑̽̎͘̚(Ljava/lang/Object;)I

    move-result v9

    mul-int v4, v5, v9

    new-array v3, v4, [I

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v60

    const v63, 0x1aa079

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->Ǩ̵̵̸̨͕̠͈̺̹̘͚̾̋̔̾̈̋̍̿͝ţ̪̩̤̌̅̍̊͆͑a̫̭͌̉͝Ṗ̨̼̈́͗̎ǔ̴̦̍̃P̛̛̭̲̠̌̐͋̃͜͠n̷̪̘͌ķ̗̝́̈́͂̏ͅB̷̧͖̥̙̺̗̗͋͗͐͌̅̽͒͘͜â̵͈̦̩̫è͝͝ͅa̭̗̦̎ư̴̶̧̫͚̗̫͈̈͌̌̈́̄̎ͅl̴̶̴͓̦̞̖̤̦̼̫̱͌̓̅͐̂̋͋̀̏̉̓̆̂͌̚͜͜͠͝ú̧̧̫̤͙̥̙̙̭̦̹͓̮̦͓̬̯̥̫͐͋͑̾͌̋̂͑̋̆̇͜ȩ̵̸̴̸̛̛̭̗̤͓͚̫͉͂͌͑̌̅͊̀̿́̆̋̈̂̃͒̍͜͜͝ͅç̸̩̭͙̮̋kĺ̍ơ̷̶̸̶̷̯͕̤̗͙̱̪͈̮̲̗̲͇͓͈̂͐̌͐̂͒̌̿̈̋͌̚ͅK̻P̢̻̀͜͜BḴ̸̭̈̑͜ō͈̋t̬k()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v59

    xor-int v63, v63, v59

    const v61, 0xdc89

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ȁ̶̀̋͜͝h͊͠ṉ̸̴̷̨̧̮͉̼̫̖͈̥̭̩̫̫̩͕̫̤̫̱̍̐̎͗͗̒̂͗͊̾͗̈̌̍͌́͌͜͝͝n̗̋̾oa̴̷̛̪̺͚̯͉̩̋͌̋̾͌͗̃̋͜͜͝͝͝ő̼uȧ̯̎͝P̥p̴̷̮̙̫̭̞̺̗͚͉̾͌̋̋͘͠ͅo̭̭̝̫͑̃̋̅̈́͘͘Ķ̸̫̙̯̥̻͇̺̂̌̔͆͐͒͒̾͌͑͝͝ͅȍ͕̾̈́̑͂o̶̷̝̮̫̜͈͈͒̂̈́̇́́̋̿͂͗̂̌̋͝͝ͅh̪P̜̈́̆͜t̵͚̘͉͖c̢̢̘̼͓͐̾̑̈̏̿̂̄͋͑͗̋͒̂͘ä̴̵̛̛̯̦̭̭̭̘̗̙̱͕̮͕̬̖̈́͌̉̐̓͌̍̂̀͗͑̑͌͘͜͜͜͠͝͝a͌h̴̃͗͝a̖B̫͉̦͐̆͗ư̷̫̭͇͓̺̞̤̭͓͉̼̥͂̍́̋͌͌͌̃̒̔͜͝͝c͈̿()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v59

    xor-int v61, v61, v59

    const v62, 0x1aa7bc

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->k̸͓̻̘̜̎̂̿͂a̶̲̭̹lő̫̠̺͚͕͙̌̒̅̓̂͋̋̚̚̕͝͝c̴͉͈͈̱͌̅̌̏̚̚͠Kã̸̭͕̪̱̲̹̫̅̂̂͗̊̂̏̂͜͜ͅa̴̸̢̧̰̟̯̥͈̰͒̆̈́̀͗̓͘͝͝u̵̘̟̫̹̲͉͌́̋̅̋͜͝P̶̨̛͙̗͓̜̱͙͑ả̴̧̢̢̱͉̠͕̏͌̊͂̐͗́̿̚a̷̸̮̦̎͘o̧̢̨̟̮̤̭̺̺͚̺̤͓̤͈̲̭̯̼̍̀͑̾̃͆̕͘͘͜͜͜͠͠͝ư̵̶̡̡̧͇̭̖̮͉̱̯͗̈̈̃̐̌͘͘͜ḩ̶̷̨̧̢̛̘̰͓̯͎̭͚̫̼̲͈̰̜͌̌́̑̅̅̈́̈̏́͗̽̄̃̈́͐͘͘̕͝͝k̸̴̗̥̙̰͈̫͓̩͈͌̅̀̊̀̋̚n̹̙̂̌͝BP̵̧̙͎̘̏̈̿̄͠e̵̛̮͙h̫̭̦̮̀̐̾̇͑͊̚͜͜͠()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v59

    xor-int v62, v62, v59

    invoke-static/range {v60 .. v63}, Lcom/kashi/settings/view/BlurBackgroundImageView;->a̸̢̨̢̝̮͚̙͙͎͌͐͌̀̑̓̃̋͜͝a̛̱̯̭̱͉̻̎́̅͌o̗̙̘̮̩̫̫͒̾͋͜͜p͓̘̗̠̘͈̥͕̯̾̃̋̋͜a̰͜ų̛̯̤͓̉̐̈́̀͘̕͘͜͜ớ̛̹K̨͎̫̹͓̺͕͚͚͚̫̲̯̙̰̈́̿̎̔̂͊̃͑̈̕͜ͅa̷̸̶͎̺̘̘͎͋̆̊̃̃̅K̷̸̢̛̖̫͈̙̹̫̪̭̤̥͚̱͉͎̗͈̪͉̦̺̩̫̈́̈̉̈̋͌̃̐̈̽̾̑͆͂̂̓̌͗̿̌̚̚͜͝͝͠͠͝͠oK͚̈́̅c̺̔ǎ̝̖͐ò̸̸̠͓̹̠̈͒͂̾̆͝͝ĥ̷̴̨̖̥̩̱̫̖̞̩̘̖̱͙̫̭͓͊́̄̔͗̂͌͗͗̚͜͝͝K̢̮̯̘̹̂̈́́̎͊͂͜͝͠l̶̢̢̢̛̝͎̥̭̬͚̇̀̃̋͌͘̕Ķ̛̙̺̘̭̭̘͎̇̎̏̍͋̐̕͜͝͝͠P(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v4, v60

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v5}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̸̴̸̸̢̧̧̖̹̫̙̞̯̲̦̰̠̯̦͇͊͗͐̈́̑̌̌́̑̋̈́̌̍͌͗̿̾̾̍̑̋͋͝͠ļ̸̵̤̗͕̹̈̆̍̊̄̈́͘͝ţ̸̹l̮̫̈́̈́̃̂̌̂͝o̦̎̀͂͝a̵̷̵̴̶̸̷̧̡̩̫̫̖̺̹̮͓͎̥̬͓͎̐̌̽̂͌̈͊̉̀̈́̅̃̚̚̕͘̕͜͝p̢͈̈́̅K̺̘̮͓̺̘̑̂̂̌̉͘͝pK̸̶̨̙̘͉̱͖̑̋̄̄̍̌̿͘͜͠l̶̶̢͉̩͓̱̦̘̗̭͎͂̈̊͌̿̌̋͗̉͘ͅB̴̷̯̙̘̼͇̫̪̖̂̅͂̋uã̷̸̧̨̺̫̖̥̼̥̎͊̄̿̌͌̕͜͝P̜͓̹̋͘͜t̜̰̘̺̩͚̄͑̄̐Kã̸̺͓̗̈̃ò̷̴̂̌͜ļ̫̖̙̱̖̺͓̙̇̑̇͗̎̀̿̂̅̃̀̚̚n̛̛̤̖̂t̶̛̤͎͎̦̽̂̅͘ã̅(Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v64

    const v67, 0xd4dd

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->K͎̖̄̐c̝ǎ͝n̷̶̨̼̦̭͉͎̓̎̆̂͒͗̾̌̐͂͑͜͝hP̵̶̢̧̛̫̰̩͙̩͕̺͐̑̿͑̓͗̑̔̚̚n̟͈̯̘̂̆̿̅͑̚ç̶̸̸̸̧̢̯͙̦͚̯̺̎̂͌̃̅̌͊͌̌̃̔̋͝͝͝ͅȗ̴͑͠K͕͈̺̭̱͗́̑͐̈́̚aą̶̸̷̧̮̫͎̲̺̦̙̘̪̲̯͖̲̈́̂̃͌͋͌̋͋͑̈̓́͆͗͑̈͘͝͠P̟̅n̵̷̢̛̫̯̯̫̺͋̍̃̾̊͗͂̌̄̉͋̑͌̈͗̐̚͠o̶͎̥a̭͈̝̭̮̺̝͓͗͌͌̔͂̐̾͘͜͠͠P͙Pt̸ä̸̵̸̴̧̢̛̹͚̱͕̠͎̱͎̜̺͇̻̗̲́͋̓̔̐͋̄̃͌͗̑͌͌͌̏̀̅̋̀͌̎̃̍̂͘͜͜͝͝͝͝Ķ̻̫uņ̧̨̛̛͎̹̭̮̮̻̗̦̼̱͐͗͆̎̎́̂́̒̃͆̚̕()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v63

    xor-int v67, v67, v63

    const v65, 0x1aa73f

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->B̷͙̠̆ͅņ̴̸̷̴̢̧̛̛̟̱̥̘̖̭͈̘̻̮̭̥̥̫͈̫̥̺̫̭͚̗͓̑͐̅̈́͐̄̀̋̈́͂̑̈́̋̈̃̍͊̾͊̊̌̊̌͋̃̑̂̅̍͆̑̈̔͑͌̇͗̂̚̚͘͜͜͜͝ţ̴̶̸̢̙͎̦̖͕͈̰̫̻̔͋́̂̃̀̀̅̏̋͜͜͝ả̸͎̫̜̫̘̯͎̻̓̎̆̚͠͠a̋h̪̫͉̥̤͆̂̀̈͑́̌t̖͎̻̭̦͉̮̦̲͕̃̑͗͑͗̀͝u̵̶͕̩̫͑͒l̷̩̫̠͗̐͌̏͋͋̋̎̕͠ư̸̜̗̋͋̊͗̅͊͋pä̴̸̧̢̧͚̘͈̯̩̭̦͎̯̥͎͚̱̠̘́̌̋̑͐͑̎̉̅̄̈́͘͠͝͝͝áe̦K̪͗h̵̷̴̸̸̷̷̛͚̖̙̮̬̰̞̭̃̑͗̐͌̈́͂̈̋̈́̂̽̈́̏͝a̶̶̸̸͈̤̗̱̭̾͊̋͗̋͆̿͝͠ĉ̸̭̭̠͝()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v63

    xor-int v65, v65, v63

    const v66, 0x1ac1c6

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->p̸̅̈́o̶͎̠̻B̶̢͉̠̈̂̏̾̀̃̀k̮n̮̫͓͙̖̤̪̝̊̅̽̚͝c̑̿a̧̿͋̏͒̚͠aB̸̴̷̛̲͙̺̤͈̌͌̂͜ȏ̸̸̶̧̧̭̘͕͚̺̩̥͇̺̘̹̭̲̹͇͕̂̿̃̃͌̄̋̅͝͝͝a̢̛͚̱͋̌̃͐̿͐͊̈̚ͅě̶̗̻̠͓̫̘̦̭̞͎̱̲͓͈̋͌͌̔̌́̒͗͌͂͑̎͑̌̋̎̕͘͝oǒ̫̑̐͘͠o̺̖͙̘̭͌̃̄̏͗̐̈͒͋͜l̸̶̛͓̯̾͗̉̔͐͒͋̀͋́̌̕͝n̷̡̢̙̻̱̙̗̭͈̗̺͂̌̈̔̀̎̈́͊̿̅ń̨̘͙̟̂K͉̪̮̅͑͂͠l͑͌͠o̸̢̧̭͓͘͝a̸̧̦͓̐̐̂͜͜͠a̧̤̹͗́̋̃̕͝n̹̼k̷̴̵̢̯̮̦͕̫͎̱̹͙̘̩̖͈͌̎̌̈͘ͅȟ̸̯͉̮̔̃̚a͐()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v63

    xor-int v66, v66, v63

    invoke-static/range {v64 .. v67}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ã̶̧̧̡̠̺̱͚̮̀̃̔͝a̶̷̸̖̫͙̲̠̾͗Ḃ̶̫͈̈͠h̴̷͂̃ô̭̯͉͌͋͌̇̿̋͜͜͠͝a̷K̸̨̨͖͉̭̺̼͈̱̏̈́̌̿̐̉͑̾̏͌̚K̵͚̻̘͓͙̏͐͂͘ç̢̛͈̥̻̖̫͉̜̄́̄̄̈ä̷̧͎̰͈̰̩̥̱̭̘̻͋̈Kő̵͚͉̈́̈́h̶̴̸̴̷̸̸̵̠̫̭̮̫͇̻̫̼̺͚̩̰̯̮͚̭̫̫̦͌̂͆͆̌̌͂͌̌̈́̂͋̔̔̌͌̊̂̈́̈́̌͐̕͜͜͝K͕͓̋ķ̯̺͊̆͌͑̎͘̚͝a̸͇̭̭͈͋͗̾͗̃̏͘p̵̘̭̻̯̈̏̿̐̊̅̕͝ä̢̭̜̫͈̠́̂͋͌͌̒͗͋̾a̶̷̛͎̼̜͉̔̈̈͝e͙̩͎̿̌́̓͑͜P̫̎͋͠p̧̗͓̰͖͋̐̒̐̃͑̅̈́̀͘͝͝á̒o̵̶̥͚͐͗͘͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v7, v64

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̸̴̸̸̢̧̧̖̹̫̙̞̯̲̦̰̠̯̦͇͊͗͐̈́̑̌̌́̑̋̈́̌̍͌͗̿̾̾̍̑̋͋͝͠ļ̸̵̤̗͕̹̈̆̍̊̄̈́͘͝ţ̸̹l̮̫̈́̈́̃̂̌̂͝o̦̎̀͂͝a̵̷̵̴̶̸̷̧̡̩̫̫̖̺̹̮͓͎̥̬͓͎̐̌̽̂͌̈͊̉̀̈́̅̃̚̚̕͘̕͜͝p̢͈̈́̅K̺̘̮͓̺̘̑̂̂̌̉͘͝pK̸̶̨̙̘͉̱͖̑̋̄̄̍̌̿͘͜͠l̶̶̢͉̩͓̱̦̘̗̭͎͂̈̊͌̿̌̋͗̉͘ͅB̴̷̯̙̘̼͇̫̪̖̂̅͂̋uã̷̸̧̨̺̫̖̥̼̥̎͊̄̿̌͌̕͜͝P̜͓̹̋͘͜t̜̰̘̺̩͚̄͑̄̐Kã̸̺͓̗̈̃ò̷̴̂̌͜ļ̫̖̙̱̖̺͓̙̇̑̇͗̎̀̿̂̅̃̀̚̚n̛̛̤̖̂t̶̛̤͎͎̦̽̂̅͘ã̅(Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v83

    const v86, 0x1ab9de

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ẻ̯̬̹̾͒̒a̛h̦ͅK͇̫͕̰͊̆͝t͇̠̫͎̃̌̉̉͒͠͝t͌P̢̛̯̜̯̭̱̗̋̅̋̃͐̌̂̂͋͌̋͜o̯̅͜Ķ̷̸̶̧̢̺̱̘̫͙͈̼͙̙̥̘̗͈͌̌̐͌̑̎͋̅̎͂̎̅̑̅̎͐͠͝ǘ̷̴̯̯̗̘̦̯̘͓̈̇͑̃͒̍̋̍̐͠c̹̯͌̄͋̈Kp̶̷̧̭̙̺̱̗̹͗́͌K̛͝ã̸̬̥̲͈͙̭̭̥͎̱͐̅̊̀̔̈̅̾ͅP̨̡̮̫̫͈͕̭͓͎̗̯̪̫̃̈͋̏̈͌̔̀͌̌͑͌͝nk̷̶̛̙̫̲̹͈̺̈́̐̎̈́̑̚͠h̠̰̿͂͘͝c̴̷̢̧̲̜͓̰̬͓̮̞̯̰͈̾͒̋͗̂͌̾͝ẽ̠͎̮̻͂̋̂̿͠ͅu̷̢̘̹̠̼̔̆̔̾͗͌͘͘͜͝n̵̩͚̟̙̱̂̎̌͂̽̏̚͝ü̫͐͘k̡B̷̃̈́͐͝()Ljava/lang/String;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v82

    xor-int v86, v86, v82

    const v84, 0x1abe5f

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ä̴̢̺̜́̄̋̚͜ͅḻ̴̫̟̈͆͆̄̄̋̚͜P̧̖͓̩̙͎̭̻̱͗̃̄͗̄̌͋͝͝͝p͚̬͋̃͘͠t̶͖͕̯̝̻̰̭̱́͂̎̋͑̊̃̍͋͋̋̒̚͜͝͝K̸̸̸̩͈̮̎̾͋͐̀̏Kuą̸̶̟̱̭͚̲̱̦͈̺̺̎̿̂͗̎͋̂̚͜͠p̛͉͎̄͋̈̃̾̾̈́͘͜͝e̶̸̸̵̴̸̢̛̛͚̯̝̹̭͚͓̫̯̻͇̬͚͙̮̰͚͓̰͓̦̠̹̬̫̲̪̻̜͓͋̃͗́͒̅̉̂͗͊̂̀̏̇̋̂̔̋̋͗̾̂̂͘̚͜͜͜͝͝͝͝k̺͂u̸̶̧͙͆̑̕oe͝p̸̨̪͕̼̙̝̂̄̎͌̌͂̊̂̈̚͝͠Ķ͈͚͓̺̯̅͋̌k̛̥̹̱͙̔͒̔̚č̷̭̫͎͈͕̝͚̺̐̌͑̑͂̈́̈́̀͜a̸̢̡̗̯̼͗̌̎͗̾͒̾͒t̺̮̂̋̂͜͝()Ljava/lang/String;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v82

    xor-int v84, v84, v82

    const v85, 0x1ac625

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->e͕͎͉̰͈̫̹̺̯͇̥̤͊̌̃̂̌͌̎̏͊͐P̢̮k̫̊ỡ̸̧̼̥̙̖̭͂̂̎̅̑̚a̮̫̭ã̛̹̰͕͉̺̘̄͑̂̾̄̾̐͝a͈̼̿̈́a̱̼͑̋͗̍e͓͓̭͓̘̫͕̤̿͋̋̃̈̍̂͐̃̎͆͂͠͝a̸̭̯͙̙͌̌̅̐̈́̾̊͗̕̚͝p̴̶̴̸̸̷̸̧̧̡̡̗̺̫̦̱̭͓̘͉͋̄̋̀̊̄̑̿͌͑̈̆͌̅͗̚͘̚͘͝͝͝ḁB̛͇̭̎̋̍͑̈͠͠o͚ç̴̨̛̛̮̹̜̗̘̫̺̠̖̻̼̱̃́̆͊͒̌̑̃͜P͙̭̭̟̪̿̾̾͘c̺̭͕â̹͑̀h̞̘̾̋ȁ̴̸̛̛̭̗͈̗̯̥̭̫̥̀̈̎͌̚̚͝K̶̜͇̺̯̹̒̈́̕͠K̴p̴̷̷̸̧̧̻͓͕̦̠̅̿̌̌̆K̵̦̫̺̭̮̭̘̿͋̋͂͗̏́̔̂͘͝͝()Ljava/lang/String;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v82

    xor-int v85, v85, v82

    invoke-static/range {v83 .. v86}, Lcom/kashi/settings/view/BlurBackgroundImageView;->n̛͚͓̥͂K̸̮ö̭̎ç̸̷̮̫̗̫̰̰̍̄̚͠ä̷̷̜̪̘͈̫̯͚́͋͊̋̋͊͑̋͜͜B̘̺̯̒o̶̧̧̠̘͉̫̙̘̹͇̊͂̆̋̅ȅ̴̥̭̗̙̠͚̫̮̺̗̘͚͎̦̠̅͋͗͌̉́̂͐͑̆͆͘͜ã̶̷̢̛̰̪̱̯̗̫̰̙̜͙̼̫̲̼̫̯̫̲͉̗͗̾͒̈̑͊̎̏̃́̈̉̈́͋̊͘͝͝Ķ̸̴̜͎͚̗̘̀̽͑̾̿̂͌̅̄͗̚k̷̫͎a̗̎̄͌͂̃̚ḩ̷̭̭͕̥̇̀̈͑̅̈̀̄P̱͙͇̮͈̋́͜Ķ̧͉̹̹̯̦̪̹̃̆̄̂̈́̄̃͝͠aã̵̸̷̭̰̭͉̯̬͚̱̲͚̪͓̮̲͎̱́͒̀̂̆̂̈̿̃͊̄͆͋̈͗́̏̓̿̚͜͜͝͝ͅa͓a̼͋̅̈̂͋̍͝ȃ̧̲̫̩͘u̠̲̫̞͎̠̅̎͑̌̾̎̈ŭ(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v83

    move-object/from16 v7, v83

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̸̴̸̸̢̧̧̖̹̫̙̞̯̲̦̰̠̯̦͇͊͗͐̈́̑̌̌́̑̋̈́̌̍͌͗̿̾̾̍̑̋͋͝͠ļ̸̵̤̗͕̹̈̆̍̊̄̈́͘͝ţ̸̹l̮̫̈́̈́̃̂̌̂͝o̦̎̀͂͝a̵̷̵̴̶̸̷̧̡̩̫̫̖̺̹̮͓͎̥̬͓͎̐̌̽̂͌̈͊̉̀̈́̅̃̚̚̕͘̕͜͝p̢͈̈́̅K̺̘̮͓̺̘̑̂̂̌̉͘͝pK̸̶̨̙̘͉̱͖̑̋̄̄̍̌̿͘͜͠l̶̶̢͉̩͓̱̦̘̗̭͎͂̈̊͌̿̌̋͗̉͘ͅB̴̷̯̙̘̼͇̫̪̖̂̅͂̋uã̷̸̧̨̺̫̖̥̼̥̎͊̄̿̌͌̕͜͝P̜͓̹̋͘͜t̜̰̘̺̩͚̄͑̄̐Kã̸̺͓̗̈̃ò̷̴̂̌͜ļ̫̖̙̱̖̺͓̙̇̑̇͗̎̀̿̂̅̃̀̚̚n̛̛̤̖̂t̶̛̤͎͎̦̽̂̅͘ã̅(Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->a̵̷̧̧̘͓̭̦̤͜͝ų̶̸̧͙̯̯̫̠̦̗̖̘̦̙̈̎͐̈́͐̈́͗̚͜͝a̗̽̾̋̋̍̚ḽ̃͜͠ă̸̴̧̡̛̹̩̘̹̹̗̱̝͗̅͒̈̌́̕͝a̴̵̸̷̧͓̻̭̙̺̋̑͌͘͘͝ǒ̴̶͖̰̗̰̌̀͂̎̔͌́̅̀̅̂͘͠͝p̹l̶̘̦̭̩̮̂͜B̸̸̸̷̶̨̢̧̬̠͕̹̼͎̫̭̥̲̜̗͂͑͌͆̊̃́͗̃̐̈́̾͗͌̍͌̈̚͜͜͜͝͝͠p͈̭͕̄̅̈̚͝a̷̛Ba̸̛̦͈̫͋̄͠á̸̶̢͇͚̼̺͌̌͗̾P̸̶ä̶̷̸̛̼̹͉̯̦̪̦̱͖̆̌̕͠Ķ̸̸̛̥̠̭̱̯̗̲̥̭̗̾͋͊͑̿̌̌̀̄͋̾͋̌̋̀͌͌͗͜͝kp̛̫̖͕̥̿͆̂͝a̶̧̰͎͕̹̦̙͋́̿̚͜͝u̖̍̈̋c̜͕̗̫̈̋̄(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-static/range {v2 .. v9}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->n̷̥̻̎̔̐͝h̴̭̹͈͎͗́̂͘͜͜͜o̯̺̹͙̠͇̖͝B̴̵̸̸̸͉͎͇͙̺̹̱̮̋̆̄͗̋̍̈̀̔̍̈͝K̷̦͓̗͈̖̹̊̑̏̂͑́́̀͗͌̏̾̚͝͠ą̷̸̡̡̹̦̻̻̘̭̺̆̑̔̑͋̈́̅̃͐̑͊͑̀̈́̌͌̃̀̔̋̅̿̚̚͘͜͝͝ͅK̨͕̥̫͋̎̄̚l̻͠ư̪̤͈̋̌̎̾̃̒̔̏̂̋͜͜ͅp̴̩͎͗̌͘p̛̗̪͚͗̂̑̋͌ȧ̵͕̺͘̚K̵̸̶̰͕̪̤̐̃̉͗͑̆͊͑̚ͅḧ̛͙͈͎̼̩̩̺͕̭̩͊̎̏̌̆̌̎̄̈͜nha̶͋̑̀ȧ̧̩̙̯̅̂͑̃͗̍͑͊͜k̢̢̛̛̛̼̺̩̺͎̼̦̄̂͋̃͋͌͐̈́͘͜͝͝K̸̷̸̨͚̘̠͚͙͎͚͚̱̘̺̼̲̈͂̃̔̈́̍̋͒͌̎͒͋̋͋̃̃͘͝͠(Ljava/lang/Object;Ljava/lang/Object;IIIIII)V

    add-int/lit8 v43, v5, -0x1

    add-int/lit8 v25, v9, -0x1

    mul-int v41, v5, v9

    add-int v4, v52, v52

    add-int/lit8 v15, v4, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move/from16 v0, v41

    new-array v10, v0, [I

    invoke-static {v5, v9}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->B̵̸̨̢̧̧̛͉̹̝̫͈̤̬̭̺̙̫̭̗̃̀́͌͒͂̃̈͒͗͊̌͑͋̄͋̚͜͜͝͝upP̢̧̥͖̟͚͙̞̲̮͈͎͈̺͉̈͌̃̄͗͗̎̿̈́̆͋̎̿͌͌̈͊͜͜͠ţ̷̮͚̺̯͎̘͕̦̰̫̞̯̗͚̌̑̎̿͘͜͜p̴̫͉̼̫͖̮͖̭̮̟̗̫̫͓̤͎̯͑̅̌͒͐͗̂͒́́̌͌̌̿̑͗̆̈́̃͑̂̂̃͌͒̂̚̕͜ͅṋ͎͋Kȩ̵̷̷̱̫̪̭̫̫͚̮̦͎̥͉̘̭̼̫̠̯͋̈́̎͐̋̋̿͌͋̎̌͊̌̈́̂̑́̌̆̔͘͘͘̕̚͜͝͝͝a̢̞̺͓̅͐̏̂̈́̍́̌n̛̼͈̖̥̺̹̲͈͇̯͑̋̈͋̿́̓͒̋͋̂̽́̑̂̅̈́͌̚͘͜͜͠h͈̫̄̎͗͜á̢̪͓̗̻̍̚cl̃ǒ̟̰̫ͅn̡̧̡̦̭̥̱͉͈͉͕͒̚͘e(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v40, v0

    add-int/lit8 v4, v15, 0x1

    shr-int/lit8 v16, v4, 0x1

    mul-int v16, v16, v16

    move/from16 v0, v16

    mul-int/lit16 v4, v0, 0x100

    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/16 v26, 0x0

    :goto_125
    move/from16 v0, v16

    mul-int/lit16 v4, v0, 0x100

    move/from16 v0, v26

    if-ge v0, v4, :cond_134

    div-int v4, v26, v16

    aput v4, v17, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_125

    :cond_134
    const/16 v46, 0x0

    move/from16 v48, v46

    const/4 v4, 0x3

    filled-new-array {v15, v4}, [I

    move-result-object v4

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->K̷̢̃ṋ̸̷̈̆ç̴̢̧̧͙̦͓͉͈̫͉̹͎̟̺̱̲͑̔́̀͂͗̂̾̑̈́͂̾̍́̿̅͘͜͝͝K̹̼̔̊̈́͝o͝pȩ͚̄̉ő̸̗̃̋ţ̴̸̛̙͚̘̋̎͋́͑͒̅͜͝͝p̫̗̀͒͒̎͜K̸͓̥͇̫̥̜̱̠̉̎̎̐͑̎͌͠ǫ̵̶̛̯̯̤͕̪̦̼̓̒̄̑͗͑͜͝ó̼͚̻͗͗͗͋͜p͚̫̮̱̄̅̈̏̀̿͑͝e̸̵̦̤͗͗̋oň̂̌͝l̷̘͉̉͌́̃̽̅͜t́̈P̸̥̘̼̈̅̈̑̾͝a̴̷̸̴͕̗̻̦͎̗̺̯̟͓̯̺͑͒̂́͐̌̎̂̾͑̑͘p̛̩̈́͑͝ä̢̫̱͙̗̟̫̫́̂͜͝e̠̎͝͝c̢̖̻͓̅ṓ̴͓͜ȃ̸̸̛̜̜̯̀͒̿̂̈̄͘͜ä̫̗̥̯͙̹́̂̉͗̾́̋̅͋̂͝k͓͝P̚()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ą̛͓̭̦̥͈̻̰̌͌ä͎͈͈́̋͜͜͝n̷̴̨̙̗̭̺͚̫̱̭̬͈̉̃̂̔̈͗̏͋̋͜û͌ķ͓a̴̴̧͙̟̘͋͌̔a̫̕o̢͈̖͚͕͉͒̏a̛͎̯̘͎͑͋̆̔͊͝l̸̥̩̬͎̃̄̾̈͌̍̂̌̈́̈͝ò͈̦K̺͙̬͚̫̹̈̈͋̾͊͝u̴͌̽͘ą̵̷̵̶̴̧̬͉͎́̎͆̎̿͝o͌͗̏Ķ̴̨͓͈̫̯̙̘̱̭̼̫̱̗̃̈̌̾̑͌͗̌͘͜͠t̸̢͠P̵̺̗̃h͚̃B̸n̸̸̸̶̖͉͓͎̩̙͑̂͌͗̒̄̂͑̚͝k̸̤͈͇͚̋p̶̷̧̧̻͙̼̺̝̱̪̭̯͎̥̯̪̲̝̗̋̀̈́͌͒͆̃̑͋̄̑͋͋̓̈̕͜͠͝K̹͗͗͌̒̈ứ̴̴̴̵̷̧̧̛̰͓͎̺̺͖̦͎̦̖̻̺̻̈̌͌͗̂͒̈́̌̈́̂͌̕͜͝͠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [[I

    add-int/lit8 v29, v52, 0x1

    const/16 v45, 0x0

    :goto_14b
    move/from16 v0, v45

    if-ge v0, v9, :cond_274

    const/4 v13, 0x0

    move/from16 v23, v13

    move/from16 v33, v13

    move v12, v13

    move/from16 v22, v13

    move/from16 v32, v13

    move v11, v13

    move/from16 v21, v13

    move/from16 v31, v13

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v26, v0

    :goto_163
    move/from16 v0, v26

    move/from16 v1, v52

    if-gt v0, v1, :cond_1d4

    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-static {v0, v4}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->B̵̸̨̢̧̧̛͉̹̝̫͈̤̬̭̺̙̫̭̗̃̀́͌͒͂̃̈͒͗͊̌͑͋̄͋̚͜͜͝͝upP̢̧̥͖̟͚͙̞̲̮͈͎͈̺͉̈͌̃̄͗͗̎̿̈́̆͋̎̿͌͌̈͊͜͜͠ţ̷̮͚̺̯͎̘͕̦̰̫̞̯̗͚̌̑̎̿͘͜͜p̴̫͉̼̫͖̮͖̭̮̟̗̫̫͓̤͎̯͑̅̌͒͐͗̂͒́́̌͌̌̿̑͗̆̈́̃͑̂̂̃͌͒̂̚̕͜ͅṋ͎͋Kȩ̵̷̷̱̫̪̭̫̫͚̮̦͎̥͉̘̭̼̫̠̯͋̈́̎͐̋̋̿͌͋̎̌͊̌̈́̂̑́̌̆̔͘͘͘̕̚͜͝͝͝a̢̞̺͓̅͐̏̂̈́̍́̌n̛̼͈̖̥̺̹̲͈͇̯͑̋̈͋̿́̓͒̋͋̂̽́̑̂̅̈́͌̚͘͜͜͠h͈̫̄̎͗͜á̢̪͓̗̻̍̚cl̃ǒ̟̰̫ͅn̡̧̡̦̭̥̱͉͈͉͕͒̚͘e(II)I

    move-result v4

    move/from16 v0, v43

    invoke-static {v0, v4}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->k͎̐ơ̵̧̜̔̑̆̈K̸̸̢̨͉̯̫͎̫̭̮̘̠̞̋̾͂̑̎̈̌͌K̷̠̗̗͎͉̫̔͌̆̆̂̾͌̋̈́̈́̚͜ö̸̵̲̯̺͙̗͈̝̼͕͎̼͈́̔̾̃̌͂̎̑̚͘͝͝a̲ù͒ȩ̢̧̫̼̑̌̍̾K̑ü̶̙͈̮̫̃̇͗̾̈́͘͜P̷̴̷̴̡̧̛̛̛̬̥͉͌͌̑̈́̆͒͗̎̀ņ̸̶̸̻͈̩̥̻̩̻̃̂̀͌̈̋͋̅̆̚̚͜͜͜͝P̸̸̸̸̨̛̯͎͈̱̫̟̘̩̯̟̋̂͒̎͐̈̌͋͂͆̌̏͒̿̂͋̋̂̈́̿̑̾̚ͅć̵͙͙̙̫͓̯̙̦͒͂̏̎͌͝͠͝͝Ķ̫̝̗̅̎̂̚͝c̷̖̤̈́ą̵͗͐eư̛͓̲̼̮̯̗͙̭̘̱̯͖̖̞̟̩̯̫̭̈́͌͒̌̌̾́͘͜h̼̿̂ō̴͕͎̼̤͈̗͓̹̑̇͐̒͘n̯̾̑͝(II)I

    move-result v4

    add-int v4, v4, v46

    aget v27, v3, v4

    add-int v4, v26, v52

    aget-object v34, v35, v4

    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    const/4 v4, 0x2

    move/from16 v0, v27

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    invoke-static/range {v26 .. v26}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->B̸̴̸̰͈̠̻͈̰̌̈̾̊̑̋͗̎̌̌͘͝P̸̍̚͘c̴̥̼͖̲̯̯̋̋͑͑̋̋͑̂̎̌͑͌̎̚͘͘͜͜͝͝͝o̢̗͕̗͇͕͎̘̥̞͈͚͚̫̙̗̥̭͉̩̖͎͎̾͌̔͗͌̌̋͗̍̏͋̈̏͊̽͘ͅĥ̷̸̸̴̢̡̛̝̘͚̺̹̫̫̩̭̤͚̙̭̖͎̦͚́͗͌̑͌͒̂̄̔̈̐͗͌͌̅̋̋̑́͜͝͝c̛̱̆͘͜͠a̴̸Ǩ̶͉͚̠͎͈̅͌̌̋̚͠K̭̭̔̏̋e̸̍͑̆̑k̵̸̲̺̹̱͇̫̺̱̗̫͕̲̪͓̫̘̂̌̂͌̂̑̀͑̏̎̾̃͌̎̂̀̈̈̒̈́͘͘̕͜͝͠͝p̧̛̭̪̑͋͑̆͜u̸̫̭͉̫̲͎̗̎̈́͋̋̉̃̃̽͋̽a̴̸̤̍̌̈́l̲̥͙͉͚̗̈́̌͗͝͝ͅö͈̘̙̖̠̺͈̋̌͜c̦̹̪̮̦̙̑̿̇́͠(I)I

    move-result v4

    sub-int v30, v29, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    mul-int v4, v4, v30

    add-int v33, v33, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    mul-int v4, v4, v30

    add-int v23, v23, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    mul-int v4, v4, v30

    add-int/2addr v13, v4

    if-lez v26, :cond_1c5

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    :goto_1c2
    add-int/lit8 v26, v26, 0x1

    goto :goto_163

    :cond_1c5
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_1c2

    :cond_1d4
    move/from16 v36, v52

    const/16 v44, 0x0

    :goto_1d8
    move/from16 v0, v44

    if-ge v0, v5, :cond_26e

    aget v4, v17, v33

    aput v4, v28, v46

    aget v4, v17, v23

    aput v4, v20, v46

    aget v4, v17, v13

    aput v4, v10, v46

    sub-int v33, v33, v32

    sub-int v23, v23, v22

    sub-int/2addr v13, v12

    sub-int v4, v36, v52

    add-int v37, v4, v15

    rem-int v4, v37, v15

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    if-nez v45, :cond_211

    add-int v4, v44, v52

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v43

    invoke-static {v4, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->k͎̐ơ̵̧̜̔̑̆̈K̸̸̢̨͉̯̫͎̫̭̮̘̠̞̋̾͂̑̎̈̌͌K̷̠̗̗͎͉̫̔͌̆̆̂̾͌̋̈́̈́̚͜ö̸̵̲̯̺͙̗͈̝̼͕͎̼͈́̔̾̃̌͂̎̑̚͘͝͝a̲ù͒ȩ̢̧̫̼̑̌̍̾K̑ü̶̙͈̮̫̃̇͗̾̈́͘͜P̷̴̷̴̡̧̛̛̛̬̥͉͌͌̑̈́̆͒͗̎̀ņ̸̶̸̻͈̩̥̻̩̻̃̂̀͌̈̋͋̅̆̚̚͜͜͜͝P̸̸̸̸̨̛̯͎͈̱̫̟̘̩̯̟̋̂͒̎͐̈̌͋͂͆̌̏͒̿̂͋̋̂̈́̿̑̾̚ͅć̵͙͙̙̫͓̯̙̦͒͂̏̎͌͝͠͝͝Ķ̫̝̗̅̎̂̚͝c̷̖̤̈́ą̵͗͐eư̛͓̲̼̮̯̗͙̭̘̱̯͖̖̞̟̩̯̫̭̈́͌͒̌̌̾́͘͜h̼̿̂ō̴͕͎̼̤͈̗͓̹̑̇͐̒͘n̯̾̑͝(II)I

    move-result v4

    aput v4, v40, v44

    :cond_211
    aget v4, v40, v44

    add-int v4, v4, v48

    aget v27, v3, v4

    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v27

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    const/4 v4, 0x2

    move/from16 v0, v27

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    add-int v33, v33, v31

    add-int v23, v23, v21

    add-int/2addr v13, v11

    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v15

    rem-int v4, v36, v15

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    add-int/lit8 v46, v46, 0x1

    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_1d8

    :cond_26e
    add-int v48, v48, v5

    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_14b

    :cond_274
    const/16 v44, 0x0

    :goto_276
    move/from16 v0, v44

    if-ge v0, v5, :cond_38e

    const/4 v13, 0x0

    move/from16 v23, v13

    move/from16 v33, v13

    move v12, v13

    move/from16 v22, v13

    move/from16 v32, v13

    move v11, v13

    move/from16 v21, v13

    move/from16 v31, v13

    move/from16 v0, v52

    neg-int v4, v0

    mul-int v47, v4, v5

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v26, v0

    :goto_293
    move/from16 v0, v26

    move/from16 v1, v52

    if-gt v0, v1, :cond_2f6

    const/4 v4, 0x0

    move/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->B̵̸̨̢̧̧̛͉̹̝̫͈̤̬̭̺̙̫̭̗̃̀́͌͒͂̃̈͒͗͊̌͑͋̄͋̚͜͜͝͝upP̢̧̥͖̟͚͙̞̲̮͈͎͈̺͉̈͌̃̄͗͗̎̿̈́̆͋̎̿͌͌̈͊͜͜͠ţ̷̮͚̺̯͎̘͕̦̰̫̞̯̗͚̌̑̎̿͘͜͜p̴̫͉̼̫͖̮͖̭̮̟̗̫̫͓̤͎̯͑̅̌͒͐͗̂͒́́̌͌̌̿̑͗̆̈́̃͑̂̂̃͌͒̂̚̕͜ͅṋ͎͋Kȩ̵̷̷̱̫̪̭̫̫͚̮̦͎̥͉̘̭̼̫̠̯͋̈́̎͐̋̋̿͌͋̎̌͊̌̈́̂̑́̌̆̔͘͘͘̕̚͜͝͝͝a̢̞̺͓̅͐̏̂̈́̍́̌n̛̼͈̖̥̺̹̲͈͇̯͑̋̈͋̿́̓͒̋͋̂̽́̑̂̅̈́͌̚͘͜͜͠h͈̫̄̎͗͜á̢̪͓̗̻̍̚cl̃ǒ̟̰̫ͅn̡̧̡̦̭̥̱͉͈͉͕͒̚͘e(II)I

    move-result v4

    add-int v46, v4, v44

    add-int v4, v26, v52

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v6, v28, v46

    aput v6, v34, v4

    const/4 v4, 0x1

    aget v6, v20, v46

    aput v6, v34, v4

    const/4 v4, 0x2

    aget v6, v10, v46

    aput v6, v34, v4

    invoke-static/range {v26 .. v26}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->B̸̴̸̰͈̠̻͈̰̌̈̾̊̑̋͗̎̌̌͘͝P̸̍̚͘c̴̥̼͖̲̯̯̋̋͑͑̋̋͑̂̎̌͑͌̎̚͘͘͜͜͝͝͝o̢̗͕̗͇͕͎̘̥̞͈͚͚̫̙̗̥̭͉̩̖͎͎̾͌̔͗͌̌̋͗̍̏͋̈̏͊̽͘ͅĥ̷̸̸̴̢̡̛̝̘͚̺̹̫̫̩̭̤͚̙̭̖͎̦͚́͗͌̑͌͒̂̄̔̈̐͗͌͌̅̋̋̑́͜͝͝c̛̱̆͘͜͠a̴̸Ǩ̶͉͚̠͎͈̅͌̌̋̚͠K̭̭̔̏̋e̸̍͑̆̑k̵̸̲̺̹̱͇̫̺̱̗̫͕̲̪͓̫̘̂̌̂͌̂̑̀͑̏̎̾̃͌̎̂̀̈̈̒̈́͘͘̕͜͝͠͝p̧̛̭̪̑͋͑̆͜u̸̫̭͉̫̲͎̗̎̈́͋̋̉̃̃̽͋̽a̴̸̤̍̌̈́l̲̥͙͉͚̗̈́̌͗͝͝ͅö͈̘̙̖̠̺͈̋̌͜c̦̹̪̮̦̙̑̿̇́͠(I)I

    move-result v4

    sub-int v30, v29, v4

    aget v4, v28, v46

    mul-int v4, v4, v30

    add-int v33, v33, v4

    aget v4, v20, v46

    mul-int v4, v4, v30

    add-int v23, v23, v4

    aget v4, v10, v46

    mul-int v4, v4, v30

    add-int/2addr v13, v4

    if-lez v26, :cond_2e7

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    :goto_2dc
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_2e4

    add-int v47, v47, v5

    :cond_2e4
    add-int/lit8 v26, v26, 0x1

    goto :goto_293

    :cond_2e7
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_2dc

    :cond_2f6
    move/from16 v46, v44

    move/from16 v36, v52

    const/16 v45, 0x0

    :goto_2fc
    move/from16 v0, v45

    if-ge v0, v9, :cond_38a

    const/high16 v4, -0x1000000

    aget v6, v3, v46

    and-int/2addr v4, v6

    aget v6, v17, v33

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v17, v23

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v17, v13

    or-int/2addr v4, v6

    aput v4, v3, v46

    sub-int v33, v33, v32

    sub-int v23, v23, v22

    sub-int/2addr v13, v12

    sub-int v4, v36, v52

    add-int v37, v4, v15

    rem-int v4, v37, v15

    aget-object v34, v35, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    if-nez v44, :cond_33c

    add-int v4, v45, v29

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->k͎̐ơ̵̧̜̔̑̆̈K̸̸̢̨͉̯̫͎̫̭̮̘̠̞̋̾͂̑̎̈̌͌K̷̠̗̗͎͉̫̔͌̆̆̂̾͌̋̈́̈́̚͜ö̸̵̲̯̺͙̗͈̝̼͕͎̼͈́̔̾̃̌͂̎̑̚͘͝͝a̲ù͒ȩ̢̧̫̼̑̌̍̾K̑ü̶̙͈̮̫̃̇͗̾̈́͘͜P̷̴̷̴̡̧̛̛̛̬̥͉͌͌̑̈́̆͒͗̎̀ņ̸̶̸̻͈̩̥̻̩̻̃̂̀͌̈̋͋̅̆̚̚͜͜͜͝P̸̸̸̸̨̛̯͎͈̱̫̟̘̩̯̟̋̂͒̎͐̈̌͋͂͆̌̏͒̿̂͋̋̂̈́̿̑̾̚ͅć̵͙͙̙̫͓̯̙̦͒͂̏̎͌͝͠͝͝Ķ̫̝̗̅̎̂̚͝c̷̖̤̈́ą̵͗͐eư̛͓̲̼̮̯̗͙̭̘̱̯͖̖̞̟̩̯̫̭̈́͌͒̌̌̾́͘͜h̼̿̂ō̴͕͎̼̤͈̗͓̹̑̇͐̒͘n̯̾̑͝(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v40, v45

    :cond_33c
    aget v4, v40, v45

    add-int v27, v44, v4

    const/4 v4, 0x0

    aget v6, v28, v27

    aput v6, v34, v4

    const/4 v4, 0x1

    aget v6, v20, v27

    aput v6, v34, v4

    const/4 v4, 0x2

    aget v6, v10, v27

    aput v6, v34, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    add-int v33, v33, v31

    add-int v23, v23, v21

    add-int/2addr v13, v11

    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v15

    aget-object v34, v35, v36

    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v32, v32, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v22, v22, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v31, v31, v4

    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v21, v21, v4

    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    add-int v46, v46, v5

    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_2fc

    :cond_38a
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_276

    :cond_38e
    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v73

    const v76, 0x1aad43

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->l̶̛̖̭̹̭̖̂͌͜p̧̢̧̛̘̮̭̐̎̇́̌͑̑͂̅̌́͝c̤͌ö̷̸̭̑ṕ̃o̰B͎̟̭̻̗̈̈́ca̋ǎ̴̧̛͎̻̻̗̺̺̩͙͚̭̅̆͑̈́̂̋̎̿̀̃͒͘͜͜͝o̴̺͉̫̝̭̤̎̈́́͑̎c͎͓̱̭̤̪͂͗̇͑̑̋̄̅̋͗â̴̴̢̛̛͕̖̹̫̤͈̰̜̺̩̏̒̂̔̽̐̆͗͌̎̈́͗͘͝K̥̙̮͈̗̫͉̓͋̃̚͝K̶̠̥̯̮͓̄̾͌̋̔̋̋͝͝e̢̥̱̾́͌̾̉͝ͅP̸̷̸̴̷̸̸̨̧̨̧̛̤̺̘̼̹̩̪͚͎̱̭̫̘̗̲̻͕̝͚͋͆͗̋̌̄̆͌̈̀͊͐̅͑̃̒͗͘͜͜͜͠͝͝͠kl̸̨̮̯̟͎̱̺̫̈́̀͘͝ca̴̛͈̓͝à͈͈͉̈̿p̷͋̌̋̿tā̶̢̨̛̪͎̭̟͉͑̿͂̑͐͘̚͝͝()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v72

    xor-int v76, v76, v72

    const v74, 0x1ab2e7

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ca̵͖̺͈̲̖̖̽̋͑u̵͙̯̬̫̪̮͎͎͖͋̇̂̃̐͌̿̋̎͋̈́̋̚͝͠Ķ̶̧̛̛̛̲̰͉̙̫͓̭͓̂̎̂̿͊̇͌͌̃̃̅͊̋̍̾̅̎͌̌͌̀̂́̿̌͜p̵̶̶̨̧̢̛̛͙͙͚͉̗̘͚̮̟͙͉͌̐̿͑̔̎͊̈́͋̈͘̚͜͜͜͜͜ǒ̷̸̯̫̩̘̠͗̂̋̈́̋̚͜ū̸̷̸̸̸̢̢͙͎̭͈͕̥̘̗͕͓͗͂̿̂̂̅̈͊̋̍̈́̎̑̌͝͝K̸̷̢̧̧̮̜̗̭̮͚͚̫̰̾͗̆͌ą̸̷̴̸̵̸̧̢̨͚̖̭̯͙̻̱̭̪̼̱̹͎͚̖̗̩̹̺̦͙̗̥̲̯̥̮͕͈̃͌͗̾̅͒̾̏̀̾̂̅̏̂̅̍͐̔̀̌̈́̚͝͝k̫̻͗̎ų̷̶̢͙̮̲͕̼̹̗͉̜͙̤̥̥̂̿̑̅̈̌͐̃͋̑̐̾̋̈̒̄͒͌͘͜͜͠͠p͈ẖ()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v72

    xor-int v74, v74, v72

    const v75, 0x1ac9a5

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ȩ̸̧̧̮͎̦̭̦̦̪͌̆͐a̸̷̡̫̼̻̗̙̖̼̗̮̯͐̆̌̽́̀̌̈̿̃̈̎̂̋̎͌͝͝ō̗͗a̴̷̢̨̧͕̗̬̱̤̔̎̄̃̌̈͋̈̑͝B̨̼͈͇̼̭͚̼͌̋̿͌̏͋̐̓̌͘ä̸̵̵̸̸̧̢̢̧̨̛̮̮̘̫̥͈̹̹̜͎̫̤̮̫̘̟̱͕͂̌̀̌̑̀̌̃̈̿͒̆̈́͑̀͂̋̾̌͘̕͜͝͝͝k̛̬̰̭͈͗͂͐̈́̾͂̿̏̃̃͝ļ̶̫̺̮̺͕̩͚̮̫̦͋́͐̂̏̌̚͠͠ǒ̷̢̫͚̼͓̯̼̺̮̮͗̌̃͌͜͠n̸̫a̴̸̼͊͋̒̂͐̂̈́̍͜͜͝͝K͐͠t̶̛̲̲̯̱̼̯̃͗̃͗̍͜͝͝͝͝c̸̡̞̺̱͋́͂k̂̽̐n̸̶̰͗̆̚͜p̧͓̥̩̠̞̐͆̈̌͌͌̚͘Ǩ͚̄ōh̻̯̗̍̋͋͐͌̈́̚͘()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v72

    xor-int v75, v75, v72

    invoke-static/range {v73 .. v76}, Lcom/kashi/settings/view/BlurBackgroundImageView;->n̛͚͓̥͂K̸̮ö̭̎ç̸̷̮̫̗̫̰̰̍̄̚͠ä̷̷̜̪̘͈̫̯͚́͋͊̋̋͊͑̋͜͜B̘̺̯̒o̶̧̧̠̘͉̫̙̘̹͇̊͂̆̋̅ȅ̴̥̭̗̙̠͚̫̮̺̗̘͚͎̦̠̅͋͗͌̉́̂͐͑̆͆͘͜ã̶̷̢̛̰̪̱̯̗̫̰̙̜͙̼̫̲̼̫̯̫̲͉̗͗̾͒̈̑͊̎̏̃́̈̉̈́͋̊͘͝͝Ķ̸̴̜͎͚̗̘̀̽͑̾̿̂͌̅̄͗̚k̷̫͎a̗̎̄͌͂̃̚ḩ̷̭̭͕̥̇̀̈͑̅̈̀̄P̱͙͇̮͈̋́͜Ķ̧͉̹̹̯̦̪̹̃̆̄̂̈́̄̃͝͠aã̵̸̷̭̰̭͉̯̬͚̱̲͚̪͓̮̲͎̱́͒̀̂̆̂̈̿̃͊̄͆͋̈͗́̏̓̿̚͜͜͝͝ͅa͓a̼͋̅̈̂͋̍͝ȃ̧̲̫̩͘u̠̲̫̞͎̠̅̎͑̌̾̎̈ŭ(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v73

    move-object/from16 v4, v73

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v5}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̸̴̸̸̢̧̧̖̹̫̙̞̯̲̦̰̠̯̦͇͊͗͐̈́̑̌̌́̑̋̈́̌̍͌͗̿̾̾̍̑̋͋͝͠ļ̸̵̤̗͕̹̈̆̍̊̄̈́͘͝ţ̸̹l̮̫̈́̈́̃̂̌̂͝o̦̎̀͂͝a̵̷̵̴̶̸̷̧̡̩̫̫̖̺̹̮͓͎̥̬͓͎̐̌̽̂͌̈͊̉̀̈́̅̃̚̚̕͘̕͜͝p̢͈̈́̅K̺̘̮͓̺̘̑̂̂̌̉͘͝pK̸̶̨̙̘͉̱͖̑̋̄̄̍̌̿͘͜͠l̶̶̢͉̩͓̱̦̘̗̭͎͂̈̊͌̿̌̋͗̉͘ͅB̴̷̯̙̘̼͇̫̪̖̂̅͂̋uã̷̸̧̨̺̫̖̥̼̥̎͊̄̿̌͌̕͜͝P̜͓̹̋͘͜t̜̰̘̺̩͚̄͑̄̐Kã̸̺͓̗̈̃ò̷̴̂̌͜ļ̫̖̙̱̖̺͓̙̇̑̇͗̎̀̿̂̅̃̀̚̚n̛̛̤̖̂t̶̛̤͎͎̦̽̂̅͘ã̅(Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v66

    const v69, 0x1aa7fe

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̛͙͕͚̺͎͚̫̋̑͗̎̅ḩ̟͌͂̃͜B̋ȏ̗͚̀̎͘P̺l̾̉͠͝p͇̥â̸̸̶̸̧̛̛̩͈̹̗͕͉̦̤̦̹̝̤̗̺̘͌̔̔̆̆̑͑̋̿͑̒̂̂̌̿̈̈́̒͋̌̅͋̋͘̚͝͠͠aê̸̶̷̸̫̥̥̮̭̗̫͚̮̭̼͎̩͙̂̃͊̿̅̌͂̏̚͘͝͠a̴̡̧̢̛̛͙̫̥͉̗͎̻̯͚͓̭͚̹̫̼̮̭͉̹̙͉͚͎̭̹̾͂́͆̽̅̏̾͗͐̌̑͑́̂̊̑̀͗̍̃̀́͘̚̚͜͜͝ȩ̷̷͙̭͉̺̠̫̦̯͑͌͋̏̔̌̑̿͠͠k̸̊a̶̷̢̧̛̦̯̗͚̠̻͈̋͑̏͑̑́̾̈̚͜͝K̮͉̘̻̫͎̋́͌͊̑p̸̶͕̹̹͇̅̈́̏͋̈́c̷̷̸̴͓͕͚̤̹̓̂̅̀̅l̷̷͕̽͋̿̔̌a̧͠n̮u̖̐̑̚ṋ̶̛ơ̚()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v65

    xor-int v69, v69, v65

    const v67, 0x1abe18

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->h̴̢̺̫̲̮̅͂̈́̄̐͘a̷̷̢̫̲̩͖̫̖̥͋̈́̈́̂̅͑͝ḩ̶̷̥͎̯͚̂̌̋̂͘͜͠͝k̼͊B̴̸̸̷̶̶̧̧͙̯̭̥̙̭̜̘̬̤̱̯̮̱͌̊̈̾͋͋̃̂̈̌̔̄̾̋̈́̊̚͜͝K̸̴̸̟͓̤͉̰͑̌̚h̺͓͋͌̄č̘̗̩̿̀͌̐́͊̈́͆̈́̋͘e̥ç͉̖͓̔̅͜ͅK̋̍͠ņ̸̧̧̧̲͕̙̗͇͉́̑̈́̉̃̋̈́̀Ba̰͋KB̸̧̛̺̖̔͊̾́̈̈́͝ͅK̞̭̑̄̆͗͌B̡̼̄̈́ķ̸̤̖͈̠͈͉̘̝̫̭̺́̌͒̊͌̏̀̎̔͌͐͝o̷̢͋̎̌̋̌̇̚͜n̺̘͒̂͠ē̫k̵̷̷̘̗̲̜̼̱̯̇͗͊̈̌̚͝͝l̴̮̫̰̭͈̤̻̱͌͑̊͂͗̏p̶͙̥̭͕̙̎̐͑̍̓̏͘͠B̥̼̪͉͖̺̹̒͌̋()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v65

    xor-int v67, v67, v65

    const v68, 0x1ac5e0

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ő͚͇͚͚͎͎̀͌̂̑̐̃͝B̢̺̭͎͙͌̂̈̋̋͜͝͝o̡͓͚̱͚̫̦͈̱͗͑͗̂̐̾͌̀͘̚͜͜͜͠l̢͎̼̭͈̞͚͚͌̍̀̈͌̋͗͘͘͝ͅoaĥǎ̮̰̟̙a͎̫̎̀̄h͎a̸̜ä̶̸̡̫͚͎̙̱̃͊̈́͋͗̂͂͜͝͠B̸̴̧͈̏̆̋̂̍́͘͠ớ̸̷̸̡̧͓̙̮͚̮̗͇̦̺̪̠̩̤̉̌͗̃̃̄̃͊̋̍̑́̽̐̈̿͑͜͝ţ̼͕̺̫̃͂̈́̄́̌̕ņ̸̸̴̬̭̯̗͉̭̫̲̮̗͎̽̂̃́̎̎̐̂͗̌͜͝͠l̸̙͙̦͑͘̚ų̱͉̚l̢̖͎̥͎̮̀̄́̒̿͗̐͠c̸͎͈̤̗̱̼̋̂̊͘͝ț̈͑̎̓͜a̧̭B̷̸̴̶̨̢̩̭̗̘̗̗̫͋̿̈́̉̾̚͜l͚͋Ḵ̥̰̍͝K̛̛̭̤͕͗͌͐͜()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v65

    xor-int v68, v68, v65

    invoke-static/range {v66 .. v69}, Lcom/kashi/settings/view/BlurBackgroundImageView;->a̸̢̨̢̝̮͚̙͙͎͌͐͌̀̑̓̃̋͜͝a̛̱̯̭̱͉̻̎́̅͌o̗̙̘̮̩̫̫͒̾͋͜͜p͓̘̗̠̘͈̥͕̯̾̃̋̋͜a̰͜ų̛̯̤͓̉̐̈́̀͘̕͘͜͜ớ̛̹K̨͎̫̹͓̺͕͚͚͚̫̲̯̙̰̈́̿̎̔̂͊̃͑̈̕͜ͅa̷̸̶͎̺̘̘͎͋̆̊̃̃̅K̷̸̢̛̖̫͈̙̹̫̪̭̤̥͚̱͉͎̗͈̪͉̦̺̩̫̈́̈̉̈̋͌̃̐̈̽̾̑͆͂̂̓̌͗̿̌̚̚͜͝͝͠͠͝͠oK͚̈́̅c̺̔ǎ̝̖͐ò̸̸̠͓̹̠̈͒͂̾̆͝͝ĥ̷̴̨̖̥̩̱̫̖̞̩̘̖̱͙̫̭͓͊́̄̔͗̂͌͗͗̚͜͝͝K̢̮̯̘̹̂̈́́̎͊͂͜͝͠l̶̢̢̢̛̝͎̥̭̬͚̇̀̃̋͌͘̕Ķ̛̙̺̘̭̭̘͎̇̎̏̍͋̐̕͜͝͝͠P(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v7, v66

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̸̴̸̸̢̧̧̖̹̫̙̞̯̲̦̰̠̯̦͇͊͗͐̈́̑̌̌́̑̋̈́̌̍͌͗̿̾̾̍̑̋͋͝͠ļ̸̵̤̗͕̹̈̆̍̊̄̈́͘͝ţ̸̹l̮̫̈́̈́̃̂̌̂͝o̦̎̀͂͝a̵̷̵̴̶̸̷̧̡̩̫̫̖̺̹̮͓͎̥̬͓͎̐̌̽̂͌̈͊̉̀̈́̅̃̚̚̕͘̕͜͝p̢͈̈́̅K̺̘̮͓̺̘̑̂̂̌̉͘͝pK̸̶̨̙̘͉̱͖̑̋̄̄̍̌̿͘͜͠l̶̶̢͉̩͓̱̦̘̗̭͎͂̈̊͌̿̌̋͗̉͘ͅB̴̷̯̙̘̼͇̫̪̖̂̅͂̋uã̷̸̧̨̺̫̖̥̼̥̎͊̄̿̌͌̕͜͝P̜͓̹̋͘͜t̜̰̘̺̩͚̄͑̄̐Kã̸̺͓̗̈̃ò̷̴̂̌͜ļ̫̖̙̱̖̺͓̙̇̑̇͗̎̀̿̂̅̃̀̚̚n̛̛̤̖̂t̶̛̤͎͎̦̽̂̅͘ã̅(Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v73

    const v76, 0x1ab006

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->a̮͂̈́̚ä́̿B̢̭̗̋p͌͌t̂B̌̃a̟͋́̅̈̓͜͝u̢͕͚̾̆͌̈́͗â̩̩̩̫̌͜ǩ̴̢̲͉͝â̧̆̌̏̅̋̂̚͝a̍͝n͚̿͠Ķ̶̨̭̘̫͈̩̬̺̥̭͚̯͇̖̱̭́͌͋̋̈́͑̇̄̐̎͋ǫ̢̺̮͎̦̱̺̦̦̭́̋̎̌͆p̴̴̶̢̼͖̦̭̖̱͑͌̋̋̐ǎ̴̡̛̛͚̫̲̓͋̎̂͌̈̈͋̈́̈́̋̋͌͐̔͝a̸̵̯̙̭̲̼̱͋̽̑̄̈́̄͘ͅe̸̸̗͗͌͌̃̌̋͘l̶̛̫̲̫̆̒̔̔ḁ̷͚̠̌̈́̌́̋ô̩̤̺͜ķ̗̗͚̩̌̆̎͑͂̅͝ņ̶̷̸̶̸̡̗̯̩͚͓͈̘͎̦̖̼̘̦̱͉̼͚͚͌͗͗͊̅̋͒͌́̈́̂̔̃̐͑̃̌̈́̄͗͌̌̾̋͗̉̄͘͜͜͝͝͝͝ep̴o̧̝̫͈̦̎̿̚͜()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v72

    xor-int v76, v76, v72

    const v74, 0x1ac959

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ä̴̸̲̻͙͓́͋͘ķ̛̤̗ä̱̺̱̠́͝P̸̩̃̂â̬̺̫̘͘͝t̠̹̋̋ȟ̢̤͕͈̘̹͑̂̃͗̈́p̷̷̢̗̫̺̞̭̈̃̓͗̕͝͝ͅh͎̻͉̘̭͉̫̺͚͖̹͊͌͗͑͌͜͠͝ǫ̶̛̛̹̺̫̰̗̲̮̭͎͚̋̆̾͌͐͌̈͑͐̐͊̍̋̃͗̇̏͘͜͜͝͝ť̑͘ͅaő̷̸̸̷̧̧̟̗̦̙͖̟̠̘̫̺̯̫̥͉͓̩̙̮͎͈̱̫̥̪͈͚͚͊͗̂͋̾̃̓̃̐̒͋͌̉̇͘͘͘͝ͅǒ̸̯͚͓̮̆K̸͎̩͓͌̐͂ä̫̹̻́͜͠t̸̸͋̈̇̌͘p̺B̺̥͜ķ̭̲̒͒̎͘p̻̿K̫̤̗̯̹̂̾̅͜Ǩ̜P̹̠̟̫͈̖̗̙̖̤̃̎̎̋̌͑̃͋aỡ̷̯̖̪̘̲͎̍͜ͅk͓̠͉̈́͐̀̋̈́̋̃͆̾͋͘̚͝()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v72

    xor-int v74, v74, v72

    const v75, 0xdcf6

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ȩ̵̢̫̞̫̤̤̺̉̍̌͗̽̎̆͘̚͘o̺ȁ̸̶̷̧̯͚͚̭̮̥͚͙̼̰̻̦̀̍̂̇͗̍͌̌̈́̂͌̚͝K̛̦̘͂͋Ķ̸̸̸̛̫̘̩̥͚̦̯͎͌͊̂̑̏͗̋̿́̐̿̾̚B̛̄́͗͘͜͝ư̸̧͇̙̺̯͓̝̭̂̈́͆̌͠K̸͉̼̂́͆̚͘͘͝ǎ̶̴̧̛̹̂̆kļ̢̗̤̾̌p͈͎͑̔a̱̗̫͚̦̫̫͐͂̿͗̋̿̅͑o̧̎̿̄k̸̷̢͈̠͚͈͉̦̘̔̀͌̃̅̂͌K͓͚̓̃̓͝c̴ǫ̴̷̶̶͖̭͕͉̼̭̈̅̑̿̄̂̀͘͜͜ä̌͋͊k̴͈K͚̜͠a̷̸̢̛̮̭̗̖̪̮͈͓̎̑̽̾̋̉͝o̸̵̷̸̢̨̧̢̢̰̪͈̻̘̦̱̮͕̬̯͚̮͈̝͆̈́͌͋̄̋̔̂̈́͋̃̌̂̃̍̄̆̍͌͘͘͜͜͝͝͝u̾̌̄()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v72

    xor-int v75, v75, v72

    invoke-static/range {v73 .. v76}, Lcom/kashi/settings/view/BlurBackgroundImageView;->n̛͚͓̥͂K̸̮ö̭̎ç̸̷̮̫̗̫̰̰̍̄̚͠ä̷̷̜̪̘͈̫̯͚́͋͊̋̋͊͑̋͜͜B̘̺̯̒o̶̧̧̠̘͉̫̙̘̹͇̊͂̆̋̅ȅ̴̥̭̗̙̠͚̫̮̺̗̘͚͎̦̠̅͋͗͌̉́̂͐͑̆͆͘͜ã̶̷̢̛̰̪̱̯̗̫̰̙̜͙̼̫̲̼̫̯̫̲͉̗͗̾͒̈̑͊̎̏̃́̈̉̈́͋̊͘͝͝Ķ̸̴̜͎͚̗̘̀̽͑̾̿̂͌̅̄͗̚k̷̫͎a̗̎̄͌͂̃̚ḩ̷̭̭͕̥̇̀̈͑̅̈̀̄P̱͙͇̮͈̋́͜Ķ̧͉̹̹̯̦̪̹̃̆̄̂̈́̄̃͝͠aã̵̸̷̭̰̭͉̯̬͚̱̲͚̪͓̮̲͎̱́͒̀̂̆̂̈̿̃͊̄͆͋̈͗́̏̓̿̚͜͜͝͝ͅa͓a̼͋̅̈̂͋̍͝ȃ̧̲̫̩͘u̠̲̫̞͎̠̅̎͑̌̾̎̈ŭ(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v73

    move-object/from16 v7, v73

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̸̴̸̸̢̧̧̖̹̫̙̞̯̲̦̰̠̯̦͇͊͗͐̈́̑̌̌́̑̋̈́̌̍͌͗̿̾̾̍̑̋͋͝͠ļ̸̵̤̗͕̹̈̆̍̊̄̈́͘͝ţ̸̹l̮̫̈́̈́̃̂̌̂͝o̦̎̀͂͝a̵̷̵̴̶̸̷̧̡̩̫̫̖̺̹̮͓͎̥̬͓͎̐̌̽̂͌̈͊̉̀̈́̅̃̚̚̕͘̕͜͝p̢͈̈́̅K̺̘̮͓̺̘̑̂̂̌̉͘͝pK̸̶̨̙̘͉̱͖̑̋̄̄̍̌̿͘͜͠l̶̶̢͉̩͓̱̦̘̗̭͎͂̈̊͌̿̌̋͗̉͘ͅB̴̷̯̙̘̼͇̫̪̖̂̅͂̋uã̷̸̧̨̺̫̖̥̼̥̎͊̄̿̌͌̕͜͝P̜͓̹̋͘͜t̜̰̘̺̩͚̄͑̄̐Kã̸̺͓̗̈̃ò̷̴̂̌͜ļ̫̖̙̱̖̺͓̙̇̑̇͗̎̀̿̂̅̃̀̚̚n̛̛̤̖̂t̶̛̤͎͎̦̽̂̅͘ã̅(Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->a̵̷̧̧̘͓̭̦̤͜͝ų̶̸̧͙̯̯̫̠̦̗̖̘̦̙̈̎͐̈́͐̈́͗̚͜͝a̗̽̾̋̋̍̚ḽ̃͜͠ă̸̴̧̡̛̹̩̘̹̹̗̱̝͗̅͒̈̌́̕͝a̴̵̸̷̧͓̻̭̙̺̋̑͌͘͘͝ǒ̴̶͖̰̗̰̌̀͂̎̔͌́̅̀̅̂͘͠͝p̹l̶̘̦̭̩̮̂͜B̸̸̸̷̶̨̢̧̬̠͕̹̼͎̫̭̥̲̜̗͂͑͌͆̊̃́͗̃̐̈́̾͗͌̍͌̈̚͜͜͜͝͝͠p͈̭͕̄̅̈̚͝a̷̛Ba̸̛̦͈̫͋̄͠á̸̶̢͇͚̼̺͌̌͗̾P̸̶ä̶̷̸̛̼̹͉̯̦̪̦̱͖̆̌̕͠Ķ̸̸̛̥̠̭̱̯̗̲̥̭̗̾͋͊͑̿̌̌̀̄͋̾͋̌̋̀͌͌͗͜͝kp̛̫̖͕̥̿͆̂͝a̶̧̰͎͕̹̦̙͋́̿̚͜͝u̖̍̈̋c̜͕̗̫̈̋̄(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-static/range {v2 .. v9}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̷̴̛̪̫̩̩̟͎̠̇̋̈̒͌͐͝K̨̖̺̙͕̃͌̂̆͋̌͘͘o̭͐͌̃̃k̿̋̽a̴̼̭̐̅̎̋̃̉̂͝ȁ̛̯͘l̴̶̢̧̢̜̭̤̭̺̦̥̱̐̄͗̌̃̋͑͒̈̄͝͝ṵ̸̶͌̎ō̸̠̩̈́͊̈̍p̸̫̙͝ĉ̘ų̛̭̫̬̺̤̹͎̖̔̍́̋̅̈́̈́̃̾͗͜ă̶͖͈͓̤̱̾̈̈́̔́̈̏̂̚P̖̋a̴͇̖̭͑ņ̸̧̢̛̜͚̝̠͚͇̱̙̖̞̺̫̜̝̦̫̎́̑̃̌́̅͐̿̒͒̅̚̕͜ç̸̺͎ü̶̘̫̺̯̟͊̀͝ḧ̡̪͉͈͎͓̱̿͗͋͊̂̌̚͜ơ̶̧̤͓̾̐̄͂̾a̷͈͋͘͝n̥̈́̐l̷̷͈̘̺̼̞͓̺̏̀̈́̔͌Kă̷̮̋̑l̷̸͙̮̫̺̈́̀̋͒͝͝ͅB̢̭̭̹̋͐̈́̏K̸̘͓̭͐̑͝(Ljava/lang/Object;Ljava/lang/Object;IIIIII)V

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v54

    invoke-static {v14, v0, v4, v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->p͎̺̭͜ḙ̯̗̈̈́͘ͅeḆp̶̢̛̦͕̫̘̺̐̈́͜K̺̫̪̋̂K̷̢̫̩̫̥̭͚̦̱̥̖̓̾̈̋B̧̌a̸̴̡̮̎̍͝ḧ̸̡͖̩̗͒K̼̪̩̪̫̎ȍ̸̥̥̿͒̇͜͜ơ̸̭͉̺̬̮͕̻̗̜͉̔̈̋̎̑͘͜͝l̷̢̮̪̺̥̮̫̭͈̄͒̿̋͋̔̀͋͗͝t͚͇̥̔͝ă̢̰͒̌̉͌͝ẖ̶̫͎̽̌͐̾͝h̵̏̑ą̢̛̺̗́̌̅̈́͌̉͒͜ḧ̻́ơ̸̢͎̲͎̺̼̼̤̗͎͈͚̱̗͑͒͂̉́̿̑̚͜͝h̞͓̉͌̚͝P̴̛̗̥̯͚̪͈͈̘̗͚̥̿̀̐͌̃̌͌̎̕č̶̸̶̖͓̫̼͇̩̭̥̙̮͓̄̏̂́͗̾̌̀͜͜ķ̶̸̷̧̺̖̫̖̱͈̤̙̰͕̹̥̌̂̄̌̌̉̾̓̍̈̂͌̅̽̅͌̈́̃̏͘͘͝͠͝(Ljava/lang/Object;IIII)V

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̢̯̹̋̑̂͌K̝̹̃͊c̫l̏̔t͓̮̑̆̈͜K̴̗̤̏̎h̴̢̢̛̬͉̫̺̬̩̐̾̃̄͜͜͝K̢̛͕̪̿̅͋͘͜͠k̴̶̷̭͈͇͎̮̫̐͑̔̇̃̿͘͘͠͝͝a̷͉̅͗͗̒̄ǎ̡̨̛͓̱͖͉̭̬͇͋̂̈͌̈́̍͌͊̈̏͜͠͝͠͝a̸̡̫̫͗̌͌͠p̰͋̂͘͜ļ̸̯͓̃͌̈̔̎͠͝ap̸̸̴̶̢͓͙̺͉̠̼̭̞͈̑̌̌̎̎̀̀͌̾́͠P̖̤̮̹̅͗̌̿͝o͓̪̓͠͠a̸̖̋̌̀͜ȇ̸̸̸̷̶̷̴̢̨̧͖̤̩͚͈̩̺̲̘̹̲̪͕̫̱̤̩̗̠͉̼̱̠̱͚̦̞̺̪̋̀͋̌̑́̾̈́̆̍͋̀͒̓͑̏̿̈̈́̀͌̈́̒̃̋̋̈̄͘̚͜͝͝͝͝͠ͅͅPa̬̪̩̗̋̄̐̔͒͒u͇̬͒̓̎h̹̫̤͑̔̆̈́͌̈́()J

    move-result-wide v18

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v75

    const v78, 0xf4c

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ą̯̭̩̥̈́̃͗́̅͜͠Ķ̶̷̧̢̙̙̗͙̘͉̹̦̈́̾̔͐̋͌̔̈̒̑̚͜͝KP̸̷̢̛͚̺͚͑͐̎͂ͅḰ͕ą̶̶̶̴̧̛̹̰̱̮̮̘̫̫͎̘͈̘̥͓͚̘͈̭͚̂̈̋́̈́́͐̈́̂̉͌͊͘̚͝ͅǎ̴͎̋͋͜ͅK̸o̭̎́a͉̹̋͌̈́̂̂͜͝͝l̴̥̯̹̥̦̎̌͘K̎͋u͎͉̗͉͙̓͗͂̈͠p̶̶͓̻̙̮̗̭̑̿̓̊̈̂̅̀͘͘͘͜͠ͅa̶̷͙͎͚̼̋̅͐̉̿͝͝ǔ̴̧̙̬̙͕͉̜͎͙̋̀͜͝c̸̛̮̹̫̆͌͂͐̋͊͠͠c̶̵̥̈̂̒ą̹̔̕͝͝k̚ā̷͊͆̀͝â̶̦̌̋̌K̸̸̡̈͆̈́̎ű̫͖̬̗̿̀͂͗͗͜͝a̶̷̢̩̺̤͓̫̐͐͗͌̌̚B̷̗̲̼̄KK̴̦̅͋̓͝ḧ̵́̑()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v74

    xor-int v78, v78, v74

    const v76, 0x1ab2b8

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̶͕͓̫̱̝͂͒͑e͌h̨͗͝Ķ̧̧͈̫̺͎̗̰̻̗̪̍̀̓̌̅̃̃̾͂̚P͎͚̾͜͠Ķ̛͕̭̻̭͌̾̄͌̈́̀̋̃ͅh̸̴̢̛̫͉̫̞͉̯̗͈̭͐̿̈́̍́̌̍̂̈̎̂̑͝͝Kç̴̫̗̺̀̔̃͜l̷̶̨̩̠͎͓͖̺̻̪̩̂̆͋͌̃͗͝B̧̹̮̦͓͌̈͘óeaa̶̷̵̷̢̛̗̯̺̗̺̯͙̰̔͐͑͗͋͘̚͘͜͠͝e̛̫̘̥̖̱̿̎͜ļ̷̷̸̸̶̶̢̢̢̛̛͈̜̗̲̮͓̩̫̯͎̘̙̭̩̰̹͉̫̯̲͇̱̦̙̜̟̪̲̺͓̲͎͉̱͈̬̂̿́̋̑͒̑͒͌͌̌̅̄̾͐̃̈́͗̽̌͋͌͗͘̕͠͝͠͝͝u̷̫̤̰͓̞̰͚̥͊͘͘͜͠n̙l̶̸̷̨̛̯̺̪̠̥̲̭̮̜̫̈̆̈̉̚͘͜͝͠Kȗ̧̧͙͎̫̥͓()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v74

    xor-int v76, v76, v74

    const v77, 0xdcf6

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->k̠̦̹̎̋̀͝P̸̧̨̛̺̩̦̃̌̎̄̈̾̌̋̂̐́͘͜͜ͅceä̸̷̢̺̜́͌̓̈́̋͒͌͂̀̐͜͝a̴̛͖̯̋̄͌͗̎̚͠l̨̼̠̹̝͓̱̈́̋̓̐͜͝͝c͚̋͌̐̃̈́͝K̴̗̹̥̱̃͌͒̃̎͜ǎ̶̸̢̨͚̈́̃͌a̔͌̄ǎ̯͈̄̂͌aa̫̩̤̬̯̒͂̂̃aa̭B̶̘͕̭̙̥̪̀̑͋͗̾͘̚͜͝͠K̷̗̘̭͓̮̖̭̥͓͂̂̂͒͊͗́̂̾͗ḁ̶̗̯̅̈͐̐̅̋̐̋̎͜͠ơ̷̸̷̜̼̘̫̟̔̃̄̍̀̑͆͗̾͘͜n̷̸̸̷̷̢̧̢̛̮̫̘͉̱͖̖͇̯̩̞̤̘̝̫̹͎̈́͒͌͑̃͆̑̌̿͑̾͗͘͜͝͝͠͝a̬͐̋̎̉c̥̈͘ǔ̷̶̷̴̵̸̴̡̯͎̦̱̭͉̈̆͑̍͑͌̋̋̂̀͗̋̈́̐͑̋͘͜͝a()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v74

    xor-int v77, v77, v74

    invoke-static/range {v75 .. v78}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ã̶̧̧̡̠̺̱͚̮̀̃̔͝a̶̷̸̖̫͙̲̠̾͗Ḃ̶̫͈̈͠h̴̷͂̃ô̭̯͉͌͋͌̇̿̋͜͜͠͝a̷K̸̨̨͖͉̭̺̼͈̱̏̈́̌̿̐̉͑̾̏͌̚K̵͚̻̘͓͙̏͐͂͘ç̢̛͈̥̻̖̫͉̜̄́̄̄̈ä̷̧͎̰͈̰̩̥̱̭̘̻͋̈Kő̵͚͉̈́̈́h̶̴̸̴̷̸̸̵̠̫̭̮̫͇̻̫̼̺͚̩̰̯̮͚̭̫̫̦͌̂͆͆̌̌͂͌̌̈́̂͋̔̔̌͌̊̂̈́̈́̌͐̕͜͜͝K͕͓̋ķ̯̺͊̆͌͑̎͘̚͝a̸͇̭̭͈͋͗̾͗̃̏͘p̵̘̭̻̯̈̏̿̐̊̅̕͝ä̢̭̜̫͈̠́̂͋͌͌̒͗͋̾a̶̷̛͎̼̜͉̔̈̈͝e͙̩͎̿̌́̓͑͜P̫̎͋͠p̧̗͓̰͖͋̐̒̐̃͑̅̈́̀͘͝͝á̒o̵̶̥͚͐͗͘͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v75

    move-object/from16 v4, v75

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v84

    const v87, 0x1abb53

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̸̶̷̢̢̢̧̨̛̫̰̭̖̗͉̘͕̺̗̫̫͓̻̥̀̌̋̋̂͗̈́̂̈̎͆̎͑̈̈́̚̕̚͜ả̸̧̢̹̹̹͎̋͑͂̋͗͘P̸̷̸̷̵̨̢̛̫̙̺͓̯̯̮͕̥̲̺̫̆̌̃̄̈̑̿̋̂́͜͝a̷̸̢̧̢̫̺̭͇͓̪̯̱̗̩͉̺̹̔̿̾̋̆̅̈́̌͐̈͗̚͝aa̧͕̅͑̃̌̈́a̷̧̼͈̮̟̍̊̈̚̚̕͜͠͝ul̢͉͚̯̲̟̫̮͋͌̂̆̈́͗̆̌̽͐́͋͗̏͂̓̀̏͘̚͜͠͝ͅͅc̴̷̡̧̭͉̹̮͚̪̈̂̾̀̅̃͘͘͘̚ṷ̷̧̧͓̖̾̈̈̌ã̷̸̸̷̧͈̺̲̗̺̗͉͚̺̎̌̈́̿͆́͋u̷̢̢͉̠̞̍͊͝B̯̯̫̫͎͉͉̃͌̆͋Ķ̡͉̱̺̋̎̅̋̆o̴̧͉͕̗͒̂̿̃͋͌ǎ̷̛̘̱̦͈̭̖̈́̌a̘̐̌()Ljava/lang/String;

    move-result-object v83

    invoke-static/range {v83 .. v83}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v83

    xor-int v87, v87, v83

    const v85, 0x1aa750

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->a̡͚̗͎̻̞͚̰̦̖̺̦̹͋̎̍̃͌̀̅̏̏̀̆͗̚͝͝ͅa̗̮̺͚͋͝á̇͝n̰̋͘K͓̙̲̞̻̯͎͗͊͗̏̀͐̈̑̂̃̔̐͌̚̕͜͜͜͝p̯̺̹͙K̮̽̈́͗́̿͌͑̈́͌̈͂͝p̶̶̸̡̮̺̲͓͜͝͝c̸̶̢̛̹̟̫̠͎̹̰͙̜̺̭͚̺̜̄̂̈̌̎̏́̊̆͗͐̄̂͌̌̿͑̈́̓̿̏̚͝͝o̸̸̷͎̜͗̂̃c̡͎̩̼̯͎͓̥̫̑̂̌̿͆̾͌̔͗̈͂̈́̎̐̏͘ͅp̱Ķ̯͖̥͙̼̆͒͐̿̀͝c̝͘a̼̥͠c͓l̷̰͙̜͕̭̔̋̔ḁ͉̈́̿̑͝ua͜͝B̛̰ā̸͉̙̜̺̱̖̦͓̦̽̋̚͠ǩ̷̶̸̢̡̢͈̯̹̫̯̭͈͚̗̠̱͉̬͙̙̦̹͎͉͎̰͊̈́̿̌͗̔́̃͗̅̂̿͐̈́̃̋̆͑́̌̃̐͘͘͝()Ljava/lang/String;

    move-result-object v83

    invoke-static/range {v83 .. v83}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v83

    xor-int v85, v85, v83

    const v86, 0x1aaf0b

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ó̸̷̴̸̧͓̦͙̫̮̘̰̰́̾͋̂̈́̂̅̃͑͜͝ť̯̗̪̖̖̱̭͚͋̐̌͒̈̆̀͠e̎̋K̷̵͇̐n̷̷̴̛̹͕̺̻̩̲̮̟̭̜̗̥͆͑͌͂̃̀̑͘̚͜͜͝͠o̐͜a̶̴̶̸̷̴̸̵̷̢̡̧͉͈̭̩̱͕̗̞̙̥͓̭̪̞̘͒͋̔͋̾̾̋̂͋͑̿̃̇̈́͊̉̊̆̑͒͑̅̂͘͜͜͠͠͝p̴̶̞͐̈́̑͆͒̎̋͆l͇̩͑͠B̥̹̺̗̗͕̽̉uȇ̗̫̫̌̃̈́̋̈́͘͜è̸̷̷̖̪̜̯̺̅̅̆̎̄̿̌̎̚͜͝͝ľ̜͙̗͉̂̐̿̈̌Kk̩͙̯̫̞̱͙̭̉͑͊̈͋̐̚͜ͅȃ̱̤̂e̸͈̲͚̘͒̂̽̈̀̐̃͌̚o͈̘͂͜p͎͕̖̺̰͊̒̈́͘ȃ͘ȟ̷̵̷̸̶̢̺̰̹̟͙͈̹͕̄͂͗͗͗̐̔́͗́͆͝͝()Ljava/lang/String;

    move-result-object v83

    invoke-static/range {v83 .. v83}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v83

    xor-int v86, v86, v83

    invoke-static/range {v84 .. v87}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ã̶̧̧̡̠̺̱͚̮̀̃̔͝a̶̷̸̖̫͙̲̠̾͗Ḃ̶̫͈̈͠h̴̷͂̃ô̭̯͉͌͋͌̇̿̋͜͜͠͝a̷K̸̨̨͖͉̭̺̼͈̱̏̈́̌̿̐̉͑̾̏͌̚K̵͚̻̘͓͙̏͐͂͘ç̢̛͈̥̻̖̫͉̜̄́̄̄̈ä̷̧͎̰͈̰̩̥̱̭̘̻͋̈Kő̵͚͉̈́̈́h̶̴̸̴̷̸̸̵̠̫̭̮̫͇̻̫̼̺͚̩̰̯̮͚̭̫̫̦͌̂͆͆̌̌͂͌̌̈́̂͋̔̔̌͌̊̂̈́̈́̌͐̕͜͜͝K͕͓̋ķ̯̺͊̆͌͑̎͘̚͝a̸͇̭̭͈͋͗̾͗̃̏͘p̵̘̭̻̯̈̏̿̐̊̅̕͝ä̢̭̜̫͈̠́̂͋͌͌̒͗͋̾a̶̷̛͎̼̜͉̔̈̈͝e͙̩͎̿̌́̓͑͜P̫̎͋͠p̧̗͓̰͖͋̐̒̐̃͑̅̈́̀͘͝͝á̒o̵̶̥͚͐͗͘͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v84

    move-object/from16 v7, v84

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v18, v38

    invoke-static {v7, v8}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ḧ̶̨̦͕́̅k̞͋́o̸̠̞̲̐̓͝͝ͅP̴̸̧̧̖̱͚̭͚̙̲̻͌̄͌̇͊͗̋͜ơ̴̶̧̢̩͕̫̘͎̭̯̭͈͓̬̫͒̾̃̈́̌͑̐͋͊͑͑̍̿̋̃̂͜͠͝͝͝͝h̷͚̯͌̚͝͠a̧͙̹̼̙̘̙̽̿̔̀̏́̂͗̒̔͗͂̌͘ṳ̦̯͝ų̶̶̛̗͙̦̫̥̯̗̋̑̔͜͝å̴̅̈́͝a̴̶̴̡̢̘͉̪̺̭͕̮̥̱̗̥̫̪͎̱̜͈̅̏͐̐̐̿̌̎͂͜͜h̨̹̥̙̻̯̠̉̾̌͌̿͊̑͂͐̓͌̚͜͝P̷͚͂̋͑p̴̸̢̢̧̛̛̛̹̻͚̫̹̮̤̱̥̮̼̩͎̔̍̃̊̀̑̑͌͋́̈́́̋̾̐̂̈́̈́̏̂̓̅͊̂̚͘̚͜͝͝͝͝͝p̴̶̴̸̢̛͎̫̭͉̆̃͗͗̔̎̆̔̿͋̚͝͝͠͝͠B̴̸̸̶̨̢̛̻̿̋͋̂͒̈́̕(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v83

    const v86, 0x1aceeb

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->n̢̮̦̎̂̈̍̏͋͜ǔ̴̧̫̺̭̤̱͕̈́̌̍͑̐͌͊̚͝͝p̶̧͚̥̈͐͗B̎͜Ḵ̷̴̢̡̧͙̘̹̭͈̮̲̫̩̼̪͎͗̈͗̍̅̂̏̿́̏̚͘͜͝͝ā̤͊p̢̫̈ǎ̧̧̹̪̫͇̫̻́̀̔͂͊̊̍͜ṷ̸̹͇̎͌͆̾͘a̴̛̺͉̜̟̪͇̥͎͑͑̈̋͐̎̎̔̾̏͌́͌̾͗̈́͋̂̏͗̈͝B̸̘̩̫͗̈̑͗̄̀̔̔͝ae͓̩̦͆̇̎̐͒̚o͘ơ̮͙̋͂̇͝u̅̃B̶̧͎̭͈̌͂͋̀̂̆̃̿̈͗͠ņ̛̘̪̞͎̙̥͌͋͐̆ǹ̸̛̘͓̗̯̹̖͎͚͚̪̫͌̀͗̂͗͘͜a̢̦̟̠̮͆͜Ķ̸̲͓̩͉̩̯̯̭̻̂̐̽͗͗̍́̆͌̋͑͘͜͜u̷͈̍̈̌̈́̔̋̈͊͘͠p͚B̷̢̢̥̙̘́͌͠t̫͈̪̽̂()Ljava/lang/String;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v82

    xor-int v86, v86, v82

    const v84, 0x1aabff

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ą̯̭̩̥̈́̃͗́̅͜͠Ķ̶̷̧̢̙̙̗͙̘͉̹̦̈́̾̔͐̋͌̔̈̒̑̚͜͝KP̸̷̢̛͚̺͚͑͐̎͂ͅḰ͕ą̶̶̶̴̧̛̹̰̱̮̮̘̫̫͎̘͈̘̥͓͚̘͈̭͚̂̈̋́̈́́͐̈́̂̉͌͊͘̚͝ͅǎ̴͎̋͋͜ͅK̸o̭̎́a͉̹̋͌̈́̂̂͜͝͝l̴̥̯̹̥̦̎̌͘K̎͋u͎͉̗͉͙̓͗͂̈͠p̶̶͓̻̙̮̗̭̑̿̓̊̈̂̅̀͘͘͘͜͠ͅa̶̷͙͎͚̼̋̅͐̉̿͝͝ǔ̴̧̙̬̙͕͉̜͎͙̋̀͜͝c̸̛̮̹̫̆͌͂͐̋͊͠͠c̶̵̥̈̂̒ą̹̔̕͝͝k̚ā̷͊͆̀͝â̶̦̌̋̌K̸̸̡̈͆̈́̎ű̫͖̬̗̿̀͂͗͗͜͝a̶̷̢̩̺̤͓̫̐͐͗͌̌̚B̷̗̲̼̄KK̴̦̅͋̓͝ḧ̵́̑()Ljava/lang/String;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v82

    xor-int v84, v84, v82

    const v85, 0x1ab68a

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̸̷̢̛̙͙͈͇͎̱̀͐̎̀̍̂͜c̻̼̋̆̽͘͝o̶̢̗̫̭̺̦̙̯̯͚̱͓̜͕͉̭͇̅̊̉̈́̌̀̈́͊̄̃̽̎̈́̔̈͘̕͜͝͝ã̷̛̹̙͈̱͙̲̠̦͑̀̈͗̔̈́̂͜k̩̩̂͘p͓̺͓̂̽̎̎͒͐̑a̸̛̫̋ḩ̘̭̫̻̥͕̘́͑̑͂̐̆͘͘͝o͒͠p͓̻͂̅p̵̧̨̠̫͕̙̭̹̯̥̦̌̌̐̂̍̂̈̎͊̃̋͝͝p̎̎ǒ̸̧̗̮̌̌̋͗̋͊̚͜B̸̖͉̥͉̹͕̹̿́͑̈́͜͠p͗ḁ̢͉̻̱͈̫̃K̨̮̭̦̙͉̖͙͂͋̌͆͊̌̄̂͊͌͘̕͝͝ǘ̶̺̻̲̱̝̫͆̽̈́̾͝͝ͅä̸͎̥̫̻̦͝p̸̵̸̢̧̨̛͕͎̯̦̱̫̰̦̤͚̘͉͚̮̬͋̈͌̈́̏̅̾̾̈́͗̀͗̆̋̅̈̌͗̃͘̚̚͜͝͝K̑()Ljava/lang/String;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v82

    xor-int v85, v85, v82

    invoke-static/range {v83 .. v86}, Lcom/kashi/settings/view/BlurBackgroundImageView;->Ķ͚͕̞͓̀̐̋͌́̚͠o̷̸̴̴̶̢̢̢̫̭̺̝͖͉̫̫̹͎͚̲͈̻̯̘̭͇̰͉͎̱̮̮̱̻̱͆̅͌̀̄̃͊͂̈̿̉̎̈́͋̏̅̎̂̂̋̈́͊͌̌̿̈́̑̅̋̔̿̎̐̑̚͘͜͠͠͠͝͝K̶̸̮̪̦̤̼̰̱̟̰̫̩̠̋̾̆̂͊̂̌͑́̂́̓̆̈͌̂͗͘̚͜ͅͅĶ̸̸̱͉̺̘̲̀̿͌̐̃̑̑͌̈́̏̚pK̸̷̴̢̧̧͕̗͈͈̘̮͉̦̻̺̅̑̔̎̀͝t͙̩B̸̴̴̵̡̛̛̞̮͎͓͚̝̥̯̭͎͚̺̻̙̼̜̱̫͓͉̻͓̫̈͑̄̄̋̄͗͊̎̾̃̋͑̐̈̄̏͂̅̌̈́͑̀͋̑̌͌̕̚͘͘͜͜͜͝͝ǫ̸̸̬͈̲͉̖̦͇̃̒͌͂̂͐͘͜ǒ̷̶̧̟̝̯̞̯͎͊̕͝ȩ̴̨̘͉͉̫̖͎̪͚̮̦͎̩̖̪̏̃̌͌̈́͌͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v83

    move-object/from16 v7, v83

    invoke-static {v6, v7}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->a̵̷̧̧̘͓̭̦̤͜͝ų̶̸̧͙̯̯̫̠̦̗̖̘̦̙̈̎͐̈́͐̈́͗̚͜͝a̗̽̾̋̋̍̚ḽ̃͜͠ă̸̴̧̡̛̹̩̘̹̹̗̱̝͗̅͒̈̌́̕͝a̴̵̸̷̧͓̻̭̙̺̋̑͌͘͘͝ǒ̴̶͖̰̗̰̌̀͂̎̔͌́̅̀̅̂͘͠͝p̹l̶̘̦̭̩̮̂͜B̸̸̸̷̶̨̢̧̬̠͕̹̼͎̫̭̥̲̜̗͂͑͌͆̊̃́͗̃̐̈́̾͗͌̍͌̈̚͜͜͜͝͝͠p͈̭͕̄̅̈̚͝a̷̛Ba̸̛̦͈̫͋̄͠á̸̶̢͇͚̼̺͌̌͗̾P̸̶ä̶̷̸̛̼̹͉̯̦̪̦̱͖̆̌̕͠Ķ̸̸̛̥̠̭̱̯̗̲̥̭̗̾͋͊͑̿̌̌̀̄͋̾͋̌̋̀͌͌͗͜͝kp̛̫̖͕̥̿͆̂͝a̶̧̰͎͕̹̦̙͋́̿̚͜͝u̖̍̈̋c̜͕̗̫̈̋̄(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2e
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 59

    move-object/from16 v7, p1

    move-object/from16 v6, p0

    invoke-static {v6}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->h̷̷̷̺͕͎͕͖̥̫̠̱͙̗̥̀̅̂͋̋͒̂̏͝͝͝ơ̸̛̯̼̌͗k̸͈̝̹͒K̶͈͚̖B̵̷̷̥̥̈͘P̛̈́͘aa͎̹͓ȩ̭͖͗̑̍̚Ke̵̶̷̶̬͈͉̖̤̺̫͖̲̎̋̂̀̋̈͗͂̐͘ͅoc̷͈̭̓̈́̽͊̌̈́̆͊͋̋̀̄͝ȗ̧̢̧̧̧͎̭̝̗̻͚͇̯̗̺͚́̇̐̎̂̌̀͒̉́̂͝͠ç̸̶̶̴̢̧̛̩͈̫̯̺̗̭̥̫̙͈͙̜̘͎̙͓͑̂̑͋̑̋̋͒̌͂̎̾̌͋͊̇̿̎̅̈́a̵̵̸̵̴̶̧̫̯͎͚̙̫̱̯͎͒̂̈́͗̀̑̃̑͗̔̑̈͌̔́̈̚͜͜l̃̀ţ̛͈̗̱̤͒̌̔̀͜͝a͓̹̮̫̥̫͊̀̽̒P̫̠̋͌ķ͚͉͋̿͆̓h̶̵̶̸̢̡̨̰̖̩̫̤̱̗̦̩͚̥̅̌͐̈͗͗͋̂ä̶́͒̂(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K͝h̶͗ḁ̸̶̷̸̝̭̪͈͕̠̹̭̗͚̃̂̈́͐̈́̈́̈́͂͑̌͌͜ư̝̹̜̖̫̪̿͗̈́Ķ̷̸͚̦̮͚͓͚̼̘̮͗̌̂͆͐̾̂̀̓͜͝͝oK̸͓̹̰͓̮̝͓͚̗͈̭̺̞̹͎͈̲̯̙̦̈́̏́̈̄̄̋̎̒̅͌͌̔̉̽͒̃͝K͂n̢̗͗̑k̶̭̺Kn̶̡̲͋̅̐̿̌̔̇̿c̵̘̺̔a̸̸̤̘͙̪̪͎͗̍̽̂̐̋̈́̚ã̭̙̭̲̱̒͑̌̿͋̇͌̂͆̌̑͜͠ã̷̵̗̥̟͇̖̫͖̪̮̠̯̬͚̼̐̄̈́̂͌͊̎̔̃̋̂͜͝P̧͚͈͖̭̘̞̪̙̦̈́͗̂̂̎͒̂͑͆͋̅͝e̴̢̫å̼̌͐͘P̸̴t̵̵̸̷̢̛͈̜͎͖̙̫̭͉̭̭̞̂̅̅́͗̈͑͂̀̅̋̌̈́͐̃̾͌̂̋̚͜͜͠͝Kp̸̢̧͕̘̮̫̝͋̈̅p̮(Ljava/lang/Object;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v30

    const v33, 0x1aac55

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ő̶̷̤͝o̶̸̶̴̶̥̫̲̱̩͈̱̫͈͖͚͚̹̞͚̙͐̈̔̿̈́̃͌̈͌̾͋͘͘͘͠pk̥͈͌͗̆̔͠K̸̶̸̸̭̆̇́͗̒̈̾̆͘͝ḩ̶̘̱̪͗̍̈̈́͘Ṕl̷̙͚̮͘a̸͎̹̋ớ̴̸̶̧̢̥̩̭̻̰̙͉̩͉̺͈̜͙͉̃̒̃̈̄̏̌̄̑̏̔̃͑̎͘͜͜͠ç̧̧͎͇͓̺͎̺͉̭̺̿̿̋̿̑̌͋͊̒͋͘͜Ḱ̨͎̗͕̖̞̼̗̈́̃͐͋͘͝o̼͌a̛͕̾̋͂K̶̞̺̤͎͝a̴̶̴̧̡̧̛͚̩͎͉̼͙̜̹̮̯͕̹͕͗̑̀͊̍̅̀͊̆̾̉̏̿́̄͑͘̚͠͝͝͠͠c̸̫͚̻̑͌̃̋̏̑̾͋̈͌Ka̘̺̫̞̗̝͂̈́͐͝c̴̷̹̘̞͕̝͎̦͐̃̏͋̄͑͝B̵̲͎͚̟̦̌̋̆͜o̴̧̦͈̯̠͈̗͌̂͝()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v29

    xor-int v33, v33, v29

    const v31, 0x1aaf0c

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->k̘̫͝͝á̸̸̵̶̶̷̷̧̧̛̰̹̺̫͓̦̫̦̙̺̙͙̪͎̥̦̤͉̯̥͖̯͖̗̪̿͌̌́̃͗̓͗̂̄́͌͜͜͜͠͝al̸͕̦͌͑̌͒̑̚o͉̗l̡̫̩̐̂ͅn̸̸̵͉͓̫͕͗ȩ̥͕̙̫̘̃͌̒̾̋̃͗͘ḩ̶̴̶̴̘̼̻͈͙͆̿̈́̊̋̃̚͜e̲͖͙̦͌̂͋͌̚͠͝P̸̸̢̯͓̭͈̦̗̺̄̑̃̎̄̔̋͊͒̍̚͘͘͝P̶̶̫̻͉̗̗̦̯̄́̈̔̽̈́̂̉̈̂̾͑͗͋̕̚͝P̵̷̧̢̢̢̦̠̠̜͕̫̤̗̘̖͚̫̱̙̍̂͋̎̈́̈́͐͒̄̃̏͗͗͂̈̃̋̏̏͜͜Ķ̸̛͙̑͝p̂̈́e̦̹̤̯̠͋̑͋̅͜͝ǎ̶̶̷̧̛͖̫̮̬͈̽̔̌͌̈́̃̃͋͜n̎̈́͑̚hp̴̛̛̦͕̗̠̦̊̏͆̈͊̐̋̀̈́̾̌͠()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v29

    xor-int v31, v31, v29

    const v32, 0x1ac995

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->k̸̛̘̯̩̥̜͎̺͎͇̗͎̃̀̀͂͊̔̿͋͋͌͒̚͘͜a̸̛̱̫̮͗̎͘Ķ̸̸̙̫͚̟̯̂́̃̊̂̅̋͌̅ḣ̰c̴̯͎̏͋̚̕͝l͎̘̥̤̋̽̈́͋͌́͗̑͗̆́̚͜p̙̭̲̂̀B̭͂̆͘͜ô̹͈̫ļ̧̧͓͕͎̻͚͓̦̅̿̿͌͌̎̃͗̈̍͘͜͝͝͝o̺̖e̸̪͇̋́̄͊̋̋͘͜n̵̡͎̯̦͉͂̂̚͜ķ̷̸̯̼̗̼̦̮̺̲̮̌̍̎̓̿̅̋̾͜k͊̋͝e͝ú̸͚̩͈̱̺̰͠lK͑K̯̝͊͂͜ņ̸̩̭̥̖̹̥͎̾̎̇̋̋̄͜ḧ̸̸͉̜́͌̔̆ḧ̸͉â̛̬͚̫͈͚̦̲̆̑̾̄ͅK̛̤̆̈na̭͚̖̯͇̭̫͓̯̝̐̀̎͋̽̚͜͝͠o̹͋̈́ăṓ̩̗͕͘͜a̖͓͎͈͊̄͂̈̈́̄͜͜p()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v29

    xor-int v32, v32, v29

    invoke-static/range {v30 .. v33}, Lcom/kashi/settings/view/BlurBackgroundImageView;->Ķ͚͕̞͓̀̐̋͌́̚͠o̷̸̴̴̶̢̢̢̫̭̺̝͖͉̫̫̹͎͚̲͈̻̯̘̭͇̰͉͎̱̮̮̱̻̱͆̅͌̀̄̃͊͂̈̿̉̎̈́͋̏̅̎̂̂̋̈́͊͌̌̿̈́̑̅̋̔̿̎̐̑̚͘͜͠͠͠͝͝K̶̸̮̪̦̤̼̰̱̟̰̫̩̠̋̾̆̂͊̂̌͑́̂́̓̆̈͌̂͗͘̚͜ͅͅĶ̸̸̱͉̺̘̲̀̿͌̐̃̑̑͌̈́̏̚pK̸̷̴̢̧̧͕̗͈͈̘̮͉̦̻̺̅̑̔̎̀͝t͙̩B̸̴̴̵̡̛̛̞̮͎͓͚̝̥̯̭͎͚̺̻̙̼̜̱̫͓͉̻͓̫̈͑̄̄̋̄͗͊̎̾̃̋͑̐̈̄̏͂̅̌̈́͑̀͋̑̌͌̕̚͘͘͜͜͜͝͝ǫ̸̸̬͈̲͉̖̦͇̃̒͌͂̂͐͘͜ǒ̷̶̧̟̝̯̞̯͎͊̕͝ȩ̴̨̘͉͉̫̖͎̪͚̮̦͎̩̖̪̏̃̌͌̈́͌͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v2, v30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->h̡͈̻̪̗̻̥͉̟̟̭̭̼͓̙̩͗̈͊̃̈́̂̾̈́̋̆͘͘͠͝͝o̢̢̫̠͆̐̏͘͜ǎ̸̸̸̮̗̩̭̦̌̐̎̔̚͜͝͠͝͠n̢͙͈̠͌̈́̑͠ą̸̭̭̱̈͜͜a̢̧̢̠͎͐̅͗̾͝͝ḁ̸̙̾͘a̰͎̱̫͌̆̿̋̈͋͂͜ǒ̷̶̵̢̠̤̝̺̎̌̌̄͗̾̎̍t̷̙̩̖͜͠ḩ̸̸̨̛̺̖͉̭͑́̈̂̎̈̎̐͘͜͜͝͝͝e̸̶̢̢̢̢̛̘̭̥̗̱̱͈̪̫̗̫͚̺̝͊͌͑̈̈̈́̂͂̌͆̉̋͌̈́̅͋̃͂ͅK̮̭̋̆͆͋k͗ã̴̬̪̺͈͈͆̌͌̎̄̑̃ͅc̸̷̨̛̛͓̠͎̫͓̃̔̌͗́̈͗͋̑̌̄̈̆̑̆͌͘͜͝P̸̸̛̬̯̫̘͕̼͎͎̅̑̂͑͌̂̌͆͋̚̚͘l̶̵͉̜̤̟̜̭̯͉̤̓̑̋͑̏͜͜͝(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̷̭̮̭͌̌̒̃̐̅͜͝͠͝P͕ḛ̷͇̭̾̀͌̑̌̕o̶̸͉̜̩̗̘͒͌̅́͘B̟Bļ̴̵̛̛̭̫̜̯̥͇̤̀͋͂̃̾̐̔̌̐̅̈́͜͝B̵̸̸̷̧̛̛̭̦͓̩͙̫̖̖̞̘̺͚̻͎͎̽̾̈́͒̊̋͌́̂̄̌͘͘̕͜͝͝B̸̭͕͙͚͊̅u̷̙͉̫̅͊̂̕͠h̵̢̧͕̗̙̖̰̻̗͗̐͌̎͌̇̈̈̎͜ḩ̸̸̷̸̸̨̛̗̺̮̤͚̰̫̅̔͑̈́̏̾̈̒̌͗̎͋̂̄̾̽̄̔͘͜͜͜͝͝͝p̸̶̷̨̧̧̧̘̝̹̙̭̫̪̈́̈́͋̀͋̂͗͗͜P̢̨̘̖̺̮͕͙̌̿̾͘͜͜p̺̙͈̱͕̹̥̗̦̪͈̱̫̫̺͌̂̐̑̄̂͗̿̂͋͘͝͝ú̷̧̫̥͕̹̯̥̗͂̍́͝aa̷̺̍̅̀̋͜͜ó̸̵̢̩̭̯͗͌̎͑̅͜͝͝(Ljava/lang/Object;Ljava/lang/Object;I)Z

    if-eqz v3, :cond_4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->l̷̸̴̸̸̨̛̖̬̻̹̘̫̥̘̘̮̭̘̋͋͒̒̈́̂̑̋͒̒͑͗̽̄̎̐̄̍̂̋̊͘̚̕͜͜͠t͉̟̠̱̅̄̈̈̂̾̃͜ṉ̵̖̟K̛͚͙̜̬̼̍̔͊͋̚͝a̷̵̶̧̡̮̺͓̥͉̭̅̃̄̅̊̈́̐̈͘̚a̶̗̹̬̝̱̝̖͗̀͌́̋͌̑͝ḩ̪̫̫̇̄̅̾͜͝n̷͓̪̠͚̾͑̋̾̎̃̉̊͊͝a̫͈͠ư̶̷̧̧͕̱͉͈̟̰͙̱̺̏̂́̌̂͊̏́̊́̈́͘͘̚͘͜ņ̴̵̛͓̟͓͙̜̦̻̥̠̗̙͓͕͚͉͈͎̩͈̈́̾̒̒̽̅͌͊̑͗̂̒̋͜͜͠͝P̸̷̨̨̪̦̹͙͚̦̗̂̆̀̑͊͘͝t̡͎̘̹̄̆P̷̷̸̧̡̛̫̯͌̋̄̆̃͌̅̄̾̎̂͗̃̾̈́̂͝͠ǒ̵̸̶̯̱̮̞͈͎̥̗͌͋̋̋̿̋͂̄̈́̎̿̅͘̚(Ljava/lang/Object;F)V

    goto :goto_53

    :cond_4f
    const/4 v4, 0x0

    invoke-static {v6, v4}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->l̷̸̴̸̸̨̛̖̬̻̹̘̫̥̘̘̮̭̘̋͋͒̒̈́̂̑̋͒̒͑͗̽̄̎̐̄̍̂̋̊͘̚̕͜͜͠t͉̟̠̱̅̄̈̈̂̾̃͜ṉ̵̖̟K̛͚͙̜̬̼̍̔͊͋̚͝a̷̵̶̧̡̮̺͓̥͉̭̅̃̄̅̊̈́̐̈͘̚a̶̗̹̬̝̱̝̖͗̀͌́̋͌̑͝ḩ̪̫̫̇̄̅̾͜͝n̷͓̪̠͚̾͑̋̾̎̃̉̊͊͝a̫͈͠ư̶̷̧̧͕̱͉͈̟̰͙̱̺̏̂́̌̂͊̏́̊́̈́͘͘̚͘͜ņ̴̵̛͓̟͓͙̜̦̻̥̠̗̙͓͕͚͉͈͎̩͈̈́̾̒̒̽̅͌͊̑͗̂̒̋͜͜͠͝P̸̷̨̨̪̦̹͙͚̦̗̂̆̀̑͊͘͝t̡͎̘̹̄̆P̷̷̸̧̡̛̫̯͌̋̄̆̃͌̅̄̾̎̂͗̃̾̈́̂͝͠ǒ̵̸̶̯̱̮̞͈͎̥̗͌͋̋̋̿̋͂̄̈́̎̿̅͘̚(Ljava/lang/Object;F)V

    :goto_53
    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v35

    const v38, 0x1aca23

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->P͝͝p̴̢̨̱̘̦̼̩͙͚̘͓͗̇̚͘ǎ̢̧̙͓̫̱̖̭̌̌̂̓̃̄͌͋̚l̮̖̰p̴̶̶̸̸̧̧̧̢̢̬̫̰̤͙̺͚̝̯͉̘̂̿̂̔͑̈̂͌̽̏̃̌̃̎̎̇̃̄͋͌͜͝͠ä̵̖͎͜͝n̢̲͕͉̂̓̋̈́̂̔̈̿̐k̤K̸̛͈͎̺̠̑̂͠ő̗̃̃ȏ͓͚́K̷̸̦͚̩̤̼̆̄̌̓͝t͎̗ą̶̸̸̧̢̧̫̱̺͈̥̗͕͓̘̫͉̺̱̮̎̋̌̆͗̈̂̀̎̌̈́͌͋͘͘͘͝͝͝͝tu̩ķ̷̢̢̭̟̠̗͎̟̪̝̥̲̭͈̹̙̫̘͈̺̯̹̫͈̦̫̐̀̿̌͐͌̅̾͌͋̒͊̅̌͗̈̂̂̂͗͗̄̀͑̕͘͜͠͠P̵̶̦̺̤̫̠̺̬̈̆͋͒͋͂͌͒̀̄͂̏͝ų̴̙̜͖̗̘̖̯̺̌̈́͌́͐̂́̎̈́͜͜͜͝͝͠͠()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v34

    xor-int v38, v38, v34

    const v36, 0x1ac9e7

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̵̸̠͚͕̦͊̔̀̂̃Ḃ̸̴̴̸̸̸̡̢̰͕̫̺̙̖͉̃̍̋̌͗̾̄̌͘̕͝͝͝p̷̸̸̨̧̧̛̛̛̫̬̭̟͕̫̦͚̯͈̯̥̙̦̈̆̎̃͌͗̌̆͑͌̇̋͌̿͗͘͘͜͜͝c͉̯͎̫͎͖̤̥͌̈̈̏͑̈́̌̂͋́̌̆̈̕͜͝ņ͉̗̫̥͕̝̖̎̔͠t͈̱͌́͌͝͠ͅp̫̰̭̻̺̋̽͗͌ķ̷̵̛̭̮̗̤̩̮̰͓̗̂͌͆̌̽͆͐̈́̌̇̈́̚̚͜ô̒a̷̧̫̙̩̰̋̈̃̋͌̅̂͝ǎ̴̷̧̧̛͎͓͉̻͕̰̙̺̖̫̤͙͎̥̾̈́̑͗̑̀̈̀̏͘͜͜͜ͅā̜ȁ̸̢͎̔͠l̶̮̥̯̭̗̠͊͐̑͒͑̂͂̄̋͑̚̕͜͠͠c̙̫l̼͝Ķ̵̷̵̴͈̫̠͉̘͈̤̻̟̞̺̥͈̌́̀̽͑́̈͌̂͗̌̈̀̐̂͒̚c()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v34

    xor-int v36, v36, v34

    const v37, 0x1aa7a6

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̦K̭̫͚̥̽͆́͋͂̉̃̋͝͠â̷̶̴̛̫͚̲̱̦͓͖̩̮͙̝̖̮̤̬̦̯͕̲͚̱̮̙̎̈́̃̿̈́̐͑̅̊̂͆̃́͑͑̿̀̂̈͘̕͜͝͝͠e̸̲̰̻̝̙͉̤͕͓͋̐̌͝ų̷̧̥͈͎͓̪̱͉̘̪̥͎̈͐̄̎̾̃̄̈̆͗̚͝ą̶̴̛̖͚̰̥̎͆́͌̎̌͜͜͜a̎K̷̺̯̲̈͘ļ̸͇̱͎̺̹̺̮̘̯̹̞̟̼͌̽̂́̈́̀̌̎̈́̑̎̃̃̀͒̂̈́͌͒͊͋͝nā̦a̧̿ö̵̶̷̤͕͚́͒̌͝o͈h̃a̫̩̩̯͙̯̻̫̿͋k͉̎ä̵̴̢̬̮̙̫́̿̅̉͌̓̎͊̚͝u̶͋͜ṯ̴̹̪͇͙̱͉̯̫̱̻͓̯̐̔͌͋̾̆̈̂͗̑͌͌̊͌ő͈̮̦̎̄͗̆͝K̸̹̦̈́̈͋̈́͜K̸͎̖͂̑͘a̧̺̰̘͂͌͜()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v34

    xor-int v37, v37, v34

    invoke-static/range {v35 .. v38}, Lcom/kashi/settings/view/BlurBackgroundImageView;->n̛͚͓̥͂K̸̮ö̭̎ç̸̷̮̫̗̫̰̰̍̄̚͠ä̷̷̜̪̘͈̫̯͚́͋͊̋̋͊͑̋͜͜B̘̺̯̒o̶̧̧̠̘͉̫̙̘̹͇̊͂̆̋̅ȅ̴̥̭̗̙̠͚̫̮̺̗̘͚͎̦̠̅͋͗͌̉́̂͐͑̆͆͘͜ã̶̷̢̛̰̪̱̯̗̫̰̙̜͙̼̫̲̼̫̯̫̲͉̗͗̾͒̈̑͊̎̏̃́̈̉̈́͋̊͘͝͝Ķ̸̴̜͎͚̗̘̀̽͑̾̿̂͌̅̄͗̚k̷̫͎a̗̎̄͌͂̃̚ḩ̷̭̭͕̥̇̀̈͑̅̈̀̄P̱͙͇̮͈̋́͜Ķ̧͉̹̹̯̦̪̹̃̆̄̂̈́̄̃͝͠aã̵̸̷̭̰̭͉̯̬͚̱̲͚̪͓̮̲͎̱́͒̀̂̆̂̈̿̃͊̄͆͋̈͗́̏̓̿̚͜͜͝͝ͅa͓a̼͋̅̈̂͋̍͝ȃ̧̲̫̩͘u̠̲̫̞͎̠̅̎͑̌̾̎̈ŭ(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v2, v35

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->h̡͈̻̪̗̻̥͉̟̟̭̭̼͓̙̩͗̈͊̃̈́̂̾̈́̋̆͘͘͠͝͝o̢̢̫̠͆̐̏͘͜ǎ̸̸̸̮̗̩̭̦̌̐̎̔̚͜͝͠͝͠n̢͙͈̠͌̈́̑͠ą̸̭̭̱̈͜͜a̢̧̢̠͎͐̅͗̾͝͝ḁ̸̙̾͘a̰͎̱̫͌̆̿̋̈͋͂͜ǒ̷̶̵̢̠̤̝̺̎̌̌̄͗̾̎̍t̷̙̩̖͜͠ḩ̸̸̨̛̺̖͉̭͑́̈̂̎̈̎̐͘͜͜͝͝͝e̸̶̢̢̢̢̛̘̭̥̗̱̱͈̪̫̗̫͚̺̝͊͌͑̈̈̈́̂͂̌͆̉̋͌̈́̅͋̃͂ͅK̮̭̋̆͆͋k͗ã̴̬̪̺͈͈͆̌͌̎̄̑̃ͅc̸̷̨̛̛͓̠͎̫͓̃̔̌͗́̈͗͋̑̌̄̈̆̑̆͌͘͜͝P̸̸̛̬̯̫̘͕̼͎͎̅̑̂͑͌̂̌͆͋̚̚͘l̶̵͉̜̤̟̜̭̯͉̤̓̑̋͑̏͜͜͝(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v4

    if-nez v4, :cond_d0

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̷̭̮̭͌̌̒̃̐̅͜͝͠͝P͕ḛ̷͇̭̾̀͌̑̌̕o̶̸͉̜̩̗̘͒͌̅́͘B̟Bļ̴̵̛̛̭̫̜̯̥͇̤̀͋͂̃̾̐̔̌̐̅̈́͜͝B̵̸̸̷̧̛̛̭̦͓̩͙̫̖̖̞̘̺͚̻͎͎̽̾̈́͒̊̋͌́̂̄̌͘͘̕͜͝͝B̸̭͕͙͚͊̅u̷̙͉̫̅͊̂̕͠h̵̢̧͕̗̙̖̰̻̗͗̐͌̎͌̇̈̈̎͜ḩ̸̸̷̸̸̨̛̗̺̮̤͚̰̫̅̔͑̈́̏̾̈̒̌͗̎͋̂̄̾̽̄̔͘͜͜͜͝͝͝p̸̶̷̨̧̧̧̘̝̹̙̭̫̪̈́̈́͋̀͋̂͗͗͜P̢̨̘̖̺̮͕͙̌̿̾͘͜͜p̺̙͈̱͕̹̥̗̦̪͈̱̫̫̺͌̂̐̑̄̂͗̿̂͋͘͝͝ú̷̧̫̥͕̹̯̥̗͂̍́͝aa̷̺̍̅̀̋͜͜ó̸̵̢̩̭̯͗͌̎͑̅͜͝͝(Ljava/lang/Object;Ljava/lang/Object;I)Z

    invoke-static {v6}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->h̷̷̷̺͕͎͕͖̥̫̠̱͙̗̥̀̅̂͋̋͒̂̏͝͝͝ơ̸̛̯̼̌͗k̸͈̝̹͒K̶͈͚̖B̵̷̷̥̥̈͘P̛̈́͘aa͎̹͓ȩ̭͖͗̑̍̚Ke̵̶̷̶̬͈͉̖̤̺̫͖̲̎̋̂̀̋̈͗͂̐͘ͅoc̷͈̭̓̈́̽͊̌̈́̆͊͋̋̀̄͝ȗ̧̢̧̧̧͎̭̝̗̻͚͇̯̗̺͚́̇̐̎̂̌̀͒̉́̂͝͠ç̸̶̶̴̢̧̛̩͈̫̯̺̗̭̥̫̙͈͙̜̘͎̙͓͑̂̑͋̑̋̋͒̌͂̎̾̌͋͊̇̿̎̅̈́a̵̵̸̵̴̶̧̫̯͎͚̙̫̱̯͎͒̂̈́͗̀̑̃̑͗̔̑̈͌̔́̈̚͜͜l̃̀ţ̛͈̗̱̤͒̌̔̀͜͝a͓̹̮̫̥̫͊̀̽̒P̫̠̋͌ķ͚͉͋̿͆̓h̶̵̶̸̢̡̨̰̖̩̫̤̱̗̦̩͚̥̅̌͐̈͗͗͋̂ä̶́͒̂(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v39

    const v42, 0x1ab6bb

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̆͘u̴̴̷̫͓̅̄̍̎͘͜ṳ̶̶̷̸̶̸̧̧͎̥̼̮̪̭͎̠̹̪̘͎̹̻͉̩̤̰͈̥̠̯͎̫̽͋͑̾̆̏̐̄̈́̏͌͗͌͌̎̽̋̅̑̋̌́̌͌̈̾͗̏͒͗̕͘͜a̸̶̰͚̤̅̔͋P͚̱̹̼͖̫͉̮͑̔̃a̧̖̗͉͗̉̈͗͋͒͗͋̄̉̂͋̏P̸̸̷̴̢̛̛̻̲͓̫͓̞̗̻͕̲͙̘̮͓̘̹̰̖̃̽͋̆͆͋̃̒͐͋͌̃̅̉̿͗̂͘͜͝oț̴̷̴̯̮̩͇̜̫̦̫̺̋̂̅̌͗̆͘͘͝p̴̢̛͚̿̔̐̌͗̄̔̾̈́͐͘̚͠K͓̍̊̍̋͗͜ơ̴̴͎̼̲̝̺͊̿̔n̛̫̘̯̙̹̦͖͓̹̖͖͙̯̮̍͆̿̓̒͑̐̋̋̆̋͑͜͝ͅK̸͕̩̑̑͋͋K̷̷̢͈̥̻̙̭͚̃͐̃̾̎̑͗͗̅̏̚͝͠c̵c̷͇̯̅̑͋()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v38

    xor-int v42, v42, v38

    const v40, 0x1ac523

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->u̢͎͉̗̝͎̦̎̈̔̋̄̚eK̸͓̠̦̓̈́̐̔̈́̆͆̎͜P̛͋͘K̸̵̷̫̹̯͓̗̮̟̼̹̘̪͚̾͗̉͑̂͗̑͜͠͠ņ̲̤͎́͐̎̾́͐hưḙ̸̴̶̴̸̶̛͎̮̯̩̤̹̪̃͑̅̽͊͒̂̈́̈̄̔͜ţͅp̨̛͑͌͒ä̷̵̢̢̹̱̗̝͉̺̰͎̦͈̺͇̱͈̮̺̭̮̍͒́̈̑̄̈̄̋́̂̍P̴̧͇̺͌̋͝h̴̫̑pê̸̶̷̡̫̠̼͚̫̪͓̋͘͘͝c̡̛̥̠͖͌͗͘͘͝K̴̶̢̖͎̤͙͎̺̥͗͋̇̄̂͌̇̏̏͜o̧̦̝̭͗̈̏̃̈́͗̀̾͜k̴̨̛̞͉͓̺̺̯̱͎̘͋̑̃̄͌͜t̯̋a̴͗n͉ë̴̘̟́̌̎̈͌͜ą̵̴̢̫͚̯̰̆̈́̎͗̌̈́̓͆͋͘͜k̚ǎ̷̸̷͉̺̩̮̭̬̈́̈́͑̾͂̑̐͝()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v38

    xor-int v40, v40, v38

    const v41, 0x1ab69d

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v38

    xor-int v41, v41, v38

    invoke-static/range {v39 .. v42}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ã̶̧̧̡̠̺̱͚̮̀̃̔͝a̶̷̸̖̫͙̲̠̾͗Ḃ̶̫͈̈͠h̴̷͂̃ô̭̯͉͌͋͌̇̿̋͜͜͠͝a̷K̸̨̨͖͉̭̺̼͈̱̏̈́̌̿̐̉͑̾̏͌̚K̵͚̻̘͓͙̏͐͂͘ç̢̛͈̥̻̖̫͉̜̄́̄̄̈ä̷̧͎̰͈̰̩̥̱̭̘̻͋̈Kő̵͚͉̈́̈́h̶̴̸̴̷̸̸̵̠̫̭̮̫͇̻̫̼̺͚̩̰̯̮͚̭̫̫̦͌̂͆͆̌̌͂͌̌̈́̂͋̔̔̌͌̊̂̈́̈́̌͐̕͜͜͝K͕͓̋ķ̯̺͊̆͌͑̎͘̚͝a̸͇̭̭͈͋͗̾͗̃̏͘p̵̘̭̻̯̈̏̿̐̊̅̕͝ä̢̭̜̫͈̠́̂͋͌͌̒͗͋̾a̶̷̛͎̼̜͉̔̈̈͝e͙̩͎̿̌́̓͑͜P̫̎͋͠p̧̗͓̰͖͋̐̒̐̃͑̅̈́̀͘͝͝á̒o̵̶̥͚͐͗͘͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v2, v39

    invoke-static {v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ţ̢̢̮̭̱̭̯̫͈̂͌͌́̈́̈̈́̎͌̌̔͗̉͠͝͝͝B̴̸̶̸̵̶̧̛̯͈͚̭̺͓͉̠̖̓̋̇̂̔̌́̌͊̎̂̂̂͘͝͝͠tǫ̵̠͖̤̯̺͆͌̅̔e̢̨͈͌̂̅̂̂͝h͙̗̗͙̜͗̄̌̾̑͘͝͝t̷̨̛̛̫̙͉̮̝̍̀̂͌̈͐ǫ̤͚̰͓̫͌͌́̚k̵̸̛̺̪͈͚̬͎̜̹͗̃͒̅̀̋͌͗̎͗o̸̧̰̭̭̤̯̲̍̋͊͌̕͜͠l̸̫͇̩̦̊͑̽͑̚͠P̤͙̮̹͎͑̿̐͗̂t̩̥͙̗̱̘̗͌̋̉͒̿̿͐̂̀̈̕͝a̛̱̱̲̽̀̒̃h͚̝̱͂͐ǔ̸̸̸̡̧̨͚̹̯͎͉͕̍̅͗͗̀̅͝k̸̲͎̼͓͋̅̽B̴̸̴͎̘͉̺͗̔̂̿̐͝K͉̥̑͆̌͐̑͘K̗̘̂o̿͠aB̶̙̯͕͊͊e̷̸̛͈̤͙̾͜(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->õ̻ȁ̗̫̖͉̬̦̬̱͕̎͌̈́̑̌̌͑̃͜͝n̘̥͗̈ṵ̸̢̠̦̭͙̎̐̎̓͜e͚̙̯ĺ̴̷̷̲͈̙̥̼͉̥̙̂̋̾̈́̀̌̉͋B͕̙̄͌̋͌̓̃͘h̶̴̷̨̧̛͉͓̻͈̫̘͖͈̫̱̖̲̙̯̏̀̀͆̍̂̌͌̌̽̔̍̌̾͋͜͝͝͝B̧̥̋̈́̈n̸̗̜͇̦̱͙̞̭̞͑̐͋͜c̴̷̸̷̶̸̸̨̨̢̭̮̩͓̪͈͓͚̭̺͉̱̮͚͌̋̈̏̇͌̈̈̾̀̾̂̿͐̅̈́̈́̈͌͂̊͑͘̚ͅc̨̢̫͕̤̟̫͈͎̫͚̫͎͋͆̂̅̌͒̔̈͌́̋̒̔̚͠ͅn͈͉p̷̧̪̜̯̤̹̤̭̿͌̌͗̔̈́͆̈̃̈͌͌͘̕͝p̷̯̗̘̽͊͗͠ţ̶̯̱͎͓̦̫͌͋̈́͑̉̚̕͠k̴̸̷̴̦͉̫͓̂͑̍̊͘ͅu̶̬̻͚͎͒͋̑͋̋̃͝(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->c̴̥͂͋͝ȍ̸̲̞̦͂̾͒K̛̛̦͚͚̹̼̈́̂̔̌̔́͌̈́̏̈̌̀̂͜͝ê͉͚͚̦͖̼̦̠̰͋̐̃̂͘̚͝t̶̸̡̢̪̝͙͂͑̊̌͜͝a̋̾͌k̵̲͕͙͗̾̆̌̔ǎ̸̶̸̧͚͎̹͚͈̻̰̩̮̺̠̯̱̌̂̎͌͌̋͗̌̾͌̿̌̍̅̈͘͘n͓͌̃p̷̧̧̭̭̤̭͚̼͌̅͊n̸̸͗͗̉Kā̸̢͕̩̟͙̬͕̱̲̯̼͗͋͗̊̅̃̅̿̒͌̐͌̃̚͜͝͝ͅĶ̸̸̴̧̛̯͚̯̬̯͎̲̫͕̹̺̜͚̼͚̖͓̭̮͚̫͕̖̓͋̂͐̍̌̉̈́̄̂̓̄̆̎̋̔͗͑̈̏̋̀͑͜͝͝ư̯̫̻͙̗̋̂͋͐B̫͕̮̯̈̾͒͜u̥̭a̧a̦͇̩̅͋͌͜ẗ̮̯͑̎K̷̯̻̩̎̂̃̑̈́̋͘͝a͉̮̔ô̷̗̺͈̗̈͂̎͜͝(Ljava/lang/Object;)V

    :cond_d0
    const/4 v0, 0x1

    return v0
.end method

.method public renderScriptBlur(Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;
    .registers 79

    move/from16 v27, p4

    move/from16 v26, p3

    move/from16 v25, p2

    move-object/from16 v24, p1

    move-object/from16 v23, p0

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̢̯̹̋̑̂͌K̝̹̃͊c̫l̏̔t͓̮̑̆̈͜K̴̗̤̏̎h̴̢̢̛̬͉̫̺̬̩̐̾̃̄͜͜͝K̢̛͕̪̿̅͋͘͜͠k̴̶̷̭͈͇͎̮̫̐͑̔̇̃̿͘͘͠͝͝a̷͉̅͗͗̒̄ǎ̡̨̛͓̱͖͉̭̬͇͋̂̈͌̈́̍͌͊̈̏͜͠͝͠͝a̸̡̫̫͗̌͌͠p̰͋̂͘͜ļ̸̯͓̃͌̈̔̎͠͝ap̸̸̴̶̢͓͙̺͉̠̼̭̞͈̑̌̌̎̎̀̀͌̾́͠P̖̤̮̹̅͗̌̿͝o͓̪̓͠͠a̸̖̋̌̀͜ȇ̸̸̸̷̶̷̴̢̨̧͖̤̩͚͈̩̺̲̘̹̲̪͕̫̱̤̩̗̠͉̼̱̠̱͚̦̞̺̪̋̀͋̌̑́̾̈́̆̍͋̀͒̓͑̏̿̈̈́̀͌̈́̒̃̋̋̈̄͘̚͜͝͝͝͝͠ͅͅPa̬̪̩̗̋̄̐̔͒͒u͇̬͒̓̎h̹̫̤͑̔̆̈́͌̈́()J

    move-result-wide v16

    invoke-static/range {v24 .. v24}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->c̢̼̭͉͈̪̰̱͖̀̀̃̔͘͠͝͠ǎ̹̌̀B̶̶̢̼̙̞̟͋͊̈́͌͝a̴̸͌h̶̰͚͚͚̰̦͕̫͕̫́͗͗͂̄͜͜͝͝k͚͜B̵̴̛̜̘͌̉͊͗̈́͝ẗ͎͈̹́̂̑̿̌̌̏B̷̨̞̻̖̫́͑̋l̸̶̶̡̢̻͎̮̮̱̰̺̯̺̐̈́̄̿̏̆̃͗͠͝o̴̧̹̠̟̱͈̹͇̮͈̙͓̠̎̽̒̋͗̆͗̎̌̋̽͝͝Ķ̸̙͖̲̖̰̫̭̰͕̈́̋̈́̄̿̑́͠ô̴̷̸̷̹̫̗̥̻͓̲̦͓͆̔̃̌̌̐̄͑͠K̴̢̧̧̺̫͕̺̦̙̗̠̺̫͓̭̤̦̩̫̥͓͕̫̖͋̀͗̾͊͊̂̾̾̃̔̌͐̋͋̌̀̏̋́̑̂̿̚͜͝͝ͅk̙̭̭̭͈̪̪͐t͇̯̔͑̌͘͠B̵̸̧̤̥̱͎̎͊̏̇͘p̛͖̟̎̂̈́̕͝ä̼̤̞̱̅͗́̉̾̕̕(Ljava/lang/Object;)Landroid/graphics/Bitmap$Config;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->B̅͘n̈́̍͋̃̉̂͐͝BB̢̺̠̘̰̭̃̃̅̎̓̏̃̈́̇̚ư̸̷̸̶̵̷͚͈͗͌̿͌̅͒͜͜͠c̠̒̚͝l͓͙̫̤̭͉̠̝̮̏͑͐͋͐͗͜͝p̸̷̸̶̸̸̨͖̹̫̙̲͖̲̟̭̘̹̥̗̥̻̍͒̐̌̂̾͋̊̈̿́̚͘͘͘͜͝͝͝ň̲͌l̡̫̥̹̞͑̚ǔ̹͚͌̔̍͐̃͝ǫ̛͕̜͖̩͋̈͝a̷̶̪̫͠Ǩ͐̾ȁ̭̹̰͝ţ͎̺̰͉̬͚̺̫̋̋̋̎̍͗̅̎͠p̧̙̱̂̌͂̿̌͋̀̌͒̾̌̑̎̋͠o̰̕͜uP̶̖͕̝͓̯̀̂̈͗̿͜a͋k̸̨̪̤͂̌͜͝o̴̶̸̴̺̺͖͚̖̫͌̂̆̏̂̊̈́͗͆̌lą̵̫̦͓̘̫́̚p̸̸̷̵̴͎̯̮̗̮̟͉̱̫̟͉̹̙͙͗̾̂̿̌̎̎͌̆̂̉͑̌͝n̛̥̘͝(Ljava/lang/Object;Ljava/lang/Object;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v19, 0x60

    invoke-static {v9}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̛͕̯̩͊̒̂̾͜ỏͅa͎̐͘͝a͉̻̎̌l̴̷̦͉̞̃̑̆͒̅̐̈́̌̽͋̋͐̉̂̆̌͗͜ͅē̶̼̦̎̎͑̓̀̈û̴̧̘͈̙̤̹̙͗͌͂̌̈́͌͘P̸̸̸̩͉̥͓̱̙̺̗͖͎̫̀͑̌̀̂͌̒̾̋̌͐̋͝ḽ̴̷̷̸̡̧̨̲̗̫͎̱͎͚̐̂̃̆̆̒͌͗̍̆͗̕͝ţ̢̧̩̜̭̩̫͈̋̾̾̆̇̊̈́͝͝͝ư͇͕̤̍͌̄̎͗͗͑̈k̫̦̦̦̅͝ā̵̵̬̥̘̤̲̘̱̮͐̔̌̿̍͘o̵̩̰̫̖̗̐̋̎̑̂͌ǎ̛̙̭ȩ̙̼̋̇̌̂e̶̸̢̛̥̻͓͓̹̻͎͗̅̉̀̌͋̌̈̂̚K̶ôơ̗̠̫̌̄͘͝c̛̹͚̑̂Pǫ̸̵͕͚͙̂̏̋̋̌̂̿o̙͎̞͎͈͐̄̌̈ȩ̵͉̤̬̂̂͗̅͒̆̑̽̎͘̚(Ljava/lang/Object;)I

    move-result v20

    invoke-static {v9}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̙̈́Ķ̷̸̫̺̘̩͗͌͆͑̎͋̌̂̚k̸̢̗͕̫̹̃̈̃̋̿̔̊͝K̷̨͚̖͈̋̑͆̃͘ų̸̝̫͉̎̌̋̔̌͒̋̃̎̉͘͜a̫̯̲o̸̸̸̱̥̻͌͆̎͋̋̕͘͝k̫B̧͎͝ḧ̴̶̢͉̯͓̮̫͎̯̥́̿̍͌͌̈̔̔̎̾̋͌̋̚͠͠͠e̸͇͚̮̮̟͎͋̎͗̏͘̚o̴̱͕̗̔͠ā̴̶̧̧͉̹̗͗͐̅̃̎̿̚͝ǎ̴̶̴̧̭̩̗̭̤̥̫̹̖̲͈̯̬͉̤̬̤̫̌̋̐̑͗̌̌̈̏͂͋͌̌͂̌͑͘͘̚͜͜͠͝͝͝k̶̸̸͇͓̮̹͚̩̫͈͊̄̄̃̓͑͂̿̋̌̋̾͂͘͝͝͝͝t̷͈̫̠̝̻̬͕̱̗͊̅̎̆̚͜͜k̸̸̡̞̘͚̘̯̮̺̐̋̂͋̒̇͗̂͘͜͝o̺͎͋à̩̇͑o̸̧̡̖̺̭̘̫͌̍̿̀̇͑̂(Ljava/lang/Object;)I

    move-result v21

    div-int/lit8 v21, v21, 0x60

    div-int v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v9, v0, v1, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->K̶lP̫͗͌o͕͉̘̫͋̌̈̂͌̑̾̈͊̕eą͓͙̑̾̎͜e̹̹̤̯͋͋̈B̍̂ǎ̴̮̇ĉ̸̸̤̹̝̱͈͌͗̂̆͘͘͜͝͝a̸̘̰͓̹̫̎̔͐t̸̝͒̅͗͗̎̎͂̑̅͊͘͘B̸̷̴̸̢̫͈͚̺͈̙̯̱͚̤̻̋̂̈́͌̉͌̂̋̓͆͊̈́̌̎̔̚͜͜͠û̴͐͘͜͠ó̴̄̎Ķ̵̦͚̺͈̦̗̇͋̎͋͋͗̿̀̄͗̌͜a͑͘c̸̛͈̺̭͈̪͒̿̿͌̈̋̔͝ä̢̨̭̮̙̫̰̙͓̎̂̿͜͜͝a̸̸̸̸̷̷̵̢̧̨̨̢̛̛̞͈̟̜͈̫̘̦̩͓͕̦̮͉̜̰͎͚̾̑͒͗̈́̉̂́̅̒͗̈́̈́̂̅͐̽̋̍̌̾̑̋͗̆̀̋͂̈́̐̂̆̂̿̋͗̋͋̏̒͊̈́̚̚͘͘͜͜͝͝͠͝a̶̧̧̘̪̦͋̔͝ķ͚̏̄̈́̎̌͒͝(Ljava/lang/Object;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-static {v14}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̙̈́Ķ̷̸̫̺̘̩͗͌͆͑̎͋̌̂̚k̸̢̗͕̫̹̃̈̃̋̿̔̊͝K̷̨͚̖͈̋̑͆̃͘ų̸̝̫͉̎̌̋̔̌͒̋̃̎̉͘͜a̫̯̲o̸̸̸̱̥̻͌͆̎͋̋̕͘͝k̫B̧͎͝ḧ̴̶̢͉̯͓̮̫͎̯̥́̿̍͌͌̈̔̔̎̾̋͌̋̚͠͠͠e̸͇͚̮̮̟͎͋̎͗̏͘̚o̴̱͕̗̔͠ā̴̶̧̧͉̹̗͗͐̅̃̎̿̚͝ǎ̴̶̴̧̭̩̗̭̤̥̫̹̖̲͈̯̬͉̤̬̤̫̌̋̐̑͗̌̌̈̏͂͋͌̌͂̌͑͘͘̚͜͜͠͝͝͝k̶̸̸͇͓̮̹͚̩̫͈͊̄̄̃̓͑͂̿̋̌̋̾͂͘͝͝͝͝t̷͈̫̠̝̻̬͕̱̗͊̅̎̆̚͜͜k̸̸̡̞̘͚̘̯̮̺̐̋̂͋̒̇͗̂͘͜͝o̺͎͋à̩̇͑o̸̧̡̖̺̭̘̫͌̍̿̀̇͑̂(Ljava/lang/Object;)I

    move-result v19

    mul-int/lit8 v20, v25, 0x2

    add-int v19, v19, v20

    invoke-static {v14}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̛͕̯̩͊̒̂̾͜ỏͅa͎̐͘͝a͉̻̎̌l̴̷̦͉̞̃̑̆͒̅̐̈́̌̽͋̋͐̉̂̆̌͗͜ͅē̶̼̦̎̎͑̓̀̈û̴̧̘͈̙̤̹̙͗͌͂̌̈́͌͘P̸̸̸̩͉̥͓̱̙̺̗͖͎̫̀͑̌̀̂͌̒̾̋̌͐̋͝ḽ̴̷̷̸̡̧̨̲̗̫͎̱͎͚̐̂̃̆̆̒͌͗̍̆͗̕͝ţ̢̧̩̜̭̩̫͈̋̾̾̆̇̊̈́͝͝͝ư͇͕̤̍͌̄̎͗͗͑̈k̫̦̦̦̅͝ā̵̵̬̥̘̤̲̘̱̮͐̔̌̿̍͘o̵̩̰̫̖̗̐̋̎̑̂͌ǎ̛̙̭ȩ̙̼̋̇̌̂e̶̸̢̛̥̻͓͓̹̻͎͗̅̉̀̌͋̌̈̂̚K̶ôơ̗̠̫̌̄͘͝c̛̹͚̑̂Pǫ̸̵͕͚͙̂̏̋̋̌̂̿o̙͎̞͎͈͐̄̌̈ȩ̵͉̤̬̂̂͗̅͒̆̑̽̎͘̚(Ljava/lang/Object;)I

    move-result v20

    mul-int/lit8 v21, v25, 0x2

    add-int v20, v20, v21

    invoke-static {v14}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->c̢̼̭͉͈̪̰̱͖̀̀̃̔͘͠͝͠ǎ̹̌̀B̶̶̢̼̙̞̟͋͊̈́͌͝a̴̸͌h̶̰͚͚͚̰̦͕̫͕̫́͗͗͂̄͜͜͝͝k͚͜B̵̴̛̜̘͌̉͊͗̈́͝ẗ͎͈̹́̂̑̿̌̌̏B̷̨̞̻̖̫́͑̋l̸̶̶̡̢̻͎̮̮̱̰̺̯̺̐̈́̄̿̏̆̃͗͠͝o̴̧̹̠̟̱͈̹͇̮͈̙͓̠̎̽̒̋͗̆͗̎̌̋̽͝͝Ķ̸̙͖̲̖̰̫̭̰͕̈́̋̈́̄̿̑́͠ô̴̷̸̷̹̫̗̥̻͓̲̦͓͆̔̃̌̌̐̄͑͠K̴̢̧̧̺̫͕̺̦̙̗̠̺̫͓̭̤̦̩̫̥͓͕̫̖͋̀͗̾͊͊̂̾̾̃̔̌͐̋͋̌̀̏̋́̑̂̿̚͜͝͝ͅk̙̭̭̭͈̪̪͐t͇̯̔͑̌͘͠B̵̸̧̤̥̱͎̎͊̏̇͘p̛͖̟̎̂̈́̕͝ä̼̤̞̱̅͗́̉̾̕̕(Ljava/lang/Object;)Landroid/graphics/Bitmap$Config;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ą̸̫̪͚̯͎̮̘͗̈͝a̸̧̺̩̺̪͓͈̾͆̑p̶̛̲̱͇̪̋̈́͌o͚͎̹͑͋͗͋̌͘͝Ḵ̸̘̆͌t͕̆͋͌l̪B̀k̷͉̥͈̦̪̩̂͑̀͌̀͐̕͜͜͝͝͝c̶̴̡̛̗̜̱̲̭͓͓̞̗̹͊̎̂̋̉͜͝ư̶̶̢̢̭͓͚̙̯͇̌̀̑̆͋͊͝͝nl̶͎̎̑̃̒t̿ḩ̷̨̪̮͉̥͉̫̯̯̫̱̋͑̐̎̅͘͘͝K̴͈̘̃̆ȃ̴̟͓̯̖̃̃̈́͆̈́̑̆̌̆k̢͚͑̿̎̌K̹͓͋̈́̆̋Ǩ̛̺̖͋̀̌̔̚̕t̙̦͕̘͕̺̂̂̈́̈̌͌͊͝͝p̟̫̱͋̄̋ͅpK͕̯͠ą̠̭̭́̋̃͋͆͘͝ñ̙̿̾͋͘P̷̟͇͎͓͌̈́͜͜͝an͚͈̖̥̐̋̄͑̊̂̿͜͜͝͠n̨̛̮̋͆̋K̯̘̋̉͠t̢͎̭̏̌͑͌̎(IILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->top:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->left:I

    invoke-static {v14}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̙̈́Ķ̷̸̫̺̘̩͗͌͆͑̎͋̌̂̚k̸̢̗͕̫̹̃̈̃̋̿̔̊͝K̷̨͚̖͈̋̑͆̃͘ų̸̝̫͉̎̌̋̔̌͒̋̃̎̉͘͜a̫̯̲o̸̸̸̱̥̻͌͆̎͋̋̕͘͝k̫B̧͎͝ḧ̴̶̢͉̯͓̮̫͎̯̥́̿̍͌͌̈̔̔̎̾̋͌̋̚͠͠͠e̸͇͚̮̮̟͎͋̎͗̏͘̚o̴̱͕̗̔͠ā̴̶̧̧͉̹̗͗͐̅̃̎̿̚͝ǎ̴̶̴̧̭̩̗̭̤̥̫̹̖̲͈̯̬͉̤̬̤̫̌̋̐̑͗̌̌̈̏͂͋͌̌͂̌͑͘͘̚͜͜͠͝͝͝k̶̸̸͇͓̮̹͚̩̫͈͊̄̄̃̓͑͂̿̋̌̋̾͂͘͝͝͝͝t̷͈̫̠̝̻̬͕̱̗͊̅̎̆̚͜͜k̸̸̡̞̘͚̘̯̮̺̐̋̂͋̒̇͗̂͘͜͝o̺͎͋à̩̇͑o̸̧̡̖̺̭̘̫͌̍̿̀̇͑̂(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->right:I

    invoke-static {v14}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̛͕̯̩͊̒̂̾͜ỏͅa͎̐͘͝a͉̻̎̌l̴̷̦͉̞̃̑̆͒̅̐̈́̌̽͋̋͐̉̂̆̌͗͜ͅē̶̼̦̎̎͑̓̀̈û̴̧̘͈̙̤̹̙͗͌͂̌̈́͌͘P̸̸̸̩͉̥͓̱̙̺̗͖͎̫̀͑̌̀̂͌̒̾̋̌͐̋͝ḽ̴̷̷̸̡̧̨̲̗̫͎̱͎͚̐̂̃̆̆̒͌͗̍̆͗̕͝ţ̢̧̩̜̭̩̫͈̋̾̾̆̇̊̈́͝͝͝ư͇͕̤̍͌̄̎͗͗͑̈k̫̦̦̦̅͝ā̵̵̬̥̘̤̲̘̱̮͐̔̌̿̍͘o̵̩̰̫̖̗̐̋̎̑̂͌ǎ̛̙̭ȩ̙̼̋̇̌̂e̶̸̢̛̥̻͓͓̹̻͎͗̅̉̀̌͋̌̈̂̚K̶ôơ̗̠̫̌̄͘͝c̛̹͚̑̂Pǫ̸̵͕͚͙̂̏̋̋̌̂̿o̙͎̞͎͈͐̄̌̈ȩ̵͉̤̬̂̂͗̅͒̆̑̽̎͘̚(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    iput v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    iput v0, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v14}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̙̈́Ķ̷̸̫̺̘̩͗͌͆͑̎͋̌̂̚k̸̢̗͕̫̹̃̈̃̋̿̔̊͝K̷̨͚̖͈̋̑͆̃͘ų̸̝̫͉̎̌̋̔̌͒̋̃̎̉͘͜a̫̯̲o̸̸̸̱̥̻͌͆̎͋̋̕͘͝k̫B̧͎͝ḧ̴̶̢͉̯͓̮̫͎̯̥́̿̍͌͌̈̔̔̎̾̋͌̋̚͠͠͠e̸͇͚̮̮̟͎͋̎͗̏͘̚o̴̱͕̗̔͠ā̴̶̧̧͉̹̗͗͐̅̃̎̿̚͝ǎ̴̶̴̧̭̩̗̭̤̥̫̹̖̲͈̯̬͉̤̬̤̫̌̋̐̑͗̌̌̈̏͂͋͌̌͂̌͑͘͘̚͜͜͠͝͝͝k̶̸̸͇͓̮̹͚̩̫͈͊̄̄̃̓͑͂̿̋̌̋̾͂͘͝͝͝͝t̷͈̫̠̝̻̬͕̱̗͊̅̎̆̚͜͜k̸̸̡̞̘͚̘̯̮̺̐̋̂͋̒̇͗̂͘͜͝o̺͎͋à̩̇͑o̸̧̡̖̺̭̘̫͌̍̿̀̇͑̂(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v14}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̛͕̯̩͊̒̂̾͜ỏͅa͎̐͘͝a͉̻̎̌l̴̷̦͉̞̃̑̆͒̅̐̈́̌̽͋̋͐̉̂̆̌͗͜ͅē̶̼̦̎̎͑̓̀̈û̴̧̘͈̙̤̹̙͗͌͂̌̈́͌͘P̸̸̸̩͉̥͓̱̙̺̗͖͎̫̀͑̌̀̂͌̒̾̋̌͐̋͝ḽ̴̷̷̸̡̧̨̲̗̫͎̱͎͚̐̂̃̆̆̒͌͗̍̆͗̕͝ţ̢̧̩̜̭̩̫͈̋̾̾̆̇̊̈́͝͝͝ư͇͕̤̍͌̄̎͗͗͑̈k̫̦̦̦̅͝ā̵̵̬̥̘̤̲̘̱̮͐̔̌̿̍͘o̵̩̰̫̖̗̐̋̎̑̂͌ǎ̛̙̭ȩ̙̼̋̇̌̂e̶̸̢̛̥̻͓͓̹̻͎͗̅̉̀̌͋̌̈̂̚K̶ôơ̗̠̫̌̄͘͝c̛̹͚̑̂Pǫ̸̵͕͚͙̂̏̋̋̌̂̿o̙͎̞͎͈͐̄̌̈ȩ̵͉̤̬̂̂͗̅͒̆̑̽̎͘̚(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->a̋l̴͓̤̮̂̂̀͜Ķ̴̾͌͝l̵̵̶̖̪͚̝̜̯̲̹̅̏̿͂̌̋͆͑́͜͝l͜ä̠̬̥́͂͐̋͑̚͠Ķ̸̸̶̨̨̮̯͈͎̲͙͎͚̗͈̘̙͚̦̫͉͈̎̃̋͌͊̑̑͂̐̌̇͂́̌̀̕͜͜͜͝͝͠o̫̹̮̹k̸̢̡̧̢̛͕͎͚̗̹̗̦̘͇̗̈́̋̌͐̈̃͋̒͑̋̋̏͒̈́̾͜͝o̯͌͜p̸̧̨̛̼͈͈̭̤̞̬͚̫̥̔̅̃̒̎̀̌̑̎̌͗͜͝Ba̸̷̶͎͙̮̫̗͇̮̭̎̈́̂͑̎̄̑͑͆̈́̆͑̏̄̐̀͌́̈́́͘͜͜͠ͅa͆̃K̸̸̨͎͖͉͚͈̮̰͎̜̗̼͗̈́̈́̈̈̈́̀̿͋̋͘̚͜u̷n̼̈́̈̐̂͂͌͑͐̍͘͝ķ̛̛̹͚͉̖̬̰̱̤͙͈̰̹̟͚̌͂̑̃̎̌̌́̆̍̀͌̌̋̈̚͠͠ǔ̖ë̹͈͕̊̔()Landroid/graphics/Paint$Style;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->o̸̦̫̲͕̜͚̹̦̲̍͋͊͋͝k̹̫̖̫̱̞͓̐̈̍́̈̋̾̔̕͘͜ͅB̴̶͕͙̥͈͐͂͗͗͗̀e̱t̷̷ȇ̴̵̮̱͙̋̄͐ļ̫̗̰̖̯͈̤̩͉̫̦͌̇̆̈́̀̎̍͋̈́̋̀͜͝oK͕̻̯e̜h͙͙͎̘̾̌̄͋͝͝ͅͅa̛̻̫̲̫͉̎͝ơ̸̵̶̶̸̸̸̧̧̧̛̟͖̯̗̭̪̗͓̦̗̪͎̪̈́̈̌̏̈̂̎́͑̅̏͊̒̈͒̚͝͝u͈̥͌͑͜p̵̨̫̭͓͙̈́̃͗͌̈̌͘͠ö̥a̶̬̥͎̘̲̰̯̮͈̋̐͗̏͌̈́͌̌̆̅͘͘B̸t̠̀̂o̷̷̢̮̗̯̫͙̾̌̋͆̋̎̌̄̎̋̀͌͜͝c̷̶̶̶̸̨̢̧̨̢̲̯̫̺̯̻͖͇̎̂̇̅̿̋̆̋͘̚͘͠à̶̸̢̯̺͚̱̮͊̓̂̚K̷̛͌̂͜ͅǒ̧̩̫̤̿͑͝(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v11, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->Ḵ́̈̆͝u̵̵̧̥̪̯̯̪̯͚̬͙̦̬̗̦͎͌̈͌̃͋͋͋́͑̈̿̈́̿̃͌͌́͌̎̋̈̾͗̿͂̌̚͜͝͝ͅn̛̫̺͗̈̄̇̓u̠̪̒̐̔͝ťaṋ̨̨̭̦̭̘͗́̂́̐͊͜͜͝͝n̷̶̡̪̥̺̖͚͈̟̱̹̺̠̱̋͊͌̈́̌̌̂͑̑̐̈́̚͜͠͝ļ̷̶̴̢̜͕͉͚͉͑͂̌̈̍͐̆̎̋̈́̾̈͘̚͜͝͝e̫̻o̸̴̧̯̠̦͉̎͂h̭̥͎̄a̱P̨̅̈̈̌ūp̴̧̨̛͉̜̤̗͕̞͋́̌͂̈́́̿̈́̈̏͗̈͝ͅȏ͎̌̊ķ̸͎̥͓̈́̈̋̂͗̕͝ă͕͠ç̷̫̦̙͉̺̯̌̑͌̄͌̀̈́͘ơ̸̷̷̸̧̯͉͎͎̱͓͓̺̤̱̙͚̋̃̑̀͗̈́͗̄̈́̒̂͊̑̂͊̍̚̕͜͝͝o̶̘̭͑k̨̛͓̦̙͌̈́̌͐̈͘(Ljava/lang/Object;Z)V

    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->p͎̺̭͜ḙ̯̗̈̈́͘ͅeḆp̶̢̛̦͕̫̘̺̐̈́͜K̺̫̪̋̂K̷̢̫̩̫̥̭͚̦̱̥̖̓̾̈̋B̧̌a̸̴̡̮̎̍͝ḧ̸̡͖̩̗͒K̼̪̩̪̫̎ȍ̸̥̥̿͒̇͜͜ơ̸̭͉̺̬̮͕̻̗̜͉̔̈̋̎̑͘͜͝l̷̢̮̪̺̥̮̫̭͈̄͒̿̋͋̔̀͋͗͝t͚͇̥̔͝ă̢̰͒̌̉͌͝ẖ̶̫͎̽̌͐̾͝h̵̏̑ą̢̛̺̗́̌̅̈́͌̉͒͜ḧ̻́ơ̸̢͎̲͎̺̼̼̤̗͎͈͚̱̗͑͒͂̉́̿̑̚͜͝h̞͓̉͌̚͝P̴̛̗̥̯͚̪͈͈̘̗͚̥̿̀̐͌̃̌͌̎̕č̶̸̶̖͓̫̼͇̩̭̥̙̮͓̄̏̂́͗̾̌̀͜͜ķ̶̸̷̧̺̖̫̖̱͈̤̙̰͕̹̥̌̂̄̌̌̉̾̓̍̈̂͌̅̽̅͌̈́̃̏͘͘͝͠͝(Ljava/lang/Object;IIII)V

    invoke-static {v4, v14, v15, v5, v11}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->a̷̧̼̺̗̫͉͎̙̮̰̥͇̔͒̌͒̄̅̌̋̌͗͌̒͌͝Ḱ̭̮͒̀o̧͕̞̺̜̩̱̮̦̦̟̅̆̔̋̊̆̃͂͋͐̎́̏͒̂͘͘͜ǒ̙̺͕͎́a̹̫̱͙͗̿̂͋͘͜u͎ǫ̶̰̤͎̙͓͚͖̭̘̾͗̿͒͂͌̌́̎̉̍̆̾͒̄͜͜͝ͅň̹̭̂B̭̹̜̠̰̲͐̋̿͌͘͝c̔ë̵̢̛̫͓̼̭̥͙͎͈̙̥̈́̿̌̅̎̑͂̋̈͌̎̈́̚͘̚̚ą̶̴̴̧̛̭͉̻̭͉̬̰̦̹̦͓̫̘̙̥̂̔͗̾͂̈́͌̽́̃͂͋̉̂̎̑͘͜͜͝͝ȩ̸̷͌̌̃̾̈́͐̔̑͜͝n̷̸̡̻̭̗̗̮̲̂̅̈̌̅̂̄̈́́͊̎̐̚̚̚͘͜o̴̪̾̊̄͘͝n̪̭̺̈́ơ̧̠̻̭̹̜̪͈̈̂̿͂̈̂͌͑͌̽͌o̶̙̠̫͎̫̫̗͗̌̄͠c̩͑(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v23 .. v23}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->h̷̷̷̺͕͎͕͖̥̫̠̱͙̗̥̀̅̂͋̋͒̂̏͝͝͝ơ̸̛̯̼̌͗k̸͈̝̹͒K̶͈͚̖B̵̷̷̥̥̈͘P̛̈́͘aa͎̹͓ȩ̭͖͗̑̍̚Ke̵̶̷̶̬͈͉̖̤̺̫͖̲̎̋̂̀̋̈͗͂̐͘ͅoc̷͈̭̓̈́̽͊̌̈́̆͊͋̋̀̄͝ȗ̧̢̧̧̧͎̭̝̗̻͚͇̯̗̺͚́̇̐̎̂̌̀͒̉́̂͝͠ç̸̶̶̴̢̧̛̩͈̫̯̺̗̭̥̫̙͈͙̜̘͎̙͓͑̂̑͋̑̋̋͒̌͂̎̾̌͋͊̇̿̎̅̈́a̵̵̸̵̴̶̧̫̯͎͚̙̫̱̯͎͒̂̈́͗̀̑̃̑͗̔̑̈͌̔́̈̚͜͜l̃̀ţ̛͈̗̱̤͒̌̔̀͜͝a͓̹̮̫̥̫͊̀̽̒P̫̠̋͌ķ͚͉͋̿͆̓h̶̵̶̸̢̡̨̰̖̩̫̤̱̗̦̩͚̥̅̌͐̈͗͗͋̂ä̶́͒̂(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ca̵͖̺͈̲̖̖̽̋͑u̵͙̯̬̫̪̮͎͎͖͋̇̂̃̐͌̿̋̎͋̈́̋̚͝͠Ķ̶̧̛̛̛̲̰͉̙̫͓̭͓̂̎̂̿͊̇͌͌̃̃̅͊̋̍̾̅̎͌̌͌̀̂́̿̌͜p̵̶̶̨̧̢̛̛͙͙͚͉̗̘͚̮̟͙͉͌̐̿͑̔̎͊̈́͋̈͘̚͜͜͜͜͜ǒ̷̸̯̫̩̘̠͗̂̋̈́̋̚͜ū̸̷̸̸̸̢̢͙͎̭͈͕̥̘̗͕͓͗͂̿̂̂̅̈͊̋̍̈́̎̑̌͝͝K̸̷̢̧̧̮̜̗̭̮͚͚̫̰̾͗̆͌ą̸̷̴̸̵̸̧̢̨͚̖̭̯͙̻̱̭̪̼̱̹͎͚̖̗̩̹̺̦͙̗̥̲̯̥̮͕͈̃͌͗̾̅͒̾̏̀̾̂̅̏̂̅̍͐̔̀̌̈́̚͝͝k̫̻͗̎ų̷̶̢͙̮̲͕̼̹̗͉̜͙̤̥̥̂̿̑̅̈̌͐̃͋̑̐̾̋̈̒̄͒͌͘͜͜͠͠p͈ẖ(Ljava/lang/Object;)Landroid/renderscript/RenderScript;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ĥ̸̷̛̙̱̘̥̻̠͇̟̗͙̠͕͙͓̪͎̰͚̦͓̋̔͒̎̌͑͋́͒̈́͋̄͘͜͜͝á̸̺͙̻̋͆́̅͝ḙ̸̸͉̦͑̈́̐͋̈́̋̌͋͌͜͝l̶̦̗̘̫͚̃p̧̛͕̫̤̫̄̈́͗̈͌͜͝ą̴̧̛̭̫̗̲͈̮̦̂͋̂̈́̅̈́͝͝͠o̷̶̶̸̷̭͕̭͇͉̞̤̭͈̟̲̭͓͒̈́͜o̢̝̮̮͗͌̾ô͚͗̒Ķ̶̸̢̧̛̭̖͈̫̫͓͓͈͂̏̎͌̀͑̌͌̕͜͠P̸͉̭͈̮̘̈́́̋t̨̠̫̙͗͗̀́̚ȏ̗̹̯̈́̈a̎P̢͐͐̌͝aĶ̷̸̢̧̛̥̹̻͙͕͎̙̙̘̺͚̫̦̰͖̹̙̋͌̃̃̄͋́̇̈́̑̋̀̿̋̈́̚͜͝͝h̸̶̡͚̞̫̘͓͑͑̂́͠K̸̝͋ķ̸̧̱̖̹̻̭̗̰͌͆̎̾̋̿͐̑̈̋͜͜K̢͕̹͂͜(Ljava/lang/Object;Ljava/lang/Object;)Landroid/renderscript/Allocation;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ĥ̸̷̛̙̱̘̥̻̠͇̟̗͙̠͕͙͓̪͎̰͚̦͓̋̔͒̎̌͑͋́͒̈́͋̄͘͜͜͝á̸̺͙̻̋͆́̅͝ḙ̸̸͉̦͑̈́̐͋̈́̋̌͋͌͜͝l̶̦̗̘̫͚̃p̧̛͕̫̤̫̄̈́͗̈͌͜͝ą̴̧̛̭̫̗̲͈̮̦̂͋̂̈́̅̈́͝͝͠o̷̶̶̸̷̭͕̭͇͉̞̤̭͈̟̲̭͓͒̈́͜o̢̝̮̮͗͌̾ô͚͗̒Ķ̶̸̢̧̛̭̖͈̫̫͓͓͈͂̏̎͌̀͑̌͌̕͜͠P̸͉̭͈̮̘̈́́̋t̨̠̫̙͗͗̀́̚ȏ̗̹̯̈́̈a̎P̢͐͐̌͝aĶ̷̸̢̧̛̥̹̻͙͕͎̙̙̘̺͚̫̦̰͖̹̙̋͌̃̃̄͋́̇̈́̑̋̀̿̋̈́̚͜͝͝h̸̶̡͚̞̫̘͓͑͑̂́͠K̸̝͋ķ̸̧̱̖̹̻̭̗̰͌͆̎̾̋̿͐̑̈̋͜͜K̢͕̹͂͜(Ljava/lang/Object;Ljava/lang/Object;)Landroid/renderscript/Allocation;

    move-result-object v10

    invoke-static {v12}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ť̶̙̓͘͠a̸̷̷̸̴̸̷̷̶̵̧̢̧̢̧̖͚͎̺̺̺̭̹͚͙͓͕̹͇͖̹͎͉̭͕̮̰͚̦̺̮͑̄̋̅̆͌̋̿̿̃͐͒̂̎͂́̂̃̑̋̂͌͐̇̋̓̿͗̌̀͒͜͜͜͝͠͝ͅĶ̸̷̷̵͕̫̱̰̩̗̼̱̭̹̈͆̌͗͒̂͠P͉̀̿̌̄̇̀̎̎ū̧̮͓̺̯̫̃̌͊͘͝c̷a̢͕͓lṱ̵̸͇̎p̦ļ̶̶̡̫̮͓͉̠̤̩̜͉͉͎͎̻̩͇̫̽̄̃̌̆͒̾͊̋͌͌̎̈́͌̀̔̄̀̒̅͂̏͝ͅų̸̸̗̲̰̱̗̯͂̄ǎ̶̶̧̰͕̙̻̰̯͈̪̮̼̺͈̏̄̎̅͐̏͘͝͝͝͝ͅK̭̗̘̼͈͎͋̉̾̌̈̕h̺͗̂h̢̻̤͚̍̌͊̿̑͒̃k̴̷̫͕̝̦͊̌̈̃̋̾̑̑͜͝ȭ͉̆p̴̧̛̱̻̩̅̔̃̽̈́̇͋͝(Ljava/lang/Object;)Landroid/renderscript/Element;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->Ǩ̵̵̸̨͕̠͈̺̹̘͚̾̋̔̾̈̋̍̿͝ţ̪̩̤̌̅̍̊͆͑a̫̭͌̉͝Ṗ̨̼̈́͗̎ǔ̴̦̍̃P̛̛̭̲̠̌̐͋̃͜͠n̷̪̘͌ķ̗̝́̈́͂̏ͅB̷̧͖̥̙̺̗̗͋͗͐͌̅̽͒͘͜â̵͈̦̩̫è͝͝ͅa̭̗̦̎ư̴̶̧̫͚̗̫͈̈͌̌̈́̄̎ͅl̴̶̴͓̦̞̖̤̦̼̫̱͌̓̅͐̂̋͋̀̏̉̓̆̂͌̚͜͜͠͝ú̧̧̫̤͙̥̙̙̭̦̹͓̮̦͓̬̯̥̫͐͋͑̾͌̋̂͑̋̆̇͜ȩ̵̸̴̸̛̛̭̗̤͓͚̫͉͂͌͑̌̅͊̀̿́̆̋̈̂̃͒̍͜͜͝ͅç̸̩̭͙̮̋kĺ̍ơ̷̶̸̶̷̯͕̤̗͙̱̪͈̮̲̗̲͇͓͈̂͐̌͐̂͒̌̿̈̋͌̚ͅK̻P̢̻̀͜͜BḴ̸̭̈̑͜ō͈̋t̬k(Ljava/lang/Object;Ljava/lang/Object;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v13

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v13, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->p̻̤̦͎̭͖̘͌̄̀̾̏̾͗͘ḩ̴̵̡͎̦̾n̞̥̦̝͗ö̴̶̴̴̷̸̧̢̢̲̦̱̹̫̫̮̺̘̺̻͎̦͙̫̗̫̤͂͌́̃̒̅͗̌͌́̄̃͒̓̈́̑̈̆̀̈̌̆̍͋͊͐͌̑͘͜͜͜͜͝͝͝ą̶̶̨̧̛̭̘͈̮̲͓̖̪̩͙̫̝̫̰͇̝̔̑͋̂̈́̄̈̌̏̅̋̿̈́͜͝͝ͅB̧̥̫͙͙͌͒̍̎̈͌̚͝ǎ̸̸̫̮̖̋͆̑̑̍̈͘͘B̶̧̝̙̗̰̉͒̍̎͒̿̋͌͒͝ň̷̵̢̛̛̺̤̯̝͎̫̪͇̮͎̘̹͈͉̜̘̻͓̫̜̐̋̈́̋̀̊̅͘̚̕͘͠oűơ̘̬̮̹̈̈́͌̀̎t̶̙̥̘̯̭̂̿̌͊͌̎͌͗̑͌P̙̔͜oa̸̸̧̻͓̺̫̦͚̩̩̮̺̦̮͊̂̃̈̃͌̈́̎̾́̈̿̈́̑͘͝͝ͅț͚ṷ̧c̗͎̲(Ljava/lang/Object;F)V

    invoke-static {v13, v8}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->PK̵̖͈̮̘̩̽̎̌̎̊̋̆̿̋͝ų̷̥̅a̼k̢e̊͆̂̇ǫ̷̸̗̦͙̩̂͑̋͠h̘̯͚͉̔̿̀̿̚͜çB̷̷̴̴̸̡̧̢̧̛̛̤̗̯̻͓̮̠̬̥̻̪͉̗͎̫̹͚̯̟̯̹͐̎̔̀̂͒͆͑͆͌̃̈́̄̀̈̑͑̄̈͌͗͒̑̌́̚̚͜͜͜͜͝͝͝͝ų̸̸̢̹̐̈́̋̋͜͝ḽ̸̸̸̢̡̯̫̗͕̫̋́͌̃̈̚͝͝͝ͅͅe̸̶̢̧̛̮̠̰̤͎̺̪̖͌͂̈̄́́̂͋͜͝K̮̫͑̄̌̄̚à̶̸̸̴̺͎̰̘͕͎̼̮̮̫͊̅̐̑̎͋̌͌̄̐̔̌̑͋̔̎̔̚õ̧̹̗͌̐̅͝K̥̹͕̞̏ų̶̹̼̫̮͚͗͊̍͌̈́̔̈́̚͝ḁ̫P̸̴̶̶̧̧̪̬͎̖̰̙̤̖̖̌̊̋̆̽͌̈́͗̄̈P̸̸̘̹͈̱̔̋̔͋̚͜(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13, v10}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->B̸̴̸̰͈̠̻͈̰̌̈̾̊̑̋͗̎̌̌͘͝P̸̍̚͘c̴̥̼͖̲̯̯̋̋͑͑̋̋͑̂̎̌͑͌̎̚͘͘͜͜͝͝͝o̢̗͕̗͇͕͎̘̥̞͈͚͚̫̙̗̥̭͉̩̖͎͎̾͌̔͗͌̌̋͗̍̏͋̈̏͊̽͘ͅĥ̷̸̸̴̢̡̛̝̘͚̺̹̫̫̩̭̤͚̙̭̖͎̦͚́͗͌̑͌͒̂̄̔̈̐͗͌͌̅̋̋̑́͜͝͝c̛̱̆͘͜͠a̴̸Ǩ̶͉͚̠͎͈̅͌̌̋̚͠K̭̭̔̏̋e̸̍͑̆̑k̵̸̲̺̹̱͇̫̺̱̗̫͕̲̪͓̫̘̂̌̂͌̂̑̀͑̏̎̾̃͌̎̂̀̈̈̒̈́͘͘̕͜͝͠͝p̧̛̭̪̑͋͑̆͜u̸̫̭͉̫̲͎̗̎̈́͋̋̉̃̃̽͋̽a̴̸̤̍̌̈́l̲̥͙͉͚̗̈́̌͗͝͝ͅö͈̘̙̖̠̺͈̋̌͜c̦̹̪̮̦̙̑̿̇́͠(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->P̵̼͕̈́̐͋̎K͓̗ḩ̸̺̻̫̩̺̮̂͋̅̌̋̀̂͊̌͝͝ȃ̢̛̯̯̱̥̱͎̗͐̎͝h̘̅̚ų̰̹̍̅͊̅̕Ķ̵̵̶̴̸̛̬̙̦͕̠̫̖͕͚̱̠̦̗͙̲͇̘̫̌̀̈́́͑̿̽͊́͆̀̈́̅̋͒͒̈͗̅̈̈́̂͌͊̂͌͝͝ǎ̸̸̤̥̞̥͎̦̺͎̻̪̂̀͋͌a̧̧̞̮͕͎̪͌͒̄̌͌̂͊͝ͅKţ̶̷̴̵̷̷̢̨̧̢̛͇̗̠͎͖̩̱̯̱̺͕̟̯̫͓̮̪̩̥͎̫̫̥̻̩̐̆͂̈̎̄͌̈́͒̌̎̄̄͒̈͌̂͋̆̄̉̿̂̆̅̋͌͗͌̚̚̚͜͝͠͝͝͠͝ñ̶̺̼͚̥̮̑́K̛̘̙̖͚K̶̸̸̵̶̡̛̻̗̮̫̙͈̹͎̙̩͚̺̫͓̫͕͙͈̮̫̗̪̲̬̠͕̿̿́̀̅̂͌̎͒̉͌́̈́̈́̂͋͌͜n̿̃̐Bo̅(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ť͜a̢̹͓͚̥͊͘K̷̨͝a̹̫̦̩̥̍͌͝P̶̙̘̋a̯̋eã̶̧̫͇̹̀͑̋͌͝č̸̷̵̵̢̧̛̝͓̝͙̗̺̥͙͈̈̋͌̑̋̈̀̌͋̋̏͑͘͜͝n͚̪̠̙̫̋a̾͝͝ȩ̢̘̙̙̒̈̄̈̂ớ̸̧̹̥͈̯͈͕̫͓̘̫̫̮̼͚̯̦̻̥̈́̌̂̑͒̋̅̀̋̆̑̋̀̄̈͘͘͘͘͝a̺o̶̐̎͝p̸̙̪͚͎̦͌͗̆̌̒͝ḻ͘p̘̥͒̓̌p̸̸̸̸̧̢̺͓̖̤͖̫͉̗̮̩̫͎̌̽͊̀̌͌͂̇̎̕͘͜͝B̶̢̛͈̥̫̠̮͕̯̋͋̍̍̈̚͝à̸͐à̤̮̰a̶̴̧̙̺̘̥͉͕̺̭͗̌́̾͜͠n̎o̸̪̱̘͚͖̫̹̮͗͌̂̂͊̾͌͜͝͝a͐͗͝ķ̴̷̶̧̱̺͎͎̼̫͗͌̋͋̄l͜Ķ͉̜̂̆(Ljava/lang/Object;)V

    invoke-static {v4, v14}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->P̸̦̝̟̅̾̐̾͘͘e̫ṷ̸̱͓̔̉̓c̷̼̖͆͌͜K̸̸̸̸̷͈͈͓̯̮̫͆̍̏̂͋̈́͗̑̎̋͝͝ȩ̶̴̵̷̭̝͈̗̮̗͇̗̙͎͖̹̦͉̃́̑̌̂̇͌̽͋͐͒̐̌͝͠ä̶̷̶̢̖͕͉͓̖̫̹̯̯̼͚͚̥́͋̾́̈́̋̂̈́͒̅̍̄̂̃̅̌̾͘͘͜B̷̸̐̐͝͠K̏̎P̷̹͉̃̍̔e̙͜a̸̶̴̡̙̪̭͈͉̙͗̏̿̂͋͗͠ķ̷̷̧̬̬̫̄̃̏͂͜͜͜͝a̷̶̢̧̛̭̘̯̯̫͎̖͈̗̤̫͉̗̓̍͐̂͑̎̇̋̂͊̚̚͜͜͜͠͠p̧̧̡̗̋͗̃̈̐̚͠al̷͎͇̺̭̠͈̩̮̯̮̈̎̓̈́͝p̷̸̸̸̴̛̮̫͎͈̫̦̹͉͕̼̹͎̗̥̈́̔̋̇̑͂̾͌͋̌̅̀̿̄̈́̓̂́̈́͗̾̌̅͗̑͜͜ĺ̵̹̼͊(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-static {v4, v0, v5, v15, v11}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->a̷̧̼̺̗̫͉͎̙̮̰̥͇̔͒̌͒̄̅̌̋̌͗͌̒͌͝Ḱ̭̮͒̀o̧͕̞̺̜̩̱̮̦̦̟̅̆̔̋̊̆̃͂͋͐̎́̏͒̂͘͘͜ǒ̙̺͕͎́a̹̫̱͙͗̿̂͋͘͜u͎ǫ̶̰̤͎̙͓͚͖̭̘̾͗̿͒͂͌̌́̎̉̍̆̾͒̄͜͜͝ͅň̹̭̂B̭̹̜̠̰̲͐̋̿͌͘͝c̔ë̵̢̛̫͓̼̭̥͙͎͈̙̥̈́̿̌̅̎̑͂̋̈͌̎̈́̚͘̚̚ą̶̴̴̧̛̭͉̻̭͉̬̰̦̹̦͓̫̘̙̥̂̔͗̾͂̈́͌̽́̃͂͋̉̂̎̑͘͜͜͝͝ȩ̸̷͌̌̃̾̈́͐̔̑͜͝n̷̸̡̻̭̗̗̮̲̂̅̈̌̅̂̄̈́́͊̎̐̚̚̚͘͜o̴̪̾̊̄͘͝n̪̭̺̈́ơ̧̠̻̭̹̜̪͈̈̂̿͂̈̂͌͑͌̽͌o̶̙̠̫͎̫̫̗͗̌̄͠c̩͑(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->p͎̺̭͜ḙ̯̗̈̈́͘ͅeḆp̶̢̛̦͕̫̘̺̐̈́͜K̺̫̪̋̂K̷̢̫̩̫̥̭͚̦̱̥̖̓̾̈̋B̧̌a̸̴̡̮̎̍͝ḧ̸̡͖̩̗͒K̼̪̩̪̫̎ȍ̸̥̥̿͒̇͜͜ơ̸̭͉̺̬̮͕̻̗̜͉̔̈̋̎̑͘͜͝l̷̢̮̪̺̥̮̫̭͈̄͒̿̋͋̔̀͋͗͝t͚͇̥̔͝ă̢̰͒̌̉͌͝ẖ̶̫͎̽̌͐̾͝h̵̏̑ą̢̛̺̗́̌̅̈́͌̉͒͜ḧ̻́ơ̸̢͎̲͎̺̼̼̤̗͎͈͚̱̗͑͒͂̉́̿̑̚͜͝h̞͓̉͌̚͝P̴̛̗̥̯͚̪͈͈̘̗͚̥̿̀̐͌̃̌͌̎̕č̶̸̶̖͓̫̼͇̩̭̥̙̮͓̄̏̂́͗̾̌̀͜͜ķ̶̸̷̧̺̖̫̖̱͈̤̙̰͕̹̥̌̂̄̌̌̉̾̓̍̈̂͌̅̽̅͌̈́̃̏͘͘͝͠͝(Ljava/lang/Object;IIII)V

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̢̯̹̋̑̂͌K̝̹̃͊c̫l̏̔t͓̮̑̆̈͜K̴̗̤̏̎h̴̢̢̛̬͉̫̺̬̩̐̾̃̄͜͜͝K̢̛͕̪̿̅͋͘͜͠k̴̶̷̭͈͇͎̮̫̐͑̔̇̃̿͘͘͠͝͝a̷͉̅͗͗̒̄ǎ̡̨̛͓̱͖͉̭̬͇͋̂̈͌̈́̍͌͊̈̏͜͠͝͠͝a̸̡̫̫͗̌͌͠p̰͋̂͘͜ļ̸̯͓̃͌̈̔̎͠͝ap̸̸̴̶̢͓͙̺͉̠̼̭̞͈̑̌̌̎̎̀̀͌̾́͠P̖̤̮̹̅͗̌̿͝o͓̪̓͠͠a̸̖̋̌̀͜ȇ̸̸̸̷̶̷̴̢̨̧͖̤̩͚͈̩̺̲̘̹̲̪͕̫̱̤̩̗̠͉̼̱̠̱͚̦̞̺̪̋̀͋̌̑́̾̈́̆̍͋̀͒̓͑̏̿̈̈́̀͌̈́̒̃̋̋̈̄͘̚͜͝͝͝͝͠ͅͅPa̬̪̩̗̋̄̐̔͒͒u͇̬͒̓̎h̹̫̤͑̔̆̈́͌̈́()J

    move-result-wide v6

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v53

    const v56, 0x1aa60f

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->h͚̀͜͝c͚̀̾̾̕͜͜ãǒ̸̵̱̥̱̫͕̹͗̄̈́̿͌̃̈́̒̈͜͜ĥ͚͕ä̯͉͊̚oṉ̵̵̵̵̛̭̺̻̹̫̗͖͉͚̏̎͗̋̌̃͗ͅḙK̂ơ̸̷̷̷̧̧̤͎̰̘̫͉̘̱̖̗͎̹͕̩͈̭̹̘̯̹̪͊͋̈́͂͒̂̈͊̈̋̏̎̅̋̈́͋͘͝͝͝͝͝ͅo̸̷̧̧̧̮̠͚͌͗uç̧̧̭̪͓̮͊̑͒̑̑̈̅̂̒͑̋̌̚l̦ä̸̷̸̴̢̢̧͇͕͎̫̫̭̗̺̞̭̹̈̍̏́̒̈́̆̄̿̂́͌̌͜͜n̫͚͚̫̫̭̯̫̱̭̘̫̗̗̫͈̗̾̋̌͗̇̿̈̑͒̂͝͝͝͠Bą͉̙̜̍̋̈̃͝Ḵ̸̸̸̨̧̧͎̱̤̯̫̤͎̗̄̊̆͐̈̔̎̏̉̂̋̈́̌̇͝͝K̃ử̶̴̫͕̦̮̬̺̭͌̌̈́͌̄̈̓̋̃͌̚͘͝͝()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v52

    xor-int v56, v56, v52

    const v54, 0x1ac146

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->â̧͈̰̦̯͚͕̮̱̲̑̂Ķ̶̷̶̨̤̤͓̗͕̫̲͈̱̯̭͎͙̯̦͋͒̆̉̿̀̍̑̎̈́̈́͆͝͠͝p̸̛̦̈́͜n̸̩̝̈́̇ṗ̡̧̠͎̪̯͈̗̠͒̀͌̿̊͘̚͘uk̸ț̸̡̛̛̛̝̤̞̹̫̭͎̯͉̬̗̙̠̫̜̠̮̭̯̭̫̄̑̿̋̈́̈͋̂̔̏̈́͘͘̕͜͠nk̸̾̈́̿̂P̌̈́̈́̐͂͜ȩ̴̫͎̩͉̘̒u̻͜͝a̷̛̗̮̗̿͗͐̑̇͗͋̈̈͝ͅç̸̛̥͎̩͚̥͈͊̂̎̽͋̍̚P̧͓̘͎̫̫̭̂̔͋͂̈́̚ň͎ͅn̷̵̴̯̪̼̩͙͓͚̯̮̪̠̜̂̾͋̇͗͋͋͝ķ̫̯̗͑̃͘͝͝l̸̨̲̺̎̔́̀p̸̧̛̭̖̫̤̹͗͗͠op̴̙̟̆a̧̨̮̪̗̙͚͈̋͂͜kp̵̷̸͕̘̜̙̻̈́̓̃̑̇̈́̅̃̚()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v52

    xor-int v54, v54, v52

    const v55, 0x1ac615

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->aaK̸̹͚͊̎͜u̧̲̺͌̀K̛̲͂͂͗̀͜P̯̼͓̩̫̘̯͎̆͆̌̈́̋̑̌̈́͗͋͜B̺͈̰̹̙̄̑̂͑̊̌̚ą̵̸̨͎̝͚̗̖͉̹̻͚̌̋̍̅͂̍̾͐̅͒̚͜͜͝a̸̵̡̘͙̯͉̩͎̺͂̾͒͝K̶̷̵̬̥̦͓̅́̐͗͑̋͋̈̌͠P̸̵̷̢̰̠̺̻̭̱̬̄̃͌́̅̏̂͘͝͝ŏ̡̹̪͙̫̹̂́̋͌̆͊̊̕̚͝B͎̺͓͎̱̱̈̈̎̀̌̀̋̾ͅP̷̱͌k̷̸̢̫̝̗͚̫̯͎̯̞̠̠͌̋͋̋̉̐̐̏͌͋͊͋̂͘͠ͅő͙̱ä̧̛ǫ̵̢̨̛̖̲̮͓͙̻̠̘̙̙̋͒͋̍̃͂̽̈́͑͑̽͋͋͑̑̄͝o̷̰̻̻̫͌̆̉a̢̧̼̺̹̫͇̅̽͑̌͋̐̇̌͘͠͠ȧ̷̢̗̺̦̞̱̫͚̪̃̂̈͐̌̔̈̌͜͝u()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v52

    xor-int v55, v55, v52

    invoke-static/range {v53 .. v56}, Lcom/kashi/settings/view/BlurBackgroundImageView;->Ķ͚͕̞͓̀̐̋͌́̚͠o̷̸̴̴̶̢̢̢̫̭̺̝͖͉̫̫̹͎͚̲͈̻̯̘̭͇̰͉͎̱̮̮̱̻̱͆̅͌̀̄̃͊͂̈̿̉̎̈́͋̏̅̎̂̂̋̈́͊͌̌̿̈́̑̅̋̔̿̎̐̑̚͘͜͠͠͠͝͝K̶̸̮̪̦̤̼̰̱̟̰̫̩̠̋̾̆̂͊̂̌͑́̂́̓̆̈͌̂͗͘̚͜ͅͅĶ̸̸̱͉̺̘̲̀̿͌̐̃̑̑͌̈́̏̚pK̸̷̴̢̧̧͕̗͈͈̘̮͉̦̻̺̅̑̔̎̀͝t͙̩B̸̴̴̵̡̛̛̞̮͎͓͚̝̥̯̭͎͚̺̻̙̼̜̱̫͓͉̻͓̫̈͑̄̄̋̄͗͊̎̾̃̋͑̐̈̄̏͂̅̌̈́͑̀͋̑̌͌̕̚͘͘͜͜͜͝͝ǫ̸̸̬͈̲͉̖̦͇̃̒͌͂̂͐͘͜ǒ̷̶̧̟̝̯̞̯͎͊̕͝ȩ̴̨̘͉͉̫̖͎̪͚̮̦͎̩̖̪̏̃̌͌̈́͌͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v19, v53

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v41

    const v44, 0x1ac4e5

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̸̶̛̺͚̬̐̋͋͗͌̏́̅͊͘a̷̧̫̙̋͊̀͌̇K̗̘͜P̷̢̧̛̺̺̮̫̭̹̹͙̤̈̃̈́̋̇͗̾͗̂̌̌̆̐͜͠͝͝͝͝ô̵̧̫̪͝ļ̨̛̘͖͎̗̖̌̂̋̾͐̈͘̚͜͝ḁ̛̍̅c̢̛͉̱͈̺̺̘͚̗͇̫̜͈̪̘͉̩̪͕̋̈̂̈͆͑̄̐͗̋̐̂̈̃̌͒͊̃̎̐͋͋͌̍͘͜͝ǹ̴͇͓̖̪̯͚̺̲̺̿̅̄̅̈́͊͝͝͠K̶̶̙̫͈̲̗͓̗̦͇͈̂͋̈̿̂̑̍͑͘ĥ̶̨̧̛͙̼͌̈̑͜ḽ̷̵̴̸̪̫̯̜͇́̍̾̈́̋̈́̃̃̈́̌͌͘͝B̜̤̻͉̤̤̭͕̑̀̂̅͌͋̌̈̑t̥͎̗̗̰͓̹́̎̍̔̀͝Ḇ͌́Kä̷̛̯̹̱́͗͝p̃Ḵ̸̛Ḱ̺̗̕ļ̵̶̺̫̬͈̹̫̮̆̀̏̆̆͋̾̒͜͝()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v40

    xor-int v44, v44, v40

    const v42, 0x1aa760

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a͚͙̦͕̦̋̌͌̌͑̋͆̓͗͜͠K̒͠ű̷̧̧̫̯͈̗͕̻͎̱͉̑̀͜c̶̸̰̼̺͇͕͕͎̅̿̍̑̑͌̏̾̌̾̚͝K̶̷̛̲̺̥͕̦̫̬̪͊̃̃he̔̚h̢͕̘͂͂͘͝na̴̧̯͎͜͜n̂ͅP̢̗̼̃̂̔̎͝͠ṫ̴̴̷̸̢̧̥̲̲͓̫̪̪̔̒͒͂̋̋̚͘͜͠͝ĺ̵̡̨̧̮̫̤̱̜̐̂̌̚͘͠͝l̢͓̲͗͊̎͝ǫ̷̢̧̢̛̛͚̥̹̪̦̖̮̹͉͎̱̮̰͗̐̂̏̇̎̎̐̋̄͘͝ȏ̢̘͚̘̪̊p̶̶̶̸͎̤̟͕͎̙͕̫̆̈́́̌̃͌̌̔̆͆͗̂͘͝ư̶̗̈́̇͆o̧͊̎̑͗̾͒̾̓́̀͊͝a̢̤͒K̸̸̴̵̨̨̢̛̭̮̱̘͚͇̫̘̦̠͉͎͓͈̱̗̯̥͋̓͂͌̈́̑̃͋̏̈̏̌̉̋̑̔̃̚͜͜͠()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v40

    xor-int v42, v42, v40

    const v43, 0x1ac9b0

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K̯̖͉̂ḁ̷̭̪̙̖͚̜͆̈́̌̎̆͝͝K̴̯̯̐͠uä̸̶̧̢̢̨̛̛̺͚̫̭̝̯͎̥̥̙̥̼̰́̀̑́̄̂̊́̎͘͜͝͠Kk̴̖̰͕̘͒̕͜BB̸̘̪̏͋̿̃̚͝K̛a̩͎̎Ķ̵̵̸̡͓͓͖̗̲̫̘͙̩̹̫̫̫̱̠̎̐̋̅̑͐̓̌̈́͌͗̾̂͌̃̌̋̌̃̀͊͒̎͊͘͘͜͝͝͝͠͝h̨͚̻͚͚̋̾͘͜ļ̷̧̦͎̗̭̝̗̺͉͈͙̭͋͒͌̌n̶͉̙̦̘̖̼̙̝̞̗͆̈́̎̈̎̌̔̉̕͠P̴̷̯̿͠͝͝͝o̅̀̀h̷̢̫̘̑̃̋̈̌͋̍̎̾̚͜Ķ̸̛̥͕͕̫͚͓̑́̂͆͌̃͆̎͝͝h̸̛̩̻̆̒͒ao̖͕̓̌ͅa̴̸̛̛͚̖̯͚̤̗̯͈͊̈́̿̂̑͜o̺͈̺̖̝̹͌̌͒́̋̃̽̎̈B̖̰̿̏̌͝()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v40

    xor-int v43, v43, v40

    invoke-static/range {v41 .. v44}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ã̶̧̧̡̠̺̱͚̮̀̃̔͝a̶̷̸̖̫͙̲̠̾͗Ḃ̶̫͈̈͠h̴̷͂̃ô̭̯͉͌͋͌̇̿̋͜͜͠͝a̷K̸̨̨͖͉̭̺̼͈̱̏̈́̌̿̐̉͑̾̏͌̚K̵͚̻̘͓͙̏͐͂͘ç̢̛͈̥̻̖̫͉̜̄́̄̄̈ä̷̧͎̰͈̰̩̥̱̭̘̻͋̈Kő̵͚͉̈́̈́h̶̴̸̴̷̸̸̵̠̫̭̮̫͇̻̫̼̺͚̩̰̯̮͚̭̫̫̦͌̂͆͆̌̌͂͌̌̈́̂͋̔̔̌͌̊̂̈́̈́̌͐̕͜͜͝K͕͓̋ķ̯̺͊̆͌͑̎͘̚͝a̸͇̭̭͈͋͗̾͗̃̏͘p̵̘̭̻̯̈̏̿̐̊̅̕͝ä̢̭̜̫͈̠́̂͋͌͌̒͗͋̾a̶̷̛͎̼̜͉̔̈̈͝e͙̩͎̿̌́̓͑͜P̫̎͋͠p̧̗͓̰͖͋̐̒̐̃͑̅̈́̀͘͝͝á̒o̵̶̥͚͐͗͘͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v21, v41

    invoke-static/range {v20 .. v21}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v6, v16

    invoke-static/range {v21 .. v22}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ḧ̶̨̦͕́̅k̞͋́o̸̠̞̲̐̓͝͝ͅP̴̸̧̧̖̱͚̭͚̙̲̻͌̄͌̇͊͗̋͜ơ̴̶̧̢̩͕̫̘͎̭̯̭͈͓̬̫͒̾̃̈́̌͑̐͋͊͑͑̍̿̋̃̂͜͠͝͝͝͝h̷͚̯͌̚͝͠a̧͙̹̼̙̘̙̽̿̔̀̏́̂͗̒̔͗͂̌͘ṳ̦̯͝ų̶̶̛̗͙̦̫̥̯̗̋̑̔͜͝å̴̅̈́͝a̴̶̴̡̢̘͉̪̺̭͕̮̥̱̗̥̫̪͎̱̜͈̅̏͐̐̐̿̌̎͂͜͜h̨̹̥̙̻̯̠̉̾̌͌̿͊̑͂͐̓͌̚͜͝P̷͚͂̋͑p̴̸̢̢̧̛̛̛̹̻͚̫̹̮̤̱̥̮̼̩͎̔̍̃̊̀̑̑͌͋́̈́́̋̾̐̂̈́̈́̏̂̓̅͊̂̚͘̚͜͝͝͝͝͝p̴̶̴̸̢̛͎̫̭͉̆̃͗͗̔̎̆̔̿͋̚͝͝͠͝͠B̴̸̸̶̨̢̛̻̿̋͋̂͒̈́̕(J)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v35

    const v38, 0x1acd26

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ų̸̶̟͓̹͉̘́̌̌̽͂̃͗̚t̶͙͊̋̐͜ä̶̹́ç̼̀ļ̢̯̫̪͎͈̽̃̑́̋̈͑̌̈P̶̻̏̅͐̇c̭̺̔̇ơ̺̥͎̏̈̎̑̑͝h̶̶̛̤̤̰͂͊̂̾̾͆͑͜h̷̠͈ȗ̗̱̮͇̗̖̍t̷̷̵̢̛̩̠͚̺̦͙͉̀̈̋̊̎͝͝K̶͉͉̺̺̹̯̮̗̩̓́̃̾̈́̎̈́͘͠ḧ̫ō͚K̴̷̴̴̴̶̵̨̢̧̡̛͈͕̗̜̫̝̗͈͙̫̬̯̮͉̮͕͚̫̺̰̲̪̗̩̿̌̄̌̏̔̈̿͌̈̏͗͊̂̈́̉̈̂̂̈́̇̿̔͋̊̈́̌͑͊̋̚̚͝͠͝p̢̢̛̫̮̰̭̤͓̙̭̟̘͈͙͕̫̃͂͌̐̎̑͂̂̔̌͋͂̂̈́̿͘ę̛̩̯͚̜̐̔̈͘ͅB̨̫̘̫̌̂̈́̈̈́͌n̾̑̀̈́̂p̷̧̧̯̘̗̺̟̈͋̂̂̀̂͋̉̾()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v34

    xor-int v38, v38, v34

    const v36, 0x1ab693

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->h͚̀͜͝c͚̀̾̾̕͜͜ãǒ̸̵̱̥̱̫͕̹͗̄̈́̿͌̃̈́̒̈͜͜ĥ͚͕ä̯͉͊̚oṉ̵̵̵̵̛̭̺̻̹̫̗͖͉͚̏̎͗̋̌̃͗ͅḙK̂ơ̸̷̷̷̧̧̤͎̰̘̫͉̘̱̖̗͎̹͕̩͈̭̹̘̯̹̪͊͋̈́͂͒̂̈͊̈̋̏̎̅̋̈́͋͘͝͝͝͝͝ͅo̸̷̧̧̧̮̠͚͌͗uç̧̧̭̪͓̮͊̑͒̑̑̈̅̂̒͑̋̌̚l̦ä̸̷̸̴̢̢̧͇͕͎̫̫̭̗̺̞̭̹̈̍̏́̒̈́̆̄̿̂́͌̌͜͜n̫͚͚̫̫̭̯̫̱̭̘̫̗̗̫͈̗̾̋̌͗̇̿̈̑͒̂͝͝͝͠Bą͉̙̜̍̋̈̃͝Ḵ̸̸̸̨̧̧͎̱̤̯̫̤͎̗̄̊̆͐̈̔̎̏̉̂̋̈́̌̇͝͝K̃ử̶̴̫͕̦̮̬̺̭͌̌̈́͌̄̈̓̋̃͌̚͘͝͝()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v34

    xor-int v36, v36, v34

    const v37, 0x1aaf51

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ǎ̺̺̈́̂̋̔ö̷͈̘͉̃̀͒͆̿̂̌͜͜͝cl͋h͕͝B̸̶̨̮͈̹̫̥͚́͂̈́̃̋͗͗̈́u͝h̷̙̬̙̚t̵̶̺̊u̩̝̩̘̘̅͌̋̋̕ņ̷̧͎͉͈̼̫̠̹̪̻̂̒̌̈͌̀͌̃̋̀̂͝P̷͇̈͐͜͜B̫̟̾ã̐͝K̸̨̛̯̯̱̰̃̋̑͘͜͝p͌̈́́̂̀̐̾e͈͌̂̽̃̚ͅͅû̸̗͉̦͝K̶͎̮̗̼̂͌̈̈hc̥̤͈̥̈́͋̃͠k̯̬̄o̸͗͊l͇̠̹̎̈́̋̋͌̌ô̶̸̢̢̯̯͈͓̦͂̋̈́̃̌̈́̀̃͜a̵̷͈̘͚̯̲̥̺̼͈̯͌̔̌͗́̎̈́̄͑͠͝͝͝͝K̶̞̄̌̚oá̸̸̧̂͑͒h͉͋͌̾a̵̷̛̫̞̻͆̑̈̈́͋̓͑͘p̷̛̰͓̠͉͙̙̩̘̻͈̊̈́̐̋̏̕̚͠ā̩͈͇͉͎͐̾()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v34

    xor-int v37, v37, v34

    invoke-static/range {v35 .. v38}, Lcom/kashi/settings/view/BlurBackgroundImageView;->n̛͚͓̥͂K̸̮ö̭̎ç̸̷̮̫̗̫̰̰̍̄̚͠ä̷̷̜̪̘͈̫̯͚́͋͊̋̋͊͑̋͜͜B̘̺̯̒o̶̧̧̠̘͉̫̙̘̹͇̊͂̆̋̅ȅ̴̥̭̗̙̠͚̫̮̺̗̘͚͎̦̠̅͋͗͌̉́̂͐͑̆͆͘͜ã̶̷̢̛̰̪̱̯̗̫̰̙̜͙̼̫̲̼̫̯̫̲͉̗͗̾͒̈̑͊̎̏̃́̈̉̈́͋̊͘͝͝Ķ̸̴̜͎͚̗̘̀̽͑̾̿̂͌̅̄͗̚k̷̫͎a̗̎̄͌͂̃̚ḩ̷̭̭͕̥̇̀̈͑̅̈̀̄P̱͙͇̮͈̋́͜Ķ̧͉̹̹̯̦̪̹̃̆̄̂̈́̄̃͝͠aã̵̸̷̭̰̭͉̯̬͚̱̲͚̪͓̮̲͎̱́͒̀̂̆̂̈̿̃͊̄͆͋̈͗́̏̓̿̚͜͜͝͝ͅa͓a̼͋̅̈̂͋̍͝ȃ̧̲̫̩͘u̠̲̫̞͎̠̅̎͑̌̾̎̈ŭ(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v21, v35

    invoke-static/range {v20 .. v21}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̶̵̧̝͚̖̜͋̉̉̍̈̍̑̈́̚͝ķ̹͎̩̥͇͋͌͗͐̕͝ā̶̵̹͓̘̫͒̐́̑̋̀̇͜͝P̸̶̵̨̧͚͕͓̼̜̰̦̭͎̺̺͕̲̌̊̂͑̆͗͌̎̀̋̀̌̆͘͝n̢͕͈͉̮̼̺͂̌̇͋̚͠͝l̸̨͚̟̯̗̝̗̯̱̥̩͋̌̈̐͌̄̌̑̄͗͌͘Ķ̷̷̷̸̧̛͈̹̮̫̦̗̯͎̱̤͚̝̤͉̞̰̝͎̼̙͉͓͈͚̺͐͌̎͗̈̈͑̎͗̋̈́̅̂͐̈͒̄̅̀̄̔͗̃̅̑̋͂̎̌̑̄͌̂̿̚͜͝͝͝ͅB̨̲͙̾̇̊͊͗̌͠ͅp̷̨̠͓̼̈͑̑ơ̸̢̧͉̥̹͚̘͓̻̂̌̓͑̌̍̄̈́̽̌͜͜͝h͕̰́̎͝K̶̸̢̧̺̠̝̦̠̺̋͊̎̑̇̈͑̆̂̈́͘̚͜͝͝o͌͘͝hkl̥̎́̚u̹ȃ̡͈͋͌ḁ̢̠̺͚̈o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->a̵̷̧̧̘͓̭̦̤͜͝ų̶̸̧͙̯̯̫̠̦̗̖̘̦̙̈̎͐̈́͐̈́͗̚͜͝a̗̽̾̋̋̍̚ḽ̃͜͠ă̸̴̧̡̛̹̩̘̹̹̗̱̝͗̅͒̈̌́̕͝a̴̵̸̷̧͓̻̭̙̺̋̑͌͘͘͝ǒ̴̶͖̰̗̰̌̀͂̎̔͌́̅̀̅̂͘͠͝p̹l̶̘̦̭̩̮̂͜B̸̸̸̷̶̨̢̧̬̠͕̹̼͎̫̭̥̲̜̗͂͑͌͆̊̃́͗̃̐̈́̾͗͌̍͌̈̚͜͜͜͝͝͠p͈̭͕̄̅̈̚͝a̷̛Ba̸̛̦͈̫͋̄͠á̸̶̢͇͚̼̺͌̌͗̾P̸̶ä̶̷̸̛̼̹͉̯̦̪̦̱͖̆̌̕͠Ķ̸̸̛̥̠̭̱̯̗̲̥̭̗̾͋͊͑̿̌̌̀̄͋̾͋̌̋̀͌͌͗͜͝kp̛̫̖͕̥̿͆̂͝a̶̧̰͎͕̹̦̙͋́̿̚͜͝u̖̍̈̋c̜͕̗̫̈̋̄(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    return-object v14
.end method

.method public setAlpha(I)V
    .registers 53

    move/from16 v1, p1

    move-object/from16 v0, p0

    sput v1, Lcom/kashi/settings/view/BlurBackgroundImageView;->ALPHA:I

    return-void
.end method

.method public setBlurImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 56

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ln̷̩͈͇̫͈̙̮͌͋͌̔͗̋̋̃̎͆k̸̴̛̫͈͎̹̗̪̭̭̮̮̼̇̿̈́̑̎̚͝͝ḧ̭̱Pk͙̥̦͉̪̯̗̀͋K͉̱̫̘̙̙̯̲̅̑̂͗̊̈́ͅà̶̰̯͙̈́͗̅c̢̙̾͐͑͌̌̑̀̍̑h̴̤̫̯͙͗̌K͈n͈͜ầ̵̸̸̴̸̸̷̛̘̹̫̦͙͚͕̦̰̫̫̮͌̿̂̎̅̋̃̋͌̌̈̑͋͘͝ḛ̷̛̫͚͎̱̈͂̋̌̑̿͌͌̿̄͘̚ö̸̷͚̘̪̭̙̘̮̫̮̰̗͙̰̜́̀̃̈̿̑̋́̈̽̍͋̋̅́͗̔́̆͘͜͝ͅḧ͓̥́̋͂̌͠ͅn̸̫͚̻̹̦͌̄͋̌p̧̟e̞͋͐̓̌͘͜͝ơ̶̸̷̧̢̧̢̰͈̘̦̹̪͉̻͎̪̥̬͌́͋͐̅͗̇̿͗̏͊͊̑͘͜͜͝ả̬̺͊͘p̢̢̺̭̭̫̫̺̈́̀͌̌p̹͓̯̈()I

    move-result v0

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->K̛̘͉̥͚̘̮̄̋̌̀͒̋̕c̯c̶̷̨͓̫̱͈̲͌̈́̑̀̇̏̂̿̎̌̿͘͜͠͠K̸̶̶̢͖̩̘̩̲̲̺̈́͌͋̎͌̋̈̚͝p̸̴̶̢̺̩̭̤͚̠̰̩̯͚̫͚̮̙͉̯̻̯̭̥͚͚͌͑͌̾̀͋̑̈́̃͌̏́̓͌̚͠a̠͓̠͑̌p̷̡̱͖͎͚̄̔̎̌̀̍͜͠oK̸̢̙͎̹͓̯̥̞̖̗͎̗͎̮̖͚͙̔͗͌̂͗̿́̔̚͘̚͝͠ǎ̵̂̎͝͝ȧ̜͗̑p̷̶̷̸̧̧̧̢̛̛̯̻̭͙̩͕͎̫̝̯̫͕̞͚͎̫̙̼̱̺͕͇̏͊̑̈́̄̌̾̂͌̃̎̀͋̍͌̑͐̒̃̀͌̓͜͝͝͝͠k͈͚̂͋̕͝o̷̶̧̩̫͎̺̺̭̼̠̫͚̱̤̺̘̹͎̠̥̫̘̎̂͊̌̌͌̄̐̌̐̋̿̑̋̄͒͊͐̈̌̈́̂̌͑͘͘͜͝͠ot̸͗̋̚e͚()F

    move-result v1

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->o̯̻lp̶̸̛̗̫̺̞̥͙͇͈̦̔̅̈́͋͗̎̋͐̔͠ờ̶̶̧̛̱̜̠̹̪̱̭̑͑̇͑̈̃̃͗̈͗̈́̌͝h̛̲̦̫͆̔͘̚ŏ̷̴̸̢͉̯̺̤͙͚̼̙̗͊̃͐͒̿̈͌͘͝n̸̗̒t̫͎̯̭̩̮͐̿͆͋̌̿͋̎̽͘̚p̷̵̧̭͚̱͉̩͎͗͒̂̃̃̅͋͘͜͝K̶̢͕̤͕̰͙̻̺̗͉̘͗̂̎͌͋͒̍͑u̶͎̭͉n͎a̷̴̸̧̢̛̛̛͚̯͓̗̫͚̱̭̘̙̯͚̐͒̐̈̏͊̿͘͘͝͝͝o͉͈͋̂̽͘͝ļ̷̛̥̆̈́̓̄̿̌̒̌̂͝ả̸̷̧̧̝͚͕̙̻̰̝̯̺̹̟̼͎̅̌͂̂̌͑̀͌͒́͋͂͜͜͝ơ̸̶̸̶̢̬͈̰͉̱̱̜̫͉̦̻̫̗̮̭̰̲̹͓̻̭̺̏̿͊́̅͒̈̅͗͋͊̽̑̐̈̿̂̇̈͘͘͜͝ͅ()I

    move-result v2

    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->P̵͎̺̋a̶̴̶̘̹̗͙̞̦͇̹͗̅̋̑̃̏͒̂͋̌͗̚͜͜͠͝ā̢͈̫̚l̶̴̛̘͎̥͈̟̩̱̻̗̗̥͙͎̫͇̰̹͋̄͊̂̌̍͐̌͂̋̈̂͌́͘͜͝͝B͋̄oB̧̛̦̆̎̈́̾̐͝͝e̦̘͠o͉̮̖͓̥͎͙͗̏̑̈́͆̃́͂́͜͜͝l̴̘̯̗̙͂̂̚k̑̑͜ͅą̡̘̘̭̦̫̏̾̿͑͋̎͌̚Ka̴̢̙̝͎̰͒̇̃̀̈́ȁ̴̶̸̢̨̨̢͎̺̯̭̪̰͎̮̺̩͓̝͚̲̼̥̫̆̋̀̀̌͌̎̂̄̿̂͌̋̉̂̋̂̑̌͋n̛̮͆̋̅̈͆k̶̸̢̢͉͎̖̠̆̾p̧̦̦̎̈́̚ą̸̢̫̗̫̊͗̽͝K̸̵̨̧̰̜̠̥̜̥̱͈̙̯̘͈̘̥͎̿̅͗͗̏͌̂̎͌̌̈́̃p͖̗͙̄p̫̅K̛̪͎̮͈̯͋͊̄̃͊̋͜͝͝ͅ(Ljava/lang/Object;Ljava/lang/Object;IFI)V

    return-void
.end method

.method public setBlurImageBitmap(Landroid/graphics/Bitmap;IFI)V
    .registers 62

    move/from16 v10, p4

    move/from16 v9, p3

    move/from16 v8, p2

    move-object/from16 v7, p1

    move-object/from16 v6, p0

    invoke-static {v6}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ĥ̶̠̰̌̈́̒̃́a̷̭̦̲̯͎̭͚̫̩̬̙͉̦͌̎̔͗̋̋̌͗̈̅̌̈͘͘͜͝ţ̭͐̑̋͌́͠K̨̢͚͓̯̿̔͗͊̃̑̾̚͝͝͝P͎̎B̯͋͂̑e̗ä̸̧͕͙́͝ȃ̹̫̾̑̄͌͘h̢̧̨̛͚̤̭͚͉̠̱͌͒́̈́̋̾͑̍̏͠͝a̴̢̽̔p̸̘̬o̎an̵̢̧̛̖̮̭̯͎̭̫͙̤̦͇̻̈́̀̅͂̔́͌͗̌͌̔͂̈̋͘ͅc̴̸̸̩̯̮̖̤̀̋̚K̷̙͌͘k̢̨̖͉̠̝͓̲͂̌̋̈̌͌̑͠͝ḧ̴̟̲͓̯̪́̑̆͊̀͘ṱ̭̖͚̼̄̈̈̌̂̈́̀̒͌͂̾̋͒c̹͉̰͊͑̋õ̶̞͗͐͜Ḱ͈̻̠̯̩͑̎̎̈́P̩̺̦͕͌̈͗ȏ̫ë̶̅ḩ̶̦̥̝̓ẗ̸̙̙͎̿̌̃̏͊̑̚l͜u̠͙̪P̧͙͓̌̀(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->â̷̴̴̴̧̢̠̲̲̮̩͚͙̯̇̃̋̋̇́̆͘͝t̵̴̤̻̪̤͂̑̉͋͝kǎ̹̱̹̠̿͌̐c̆͜K̸̯̮̈̾̂̋̑̌̌ͅȭ̧͎̯̱̦͎̹͗̍̿a͗ȩ̷̸̷̷̧̧̯̺̹͈̩͓̯̫̖̦̠̤͓̂̇͑̈́̈́̅͐͊̉̚͘̚͝͠ͅā̸̰̫̙̯̱̩͌̒͗̿̀͗͌̾ő̶̶̶̴̢̢̹̜̥̠͎̗̘̤͈̗̔͌͗̄́͆͋̾̌̊̌̈́̃̚̚͜͜͠͝P̆̐o̭͉͌̿͑͜aB̶̴̛̭̫̫̲͙̜̭̘̙͊́͌̅͗͋͌͘̚l̶̨̍͋͜͜͠Ḇ̶̸̸̴̛̝͉͇̭̂̈͑͂̌̑͘͜͜͝K̙̾̐̅̃ã̸ä̸̛̺̹͈̫̹̮͉̝̭̪̫̩͓́̃̾̄̋̌͗̍̆̅͘͝͝ö̑oKc̤̦̼̎ḁ͙͇̔̋̆̂û̧̧̻̘͉͋̒͊͝͝ͅP̧(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->â̧͈̰̦̯͚͕̮̱̲̑̂Ķ̶̷̶̨̤̤͓̗͕̫̲͈̱̯̭͎͙̯̦͋͒̆̉̿̀̍̑̎̈́̈́͆͝͠͝p̸̛̦̈́͜n̸̩̝̈́̇ṗ̡̧̠͎̪̯͈̗̠͒̀͌̿̊͘̚͘uk̸ț̸̡̛̛̛̝̤̞̹̫̭͎̯͉̬̗̙̠̫̜̠̮̭̯̭̫̄̑̿̋̈́̈͋̂̔̏̈́͘͘̕͜͠nk̸̾̈́̿̂P̌̈́̈́̐͂͜ȩ̴̫͎̩͉̘̒u̻͜͝a̷̛̗̮̗̿͗͐̑̇͗͋̈̈͝ͅç̸̛̥͎̩͚̥͈͊̂̎̽͋̍̚P̧͓̘͎̫̫̭̂̔͋͂̈́̚ň͎ͅn̷̵̴̯̪̼̩͙͓͚̯̮̪̠̜̂̾͋̇͗͋͋͝ķ̫̯̗͑̃͘͝͝l̸̨̲̺̎̔́̀p̸̧̛̭̖̫̤̹͗͗͠op̴̙̟̆a̧̨̮̪̗̙͚͈̋͂͜kp̵̷̸͕̘̜̙̻̈́̓̃̑̇̈́̅̃̚(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setBlurImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 57

    move-object/from16 v5, p1

    move-object/from16 v4, p0

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v5}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ȃ̴̸̷̷̴̧̯̯̜̫̭͈̦̦̯͒̎̅͑͗̎̋̌͆͘͜͝͝͝ķ̷̧̢̛̫̯͉͉͖̮̮͈͉͋̍̎̏͑̈̚͘͘͜͜͝͠p̷̸̤̙̾̚͜å̤͙̻͈͚̫̪̥̔̌̑͑͘p̶̷̴̴̨̢̤̤̻͕̗̼͚̹̙̜̥͓̖͕̫̫̭͙̗̱̩̪̂̇͌̑̄͒͌̂̍̂͑̈̿̀͋͌͋͗̌͂͑̈̄̌͗̈́̈̚͘͝͝P͈̈͑̕l̹̈́͑̋p͙͊p̯͚͋̈́͘u̞͒̈̄̎̿̿̔̕͝B̴̷̷̛̙̘͕̎̐̌͂̂̾̍̃̋͗̚a̷̢͈͕̘̹̞͓͋̾̈́͜p̸̶̸̸̧̛̪̖̹̤͚̠̹̋̈͂̂̓̍͐͐̚͜͠͝n̵̶̷̢̼̟͙̤̹͎͉͓͓̱̗͚̯̆̔̎̄̓̍̌̀̏̔̾̈́͒̈́͌̎̒͑̄͗͊̑̆̅̅̈͗͋͘͝͝B̶̧̧̛̘̦̯͎͉͚̠̮̈̾̈͒̈́͗̍͝(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ln̷̩͈͇̫͈̙̮͌͋͌̔͗̋̋̃̎͆k̸̴̛̫͈͎̹̗̪̭̭̮̮̼̇̿̈́̑̎̚͝͝ḧ̭̱Pk͙̥̦͉̪̯̗̀͋K͉̱̫̘̙̙̯̲̅̑̂͗̊̈́ͅà̶̰̯͙̈́͗̅c̢̙̾͐͑͌̌̑̀̍̑h̴̤̫̯͙͗̌K͈n͈͜ầ̵̸̸̴̸̸̷̛̘̹̫̦͙͚͕̦̰̫̫̮͌̿̂̎̅̋̃̋͌̌̈̑͋͘͝ḛ̷̛̫͚͎̱̈͂̋̌̑̿͌͌̿̄͘̚ö̸̷͚̘̪̭̙̘̮̫̮̰̗͙̰̜́̀̃̈̿̑̋́̈̽̍͋̋̅́͗̔́̆͘͜͝ͅḧ͓̥́̋͂̌͠ͅn̸̫͚̻̹̦͌̄͋̌p̧̟e̞͋͐̓̌͘͜͝ơ̶̸̷̧̢̧̢̰͈̘̦̹̪͉̻͎̪̥̬͌́͋͐̅͗̇̿͗̏͊͊̑͘͜͜͝ả̬̺͊͘p̢̢̺̭̭̫̫̺̈́̀͌̌p̹͓̯̈()I

    move-result v1

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->K̛̘͉̥͚̘̮̄̋̌̀͒̋̕c̯c̶̷̨͓̫̱͈̲͌̈́̑̀̇̏̂̿̎̌̿͘͜͠͠K̸̶̶̢͖̩̘̩̲̲̺̈́͌͋̎͌̋̈̚͝p̸̴̶̢̺̩̭̤͚̠̰̩̯͚̫͚̮̙͉̯̻̯̭̥͚͚͌͑͌̾̀͋̑̈́̃͌̏́̓͌̚͠a̠͓̠͑̌p̷̡̱͖͎͚̄̔̎̌̀̍͜͠oK̸̢̙͎̹͓̯̥̞̖̗͎̗͎̮̖͚͙̔͗͌̂͗̿́̔̚͘̚͝͠ǎ̵̂̎͝͝ȧ̜͗̑p̷̶̷̸̧̧̧̢̛̛̯̻̭͙̩͕͎̫̝̯̫͕̞͚͎̫̙̼̱̺͕͇̏͊̑̈́̄̌̾̂͌̃̎̀͋̍͌̑͐̒̃̀͌̓͜͝͝͝͠k͈͚̂͋̕͝o̷̶̧̩̫͎̺̺̭̼̠̫͚̱̤̺̘̹͎̠̥̫̘̎̂͊̌̌͌̄̐̌̐̋̿̑̋̄͒͊͐̈̌̈́̂̌͑͘͘͜͝͠ot̸͗̋̚e͚()F

    move-result v2

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->o̯̻lp̶̸̛̗̫̺̞̥͙͇͈̦̔̅̈́͋͗̎̋͐̔͠ờ̶̶̧̛̱̜̠̹̪̱̭̑͑̇͑̈̃̃͗̈͗̈́̌͝h̛̲̦̫͆̔͘̚ŏ̷̴̸̢͉̯̺̤͙͚̼̙̗͊̃͐͒̿̈͌͘͝n̸̗̒t̫͎̯̭̩̮͐̿͆͋̌̿͋̎̽͘̚p̷̵̧̭͚̱͉̩͎͗͒̂̃̃̅͋͘͜͝K̶̢͕̤͕̰͙̻̺̗͉̘͗̂̎͌͋͒̍͑u̶͎̭͉n͎a̷̴̸̧̢̛̛̛͚̯͓̗̫͚̱̭̘̙̯͚̐͒̐̈̏͊̿͘͘͝͝͝o͉͈͋̂̽͘͝ļ̷̛̥̆̈́̓̄̿̌̒̌̂͝ả̸̷̧̧̝͚͕̙̻̰̝̯̺̹̟̼͎̅̌͂̂̌͑̀͌͒́͋͂͜͜͝ơ̸̶̸̶̢̬͈̰͉̱̱̜̫͉̦̻̫̗̮̭̰̲̹͓̻̭̺̏̿͊́̅͒̈̅͗͋͊̽̑̐̈̿̂̇̈͘͘͜͝ͅ()I

    move-result v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->P̵͎̺̋a̶̴̶̘̹̗͙̞̦͇̹͗̅̋̑̃̏͒̂͋̌͗̚͜͜͠͝ā̢͈̫̚l̶̴̛̘͎̥͈̟̩̱̻̗̗̥͙͎̫͇̰̹͋̄͊̂̌̍͐̌͂̋̈̂͌́͘͜͝͝B͋̄oB̧̛̦̆̎̈́̾̐͝͝e̦̘͠o͉̮̖͓̥͎͙͗̏̑̈́͆̃́͂́͜͜͝l̴̘̯̗̙͂̂̚k̑̑͜ͅą̡̘̘̭̦̫̏̾̿͑͋̎͌̚Ka̴̢̙̝͎̰͒̇̃̀̈́ȁ̴̶̸̢̨̨̢͎̺̯̭̪̰͎̮̺̩͓̝͚̲̼̥̫̆̋̀̀̌͌̎̂̄̿̂͌̋̉̂̋̂̑̌͋n̛̮͆̋̅̈͆k̶̸̢̢͉͎̖̠̆̾p̧̦̦̎̈́̚ą̸̢̫̗̫̊͗̽͝K̸̵̨̧̰̜̠̥̜̥̱͈̙̯̘͈̘̥͎̿̅͗͗̏͌̂̎͌̌̈́̃p͖̗͙̄p̫̅K̛̪͎̮͈̯͋͊̄̃͊̋͜͝͝ͅ(Ljava/lang/Object;Ljava/lang/Object;IFI)V

    return-void
.end method

.method public setBlurImageDrawable(Landroid/graphics/drawable/Drawable;IFI)V
    .registers 58

    move/from16 v6, p4

    move/from16 v5, p3

    move/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v29

    const v32, 0x1acf98

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ķ̶̶̶̢̛̦͇̫̼̲̫͙͉̋͗͋̎̿͗̿̎͝a̷̴̷̧̧̢̛̛̛͇̥̟̫̩̜̥̖̯͓̫̓̃̈́̄̿̃͑̅̇̂̌̾̌̂̚͜͝͠ơ̷̴̢͎̠̝͚̯̦̺͎̤̘̮̌̏̔̏̅̀͂͐͐͜͠Ḵ̷̷̴̢͈̬̫̯͕̭̭̗̲̮͓̥͈͎̯͌̎̈̐̑̌͐͑́͗̑͌̿̂͐̋̂͗̕̚͜͜͝͠l̵̯̃͋̀́͠u̺͚͊̅Ķ̷̸̷̧̗̫͉̘̪͕̫̫̯͎̦̜̹͓̫̏̏̑͗̄̾̄̃̑͗̋͐͊̈́̿̚͘͘c̘̈́̎͜ơ̸̸̷̧̧̧̢̧͙͇̺̝͇̾̂̿̈͘K̶̨̧̰̥̭̗͙̻̫̱̹͋̿̌̑͗͒͆̉̿͜͜͝͝K̴͇̺̫͇̘̯̖͉͚̭̖̲̋͊̂̌͜͜͝͝K̶̶̢̨̧̡̫̯̘̹̂̂o͉̹̫̱̱h̨̧̧͎̫̮̯͋͗͒͗̀͌͗à̺͉̈͝()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v28

    xor-int v32, v32, v28

    const v30, 0x1aaabe

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->P̷̸̷̢̛͎̙̺͗̽̋̂̕͝K̴̭̺͈̺̭͚̭͚̭̙͌͗̀͌̇̒̀̃̀̃̋̍́̆́͝͠a̶̫͒͜a̡̗̲͙͈͚͌̿̑͌̚Ka͈̜͒̋ḧ̙̠́͗͐͝h̶̶̸̴̛̪͉͙̺̯̯̤͋̀̈̒̎͌͋̑͜t̴̸̡̮̻̪͉̺̞̙̘̬̯̂̃̂͘͘͝p̸̫͉͓͙̼̻̭̙̯̥̼͕̋̔͆̈̂̑̀͘͘͜͝͝l̺̼̫͌͋̋͌̈́̆͗̒P̵̟̤͆B̝̪͈̅͗͠ȁ̘̦̙̚͜ä̞́̐ţ̧͕̖̥̈́̈̋̔̂̍͘͝ã̧̭̩̪̯̂̂͗̄͌͋̈͘͠ǒ̷̸̶̶̴̧̺̗̺̺̠̼̦̭͚̙̟̘͈̩͓͉̞̤̭͉̞̥̪̺̗̯̈͌̌̃̔̋̈̈́̏͐̈́̌̑͗͒̐̂̄͗̾̄͘̚͜͠͝o̶̷̥̹̍̔â̧͒͝͝p̨̹͓̝̖̤̺̹̈́͂͗̉̐͊͘͝ü͜()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v28

    xor-int v30, v30, v28

    const v31, 0x1aba90

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->p̴̵̵̧̢̺̹̮͎͋̏̾͑̈́͌͐̔̔̂͒̈̋͠͝P̫u͜B̠̊͗͜K̸̸̛̮̞̱͚͚̱̇̈́̋͌̎̾͌̊̋͘͘̚͜͠͝â̧̼̱̪̒̉͝ǒ̶͈̗͖͘͝ȧ͝t̫ą̧̧̺̦̫͓̭̮̱̦̰͎̦̋̆̎̋̎̃̈̈̈̏͒͜͜͝ͅͅaķ̸̶̶͉̥͓̫̘́͒̉̐̏̍̋͝͝a̸͕̫͉̺̎̍̂͐͌͝K̯͉̑͗͌̃̌h̶̯̹͕p̮͙͈̗̂̍̀͘a̤̫͐͗o̸̷̧͈̹͉̱̗̱̱͕͚̎̈̂̈́̋͗̐̚͘̚͜͝ą̵̵̫͉͉̞͓̩̻̦̫͗̄͌̌̿̂̆̾̈́͐̚͝ͅͅKaḩ̴̴̶̢͉̠̂̿̄͌͘͜h̖̗̿̈ną̸̺̰͈̔͌̐ḁ̸̸͗̃͐ç̷̧̛̺̭̬̱̹̜̑̋͗̿͑̚͠a̴͒a̭̓̈́̐ǎ̴̵̫̯̻̤̂̔̀͜͝()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v28

    xor-int v31, v31, v28

    invoke-static/range {v29 .. v32}, Lcom/kashi/settings/view/BlurBackgroundImageView;->Ķ͚͕̞͓̀̐̋͌́̚͠o̷̸̴̴̶̢̢̢̫̭̺̝͖͉̫̫̹͎͚̲͈̻̯̘̭͇̰͉͎̱̮̮̱̻̱͆̅͌̀̄̃͊͂̈̿̉̎̈́͋̏̅̎̂̂̋̈́͊͌̌̿̈́̑̅̋̔̿̎̐̑̚͘͜͠͠͠͝͝K̶̸̮̪̦̤̼̰̱̟̰̫̩̠̋̾̆̂͊̂̌͑́̂́̓̆̈͌̂͗͘̚͜ͅͅĶ̸̸̱͉̺̘̲̀̿͌̐̃̑̑͌̈́̏̚pK̸̷̴̢̧̧͕̗͈͈̘̮͉̦̻̺̅̑̔̎̀͝t͙̩B̸̴̴̵̡̛̛̞̮͎͓͚̝̥̯̭͎͚̺̻̙̼̜̱̫͓͉̻͓̫̈͑̄̄̋̄͗͊̎̾̃̋͑̐̈̄̏͂̅̌̈́͑̀͋̑̌͌̕̚͘͘͜͜͜͝͝ǫ̸̸̬͈̲͉̖̦͇̃̒͌͂̂͐͘͜ǒ̷̶̧̟̝̯̞̯͎͊̕͝ȩ̴̨̘͉͉̫̖͎̪͚̮̦͎̩̖̪̏̃̌͌̈́͌͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v40

    const v43, 0x1ac4bb

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->an̷̸̛̤̯̫͙͉̩̯̫͚̪̎͌̄̈́͋̾͌̌̃̚͜ḧ̛̫̙́̄̈́͜a̸̧̯̺̎͗K̛̰͇̙̯̼̐̋͂͐͌͝B̶̻̲͚̤̺̯͗͋͠ö̫͉́n̸͉̐͌̄͌̆͂̏͝ǫ̷̶̸͉̦͙͚̹̀̈̈́̌͂̆̎̍͝ơ̶̶̷̢̺̙̹̭̘̹̫͈̭̭̿͐̌̌͋́͝͠ơ̴̶̸̷̸̸̸̧̢̧̢̢̧̰̞͚̠̮̥͉̯̖͈̯͕̗͕͚̺̪͈̮͚͓͚̯͎͉͚̭̞̝̯̗̹͈̤̭͙̺̹̭̥̫̫̰̎̈́͋̋̆̈̂̓̏̐̄̈̈̎̈̎̂̓̀͗̋͌̈̏̔͌̌̔͌̈́̂̈́̐͑̾́̌̾͑̾̃̔͗̾̐͘͘̚͜͜͝͠P̵͕͓̖̻͈̍͌͗̿͝u̡̢̺̱̫̱̻͚͕̘͉̗̙̠̯͐̅͒͗̈́͋̐̎̈́̌͘̕̚͜͝͝ơ̸̋̾͗̃̈͘͝͝ṍ̝͖͈̃͌͘͝K()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v39

    xor-int v43, v43, v39

    const v41, 0x1ab7ba

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->p̴͐͒a̬a̞̤͐a̸̼l͓͓̥̙͓̤͗̿eK̸̴̴̴̮̖͈̫̱͑̈́̽̀k̺̗̩͇͌̑͆ņ̸̸̵̲̠̃̽̈̈́̅͜͝͠͝͝ā̖̯͇̭̃̈́̃̂̕ư̵̻̺̲̬̫̌̎̈̎̐̄̋̀͜͝ͅB̸̧͚̖̱͕͗͘eo̷͙͕̹̭̥̹̟̥͌̎̑͂̄̃̔̉͐̄͌̚a̷̴̟̙̯̘͈̭̯̯̤͌̎̂͗̃̍̍̓̾͒͝͠͝a̴̷̸̸̛̭̝̖̰͈͎̾͋̒͋̈̾̔̋͗̋͌̎̃̿̓́̑͜͜͝t̸̘̻͕̤͑̏̌k̶̡̧͓̤̮͚̺̟͚̝͋̏̋̊̒̈́̂͝͝kà̷̹a̭̫̫͑̾̃̌̃͆̌͝K̫̃͊̔̈́̎͋͝Po̭͈̎͊̚K̸͚̥͉͇͎̑̃̅͐̎͜k̶̴̢̫͖͕̹̫̘̿̾̿̄́̾͝â̛̫̥̯̼̫͕̿͂̋͝ň̵̫͉̮̈̆a̫̐̍()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v39

    xor-int v41, v41, v39

    const v42, 0xdc95

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->Bn̴̖̗̯̲̩̂͌͝ķ̗̯̎̅K̭P̦â̶̶̸̧̦̦͈̗͕̥̤͚̯̗͋̅͆̃̑̽̐̐̄͆͝B̷̢̛̫͈̰̈̏͑̿̅͘ǎ̷̷̧̞͎͚̩̹͙͎̥̮͌̆̂̈́͑͘͜͝e̥̱̥͉͗̌̌͊͊̂̃̑͜͝͝K̷n̛͕̠͚̰̝̱̎̌͗͆̏͋͘͘͠a͚͝n̢͕͜ţ̶̴̧̡̛̩̬̖̱̞͎͕̩̂͋͗͋̂̑̾̀̂̌̏̂̕͘͝͠P̩̯̱͐̌̾h̦̭̯̫̀̈́̿̈́̏̑͝a͉Ķ̨̘͇̞̯̫͕͋̾̑̈ḧ̨̗̫͈́͗̊̄B̸̭̝̄͗͋̋̑̓h̷̸̫͈͉̎ơ̯̄̂̂k̴̯̱̯͓͎̅̿̆͑̎̾̋͝͝ķ̶̸̛̥̦͉̥͕̆͗̈̌͜͜͜͝ͅP̫a̷̷̸̢̡̨̛̲̱̥̙̥͙͖̜̗̰̖̲̱̥̐̄̔͋͋͌̌̃̑͗̌͊̌̃͌̕͜͠͝()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v39

    xor-int v42, v42, v39

    invoke-static/range {v40 .. v43}, Lcom/kashi/settings/view/BlurBackgroundImageView;->a̸̢̨̢̝̮͚̙͙͎͌͐͌̀̑̓̃̋͜͝a̛̱̯̭̱͉̻̎́̅͌o̗̙̘̮̩̫̫͒̾͋͜͜p͓̘̗̠̘͈̥͕̯̾̃̋̋͜a̰͜ų̛̯̤͓̉̐̈́̀͘̕͘͜͜ớ̛̹K̨͎̫̹͓̺͕͚͚͚̫̲̯̙̰̈́̿̎̔̂͊̃͑̈̕͜ͅa̷̸̶͎̺̘̘͎͋̆̊̃̃̅K̷̸̢̛̖̫͈̙̹̫̪̭̤̥͚̱͉͎̗͈̪͉̦̺̩̫̈́̈̉̈̋͌̃̐̈̽̾̑͆͂̂̓̌͗̿̌̚̚͜͝͝͠͠͝͠oK͚̈́̅c̺̔ǎ̝̖͐ò̸̸̠͓̹̠̈͒͂̾̆͝͝ĥ̷̴̨̖̥̩̱̫̖̞̩̘̖̱͙̫̭͓͊́̄̔͗̂͌͗͗̚͜͝͝K̢̮̯̘̹̂̈́́̎͊͂͜͝͠l̶̢̢̢̛̝͎̥̭̬͚̇̀̃̋͌͘̕Ķ̛̙̺̘̭̭̘͎̇̎̏̍͋̐̕͜͝͝͠P(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v1, v40

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v3}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ȃ̴̸̷̷̴̧̯̯̜̫̭͈̦̦̯͒̎̅͑͗̎̋̌͆͘͜͝͝͝ķ̷̧̢̛̫̯͉͉͖̮̮͈͉͋̍̎̏͑̈̚͘͘͜͜͝͠p̷̸̤̙̾̚͜å̤͙̻͈͚̫̪̥̔̌̑͑͘p̶̷̴̴̨̢̤̤̻͕̗̼͚̹̙̜̥͓̖͕̫̫̭͙̗̱̩̪̂̇͌̑̄͒͌̂̍̂͑̈̿̀͋͌͋͗̌͂͑̈̄̌͗̈́̈̚͘͝͝P͈̈͑̕l̹̈́͑̋p͙͊p̯͚͋̈́͘u̞͒̈̄̎̿̿̔̕͝B̴̷̷̛̙̘͕̎̐̌͂̂̾̍̃̋͗̚a̷̢͈͕̘̹̞͓͋̾̈́͜p̸̶̸̸̧̛̪̖̹̤͚̠̹̋̈͂̂̓̍͐͐̚͜͠͝n̵̶̷̢̼̟͙̤̹͎͉͓͓̱̗͚̯̆̔̎̄̓̍̌̀̏̔̾̈́͒̈́͌̎̒͑̄͗͊̑̆̅̅̈͗͋͘͝͝B̶̧̧̛̘̦̯͎͉͚̠̮̈̾̈͒̈́͗̍͝(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0, v4, v5, v6}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->P̵͎̺̋a̶̴̶̘̹̗͙̞̦͇̹͗̅̋̑̃̏͒̂͋̌͗̚͜͜͠͝ā̢͈̫̚l̶̴̛̘͎̥͈̟̩̱̻̗̗̥͙͎̫͇̰̹͋̄͊̂̌̍͐̌͂̋̈̂͌́͘͜͝͝B͋̄oB̧̛̦̆̎̈́̾̐͝͝e̦̘͠o͉̮̖͓̥͎͙͗̏̑̈́͆̃́͂́͜͜͝l̴̘̯̗̙͂̂̚k̑̑͜ͅą̡̘̘̭̦̫̏̾̿͑͋̎͌̚Ka̴̢̙̝͎̰͒̇̃̀̈́ȁ̴̶̸̢̨̨̢͎̺̯̭̪̰͎̮̺̩͓̝͚̲̼̥̫̆̋̀̀̌͌̎̂̄̿̂͌̋̉̂̋̂̑̌͋n̛̮͆̋̅̈͆k̶̸̢̢͉͎̖̠̆̾p̧̦̦̎̈́̚ą̸̢̫̗̫̊͗̽͝K̸̵̨̧̰̜̠̥̜̥̱͈̙̯̘͈̘̥͎̿̅͗͗̏͌̂̎͌̌̈́̃p͖̗͙̄p̫̅K̛̪͎̮͈̯͋͊̄̃͊̋͜͝͝ͅ(Ljava/lang/Object;Ljava/lang/Object;IFI)V

    return-void
.end method

.method public setWallpaperAsImage()V
    .registers 56

    move-object/from16 v4, p0

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v27

    const v30, 0x1acde8

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->K̆͘u̴̴̷̫͓̅̄̍̎͘͜ṳ̶̶̷̸̶̸̧̧͎̥̼̮̪̭͎̠̹̪̘͎̹̻͉̩̤̰͈̥̠̯͎̫̽͋͑̾̆̏̐̄̈́̏͌͗͌͌̎̽̋̅̑̋̌́̌͌̈̾͗̏͒͗̕͘͜a̸̶̰͚̤̅̔͋P͚̱̹̼͖̫͉̮͑̔̃a̧̖̗͉͗̉̈͗͋͒͗͋̄̉̂͋̏P̸̸̷̴̢̛̛̻̲͓̫͓̞̗̻͕̲͙̘̮͓̘̹̰̖̃̽͋̆͆͋̃̒͐͋͌̃̅̉̿͗̂͘͜͝oț̴̷̴̯̮̩͇̜̫̦̫̺̋̂̅̌͗̆͘͘͝p̴̢̛͚̿̔̐̌͗̄̔̾̈́͐͘̚͠K͓̍̊̍̋͗͜ơ̴̴͎̼̲̝̺͊̿̔n̛̫̘̯̙̹̦͖͓̹̖͖͙̯̮̍͆̿̓̒͑̐̋̋̆̋͑͜͝ͅK̸͕̩̑̑͋͋K̷̷̢͈̥̻̙̭͚̃͐̃̾̎̑͗͗̅̏̚͝͠c̵c̷͇̯̅̑͋()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v26

    xor-int v30, v30, v26

    const v28, 0x1abcfa

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ö́ȱ̷̢̯̂͝a̴̴̸̧̺̺̯̱̼͒̎̚ą̷̢̘̥̤̞̪̺̏͒̃͂̄̔͋́͘͝͠͝P̨̫͚̝̪͈͕̋̋̚p̢̮̭͎̙̋̑̄̈́͘ͅç̸̷̛̥̗̗̮͚̯͚̪̲̥̫̜͚͈͑̀͗̽̍̾̑̆͋̒̔̈͌̅͑̾͜͝u̢͓̯̮̠̱͎̫̱͗̄̌͋̈́̋̚͜͝͝͝k̸̶̋͗p̵̸̴̫͎̿͋́h͉̚e̸̷̸̶̢̧̺̰̖̺̱̺̗͊̋̀͑̾̎̈̐̐͋̑͗̍͜͠e̮͌͂̌̿ǎ̛̖̾ä̸̘̺́̄̋̅̃̅͜äcB̶̸̷̶̶̧̡̛͓̭̮̙̱̗͙̮͕̬̪̭̩̭͒̃͒̂̋͑̋̅͋͆̂͑̄̐͌͗͋̋̈̎͘͘͝͝͠n̫̮ḧ̴͓̠̘̭̫̃̋͗͋̈̿̈͜͝ą̶̴̸̧͕̫̻̥͓̭̥̺̱͙̘̲̂̇̈͌̌͑̃̌̆͌̋͜aṯ̌́()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v26

    xor-int v28, v28, v26

    const v29, 0x1aa7ea

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->c͈̗͗̂o̴̪̫̎͝k͕̘̠͑̑̎͂͋e̗͋̋͝ǎ̷̛͖̌̀̊õ̷͚̦̙̩͌̈͜͝a̴̸̸͈͎͙̗̫̫͉͈̥̾̂̌̄͋͑͜ķ̸̨͓̦͎̈́̔͒̌̑͐͘͜a̧̤̮̫͕̞͎̗̘͈̦͇̹̜̗͌͋̾̾̈́̈̾̐̿̾͘͘͜͜͝k̸̸͎̠̤͉̮̲̖͙͙̋͊̑͑̏̏̎̄̌͑̌̀̋͝a̶̴͚͎͉̖̦͚̫̯̺̦̹͚̎͒̃̀́̋́͜͝u͚͠n͉̗͈̂̍͗ǒ̫̱̰̯̆͝͝͠ȯ̇P̶̨̙̫̭̺̘̋̔̔̃̄͗̚͜͝ő͖͚̂͑̊̚̚̚͘B̋caa̶̲̦͋ư͖͚̓͆͗͗͜͜cB̃K̩͚̰̿̂ha͓̠͌̈́̕͝e̫̙̪̮̭̍͌̈́͊u̴̩̖͘ą̷̛͚͎̺̻͚͎̘͎̲͈̫͚͓̗͉͌̍͗̐̈͌͋́̀̍̿̔̈̾̌̋͘͜͝()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v26

    xor-int v29, v29, v26

    invoke-static/range {v27 .. v30}, Lcom/kashi/settings/view/BlurBackgroundImageView;->a̸̢̨̢̝̮͚̙͙͎͌͐͌̀̑̓̃̋͜͝a̛̱̯̭̱͉̻̎́̅͌o̗̙̘̮̩̫̫͒̾͋͜͜p͓̘̗̠̘͈̥͕̯̾̃̋̋͜a̰͜ų̛̯̤͓̉̐̈́̀͘̕͘͜͜ớ̛̹K̨͎̫̹͓̺͕͚͚͚̫̲̯̙̰̈́̿̎̔̂͊̃͑̈̕͜ͅa̷̸̶͎̺̘̘͎͋̆̊̃̃̅K̷̸̢̛̖̫͈̙̹̫̪̭̤̥͚̱͉͎̗͈̪͉̦̺̩̫̈́̈̉̈̋͌̃̐̈̽̾̑͆͂̂̓̌͗̿̌̚̚͜͝͝͠͠͝͠oK͚̈́̅c̺̔ǎ̝̖͐ò̸̸̠͓̹̠̈͒͂̾̆͝͝ĥ̷̴̨̖̥̩̱̫̖̞̩̘̖̱͙̫̭͓͊́̄̔͗̂͌͗͗̚͜͝͝K̢̮̯̘̹̂̈́́̎͊͂͜͝͠l̶̢̢̢̛̝͎̥̭̬͚̇̀̃̋͌͘̕Ķ̛̙̺̘̭̭̘͎̇̎̏̍͋̐̕͜͝͝͠P(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static/range {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ç̸̴̧̢̦̺͇͈̘̦̰̫̮̺̗͎͉͉̀̌͌̐̑̋͋͜͝͝l̷̷̸̢̢̛̰͉̘̗̍̈̾̾̂̈́͌̉͗͌̆̅̂͋̃̀̾̌̈̈͌̆̾̂̚̕ě̶̢͚͚̙̫̒̄̉͋͜ĺ̶̵̢̘̫̃̂c͈͕͎̋͝n̗̏̏̏͂̆͘p̷̡̧̭̫̦̰̭̠̪̅̑͌͋̄̋̋̔͜k̴̡̹̫͈̰̻̩̬͉͈͓͚̋̅͋̿̊̉̄̄̅͘͘͜͠k̷̴͎͈̩͜á̸̴̷̢̧͈̲̭̯͕̺̯̈́͗̆̆̊͆̎̈́̎͊̾̕͝͠K͙â̖͂̂͊Kö̶̧̘̫͎̺͉̮̩̘̘̗̏̇͑̇͘ȃ͒ă͚̤͈̰̗̮̭͚̞̂͜͠͠͠a̷͕̟͎͚͎͕͌̂̑̈̂́ḩ̵̶̤̺̘͚͓̙̖̯̉̈̽̏̑h̢͎̫̜͙̱͈͈̋̄̀̀͆͌͝͠ͅa̭͕̋͝e͈̖̰̪͖̊̉͘k̛̞͌͘()[S

    move-result-object v37

    const v40, 0x1acd7d

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->oe̡̢̛̠͕̖͌̿̆͒̓̐aľ̸̴̢̧͈̠̯̭̥͓̱̾͒̍͒͗̋͜͝n̷̶̦̲̙͚̥̪͉̥̼̯̈̑̅͘h̶̸̶̶̨̧̢̪̖̱̙͈̾̃̋́̂̒̅̓͊͜ĉ̨̛̛̪̖̦̫̗̫͚͚̞̌̆̑͂̑̈̎̐͆͑̽͘͘̚͘͜K̷̸̵̛̫̺̹̗̲͓͉̋̓̍͒̍̊̈̄̌̽͜͜͝͝͝ç̸̲̠̗̱̫̖̫̗̱͚̫͈̱̹̈̍̄̃́͌̔̀͌͗̓̋̑̂̿̈̍̈́̈̔̿̕̚͝͠͝ȃ̤̟͈̖͙͂͑͘͝o̷̦äB̵̛̄̿̃̀́̎̾͑K̸̻̱͑̋h͗ṯo̧̠̺͙͂̈́̍̋K̷̷̶̗̱̹͉̹̄̌̈́̒͐̋̃̊̃͒̈́̈́̔̌u̸̴̧̲͐̚B̶͌ǘ̶̸̧͚̮̥̻͎̩͕̜̙͚͓̩̭͑́͗̌̋́͆̂̋̀̏̈̏̐̃͝͝͝͝l̨o̷̧̧̼̠()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v36

    xor-int v40, v40, v36

    const v38, 0x1abcad

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->Ķ̵̸̸͙͎̝͌̂͜͝͠u̷̩̎̄̂̍̈͑͜K̫̖̄͘ơ̶̵̸̸̧̡̙̗̮̹̖̼̹͎̦̮͎̺͙̲̈́͋̆̐͒̎̌͌͋͌́̐̋͗͗̎̂̀͋̈́͘͘͜p̷̢̧̘̰̪̠͎̤͖͂̿̾͑̑̎ȃ̭Pn͚̼̫͎̯̺̱̺͕͑̍̑̌͘͘ͅơ̡̥͈͗̊̋͌̿͜͝c̷̶̴̦̭̗̗̥͋̌̋̋̎͋̏̏̄͋̃̋n̢̗̰͚̔͂̈́̑̚ǎ̸̡̢̢̨̛̫̥̫̦̟̹̫̂̊͂͂̿̈́̑͋͒̅̆͒ō̹̮̱̐̂̀ă̵̶̶̶̧̤̦̗̱̲̪͗̈́͌̈̂͗͘͠k̢͋̅̀͑̃̽͌͌̄͘͜ȏ̸̸͉͎̙͈̭͙́̃̐u̧̱͇̥̘̫̭̱̦̘̜̹̺̗̾͌͂̎͑̀͒͊̅̋̅̑̿̕̚͜͝͝l̫͂̏͋̌́̈̃͌̚͜Ǩ̴͚̄͂h͖a͉ṉ̸̫͉̥̍̏̄()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v36

    xor-int v38, v38, v36

    const v39, 0x1aaf51

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->Ḵ́̈̆͝u̵̵̧̥̪̯̯̪̯͚̬͙̦̬̗̦͎͌̈͌̃͋͋͋́͑̈̿̈́̿̃͌͌́͌̎̋̈̾͗̿͂̌̚͜͝͝ͅn̛̫̺͗̈̄̇̓u̠̪̒̐̔͝ťaṋ̨̨̭̦̭̘͗́̂́̐͊͜͜͝͝n̷̶̡̪̥̺̖͚͈̟̱̹̺̠̱̋͊͌̈́̌̌̂͑̑̐̈́̚͜͠͝ļ̷̶̴̢̜͕͉͚͉͑͂̌̈̍͐̆̎̋̈́̾̈͘̚͜͝͝e̫̻o̸̴̧̯̠̦͉̎͂h̭̥͎̄a̱P̨̅̈̈̌ūp̴̧̨̛͉̜̤̗͕̞͋́̌͂̈́́̿̈́̈̏͗̈͝ͅȏ͎̌̊ķ̸͎̥͓̈́̈̋̂͗̕͝ă͕͠ç̷̫̦̙͉̺̯̌̑͌̄͌̀̈́͘ơ̸̷̷̸̧̯͉͎͎̱͓͓̺̤̱̙͚̋̃̑̀͗̈́͗̄̈́̒̂͊̑̂͊̍̚̕͜͝͝o̶̘̭͑k̨̛͓̦̙͌̈́̌͐̈͘()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/kashi/settings/view/BlurBackgroundImageView;->pô̲͈̪̫̒͋̎̓̅̚͜n͝B̴̦̈̎͌̌ā̷̹͈̜̻̑̈̒͜͝͝ͅě̵̸̸̡̨̡̠̙̲̭͉̫̯̭̱͓̼͚̭̭̭̫̀́͌̆̋̐͂̑̾̏͋̑͘͜͜͝͠ͅḁ̾͘t̸̸̡̡̺͙̥̯͚̰̺̟͇̠̱͋̋͋̂̓̊͜͜ͅà̸̧̢̧̧͚͇͕̩͖͈̫̗̈́̌͗̀̎͊͌̊̕͜K̛ỡ̸̶̧͚̺̺̘̯̼̮̺̻͉̫̭̦͎̫͚̍̓͋̎̾̈́̈̎͑̎͋̎̉̋̑̌͑͊̂̌̍̈́͘̚̚͜͠ù̧͎̾̂̂̋͝â̷̧̯̫̪̥͎̹̗̺͚͋̃̈́̍̈͊̑̆͋̈́̀̕͜͝B̸̷̴̸̧̬͎̯͎̹̞͚̂̋͌̿͗̏̚̚͠͝ȃ̧̺̐͜t̜̆a̻̫͗͑̑̿͗t̨̪̺̞͋ě̷̸̵̢̛̛͈̫͎͚̭͎̫̯̭̘̘͉̈̋̂͊̍̾̌̃̈́̎͌́͘͝(Ljava/lang/Object;)I

    move-result v36

    xor-int v39, v39, v36

    invoke-static/range {v37 .. v40}, Lcom/kashi/settings/view/BlurBackgroundImageView;->n̛͚͓̥͂K̸̮ö̭̎ç̸̷̮̫̗̫̰̰̍̄̚͠ä̷̷̜̪̘͈̫̯͚́͋͊̋̋͊͑̋͜͜B̘̺̯̒o̶̧̧̠̘͉̫̙̘̹͇̊͂̆̋̅ȅ̴̥̭̗̙̠͚̫̮̺̗̘͚͎̦̠̅͋͗͌̉́̂͐͑̆͆͘͜ã̶̷̢̛̰̪̱̯̗̫̰̙̜͙̼̫̲̼̫̯̫̲͉̗͗̾͒̈̑͊̎̏̃́̈̉̈́͋̊͘͝͝Ķ̸̴̜͎͚̗̘̀̽͑̾̿̂͌̅̄͗̚k̷̫͎a̗̎̄͌͂̃̚ḩ̷̭̭͕̥̇̀̈͑̅̈̀̄P̱͙͇̮͈̋́͜Ķ̧͉̹̹̯̦̪̹̃̆̄̂̈́̄̃͝͠aã̵̸̷̭̰̭͉̯̬͚̱̲͚̪͓̮̲͎̱́͒̀̂̆̂̈̿̃͊̄͆͋̈͗́̏̓̿̚͜͜͝͝ͅa͓a̼͋̅̈̂͋̍͝ȃ̧̲̫̩͘u̠̲̫̞͎̠̅̎͑̌̾̎̈ŭ(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v1, v37

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ḩ̷̵̴̩̲̝̺̗̠̃͌͘͠c̷̺̫̦̠̈͝c̺h͒̑B̯͓̗͆̂̎̋h̵̸̡̹͕̭̟͉̤̎̒́͐͐̂̄͝à̭̲̯͎͉͝c̲̗͆̂̃̈͝a̸̶̴̸̢̢̢̘̫͎̗̖̥̥͕̻̻̭̹̋̋͌̓̄̃̎̂̍̈̈́̈́̌̎̿̈́̓̕̚͘͜͜͠͠͠a̸̙u̸̫̩̞͌̿͂̈͜c͉̘͈̀͂̈́̂̋̃̈́͘ơ̧̤͓̜̯͓̥̱͓̌͌̈̃̿̈͜͠k̨̯̖͋́͘à͉̫̋̾͜Ba̸̵̧̛̫̗̠̙͚͂̃̅̈̕͘͝ç̵̵̴̷̸̷̴͓͇̙̗̫̹̹̱̜͚͈͙͚̫͊̋̈̊̂͐͌̅̔̅͋̃̋̾̐̔̋̔͐̂̃̈͊͘͠͝͝͠ą̸̷̵̵̶̵̢̛͎̱͖̹̫̠̺̦̹̬͕̺̥̾͋̅̋̎̎͌̋͋̌̌̂̌̀̅͑͗͌̈́͌̽̃͝͝͝͝ķ̸̙̱̫̑a()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->k͈͕̇̅ṅ̡͋͌̈́lo͓͎͎̼͚͎̩͂͑̂͜͜ķ̸̸̨̧̛̗̭̫̫̩̮̝̙̯͉̝̪̭̎̏͋̎̃́̐͗͝B̸̷̘͈̟͉̯̼̮̺͎̼̱̦̫̂́̔̎́̌͋͗̈́̋̾̚͘̚͝aa̢͙̱̹̭̺̔͋͂͐̎͗̋͂͆͜͝a̷͊͘c̶̶̡̖͈͉̺̯̥̰̟̯͙͋̈́̋̂́̌̈́̾̈̏͋͌̈͂̕à̸̷̶̛̹̭̺̭̗̰̗̎̎̂̈́͘͜͝ͅt̚uë̢̱͎̰̖̯̅͋̔̿͂͋͌͝a͉e̴͗͠͝aa͝KhĶ̶̧̧̧̠͙̦̫̼̝͈̼̱̗̎̂̑͋͌́͗̍̈͜o͗̃̑́ț̸͙̥̼̗̩̂͐̂̏̿͘ͅǘB̶̸̺͕͉̼͉̯̠͋̿̋h̶̺̲̺̘͗̈͌͗̈́̃k̖̱̭̫̙̂͊ǒ̧̨̡̧̺͕̱͎̠͙̤̗̺͌̽͌́̆̅͌͂̋̐͌͘͘͜͠(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->ln̷̩͈͇̫͈̙̮͌͋͌̔͗̋̋̃̎͆k̸̴̛̫͈͎̹̗̪̭̭̮̮̼̇̿̈́̑̎̚͝͝ḧ̭̱Pk͙̥̦͉̪̯̗̀͋K͉̱̫̘̙̙̯̲̅̑̂͗̊̈́ͅà̶̰̯͙̈́͗̅c̢̙̾͐͑͌̌̑̀̍̑h̴̤̫̯͙͗̌K͈n͈͜ầ̵̸̸̴̸̸̷̛̘̹̫̦͙͚͕̦̰̫̫̮͌̿̂̎̅̋̃̋͌̌̈̑͋͘͝ḛ̷̛̫͚͎̱̈͂̋̌̑̿͌͌̿̄͘̚ö̸̷͚̘̪̭̙̘̮̫̮̰̗͙̰̜́̀̃̈̿̑̋́̈̽̍͋̋̅́͗̔́̆͘͜͝ͅḧ͓̥́̋͂̌͠ͅn̸̫͚̻̹̦͌̄͋̌p̧̟e̞͋͐̓̌͘͜͝ơ̶̸̷̧̢̧̢̰͈̘̦̹̪͉̻͎̪̥̬͌́͋͐̅͗̇̿͗̏͊͊̑͘͜͜͝ả̬̺͊͘p̢̢̺̭̭̫̫̺̈́̀͌̌p̹͓̯̈()I

    move-result v1

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->K̛̘͉̥͚̘̮̄̋̌̀͒̋̕c̯c̶̷̨͓̫̱͈̲͌̈́̑̀̇̏̂̿̎̌̿͘͜͠͠K̸̶̶̢͖̩̘̩̲̲̺̈́͌͋̎͌̋̈̚͝p̸̴̶̢̺̩̭̤͚̠̰̩̯͚̫͚̮̙͉̯̻̯̭̥͚͚͌͑͌̾̀͋̑̈́̃͌̏́̓͌̚͠a̠͓̠͑̌p̷̡̱͖͎͚̄̔̎̌̀̍͜͠oK̸̢̙͎̹͓̯̥̞̖̗͎̗͎̮̖͚͙̔͗͌̂͗̿́̔̚͘̚͝͠ǎ̵̂̎͝͝ȧ̜͗̑p̷̶̷̸̧̧̧̢̛̛̯̻̭͙̩͕͎̫̝̯̫͕̞͚͎̫̙̼̱̺͕͇̏͊̑̈́̄̌̾̂͌̃̎̀͋̍͌̑͐̒̃̀͌̓͜͝͝͝͠k͈͚̂͋̕͝o̷̶̧̩̫͎̺̺̭̼̠̫͚̱̤̺̘̹͎̠̥̫̘̎̂͊̌̌͌̄̐̌̐̋̿̑̋̄͒͊͐̈̌̈́̂̌͑͘͘͜͝͠ot̸͗̋̚e͚()F

    move-result v2

    invoke-static {}, Lcom/kashi/settings/view/BlurBackgroundImageView;->o̯̻lp̶̸̛̗̫̺̞̥͙͇͈̦̔̅̈́͋͗̎̋͐̔͠ờ̶̶̧̛̱̜̠̹̪̱̭̑͑̇͑̈̃̃͗̈͗̈́̌͝h̛̲̦̫͆̔͘̚ŏ̷̴̸̢͉̯̺̤͙͚̼̙̗͊̃͐͒̿̈͌͘͝n̸̗̒t̫͎̯̭̩̮͐̿͆͋̌̿͋̎̽͘̚p̷̵̧̭͚̱͉̩͎͗͒̂̃̃̅͋͘͜͝K̶̢͕̤͕̰͙̻̺̗͉̘͗̂̎͌͋͒̍͑u̶͎̭͉n͎a̷̴̸̧̢̛̛̛͚̯͓̗̫͚̱̭̘̙̯͚̐͒̐̈̏͊̿͘͘͝͝͝o͉͈͋̂̽͘͝ļ̷̛̥̆̈́̓̄̿̌̒̌̂͝ả̸̷̧̧̝͚͕̙̻̰̝̯̺̹̟̼͎̅̌͂̂̌͑̀͌͒́͋͂͜͜͝ơ̸̶̸̶̢̬͈̰͉̱̱̜̫͉̦̻̫̗̮̭̰̲̹͓̻̭̺̏̿͊́̅͒̈̅͗͋͊̽̑̐̈̿̂̇̈͘͘͜͝ͅ()I

    move-result v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̶̵̧̭̱̮̺̘͚̫͙̞͎̯̫̋̑̃̒̑́̑͂͑͑͌͘n̸̷̸̦̗͈̰̖̂͒̽̈̂͜a͓̙͇͋ñ̷̶̶̢̛̺͙̫͜͠͝͝ḙ̎̈̚k̸̨̧̢̛̫̫͎̩̞̦͊̀͌̈́̈̅̈̂̚̕͜ļ̴̡̫̥̮̗̩̲̩̹̥̼̾͌̈̋̅̆͐͋B̗̱̠̌́̌͘͜͝ͅĶ̸̡̨̛̭̰̯̟̦͙̹̦̮̭̪̤͚͉͈͉̈͒̈́̐̄̔̈͐͑̎̄̿̈̿̿̋̔͗̆͋̾̑̃̀͌̈̾͂͜͜͠͝͝͠t̸̰͈͕a̵̗̗̫͚̾̃̈͝ǔ̸̢͚͕̯͈̫̌̂̾̿̏͜ă̪͙̗̞͈͚̫̙̭͗̈́̅͌͘͝ǫ̷̴̡̨̰̯͖̿̅͌̂̈͗̾̈́̂̋͆̃̂̋̾͝a̦̫̕ņ̴̶̨͎̤̺̿̾̒͌͗̎̑a̴͕̺̼̜͋͒͋̂̑̚͠͝͝Kt̎̈́͝͝a̴͎͙̋̈͂̚͝(Ljava/lang/Object;Ljava/lang/Object;IFI)V

    return-void
.end method
