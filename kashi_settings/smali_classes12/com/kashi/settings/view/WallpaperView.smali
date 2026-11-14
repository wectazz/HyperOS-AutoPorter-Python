.class public Lcom/kashi/settings/view/WallpaperView;
.super Landroid/widget/ImageView;


# instance fields
.field contextM:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 52

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 53

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/kashi/settings/view/WallpaperView;->contextM:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 54

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, v0, Lcom/kashi/settings/view/WallpaperView;->contextM:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 55

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Lcom/kashi/settings/view/WallpaperView;->contextM:Landroid/content/Context;

    return-void
.end method

.method public static h̛̪̱͂͑̏̂̈́̄̾̿͜͜͝Ṕ̶̸̧̧̛̛̫̗͎̺̺͕̭̺̙̟͐͌̑̿́̋̚͜͠Ǩ̶̸̸̸̸̸̷̢̢̨̡̺̰̫̘̩͓̭͕̪̼̩̗̫͓̗̲̫̼̮͚͎͕̺̻̹͓̆̋̃̉͗̄͌̌̿̅̈͒͐̈̌͊̅̎̇̈͐͂̆͒̂̈́̐̆͜͝͝͝t̸̵̶̠̯̗̪̲͊̍̋̎̃͑̌̅͗́͗̎̌̚ḩ̸̡̛͓̭̬͈͓̫̮̻̬̼͈̥̝͂̌͌̾̈́̅̈́̈̄͋̀͑̎̌͘͘hḩ̸̧̨̛̛̙̩̻̲͈̰̗͚̦̯̩̗̱̂̀̍͐͐͗̈́̀̈́͊̑̀̈́͋͘o̫͗͊͜͜͠u̸̸̸͚̖̮̻͕͑̿̃̃̇͝h͚̎ả̶̧͉̗͖̪̚͠k̶̷̸̶̸̨̨̦̮͉͉̩̹̲͇̯̯̫̮̠͇͕͉̦̪̝̠̭̥̪̊͌͌͒͆̈́̔̋͒̋̄̌̈́̋̈͗̾̎͐͌͑̈̾̍͘͘͘͜(Ljava/lang/Object;)Landroid/content/Context;
    .registers 3

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()I

    move-result v0

    if-gez v0, :cond_b

    check-cast p0, Lcom/kashi/settings/view/WallpaperView;

    iget-object v1, p0, Lcom/kashi/settings/view/WallpaperView;->contextM:Landroid/content/Context;

    :goto_a
    return-object v1

    :cond_b
    const v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 56

    move/from16 v4, p4

    move/from16 v3, p3

    move/from16 v2, p2

    move/from16 v1, p1

    move-object/from16 v0, p0

    invoke-super {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    invoke-static {v0}, Lcom/kashi/settings/view/WallpaperView;->h̛̪̱͂͑̏̂̈́̄̾̿͜͜͝Ṕ̶̸̧̧̛̛̫̗͎̺̺͕̭̺̙̟͐͌̑̿́̋̚͜͠Ǩ̶̸̸̸̸̸̷̢̢̨̡̺̰̫̘̩͓̭͕̪̼̩̗̫͓̗̲̫̼̮͚͎͕̺̻̹͓̆̋̃̉͗̄͌̌̿̅̈͒͐̈̌͊̅̎̇̈͐͂̆͒̂̈́̐̆͜͝͝͝t̸̵̶̠̯̗̪̲͊̍̋̎̃͑̌̅͗́͗̎̌̚ḩ̸̡̛͓̭̬͈͓̫̮̻̬̼͈̥̝͂̌͌̾̈́̅̈́̈̄͋̀͑̎̌͘͘hḩ̸̧̨̛̛̙̩̻̲͈̰̗͚̦̯̩̗̱̂̀̍͐͐͗̈́̀̈́͊̑̀̈́͋͘o̫͗͊͜͜͠u̸̸̸͚̖̮̻͕͑̿̃̃̇͝h͚̎ả̶̧͉̗͖̪̚͠k̶̷̸̶̸̨̨̦̮͉͉̩̹̲͇̯̯̫̮̠͇͕͉̦̪̝̠̭̥̪̊͌͌͒͆̈́̔̋͒̋̄̌̈́̋̈͗̾̎͐͌͑̈̾̍͘͘͘͜(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ľ̯̗Bp̸̸̶̛̛̛͓͕͈͙͖̯̱͎͇̯̗̦͇̫̌͗̑̈̾̌̆͝͝ͅê̦̺̫̮͎̘̏͘a̸̢̢̧͎̰̘̫̿̏̾̂͘ķ̶̴̷͓̘̥̺̯̼̫͈͈͎͒͌͑̂̿͌͗̈́̇̅̋̒͗̒͘K̨̛͈̱͓̭̗̮͕̑͑̾͗͗͘͘̚͝a̴̧̫̘̫̺̤͈̗̿͌̂̈́͝͝p̷̢͎̂͐̈́̍ẖl̞͚͕̙̪͕̯̂̒̑̅̑ơ̶̷̢̛̘̺͈͙͕͒̃̈́̎̈̆͘̕͠B̵̢̦̭́̋̄̃K̶̸̸̵̴̡̛͓̜̹͎̤̯͉͈̬̫͉̞͈̪̪͋͌́̔̃̆̂̑͌̀̽͒̂͑̋͋̚͝͝p̷̯͖͈͎̗̑̃͌̂̽̌̕a̷̮̱̫̺͐͊̑̃͑̄͘t̢̫̗̯̹̟̃͌̂̿̂͘͝ä́̎a̯̲̭̎͜͜͠B̴̧̧͖̱͙̙̦̻͈̥͚͇̂̔̎̀͂̆̃̂̀͌͑̿͂͝ͅ(Ljava/lang/Object;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-static {v1}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->k͈͕̇̅ṅ̡͋͌̈́lo͓͎͎̼͚͎̩͂͑̂͜͜ķ̸̸̨̧̛̗̭̫̫̩̮̝̙̯͉̝̪̭̎̏͋̎̃́̐͗͝B̸̷̘͈̟͉̯̼̮̺͎̼̱̦̫̂́̔̎́̌͋͗̈́̋̾̚͘̚͝aa̢͙̱̹̭̺̔͋͂͐̎͗̋͂͆͜͝a̷͊͘c̶̶̡̖͈͉̺̯̥̰̟̯͙͋̈́̋̂́̌̈́̾̈̏͋͌̈͂̕à̸̷̶̛̹̭̺̭̗̰̗̎̎̂̈́͘͜͝ͅt̚uë̢̱͎̰̖̯̅͋̔̿͂͋͌͝a͉e̴͗͠͝aa͝KhĶ̶̧̧̧̠͙̦̫̼̝͈̼̱̗̎̂̑͋͌́͗̍̈͜o͗̃̑́ț̸͙̥̼̗̩̂͐̂̏̿͘ͅǘB̶̸̺͕͉̼͉̯̠͋̿̋h̶̺̲̺̘͗̈͌͗̈́̃k̖̱̭̫̙̂͊ǒ̧̨̡̧̺͕̱͎̠͙̤̗̺͌̽͌́̆̅͌͂̋̐͌͘͘͜͠(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kashi/settings/view/AboutPhoneUIHelper$3;->ç̶̶̷̵̢̼̖͓̰̰͇̻̼̠̲̙̩͉͙̮̹͓͐̐͌̌̀̈́͋̔̏̾̂̂̃̈͋͊̈́̈̈͗̔̈́̉̈̆̚͘͜͜͠͝͝͝ͅK̷̷̵̬͎͎̭͎̦̺̃̋̂̅̌̑͘͝a̙̺̼̰̭̦̻̼̘̺̠̗̫̪͕̎̎͗̅̈͑͐̐̚͝t̅͗͑ct̥̮̍̂͌͜͝͝e͒o̸o̻̎̄̌͜ä̶̧̹̫̮̖́͆̌͑̂B̴̵͓̙̱͕͎̬̮̐̂̾̎̀̀́̆͜͝͝͝ā͈̫̱̅͊̉͊̈́k̶̹̼̂̅͒̾͜͝l̫̭͂͘t̸̸̴̝̱̪͎̖͚̿̑o̸̧̬̓̉͌̂͒́͝͠B̷̨̫̏̋̈̅K̸̴̸̢̧̧̼̫̫̱̫̹͎̙̙̙̪̫̪̯̲̫͓̤͈͕̈̂̈̀̊̿̽̈͊̓̐̿̇͋̋̈́̌͌̆̍̚͜͜͝͝͝ḁ̲͐̽͜k̢͚̥̱̗͉͈͇̃̈̋̏͑̀̑͗́̇̅̉̋͜(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
