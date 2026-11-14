.class public Lcom/kashi/settings/view/SpecsTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final short:[S


# instance fields
.field private mAttached:Z

.field private mAttr:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 52

    const v0, 0x93

    new-array v0, v0, [S

    fill-array-data v0, :array_c

    sput-object v0, Lcom/kashi/settings/view/SpecsTextView;->short:[S

    return-void

    nop

    :array_c
    .array-data 2
        0x758s
        0x72es
        0x732s
        0x75bs
        0x739s
        0x70es
        0x712s
        0x717s
        0x70fs
        0x75bs
        0x719s
        0x702s
        0x75bs
        0x730s
        0x71as
        0x708s
        0x713s
        0x712s
        0x653s
        0x662s
        0x66as
        0x664s
        0x666s
        0x662s
        0x4cas
        0x4d6s
        0x9afs
        0x9a2s
        0x9e9s
        0x9a2s
        0x9a3s
        0x9b0s
        0x9afs
        0x9a5s
        0x9a3s
        0x999s
        0x9a8s
        0x9a7s
        0x9abs
        0x9a3s
        0x999s
        0x9afs
        0x9a8s
        0x999s
        0x9a4s
        0x9a7s
        0x9a8s
        0x9a8s
        0x9a3s
        0x9b4s
        0xa53s
        0xa5es
        0xa15s
        0xa58s
        0xa4fs
        0xa53s
        0xa56s
        0xa5es
        0xa65s
        0xa5es
        0xa5fs
        0xa4cs
        0xa65s
        0xa53s
        0xa54s
        0xa5cs
        0xa55s
        0x99ds
        0x98bs
        0x99as
        0x99as
        0x987s
        0x980s
        0x989s
        0x99ds
        0x9b1s
        0x98cs
        0x982s
        0x99bs
        0x99cs
        0x9b1s
        0x98cs
        0x989s
        0x9b1s
        0x998s
        0x987s
        0x99ds
        0x987s
        0x98cs
        0x982s
        0x98bs
        0x9b1s
        0x99ds
        0x99as
        0x98fs
        0x99as
        0x98bs
        0x75as
        0x757s
        0x71cs
        0x75es
        0x75as
        0x746s
        0x75as
        0x76cs
        0x745s
        0x756s
        0x741s
        0x740s
        0x75as
        0x75cs
        0x75ds
        0x76cs
        0x747s
        0x756s
        0x74bs
        0x747s
        0xa28s
        0xa3es
        0xa2fs
        0xa2fs
        0xa32s
        0xa35s
        0xa3cs
        0xa28s
        0xa04s
        0xa39s
        0xa37s
        0xa2es
        0xa29s
        0xa04s
        0xa39s
        0xa3cs
        0xa04s
        0xa2ds
        0xa32s
        0xa28s
        0xa32s
        0xa39s
        0xa37s
        0xa3es
        0xa04s
        0xa28s
        0xa2fs
        0xa3as
        0xa2fs
        0xa3es
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 54

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lcom/kashi/settings/view/SpecsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 55

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/kashi/settings/view/SpecsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 55

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Lcom/kashi/settings/view/SpecsTextView;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/kashi/settings/view/SpecsTextView;->mAttr:Landroid/util/AttributeSet;

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->t̴̢̛̛̲̤̰̖͉̂̔̾̋͋̋̆͑͘c̨̜͑la̶̷̦͎͋̌̿k̟̪͙͒̆̅̄̑͠͝h̵͚͊̀͑̍͝a̲̭o̶͉̩͎͜P̷͂̑͜l͉̭h̸̸̶̷̸̸̶̸̵̨̢̛̫̦̜̖̫̤̗̹͚̹̞̲̯̯͚͎̠͚̯̰͎͈͚̭̘̩̻̻͇̯̥͚̖̗̯̝̜̱̺̘̯̖̑̓͗̎̎̃̍̇̈́̋̀̃̏̉̑̈͂̃̃̂͑̋̎̒̌͆̈́̏̍̈̂̆̑́́͌̌́̿̏̈̈̈́͋̎̈́̏̉̈̂̀̈́̀͑̔̃̈́̏͌͜͜͜͜͜͝͝͠͝aţ̸͕̭̫̫͚̬̃̿̽̑u̺͚͖͋̂̑̋o̷̍͐͗͋ť̴̷̸̰̻̬̺̫̜͇̺͌̚͠ķ̧̧̫̟̭̤͈̺͇̺͚̈́̀̌̃̍̓̎̑͌̋̅͂̌͘̕K̛̿̂̿ae̵͎͕̎̍͋B͓̭̮̊͗͒͝u̘̭k̫̼P̶̢̗̮̜̆̈́̈́͝(Ljava/lang/Object;)V

    return-void
.end method

.method public static B̶̧̨̧̗͈̥̺̒̔̈͘͝l̷̤̻̙̞͚̦̃̽̔̋̂̈͜͜͝͠o̢B̢̢̹̬̺͕̱̌͋̏́͠eļ̸̧̟͈̯̗̥̺̾̅̋͐͋̇͗͋͐̚͝͠ȟ̸̷̴̷̡͙͎̯̦͕̭̯̩͕̿̃̈͜ǫ̶̸̶̧͚̺̫̲͈̫̹̭̮̯̙̼͓̌̔̅̌̔̑̎͊̌̈̋͊͆̑͒̆̎̍̄͌͑͗͘̕͠͠ě̶̢̢̗͉̰̦̤̐͋̍͂͌̌̌͑͘͠͝a̰͈̲̹͉͐̈́̔́̅̾̂͝ͅK̷̷̵̴̨̢͎͚͎͕͖͇̺̗̜͎̼͙̘̜̫͖̫̀͌̏̈́̋̈͆͆͂̑̉̌͂̈͗̐͗̈͊̌͑̃͑̎͘̚͘͜͜͝e͎̤̫͌̃̌͐͜ȩ̴̴̧͚̭̭̫͚͕̫̼͈͇̐̌̈̓̄̅̾͑͆̏͋̅͂̽͘͝͝͠͝K̻̰̯̺͕̖̯͋̃͑͌̏̐̾̌̋͌̋͘͜͠͝k̾B̭̀̂P̙̌(Ljava/lang/Object;)Landroid/content/Context;
    .registers 3

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()I

    move-result v0

    if-gez v0, :cond_b

    check-cast p0, Lcom/kashi/settings/view/SpecsTextView;

    iget-object v1, p0, Lcom/kashi/settings/view/SpecsTextView;->mContext:Landroid/content/Context;

    :goto_a
    return-object v1

    :cond_b
    const v1, 0x0

    goto :goto_a
.end method

.method public static K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I
    .registers 2

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()I

    move-result v0

    if-gez v0, :cond_b

    invoke-static {p0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ȟ̸̶̶͈̎̋͌̈̈͗͌̇̐t͉͚͖̩̤̔k̦̂͠e̴̴̷̸͇͌͒̋͜ā̸̶̴̴̢̧̧̛̱̤̥͓̰̦̺̩̗͈̩̟̯̯̻̗̦̮̤̦̙̲̘̈́̈́͌͗͌͌̎̈́̅̑̔̂̃͑̀̔̅͂̂͘͜͜͝k̗̱͕͉̂̇̇͑͘͠͝h̸̴̶̖͚̮͎͖̭̼͚͗͌͌̀̑̋͗̋͋͘͜͜͝aB̗͕͒̂̚͜͠u̩ţ̛̘̖̪̫̭̂͊̌̈́̔́̂̓aa̪͜ļ̸̸̴̹̙̹̜̗̤̰̰̙̮̙̺̗̭̇̑̄̎̏͆́̋͌͗͑̂̅̂̿̄ͅc̨͈͖͓̺͑̎͊̆͠ǫ̸̶̵̛̮̺̟͉͇̘͇͎̮̺̞͚̫͂̃̑̌̋̎̍̋̌̈̎͑̎̂͘͜͜͝͝͠͝͝͝p̶̶̴̱̹͚̗͈͓̺͇͋̑̋͐̌̉̂͊̿̂͜͜͝B̭͌̓̈́͜ͅȗ̢́͘t̵̛͎̼̭̙̂͂̾̀̃̆̅(Ljava/lang/Object;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const v0, 0x0

    goto :goto_a
.end method

.method public static P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S
    .registers 1

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ḻ͚̦̾c̯̯̗͌̀̅̈͘͝͝͝na̵̴̱̺͕͗̕ť̸̸̵̨̢̛͕͕̙̪̘̫̯͈͚̰̺̅̋̾͘P̷̢̭̈ů̷̴̶̺͉̫̹̩̘̻̅̌͋̋̔͑̔̊̋̾̒̽͌̕ͅa̸̱̦̙̍̌̎͘u̢̾c͎͈̆̀͌K̸̨̫̱̘̍͌͐ư̸̸̲̭̹̘̽̎̈̾̚ù̵̴͓̿̋̋͋ớ̷̢̧̛̛̫̝̫̭̟̯̩̫͎̞̩̫͙͈̈͋̒̆̅͗̂̈́̈͋͋͋̎̕͘͜͜͜ȩ̸͇̥̦̹͋̃̈́̋̋̓̄̚͘͝oe̫̫̍́͑̃͝͠ę͉̅ä̙ȃ̴̷̲̋̈͋ǔ̸̸̸̫̥͓͈͗͌͝ͅP̵̺̩̯̬̌ḧ̷̡̛̩̭͓͎̱̺̲̺̹̋͒̋̃̍̑̈́̆̚̕̚a̱̯͓̯͑̑̋́́͆͌̚͜p̶͓̈́a̫͓͐͜ų̸̰̮̮̏̍̃̑͌͊͗̿͂͐͋͂͝p()I

    move-result v0

    if-gtz v0, :cond_9

    sget-object v0, Lcom/kashi/settings/view/SpecsTextView;->short:[S

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x0

    goto :goto_8
.end method

.method public static P͝͝p̴̢̨̱̘̦̼̩͙͚̘͓͗̇̚͘ǎ̢̧̙͓̫̱̖̭̌̌̂̓̃̄͌͋̚l̮̖̰p̴̶̶̸̸̧̧̧̢̢̬̫̰̤͙̺͚̝̯͉̘̂̿̂̔͑̈̂͌̽̏̃̌̃̎̎̇̃̄͋͌͜͝͠ä̵̖͎͜͝n̢̲͕͉̂̓̋̈́̂̔̈̿̐k̤K̸̛͈͎̺̠̑̂͠ő̗̃̃ȏ͓͚́K̷̸̦͚̩̤̼̆̄̌̓͝t͎̗ą̶̸̸̧̢̧̫̱̺͈̥̗͕͓̘̫͉̺̱̮̎̋̌̆͗̈̂̀̎̌̈́͌͋͘͘͘͝͝͝͝tu̩ķ̷̢̢̭̟̠̗͎̟̪̝̥̲̭͈̹̙̫̘͈̺̯̹̫͈̦̫̐̀̿̌͐͌̅̾͌͋̒͊̅̌͗̈̂̂̂͗͗̄̀͑̕͘͜͠͠P̵̶̦̺̤̫̠̺̬̈̆͋͒͋͂͌͒̀̄͂̏͝ų̴̙̜͖̗̘̖̯̺̌̈́͌́͐̂́̎̈́͜͜͜͝͝͠͠(Ljava/lang/Object;III)Ljava/lang/String;
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

.method public static a̷̧̛̫͓̫̲̪̯̤͈̖͚͉̼͖̖̎͆̃́̈́̃͒͌̍̃̂̋̔̌͋͜͜͜͝͝͠͝a̧̼͐̓ä͉̍ǘ̷̸̶̦̚Kã̷̈o̶t̸̷̸̢̤̺͖̗̗̅̋̒̅͑̀̄̿̅̚͘͜e͚̤͌̾a̴̷͚̩̲̗̥͗͑̋̈̂͋̍̚͜͜͠͠k̶̬̲͈t̷̸̢̨̲͗̈̈͘ç̵̨̧̺͎͕̥̫̱̭͗̇̀̈̃̾͒̀͊̎̄̐̋͝c̴͎p̸̸̸̨̛͎͈̻̭̱̺̎̔̔̐̈̌̈̄̑̽̌̿̎͜͜͝ö̶͋t͒B̸̡̛̼̦̥̰͚̂̂̈́̈́̂͊͒͠k̸̴̶̴̨̢̛̭̥̱͎̹̻̙͎͓̫̹͕͚̦̻̫̈̎̇̃͌̎͂̓̾̿͊̐́́͗̂̾̚̚͜͝͝͝͝͝a̺̓͌̚e̸͓̥̥a̶̲̋̈̋̽͠p̛͚̗̞͚̔̋͗̏̔̎̑̚͘͘ǎ̢͕̘͉P̧̭͉͈͋(Ljava/lang/Object;III)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$2;->h̵̷̴̵̭̥̫͙̯̰̺̭̗̲͓͕͆̽̋̍͂͗̎͜͝͝ǎ̧̮͈̘̏̿͗̈́̈͊͜ã̛̠̪̫͓̤̺̭̫͚̞̙͌̂̚͜͜͝na̪͚͙̐̂̑̃̄͜uo̧̞̎ĉ̶̶̸̨̯̲͈̫̤̜̯̦͈̩̲͈̯̗͉̺͎̐̂͌̒̒̈̀̏̄̅̋̌͒̑̄̔̎̈́̑̅̈́̌͘̚̕͝͝ͅt̢͓̘͕͉̝̦̹̐̌c̃͗͐̿ç̷̢̧̹̫͈͈̫̭̭͂̉K̾ç̗̋̋k̡̫̎̋͝K̴͓̅̂ȯ̫̗́̿̆Ba̛̹̗͗̅͜K̅ǎ̸̴̴̶̶̧̼̦̝̱̟̺̯̥̫͖͕͓̪͌͐̋̑͑̈͋̀̎̌̑̂̑̌̃͗͗h̖̅͒̔o̲̬͘ķ̴̸̶̶̨̢̥͈̗̫̤͕̙̯̰͕͙̟̞̙̮͎̩̯͎̮̜͓̱͈̤̺̩͈̍̈́́͑̆͋̿͋͋̈́̈͆̌̅̈́͜͜͝͝͝ā͓̏́()I

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

.method public static ȩ̥̘͉̙͎̯͈͖̲͕̚͘͜͝k̛̮̙̫͓̈̇͑̈́̋͋̑͊͘c̘͎̯͎͎̬̮̈̇͆̄̎B̝͓͓͓͈̫̎̀̅̎͌̌̐̂͗̃͘ō̴̸̴̧̠̥̭̘̪̥̗̿̊â̸̶̸̧̩̻̰̥̫̈̆͌ͅkB̵̛̭̮͑͂̎̌̈́a̴̲͕̙͙͚̹̩̎͗̋͗̑͜ą̤n̩c͓͈͋̽̃̈̔ņ̵̵̯͉͓̭͓͙̯̻̰̀̏͑̓̑̈̐̌̎̂̕͘͘͝͝͝e͚̟̻̤o̧̖̺̰͓̭͓̫̮͂͌͌́̑̅̈͘̕͘͝͝͝ņ̧̹̩̗͕͎̯̋̑̾̂̄͐̀̈͌͘͜ͅK̼̤̄̐l̷̶̵̸̴̡̨̛͚̜̘̮̦͓̼͙̗̺͈̞͈̯̦̯͈̘͕͇̪̃̈̿̒̂̎̏̂̾̋͂̅̋̀̄̾͊̑̌͂͌͘̕͘͘͘͜͜͠͝͝͝t̶̛̲͗̃͘͝u̸̴̧̺̩̯̼̫͓͗͌́̋̌͑(Ljava/lang/Object;III)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->t̎K̛͉̖̔̚͜a̷̸̹̯̺͚̦̭̭̎̈͒̎̌̐͒̈́͘͜͝l̷̸̛̛̦̭̭̘͚͈̗̫̜͙̄̈̂̈́͌̎̄̐͊̄͌̚n̫̭̘̯̫̺̑̉̈́͋͒͊̃̿́̇̅͜͠ň̷̶̘͒o̸̸̸͕̘̘̫̩̲̱̗̗͉͗̂͒͒̏̃̒͒̈́͐̈́̈́̅̚͜͝͝͠n͕̑̐̈͝ǩ̴̡͙̦͎̺̺̫̌̅̏̈́͂P̵̷̨̛̭͓͚̺̗̻̮͉͙̘̪̖̘̅̄͗̎̋̄̈̈́́͑̈̈́͌͜͝ȯ̸̯̙̈́̒͠͝Ķ̵̶̸̴̶̷̧̧̢͉̤̫̘̯̻̹͉̯̥̫̫͎͈̺̦̘̦̘̥̫͕̜̂̌́̉̈̎̆̑̀̄̈́̿̅̏͋͌͊̋̾̈́̆̆̌̃͗̀̌̿̿̌̃̒̋̚͘͜͝͝a̧̧̛͐̑͌̄̾̊̿͜͝ȃḻ̵̶̈͋͝o̷̢͈̯̻̩̯͓̪̽͐̑͐͜p̸̸̲̝̻͈̅͊̈͘͘͝()I

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

.method public static getBuildDevInfo()Ljava/lang/String;
    .registers 53

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->t̸̴̸̷̨̹̥͈̱̮̜̗͈̦̤̻͓̖̩̜̠̋͌̋̐̃̃̋̋͗̂͂͋̈́͘k̸͕̪̑͘͝Ḵ̨̠̱̹̎̈̅̂e͚ą̗̖̃̾͜͜͜Ḵ̛̯̗̫̘̲̬͉͖̫́̎̚͝ņ̴̸̝̘̪͈̺̖̰̹̹̼͊̋̌̂̌̍͜͝P̷̷̴̷̸̶̨̢̢̧̨̛̘̪̥̱̻̰͎̺̘͓͚͉͎̫̺̫̯̫̫̮̥͈͙͇͇̮̯̺̜̗͓͈̼̙̯̘̥͌̈̇̋̑̔͋̋̐͋͊̂̆̐̈̿̉͋̆̊̆̿̋̌̃͗̂͊̓̋̍̂̏͌̓̌̀̅͊͒̍̑̋͑͘͘̚͘͜͜͜͜͝͝͝͝ͅů̸̠̭̬̦͕͙͎̅̅̋̀̌̅̍͜͜͝ͅPo̸̢͕̪͐̌̔͗͊̌͋͋B̸̧̡̠̤̪̗͉͓̭̮̀́̿̋̚͘͠͝͝͝a̴̧̛͈̹̫̟̘͎̱͙͗̈͊̅̆̈́̌͌̏̒͜͝͝͝n̫̮͈̺̂̎̂()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v15

    const v18, 0x1ac292

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->l̲p̷̵̴̛̤̜͉̗̼̰̙̻͐̌̉̈́̈́̓̎͋͑̓̀͘c̘̫̼͉̖͈͈̯̭̜̫̯͒̈́̉͌͑̾̀̏͋͜ç̸̧̛̫̬̬̖̾̔́̂͋͌͊͗̇ͅǨ̸̡̰̯̭̼̎̋͝͝p̩̫̀̂̕ȩ̢͓͓̫̫͎̻͚̏̑̑̈̌̈͗͒h̗̾̒Ķ̵̸͎͉̙̤̲̦͑̒̽̎͗͜a̦̭͉̍͜͝oo̱̰͌̂͋̂͝ḙ̶̢̛̭͎̯̦̺̲̱̩͙̺̪̰̩͚̟̭̘̄̀͌͗͐͑̏̾̉͌͆̂͊̅̄̂̀͜͝͝͝B̝̐̄̂a̛͗a̧̛͉̖̲͉̫̩̯͗̈̏̔̂͋̾̋̽̃̅͘̚͜͠͝e͂̌̌͌̋a͈̫̫͈͂͘͝c͗̋ľ̘̖̫͎͑̿B̷̛̛͙̠͕̭̪̭̱̯̭̋͌̔̂̎̔̅̑̑͗̄͑́͗͝ţ̧̛̠̖̲͚̼̭̮̗̼͈͖̰̎̑̌̿̒͗͒̃͋͊͘͘͜()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v14

    xor-int v18, v18, v14

    const v16, 0x1ab6e4

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->a̺͉̯̗͕̝͌͌͌̈́̈̌́͘̚l̢̛̮̥͗͑̅â̴̶̷̸̢͕͙͎͕͎̚͜Ḵ̷̨̛͎̲͎̿̈́̃̑̍̌͒͒̋͜͠e̢̤͓̫̭̤̪̭̹͉̺̰̾̓̈́̉͑̂͆̚͝Ǩ̸̼̃͊͗͋̿̈͜͝ač̢̱̈̌̂a̯B̢̯̘͓̺̭̩̂̃̋͋͌͊̿ţ̸̫̼̲̤̘̫̞̺̄̆͌̈́̋̋́̌̋͋̄͑͑̂͗͝ȩ̸̴̫̮̘͚̭̯̺̰̦̻̲͂̀̿̈̌̄̐̍͌̌͆ͅǒ̴̷̶̴̴̧̹̼͚̦̦̙̯̯͓̺͓͌̌͋̉̈̂̋͆̋͌̍̄̚͘͝͝͝ȁ̵̴̹̖͎̘̽̿́n̵̸̡̧̛̮̖͉͓̘̿͑͑̔͗̋̌͘ļ̸̶̢̢̧̛̹̘̩̠̺͉͕̭̗͕͓̯̠̰̰̮̙̫̫̘͑̾̌̂͗͌̋̂͆̈̋̏́͋̐̋̃̎̃̂̈́̇̌̌̈̑̚̚͘̚͘͜͜͝͠e()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v14

    xor-int v16, v16, v14

    const v17, 0x1ab733

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->l̵̸̷̢̠̫̖̗̩͈̻̻̻̰͎̥̫̻̮̫͎̂̽̾̅̂͋̂̂̈͌̅̐͘͜͠͝Ka͎͑̀͂̈͘P̧̧̢̭̯̥̠̠̤͖̤̾̈̄̈́͆͘͘͜͜͝e̸̸̷̸̘͖͕̺͚̱͈͕̩̗̭̿͋̌͌̈́̋̾͘̚͜͜͝ȁ̶̸̧̛̭̥̥̺̺̠͓̈́͗̋̏͘͝K͋a̷̴̸̷̧͈̜̯̥̺̺͎̭͂̃̋̈͐̏̚͘̚͜P̸̸̷̧̛̱̺̱̹̗͚̗͎̗͓͓̿̃̿̋̈͊͊͗̈̂̾͗͌̃̂̆͐͠͝ȩ̴̧̨̭̱̱̮̦̯̜̭̥͓̪̼͎͓͉̦̩̫̠̋͊̾̃̊͊̐̋̅́̄̃̄̋̋͗͆͌͌̈́͌͒̌̚̚͘͜ą̷̷̶̤̠̖̮̱̜̼̺̹̓̂́̍̾̓͒̈̈́̿̈̏͋̆͊̀͂̚͠K̸̶̸̸̛̛͕͓̖̱̰͙̥͈͉̃̿̑̏͌̏̔̈́͝a̯̅͒̑̋́͋èc̸̭̫()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v14

    xor-int v17, v17, v14

    invoke-static/range {v15 .. v18}, Lcom/kashi/settings/view/SpecsTextView;->P͝͝p̴̢̨̱̘̦̼̩͙͚̘͓͗̇̚͘ǎ̢̧̙͓̫̱̖̭̌̌̂̓̃̄͌͋̚l̮̖̰p̴̶̶̸̸̧̧̧̢̢̬̫̰̤͙̺͚̝̯͉̘̂̿̂̔͑̈̂͌̽̏̃̌̃̎̎̇̃̄͋͌͜͝͠ä̵̖͎͜͝n̢̲͕͉̂̓̋̈́̂̔̈̿̐k̤K̸̛͈͎̺̠̑̂͠ő̗̃̃ȏ͓͚́K̷̸̦͚̩̤̼̆̄̌̓͝t͎̗ą̶̸̸̧̢̧̫̱̺͈̥̗͕͓̘̫͉̺̱̮̎̋̌̆͗̈̂̀̎̌̈́͌͋͘͘͘͝͝͝͝tu̩ķ̷̢̢̭̟̠̗͎̟̪̝̥̲̭͈̹̙̫̘͈̺̯̹̫͈̦̫̐̀̿̌͐͌̅̾͌͋̒͊̅̌͗̈̂̂̂͗͗̄̀͑̕͘͜͠͠P̵̶̦̺̤̫̠̺̬̈̆͋͒͋͂͌͒̀̄͂̏͝ų̴̙̜͖̗̘̖̯̺̌̈́͌́͐̂́̎̈́͜͜͜͝͝͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v1, v15

    invoke-static {v0, v1}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->n͂̚h̝͓̺͉̗̀̋kc̸̫ä̘͓t̮͑̒͊̈̈́̄̋̃̚̚a̵̶̧̢̨̦̠̺͈̯͙̋̂͂̀̈́̿͑̿͐̋̈́̆̌̑͋͋̃̽̐̌͌͜͜͝͠u̥̺̻̮͎̿̅K̴̸̶̨̥̯̙͈̙̬̠̺̊̋̄̿̆̈́̂̂͌̚͝K̛̼̺̫̱͓͈̪̺̖͝ò̧̱̭̦̯̀̈́̐̈͘͝͠ã̵̸̸̲͈̲͙̈̐̃͑͗͋̏́͗̈́͋̑̚K̡͓̦̹̩̺̈́̒̒̋̋͗ē̸͓̫̯̲̗̘̩̮̬͎̞̥̱͓͚̑̋̎̇̌̀̚ͅņ̦̦̈̏ȩ̴̸̪͖͖̦̈͋͋̓̆̄̌̽̌lp͗͒h̦̗̃͗lK̵̫̹̥͈̹͓̤̫̱̯̰̰̋̈́̽͐̂̂̆̈́̃͑̿̃͑͜͠͝t̸̨̛̹͚͖͈̺̰̦̭̩̰̫̺̭͌̅̍̈̋͐̊͒̍́͗̔̅̅͊͂͘͘e̷̯̻̙̼͓͈̦͉̹̽̂̈́̀(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 53

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v12

    const v15, 0xed

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̸̛̼̖͓̩̱̞͈͓͕̔͗͌͌͌́̽̀͒̈̍͘͘͜͝͝u̸̷̴̩͙͐ĥ̷̶̷̸̴̛̛͙̦̭̤̲̱̺͚͚̲̭͙̘͙̫͖̥͙̪̯͚̫̫̺̻̭̯͑̈́̇̄͋̊̃̈̈́͂͗͐̉̈́͊͗̂̂̍̏̃̈́͑͊̀̑̌̕͘͜al̴̓͠ā̧͚̼͓͚̮̚͘͘ͅu̻̐̈̃o̶̺̭̹̞̮̥̲̭͒̿̈́͘ḵ̛̪̭͑̅̊K̶̸̴̭̮̠͎̭̘̗̦͖̑̋́͌́͋͘͝͠K̶̸̴̸̶̶̸̶̢͕̦͙̜̘͎̭͙̼̮̗͉̼̼̯͇̺̭̱̤̱͕͖̍̎͆̒̈́͌̈́̿̌̎̊̃̈́̂͊́̂́̚͘̕͜͝͝͠͠͝͝o͝ä̷̸̢̘̫̠̝̗̈͊͌̅̿̅ḁ̸̸̛̤̗͓͉̬̘̬͎͋̉̅͝͠K̷̸̷̶̴̘̻̭̲͚̉̑̋̿͋̌̾̔̈́̑͜c͉͉h͌̇͜t͈̞̄͌̋̕()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v11

    xor-int v15, v15, v11

    const v13, 0x1aa7a9

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ñ̶̨̘͓͚̃͆͆̌̌̑̋pp̴̧̱̬͕̻̹̘̦͙̙͉̘͕̗͌̎̈̋͗̿̋̈́̀̊̂͜͠p̷̢̭̲̫̯͇̑̈́͝ĺ̸̢̫̥͎͉̥͚̭̹̙̪̘͌̀̆̈̄͌̑̋̿͂͐̌̂k̸̵̨̻̗̗̱͕̫̫̺̈́̔́͑̾̑͒͘͘͜͜͠͠͝Bp̷̖̲ả̢̦̲̺̔͒̔͝a͆͝ề̗̥̯̖̮̫͎͈͓̗̺̮̺̮͊̈́̀͊̍̆̈́̃̂̚͜͝a͝t̹̾͒̿ȯ̫̦͈̫̻̯̯̑͜͝č̸̶̨̠̘̺͎̱͚̼̜͈̘̙̭̱̯̥̂͑̂̄̈̈̌͊͌̔̈̾̆̾͘͜͝ch̫̗̼͆̀̌̋̈͘ȟ̴̶͉̱̫͓̩̗̗̦͇͚͎̘̫̏̔͠ͅḴ̲̯͕̝͓̫͎͉̐̃̊̌̔̅̅̽̂̄͘͜͠ķ̸̴̈́͑ư̸̴͙̻͙̄̔ö̧͚́͗P̸̸̘͋̂͂̈́͗͜͝K̈()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v11

    xor-int v13, v13, v11

    const v14, 0x1ab280

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->B̫̱͇͗̈̐͜p̸̸̴̧̘̮͎̭͎̹͎̏͐͗̀͂̔̅̅̚̚͜h̷̵̗͚͚͌̑̏͋̋̿̏͗͜͝p̡̨̭͚͚̈́͗ȩ̸̸̨̧̨̛̫͕͎̗̝͎̯̭̪̲͈̯̪͈̈́̐̌́̃͗͗̏̔͌̔͐̑̋͒͋͘͜͜͝t̛̯̱̱̰̲̼̂̈̚ͅư̸̶̗̺͈̠̖̲̋̂́̃̄̋́̅͘͜͝aK̶̘͎̙̰̑̃̾̑̓̍̐͝ţ̢̭̤̗̺̱̈́̄̈́̾̾̎̌̚͜͝P̺̐̂̋͑͂͐͠p̵̸̶̩͕͉̯̄͑̈́̊͒̑̆͑̈̾͝ư̶͙̾̃̂̄͠͝ḵè̈́͘P̴a̺̔a̶̸̢̭̫̺͉̥̼̼̰͙̘͉͐̾͒̐̈͑̉̈́̀̀͗̅̿̚͝ͅh̀̑a̸̴̷̧̛͕̠̻̝͚̦̫̾̎̾̒̽̾̂͘͜k̴̨͓̯̯̜͈͇͚̩̋̋͑̀̃̑͐͝͝ͅǒ̧͕͂̊̚a̯͗͗()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v11

    xor-int v14, v14, v11

    invoke-static/range {v12 .. v15}, Lcom/kashi/settings/view/SpecsTextView;->P͝͝p̴̢̨̱̘̦̼̩͙͚̘͓͗̇̚͘ǎ̢̧̙͓̫̱̖̭̌̌̂̓̃̄͌͋̚l̮̖̰p̴̶̶̸̸̧̧̧̢̢̬̫̰̤͙̺͚̝̯͉̘̂̿̂̔͑̈̂͌̽̏̃̌̃̎̎̇̃̄͋͌͜͝͠ä̵̖͎͜͝n̢̲͕͉̂̓̋̈́̂̔̈̿̐k̤K̸̛͈͎̺̠̑̂͠ő̗̃̃ȏ͓͚́K̷̸̦͚̩̤̼̆̄̌̓͝t͎̗ą̶̸̸̧̢̧̫̱̺͈̥̗͕͓̘̫͉̺̱̮̎̋̌̆͗̈̂̀̎̌̈́͌͋͘͘͘͝͝͝͝tu̩ķ̷̢̢̭̟̠̗͎̟̪̝̥̲̭͈̹̙̫̘͈̺̯̹̫͈̦̫̐̀̿̌͐͌̅̾͌͋̒͊̅̌͗̈̂̂̂͗͗̄̀͑̕͘͜͠͠P̵̶̦̺̤̫̠̺̬̈̆͋͒͋͂͌͒̀̄͂̏͝ų̴̙̜͖̗̘̖̯̺̌̈́͌́͐̂́̎̈́͜͜͜͝͝͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, v12

    invoke-static {v0, v1}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->n͂̚h̝͓̺͉̗̀̋kc̸̫ä̘͓t̮͑̒͊̈̈́̄̋̃̚̚a̵̶̧̢̨̦̠̺͈̯͙̋̂͂̀̈́̿͑̿͐̋̈́̆̌̑͋͋̃̽̐̌͌͜͜͝͠u̥̺̻̮͎̿̅K̴̸̶̨̥̯̙͈̙̬̠̺̊̋̄̿̆̈́̂̂͌̚͝K̛̼̺̫̱͓͈̪̺̖͝ò̧̱̭̦̯̀̈́̐̈͘͝͠ã̵̸̸̲͈̲͙̈̐̃͑͗͋̏́͗̈́͋̑̚K̡͓̦̹̩̺̈́̒̒̋̋͗ē̸͓̫̯̲̗̘̩̮̬͎̞̥̱͓͚̑̋̎̇̌̀̚ͅņ̦̦̈̏ȩ̴̸̪͖͖̦̈͋͋̓̆̄̌̽̌lp͗͒h̦̗̃͗lK̵̫̹̥͈̹͓̤̫̱̯̰̰̋̈́̽͐̂̂̆̈́̃͑̿̃͑͜͠͝t̸̨̛̹͚͖͈̺̰̦̭̩̰̫̺̭͌̅̍̈̋͐̊͒̍́͗̔̅̅͊͂͘͘e̷̯̻̙̼͓͈̦͉̹̽̂̈́̀(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersionCode()Ljava/lang/String;
    .registers 54

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->l̴̜̯̼̑̑͑͌̂̄ͅơ̭̖̋ȍ̶̶̸̷̸̧̫͉̠̙͙̘̰͕̌̈̋͌̾̄̂͌̈͂͂̂̅̋͜͠͠n̸̢̛̫̦͙̯͚͈̩͈̯̼͑͗͌̌̈̚̚͝͝͝n̺̗̎͌̌̈h̛̎̄̂̃̾̽͌K̮̝̅u̵̸̴̶̸̧͈̰̺̫̫͂͌̅̋̌͗̍̈̎̈́̌̚͘͘̚͜͜͝k̶̛̥̫͉͉̹̋͋͆̎͑̿̍̈̌̐n̸̦͕͕͚̐̐͜la͎͕̫͉͕̻l̶̩͖̫̖̽̏̅͝͝k̵̸̶̛̗̠͚͚̫̱̩̥̮̘̦̺̤̩̓̾͆̌̋̂̂̈͑̌̇͗̔͑̿͑͘͜͜͜͝ͅa̋̅n̺̋̓̄͘h̸̴̛̫̺̬̻̮̺͒͗̋̅͋͋̍̀͑̋͠p̷̸̧̢̭͈͓̫̺̥̥̹̖̿̾̇̂̈́͝n̩h̷̷̯͉̃͌̈́͌à̸̶̭͚͈̤͗̂͑̚͝͝P̧̢͉̯̯͓̯̂̈̊͂̆͝()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->a̋ơ͑ả̺͊͝k̵̸̸̹̠͂̌͜u͇̥͊k̼̏äǘ̷̧̢̢̗̠͙͖̹͕̲̦̰͓̙̯͕͓͗̈́̌̋̋̈͌͂͗̆̂̌͘̚͝ţ̷̶̛͚̠̮̫̰͓̂̆̂̐̂̈́̋̌̑̌̌̅͗͜͠ľ̸̸̸̢̲̯̮̭̝̘̦̟̭̤̮̪͊̈̀̃̾͠͝e̛̘͌̑̾̑à̷̴̸̢͙̮̹͕͎̬̦̥̥̱͓̗̫̬͚̝͉͋̉͌͂̂̾̾͗̋̈́̾͘͜͜͝͝a̸̭͓̾͝l͕̙̋ń̵̸̢̧̩̥͙̭͉̈̒̾̂e̸̸̿̽͌͋̑̎ỏ̷͓̥̫̯̫͖̯͕͎̍̃̈̑̎̾̓̎̂͋̍͠a̸̸̴̴̸̸̸̧̧̧͕̥̯̥͎̗̥͎̯͓̲̥̜̘̠͈̪̋̏̿͑͗̍̋̋̂͜͝͝ť̸̨̖̻̺̥͈͈͘h̛̺͉͕̦̻̻͚͕̘̱̋͌̈́̆̊̈͑͋͂̋͗̓́͘͜͝P̏()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->n͂̚h̝͓̺͉̗̀̋kc̸̫ä̘͓t̮͑̒͊̈̈́̄̋̃̚̚a̵̶̧̢̨̦̠̺͈̯͙̋̂͂̀̈́̿͑̿͐̋̈́̆̌̑͋͋̃̽̐̌͌͜͜͝͠u̥̺̻̮͎̿̅K̴̸̶̨̥̯̙͈̙̬̠̺̊̋̄̿̆̈́̂̂͌̚͝K̛̼̺̫̱͓͈̪̺̖͝ò̧̱̭̦̯̀̈́̐̈͘͝͠ã̵̸̸̲͈̲͙̈̐̃͑͗͋̏́͗̈́͋̑̚K̡͓̦̹̩̺̈́̒̒̋̋͗ē̸͓̫̯̲̗̘̩̮̬͎̞̥̱͓͚̑̋̎̇̌̀̚ͅņ̦̦̈̏ȩ̴̸̪͖͖̦̈͋͋̓̆̄̌̽̌lp͗͒h̦̗̃͗lK̵̫̹̥͈̹͓̤̫̱̯̰̰̋̈́̽͐̂̂̆̈́̃͑̿̃͑͜͠͝t̸̨̛̹͚͖͈̺̰̦̭̩̰̫̺̭͌̅̍̈̋͐̊͒̍́͗̔̅̅͊͂͘͘e̷̯̻̙̼͓͈̦͉̹̽̂̈́̀(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ķ̸͎̬̫̺̑͗u̶̸̘̦̪̥̦̦̎̋̈̈̂̂̈́́͑̈́͝l̸̷̸̢̧̛̗͓̝̺̦̭̗͎͓̹̋͑͋͌͗͂̌̏̏̈́̃̆̚͝ȁ̵̸̵̶̷̢̱̼̖̝̘͈̃̄̌̉̌͂̔̑̃͜͝͠c̸̷͙̤͉̰̘̙̥̘̿̌̀̋̿͆͊̒͜c̫̗̫̫͎̗̰̫͑̌̚͜ô̷̴o̴̘̫̗̱̹͎͑́͜͜͠ô̧̰͓̮̰͚̥͋̋̌̆͜͜P̱̫̺̅̔͂͗ţ̸͇͎͎͂̂̍̐̚â̰͓͗͝ṯ̻̠̱̰̼̭̫͈̟͓̎̈́̍̅͌͜͝ṗ̡͚͈̤̥̤̱͐̾͊̑͊̎͝ņ̴̶̧̛̛͕̫̙͚̯̙͚̪̩̜͚̥̻̮̭͕̗̤̰̭͓̺̼̘͉͐̅̌̅͌̍̋̄̈́͌͐̾̋͌̑͌̕͝͝B̶̢̥͈̦̺̔̃ú̺͚̼̅̚k͓̤͙̂͋̃̋t͚͑o̷̷̻̗͌́̿̏̂̈́(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v14

    const v17, 0x1abaad

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->n̵̵͚͚̮̬̺̫̥͓̖̫̿̌̋̈́͑͋̅̋͆̈̀͋̋̊̅̇͝͝͝ǒ̢̠̬̖̥̖͝͝͝à̸̴̧̰͚̭̹̙͎͕͚͉̫̞̯̐̈͌̂͐͂͗̈́̂͝͝͝ṱ̷̵̸̵̫͚̞̫̲͋̋̋̑͋̚o̩̖̭͈̾̿̈ȃ̸̧̨̛̛͌́͋̀a̴o̙͎̭͚͒̅͌̑̒̋a̧̘͉͙̭̥̋̈͌͐͌̚͝͝k̗t̷̸̛̺̭̺̘͎̑̂̍̋̈̂̌͗̕ȩ̶̸̷̷̶̸̷̨͎̥̗̩̭̘̮̱̗̹̯͖͉̌͋̄̑̎͒̍̈̂͂̈́̈́̋̄͌͋͂̇̂͘͘̚͠͝͠a̸̰̹̅̎̊͜͠͠ȩ̸̶̧̛̛̹̜͙͈̻͉̩͈̺̥̭̮͕̈́̀͌̈́̀͆̆͑͊ã̶̸̷̧͙͚̯̩̺̺̩̙̈́͗̈́̋̾̌̍̌̚͜͝t̷̗̫̠̩̱̯͙̥͚̻͐͑̒́͐̈͘̚͜͜͝K̛̛͉̠̂̿̂()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v13

    xor-int v17, v17, v13

    const v15, 0x1aba11

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ň̸̵̟̖͎́̂P̺̗̈͊̔̔͗͗̕͜ḁ̫̈̌̆̌̌͒͝p̢̧̧̰͓̗̄̂́̎̋̌̾͜a̶̛̛̛͉͓̥͚̥̠͈̦̪͎̅̽̋̈̈͐̿͜͜͜͝t̛̩͈̺̅̈́͝ͅa̶̹͎͎̺̜͉͌̈̌̿͜͝͝h̺͈͕͑͂͝͝K̸̜̭̙̆͝ļ̶̴̡̦͓͎͙̈́̅̅̾͠Bp̵̶̤̭̲̘̫͈̎̒̍͌̅̋̒̎̕̚͝ö̴̧̫͎̠̺̾͐̈͋͜͝ą̮̫̱͚̤͌͊̑̌̏͘͜o̴̸̴̵̶̧̫͉̫͎͈̖̜̖̿̑͗̎̓̈́̍̿͝͝͝͠P̾eo̷̫͚̺̠̮̮̗̰̫̾͆͆̄̏̆̔̍̎̃́̎͘͝B̸̸̶̢͎̹̫̗͚͕͈͓̲̿̋͌͌̌̀̑̃͌͜͝e̷̲̦̗t̼̯͎͓̓͋̌̋̎Bà̋K̗͘pä̡̫̩ȃ̵͈̯̞̫̙̤̃̋̄̅̈́͌̿͜͜͝()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v13

    xor-int v15, v15, v13

    const v16, 0x1ac5a1

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ã̴̤̯̮̹͗̈͘t̸̯͎̱̭̥̥̋̋̋̂͋̎̈̅̎̍ţ̵̧̛͕̥̟̦̼͉͕͓̺̈́̄̎͗͠c̴̖̩̽̅ą̸̢̫̲̫̖̞͉̈̄̾̈́̊̌͋̔́̑̋͌͜͝͝a͈̭̼̹͂̂͝Kā̵̫̮̙͐͑̀͊͋̕͜P̵̸̢̛̻̫̫̭̗͖͈̺̻̲̠̩̲̖̙̹͒̌̂͆̔͑͆̃̑̀̎̌̆̕͘͘͜͜͝͝Pľ̸̶̷̫͕̥͈̺͙̝͈͚̘̅̀͜͝p̶̵̶̥͌̋̽̎͒̈͜͝p̑k̑̀͌h̴̵̸̷̢̡̛̛̰̬̫̗̼͕̪͎̰͙̃̂̃̑̿͌̌̇̑̋̋͌͋͘̕͘͝͝͝aä̧͓̜̙͎́̇̈̌̚c̶̡̢̤̮̮͗̓̋̈͝á̚ȁ̧̧̗̔͗͆͐̐̎̋̈́̿̌͊͜͜ḩ̢̩̥̺̖͕͓̆͂͗̅͐͂̊͘̚͠͝l̵̶̻̂͜͝ļ͌͗a̧̛̦̗͝()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v13

    xor-int v16, v16, v13

    invoke-static/range {v14 .. v17}, Lcom/kashi/settings/view/SpecsTextView;->ȩ̥̘͉̙͎̯͈͖̲͕̚͘͜͝k̛̮̙̫͓̈̇͑̈́̋͋̑͊͘c̘͎̯͎͎̬̮̈̇͆̄̎B̝͓͓͓͈̫̎̀̅̎͌̌̐̂͗̃͘ō̴̸̴̧̠̥̭̘̪̥̗̿̊â̸̶̸̧̩̻̰̥̫̈̆͌ͅkB̵̛̭̮͑͂̎̌̈́a̴̲͕̙͙͚̹̩̎͗̋͗̑͜ą̤n̩c͓͈͋̽̃̈̔ņ̵̵̯͉͓̭͓͙̯̻̰̀̏͑̓̑̈̐̌̎̂̕͘͘͝͝͝e͚̟̻̤o̧̖̺̰͓̭͓̫̮͂͌͌́̑̅̈͘̕͘͝͝͝ņ̧̹̩̗͕͎̯̋̑̾̂̄͐̀̈͌͘͜ͅK̼̤̄̐l̷̶̵̸̴̡̨̛͚̜̘̮̦͓̼͙̗̺͈̞͈̯̦̯͈̘͕͇̪̃̈̿̒̂̎̏̂̾̋͂̅̋̀̄̾͊̑̌͂͌͘̕͘͘͘͜͜͠͝͝͝t̶̛̲͗̃͘͝u̸̴̧̺̩̯̼̫͓͗͌́̋̌͑(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, v14

    invoke-static {v0, v1}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ķ̴̷̶̸̸̷̷̧̨̛͚̯̰͉̹͚͚̺̭̹̫͚͕͚̂̈́̏̂̈̋͌̿̋̈̍̿̐̈́͑̋̈̊̂̌̌̃̔̚̚͝͝͝ņ͙̅͝l͠ǎ͚͓͖̗̑͘͝B̛̀̀͠ā̵̶̧̧͎̰͈̖̺̗̩͓̈́̀͒̋̅̅͜͜n̸̵̶̤̠̫͚̹̿̆͋̀͂̀͜ṕ͑͑̈ȩ̷̵̴̶̫̥͎̥͖̂͐̐͐̑͑̎̄̚͝͝ṉ̶̻̪̖̰̋̋͑̌͌̈̀̈́̾K̢̰̱̯̀̔̎̅͗̃͗̈́̆̃̈̂͜K̢̫͓͉̼͉͈͂̂̌̅̎̆͘͝P̸̱͚̮̔̀̍͋̌̌̌͌̈̿ţ̸̫̻̺̙̟̌͑̃̾̈͜P̛͇͕̰̼̯̯͉̂̏ḵ̛͇̫̯̺̆̿̂͆P̷͙͈͓̫̟̭̫̋̈̅͑̉̃̆̌͒͘̕a̪̻͋͠ų̸̴̸͖̰̺͇̲̪͓̯̺͚̗̙̮̄͌̒̆̄͋͊̈́͌̋̀̐́͜͝͝(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-static {v0}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̞P̦͉̱̈͋̚͝K̷̴̷̛̮̻͉̠̗̫̹̹͕͎͕̱͚̬͎͕͈̎̾͐̂̈́̎̂̎̋̋́̈̃̄́̍̏̋͘͘͜͜͝͠͝a̯̋P̷͕̮̺̹̎K̛̺̦͈̭̘͌̾̾͝o̥̝͋̄̿͗͋e̱̗c̸̶̘͘̚͜͜a͎͜͝B͌̍e͎̫͌͂͋̂c̶̸̥͎̮̱̠͎̯̹͙͙̹̃́̆͂́̊̔͌́͑͝K̘͚̩̺̫̃̀͠ͅư̴̷̱̗͓̗̗̹̱̫̋̿̈̉̿̿̑̃͘͝͝ḁ̶̡̖͕̫̖̗̰̫͉̗͎͕̋͗̎̂̐͌̈͐̚͝͝ą̵̶̷̷̸̸̷̛̛̥̹͕͎͕̱͖͓̇̐̅̆̃̅̒̊̐̋͋̇͌̂̑͗̚͘̚͜͝Kt̶̨̧̛̙̥̗̭̾̕͘P̷͉̭̙̖̻͚̆͆̋͜a̷̛͎̫̮̗̮̭̻͌̄̌p̨ä̶̷̸̸͎̫̫̠͕͈̫͈̲̹́̈̊̋̌̈́̏̈́͑͆(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_54

    invoke-static {v0, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ç̸̴̸̶͉͚̮̝͎̭̮͎̰̫̌̆͊̔̃̈̎̾͌̅͜͝͝͠P̶̗͙̌͝ç̸̧̧̛̺̖̥̲̗̹̹͋͆͘͜͝͠l̦̱̤̈́̀̈́͜͜͜͝ǔ̸̌̎̉̿c͇̭̍̂p̸̴͕̥̫̺̼̫̗̯̰̱̫̀͋̋̄̂̑̊̂͑̕͜p̰̭̋͜l̶̶̴̶̛̼̖̩̞͎̥̰̪͉̲̭̄̈́̈̿̃̈́̎̄̍͊̆͂͋͝K̷̘͕͓̦̹̱̹͎͌̐̍̋͊̈̑͝B̶̸͚̭͈̑̎́̆͑̏͂́̂͗p͑̐̃P̧̫̯̦̩̯̩͎͉̊̋͂̏͂̀̃͜͠ͅû̴̴̵̫̫͖͓͌̄̎͒͘P̧̛̛̹̥͇͎̗̰̻̫̂̎̾̋̈͜͝͝Ḵ̶̢̢̛̼͕̺̇̃̄̽̌͗̄̏̐͗̌͝t̲h̶̴̵̶̶̢͚̮̭̻̲͙͚̦̫̠̟̰͈̹̐̄͌̏̄̿̉̃͗̿̎͗̒͝͝á̧̺̈̂͗̌͜͝(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    :cond_54
    return-object v0
.end method

.method public static p̴̴ȩ͚̭̯̲̎̾̑͝͠t͊̌̾ḣ̷̞̫̥̈́̐̌̋͐̍a̶̧̢̛͈̜̺̘̮͚̺͎͎͈̦͌̈́͆̂͗̋͒͐̔͋͑͠͠͠k̷̺͎͑̈͂̓ớ̷̧͖͓̺̠̥̭̹͈̙̌̏͗̉̿͌̑̏͌̍̕̚͝͝o̵̘̮̤͎͓̩̼̲̊̄͗̀̋Ķ̷̢̧̧̖̜̗̪͉̮̤̦̹̹̦̱̫͖͉̰͈̙̓̌͗̃̈́͗̉̅̏̈̂̄͆̈̅͊̂̈͌̃̔͐̚͘͜͝K̃ã̸̸̧̢̧̱͙͈̬̫̪̥̥͚̺̏͊̌̋̾̾̃̓͗̋͂͂͂̚͘͜͠t͎̗̽n̷̡̛̰͖̭͉̮̱̱͗͂̂̐̌͘͝K̸̸̷̷̷̸̶̢̛̛̛̗̥̩̭̗͓͎̫̘̗̜̗̊́̂͊͌̽͐̌͗̇͑̌͘͝͝͝ͅB̥ẽ̶̢̛͓̫̘̤̼̱̱̺̦͎̐̂̍̓͋͒̈́͗͗͝Ķ̵̸̲͎͎̙͋̅̾a̧(Ljava/lang/Object;III)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ḻ͚̦̾c̯̯̗͌̀̅̈͘͝͝͝na̵̴̱̺͕͗̕ť̸̸̵̨̢̛͕͕̙̪̘̫̯͈͚̰̺̅̋̾͘P̷̢̭̈ů̷̴̶̺͉̫̹̩̘̻̅̌͋̋̔͑̔̊̋̾̒̽͌̕ͅa̸̱̦̙̍̌̎͘u̢̾c͎͈̆̀͌K̸̨̫̱̘̍͌͐ư̸̸̲̭̹̘̽̎̈̾̚ù̵̴͓̿̋̋͋ớ̷̢̧̛̛̫̝̫̭̟̯̩̫͎̞̩̫͙͈̈͋̒̆̅͗̂̈́̈͋͋͋̎̕͘͜͜͜ȩ̸͇̥̦̹͋̃̈́̋̋̓̄̚͘͝oe̫̫̍́͑̃͝͠ę͉̅ä̙ȃ̴̷̲̋̈͋ǔ̸̸̸̫̥͓͈͗͌͝ͅP̵̺̩̯̬̌ḧ̷̡̛̩̭͓͎̱̺̲̺̹̋͒̋̃̍̑̈́̆̚̕̚a̱̯͓̯͑̑̋́́͆͌̚͜p̶͓̈́a̫͓͐͜ų̸̰̮̮̏̍̃̑͌͊͗̿͂͐͋͂͝p()I

    move-result v0

    if-gtz v0, :cond_d

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->P̷̴̷̷̸̸̢̧̧̡͉̮̯͚͓͚̠̹̗̟̏͌̾͂̃̌̾͂̊̎̏̎͂͌̑̈̋͘͜͝͠͝ͅt̗ḁ̺̐̋̾̅̅̈́͘͜͜a̦o̗̗͘͝͝ḽ̢̫̙̮̫̫̠̲͓̍̋͊́̈̅̃͌͘p̸̷̷̷̧͚̲̭̠̦͎̹̫̅̍̈̂̃̅̌̋̂̌͘͜͝͠ȏ̦̹̎͜͠kl̴͌̀̌̊͊̚͝o̧̤̗̎̌ä̷͎̠̗̜̫́̋̏̂ė̫̲̘̚͝͝k̯̭̫̫̮̀̐̋̈́͝l̷̈́h̴̢̧̋̋̕͝K̴̸̸̷̵̸̶̸̢̢͓͉̼̪͈̫̬̤̗̬͉͕͖̪̼̗̻̱̦̪̜͈̹̫͌͌̎͒͗͌̂̄͑̿̈́͐̎͒́͗̎̇̐̅̈́̐̂̋̈́̿͗͆͗̅͋̋̑̕͘͘͜͠͠͝͠͝͝͝͝ͅa̡̗̬̥̺̠͌̈̎̈̄͘͘͝͝ą̸̸̧͚̪̜̱͚͉̫͓̀̾̀̑͌̂͌̃̽͝͠͝([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static t̴̢̛̛̲̤̰̖͉̂̔̾̋͋̋̆͑͘c̨̜͑la̶̷̦͎͋̌̿k̟̪͙͒̆̅̄̑͠͝h̵͚͊̀͑̍͝a̲̭o̶͉̩͎͜P̷͂̑͜l͉̭h̸̸̶̷̸̸̶̸̵̨̢̛̫̦̜̖̫̤̗̹͚̹̞̲̯̯͚͎̠͚̯̰͎͈͚̭̘̩̻̻͇̯̥͚̖̗̯̝̜̱̺̘̯̖̑̓͗̎̎̃̍̇̈́̋̀̃̏̉̑̈͂̃̃̂͑̋̎̒̌͆̈́̏̍̈̂̆̑́́͌̌́̿̏̈̈̈́͋̎̈́̏̉̈̂̀̈́̀͑̔̃̈́̏͌͜͜͜͜͜͝͝͠͝aţ̸͕̭̫̫͚̬̃̿̽̑u̺͚͖͋̂̑̋o̷̍͐͗͋ť̴̷̸̰̻̬̺̫̜͇̺͌̚͠ķ̧̧̫̟̭̤͈̺͇̺͚̈́̀̌̃̍̓̎̑͌̋̅͂̌͘̕K̛̿̂̿ae̵͎͕̎̍͋B͓̭̮̊͗͒͝u̘̭k̫̼P̶̢̗̮̜̆̈́̈́͝(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()I

    move-result v0

    if-gez v0, :cond_b

    check-cast p0, Lcom/kashi/settings/view/SpecsTextView;

    iget-boolean v1, p0, Lcom/kashi/settings/view/SpecsTextView;->mAttached:Z

    :goto_a
    return v1

    :cond_b
    const v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final init()V
    .registers 55

    move-object/from16 v3, p0

    invoke-static {v3}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->á̸̧̫̗͎̞͑ţ̸̠̑́̌͗p̮̹̯͗h̛ç̸̸̷̹̜̹̦̩̻̗̙̿̽̑̒̄̌̌̃̈́̅͆̾̀̏̚͜͜͝͝ą̵̶̧̫̩̫̯̻̥͉͓̺̱̊̋̋̾͘͘͜͝B̪̅͌̈k͒̈́̃Ķ̸̡̧̛̘̼̮͖̭̞͎̅̉̎͋̋̂̏̌͐͋̋͜͝͝ͅḆ͋͌̋͝cc̴̸̴̴̡͖͈̫͉̜͓͇̯̠̹̮̤̝͓̹̠̈́̃̾̑͗͋̏̈̈́͋̽̂̕͘͜͝ȩ̌e̸̴̸̛̛̱̙̹̯̠̻̩̪̭̔̑̐̌̔͌͗̀̾̂͘͜͝P̶̯̂̈́̐̂͋tt̴̸̸̴̥̙̤̋̍̋a̶̷̛̩͓̩̿̀a̵͚͕̲̯͂̈́̎̏͋̅̂͜ą̵̸̵̸̧̛̫͚̼̦̥̭̪̫͚͕͙̟̫̱͓̤͙͉͓͉̯̃́̂͋̋͌̾͌̍͒͑̀̅̌̃͋͗̌̃͘̕͜͜͜͜K̭̺̯͐̃̊̃̆̚(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/kashi/settings/view/SpecsTextView;->B̶̧̨̧̗͈̥̺̒̔̈͘͝l̷̤̻̙̞͚̦̃̽̔̋̂̈͜͜͝͠o̢B̢̢̹̬̺͕̱̌͋̏́͠eļ̸̧̟͈̯̗̥̺̾̅̋͐͋̇͗͋͐̚͝͠ȟ̸̷̴̷̡͙͎̯̦͕̭̯̩͕̿̃̈͜ǫ̶̸̶̧͚̺̫̲͈̫̹̭̮̯̙̼͓̌̔̅̌̔̑̎͊̌̈̋͊͆̑͒̆̎̍̄͌͑͗͘̕͠͠ě̶̢̢̗͉̰̦̤̐͋̍͂͌̌̌͑͘͠͝a̰͈̲̹͉͐̈́̔́̅̾̂͝ͅK̷̷̵̴̨̢͎͚͎͕͖͇̺̗̜͎̼͙̘̜̫͖̫̀͌̏̈́̋̈͆͆͂̑̉̌͂̈͗̐͗̈͊̌͑̃͑̎͘̚͘͜͜͝e͎̤̫͌̃̌͐͜ȩ̴̴̧͚̭̭̫͚͕̫̼͈͇̐̌̈̓̄̅̾͑͆̏͋̅͂̽͘͝͝͠͝K̻̰̯̺͕̖̯͋̃͑͌̏̐̾̌̋͌̋͘͜͠͝k̾B̭̀̂P̙̌(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->o̸̶̢̧̡̞̖̘̫̗̩̹̺̫͇͎̺̗͕̼̘͗͌̌̎̈́͑̈̋́́͜͠͝ͅͅë̶̸̢̫̠̦̫́̎̎̎̾̉͂̃͜B̶̸̸͕͎͎͓͉͉̅̿̌̂͒̃ha̶̛̰͓̮̦͈͂́͊͊̑͘B̶̧̫̭͋͌̈͂̊ą̡̢͎͉̫͎͇̹̽̃̈́̌͒́́̂̄̎̈̉͘ǫ̶̷̵͇̲̱̲̭̫̦̈̂̐͐̽͒̏̅̀̆͘̚͜͠͝K̸̨̧̨̤͓̯̫̫̮̱̯̱̻͉͎̫̃̈́̋̂̂̍͊̇̌̄͌̂̄͑͋̚͜͜͜͝͝ȧ̶̵̢͉̗͕̹̈͑̐̈́̈́̌͝l͉̜̥K̶͎͕̹̥͉̥̂̾̈́̌͜͜͜͝ac̡͕͉̈́̑̍̀͝͝o̸̷̢͚̟̹͉͉̮̺̦̬̩̹̺͌̏̑̂̇̐͌̓̐͊̚͝c̸̵̢̧͖͈̞̭̲͉̈̋̈͐̌̅̌͊̕K̈Ķ̶̭̰̌̐͘n̻̭̥͊́̂̾͑(Ljava/lang/Object;)I

    move-result v0

    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v11

    const v14, 0x1ab7e7

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->pǫ̮͚͝ǹ̸̴̨͇̮̗̞̃̐̐̌̋̾́̌̚͠͝͝ͅu̷̸̎̿͂͘̚͝a̮̞̿͗ë̘̦́͋ṋ͕͎͌̇̔̋͐͜͝t͎̀̈a̸̶̶̧̧̧͚̰̬̥͉̻͑́̈̌͗̐̋̑̋̈́͑̑̚͠͠͠ư̶̸̷̸̸̸̧̧̢̪̘̪͉̯͓̥̗̟͓̗̻̪̗͎̺͈͉͕͇͉͈̦̱̗̹̠̻͋͑̈́̈̑̋̈̾̂̏̋͋̄̃̑̃̊̈͘͘͜͝a̱̼̪͐̿̾͌͜o͈Ķ̸̗̯̝̗̞̻͉̫͚̤̹̄̂̈́̋̈́̅̾̋͘̚͜͜͝c̒h̪̾l̯̼a̧̙o͚͗̍ç̶̸̶̵̧̧̧̨̧̹̪̗̟̼̮̙̫̫̜̰͖͈͈͕̬̺̝̫̈̇͆͌̄͐̑͌͗̍̿̈́́̀̌̊͊̐̈́̅̈́̈́̂̂̂̌̈́͑̎̀͜͜͜͜͠ķ̵̸̸̷̥͚̯̠̫̤̬̗̭͎̭͕̂̈́̋̇̎́̄͋̈̍͘͜()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v10

    xor-int v14, v14, v10

    const v12, 0xdc47

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->a̴̢͎̩͚̗̥̥̅̈̔̋̆͋͋͘͘͜͝͝é̺̱͚̹͂̔͌ą̴̴̷̥̪̖͈̤̺̞͎͖̹̖͙̮͉͕͉͉̰͚̥͙̋́̃̈̐̂͋͌̒̎͌͌̀͌̂̿̈͆̅͂̉̂̅̍͘͘͝͝B̸̫̫̯̦̫̭͕͎̯͌͋̑̚a̴̶̷̪͓̭̠͉̰̔̾̃͗͝͝ȩ̷̶̷̷̷̶̴̸̧̢̨̢̡̢̥̫̙̺̘͈̻̫̹̯̠̫̬̩͖̪͈͈̫͙̥̬͙͈͈̗̰̠̙̪͈̦͈̯̯̹̦͕̠̹̺̦̙̦̼̫̫̱͉̹̗͕͉̥̫͂̍̋͗͌̃̐̃́̌͌̋͌̄̄͗̋̅̈̈̎͗͗͑̈́̃͋͐̍̑̑̏̆͋̐͗̃̄͂͌̑̚͜͜͠͝͠ͅö͈̭̙̺̼̯̥̭̐̽̇̄̓̆̈́̔̄̿͑͝͠P̘̥͚͋͗͌͐l̴̶̛͖̼͕̫̑̋̇͌̌B̶̦͕͗͋ą̸̹̉ͅB̤̩̒͜B̫̈́̅()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v10

    xor-int v12, v12, v10

    const v13, 0x1aa807    # 2.448E-39f

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ǔ̑K̸̶̵̴̵̶̷̡̨̧̭͈̤̮̻̲͓̪͉̱̗̙̠̺͎̦̬̦̗̲̮̭̫͉̫̺̫͚̯̺̍̈́̂͐͊̿͑͑̃̔̎̋̈̿͌̈́̾̈́̋̈̈́̌͗̾̌͗͋̚͜͝͝K̶̛̥̰̯͈͙̤̻͉̙̗̱̝̼͖̫̻̘̲̲͓̥͒̈̾̏̑̾̉̿́̂͊̾͐̆̌̅̊̔̃̓̌͋̃͘͘͜͜B̧̘̈͑̊ẗ́͌͂͜B̷̸̸̶̶̸̷̨̧̛̛̙̗͕̯̘̜̘͇͉͚̜̮̭͇̟̭̺̖̖̒̋͌̓̄͗̂̆̈̄́̑͗̋͘͘͠͝͝ư̵̛̦̰͌̌̔́̌̓͗͐̽͝B̷̸̨̛̛̦̗̞͈̃̉̎̂̂͌͌̂̚͝P̷̤͓̪̭͈̮̭͊̔̎̌̾͆̈̋̿K̩̎͗̔͠u͌̂Ko͕̹̫̘̭͈͊o̵̢̯͗̂̌̔̌͝͝P͖̙̏̈́͝K̵̸̵̨̛͎̗̲̖̭̺̺͕̻̦̈́̏̈́̋͂̅͋͘()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v10

    xor-int v13, v13, v10

    invoke-static/range {v11 .. v14}, Lcom/kashi/settings/view/SpecsTextView;->a̷̧̛̫͓̫̲̪̯̤͈̖͚͉̼͖̖̎͆̃́̈́̃͒͌̍̃̂̋̔̌͋͜͜͜͝͝͠͝a̧̼͐̓ä͉̍ǘ̷̸̶̦̚Kã̷̈o̶t̸̷̸̢̤̺͖̗̗̅̋̒̅͑̀̄̿̅̚͘͜e͚̤͌̾a̴̷͚̩̲̗̥͗͑̋̈̂͋̍̚͜͜͠͠k̶̬̲͈t̷̸̢̨̲͗̈̈͘ç̵̨̧̺͎͕̥̫̱̭͗̇̀̈̃̾͒̀͊̎̄̐̋͝c̴͎p̸̸̸̨̛͎͈̻̭̱̺̎̔̔̐̈̌̈̄̑̽̌̿̎͜͜͝ö̶͋t͒B̸̡̛̼̦̥̰͚̂̂̈́̈́̂͊͒͠k̸̴̶̴̨̢̛̭̥̱͎̹̻̙͎͓̫̹͕͚̦̻̫̈̎̇̃͌̎͂̓̾̿͊̐́́͗̂̾̚̚͜͝͝͝͝͝a̺̓͌̚e̸͓̥̥a̶̲̋̈̋̽͠p̛͚̗̞͚̔̋͗̏̔̎̑̚͘͘ǎ̢͕̘͉P̧̭͉͈͋(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, v11

    invoke-static {v1, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->c̷̸̶̯̪͗͋̅à̷̶̵̷̴̢̢̼̥̻̻͖͈͎̩̼̹̈́̍̓̌̑̾̈́̋͜͝͝͝ă̷̸̢̛͙͖̜̎͑̽Ķ̘̗̬̺̈̃͒̌͒̏̚͜ǎ̧̛̯̘̩̾̈Bó̶̶̷̻̯̜̜͕̾̀͐̃́̚l̵̢̛̖̫̖͎̮̩͚̘̫͉̀͋̎͋̎͝n̷̸̶͉͕̗̺͙̰̥̜͌͂̾̈͌̈̑͘ả̵̡̠̲̜̦̠̖̌͗P̵͕̘͕̫̬̗͎̌̿̌̃̋͗̚͘͜͜͠͝ơ̷̢̧̛͎͚̗̻̮̱̲̖̎̋͂̈́͗̎͊̌̋́̍͗͗̃̈́̂̈̕͜͝ae̦̹̎u͉̘̱͆͜h̸̸̢̝̙̃̃̋ǒ̶̸̧̫̲̩̲̫̗̰̫̹̖̠̫̥́̇͐̂͌͋͊͌͐̿̏̚̚͠͝͝B̶̧̛̥͎͖̠̥͈̯͓̲̩̤͕͕̘̖͈̜̰͌̈̂͗̃͗͑̈́̀͗̌̄̂̽̉͑͘͘͜͜͜͝͝n̯(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_4c

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ȏ͒̾̔͜͜͝ļ̶̴̧̧̧̫͉̤͉̫̪͂̃̈͌̐͌͑̄͆͗̋͐̇͌͋͘n̫̹͓̤̦̭̬̥͚̫̗̫͌̋̈́́̃̍̍ẗ̶͎́̌̋͝K͂̒ą̻̮̻̤̦͊̄̒̑̈́̂̏̃a͘aỏ̭̏p̷̴̸̶̨̡̧̛͙͙͈̦̠͂̈̈́͋̿́̿̂̒̾͜͜͜͝͝p̂̚a̛̪̎̈B̸̵̷̴̧̧̛͓͙̲̫͈͓͎̖̞̟̯̯̙̗̰̦͎̀́̆͗͂̏͊̐̌̄̽͑̃̽̽̀͋̿͌͊͒̌͂̚͘͜ͅĺ̹k̸͎̖̥͚̰̽n̸͉̮̭̭̻͚͂̈͐̌̅̋̂͗̚B̭K̶̜k̶̺̺͓̤̗͙̼̘̻̙̱̗͗͌̈̂̽͂͌̋̏ͅã̸̷̙̱̙͓͈̱͓̃̈̓̆͒̈̍͋̚t͗a̴͌P̃ȃ̢̼͕́̑̉l̾ǩ̗̏u̷̸̴̷̧̯̞̯̯̽͆̈́́̈́̂̈̄͜͜B͚̯̌()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->oe̡̢̛̠͕̖͌̿̆͒̓̐aľ̸̴̢̧͈̠̯̭̥͓̱̾͒̍͒͗̋͜͝n̷̶̦̲̙͚̥̪͉̥̼̯̈̑̅͘h̶̸̶̶̨̧̢̪̖̱̙͈̾̃̋́̂̒̅̓͊͜ĉ̨̛̛̪̖̦̫̗̫͚͚̞̌̆̑͂̑̈̎̐͆͑̽͘͘̚͘͜K̷̸̵̛̫̺̹̗̲͓͉̋̓̍͒̍̊̈̄̌̽͜͜͝͝͝ç̸̲̠̗̱̫̖̫̗̱͚̫͈̱̹̈̍̄̃́͌̔̀͌͗̓̋̑̂̿̈̍̈́̈̔̿̕̚͝͠͝ȃ̤̟͈̖͙͂͑͘͝o̷̦äB̵̛̄̿̃̀́̎̾͑K̸̻̱͑̋h͗ṯo̧̠̺͙͂̈́̍̋K̷̷̶̗̱̹͉̹̄̌̈́̒͐̋̃̊̃͒̈́̈́̔̌u̸̴̧̲͐̚B̶͌ǘ̶̸̧͚̮̥̻͎̩͕̜̙͚͓̩̭͑́͗̌̋́͆̂̋̀̏̈̏̐̃͝͝͝͝l̨o̷̧̧̼̠(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4c
    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v21

    const v24, 0x1ac310

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ȃ̵̞͘͝ô̴̤̻͝K͎a͇̬͈̖͚̾h͉ṯ̶̱̫͋̈͘á̵̸̧̛̼͎͎̯̌̋͜͝B̸̟̹̆̋͌̑̐͑͘B̸̧̧̯̦͚̖͈͚̠̃̈́̓̂͌̌͌̌͗c͚̮̰̭͗̏ǎ̶̹͕K̴̷̸̶̨̯̭͉̺̫͙͈͕̟͉͕̗̝̦̫͕̩̪̙̊̽̈́͗̈́̐̃͋͋̽̋͂̎̌͌̔͌̄̂͘͝t̔͗͝ļ̡̩̉̚͜͜a̫̦͓͓̲̗͆̋̉͒o̷̺ç̷̛̮̘͇̃̔B̶̷̸̧̛̰̬̰̼͚͓̖̙̻͗̆̋̿̎̃͗̌̅̎̏̚ö̸̸̧̧̲͎̞̼̭̖͈̜̥̤̯͖̠̠̱̖̞̝̮́̂͋̾̂̔̂͋̈̌̊̋̋̎̕͘͠͠ͅK̸͉̺̹̯͙̭̯̎̿̅̈́̿̿͒̋͒͘͘͘͘ơ̵͎̙̓K̲̾̋̋͘̕͝e̶̫̭̯̲̒̌̋̔ĥ̨̀̾a̶̧̗͓͓̺̾͜P()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v20

    xor-int v24, v24, v20

    const v22, 0x1aba51

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ȩ̸̸̸̵̵̷̸̢̭̗̙͎̮̖̞͕̲̤̯̫̰̙̮̲̠̥̺̫̲̹̰͗̌̍̑͋͑̍͌͌̾̄̓̾͌͆͌̀̂̅̄̀̌̌̏̈́͐͑̚͜o̷̸̧̧̬͈͇͓͖̠̯̝̗̲̪̟͓̎̋̆͋͑̑́̈̂̂̏̒̂͠͝͝͝P̷̩̼̹n̸̸̫͈̹̫̗̺̘̺̅͌̈́͌̈̋͑̚͝a̸̷̢̫͗͗̅̏͌͒̌̎̋̍̈͘c̷̷̢̛͈̰̫͓̲̫̫͕̱̫̥̥͎͎̎̃͌̎̏͆́̎̏̅̌̄̍͑͊̈̂̿͒̅̓̚͘͝͝͝͝ç̴̸̨̱̞͚̺̔̋̄̍͑͘̚͝͝ç̷̴̵̻̬̫̺̟̲̗̺̗͒̃͂̈̎͗̎͋̄̑̈́̃͗̑͝n̤͂̎̾̕ḵ̶̛̭̱̜̠̱̰̯̭̺̈͂̋̋͌̀͘͘͠͝͝ͅh̵͓̭͗́̈̈aą̸̛̺̻̻̖̱̯̫̥̟̟̗̠̗̦̭͊̍̑̏́̀̈́͑͠()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v20

    xor-int v22, v22, v20

    const v23, 0xdc33

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->u̷̝͑͐̎̈́͜h̶̘͈͌̌̋͆̂͌ô̴̖͈̦͓̫̫̎̈̈̈́̈́̚̚͝a̷l̢̠̏̈́̒̏͝P̸̶̡̞̠̼̌̑̑̽͗̅̚̚͜o̯͝͝͝e͜͜͝ç͈̟̯̫͓̟̭͚͒͊̂́͗͌͠P̧a̷̭͓̮̯̻̋̅̃̔͑̊̒̇K̛͓͖̖̟̫͊̂̔͌̌̅͋ę̸̸̷̺̖͉͕͈͎̭̩̜̥͚͈̌͐̍̌͗͊̋̄̌̿̃̓͌͜͜͝K̶̶̸͇̫̪̥̏̾̋́̏̍̾͘͘t̸̢̢̪̫̗͂̂̀̌̃͂̎́̿͝B̴̴̧̫̘̺͚̻͕̪̃̾̐̋̿̅̂͌̑̒̈̒͒̚̚͜͜͜͝͠͝͝ͅK͉͈̱̗̻̐͋̔̐͝͝nnl̸̛̛̛͕̼̏̉́̋̐̚͜P͈̫͈̘̖̠̮̌̾̌͗͗͝P̈́P̢̧̯̹̼͆͌͊͘a̶̮͖͎̤K̶̛͕͉̑̃͒̌͘ȁ̫͈͈̮͗̇̈͌̈́()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v20

    xor-int v23, v23, v20

    invoke-static/range {v21 .. v24}, Lcom/kashi/settings/view/SpecsTextView;->a̷̧̛̫͓̫̲̪̯̤͈̖͚͉̼͖̖̎͆̃́̈́̃͒͌̍̃̂̋̔̌͋͜͜͜͝͝͠͝a̧̼͐̓ä͉̍ǘ̷̸̶̦̚Kã̷̈o̶t̸̷̸̢̤̺͖̗̗̅̋̒̅͑̀̄̿̅̚͘͜e͚̤͌̾a̴̷͚̩̲̗̥͗͑̋̈̂͋̍̚͜͜͠͠k̶̬̲͈t̷̸̢̨̲͗̈̈͘ç̵̨̧̺͎͕̥̫̱̭͗̇̀̈̃̾͒̀͊̎̄̐̋͝c̴͎p̸̸̸̨̛͎͈̻̭̱̺̎̔̔̐̈̌̈̄̑̽̌̿̎͜͜͝ö̶͋t͒B̸̡̛̼̦̥̰͚̂̂̈́̈́̂͊͒͠k̸̴̶̴̨̢̛̭̥̱͎̹̻̙͎͓̫̹͕͚̦̻̫̈̎̇̃͌̎͂̓̾̿͊̐́́͗̂̾̚̚͜͝͝͝͝͝a̺̓͌̚e̸͓̥̥a̶̲̋̈̋̽͠p̛͚̗̞͚̔̋͗̏̔̎̑̚͘͘ǎ̢͕̘͉P̧̭͉͈͋(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v1, v21

    invoke-static {v1, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->c̷̸̶̯̪͗͋̅à̷̶̵̷̴̢̢̼̥̻̻͖͈͎̩̼̹̈́̍̓̌̑̾̈́̋͜͝͝͝ă̷̸̢̛͙͖̜̎͑̽Ķ̘̗̬̺̈̃͒̌͒̏̚͜ǎ̧̛̯̘̩̾̈Bó̶̶̷̻̯̜̜͕̾̀͐̃́̚l̵̢̛̖̫̖͎̮̩͚̘̫͉̀͋̎͋̎͝n̷̸̶͉͕̗̺͙̰̥̜͌͂̾̈͌̈̑͘ả̵̡̠̲̜̦̠̖̌͗P̵͕̘͕̫̬̗͎̌̿̌̃̋͗̚͘͜͜͠͝ơ̷̢̧̛͎͚̗̻̮̱̲̖̎̋͂̈́͗̎͊̌̋́̍͗͗̃̈́̂̈̕͜͝ae̦̹̎u͉̘̱͆͜h̸̸̢̝̙̃̃̋ǒ̶̸̧̫̲̩̲̫̗̰̫̹̖̠̫̥́̇͐̂͌͋͊͌͐̿̏̚̚͠͝͝B̶̧̛̥͎͖̠̥͈̯͓̲̩̤͕͕̘̖͈̜̰͌̈̂͗̃͗͑̈́̀͗̌̄̂̽̉͑͘͘͜͜͜͝͝n̯(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_8b

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->p̵̴̢̞̫̠̺̖̝͈̩͎̊̈́̂͌͗̔̑͘͘͜Kņ̸̢̻̺̤̭̭̹͎̯͈͌̄̌͂̚͜͝a̸͈̰̫͌̎̆͌̚͝ả̯̃̀ͅP̸̐̌͘a̵̸̴̧̫̭͈͊̂̉̎̈͒͗̿̚͘͝pK̡̫͓͎̲̱̥̘̇͆͌̽̐̃͗̐̎͘̕͜Kć̸̤̭̼̮̦̥̈͗̇̚͝p̙͙̱̼̋̀͠o͗́̋̑̑͗a̡̛̗̦̫̓̄͘t̗͚̻̅K̸̛̟͎̤̮̯͈̺͌̔͗͒̌͌̎͜͜͝tļ̷̷̡̲̪̦̱̖̫̫͕̥̅̌͌̋͊̈́̉̂̅̋͐̚͜͜͝͝͠P̷̛͎͚͚̲̈́͗̑̋̂́̂n̶̶̴̴̸̵̷̨͉̭̠̮̮͉̘̙͖̫̯̑̏͋̋̃̈́͒͋̂̈́͂̈́̽͂̂͘͠t̯Ke̋u͘a̰̫̗̗̋͌͗̐̚͜͜͝p̶̨̢̯̱͖͕̱̰̂́͗̂̅͝ñ̷͙͈͓̐̂̄̑()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->oe̡̢̛̠͕̖͌̿̆͒̓̐aľ̸̴̢̧͈̠̯̭̥͓̱̾͒̍͒͗̋͜͝n̷̶̦̲̙͚̥̪͉̥̼̯̈̑̅͘h̶̸̶̶̨̧̢̪̖̱̙͈̾̃̋́̂̒̅̓͊͜ĉ̨̛̛̪̖̦̫̗̫͚͚̞̌̆̑͂̑̈̎̐͆͑̽͘͘̚͘͜K̷̸̵̛̫̺̹̗̲͓͉̋̓̍͒̍̊̈̄̌̽͜͜͝͝͝ç̸̲̠̗̱̫̖̫̗̱͚̫͈̱̹̈̍̄̃́͌̔̀͌͗̓̋̑̂̿̈̍̈́̈̔̿̕̚͝͠͝ȃ̤̟͈̖͙͂͑͘͝o̷̦äB̵̛̄̿̃̀́̎̾͑K̸̻̱͑̋h͗ṯo̧̠̺͙͂̈́̍̋K̷̷̶̗̱̹͉̹̄̌̈́̒͐̋̃̊̃͒̈́̈́̔̌u̸̴̧̲͐̚B̶͌ǘ̶̸̧͚̮̥̻͎̩͕̜̙͚͓̩̭͑́͗̌̋́͆̂̋̀̏̈̏̐̃͝͝͝͝l̨o̷̧̧̼̠(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_8b
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 56

    move-object/from16 v4, p0

    invoke-super {v4}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-static {v4}, Lcom/kashi/settings/view/SpecsTextView;->t̴̢̛̛̲̤̰̖͉̂̔̾̋͋̋̆͑͘c̨̜͑la̶̷̦͎͋̌̿k̟̪͙͒̆̅̄̑͠͝h̵͚͊̀͑̍͝a̲̭o̶͉̩͎͜P̷͂̑͜l͉̭h̸̸̶̷̸̸̶̸̵̨̢̛̫̦̜̖̫̤̗̹͚̹̞̲̯̯͚͎̠͚̯̰͎͈͚̭̘̩̻̻͇̯̥͚̖̗̯̝̜̱̺̘̯̖̑̓͗̎̎̃̍̇̈́̋̀̃̏̉̑̈͂̃̃̂͑̋̎̒̌͆̈́̏̍̈̂̆̑́́͌̌́̿̏̈̈̈́͋̎̈́̏̉̈̂̀̈́̀͑̔̃̈́̏͌͜͜͜͜͜͝͝͠͝aţ̸͕̭̫̫͚̬̃̿̽̑u̺͚͖͋̂̑̋o̷̍͐͗͋ť̴̷̸̰̻̬̺̫̜͇̺͌̚͠ķ̧̧̫̟̭̤͈̺͇̺͚̈́̀̌̃̍̓̎̑͌̋̅͂̌͘̕K̛̿̂̿ae̵͎͕̎̍͋B͓̭̮̊͗͒͝u̘̭k̫̼P̶̢̗̮̜̆̈́̈́͝(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/kashi/settings/view/SpecsTextView;->mAttached:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kashi/settings/view/SpecsTextViewObserver;

    invoke-direct {v1, v4, v0}, Lcom/kashi/settings/view/SpecsTextViewObserver;-><init>(Lcom/kashi/settings/view/SpecsTextView;Landroid/os/Handler;)V

    invoke-static {v4}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ẗ̸͚̮ä̧͉͕̱̘̚p͈̫̭̀̂ä̲͎̦͑a̹̪͎̤̮̼̾̂o̧̧̠̺̤̯̤͌̾͌̅̄̃̈́̅̃͑͝͝ͅtc͇̱͉̿́̈́hK̷͈̠͉̫̠̫̦͐̈̄ņ̸͈͎̱͚̦̼͙̐̆̂̽̎͋͋K̪̦̃̕͜ļ̷̺̮̺̥͕̜͗̈̑̂̉̂͊͑̈͌c̨͋̆̾̋̚o̺̫̫̿͗̄̆̈̋̕͝B̸̨̘̯͈̔̃ã̶̧͈̝͚͎͚͕̯̱͕͙̙̦̮̋͗͒̑̃̂̂a̡̤̙̭͌̅̋̿̍̃̾̌̂̕͜p̻̫̗̭̭͗͑͋͒͘k̷̛͎͉̘̎͊͗͌͗̎̿̋̍̀̈́͜͠a̸̷͙͈͉͋̑̽̌͘͜K͘o̶̶̘͗͑̓̄̈͗͋̿͝l̵̨̛̮̥͖̠̮̍̋̎̐͂̐̈́͘͜͜͝B̢͕̲̆̈̅͘͘p̷̴̸͎͖̊͠͝a͇͘ĕ̶ő̢̦̬͕͘p̸̏̆K̇̅(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K͝h̶͗ḁ̸̶̷̸̝̭̪͈͕̠̹̭̗͚̃̂̈́͐̈́̈́̈́͂͑̌͌͜ư̝̹̜̖̫̪̿͗̈́Ķ̷̸͚̦̮͚͓͚̼̘̮͗̌̂͆͐̾̂̀̓͜͝͝oK̸͓̹̰͓̮̝͓͚̗͈̭̺̞̹͎͈̲̯̙̦̈́̏́̈̄̄̋̎̒̅͌͌̔̉̽͒̃͝K͂n̢̗͗̑k̶̭̺Kn̶̡̲͋̅̐̿̌̔̇̿c̵̘̺̔a̸̸̤̘͙̪̪͎͗̍̽̂̐̋̈́̚ã̭̙̭̲̱̒͑̌̿͋̇͌̂͆̌̑͜͠ã̷̵̗̥̟͇̖̫͖̪̮̠̯̬͚̼̐̄̈́̂͌͊̎̔̃̋̂͜͝P̧͚͈͖̭̘̞̪̙̦̈́͗̂̂̎͒̂͑͆͋̅͝e̴̢̫å̼̌͐͘P̸̴t̵̵̸̷̢̛͈̜͎͖̙̫̭͉̭̭̞̂̅̅́͗̈͑͂̀̅̋̌̈́͐̃̾͌̂̋̚͜͜͠͝Kp̸̢̧͕̘̮̫̝͋̈̅p̮(Ljava/lang/Object;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v40

    const v43, 0x1aa6d3

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->k̸̷̸̶̸̸̘̻͈̱͚̱͎͎̟̘̜͎̤̤̗̹̭̏͑͋̂͌͋̀̅͗̈̀̄̌͊͌̎̈̿͒̓̅̋͘͜͝͝͝͝͝ͅKê̸̴̷̸̢̛̛̻̭̺̼͈̰̦̅̈́̿̑̈́̒̈͜͝c̢͓̘̤̑̅͠͝͝c̷̴̸̛̦̥͎̎͌ą̶̵̧̛̛̩̗̠͓͚̭̘̗͚̙̭̮̥̭̫̈́̂̏̂̑̌̆̌͊̋̑̃̋̚͘͜͝l̛̘͉̗̺̂̋͊́̈̍̔̈́̅͜͝a̶̪͉͉̗̯͌͌͌̎͑̈̈̌̈́͗̂̽̚͜a̸̛͉͗̅̅̋͂̈́͘̕͜e̷̵̛̬̰̗̭̹̦̩̯̤͇͗̃̌̃́̐͌͗͠cn͈̚e̸̢̨̯̹̘̝̺̰̯͓̘̠͓̯̗̹͎̫͎̭͂̓̾̎̃̑̚͘̚͜͝͠͝͝͝a̶̴̷̢̨̛̛̹͚̲̫̤̠̦̲̫̭̫̫̯͕̙͖̯͌́̈́̅̏͌̃̂̄̃͒͌̆͜͠͝͝͝͠h̥()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v39

    xor-int v43, v43, v39

    const v41, 0x1aab9e

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->k̷̗e̸̶̛̫̟͎̪̋͗͜͜͝ho̶̸̭̠ȗ̆ĉ̫̀lẗ̷̷̷̡̢̼̺̦̺͉̺̹́̿̃̎̄̾͘̚aa̸̸̷̛̛̝̫͑̅̅́͌̊̕͜͠ç̴̶̪̫͕̬̻̪͎̞̃̈͗͑̀̈́̇͊͊͗̂͘e̴̡͕̱͕̪̖̤͉̮̓̑͋̃̂̾͝a̴̢̭̙̺͋̎̒a̯͝k̴̶̨̧̺̺͓͕̜̋̊̌̑̋̒͘ṯõ̴͎̱͈͉͈̻̺͕̬͈̫̺̫̰̥̘̖̟͉̭̹̱͎͚̖̯͆̈́̃̀̂̃̿͒͊͌́̋̈́̊͘̚͘͘͝͝p͕͈͈͌͗̋̎̌̂̌̄ͅk̴̟̪̭̗̫̂̋̓̃̃͝K͚̾͆ǫ̸̛̭̖̫̲̥͊̈́͗͜͝͝õ̧͐͜l̪̫̭̉̈̂̃l̛͚n͓͋a̸̶̲̅͠͠B̵͙̪̭̙̾́̈́̑̚͝ő̢͌͋̈́͘͠͝a̼a̴͉̰̠̝͌͌̄̀̅͜͝͝͝()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v39

    xor-int v41, v41, v39

    const v42, 0x1ac975    # 2.459992E-39f

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ű̸a̡h̸̷̦̱̰̤̮͓̔͌̃̌̂͗̕͝K̭͇͈͎͓͐̄̒̈́̋͂ͅB̝̯̅͗o̸̬̫̫̭̗͚̺̙̘̗̹͋̆͌͋̑͗̽͜͠ͅB͠ȁ̫̀̾͜Kl̫͂͑̿̕c̥̤̯͚̬̥̻̞̹̤̼̗̘̙̫̽̊̈́̃͗̿͋̌̚h̸͚̦̽̍̾͑͋͝oK͙̘̿ḧ̛̭̤́̄̚ḩ̷̵̢̙̙͎̬̖̱̙̭̫̞̟͂͌̆̃̽̾́͜͜͝͝͝͠͝ͅä̗̀̋͜ǩ̬̗̗̭̂̂̏̆͠ấ̶̧̧̹͎͙͈̙͙̈́͂ͅa͚̞k̟̠̐́̉́̎̂̀̃̎̃͝K̺̲̖̎́̈́̋̀̎ņ̸̸̶̵̙̩͎̘̖͋̍͋̂̈́̄̾̕͝͝ķ̶̛̛̭̤͈̺̥̫͖̖͐̈̋̑͋̂̌̅̈̚͝͝K̶̶̗̪̼̦̾̆̈́͝ơ̶̭̱̗͎͈͖͚͌͂ā̷̤̗̙͓̰̫͌͑̍̃̎̌̈́()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v39

    xor-int v42, v42, v39

    invoke-static/range {v40 .. v43}, Lcom/kashi/settings/view/SpecsTextView;->P͝͝p̴̢̨̱̘̦̼̩͙͚̘͓͗̇̚͘ǎ̢̧̙͓̫̱̖̭̌̌̂̓̃̄͌͋̚l̮̖̰p̴̶̶̸̸̧̧̧̢̢̬̫̰̤͙̺͚̝̯͉̘̂̿̂̔͑̈̂͌̽̏̃̌̃̎̎̇̃̄͋͌͜͝͠ä̵̖͎͜͝n̢̲͕͉̂̓̋̈́̂̔̈̿̐k̤K̸̛͈͎̺̠̑̂͠ő̗̃̃ȏ͓͚́K̷̸̦͚̩̤̼̆̄̌̓͝t͎̗ą̶̸̸̧̢̧̫̱̺͈̥̗͕͓̘̫͉̺̱̮̎̋̌̆͗̈̂̀̎̌̈́͌͋͘͘͘͝͝͝͝tu̩ķ̷̢̢̭̟̠̗͎̟̪̝̥̲̭͈̹̙̫̘͈̺̯̹̫͈̦̫̐̀̿̌͐͌̅̾͌͋̒͊̅̌͗̈̂̂̂͗͗̄̀͑̕͘͜͠͠P̵̶̦̺̤̫̠̺̬̈̆͋͒͋͂͌͒̀̄͂̏͝ų̴̙̜͖̗̘̖̯̺̌̈́͌́͐̂́̎̈́͜͜͜͝͝͠͠(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v2, v40

    invoke-static {v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->B̺͋̂̌̏a̸̩̦̪͐̾͘K̪̗͗͑̌̂KP̛̫͜ķ̴͚̥̫̯̦͕̌̿͑͝͠͝ǫ̴̛̘̗͈̜̥̭̿̈̆͑̌͋͠͠p̸̢̩̱͌̋̋͌̂͜e̤̱͙̎o̧̮͓͖̦pl̯̇̃̕ķ̰̯̺̯̀͗͝K̴̖͉̺̼͂͌͊͜͝K̨̧̢̛͕͓̫̠̬͈͎̟̯̤̫̭̘̀̑̔̍̎̑̈̌̐͆̈́̿̅͌͗̄̌̃͗̄͗̕͜͝͠͝p̶̼̱̟̤͎̏͗͗̆͝P̶̢̢͌̈́al̢̗̖̀̚h̸̵̸̝̺͚͎̼̺̭̦̮́͗̂͊̌̿̌̂̀̑̈́̌͝͠a̠̗̙̻̩̲̫̟͕͂͒̎̿̃̾̑̌̂̈̿͘͠p̵̱p̸̢̦̲̮̹̿̎̈͋͌̔̋͐͂͜a̋t͈̭͈̑̉̾͠P̑͊̌̋p͎͕̖͉̫͎̀̿̉̾͂͝ļ̵̥͈̤͓̂̒̈́̂͋̎́̅̈́͜͜͝P̛̦͉̀̑̿(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->Ķ̷̛̺͉̻̾̅́̚͜͜K͚̟͋͌̈͗͗̕͘ț̸̰̘̃B̵̘̄͝ā̢̛͕̫͎̘̅̂̋͗̈̋̂̚̚̚͜k̷̷͎͈̭̟͖͈̘̹̖͚͒͋͗̌̌͂̋̉͋̂͐͘̚͜͜͝͝͠ô̴̡̧͖͕̗͓̺̟̤̗͉͚̩̺̲͕̺̦̑́̉̈́́͑̄̀̎̂̈́͜͝͝Ba̼a̴̶̵̶̧̧̫͉͓͉̹̭̗̅̽̈́̅́͌̆̾͘͘͜ơ̶̸̵̛̭̠̞̟̫̽̂̂̑͋͌͘͝͝ò̱͎̞̺͉̫͓̹̤̠͓͓̾̎̎͗̌͒̈́̀̚͜͜B̾ǎ̢͙̭̠͊̏͘ư̶̴̶̸̛͈̫͉̼̯̝̲̲̂̅̅͗̌̌́̇͌̉͑̐̈͒͌͊̂̕͜͝ͅä̸̮͇̗̺́̋͗̏͗̀͜͠e̷̹ķ̷̤͖̎̈̋̿͌̐̔̈a̸̧̛̮͕̥̺̪̫̘͕̱̋̈́̄̈́̎͌̀͑̎̌̊̎͜͝k̸̙̮(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 53

    move-object/from16 v1, p0

    invoke-super {v1}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-static {v1}, Lcom/kashi/settings/view/SpecsTextView;->t̴̢̛̛̲̤̰̖͉̂̔̾̋͋̋̆͑͘c̨̜͑la̶̷̦͎͋̌̿k̟̪͙͒̆̅̄̑͠͝h̵͚͊̀͑̍͝a̲̭o̶͉̩͎͜P̷͂̑͜l͉̭h̸̸̶̷̸̸̶̸̵̨̢̛̫̦̜̖̫̤̗̹͚̹̞̲̯̯͚͎̠͚̯̰͎͈͚̭̘̩̻̻͇̯̥͚̖̗̯̝̜̱̺̘̯̖̑̓͗̎̎̃̍̇̈́̋̀̃̏̉̑̈͂̃̃̂͑̋̎̒̌͆̈́̏̍̈̂̆̑́́͌̌́̿̏̈̈̈́͋̎̈́̏̉̈̂̀̈́̀͑̔̃̈́̏͌͜͜͜͜͜͝͝͠͝aţ̸͕̭̫̫͚̬̃̿̽̑u̺͚͖͋̂̑̋o̷̍͐͗͋ť̴̷̸̰̻̬̺̫̜͇̺͌̚͠ķ̧̧̫̟̭̤͈̺͇̺͚̈́̀̌̃̍̓̎̑͌̋̅͂̌͘̕K̛̿̂̿ae̵͎͕̎̍͋B͓̭̮̊͗͒͝u̘̭k̫̼P̶̢̗̮̜̆̈́̈́͝(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/kashi/settings/view/SpecsTextView;->mAttached:Z

    return-void
.end method

.method public updateTextColor()V
    .registers 56

    move-object/from16 v4, p0

    invoke-static {v4}, Lcom/kashi/settings/view/SpecsTextView;->B̶̧̨̧̗͈̥̺̒̔̈͘͝l̷̤̻̙̞͚̦̃̽̔̋̂̈͜͜͝͠o̢B̢̢̹̬̺͕̱̌͋̏́͠eļ̸̧̟͈̯̗̥̺̾̅̋͐͋̇͗͋͐̚͝͠ȟ̸̷̴̷̡͙͎̯̦͕̭̯̩͕̿̃̈͜ǫ̶̸̶̧͚̺̫̲͈̫̹̭̮̯̙̼͓̌̔̅̌̔̑̎͊̌̈̋͊͆̑͒̆̎̍̄͌͑͗͘̕͠͠ě̶̢̢̗͉̰̦̤̐͋̍͂͌̌̌͑͘͠͝a̰͈̲̹͉͐̈́̔́̅̾̂͝ͅK̷̷̵̴̨̢͎͚͎͕͖͇̺̗̜͎̼͙̘̜̫͖̫̀͌̏̈́̋̈͆͆͂̑̉̌͂̈͗̐͗̈͊̌͑̃͑̎͘̚͘͜͜͝e͎̤̫͌̃̌͐͜ȩ̴̴̧͚̭̭̫͚͕̫̼͈͇̐̌̈̓̄̅̾͑͆̏͋̅͂̽͘͝͝͠͝K̻̰̯̺͕̖̯͋̃͑͌̏̐̾̌̋͌̋͘͜͠͝k̾B̭̀̂P̙̌(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v4}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->o̸̶̢̧̡̞̖̘̫̗̩̹̺̫͇͎̺̗͕̼̘͗͌̌̎̈́͑̈̋́́͜͠͝ͅͅë̶̸̢̫̠̦̫́̎̎̎̾̉͂̃͜B̶̸̸͕͎͎͓͉͉̅̿̌̂͒̃ha̶̛̰͓̮̦͈͂́͊͊̑͘B̶̧̫̭͋͌̈͂̊ą̡̢͎͉̫͎͇̹̽̃̈́̌͒́́̂̄̎̈̉͘ǫ̶̷̵͇̲̱̲̭̫̦̈̂̐͐̽͒̏̅̀̆͘̚͜͠͝K̸̨̧̨̤͓̯̫̫̮̱̯̱̻͉͎̫̃̈́̋̂̂̍͊̇̌̄͌̂̄͑͋̚͜͜͜͝͝ȧ̶̵̢͉̗͕̹̈͑̐̈́̈́̌͝l͉̜̥K̶͎͕̹̥͉̥̂̾̈́̌͜͜͜͝ac̡͕͉̈́̑̍̀͝͝o̸̷̢͚̟̹͉͉̮̺̦̬̩̹̺͌̏̑̂̇̐͌̓̐͊̚͝c̸̵̢̧͖͈̞̭̲͉̈̋̈͐̌̅̌͊̕K̈Ķ̶̭̰̌̐͘n̻̭̥͊́̂̾͑(Ljava/lang/Object;)I

    move-result v0

    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v11

    const v14, 0x1aceb7

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->k͈̝̙̫̫͗Kk̸̴͈͈͕͎̪͕͓̯̺͚̥̾̀́̎̒͒̂̿͊͘͠à̱̲̥̫͓̲̫̖̈̔͗͗̏͘͘͝͠o̫̝̖͜lk̴͉á̷̵̔̇͝ue̦͗t̷̮̿̐̾̌͝ḁ̷̴̶̸̧̛̺̦̗͚̫̹̙̟̯̀̈͊̋̅ͅk̶̛̭͇̖̫̥̻̗͋̕͜c̶̠ú͝P̵̶̸̢͓̫͓̟̘͚̺̥̮̺̌̋̐̅̉̌͑͌̏͠ç̸̗̞̮̰͎͗̊̀̀̑͘͠u̔ą̶̛̠̺̦̗͒͒̎̋͜u̴̬̹͉̔̔̈̿̅l̎͆̿k̴̷̶̶̨̢̛̛̭̥͙̼͓̫̻̘̗͉̮͓͙̫̫̥̫͙̗̙̑̂͊̇͌͐̃̄̋̅̆̑̋̋͒̍̑͋̋̈̇͑̚͜͜͝͝͝͝͝͝ͅa̶̹̫̭̅̋͂͝aBeP̨͈̄̀ä̸̸̷̸̛̭͎͈͈͖͈͙̺̠͚́͊̉̂̋͂̈̎͌̋̅l̮̆ͅ()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v10

    xor-int v14, v14, v10

    const v12, 0x1ac52d

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ű͈̎͜ț̵̶̛̯͓͚̮͎̪̥̮̭̫͎̦̲͎͚̗̯̜͊̔̏̽̾̋̍̑͌͘͠nä̫́͗͜͝a̫̜̍͂́̂͜ā̺͚͕̬̂͒̅̆͗̈a̷̧̜̮̰̺̪͈͒͑̍̂̑̔̔e̸̯̹͋̅̈͊Ķ͌ä͓̯̭͊̀̋̋Ḵ̷̢̥̎͋̌͊̋͊͊̋̀̾̏̕͝a͌͝p̭̅͋p͈̺͚̙̆̋̄͒͌̆̂̅aPK̘̺̏̈́̈a͊̈́lp̴̹̫͎̱̒͝c̸̵̼͈͎̯͆̀̑͗̀̑p̟̂͠a̝͓̰͙̥̔̇̾̃̎̏͗͌̚̚͜͝͝͝͠ǎ̸̸̢̼̅ȯ̷̵͕̞͉̩̱̟̱̜̭̂̋̆̆̋̈́̈́̀̚͜͜P̰̰̈ớ̷̶̷̷̸̷̸̸̡̧̧̛̛̛̥̠̮̥͙̩̫̭̺̖̑̂̾͌̎̑͋͌̑̃̌̌͘͠͝o̫͚͌͌̏̋͠BB̷̰̠̑͗K̾̎ḧ̼̹͈́̒͗()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v10

    xor-int v12, v12, v10

    const v13, 0x1ab6d1

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->n̴̰͈̩̪̈́̋aṳ͗̉̈́͌o̯̍K̥̯̪͈̗͐͗̾̀͗͌̾̿͐͗͜ķ̷̷̧̛̛̫̪̯̲̘̫͈̤̥̱̮̫̤͙͉̹͚͉̫̩̫̫̮͉̭̗̞̯̩̻̈̑̽̇̌͂̌͗̋̈̒̊̓̌̿͋̄̋͋̋̈́̃͊̎̈́͂̚̚͘͜͜͜͠͝K̢͑͌p̀̄B͉̜͙̍ap̶̥͙̱͉͙̺͓̭͚͈̈̍̀͐̑̂̃̓̂͂̚͠a̙͈͎̮͓̒̅̔̌̔͗a̴̢̛̫̫̙͎̖̫̺͕̋̈̑̌͊́̆̀͝͝k̸̎̔͠ḧ̸͇̼̱̦̫́͋̂̌̚ő̺͈̊K͙̺̆͋͌͑̏͜͝ͅà̦̯͈͗̑̈͐͗̈͝ḧ̷̢̠̫͉́̃̈́͌͋͑̾͗̂͜P̸̥̂̈͑́̇̚P̸̵̶̴̞̺̘͕̬̫̗̅̒̂̋͐̌͋̌͘̚̕͝͝͠ą̷̯͉̈́͘ā̪̄͠t̸̴̢̙̦͚̮̹͋͂͌͌̂̍()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v10

    xor-int v13, v13, v10

    invoke-static/range {v11 .. v14}, Lcom/kashi/settings/view/SpecsTextView;->ȩ̥̘͉̙͎̯͈͖̲͕̚͘͜͝k̛̮̙̫͓̈̇͑̈́̋͋̑͊͘c̘͎̯͎͎̬̮̈̇͆̄̎B̝͓͓͓͈̫̎̀̅̎͌̌̐̂͗̃͘ō̴̸̴̧̠̥̭̘̪̥̗̿̊â̸̶̸̧̩̻̰̥̫̈̆͌ͅkB̵̛̭̮͑͂̎̌̈́a̴̲͕̙͙͚̹̩̎͗̋͗̑͜ą̤n̩c͓͈͋̽̃̈̔ņ̵̵̯͉͓̭͓͙̯̻̰̀̏͑̓̑̈̐̌̎̂̕͘͘͝͝͝e͚̟̻̤o̧̖̺̰͓̭͓̫̮͂͌͌́̑̅̈͘̕͘͝͝͝ņ̧̹̩̗͕͎̯̋̑̾̂̄͐̀̈͌͘͜ͅK̼̤̄̐l̷̶̵̸̴̡̨̛͚̜̘̮̦͓̼͙̗̺͈̞͈̯̦̯͈̘͕͇̪̃̈̿̒̂̎̏̂̾̋͂̅̋̀̄̾͊̑̌͂͌͘̕͘͘͘͜͜͠͝͝͝t̶̛̲͗̃͘͝u̸̴̧̺̩̯̼̫͓͗͌́̋̌͑(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, v11

    invoke-static {v1, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->c̷̸̶̯̪͗͋̅à̷̶̵̷̴̢̢̼̥̻̻͖͈͎̩̼̹̈́̍̓̌̑̾̈́̋͜͝͝͝ă̷̸̢̛͙͖̜̎͑̽Ķ̘̗̬̺̈̃͒̌͒̏̚͜ǎ̧̛̯̘̩̾̈Bó̶̶̷̻̯̜̜͕̾̀͐̃́̚l̵̢̛̖̫̖͎̮̩͚̘̫͉̀͋̎͋̎͝n̷̸̶͉͕̗̺͙̰̥̜͌͂̾̈͌̈̑͘ả̵̡̠̲̜̦̠̖̌͗P̵͕̘͕̫̬̗͎̌̿̌̃̋͗̚͘͜͜͠͝ơ̷̢̧̛͎͚̗̻̮̱̲̖̎̋͂̈́͗̎͊̌̋́̍͗͗̃̈́̂̈̕͜͝ae̦̹̎u͉̘̱͆͜h̸̸̢̝̙̃̃̋ǒ̶̸̧̫̲̩̲̫̗̰̫̹̖̠̫̥́̇͐̂͌͋͊͌͐̿̏̚̚͠͝͝B̶̧̛̥͎͖̠̥͈̯͓̲̩̤͕͕̘̖͈̜̰͌̈̂͗̃͗͑̈́̀͗̌̄̂̽̉͑͘͘͜͜͜͝͝n̯(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_90

    invoke-static {v4}, Lcom/kashi/settings/view/SpecsTextView;->B̶̧̨̧̗͈̥̺̒̔̈͘͝l̷̤̻̙̞͚̦̃̽̔̋̂̈͜͜͝͠o̢B̢̢̹̬̺͕̱̌͋̏́͠eļ̸̧̟͈̯̗̥̺̾̅̋͐͋̇͗͋͐̚͝͠ȟ̸̷̴̷̡͙͎̯̦͕̭̯̩͕̿̃̈͜ǫ̶̸̶̧͚̺̫̲͈̫̹̭̮̯̙̼͓̌̔̅̌̔̑̎͊̌̈̋͊͆̑͒̆̎̍̄͌͑͗͘̕͠͠ě̶̢̢̗͉̰̦̤̐͋̍͂͌̌̌͑͘͠͝a̰͈̲̹͉͐̈́̔́̅̾̂͝ͅK̷̷̵̴̨̢͎͚͎͕͖͇̺̗̜͎̼͙̘̜̫͖̫̀͌̏̈́̋̈͆͆͂̑̉̌͂̈͗̐͗̈͊̌͑̃͑̎͘̚͘͜͜͝e͎̤̫͌̃̌͐͜ȩ̴̴̧͚̭̭̫͚͕̫̼͈͇̐̌̈̓̄̅̾͑͆̏͋̅͂̽͘͝͝͠͝K̻̰̯̺͕̖̯͋̃͑͌̏̐̾̌̋͌̋͘͜͠͝k̾B̭̀̂P̙̌(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->K͝h̶͗ḁ̸̶̷̸̝̭̪͈͕̠̹̭̗͚̃̂̈́͐̈́̈́̈́͂͑̌͌͜ư̝̹̜̖̫̪̿͗̈́Ķ̷̸͚̦̮͚͓͚̼̘̮͗̌̂͆͐̾̂̀̓͜͝͝oK̸͓̹̰͓̮̝͓͚̗͈̭̺̞̹͎͈̲̯̙̦̈́̏́̈̄̄̋̎̒̅͌͌̔̉̽͒̃͝K͂n̢̗͗̑k̶̭̺Kn̶̡̲͋̅̐̿̌̔̇̿c̵̘̺̔a̸̸̤̘͙̪̪͎͗̍̽̂̐̋̈́̚ã̭̙̭̲̱̒͑̌̿͋̇͌̂͆̌̑͜͠ã̷̵̗̥̟͇̖̫͖̪̮̠̯̬͚̼̐̄̈́̂͌͊̎̔̃̋̂͜͝P̧͚͈͖̭̘̞̪̙̦̈́͗̂̂̎͒̂͑͆͋̅͝e̴̢̫å̼̌͐͘P̸̴t̵̵̸̷̢̛͈̜͎͖̙̫̭͉̭̭̞̂̅̅́͗̈͑͂̀̅̋̌̈́͐̃̾͌̂̋̚͜͜͠͝Kp̸̢̧͕̘̮̫̝͋̈̅p̮(Ljava/lang/Object;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {}, Lcom/kashi/settings/view/SpecsTextView;->P̶̯̫̱͈̫͋̅̚Ķ̷̛̛̛̺̺̯͇̰͙̩̮̯̠̺̗͕̮̲̰͉͚͂́̅̉̂̌̀̋̎̅̎̎̿̄́̀́̈́̔̌͗̾̾͑̉̋̚̚͠͝͝͝͝͝ͅͅã͈̮̬P͕̺͗kḩ̷̶̸̡̤̹̙̐͐̂̌͗̈̚͝p̸̸̟̺̯͋̾͗̈̈́̑̎̃̿͐͝͠͝o̦ư͚͈͕̻̺͇͙̈́̀̋́͗͘͜͜͠͝Ǩ͈̯̥̘̫̘͎͓̱̩̩̘̥̲̂͌̎͝͝͝ͅB̌̀͑͜͝h̵̴̹̭͚͚͚̊̾͂́͗̾̆e̫̟͂̂͗̈͝c̢̢̹Be̯̺͙͌̄̇P̶̸̷̮̩͓͚̹͈͉̅̄̎́͌͋̌̑̕͝e̶̾̀̾e̴̲̘͎͙͐͆̉͜͝P̷͚ͅP̷̷̴̡̦̪̥͌̋͗̄̔̈́̊̿͌͝k̷̐͌͒̂̏͘̚c̸̛͉̥̘̮̱͕͈̫̱͚̠̠͕͌͑̄͊̈̏͒̏̃̀̾͊̀͜ͅ()[S

    move-result-object v23

    const v26, 0x1ab8d8

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->a̭͙̩̼̹͎͉͎͈̱͒̍a̶̷̸̷̢̛̺̹͎̓̈̊̿͌̈́̂͗ẫ̲Ḇ̶̛̥̗͎̹̩̥̖͓̗̏̔̄̈́̆͋̌͘͠ḩ̷̷̵̸͓̤̑͒̎͐̃̿̃͐̂͗͘͜o̷̼̠͇ǒ̶̸̧̧̧̫͎͈̬̺̭̌̒͗̌̍̿̍͑̚͜͜͝͠͝͝e̅l̴̛̫̼̩̱̦̂͋̍̔̑̄͜͝P̩̰͗͘͜ņ̶̛̛̺̹̠̘͚̠̘̘̲̗͈̭̬̫͌̋͒̂̎̋̑̋́̊̆̇̚͜͝͝͠ḩ̵̛̠̪̭̫͖̤̫̝̰̭̫͓͚̪͎̖͌͒̈́̑̾̈́̆̅̓̌̏̑̽͗̋̂͆̍́̂̋̈́͘̚͜͠n͙p̸̸̸̭̯̗̰̭̑͐̿̂̌͝t̸̮̮̹̾͑̿͋̂̈͘͘͜a̸̭̅͂̌͜t̫͐͌̈́ḁ̷̡͙̭̅͗͠n̶̸̷̸͉̫͈̪̲͓̝̪̭̦͎͙͒̌͘͜͜͠͠k̖̻̑͐̂́͘()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v22

    xor-int v26, v26, v22

    const v24, 0x1ab334

    invoke-static/range {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->p͚̼͎̥̤̫̹͎̄͂͗̒͑̓͋̆̃͘͜p̧̦̮̿͆akP̸͉̘͈̐̐͝ḁ̷̶͕͈̖̭̱̮̺̪̰͚̯̦̌͂̈́̎̌̾̿̃͜c̦͚̅̊ơ̶̴͚̤̹̹̰̖̫͑͑̎̆̌͘͝Ķ̶̴̸̵̴̸̴̨̨̪͇̹̬̻͖̤̮͕̫̖̏̾͂̾̃̂͋̀̈̅́̿̅͋̐̂͑͗͂̅͌̈̎͐̿͜͝ͅP̷̨̛̭̺̪̱̘̺̱͈̗̱̫̟͙͈̦̦̋͌͐̌̋͂̏͊͜͜͝͠͝͝p̴̈́̿͐h̸̵̪͓̫̺̫͉̘͓̄̑̎̃͒͑͌̈͜č̸̤͉̺̃̀͘͝B̷͇̯͈̤̭̙̮̪̯̤̎̈́̄̑̒́̋̈́́͝͝c͎̺c̷̴̴̨̢̨̢͓̻͙̦̠͕͈̻͇̹͊̾̌̋́̆̎̋̀̂͆̓͂̈́͗̌̀͋͌͒̇̌̋́͌̂̐͗̃̑͋͘͝͝͝ļ̝͑̾̿̎͒K͚ä̫̯̹̫̺()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v22

    xor-int v24, v24, v22

    const v25, 0x1aaf3e

    invoke-static/range {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ǫ̴̷̧̢͚͉͕͚̮̜̎͆̋̑̈͌̂̋͗͑́͒̂͗͗̾͊̎̌̓͗͜͜͜͝ͅë̼̟͉̤̌͑̏̚ā̯ol̷̸̠̗a̶̵̡̛͓̯͚̞̱͉̼̱̲̫̭̱̱̱̬̝̅͌̃͆͗̋͗̔̾̈̿̋̋̅̈́̎̍̍̚͝͝a̋eh̸̺̫a̷̯̹͊̇a̪̕a̶̷̴̵̶̧̛̛̱̪̥̺̺̭͋̒́̚o͎͈̿́͘͝ä̫̾͝l̦̻̋͂ç̸̧͓͚̙͉̙̫̫͎̲͉̬̜͕̭̄͑͂̄̈̌́̃̌ą̸̷̢̧̻̲͚̱͇̰̙̺̮̘̦̖̼͕̼̺̗͚̻̘̪̾̑́͑̄͐̌̄́̌̌̾͗̿͌̌̚͝͝͝e̴̦͜n̵̸̸̗̗͈̫͚͑̋̔̄̑͋̂̐͗̀̽͝͠c̸̴̢̡͙̮̘͈̬͉̙̠̭̹̑̅̀͗̂̐̋̅͝o̘ë̺́̂̌̂͝K̷̢͈̆̽̀̈́̀̚͝l̥̱̰͎()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/kashi/settings/view/SpecsTextView;->K̴̵̹a̤ą̴̧̤͎͈̼̱̦̹͒̅̌̈́͂͂B̴̗̪̠̠͗̿K̞͎̩̥͚̈͂̈ţ̵̵̛̹̫̦̻̾̄̎̍ͅl̜͌̑̍̈́K̹̙͉̏̿̕͜͝a̷̢̘̮͚̝̪̦͕͓̭̗̎̈̀̂̌̅̎̃̚͜͜K̡̧̯̤̯̮̯͒͊̓̄͜͝͝B̴̸̴̵̶̧̝̠͎̪͙̫̭̻͉̰̞̫̫̤̯̦̘̯͗̍̐̃̌̏̃̅͂̄̈̋͊̓́̔́̀̀̚͘͜͝͝͝͝͠k̴̘͉̞͓̭a̩̭̝̺͒́̌͝ǎ̵̧̙̗̭̺͕̽̈́͗͑͒̓̈́͗͘ͅͅǎ̫͗t̷̛̛̫̦̙̪̥͚̘͙̘̭̫̹̺̑̂̋͋͂͌̿͗̚͘ͅà̻͙̫͖̌̅P̴̦͓̫̠̋͘͝͝B̓K̜̀͜c̴͓͙̹̦͓̹̼͒̓͒͘͜ĥo̸̢͉͈͕͕͓̩̭̤̐̋̈́̋̑͝͝p̪͈̈͂͂͒̄͑͌̎͜͠͝(Ljava/lang/Object;)I

    move-result v22

    xor-int v25, v25, v22

    invoke-static/range {v23 .. v26}, Lcom/kashi/settings/view/SpecsTextView;->p̴̴ȩ͚̭̯̲̎̾̑͝͠t͊̌̾ḣ̷̞̫̥̈́̐̌̋͐̍a̶̧̢̛͈̜̺̘̮͚̺͎͎͈̦͌̈́͆̂͗̋͒͐̔͋͑͠͠͠k̷̺͎͑̈͂̓ớ̷̧͖͓̺̠̥̭̹͈̙̌̏͗̉̿͌̑̏͌̍̕̚͝͝o̵̘̮̤͎͓̩̼̲̊̄͗̀̋Ķ̷̢̧̧̖̜̗̪͉̮̤̦̹̹̦̱̫͖͉̰͈̙̓̌͗̃̈́͗̉̅̏̈̂̄͆̈̅͊̂̈͌̃̔͐̚͘͜͝K̃ã̸̸̧̢̧̱͙͈̬̫̪̥̥͚̺̏͊̌̋̾̾̃̓͗̋͂͂͂̚͘͜͠t͎̗̽n̷̡̛̰͖̭͉̮̱̱͗͂̂̐̌͘͝K̸̸̷̷̷̸̶̢̛̛̛̗̥̩̭̗͓͎̫̘̗̜̗̊́̂͊͌̽͐̌͗̇͑̌͘͝͝͝ͅB̥ẽ̶̢̛͓̫̘̤̼̱̱̺̦͎̐̂̍̓͋͒̈́͗͗͝Ķ̵̸̲͎͎̙͋̅̾a̧(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v2, v23

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->h̡͈̻̪̗̻̥͉̟̟̭̭̼͓̙̩͗̈͊̃̈́̂̾̈́̋̆͘͘͠͝͝o̢̢̫̠͆̐̏͘͜ǎ̸̸̸̮̗̩̭̦̌̐̎̔̚͜͝͠͝͠n̢͙͈̠͌̈́̑͠ą̸̭̭̱̈͜͜a̢̧̢̠͎͐̅͗̾͝͝ḁ̸̙̾͘a̰͎̱̫͌̆̿̋̈͋͂͜ǒ̷̶̵̢̠̤̝̺̎̌̌̄͗̾̎̍t̷̙̩̖͜͠ḩ̸̸̨̛̺̖͉̭͑́̈̂̎̈̎̐͘͜͜͝͝͝e̸̶̢̢̢̢̛̘̭̥̗̱̱͈̪̫̗̫͚̺̝͊͌͑̈̈̈́̂͂̌͆̉̋͌̈́̅͋̃͂ͅK̮̭̋̆͆͋k͗ã̴̬̪̺͈͈͆̌͌̎̄̑̃ͅc̸̷̨̛̛͓̠͎̫͓̃̔̌͗́̈͗͋̑̌̄̈̆̑̆͌͘͜͝P̸̸̛̬̯̫̘͕̼͎͎̅̑̂͑͌̂̌͆͋̚̚͘l̶̵͉̜̤̟̜̭̯͉̤̓̑̋͑̏͜͜͝(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_8a

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ä̸̡̩̥̫͚̠̠͚̗̖͇͊̐͝a̶̛͓͙̭̞͕̋̔͊̄̕ơ̡̮͎̺͈̎̔͗͌͗́͝͠͠ḁ̷̧̡̥̩̦͚̭͎̘̾̄͗̌͒̂̀̈́͌̚͝͝o̶̵̸͕͕̗͚̫̗̦̭͓̎͋̓̇̈̂̈͑̔́̌͂̈́͋͝c̸̟̪̝̫̺͐̈́̐͘ư̷̛̘̘̯͙̿̃̄͝͝o̡̻̐̃̈́at̶͖̂̃̅̌̉͠͝͝K̫̙̫̹̫̱̱̑̏̈͜͜nṅ̈B̴̷̴̹̫̫̫̦̊̌̒̑k̷̮̮̗̺̈̍̅̃̑̑̈͜ű̶̶̲͕̺̫̯̺̹͓̦̪͒͌̅̍̋̌̾̐͝͠͝ä̴̼͙̲̩̫͎̪͓̯͗̃̌͌̈̇̈́̅͋̃͘͝͝͝ͅờ͖̯̻͚͎̫̹̪̋̑̋̑́͝͝k̶̸̸̸̢̛̛̛̼͕̻̦̭̩͈̺̺̫̑̾́́̑̎͑̿͗̿͂̂̃̊̋̈̈́̽̈̚̚͘̕͜͝ͅ(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    const/high16 v3, -0x1000000

    goto :goto_8d

    :cond_8a
    const v3, -0x1

    :goto_8d
    invoke-super {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_90
    return-void
.end method
