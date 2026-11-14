.class public Lcom/kashi/settings/view/SpecsTextViewObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kashi/settings/view/SpecsTextView;
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/kashi/settings/view/SpecsTextView;


# direct methods
.method static constructor <clinit>()V
    .registers 52

    return-void
.end method

.method public constructor <init>(Lcom/kashi/settings/view/SpecsTextView;Landroid/os/Handler;)V
    .registers 54

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kashi/settings/view/SpecsTextViewObserver;->this$0:Lcom/kashi/settings/view/SpecsTextView;

    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 55

    move/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {v2}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->a̶̢̧̧̯̯͚͈̗̍́̔̌͗̑͘̚͠͝ē̶̖̤͋͝à̴̸̷̛̛̙̲͎̮̫̺̭̙̭̰̥͌͂̆̒̈́͗̌͜K̫̦̰̏͊́ĺ̛̫̻ko̸̸̱̯̹̫͋̈́̌́̎̑̄̉͜k̫K̵̟̭̭̈̔̂̃̕â͚̠̦̫̌̃̋̅ä̧͈̖͉̥̱́̈͋̐̈k̩Ḱ̮͌͜k̸̵̵̷̡̢̫̝̗͉̮̯͈͓̺̩̂̃͗̿͋͜͝B̸̸̷̸̡̛̛̘͎̼̤̥̩̻̻̥̲̺̫͉̙̺͚̗͙͖̗̖̲̭͓̤͂̃̿͑̈́́͋̌̋́̎̋̑͐̅̂̎̃̂̋̏̋́̐̏̾̄͗̆͋͘̚͘͜͝͝͠͝ͅp̶̸̸̸̢̲̦̘͈͈̠̲͈̘̂̈̈́a̱ń͉̻͗͠a̩͝k̶̢̯̀͗̏̈B̶̛̛̘̺͚̟̻̮̖͈͂̈́̈́̓̋͐̄ả̝͋K̭̭̀t̀̑ţ̵̪̭̞̭͗̋͊͑͑͂͊(Ljava/lang/Object;)Lcom/kashi/settings/view/SpecsTextView;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->á̸̧̫̗͎̞͑ţ̸̠̑́̌͗p̮̹̯͗h̛ç̸̸̷̹̜̹̦̩̻̗̙̿̽̑̒̄̌̌̃̈́̅͆̾̀̏̚͜͜͝͝ą̵̶̧̫̩̫̯̻̥͉͓̺̱̊̋̋̾͘͘͜͝B̪̅͌̈k͒̈́̃Ķ̸̡̧̛̘̼̮͖̭̞͎̅̉̎͋̋̂̏̌͐͋̋͜͝͝ͅḆ͋͌̋͝cc̴̸̴̴̡͖͈̫͉̜͓͇̯̠̹̮̤̝͓̹̠̈́̃̾̑͗͋̏̈̈́͋̽̂̕͘͜͝ȩ̌e̸̴̸̛̛̱̙̹̯̠̻̩̪̭̔̑̐̌̔͌͗̀̾̂͘͜͝P̶̯̂̈́̐̂͋tt̴̸̸̴̥̙̤̋̍̋a̶̷̛̩͓̩̿̀a̵͚͕̲̯͂̈́̎̏͋̅̂͜ą̵̸̵̸̧̛̫͚̼̦̥̭̪̫͚͕͙̟̫̱͓̤͙͉͓͉̯̃́̂͋̋͌̾͌̍͒͑̀̅̌̃͋͗̌̃͘̕͜͜͜͜K̭̺̯͐̃̊̃̆̚(Ljava/lang/Object;)V

    invoke-super {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
