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
    .locals 52

    return-void
.end method

.method constructor <init>(Lcom/kashi/settings/view/StorageProgressBar;Landroid/os/Handler;)V
    .locals 51
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

.method public static K̴̦̮͈͖͈̦̹̔͂̂̈̂̂̈́̂̅͝c̬͎̲̯̏̇͑͑̅͜͝â̈ň̷̫̻̺̪͗̾̅̋B̸̧̨̛̩͓͕̮̫͉̙̪͎̬̈́͑͒̐̾̋̈́́͂̚̕ķ̶̶̷̴̶̧̛̘͈͎͓͈̙̫̠̱̲̭͉̱̈́͐͌̂̈̍͌̄̂̆̔̌̐̿̈̈́͐̋̈̌̉̾͗̋̏͗̀͋͌̈̂͋͘͘͘̚̚̚͜͝͝͝͝͝͝͠ͅu̖c̷̶̡̯̻̘̪̯̅̎͋̋͋ĺ̖͚k̷̷̫̟̻̦̼̾͆̌͗̈́͠͠P̴̶̵̤̲͙͕̗̮̫̯͌̄̑͋̎̈́͑͋͘͘͝͠͠K͓͙̗̺͈͙͈͑͆͌̌̋̋̂͌̔͘͝c̶̸̛͌͗͜͠͝͠h̸̷̸̸̼͓̙̘͙̫͚̰̗̑͋̆̿̄̑͌̄̾͑͌̈l̹̲͚̰̙͜͠ĕ̷̺̫̲̌͗̌͌͜B̢̛̫̈̈́a̘k̛͈͉̅̑Ǩ̸̢̧̛̗̩̂̚̚p(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$1;->l̴̷̟̭̩̹̥͉̄̌͘k̹̹̼̫̺̒̌̊̾͝n̷̴̶̢̧̧̧̛͕̩̘̗̗̺̮̖͚̺̯͕̘̥͚̘̜͋̒̔͑̋͗͊̿͗͑̅̈́̌̚͘̚͜͜͠͠ͅa̢̛͉̘͓̲̬͓̋͋͊͐ä̸̵̷͚͓̥̭̈́̾̎̌̈͂̌̇̀͑͘͜͜͝͝n̩̋̚͠h̵̹̻͘a͕͝l̛̘̂ḱ̸̟̻̯̖͕͈͌͌̅͝ḁ̷̷̵̴̥͉͇̙̈͗̈̕̕͠͠ẗ̶̴̨̛̘͕̱̫̘͈̼͈̫̹̞̙́̈̓̈́̃͌̿̋̈́͂̈͐̚̕͜͝B͚c̛̤̈̾́̂͝P̻̺͝a͊̾͜ẗ̸̶̘̠̠̦̦̜̰̥̹͓͎̩̭͓̘̹͈́̄̌̔̎́͌̅͋̕͜͜͠͠͝͠ǎ̴̧̡̧̛̮͓͕̲͚͉͌̄̌̈́̃̌̚͠ȏ̪̦̺͓̞͈͎͓̺̺͐͑̋͒̌͜l̅̍̌c̷̷̛̹̪̥͈͋̃̎̄̈͜͝ͅ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar;

    invoke-static {p0}, Lcom/kashi/settings/view/StorageProgressBar;->-$$Nest$mgetOccupiedStoragePercentage(Lcom/kashi/settings/view/StorageProgressBar;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ã́̉͜ṷ̸̠͈̱͒͝lư̸̴̶̷̶̸̺̫͚̯̮̙̪͓̙͖̫̠̥͎͎̭̊̎̾͊̀̑̅̅̈̾̋͘͜͝ͅâae͙͓͌̑o͊̎̂ơţ̜̥̭̋̂͊̆͠͝ok̸̈ȃ̻̊p̧̦͕͈̠̆͒̃͋P͎̱̏̅͋̈́a̭͝e̸̶͕̞̤͋̄͋̈́̕ḧ̸̷̸͕͇̻̭̥̩̹̰͕̗̟́̾̅͊͂̄̽̂̋͝͝͝oo̠͈n̗̪Kh͙̃̈́̾͂͋͗l̫̜̯̎͊t͎̕ä̧͚́̀͘ä͓́K̴̨̭̔̚͜on̛̦̮̞̰̫̫͓̫̲̯̘̉̀̈́̄͝͝ͅù̸̲̮̮̙͓̄̽͌̐͂̓͘͝͝K̈́̃̃̅͑̇̈͒̎̕ő̹̫̗̎͘K͇̠͖͈͊̕̕͝͝Ķ̩̫̬̹̦̺̥̈͌̈́̍̅̚͠͝͝p̨̢̧̫̗̲͙̖̔̿̓͗͑͗͒̋͐̄̆̑̋͝͝t̪͝ö̋͝(Ljava/lang/Object;)Lcom/kashi/settings/view/StorageProgressBar;
    .locals 2

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$1;->l̴̷̟̭̩̹̥͉̄̌͘k̹̹̼̫̺̒̌̊̾͝n̷̴̶̢̧̧̧̛͕̩̘̗̗̺̮̖͚̺̯͕̘̥͚̘̜͋̒̔͑̋͗͊̿͗͑̅̈́̌̚͘̚͜͜͠͠ͅa̢̛͉̘͓̲̬͓̋͋͊͐ä̸̵̷͚͓̥̭̈́̾̎̌̈͂̌̇̀͑͘͜͜͝͝n̩̋̚͠h̵̹̻͘a͕͝l̛̘̂ḱ̸̟̻̯̖͕͈͌͌̅͝ḁ̷̷̵̴̥͉͇̙̈͗̈̕̕͠͠ẗ̶̴̨̛̘͕̱̫̘͈̼͈̫̹̞̙́̈̓̈́̃͌̿̋̈́͂̈͐̚̕͜͝B͚c̛̤̈̾́̂͝P̻̺͝a͊̾͜ẗ̸̶̘̠̠̦̦̜̰̥̹͓͎̩̭͓̘̹͈́̄̌̔̎́͌̅͋̕͜͜͠͠͝͠ǎ̴̧̡̧̛̮͓͕̲͚͉͌̄̌̈́̃̌̚͠ȏ̪̦̺͓̞͈͎͓̺̺͐͑̋͒̌͜l̅̍̌c̷̷̛̹̪̥͈͋̃̎̄̈͜͝ͅ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar$1;

    iget-object v1, p0, Lcom/kashi/settings/view/StorageProgressBar$1;->this$0:Lcom/kashi/settings/view/StorageProgressBar;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ḩ̫͂p̷̷̵̫̫͚̫̝̃̌̆̾ͅpkp̸̸̴̛̫͎̻͕̦̫̮͚̮͎̯͓͐̊̌̑̐͌̐̂̌̾̚̚͘͜͜͠K̗͊a̗̦͗̈͗͌̚͜a̝̋ü̵̷̶̶̶̷̸̶̡̡̧̯̘̱̮̖͚̗̫̭̱̗̰̰͙̥͕̲̭͇͚̭̤̦̑͗͌̆̃͗̋̎̃̌̉̿̈́̌̑̿̑̈̈̾̔̋̿͋̈̈́͂̈́̐̋͘͘͜͜͜͜͠͠͝͝k̭̬̪̰̲̅̾̈̌̂̄̏́͘c̶̴̫͉͈̭̻͒̂̈̏̈̂͘͝ő̸̩͎k̭̰̂̂̈͌̃̈́̕ko̶̼̒̓a̴̧̙͂͑̀̇͗̌̄̕͝K̲̺̞͚̘̫̬̆̎͗ṷ̧̈́̑̾̿̈́̋͘ḁ̸h̥̀B̫̘͈̝̠̜̃̌͌̎̀̑͜c̷̸̶̵̡̢̛̻͚̤̼͓͖̫̺̟̻͐̾͒̆͒̂̃̇̄͌̈́p̛͉̱͙̯̭̰̫̪̃͑͜͜͝a͙̥͂͌̕(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ţ̴̶̹̖͉̭̔̂͌̈̑͒͐̚͘͝Ḃ̸̛̪̮̜̖̖͗̋̍̽̀̎̑͌͘ͅu͚͐̈̃ư̶͈̙̥͎̭͓͇̹̫̮͉͚̍̆̌͌͗̿̈́̈͗̀̾́̉͌͋͋͜e̸̷̸̢̢̘̙͎̩̦̭͕͕͕͑̑̀̂̔̀̃̎̚ě̶̮̗̝̗͈̓̃̈́̂̀̈͌̔͌̌͋͝ţ̸̵̸͈͎̱̫̝̦̹͎͇͎̱̲̫̼̱̹̘͓̲͈̋̐̿͋̃͌̈́͂̃̏̌̇̿̓̿͋̋͋̋̃͋̑͘̚͜ͅţ̴̢̗͎̯̩̰͌̽͒͐͑͌ö̸̯̘̗́͂̆͋͒̌a̛̖͓̋͂̏̈́̑̍̈́̌͜͜͝K̋̆ơ̴̪̝͉̿̉͗͂̂̂̈́͘͝B̥̹̺͕͈̿̏̔͋̆͘͝ö̵̞̹̺̺̼̖̫̖͕͈̙̽̂̌̃̃͑͘͜͝l̀ő̶͓̲̀ǒ̜̥͓͈̈́͌h̢̢̙̑͜t̪̲͓͖̑̃̕a͗u̹̗͝()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar;

    invoke-static {p0, p1}, Lcom/kashi/settings/view/StorageProgressBar;->-$$Nest$msetStorageLevel(Lcom/kashi/settings/view/StorageProgressBar;I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static kä̴̷̷̧̛̟͕͚͉̦̤̯̯͈͉̜̯̲̰̭̜̺̮̩̼͌̃̃̋͂͗͊̑̌̐̑̽̈͗̎͗̈͋͗͊̌͐̚͘͘͜͝a̶̲̋͌l̢̨̤̈Ǩ̴̴̫͈̫̹̋̑̎̂͝o̶̴̢̞̹̘͎̜͊̃͗̊͌͗t̷̶̴̛̛̺̫͕̗̰̟̦̹̯̲̠͈̂͂̍̾̿̍͌͝͠ę̸̛̲̠̙̹̩͌̋̅̂̿̒̀͐͜K̷̰̭̿̑̈̌͜͝h̑̑p̑̓h̟̀̂á̶̗̼͊p̸̶̨͙̫̞̻̫̩͚̥͈̺͕͗̂̋̀͐̑̅͝͝͠ųn̶̸̸̡̗̯͓̘͚̰̘̱̙̺͗̓̈̋K̸̢͉̖͓͆͋̑̂͑̾̋͗̚o̲̙͂̈͠p̸̴̦̱͎̲̻̞̦͎̺̙͓̭̘̻̌͋̋̂̌̄͊̃̈́̈́͒͐̋̾̈́̚͝͠ṋ̵̥̋̎̈͗͑͜n̷̷̰̭͙͑̄̑͑͝a̸̷̛̤͗̎͜B̧͚̩̃(Ljava/lang/Object;)Landroid/os/Handler;
    .locals 2

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ok̸̷̷̫̼̘̹̱̀̈͘ç̸̴̸̴̶̧̧̱̮̮̆͑̔͑̄̊ȩ̵̶̡̺͑̾̎̏̅́̔͠n̨̰̜̱̎͊̀̔̐̀̈̌̌͘t̷̸̨̥̘̠̖̬̯̘͌́̽̈́̾̊̎̃̚͝͝Ǩ̷̫̫͚̤̻̪́͒͒͐̄̄͌̋͠͠à̟̠̱͗͘Ķ̷̧̨̨̛̛͎̭͎͉͐̿̑̃̎̈́̊̐̀͘͘̚͜͝n̦͋͝P̸̸̸̸̴̷̧̧̧͎̫̦͎͓̫͖̫͕̘̪̪̺̺̼͖͓͖͎̫̌̿̌̈̈́̀̀̂̿̎̌́̋̊̌̍̌̔̈͘͜͝͝oḁ̴̅̔̈́h̴̘̫͖̪͎̀͝a̸͈̎̋̉͜ą̸̮̪̗̲̮͋́̑͐͜͝ḱ̷̯̈́͗ą̷̸̶̸̨̛̙̱̤̯̭͚̙̭̱̯̯͓̺̇̈͒̋̂̄͌͌̈́̋̂̎̑͐̈́̈̕͘͘͜͠͝͝ͅoP̸̶̫̬͕̙̯̎̽͐͆̾̿̎̚͜͝ͅ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/StorageProgressBar$1;

    iget-object v1, p0, Lcom/kashi/settings/view/StorageProgressBar$1;->val$handler:Landroid/os/Handler;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 54

    move-object/from16 v3, p0

    invoke-static {v3}, Lcom/kashi/settings/view/StorageProgressBar$1;->ã́̉͜ṷ̸̠͈̱͒͝lư̸̴̶̷̶̸̺̫͚̯̮̙̪͓̙͖̫̠̥͎͎̭̊̎̾͊̀̑̅̅̈̾̋͘͜͝ͅâae͙͓͌̑o͊̎̂ơţ̜̥̭̋̂͊̆͠͝ok̸̈ȃ̻̊p̧̦͕͈̠̆͒̃͋P͎̱̏̅͋̈́a̭͝e̸̶͕̞̤͋̄͋̈́̕ḧ̸̷̸͕͇̻̭̥̩̹̰͕̗̟́̾̅͊͂̄̽̂̋͝͝͝oo̠͈n̗̪Kh͙̃̈́̾͂͋͗l̫̜̯̎͊t͎̕ä̧͚́̀͘ä͓́K̴̨̭̔̚͜on̛̦̮̞̰̫̫͓̫̲̯̘̉̀̈́̄͝͝ͅù̸̲̮̮̙͓̄̽͌̐͂̓͘͝͝K̈́̃̃̅͑̇̈͒̎̕ő̹̫̗̎͘K͇̠͖͈͊̕̕͝͝Ķ̩̫̬̹̦̺̥̈͌̈́̍̅̚͠͝͝p̨̢̧̫̗̲͙̖̔̿̓͗͑͗͒̋͐̄̆̑̋͝͝t̪͝ö̋͝(Ljava/lang/Object;)Lcom/kashi/settings/view/StorageProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/StorageProgressBar$1;->K̴̦̮͈͖͈̦̹̔͂̂̈̂̂̈́̂̅͝c̬͎̲̯̏̇͑͑̅͜͝â̈ň̷̫̻̺̪͗̾̅̋B̸̧̨̛̩͓͕̮̫͉̙̪͎̬̈́͑͒̐̾̋̈́́͂̚̕ķ̶̶̷̴̶̧̛̘͈͎͓͈̙̫̠̱̲̭͉̱̈́͐͌̂̈̍͌̄̂̆̔̌̐̿̈̈́͐̋̈̌̉̾͗̋̏͗̀͋͌̈̂͋͘͘͘̚̚̚͜͝͝͝͝͝͝͠ͅu̖c̷̶̡̯̻̘̪̯̅̎͋̋͋ĺ̖͚k̷̷̫̟̻̦̼̾͆̌͗̈́͠͠P̴̶̵̤̲͙͕̗̮̫̯͌̄̑͋̎̈́͑͋͘͘͝͠͠K͓͙̗̺͈͙͈͑͆͌̌̋̋̂͌̔͘͝c̶̸̛͌͗͜͠͝͠h̸̷̸̸̼͓̙̘͙̫͚̰̗̑͋̆̿̄̑͌̄̾͑͌̈l̹̲͚̰̙͜͠ĕ̷̺̫̲̌͗̌͌͜B̢̛̫̈̈́a̘k̛͈͉̅̑Ǩ̸̢̧̛̗̩̂̚̚p(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v3}, Lcom/kashi/settings/view/StorageProgressBar$1;->ã́̉͜ṷ̸̠͈̱͒͝lư̸̴̶̷̶̸̺̫͚̯̮̙̪͓̙͖̫̠̥͎͎̭̊̎̾͊̀̑̅̅̈̾̋͘͜͝ͅâae͙͓͌̑o͊̎̂ơţ̜̥̭̋̂͊̆͠͝ok̸̈ȃ̻̊p̧̦͕͈̠̆͒̃͋P͎̱̏̅͋̈́a̭͝e̸̶͕̞̤͋̄͋̈́̕ḧ̸̷̸͕͇̻̭̥̩̹̰͕̗̟́̾̅͊͂̄̽̂̋͝͝͝oo̠͈n̗̪Kh͙̃̈́̾͂͋͗l̫̜̯̎͊t͎̕ä̧͚́̀͘ä͓́K̴̨̭̔̚͜on̛̦̮̞̰̫̫͓̫̲̯̘̉̀̈́̄͝͝ͅù̸̲̮̮̙͓̄̽͌̐͂̓͘͝͝K̈́̃̃̅͑̇̈͒̎̕ő̹̫̗̎͘K͇̠͖͈͊̕̕͝͝Ķ̩̫̬̹̦̺̥̈͌̈́̍̅̚͠͝͝p̨̢̧̫̗̲͙̖̔̿̓͗͑͗͒̋͐̄̆̑̋͝͝t̪͝ö̋͝(Ljava/lang/Object;)Lcom/kashi/settings/view/StorageProgressBar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kashi/settings/view/StorageProgressBar$1;->ḩ̫͂p̷̷̵̫̫͚̫̝̃̌̆̾ͅpkp̸̸̴̛̫͎̻͕̦̫̮͚̮͎̯͓͐̊̌̑̐͌̐̂̌̾̚̚͘͜͜͠K̗͊a̗̦͗̈͗͌̚͜a̝̋ü̵̷̶̶̶̷̸̶̡̡̧̯̘̱̮̖͚̗̫̭̱̗̰̰͙̥͕̲̭͇͚̭̤̦̑͗͌̆̃͗̋̎̃̌̉̿̈́̌̑̿̑̈̈̾̔̋̿͋̈̈́͂̈́̐̋͘͘͜͜͜͜͠͠͝͝k̭̬̪̰̲̅̾̈̌̂̄̏́͘c̶̴̫͉͈̭̻͒̂̈̏̈̂͘͝ő̸̩͎k̭̰̂̂̈͌̃̈́̕ko̶̼̒̓a̴̧̙͂͑̀̇͗̌̄̕͝K̲̺̞͚̘̫̬̆̎͗ṷ̧̈́̑̾̿̈́̋͘ḁ̸h̥̀B̫̘͈̝̠̜̃̌͌̎̀̑͜c̷̸̶̵̡̢̛̻͚̤̼͓͖̫̺̟̻͐̾͒̆͒̂̃̇̄͌̈́p̛͉̱͙̯̭̰̫̪̃͑͜͜͝a͙̥͂͌̕(Ljava/lang/Object;I)V

    invoke-static {v3}, Lcom/kashi/settings/view/StorageProgressBar$1;->kä̴̷̷̧̛̟͕͚͉̦̤̯̯͈͉̜̯̲̰̭̜̺̮̩̼͌̃̃̋͂͗͊̑̌̐̑̽̈͗̎͗̈͋͗͊̌͐̚͘͘͜͝a̶̲̋͌l̢̨̤̈Ǩ̴̴̫͈̫̹̋̑̎̂͝o̶̴̢̞̹̘͎̜͊̃͗̊͌͗t̷̶̴̛̛̺̫͕̗̰̟̦̹̯̲̠͈̂͂̍̾̿̍͌͝͠ę̸̛̲̠̙̹̩͌̋̅̂̿̒̀͐͜K̷̰̭̿̑̈̌͜͝h̑̑p̑̓h̟̀̂á̶̗̼͊p̸̶̨͙̫̞̻̫̩͚̥͈̺͕͗̂̋̀͐̑̅͝͝͠ųn̶̸̸̡̗̯͓̘͚̰̘̱̙̺͗̓̈̋K̸̢͉̖͓͆͋̑̂͑̾̋͗̚o̲̙͂̈͠p̸̴̦̱͎̲̻̞̦͎̺̙͓̭̘̻̌͋̋̂̌̄͊̃̈́̈́͒͐̋̾̈́̚͝͠ṋ̵̥̋̎̈͗͑͜n̷̷̰̭͙͑̄̑͑͝a̸̷̛̤͗̎͜B̧͚̩̃(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v3, v1, v2}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->ç̸̶̨̭͎͎̖̻̦̗̥͈̩̆͌͂̎͌͊̾̐̾̒̚͘͜͝ͅk̷̷̤̝̺͖̆̈́̇̂͌͜͠K̷͎̯̮͓͎͐̎ā̸̢̛̱͚̠̺̯̗̼̾͑͌͗̑̿͜͝ư̶̷̛̥̤̖̱̫͖͚̥̹̦͈͎̟̻̟͉̫͌͋͐͗́͗̾͑͋̄͋̅̂̄̃̈̍̏̑̌̚͜͝͠͝͠͝ͅc̹͈̻̿̂̄͜͠P̷̸̧̧͇̩͎̺̫̗̟̦͚̫̯͈̭̪̺̦̦̗̹̦̺͓̰̼̲͓͈̖̫̥̗̭͉̱͉̯̌̑̎̂͋̊̂̍̈́̑̋͑̇̆͌̂̔̂̃̇̀̊̑̈͋̋͜͜͠ú̷̥̑ǎ̸̷̷̴̠̙̹̲̫̹̭͓̫̮̦̫̜̱̀̍̈̌̂̂̂̂̈́̊̃B̫̲͈̑a̶̵̸̧̨̛͚̯͎̰̩̹̼̻̬̥̮͈̘̩͙͓̦̦͂̂͌̉̆̎̌̋̎̌̋̃̔̃̄͘͘͜͜͜͝k̵̛̛͓̂̐̆̌͌͜(Ljava/lang/Object;Ljava/lang/Object;J)Z

    return-void
.end method
