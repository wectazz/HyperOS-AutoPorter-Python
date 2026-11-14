.class Lcom/kashi/settings/view/StorageProgressBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kashi/settings/view/StorageProgressBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kashi/settings/view/StorageProgressBar;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 52

    return-void
.end method

.method constructor <init>(Lcom/kashi/settings/view/StorageProgressBar;Landroid/os/Handler;)V
    .registers 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kashi/settings/view/StorageProgressBar$1;->this$0:Lcom/kashi/settings/view/StorageProgressBar;

    iput-object v2, v0, Lcom/kashi/settings/view/StorageProgressBar$1;->val$handler:Landroid/os/Handler;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ä̴̢̺̜́̄̋̚͜ͅḻ̴̫̟̈͆͆̄̄̋̚͜P̧̖͓̩̙͎̭̻̱͗̃̄͗̄̌͋͝͝͝p͚̬͋̃͘͠t̶͖͕̯̝̻̰̭̱́͂̎̋͑̊̃̍͋͋̋̒̚͜͝͝K̸̸̸̩͈̮̎̾͋͐̀̏Kuą̸̶̟̱̭͚̲̱̦͈̺̺̎̿̂͗̎͋̂̚͜͠p̛͉͎̄͋̈̃̾̾̈́͘͜͝e̶̸̸̵̴̸̢̛̛͚̯̝̹̭͚͓̫̯̻͇̬͚͙̮̰͚͓̰͓̦̠̹̬̫̲̪̻̜͓͋̃͗́͒̅̉̂͗͊̂̀̏̇̋̂̔̋̋͗̾̂̂͘̚͜͜͜͝͝͝͝k̺͂u̸̶̧͙͆̑̕oe͝p̸̨̪͕̼̙̝̂̄̎͌̌͂̊̂̈̚͝͠Ķ͈͚͓̺̯̅͋̌k̛̥̹̱͙̔͒̔̚č̷̭̫͎͈͕̝͚̺̐̌͑̑͂̈́̈́̀͜a̸̢̡̗̯̼͗̌̎͗̾͒̾͒t̺̮̂̋̂͜͝(Ljava/lang/Object;)I
    .registers 2

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ḻ͚̦̾c̯̯̗͌̀̅̈͘͝͝͝na̵̴̱̺͕͗̕ť̸̸̵̨̢̛͕͕̙̪̘̫̯͈͚̰̺̅̋̾͘P̷̢̭̈ů̷̴̶̺͉̫̹̩̘̻̅̌͋̋̔͑̔̊̋̾̒̽͌̕ͅa̸̱̦̙̍̌̎͘u̢̾c͎͈̆̀͌K̸̨̫̱̘̍͌͐ư̸̸̲̭̹̘̽̎̈̾̚ù̵̴͓̿̋̋͋ớ̷̢̧̛̛̫̝̫̭̟̯̩̫͎̞̩̫͙͈̈͋̒̆̅͗̂̈́̈͋͋͋̎̕͘͜͜͜ȩ̸͇̥̦̹͋̃̈́̋̋̓̄̚͘͝oe̫̫̍́͑̃͝͠ę͉̅ä̙ȃ̴̷̲̋̈͋ǔ̸̸̸̫̥͓͈͗͌͝ͅP̵̺̩̯̬̌ḧ̷̡̛̩̭͓͎̱̺̲̺̹̋͒̋̃̍̑̈́̆̚̕̚a̱̯͓̯͑̑̋́́͆͌̚͜p̶͓̈́a̫͓͐͜ų̸̰̮̮̏̍̃̑͌͊͗̿͂͐͋͂͝p()I

    move-result v0

    if-gez v0, :cond_d

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar;

    invoke-static {p0}, Lcom/kashi/settings/view/StorageProgressBar;->-$$Nest$mgetOccupiedStoragePercentage(Lcom/kashi/settings/view/StorageProgressBar;)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ḩ̵̼̲̗͇̦͚̭̍̚͘͠Ḱ̴̵͕̪̮̥̫̗͓̺̦͎̏̎̈́͋͗͌̅͗̀͌͜͜͝͝͝p̢̢̭̗͓̭̯̮̠̯̑͗̓͋̆̊̌͌͜͠Ḱ̢̘͓̽̌̇̌̂̚͘ḩ̷̶̸̵̱̯͚̺͎͌͌́͊̅̽̋͑̍̎͂͑͊̄̌̄̀͘͜͝͝t̴̴̠͉͚͕̱̭̫̩̑͗l̴̸̸̶̨̝͇͉̯̘͚͕̘̫͈̮̂͊͌̈̉͋̄̿͘͜͝ơ̶̵̸̧̗̪̫̺̰͈̠͎̠̬̻͋̀͒̋͐̀͘̚͝͝͝K̸̵̸̷̨̨̧͎̫͓̠̪͚̺̰͈̰͉̭̹͋͊̉̎̐͗͗̅̆̑͆̌͊͗̅̾͗̑̃̋̐͗̋̃̈͘̚â̵̧̨͈̰͖̜̫͎͓̱̦̘̫̅̾̾̾̑̈́̌̍̈́͌̀̿̑̌͌̂̂̐̚͝a̩͚͂̈̋͜͝K̷̷̛̩̺͓̲̰̫̹͈̦̃͂̀̿́͌̍̈͘K̥͈̗̖̼̑͋̕(Ljava/lang/Object;)Landroid/os/Handler;
    .registers 3

    invoke-static {}, Lcom/kashi/settings/view/AboutPhoneUIHelper$1;->ḻ͚̦̾c̯̯̗͌̀̅̈͘͝͝͝na̵̴̱̺͕͗̕ť̸̸̵̨̢̛͕͕̙̪̘̫̯͈͚̰̺̅̋̾͘P̷̢̭̈ů̷̴̶̺͉̫̹̩̘̻̅̌͋̋̔͑̔̊̋̾̒̽͌̕ͅa̸̱̦̙̍̌̎͘u̢̾c͎͈̆̀͌K̸̨̫̱̘̍͌͐ư̸̸̲̭̹̘̽̎̈̾̚ù̵̴͓̿̋̋͋ớ̷̢̧̛̛̫̝̫̭̟̯̩̫͎̞̩̫͙͈̈͋̒̆̅͗̂̈́̈͋͋͋̎̕͘͜͜͜ȩ̸͇̥̦̹͋̃̈́̋̋̓̄̚͘͝oe̫̫̍́͑̃͝͠ę͉̅ä̙ȃ̴̷̲̋̈͋ǔ̸̸̸̫̥͓͈͗͌͝ͅP̵̺̩̯̬̌ḧ̷̡̛̩̭͓͎̱̺̲̺̹̋͒̋̃̍̑̈́̆̚̕̚a̱̯͓̯͑̑̋́́͆͌̚͜p̶͓̈́a̫͓͐͜ų̸̰̮̮̏̍̃̑͌͊͗̿͂͐͋͂͝p()I

    move-result v0

    if-gtz v0, :cond_b

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar$1;

    iget-object v1, p0, Lcom/kashi/settings/view/StorageProgressBar$1;->val$handler:Landroid/os/Handler;

    :goto_a
    return-object v1

    :cond_b
    const v1, 0x0

    goto :goto_a
.end method

.method public static h̴̵̨̦̼͈̗̺͉͎̫͓̩͙̾̎͋̄̃͌͊̈́̈́̂́̉͑͌̅͌͘͜͜͜͝K̶̦͕̤̂͗̅a̴̠͎̹̘̻͉͌̋͒̋̈́̅͋̿͘͜͝͠l̶̴̡̢̧͉͕̗̗͚̦͉̦̗̱̠̽̿͊ä̸̸̧̧̨̛̫̙̰̼͓͎͚̻̺̫͕͚̗̯̽͐̀̎̑͌͌̋̆̾͗̀͌̈́̃̒̾͂̑̒̅͜͝͠n̸B̺͋Ķ̷̧̛͖̯̫̮̥̭̯͈̟̙̫̫̹̝̂̄̌̍̉̌͘̚͜͝͠n͌t̸̛͚̫̮̥͂͑̃͋͋́̑̂̎͜Ķ̸̶̛̛̬̬̮̹̩̹͚̈͊͒͗́̈͝ǔ̢̡̥̭̙̤̹͈̗̺̺͕͎͌̐̒͗̃̋̍̕͝͝P̵̴̸̸̷̸̸̸̵̷̧̢̧͓̘̭͕̹͎͚̗͎̠͈̄̏̅͂̎͐̄͌̄͐́͘̚͜K̼͉o̷̶̵̱̺̹̪̤̫̞͕̱͌̅͌̂̽̉̈͌̾͐̉͘͜͜͝͝(Ljava/lang/Object;I)V
    .registers 3

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$1;->ä̷̝̰̰̕ṱ̴̴̬̫͈̤̤͎̞̬̗͙͚͌͆̌͑̑̔̈́̂̑̌͘̚c̸̶̨̢̫̖͇͚͗͂̔̾͐̂̚͘̚K̛̟͇̝͚̰̺̔̌͗a̩̺͈͌͝ò̮̑͝ǫ̡̢̨̛̦̤̫̻͈̯͕̌͊͑̈͜Kn̢̨͎̞̫͚̺̼̎Ḱ̢̞̗͚̥̆̑́̍̌͌̉͘ͅa͈ļ̶̸̧̨̧̫͓̩̥̙̟̥͙̟̠̺͈̯̫̼͚̯͎̺̿͐̇͂̅̌̆̅̿́̑̌́̂͑͋̿̑͘͘͜o̤̫͚̘ä̪̘̩̮́̈̐͘P͎̫̫̔͌̔̔̔͌͘͜͝͝p̸̞̼̎͘po̥̠̔͆ñ̸̵̛͈̰̪͈͎͎̞̯͊́̚̚͜͝K̶̫̹͓̎̂̋̈͋͝e̶̲̞̓̂͘̚o͚̠̿̈́̔͝à͓̫̮̬͈͗̚͠͠on̫̩̾͋́̽̾̈́̃͜K̸̸̨̡͈̹̗͈̆̏̂͌̌͜l͎̗̺͈̠͘͠u()I

    move-result v0

    if-gez v0, :cond_c

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar;

    invoke-static {p0, p1}, Lcom/kashi/settings/view/StorageProgressBar;->-$$Nest$msetStorageLevel(Lcom/kashi/settings/view/StorageProgressBar;I)V

    :goto_b
    return-void

    :cond_c
    goto :goto_b
.end method

.method public static u̫o̸̧̢̫͓͎̫̯̤̗̪͚̬̞̫̤̫͈̮͚̪̥̘̾̋̀́͒͂̾̍͋̿̌̂͐̋̉̓̎͗̔́͒̚͜͝͝͝ä̢̛͎̦́̄̄̀̈́͌͜͜c̶̴̹̱̮̲͓̲̤̼̗̜͓͈̑̎̈́̾͗̃̃̽̃̿͌͋̈̿̚͘͝͝͠͝͝h̸̭̝eK̛̠̦̯͌̉a̧͉͖̦̐̎̾͗͘ô̵̖͎͉͚̌l̸̤̱̘̪̭̯̯͌͌̂̿͐͘͝B̶̸̵̷̨̛̯͙̯̪̦͚͎͈̙̝̖̯̼̗̥̐̌̋͌̔̋̿̄̈̋̍̀̈́͝͝͝a̸̧̧̝͙̻̲͚͉̘̖̘̹̼̫̯̠̫̍͐͌͗̾̔͆͋̌́͗̑̊̅̏̄̍͘͘͜͝ͅK̵̫͒̈́̉̈̚͝Ǩ̴̡̢̥̯̗͓͖͈̼̫̥̦̎̽̊̐̎͊̅̋̚̚ç̸̸̷̧̙͚̥͉͙̺̱̑̂̂̓̍͌́͗̑̎͂̂̈́͘B̧̛̯̯̦͈̮̤͐̿̂͠(Ljava/lang/Object;)Lcom/kashi/settings/view/StorageProgressBar;
    .registers 3

    invoke-static {}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->t̎K̛͉̖̔̚͜a̷̸̹̯̺͚̦̭̭̎̈͒̎̌̐͒̈́͘͜͝l̷̸̛̛̦̭̭̘͚͈̗̫̜͙̄̈̂̈́͌̎̄̐͊̄͌̚n̫̭̘̯̫̺̑̉̈́͋͒͊̃̿́̇̅͜͠ň̷̶̘͒o̸̸̸͕̘̘̫̩̲̱̗̗͉͗̂͒͒̏̃̒͒̈́͐̈́̈́̅̚͜͝͝͠n͕̑̐̈͝ǩ̴̡͙̦͎̺̺̫̌̅̏̈́͂P̵̷̨̛̭͓͚̺̗̻̮͉͙̘̪̖̘̅̄͗̎̋̄̈̈́́͑̈̈́͌͜͝ȯ̸̯̙̈́̒͠͝Ķ̵̶̸̴̶̷̧̧̢͉̤̫̘̯̻̹͉̯̥̫̫͎͈̺̦̘̦̘̥̫͕̜̂̌́̉̈̎̆̑̀̄̈́̿̅̏͋͌͊̋̾̈́̆̆̌̃͗̀̌̿̿̌̃̒̋̚͘͜͝͝a̧̧̛͐̑͌̄̾̊̿͜͝ȃḻ̵̶̈͋͝o̷̢͈̯̻̩̯͓̪̽͐̑͐͜p̸̸̲̝̻͈̅͊̈͘͘͝()I

    move-result v0

    if-gez v0, :cond_b

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar$1;

    iget-object v1, p0, Lcom/kashi/settings/view/StorageProgressBar$1;->this$0:Lcom/kashi/settings/view/StorageProgressBar;

    :goto_a
    return-object v1

    :cond_b
    const v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 55

    move-object/from16 v3, p0

    invoke-static {v3}, Lcom/kashi/settings/view/StorageProgressBar$1;->u̫o̸̧̢̫͓͎̫̯̤̗̪͚̬̞̫̤̫͈̮͚̪̥̘̾̋̀́͒͂̾̍͋̿̌̂͐̋̉̓̎͗̔́͒̚͜͝͝͝ä̢̛͎̦́̄̄̀̈́͌͜͜c̶̴̹̱̮̲͓̲̤̼̗̜͓͈̑̎̈́̾͗̃̃̽̃̿͌͋̈̿̚͘͝͝͠͝͝h̸̭̝eK̛̠̦̯͌̉a̧͉͖̦̐̎̾͗͘ô̵̖͎͉͚̌l̸̤̱̘̪̭̯̯͌͌̂̿͐͘͝B̶̸̵̷̨̛̯͙̯̪̦͚͎͈̙̝̖̯̼̗̥̐̌̋͌̔̋̿̄̈̋̍̀̈́͝͝͝a̸̧̧̝͙̻̲͚͉̘̖̘̹̼̫̯̠̫̍͐͌͗̾̔͆͋̌́͗̑̊̅̏̄̍͘͘͜͝ͅK̵̫͒̈́̉̈̚͝Ǩ̴̡̢̥̯̗͓͖͈̼̫̥̦̎̽̊̐̎͊̅̋̚̚ç̸̸̷̧̙͚̥͉͙̺̱̑̂̂̓̍͌́͗̑̎͂̂̈́͘B̧̛̯̯̦͈̮̤͐̿̂͠(Ljava/lang/Object;)Lcom/kashi/settings/view/StorageProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/StorageProgressBar$1;->ä̴̢̺̜́̄̋̚͜ͅḻ̴̫̟̈͆͆̄̄̋̚͜P̧̖͓̩̙͎̭̻̱͗̃̄͗̄̌͋͝͝͝p͚̬͋̃͘͠t̶͖͕̯̝̻̰̭̱́͂̎̋͑̊̃̍͋͋̋̒̚͜͝͝K̸̸̸̩͈̮̎̾͋͐̀̏Kuą̸̶̟̱̭͚̲̱̦͈̺̺̎̿̂͗̎͋̂̚͜͠p̛͉͎̄͋̈̃̾̾̈́͘͜͝e̶̸̸̵̴̸̢̛̛͚̯̝̹̭͚͓̫̯̻͇̬͚͙̮̰͚͓̰͓̦̠̹̬̫̲̪̻̜͓͋̃͗́͒̅̉̂͗͊̂̀̏̇̋̂̔̋̋͗̾̂̂͘̚͜͜͜͝͝͝͝k̺͂u̸̶̧͙͆̑̕oe͝p̸̨̪͕̼̙̝̂̄̎͌̌͂̊̂̈̚͝͠Ķ͈͚͓̺̯̅͋̌k̛̥̹̱͙̔͒̔̚č̷̭̫͎͈͕̝͚̺̐̌͑̑͂̈́̈́̀͜a̸̢̡̗̯̼͗̌̎͗̾͒̾͒t̺̮̂̋̂͜͝(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v3}, Lcom/kashi/settings/view/StorageProgressBar$1;->u̫o̸̧̢̫͓͎̫̯̤̗̪͚̬̞̫̤̫͈̮͚̪̥̘̾̋̀́͒͂̾̍͋̿̌̂͐̋̉̓̎͗̔́͒̚͜͝͝͝ä̢̛͎̦́̄̄̀̈́͌͜͜c̶̴̹̱̮̲͓̲̤̼̗̜͓͈̑̎̈́̾͗̃̃̽̃̿͌͋̈̿̚͘͝͝͠͝͝h̸̭̝eK̛̠̦̯͌̉a̧͉͖̦̐̎̾͗͘ô̵̖͎͉͚̌l̸̤̱̘̪̭̯̯͌͌̂̿͐͘͝B̶̸̵̷̨̛̯͙̯̪̦͚͎͈̙̝̖̯̼̗̥̐̌̋͌̔̋̿̄̈̋̍̀̈́͝͝͝a̸̧̧̝͙̻̲͚͉̘̖̘̹̼̫̯̠̫̍͐͌͗̾̔͆͋̌́͗̑̊̅̏̄̍͘͘͜͝ͅK̵̫͒̈́̉̈̚͝Ǩ̴̡̢̥̯̗͓͖͈̼̫̥̦̎̽̊̐̎͊̅̋̚̚ç̸̸̷̧̙͚̥͉͙̺̱̑̂̂̓̍͌́͗̑̎͂̂̈́͘B̧̛̯̯̦͈̮̤͐̿̂͠(Ljava/lang/Object;)Lcom/kashi/settings/view/StorageProgressBar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kashi/settings/view/StorageProgressBar$1;->h̴̵̨̦̼͈̗̺͉͎̫͓̩͙̾̎͋̄̃͌͊̈́̈́̂́̉͑͌̅͌͘͜͜͜͝K̶̦͕̤̂͗̅a̴̠͎̹̘̻͉͌̋͒̋̈́̅͋̿͘͜͝͠l̶̴̡̢̧͉͕̗̗͚̦͉̦̗̱̠̽̿͊ä̸̸̧̧̨̛̫̙̰̼͓͎͚̻̺̫͕͚̗̯̽͐̀̎̑͌͌̋̆̾͗̀͌̈́̃̒̾͂̑̒̅͜͝͠n̸B̺͋Ķ̷̧̛͖̯̫̮̥̭̯͈̟̙̫̫̹̝̂̄̌̍̉̌͘̚͜͝͠n͌t̸̛͚̫̮̥͂͑̃͋͋́̑̂̎͜Ķ̸̶̛̛̬̬̮̹̩̹͚̈͊͒͗́̈͝ǔ̢̡̥̭̙̤̹͈̗̺̺͕͎͌̐̒͗̃̋̍̕͝͝P̵̴̸̸̷̸̸̸̵̷̧̢̧͓̘̭͕̹͎͚̗͎̠͈̄̏̅͂̎͐̄͌̄͐́͘̚͜K̼͉o̷̶̵̱̺̹̪̤̫̞͕̱͌̅͌̂̽̉̈͌̾͐̉͘͜͜͝͝(Ljava/lang/Object;I)V

    invoke-static {v3}, Lcom/kashi/settings/view/StorageProgressBar$1;->ḩ̵̼̲̗͇̦͚̭̍̚͘͠Ḱ̴̵͕̪̮̥̫̗͓̺̦͎̏̎̈́͋͗͌̅͗̀͌͜͜͝͝͝p̢̢̭̗͓̭̯̮̠̯̑͗̓͋̆̊̌͌͜͠Ḱ̢̘͓̽̌̇̌̂̚͘ḩ̷̶̸̵̱̯͚̺͎͌͌́͊̅̽̋͑̍̎͂͑͊̄̌̄̀͘͜͝͝t̴̴̠͉͚͕̱̭̫̩̑͗l̴̸̸̶̨̝͇͉̯̘͚͕̘̫͈̮̂͊͌̈̉͋̄̿͘͜͝ơ̶̵̸̧̗̪̫̺̰͈̠͎̠̬̻͋̀͒̋͐̀͘̚͝͝͝K̸̵̸̷̨̨̧͎̫͓̠̪͚̺̰͈̰͉̭̹͋͊̉̎̐͗͗̅̆̑͆̌͊͗̅̾͗̑̃̋̐͗̋̃̈͘̚â̵̧̨͈̰͖̜̫͎͓̱̦̘̫̅̾̾̾̑̈́̌̍̈́͌̀̿̑̌͌̂̂̐̚͝a̩͚͂̈̋͜͝K̷̷̛̩̺͓̲̰̫̹͈̦̃͂̀̿́͌̍̈͘K̥͈̗̖̼̑͋̕(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v3, v1, v2}, Lcom/android/settings/kashi/AboutPhoneUIHelper$2;->ę̷̴̧̙̺̭̮̯͈͈̻͙̂̎͌́̽͆͒̎͋͘͜͜͜h̸̫̯̘̔̂̈k̷̖͂̐̊o̰̻͓̻̼̺̦͉̚a̢̛̛̘̺̮̥̫̮͈̹͖̒͌̔̅͌̐̾̚̕͜͝͝͝a̵̶͎̬̺̱̦̠̅̂̐̑͂͐̿͐̈͘͜͝͝͝c̷̴̶̴̸̶̷̵̸̡̨̤͉̤͎͎̯͉̲͕̖̯̝͕̠̺̱͈͓̰̭̺͚̠͐̂̈́̂̅͋͌͒͗̆̾̎̈́͒̈͗̍̑̃̋͘͘͜͜͝͝c͋ḩ͕̺̯͕͌̎͌lp̫͈̰̒̀̋c̷̛͎͇͇͚̎͑͌̄͌̀̚͜ĕ̸̴̸̶̹̫͉͎͚̹̭́̌̑̌l̥͈̗̅̈̕o̬̫k̷͉̫͋͗̄k̛͈̇n̴̶̛͇̯̫̐̿͌̑̈͌̎͌͐͝t̷̷̸̛͈͚͉̋̓͐̅͐͘̚B̫́̎͜c̸̢̢͎̯̤̲̱̪͚̹͚̱̎̒͐̿̎̈̈́a̛̱̦̙̎̋̌(Ljava/lang/Object;Ljava/lang/Object;J)Z

    return-void
.end method
