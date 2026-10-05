.class public Lcom/kashi/settings/view/VersionBgImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final KEY_TOGGLE_STATE:Ljava/lang/String;

.field private static final short:[S


# instance fields
.field private mDarkResId:I

.field private mLightResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x95

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kashi/settings/view/VersionBgImageView;->short:[S

    invoke-static/range {}, Lcom/kashi/settings/view/VersionBgImageView;->à̧o̷̴̖͒͒ͅP̷̖̌̀̇ȩ̶̷̶̫̫̲͚͎̺̘̫̂̀̓̀̏̋̎́̊͜͝a̧̰̙̲͚̘̠͉̋t̃͜u̍͌͜KK̸̷̛̥͓̬̠̯̭̫̲̥̭̙͐̈͗̌͜o̫͒̑͊ļ̷̸̷̛͕̼͓̭̗̮̥̗̩̫̯̫͕͌͑̈̌̃̅̍͒̃̿͗̀̇̆̂̌̑͗͜͜͜͝͝͝P̸̨̖̭̈́͊͝o̭͈̫͉̥̿̾͑t͖̞̙̹̦̺̪̎̊̍̑̽̌̀̾͜n͓̯̤̺̠̥̥̥̫̫͈̯͈̖̫̭̯̼̲͂́̋̄̂̋̿͋̎̋͗̇̌̂̎͌̂̒̋̚͝͝n̷̫̯̗̔͘ā͕͋͜ḛ̰̺́k̘͜o͋t̶̸͉̤͆̋͜͝ķ̸̶̛̛̫͕̹̫̺̫̯͚̯̺̗̫̦̫̗̼̆̄͋̈́͂͌̂̎͆̌̑̋̉̊͗̍̾͌͑͑̌̕͘͘͜͝͝ͅĉ̴̶̖̫̼̙̫̥̻̒̈̄̔̓̄()[S

    move-result-object v22

    const v25, 0x1acf00

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ȧ͎̃̑å̸͌̿̎u͓a̼̦̫̺͌̋͘ư̶̷̢̠̰̬̫̫͈̪͚̱͎̱̹̭̈̈̎̽͗̆̂̍͌̿͌͒̐̇͜͝p̭̿̐̋̋͒̃a̶̷̴̢̧̨̹̞̺͖͕̹̫̺̬̻͌̃͌̾́͌̚͝͝ͅȃ͓͈̈̂̂h̸̸̦̯͕̥̘̙̩̫͙̺̤͌̃͑̈́̋̒͋́̔̊̈͜͜ȃ̮̯̦̭̂̀̀͌͘͝ń̵̶̠̫̻̙͙̲̘̫̱͚̟͓̅̔͌̀̆͗͊͗̉̋̋͌͒̈̕͜͜c̈́̿͋ņ̷̸̧̛͕̫̹͚̱͓̟̘͕̝͖̋̋͑͗̍̿̔̌͋̂̾͜͜͜͝͠ũû̵̱̈́̿̍͠n̶͎͕̱̰̞̫͎̒͑͌̇͗͌͒̾͝ã̸̸̧̢̙̭͎͎̱͈̫̗͖̻͕̭̫̤̱̖̬̫͎͚̤̗̥̟̂̂̌̋̈̆̿̎̈́̌͘͝à̴̛̖̲̥̤̱̖̄͂̾̃ǒ̲̹̭̑̎̈́͑K()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v21

    xor-int v25, v25, v21

    const v23, 0x1ac94c

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->u̶̧̧̧̺͉̰͉͉͈͙͎̦̥̦̖̬͓̗̍̋́̔́̑̔̇̈͂̕̚͜͜͜B̸̷̴̨̨̮͚͉̼͚̩̻̺̪̯̰̯̈́͌̃͋̌͘͝ā͎͓͒͠P̸̧̡̛̹̦͉̫͓̞̙͕̼͎̦̻͖͎̫̏͂͗̄̋̾̌̆̅̎͗̍̃͊͘͝a̧͉̭͉̗͈̋̈́̀͝͠͝a̶͚̥̭̼̻̎̂͗̂̈́͘͠ņ̷̸̸̮̖̹̟̤̻̗͚̫̬̲̂͆̾̑̑̂̌̎̈̄̿̑͗̏͜͝͝h̶̨̛̪͓̯̥̝̠̝̀̑̈̈́̌̈̾̕͜͜͠h̿B̸͖̘̓̒̈͑͘͝ä̢̫̗͉́ċ̴̨̟̻̈̌â̴̧̠̦͉̜͉̯̖̖̤͉͌̆̊̐͠P̸̷̶̸̧̥͎͈̼̥̙̩̟̜̤̘͕̫̠̼̱̼̯̫̫̦͚̯̺̲̦͖͌̈́̎̂̄̂͋̑̋͑̐͋͌̾̂̈́̾͗̋͌̎̂̌͋̅̈̌͑̋͐͊͋͜͜͠͝͠͝()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v21

    xor-int v23, v23, v21

    const v24, 0x1aab58

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper;->ȧ͎̃̑å̸͌̿̎u͓a̼̦̫̺͌̋͘ư̶̷̢̠̰̬̫̫͈̪͚̱͎̱̹̭̈̈̎̽͗̆̂̍͌̿͌͒̐̇͜͝p̭̿̐̋̋͒̃a̶̷̴̢̧̨̹̞̺͖͕̹̫̺̬̻͌̃͌̾́͌̚͝͝ͅȃ͓͈̈̂̂h̸̸̦̯͕̥̘̙̩̫͙̺̤͌̃͑̈́̋̒͋́̔̊̈͜͜ȃ̮̯̦̭̂̀̀͌͘͝ń̵̶̠̫̻̙͙̲̘̫̱͚̟͓̅̔͌̀̆͗͊͗̉̋̋͌͒̈̕͜͜c̈́̿͋ņ̷̸̧̛͕̫̹͚̱͓̟̘͕̝͖̋̋͑͗̍̿̔̌͋̂̾͜͜͜͝͠ũû̵̱̈́̿̍͠n̶͎͕̱̰̞̫͎̒͑͌̇͗͌͒̾͝ã̸̸̧̢̙̭͎͎̱͈̫̗͖̻͕̭̫̤̱̖̬̫͎͚̤̗̥̟̂̂̌̋̈̆̿̎̈́̌͘͝à̴̛̖̲̥̤̱̖̄͂̾̃ǒ̲̹̭̑̎̈́͑K()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v21

    xor-int v24, v24, v21

    invoke-static/range {v22 .. v25}, Lcom/kashi/settings/view/VersionBgImageView;->ä̴̸̛̰̰̫͕̖̠̰̻́͑̾̑̂̋̏̈̌͘͘̚͝p̧͈͎̮͖͎͌̂̌͌̆̚Ķ̵̴̴̸̛̫̠͙̯̮̥͈͎̥͈́̄͌͒̈́̋̿̑̌͂̆͌̈͌̄̂͗͘͜͜͜͝͝͝t̸̸̴̸̨̡̼̬͚͙̲̖̮̑͋́̿͝͝͝c̱̈́k̸̵̶̵̷̛͕͙̙̩͈̠͚̩̹̯̙̙̩̺̦͌͑̐͒͒͑̋̋̾̔̎̅́̌͗̚͜͝Ba̧̛B̨͇̭̜̗̲̟̞̤̱̗̫͊̋̋͑̿̈́̃̾͑̔͜͜͝h̹pỏKȩ̷̥͓̭͈͇̈̎͗͌̆͠ü̩̒n͙c̘̯͌oěe̶͇̱̺̅͘K̶̴̢̛̛̛̩͓̮̲̹͕̫̙̱̦͉̩̥͆͋̈̈̈́͐͑̾̔̋̽͒̌̎̕̚͜͝͝K̯̄̈́t̶̸̸̸̢̪̪͈̪͜ų̸̴̛̫͇̘͚̭̌̌͂͑̇̋̉͋̚̚͜ͅk̫͎h̶̷̵͉͑t̲(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    sput-object v0, Lcom/kashi/settings/view/VersionBgImageView;->KEY_TOGGLE_STATE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x639s
        0x62fs
        0x63es
        0x63es
        0x623s
        0x624s
        0x62ds
        0x639s
        0x615s
        0x623s
        0x627s
        0x62ds
        0x615s
        0x628s
        0x62ds
        0x615s
        0x63cs
        0x623s
        0x639s
        0x623s
        0x628s
        0x626s
        0x62fs
        0x615s
        0x639s
        0x63es
        0x62bs
        0x63es
        0x62fs
        0xa75s
        0xa63s
        0xa72s
        0xa72s
        0xa6fs
        0xa68s
        0xa61s
        0xa75s
        0xa59s
        0xa6fs
        0xa6bs
        0xa61s
        0xa59s
        0xa64s
        0xa61s
        0xa59s
        0xa72s
        0xa69s
        0xa67s
        0xa75s
        0xa72s
        0xa59s
        0xa75s
        0xa6es
        0xa69s
        0xa71s
        0xa68s
        0x325s
        0x326s
        0x348s
        0x31as
        0x310s
        0x326s
        0x32bs
        0x301s
        0x32bs
        0x326s
        0x320s
        0x316s
        0x328s
        0x31fs
        0x31as
        0x316s
        0x320s
        0x336s
        0x305s
        0x319s
        0x310s
        0x343s
        0x337s
        0x30bs
        0x310s
        0x336s
        0x31as
        0x309s
        0x315s
        0x31bs
        0x334s
        0x34cs
        0x54as
        0x55cs
        0x54fs
        0x559s
        0x54fs
        0x54cs
        0x542s
        0x54bs
        0x501s
        0x558s
        0x54bs
        0x55cs
        0x55ds
        0x547s
        0x541s
        0x540s
        0x571s
        0x54ds
        0x54fs
        0x55cs
        0x54as
        0x571s
        0x547s
        0x543s
        0x549s
        0x571s
        0x542s
        0x547s
        0x549s
        0x546s
        0x55as
        0x888s
        0x89es
        0x88ds
        0x89bs
        0x88ds
        0x88es
        0x880s
        0x889s
        0x8c3s
        0x89as
        0x889s
        0x89es
        0x89fs
        0x885s
        0x883s
        0x882s
        0x8b3s
        0x88fs
        0x88ds
        0x89es
        0x888s
        0x8b3s
        0x885s
        0x881s
        0x88bs
        0x8b3s
        0x888s
        0x88ds
        0x89es
        0x887s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/kashi/settings/view/VersionBgImageView;->ḻ̸̟͆̋̅͜t͙a̵̴͚̮͌̾̏͠e͉͉͚͒̾͜͠h̵̸̢̢̛̤̫͓̞̀̋͌̾͘͠Ka̷̠͎̘͚̮͈̤̫̜͕̺̗̭̹̰̐͂̏̔̿͆̂̌̈̋͌͆̔̄͒͌͂͘͝pä̷̸̴̯̟̺̺̦̘̆͌̂̈̋̃͠͝t̠̥͌a̰̥̩͓̐̅͊ḵ̷̛̛̥͇̂̋̿̅̚a̷̶̴̸̲͉̩͚̖͉͌́̂̎̃̎̌̚͘͝͝e̵̷̢̢̛͚̦̥̋̃̆̔̌̋̃͌͌̋͘ǩ̸̯̱ư̶̧̧̨̮̠̺̘̱͈̺̅̃̅͗́̋͝͝ơ̮̫̹͉̥̯̟͙̰͈͓͑͂̿͘͠͝͝ľ̷̶̵̨̧̖̯̺̈̀̆͊̑͑̕͜Ḇ̸̶̸̵̶̶̢̨̡͉̘̗̺̞͓͓̫͚̭̯̠̗͙͚̹̅̄̓̈́̈͌̆͑̂͌̎̃̌͌̑̾̋̃͌̔͒͗̽̿͒͝͝l̬̱͒ļ̺̤̫̔̃̍aen̨(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v0}, Lcom/kashi/settings/view/VersionBgImageView;->ḻ̸̟͆̋̅͜t͙a̵̴͚̮͌̾̏͠e͉͉͚͒̾͜͠h̵̸̢̢̛̤̫͓̞̀̋͌̾͘͠Ka̷̠͎̘͚̮͈̤̫̜͕̺̗̭̹̰̐͂̏̔̿͆̂̌̈̋͌͆̔̄͒͌͂͘͝pä̷̸̴̯̟̺̺̦̘̆͌̂̈̋̃͠͝t̠̥͌a̰̥̩͓̐̅͊ḵ̷̛̛̥͇̂̋̿̅̚a̷̶̴̸̲͉̩͚̖͉͌́̂̎̃̎̌̚͘͝͝e̵̷̢̢̛͚̦̥̋̃̆̔̌̋̃͌͌̋͘ǩ̸̯̱ư̶̧̧̨̮̠̺̘̱͈̺̅̃̅͗́̋͝͝ơ̮̫̹͉̥̯̟͙̰͈͓͑͂̿͘͠͝͝ľ̷̶̵̨̧̖̯̺̈̀̆͊̑͑̕͜Ḇ̸̶̸̵̶̶̢̨̡͉̘̗̺̞͓͓̫͚̭̯̠̗͙͚̹̅̄̓̈́̈͌̆͑̂͌̎̃̌͌̑̾̋̃͌̔͒͗̽̿͒͝͝l̬̱͒ļ̺̤̫̔̃̍aen̨(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 51

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v0}, Lcom/kashi/settings/view/VersionBgImageView;->ḻ̸̟͆̋̅͜t͙a̵̴͚̮͌̾̏͠e͉͉͚͒̾͜͠h̵̸̢̢̛̤̫͓̞̀̋͌̾͘͠Ka̷̠͎̘͚̮͈̤̫̜͕̺̗̭̹̰̐͂̏̔̿͆̂̌̈̋͌͆̔̄͒͌͂͘͝pä̷̸̴̯̟̺̺̦̘̆͌̂̈̋̃͠͝t̠̥͌a̰̥̩͓̐̅͊ḵ̷̛̛̥͇̂̋̿̅̚a̷̶̴̸̲͉̩͚̖͉͌́̂̎̃̎̌̚͘͝͝e̵̷̢̢̛͚̦̥̋̃̆̔̌̋̃͌͌̋͘ǩ̸̯̱ư̶̧̧̨̮̠̺̘̱͈̺̅̃̅͗́̋͝͝ơ̮̫̹͉̥̯̟͙̰͈͓͑͂̿͘͠͝͝ľ̷̶̵̨̧̖̯̺̈̀̆͊̑͑̕͜Ḇ̸̶̸̵̶̶̢̨̡͉̘̗̺̞͓͓̫͚̭̯̠̗͙͚̹̅̄̓̈́̈͌̆͑̂͌̎̃̌͌̑̾̋̃͌̔͒͗̽̿͒͝͝l̬̱͒ļ̺̤̫̔̃̍aen̨(Ljava/lang/Object;)V

    return-void
.end method

.method public static B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ţ̴̶̹̖͉̭̔̂͌̈̑͒͐̚͘͝Ḃ̸̛̪̮̜̖̖͗̋̍̽̀̎̑͌͘ͅu͚͐̈̃ư̶͈̙̥͎̭͓͇̹̫̮͉͚̍̆̌͌͗̿̈́̈͗̀̾́̉͌͋͋͜e̸̷̸̢̢̘̙͎̩̦̭͕͕͕͑̑̀̂̔̀̃̎̚ě̶̮̗̝̗͈̓̃̈́̂̀̈͌̔͌̌͋͝ţ̸̵̸͈͎̱̫̝̦̹͎͇͎̱̲̫̼̱̹̘͓̲͈̋̐̿͋̃͌̈́͂̃̏̌̇̿̓̿͋̋͋̋̃͋̑͘̚͜ͅţ̴̢̗͎̯̩̰͌̽͒͐͑͌ö̸̯̘̗́͂̆͋͒̌a̛̖͓̋͂̏̈́̑̍̈́̌͜͜͝K̋̆ơ̴̪̝͉̿̉͗͂̂̂̈́͘͝B̥̹̺͕͈̿̏̔͋̆͘͝ö̵̞̹̺̺̼̖̫̖͕͈̙̽̂̌̃̃͑͘͜͝l̀ő̶͓̲̀ǒ̜̥͓͈̈́͌h̢̢̙̑͜t̪̲͓͖̑̃̕a͗u̹̗͝()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/kashi/settings/view/AboutSettingsHelper$1;->ḻ̸̟͆̋̅͜t͙a̵̴͚̮͌̾̏͠e͉͉͚͒̾͜͠h̵̸̢̢̛̤̫͓̞̀̋͌̾͘͠Ka̷̠͎̘͚̮͈̤̫̜͕̺̗̭̹̰̐͂̏̔̿͆̂̌̈̋͌͆̔̄͒͌͂͘͝pä̷̸̴̯̟̺̺̦̘̆͌̂̈̋̃͠͝t̠̥͌a̰̥̩͓̐̅͊ḵ̷̛̛̥͇̂̋̿̅̚a̷̶̴̸̲͉̩͚̖͉͌́̂̎̃̎̌̚͘͝͝e̵̷̢̢̛͚̦̥̋̃̆̔̌̋̃͌͌̋͘ǩ̸̯̱ư̶̧̧̨̮̠̺̘̱͈̺̅̃̅͗́̋͝͝ơ̮̫̹͉̥̯̟͙̰͈͓͑͂̿͘͠͝͝ľ̷̶̵̨̧̖̯̺̈̀̆͊̑͑̕͜Ḇ̸̶̸̵̶̶̢̨̡͉̘̗̺̞͓͓̫͚̭̯̠̗͙͚̹̅̄̓̈́̈͌̆͑̂͌̎̃̌͌̑̾̋̃͌̔͒͗̽̿͒͝͝l̬̱͒ļ̺̤̫̔̃̍aen̨(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static B̸̯̾́̀ȏ̶̷̥͗̕͝a̷̻̭̫͚͖̘̒͊̿̿̿̚̚a͙̫̼͎͈͗͗̆̃͝͝͝o̸̷͚͒̈́̃̈́kB̸̶̺̗K̸̴̺̖̭̩̞͓̩͕̈̂̿̅̊̿͒̂̍͘͜͝B̢h̴̨͕̥̱̗̲͇̟͈̋͌̽̋̈́͌̋̒͝c̆ả̙̦̥̭̤̼̻̗̯̥̎̈́̐͐͑͊̊̀͊̑͘͘͜a͜Bō̵̧̟͎̰̗̻̃̈́̈̔̄̈́͗͘h̸̴̷̛̺̺̥̫̫̋͐̏͗̿͘h̴̛̦͙̭͑̿̑̈́ȩ̸̴̧̨͓̰̫̗̫̫̼̪͙̯̪̘̮̱͇̏̾͋́̋̆̋̃̅̿̑͋͊̍̈̈̆̌̃͌̂͘͜͝͝͝û̧͉͙͆͜ư̶̶̧̛̮͕̫̠̬͉̝̘̜̘̱̝̤̤̎̀̈́͌̌̂̂͋̌͑̈́̍̉͌̅̑̂̂̄̈́̈́͌̌̚͜͜͜͝͝a̶̢͓̦̠̫̱͇̪̺̫͎̞̎̑̈̈́̑̈́̉͐͜(Ljava/lang/Object;III)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ţ̴̶̹̖͉̭̔̂͌̈̑͒͐̚͘͝Ḃ̸̛̪̮̜̖̖͗̋̍̽̀̎̑͌͘ͅu͚͐̈̃ư̶͈̙̥͎̭͓͇̹̫̮͉͚̍̆̌͌͗̿̈́̈͗̀̾́̉͌͋͋͜e̸̷̸̢̢̘̙͎̩̦̭͕͕͕͑̑̀̂̔̀̃̎̚ě̶̮̗̝̗͈̓̃̈́̂̀̈͌̔͌̌͋͝ţ̸̵̸͈͎̱̫̝̦̹͎͇͎̱̲̫̼̱̹̘͓̲͈̋̐̿͋̃͌̈́͂̃̏̌̇̿̓̿͋̋͋̋̃͋̑͘̚͜ͅţ̴̢̗͎̯̩̰͌̽͒͐͑͌ö̸̯̘̗́͂̆͋͒̌a̛̖͓̋͂̏̈́̑̍̈́̌͜͜͝K̋̆ơ̴̪̝͉̿̉͗͂̂̂̈́͘͝B̥̹̺͕͈̿̏̔͋̆͘͝ö̵̞̹̺̺̼̖̫̖͕͈̙̽̂̌̃̃͑͘͜͝l̀ő̶͓̲̀ǒ̜̥͓͈̈́͌h̢̢̙̑͜t̪̲͓͖̑̃̕a͗u̹̗͝()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->e͌ẽ̷͈ä̫a̡̢̹̺͎͈̠̫͓͗̋̈͝K̶̨̛͈̗̗̀͘͝͝a̶̸̹̺̭̯͉͚̯̗̭͎̺͖͚̫̰̫͗̌͋̌̈͊̽̄̾̀̄̚̚͝n̴̶̶̛̪̝͓̺̫̭͚̤͈̫̻̂̈́̈́̉̂͂̑͊͗͗̂́͘̚͜͝͠k̸̟̈́̑̃͠ǘ͓̩͓̌̐͘͝K̶̸̶̨̯͎̦̟̘͈̤̮̔c̨̛̟̪͕̭͒́̅̀̓̚̚ȩ̶̸̸̵̥̹͙͈̫̫̗̯̮̹̌̎̅́̌́̌̄̒̀͑̌͌̂͑͗͠͝͝p̪̘̦̂͘͘ơ̲͙̼̹̞̫͓͕̖͗̿̌͂̑̂͂͘͜͝͠͠͝Ķ̗̌a̸̸̺̞̰̖̘̭̋̿͂̔̎͑͝h̸̨͎̦̬̲̆͌͐͆̂̓͋̈́̅̚͘͘͜͠͝ơ̷̴̫̥̺͉̰̺͓͈̝̥͓͕̯̰̾̐͗̂̃̈͑̇̾̍̈̅̔̓͜͝͝ű̧̢͎̯̫̏̋͒̿͜([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static P̵̶̧̧͙̫̯͕̗̘͉̠̅̌̈̇̈̇͂̐̂̈̒̒͐̆̾̿̌͗͜͠͝p̸̸̧̧͎̹̰̋́̄̿̿̈̌͝a̖̰̋͘c̺̋t̶̼̭̯̄ẗ̸̵̸̮̫̤͎̯̭̘̦̒̃̿̈́́̅̌͐̕͜͝ͅho̾Kl̷̷̴̛̲̤͙̮̩̫͎̑̌̚͜͝͝n̸̴̷̷͕͈͈̙̫͈̪̫͈͈͎̫̠̘͉̂͂̀̀́̏̾̾̅͊͗̿̂̚͝͝Ķ̴̴̸̸̹̱͓̖̌̃͋̂͋̽̑͝͝͠͝͝ͅa̫͚͈̻̭̻̞͋̂́͝͝P̸̷̨̛̖͚͎̺̥͕͉̙̦̋̔̋̂̂̾͗͌̎̍͗͜͜͝͝Ķ̶̸̴̢̛̮̭͉̠͉̯̤͎̌̂́͋͗͊̈̿͗̌͘͘h̫̋̎͠ņ̸̷̧̢̧͎̫̹̹̮̌̔̉̈́̎̎͘͜K̞͇̱͋̋͊̀̀̇͝ķ̡̟̫̗̹̭͓̄̌̌͋͌̈͝l͇̭̾u̶̬(Ljava/lang/Object;III)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ţ̴̶̹̖͉̭̔̂͌̈̑͒͐̚͘͝Ḃ̸̛̪̮̜̖̖͗̋̍̽̀̎̑͌͘ͅu͚͐̈̃ư̶͈̙̥͎̭͓͇̹̫̮͉͚̍̆̌͌͗̿̈́̈͗̀̾́̉͌͋͋͜e̸̷̸̢̢̘̙͎̩̦̭͕͕͕͑̑̀̂̔̀̃̎̚ě̶̮̗̝̗͈̓̃̈́̂̀̈͌̔͌̌͋͝ţ̸̵̸͈͎̱̫̝̦̹͎͇͎̱̲̫̼̱̹̘͓̲͈̋̐̿͋̃͌̈́͂̃̏̌̇̿̓̿͋̋͋̋̃͋̑͘̚͜ͅţ̴̢̗͎̯̩̰͌̽͒͐͑͌ö̸̯̘̗́͂̆͋͒̌a̛̖͓̋͂̏̈́̑̍̈́̌͜͜͝K̋̆ơ̴̪̝͉̿̉͗͂̂̂̈́͘͝B̥̹̺͕͈̿̏̔͋̆͘͝ö̵̞̹̺̺̼̖̫̖͕͈̙̽̂̌̃̃͑͘͜͝l̀ő̶͓̲̀ǒ̜̥͓͈̈́͌h̢̢̙̑͜t̪̲͓͖̑̃̕a͗u̹̗͝()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->K̸̷̵̴̷̛͎͎̙͓̯̤̝͓̱̲͒͂̿̋̂̀͗͜͜P̀̿h̷͕͚͂̄a̸͎̼̯͓̍͂͆̿̕͝͝a̷̸͎̯̩͓͈̘̯͗̇uä̵̵̢̩̫̤̭͓̺̮̝͖̐̈̊̋͋͗͒̎̾͜͝o̵̵̥̭̭̲̪͓̲͗̄̾̿͒͗͌̇̎̇͌̌̅͂̂̕͜͝͝B̧͉͕̌͒̿̍̂̂̑̌͊ḧ̪̯̫̭̩́̂̚P̂͂̅c͘n̴͉̂̂k̦͈̂̌̈ţ̛̫̄̾̍K̸̙̈́͌́̃͜ţ̴̧̗̯̗͈̺̫̮̈́̂̈̿̋͌̾̋͊̚͜͝ö͈́̂a̸̵̚͝B̼͕͈̀ȇ̺͐͝t̸̸̢̛̰̗̰͓͚̫̯̦̠̙͓̖̭͓̬̎̂̈́̈͌͌̑́͂̈́́̐͋̋̂́̃̐̈̄̈̚͜͜͝p̶̸̛̺̦̫͌̆̎̔̔̇̌̈͑̾̈́͂͌̿̕͝͝c̷̛̛̗͙͋̓́̌̀P̢̱͈̰̾͂̎([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static P͓͋̾̑ǫ̷̸̷̢̧̛̦͉̰̫̝͉͉͕̦̜̺̰̜̹͇̞̰̫̘̞͈͈͓̹̫̯̤̌̄̔̋̈́͗̆́͌̈́̈̄͂̿͋̉̅͂̌͐̑͗̈́̇̄͗͒̋͊̂̋͗̔̓̈́͌̂͜͠͠B̸̷̧̨̢̤͇̺̹̭̯̰͎̰̾͋̂̈́͑͐͒͌̾̂̔̋̑͜͝t̸̴̷̷̵̢̨̧̛͈̱̗͚̫̫̰̭͉͓̼̟̫̲̞̰̩̲̗͉̄̑̃̇͒͌͑̃̈́̃̂̐͒̂͌̃͌͊̈̑̊̕͘͠͝͝͠͝͝K̴̴̴̢̨̛̮̘̥͖̯͇̖̘͈̫̺̻͎͒̅͗͋̂̈́̔̂̅͗͆̀͐̈́͘̚͠͝͠͝͝a̧̭̼̯̹͉͇͕̎̾́̑̐̑͆͗̄͝͝ȁḽ̸̢͉̞͙̱͌̌̕n̛̮̈́͗͌͂͝͝ư̴̸̴̸̸̶̢͇̭̹̗̝̖̗̺͓̤̍̌̈́̑̈́̓͐̄̌͠͝͠͝u̷̴̢̺̦̝͌͂͂̄̈́͗̆͝P(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ok̸̷̷̫̼̘̹̱̀̈͘ç̸̴̸̴̶̧̧̱̮̮̆͑̔͑̄̊ȩ̵̶̡̺͑̾̎̏̅́̔͠n̨̰̜̱̎͊̀̔̐̀̈̌̌͘t̷̸̨̥̘̠̖̬̯̘͌́̽̈́̾̊̎̃̚͝͝Ǩ̷̫̫͚̤̻̪́͒͒͐̄̄͌̋͠͠à̟̠̱͗͘Ķ̷̧̨̨̛̛͎̭͎͉͐̿̑̃̎̈́̊̐̀͘͘̚͜͝n̦͋͝P̸̸̸̸̴̷̧̧̧͎̫̦͎͓̫͖̫͕̘̪̪̺̺̼͖͓͖͎̫̌̿̌̈̈́̀̀̂̿̎̌́̋̊̌̍̌̔̈͘͜͝͝oḁ̴̅̔̈́h̴̘̫͖̪͎̀͝a̸͈̎̋̉͜ą̸̮̪̗̲̮͋́̑͐͜͝ḱ̷̯̈́͗ą̷̸̶̸̨̛̙̱̤̯̭͚̙̭̱̯̯͓̺̇̈͒̋̂̄͌͌̈́̋̂̎̑͐̈́̈̕͘͘͜͠͝͝ͅoP̸̶̫̬͕̙̯̎̽͐͆̾̿̎̚͜͝ͅ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    invoke-direct {p0}, Lcom/kashi/settings/view/VersionBgImageView;->applyAlphaFromState()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method private applyAlphaFromState()V
    .locals 53

    move-object/from16 v2, p0

    invoke-static {v2}, Lcom/kashi/settings/view/VersionBgImageView;->a̶̸̧̧̨̛̭͈̺̯͓͉̦͗̂̔̈̅̀͊͋̎͝͝e̦͆P̶̵̸̪͈̥̭͙͉̃̈͐́̈̐͂͜͜ą̵͎̗̹̮͆͒͑͊͌͐̈́͒̾͌̆̆͜͜͝p͈̈́̌ą̛͕͌P̢̏cu̯̅̂̆̑ͅl̮̒̍̐̈̈́K̐̑̂͝k͗̑ö̮́͒̂̌ư̷̠̗̂̽t͎ǔ̷͉͚̭̻̯̌͗͗̾͆͋͝͝oh̶̯̜͋̃̌͠ǎ̷̴̢̛̲̠̖̗̼̖̻͚̲̈́̀̂͗̐͋͗̄̀͌͜͝c̡̛̛̘̿͒͝aaķ̖̰͚̲͉͓̫̗͑̋̑͑̚p̸̴̷̱̜̱̹̎́̎͒͠P̸̷̷͙̺̺̫̄͊̒̈͂͌̈̌͌̂͝u̧͓̤̫̗̗̽̕P̭̃̚ç̶̸̷̵̙̫͕͙͖̈̆̈͑̂̂̃͜ư̶̸̢͈͙̞̯͈̫͉̲̗̪̂̉̈̎̾̾̃͗̑̾͘p̜̱̫̝̮͂̍ǒ̷̯̺̋(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->p̷̶̸̷̷̢̧̦̫̫͇̩̘̲̪̹͉͈̦̭̽̿̑͌̌̂̈͒̆̊̎͒͜͝un͓̤B̸̨̦̦̂͘B̻͝n͑̃͘õ̰̝͕̖̲̲̫̌ṕ̴̢͕̫͈͚͇̯͚̦̺̞̼̻̄͗̿̎̅̋̿͗̌̊͋́̋̎͗̿̚͜͝ͅä̛̛̗ẖ̮͜ä̲͓̪̝̦͈͈́̑̉̂͝l̸̶̫͗B̫̗̦̱̺̱̰͎̞͑͌̃̾̎͗̔ͅą̸̵̶̭͚̘̈̐̅̈́́͠͝͠h̶̸̢̢̧̛̩̺͈͚̫͉̘̘̔͌̅̈́̿̋̈́K̛͉̖̯̟͌̂̄̾͝ͅuǫ̸̶̮̭͓͙̺͚̦͕̘͎̆̃̋̅̌͗̀̔̈́̿͝â̸̸̵͙̤̺̏͊͒͘K̸̸̶̢̨͉̫̦̭͈̩̫͌̈̿̎́̋̇̚͜͝͠ͅả̶̘͕̤̽̃͝n̴̲̾́͜͝h̷̞̪̭͚̯̖͗͌̑͑͗̾̂͌̈́̃č̷̶̲͓͆́̏(Ljava/lang/Object;F)V

    return-void
.end method

.method public static à̧o̷̴̖͒͒ͅP̷̖̌̀̇ȩ̶̷̶̫̫̲͚͎̺̘̫̂̀̓̀̏̋̎́̊͜͝a̧̰̙̲͚̘̠͉̋t̃͜u̍͌͜KK̸̷̛̥͓̬̠̯̭̫̲̥̭̙͐̈͗̌͜o̫͒̑͊ļ̷̸̷̛͕̼͓̭̗̮̥̗̩̫̯̫͕͌͑̈̌̃̅̍͒̃̿͗̀̇̆̂̌̑͗͜͜͜͝͝͝P̸̨̖̭̈́͊͝o̭͈̫͉̥̿̾͑t͖̞̙̹̦̺̪̎̊̍̑̽̌̀̾͜n͓̯̤̺̠̥̥̥̫̫͈̯͈̖̫̭̯̼̲͂́̋̄̂̋̿͋̎̋͗̇̌̂̎͌̂̒̋̚͝͝n̷̫̯̗̔͘ā͕͋͜ḛ̰̺́k̘͜o͋t̶̸͉̤͆̋͜͝ķ̸̶̛̛̫͕̹̫̺̫̯͚̯̺̗̫̦̫̗̼̆̄͋̈́͂͌̂̎͆̌̑̋̉̊͗̍̾͌͑͑̌̕͘͘͜͝͝ͅĉ̴̶̖̫̼̙̫̥̻̒̈̄̔̓̄()[S
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ok̸̷̷̫̼̘̹̱̀̈͘ç̸̴̸̴̶̧̧̱̮̮̆͑̔͑̄̊ȩ̵̶̡̺͑̾̎̏̅́̔͠n̨̰̜̱̎͊̀̔̐̀̈̌̌͘t̷̸̨̥̘̠̖̬̯̘͌́̽̈́̾̊̎̃̚͝͝Ǩ̷̫̫͚̤̻̪́͒͒͐̄̄͌̋͠͠à̟̠̱͗͘Ķ̷̧̨̨̛̛͎̭͎͉͐̿̑̃̎̈́̊̐̀͘͘̚͜͝n̦͋͝P̸̸̸̸̴̷̧̧̧͎̫̦͎͓̫͖̫͕̘̪̪̺̺̼͖͓͖͎̫̌̿̌̈̈́̀̀̂̿̎̌́̋̊̌̍̌̔̈͘͜͝͝oḁ̴̅̔̈́h̴̘̫͖̪͎̀͝a̸͈̎̋̉͜ą̸̮̪̗̲̮͋́̑͐͜͝ḱ̷̯̈́͗ą̷̸̶̸̨̛̙̱̤̯̭͚̙̭̱̯̯͓̺̇̈͒̋̂̄͌͌̈́̋̂̎̑͐̈́̈̕͘͘͜͠͝͝ͅoP̸̶̫̬͕̙̯̎̽͐͆̾̿̎̚͜͝ͅ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/kashi/settings/view/VersionBgImageView;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static a̸̴̸̢̛̫͈̭̹̫̺̿͌͐̈͐̋̐́̍͆̐̚ť͉KPǫ̛̖͈͎̿͋͘ľ̯͜͠ā̶̤͕̌̑͌͘͠͝K̅̈n̄ë̴̷̘̖̫͓͚͎̱́̀́̿͊͝K̸̷̋̅̃̌͝ă̴̴̴̸͓̗̽͘ę̸̛͓̫̯̺̠̫̦̠̗̬͕̘̼̫̩̹̫̠͒̈́̂̆̈̈́̂̔͑̌́̚͜͝͝Ķ͕̌̈́̿͂o̴̧̫͉͒̍̎̈̌͊n̸͉ô̧͋p̸̢͉̖͕̬̼̝͇̭̖͖̻̥̂͋̋͋̌̿ǘ̵̷̧̧̮̭͎̹̲̀͌̑͒͝P̷͆̑̐͝Kc̮ţ̷̶̦̺͉̹͚̘́̈́̈̈́͌̅̀̆͘ą̵̛̹̺͓̫̄̔̈́͘͝e̪͗p̹̉k̷̸̛̛̗̻̮̤͕͈͎̗͙̪̲͈͚̻̲͊̌̾̌̏͂̈̌̂͑͘͝͝ͅp̸̸̵͓͓͕̺̪̫̲̫̗̄͑̑̈́͌̓̋̂͗͋͌̉͘͠(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->P͉ķ̩͕̥͋͗ą͉͕̥̥͎̜̈̅̈́͝k̵̷̨̨̧̧͖̞̥͈̮͓͎͎̪̂͑̑̂̓̐̂̋͝͝ṋ̵̢̢̡̥͕͊́̎̌Ķ̷̶̛̙̫̦̪̙̟̺̎͌̑̋̌͑̂̎͘ơ̸̦̥̂̈́̔̚͠͠ë͈̮͋̄̾Kh̶̷̸̗̫̤͕͚͚̘̞̮̄̋̄̐̓̋͑͗͐K̂p̵̷̪̘̱͕̰͈͐̄̕͘͜͜PB̨̛̘͕̗̫͉̱̫͙̥̯͕͕̰̘̤̤̦͗͗͊̃͋̆̃͐͗́͠B̷̷̤͇̹̋̅̄̋͜͠t̴̤̙̚Ķ̶̧̩̙̮̩̤̩̭̺̺̮͈̍̈͌̂̋̒̔̂̒̿̍̏̌͌̚͝͝at̖̥̠͕͌͊a̸̰̱͂̈́ȩ̶̶̛̛̛̺̩͉̖̱̦͈̫͙̫̥̻͎̯̈̋͌̄͑͂̿͗̌̅͑͂̍̉͘͘̚͜͜͜͝K͚̦̦̫͙̘̺͗͆̅͐̆Ǩ̢̘̠̫̜̼̦̅̅̚()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    iget v1, p0, Lcom/kashi/settings/view/VersionBgImageView;->mLightResId:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static a̶̸̧̧̨̛̭͈̺̯͓͉̦͗̂̔̈̅̀͊͋̎͝͝e̦͆P̶̵̸̪͈̥̭͙͉̃̈͐́̈̐͂͜͜ą̵͎̗̹̮͆͒͑͊͌͐̈́͒̾͌̆̆͜͜͝p͈̈́̌ą̛͕͌P̢̏cu̯̅̂̆̑ͅl̮̒̍̐̈̈́K̐̑̂͝k͗̑ö̮́͒̂̌ư̷̠̗̂̽t͎ǔ̷͉͚̭̻̯̌͗͗̾͆͋͝͝oh̶̯̜͋̃̌͠ǎ̷̴̢̛̲̠̖̗̼̖̻͚̲̈́̀̂͗̐͋͗̄̀͌͜͝c̡̛̛̘̿͒͝aaķ̖̰͚̲͉͓̫̗͑̋̑͑̚p̸̴̷̱̜̱̹̎́̎͒͠P̸̷̷͙̺̺̫̄͊̒̈͂͌̈̌͌̂͝u̧͓̤̫̗̗̽̕P̭̃̚ç̶̸̷̵̙̫͕͙͖̈̆̈͑̂̂̃͜ư̶̸̢͈͙̞̯͈̫͉̲̗̪̂̉̈̎̾̾̃͗̑̾͘p̜̱̫̝̮͂̍ǒ̷̯̺̋(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->P͉ķ̩͕̥͋͗ą͉͕̥̥͎̜̈̅̈́͝k̵̷̨̨̧̧͖̞̥͈̮͓͎͎̪̂͑̑̂̓̐̂̋͝͝ṋ̵̢̢̡̥͕͊́̎̌Ķ̷̶̛̙̫̦̪̙̟̺̎͌̑̋̌͑̂̎͘ơ̸̦̥̂̈́̔̚͠͠ë͈̮͋̄̾Kh̶̷̸̗̫̤͕͚͚̘̞̮̄̋̄̐̓̋͑͗͐K̂p̵̷̪̘̱͕̰͈͐̄̕͘͜͜PB̨̛̘͕̗̫͉̱̫͙̥̯͕͕̰̘̤̤̦͗͗͊̃͋̆̃͐͗́͠B̷̷̤͇̹̋̅̄̋͜͠t̴̤̙̚Ķ̶̧̩̙̮̩̤̩̭̺̺̮͈̍̈͌̂̋̒̔̂̒̿̍̏̌͌̚͝͝at̖̥̠͕͌͊a̸̰̱͂̈́ȩ̶̶̛̛̛̺̩͉̖̱̦͈̫͙̫̥̻͎̯̈̋͌̄͑͂̿͗̌̅͑͂̍̉͘͘̚͜͜͜͝K͚̦̦̫͙̘̺͗͆̅͐̆Ǩ̢̘̠̫̜̼̦̅̅̚()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    invoke-direct {p0}, Lcom/kashi/settings/view/VersionBgImageView;->getToggleState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ä̴̸̛̰̰̫͕̖̠̰̻́͑̾̑̂̋̏̈̌͘͘̚͝p̧͈͎̮͖͎͌̂̌͌̆̚Ķ̵̴̴̸̛̫̠͙̯̮̥͈͎̥͈́̄͌͒̈́̋̿̑̌͂̆͌̈͌̄̂͗͘͜͜͜͝͝͝t̸̸̴̸̨̡̼̬͚͙̲̖̮̑͋́̿͝͝͝c̱̈́k̸̵̶̵̷̛͕͙̙̩͈̠͚̩̹̯̙̙̩̺̦͌͑̐͒͒͑̋̋̾̔̎̅́̌͗̚͜͝Ba̧̛B̨͇̭̜̗̲̟̞̤̱̗̫͊̋̋͑̿̈́̃̾͑̔͜͜͝h̹pỏKȩ̷̥͓̭͈͇̈̎͗͌̆͠ü̩̒n͙c̘̯͌oěe̶͇̱̺̅͘K̶̴̢̛̛̛̩͓̮̲̹͕̫̙̱̦͉̩̥͆͋̈̈̈́͐͑̾̔̋̽͒̌̎̕̚͜͝͝K̯̄̈́t̶̸̸̸̢̪̪͈̪͜ų̸̴̛̫͇̘͚̭̌̌͂͑̇̋̉͋̚̚͜ͅk̫͎h̶̷̵͉͑t̲(Ljava/lang/Object;III)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ţ̴̶̹̖͉̭̔̂͌̈̑͒͐̚͘͝Ḃ̸̛̪̮̜̖̖͗̋̍̽̀̎̑͌͘ͅu͚͐̈̃ư̶͈̙̥͎̭͓͇̹̫̮͉͚̍̆̌͌͗̿̈́̈͗̀̾́̉͌͋͋͜e̸̷̸̢̢̘̙͎̩̦̭͕͕͕͑̑̀̂̔̀̃̎̚ě̶̮̗̝̗͈̓̃̈́̂̀̈͌̔͌̌͋͝ţ̸̵̸͈͎̱̫̝̦̹͎͇͎̱̲̫̼̱̹̘͓̲͈̋̐̿͋̃͌̈́͂̃̏̌̇̿̓̿͋̋͋̋̃͋̑͘̚͜ͅţ̴̢̗͎̯̩̰͌̽͒͐͑͌ö̸̯̘̗́͂̆͋͒̌a̛̖͓̋͂̏̈́̑̍̈́̌͜͜͝K̋̆ơ̴̪̝͉̿̉͗͂̂̂̈́͘͝B̥̹̺͕͈̿̏̔͋̆͘͝ö̵̞̹̺̺̼̖̫̖͕͈̙̽̂̌̃̃͑͘͜͝l̀ő̶͓̲̀ǒ̜̥͓͈̈́͌h̢̢̙̑͜t̪̲͓͖̑̃̕a͗u̹̗͝()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ȩ̢̦͕̪̹̤̙̭͎͚̹͎̗̰̗̾̔̒̃́̂͗̑̎͋̈́̅̈̃͘͠k̸̫͎̘̲̓̍͘ứ̴̧̨̛̺̺̻͓͉̠͓͉͚̮̈͋͑͌̈͒͋͘̕̕͜͠ô̴̸̢̧̩̜̮͙̻͎̱̺̯̹̬̆̎̓̿̔̌͊̃̂̔̚̚͜͠͠͠ͅĶ̸̫̲ĉ̷̴̗̃̑k̋ļ̴̷̸̸̵̴̛̲̫̟͚̗̜̩̫̙̠͓̭̪̭̹̰̰̙̲̮̮̲̭̦̖͉̭̻̯̂͗̊̏̑̂̋̾̆͋͆̃̿̋͌͌͠͝͝h̡P̜̮͗͊̀̎̑̾h̶̸̶̶̴̴̵̷̷̶̸̨̢̧̛̝͎̮̭̝̱̖̖̙̯̘̺̺͎̯͓̹̲̦̗̫̬̫̺͓̹̎̒̏̑͋͗͌̆͌͋̌̿̔̾͌̃̒̅̎͌̌̀͌͌̌͘̕͘̕͘͝͝͝͝͠k̩͓͚̪͚̗̭̖͕̈͑͌̿̾̈̂PP̶̶̛̯̺̺̮̥̐̄̅̄͑̈͌̀͜([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method private getToggleState()Z
    .locals 53

    move-object/from16 v2, p0

    invoke-static {v2}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->a͚͙̦͕̦̋̌͌̌͑̋͆̓͗͜͠K̒͠ű̷̧̧̫̯͈̗͕̻͎̱͉̑̀͜c̶̸̰̼̺͇͕͕͎̅̿̍̑̑͌̏̾̌̾̚͝K̶̷̛̲̺̥͕̦̫̬̪͊̃̃he̔̚h̢͕̘͂͂͘͝na̴̧̯͎͜͜n̂ͅP̢̗̼̃̂̔̎͝͠ṫ̴̴̷̸̢̧̥̲̲͓̫̪̪̔̒͒͂̋̋̚͘͜͠͝ĺ̵̡̨̧̮̫̤̱̜̐̂̌̚͘͠͝l̢͓̲͗͊̎͝ǫ̷̢̧̢̛̛͚̥̹̪̦̖̮̹͉͎̱̮̰͗̐̂̏̇̎̎̐̋̄͘͝ȏ̢̘͚̘̪̊p̶̶̶̸͎̤̟͕͎̙͕̫̆̈́́̌̃͌̌̔̆͆͗̂͘͝ư̶̗̈́̇͆o̧͊̎̑͗̾͒̾̓́̀͊͝a̢̤͒K̸̸̴̵̨̨̢̛̭̮̱̘͚͇̫̘̦̠͉͎͓͈̱̗̯̥͋̓͂͌̈́̑̃͋̏̈̏̌̉̋̑̔̃̚͜͜͠(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->ec͚͋ǩ̡̠̋̌̂̎a̸̫͈̤̖̘̺̫̰͑̂͆̐́͜ä̸̛̲͉̔n̵̸̸̢̧̛̥̙̪̹͚̥͌́́̌̌͒̌́̑͌͋̈̑̿̿͘̚͠͝K̶͓̙̦̭̹̯̃̑̈̚K̶̸̨̧̮̯͕͉̦͈͕̆̾̅̑̿͐̚͠͝ō̫̹̺̼͈̩̤̭̆̈a̸͈̤͗l̛c̯͎͎̹̪͓̠̭̋̃̇̂̕p̸̸̲͈̫̺̪̹̭̭̂̑͝͝K̷̑̈́͊͠nl̵͕̈̃̄̑n̵̷̷̢̧̺͉̩͎͚̫̫̲̦͈͎̦̠̗̟̱̘̦̫̙̂̾̏̌͂́͗̌͐̀͋͊͌̀̃̇͜͝͝͝͠ở̩͚̜ä̴̶̧̲̘̫̰͕͐̀͜t̴̴̛̤̟̭̫͕̘͎̩̭͉̃̿̾͋͌͌̂̌͗̂͑̋͋̌̌̂̚͘͜͜͜͜͝ô͕͉̚l̿ȩ̘̻̄a̸̴̬̗̫̲̥͌̃͒̌̈́̉͋͊͝t̫͉͜͜͝(Ljava/lang/Object;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/kashi/settings/view/VersionBgImageView;->k͈͕̇̅ṅ̡͋͌̈́lo͓͎͎̼͚͎̩͂͑̂͜͜ķ̸̸̨̧̛̗̭̫̫̩̮̝̙̯͉̝̪̭̎̏͋̎̃́̐͗͝B̸̷̘͈̟͉̯̼̮̺͎̼̱̦̫̂́̔̎́̌͋͗̈́̋̾̚͘̚͝aa̢͙̱̹̭̺̔͋͂͐̎͗̋͂͆͜͝a̷͊͘c̶̶̡̖͈͉̺̯̥̰̟̯͙͋̈́̋̂́̌̈́̾̈̏͋͌̈͂̕à̸̷̶̛̹̭̺̭̗̰̗̎̎̂̈́͘͜͝ͅt̚uë̢̱͎̰̖̯̅͋̔̿͂͋͌͝a͉e̴͗͠͝aa͝KhĶ̶̧̧̧̠͙̦̫̼̝͈̼̱̗̎̂̑͋͌́͗̍̈͜o͗̃̑́ț̸͙̥̼̗̩̂͐̂̏̿͘ͅǘB̶̸̺͕͉̼͉̯̠͋̿̋h̶̺̲̺̘͗̈͌͗̈́̃k̖̱̭̫̙̂͊ǒ̧̨̡̧̺͕̱͎̠͙̤̗̺͌̽͌́̆̅͌͂̋̐͌͘͘͜͠()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ţ̦̯̘̯̱̐̋̌̄̋͝o̸̸̴̧̢̤̮͙̹̖̺̫͒̌̑̏͊͌̈͝͝o̸̵̷̷̢̢̗̗͓̗̖̪̺̱͈̫͖͖̻͎͌̑́͗̌́̈͂̀̏́̑͌̎͗̈͘̕͜͝c͜l̴̸̖̟̿̿͋̈̌̈́͂ͅu̵̱͉͈̭͝ͅa͙̮͖͝a̮̗̿̅̚P̷̸̨̰̹͖͓̑̔̑͋͜o̺̦̖͎͓̩̭͒̋̏͊̌̈́̒̑͌̈͌̋͘B̸̮̮̔͆̈́ã̧̰̭̫̀͗͑̀Ķ̸̸̷̷̸̧̛̪̼͕͕͈̹͈̰͓̫̱͎͓͓͚͌̑̑̎͋͗̿̔̈͌̈̊͌͘͘̕͘̚͘͜͜ö͎̗̟̭͌̃̀̂̂͂͜B̃p̸͕̈́͒̂̌̿͘͜͝K̗̭̯͚̗̦̭͋͌͌͌̒̈́͌̀͒͗͜͝͝ĉ̸̘͉͈̿̋̈́á̘̦̯̺̫̮̂͑̋͋̌̆͘̕͜͜͝ȏ̱̘̱̙̫̺̆̈͊̂̌̕͜͝͝͝ͅ(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private init()V
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1, v1}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->â̚c̶̵̛̞͕̻̜͙̫͕͋̌͆̑͌̎̈͗͘͜p̡̮̹̠̋̋͌̚͠ca̩l̖̯̝̠͚̗̿̂̂͠ą̶̤̹̠̘̦̂̔̌̈͌͝B̛̫̿̄l͗a̶̛̝̞͌B̶̵̢̹̱̮͎̟̱͉̺̙͈̯͈̱͋̌̍͆̂͒͋̅̑̇́̌̄͘͘͝͝͝͝t̸̛̗͙̖̪̮̪͗̎h̴̶̯͕̲͈̎̀̎̌̽B̶̲̯̗͚̘̖͓̗̲̺͎͚̂̌̆̈́̍͂̈́͗̎́͐̇͗͝ą̸̸̧͉̪͉͎͎̫̹͚̘̐̈́̌̍̌̔̌̇͌͠K̷̻̩̥̲̭̎̍͌͂̉͑̅͜͝t͚̺͗B̵̶̖͎͈͕͂̂͗͋̕̕͠P̴̷̧̫̖͑̏̃̌a̶̸̷͓̫͗̈́̌͊́̄͘͜͝ň͂͑Ǩ̴̸̨̢̨̧͚̺̤̘̱̥̯̫̩̹̹̹̙̫̖͑͗̊͊̂̅̆̂̆͐̃̒̿̈͑̃́́̿̉̌̂͘̚͜͜͝͝(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->K̻͈̫̻͗̈́͘ķ͓̻̂K̸̛̭̫̮̮̻͎̤̀̀̂͑̐̂̚͝͝͝ẗ̮̺͒͜ä̶̢̘́ȗ̱ô̹̎̐nK̢̛̥̙͈̯̙̏̔̂̈ͅt͌h̫͚͗̎̾al͉̥̎̊͗͗̅̕͜͝c̴ḩ̺͉̯͙̜̜̀̈́̓͗͂̌̃̍͊a̧Kņ̸̛͈̗̭̺̦͎̜̩̯̭̦̮̩͚̊̀̂́̃͋̑̈̌̃̏̀̑̊̚͜͝͝ơ̴̧͉̮͑̈̂͗̌̅̒͠a̴̧̅͑c̸͎̤̏͗͌̈́̂͑ḩu̷̸̸̢̢̫̯̘̭̭̦̥̩̹͎̫̬̺̤̗̥̠̼̲̫̙̫̖̰͙̗͋̔͐͐̍́̾̊̓̃̊̈͋͋͌̽͂̇͌͗̂͐̅̚̚͘͝͝͠͠͝a̸̴̰͙͗̄͝t͚̥͒͂̋̓̈́͝a̶̷̶̶̧̮̙̙̼̟̯̙̱̫͎̯͉͖̗͙̹͉̫͌̎̑̂́͋̆͋̐́͝͝ņ̠̲̻͐̂̊͜(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/kashi/settings/view/VersionBgImageView;->p̻̤̦͎̭͖̘͌̄̀̾̏̾͗͘ḩ̴̵̡͎̦̾n̞̥̦̝͗ö̴̶̴̴̷̸̧̢̢̲̦̱̹̫̫̮̺̘̺̻͎̦͙̫̗̫̤͂͌́̃̒̅͗̌͌́̄̃͒̓̈́̑̈̆̀̈̌̆̍͋͊͐͌̑͘͜͜͜͜͝͝͝ą̶̶̨̧̛̭̘͈̮̲͓̖̪̩͙̫̝̫̰͇̝̔̑͋̂̈́̄̈̌̏̅̋̿̈́͜͝͝ͅB̧̥̫͙͙͌͒̍̎̈͌̚͝ǎ̸̸̫̮̖̋͆̑̑̍̈͘͘B̶̧̝̙̗̰̉͒̍̎͒̿̋͌͒͝ň̷̵̢̛̛̺̤̯̝͎̫̪͇̮͎̘̹͈͉̜̘̻͓̫̜̐̋̈́̋̀̊̅͘̚̕͘͠oűơ̘̬̮̹̈̈́͌̀̎t̶̙̥̘̯̭̂̿̌͊͌̎͌͗̑͌P̙̔͜oa̸̸̧̻͓̺̫̦͚̩̩̮̺̦̮͊̂̃̈̃͌̈́̎̾́̈̿̈́̑͘͝͝ͅț͚ṷ̧c̗͎̲(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/kashi/settings/view/VersionBgImageView;->P͓͋̾̑ǫ̷̸̷̢̧̛̦͉̰̫̝͉͉͕̦̜̺̰̜̹͇̞̰̫̘̞͈͈͓̹̫̯̤̌̄̔̋̈́͗̆́͌̈́̈̄͂̿͋̉̅͂̌͐̑͗̈́̇̄͗͒̋͊̂̋͗̔̓̈́͌̂͜͠͠B̸̷̧̨̢̤͇̺̹̭̯̰͎̰̾͋̂̈́͑͐͒͌̾̂̔̋̑͜͝t̸̴̷̷̵̢̨̧̛͈̱̗͚̫̫̰̭͉͓̼̟̫̲̞̰̩̲̗͉̄̑̃̇͒͌͑̃̈́̃̂̐͒̂͌̃͌͊̈̑̊̕͘͠͝͝͠͝͝K̴̴̴̢̨̛̮̘̥͖̯͇̖̘͈̫̺̻͎͒̅͗͋̂̈́̔̂̅͗͆̀͐̈́͘̚͠͝͠͝͝a̧̭̼̯̹͉͇͕̎̾́̑̐̑͆͗̄͝͝ȁḽ̸̢͉̞͙̱͌̌̕n̛̮̈́͗͌͂͝͝ư̴̸̴̸̸̶̢͇̭̹̗̝̖̗̺͓̤̍̌̈́̑̈́̓͐̄̌͠͝͠͝u̷̴̢̺̦̝͌͂͂̄̈́͗̆͝P(Ljava/lang/Object;)V

    return-void
.end method

.method private isNightMode()Z
    .locals 54

    move-object/from16 v3, p0

    invoke-static {v3}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->a͚͙̦͕̦̋̌͌̌͑̋͆̓͗͜͠K̒͠ű̷̧̧̫̯͈̗͕̻͎̱͉̑̀͜c̶̸̰̼̺͇͕͕͎̅̿̍̑̑͌̏̾̌̾̚͝K̶̷̛̲̺̥͕̦̫̬̪͊̃̃he̔̚h̢͕̘͂͂͘͝na̴̧̯͎͜͜n̂ͅP̢̗̼̃̂̔̎͝͠ṫ̴̴̷̸̢̧̥̲̲͓̫̪̪̔̒͒͂̋̋̚͘͜͠͝ĺ̵̡̨̧̮̫̤̱̜̐̂̌̚͘͠͝l̢͓̲͗͊̎͝ǫ̷̢̧̢̛̛͚̥̹̪̦̖̮̹͉͎̱̮̰͗̐̂̏̇̎̎̐̋̄͘͝ȏ̢̘͚̘̪̊p̶̶̶̸͎̤̟͕͎̙͕̫̆̈́́̌̃͌̌̔̆͆͗̂͘͝ư̶̗̈́̇͆o̧͊̎̑͗̾͒̾̓́̀͊͝a̢̤͒K̸̸̴̵̨̨̢̛̭̮̱̘͚͇̫̘̦̠͉͎͓͈̱̗̯̥͋̓͂͌̈́̑̃͋̏̈̏̌̉̋̑̔̃̚͜͜͠(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->h̢͎̻̦̪̼̓͑͗ó̴̴̴̸̧̨̹̩̥̭̪̫͂̔͘͝͝k̫̤̖̺̤͗̃̔̃͋͠͝͝͝á͓́͝ȩ͐͐ļ̶̶̸̲̰͈͕̻̟͓̟̭̏͑͒̑͗͒́̿̒͜͝͝K̵̴̛̝͚̭͕̺͈̱̹̭̪͇͓͆̅̍͋̃͋̈̈́͗͂͒̎̋̿͘͘͜͜͜K̷̴̨̯̹̺͑̿̋̅͋́p̴̫̲̂͠͝t̥̃͌lḩ̴̀͆̄ä́o̶̥͉̍͌̈̉p̗̭͇ĥ̸̷̨̰̜͖̻̫̘̦͓̘͕̏̍̈́͐̋e̢̧̛͕͕̘̲̹̮̙̎̈̎͑̈̒̕͜B̸̶̸̷̶̧̩̦̻̩̺̥̪̹̗̟̟̗͈͂̏̍͂̋̃̌̿̀̑̀̋͒̎̎͘͘͘̚͜͝c̶̸̶̛̛̪̫̤̘͚͓̫̺͚̗̙̼͚͓͈̝͉͌̿̽͋̄̋̿͗̎͊̔͜͜ͅpu̸̱̫̅̃ŏ̴̢̦̼͉͑͗̈́̉͗̋͌̂͝͝(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->k̸̷̸̶̸̸̘̻͈̱͚̱͎͎̟̘̜͎̤̤̗̹̭̏͑͋̂͌͋̀̅͗̈̀̄̌͊͌̎̈̿͒̓̅̋͘͜͝͝͝͝͝ͅKê̸̴̷̸̢̛̛̻̭̺̼͈̰̦̅̈́̿̑̈́̒̈͜͝c̢͓̘̤̑̅͠͝͝c̷̴̸̛̦̥͎̎͌ą̶̵̧̛̛̩̗̠͓͚̭̘̗͚̙̭̮̥̭̫̈́̂̏̂̑̌̆̌͊̋̑̃̋̚͘͜͝l̛̘͉̗̺̂̋͊́̈̍̔̈́̅͜͝a̶̪͉͉̗̯͌͌͌̎͑̈̈̌̈́͗̂̽̚͜a̸̛͉͗̅̅̋͂̈́͘̕͜e̷̵̛̬̰̗̭̹̦̩̯̤͇͗̃̌̃́̐͌͗͠cn͈̚e̸̢̨̯̹̘̝̺̰̯͓̘̠͓̯̗̹͎̫͎̭͂̓̾̎̃̑̚͘̚͜͝͠͝͝͝a̶̴̷̢̨̛̛̹͚̲̫̤̠̦̲̫̭̫̫̯͕̙͖̯͌́̈́̅̏͌̃̂̄̃͒͌̆͜͠͝͝͝͠h̥(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->n̶͉̼̥̫̫̘͆͊͊̈͐͐̌͜͜K̥͉̐̀̆͗h̴̶͓͑ä̸̛̹̱͈̉͜ͅK̹̂Pơ̢͎͕͓͆̂͒ű͈͚K̺̺̄ç̧̖̤̯̥͎̫̂̈̽͌̒̈́͌̿͜͜͝ǎ̻̙͎̼̂̂̑̂̽͝K̵̈́c̸̸̴̴̸̶̡̢̧̛̘͎͈͓̥̲̼̯̱͚̭̻̙̫͑͗̾̌͐̅̅͋̈͋̒̅͊̌̚͜͝͝P͕̈́̂̆l̶̩̅͌̾͋̓͜͜ë̞͚́ņ̸̻̋̇̈̈ą̷̸̸̵̷̸̸̸̨̢̛̩̯̦̱̠̫̙̫̗̹̪̻͚̯͕͎̺̘͈͓͕̯̺̀̈͐̈́̋̈́̑͑̓͑̂̈͑͌̐̅̄̿̚͜ṵ͝ư̸̢̠̭͙̤̖̿̂̄̾̋̂̅̕͜l̫͑Pn̸̸̢͖̤̙͎͕̗̥̰̗͕̞̠͉̮̘̫̬̂͋̿̌̈͌͑̒̋͘͝͝P̥̈́͘͝a̧͎̥̘̹̫̋̋̋̆͝B͉̺̾(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static k͈͕̇̅ṅ̡͋͌̈́lo͓͎͎̼͚͎̩͂͑̂͜͜ķ̸̸̨̧̛̗̭̫̫̩̮̝̙̯͉̝̪̭̎̏͋̎̃́̐͗͝B̸̷̘͈̟͉̯̼̮̺͎̼̱̦̫̂́̔̎́̌͋͗̈́̋̾̚͘̚͝aa̢͙̱̹̭̺̔͋͂͐̎͗̋͂͆͜͝a̷͊͘c̶̶̡̖͈͉̺̯̥̰̟̯͙͋̈́̋̂́̌̈́̾̈̏͋͌̈͂̕à̸̷̶̛̹̭̺̭̗̰̗̎̎̂̈́͘͜͝ͅt̚uë̢̱͎̰̖̯̅͋̔̿͂͋͌͝a͉e̴͗͠͝aa͝KhĶ̶̧̧̧̠͙̦̫̼̝͈̼̱̗̎̂̑͋͌́͗̍̈͜o͗̃̑́ț̸͙̥̼̗̩̂͐̂̏̿͘ͅǘB̶̸̺͕͉̼͉̯̠͋̿̋h̶̺̲̺̘͗̈͌͗̈́̃k̖̱̭̫̙̂͊ǒ̧̨̡̧̺͕̱͎̠͙̤̗̺͌̽͌́̆̅͌͂̋̐͌͘͘͜͠()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ok̸̷̷̫̼̘̹̱̀̈͘ç̸̴̸̴̶̧̧̱̮̮̆͑̔͑̄̊ȩ̵̶̡̺͑̾̎̏̅́̔͠n̨̰̜̱̎͊̀̔̐̀̈̌̌͘t̷̸̨̥̘̠̖̬̯̘͌́̽̈́̾̊̎̃̚͝͝Ǩ̷̫̫͚̤̻̪́͒͒͐̄̄͌̋͠͠à̟̠̱͗͘Ķ̷̧̨̨̛̛͎̭͎͉͐̿̑̃̎̈́̊̐̀͘͘̚͜͝n̦͋͝P̸̸̸̸̴̷̧̧̧͎̫̦͎͓̫͖̫͕̘̪̪̺̺̼͖͓͖͎̫̌̿̌̈̈́̀̀̂̿̎̌́̋̊̌̍̌̔̈͘͜͝͝oḁ̴̅̔̈́h̴̘̫͖̪͎̀͝a̸͈̎̋̉͜ą̸̮̪̗̲̮͋́̑͐͜͝ḱ̷̯̈́͗ą̷̸̶̸̨̛̙̱̤̯̭͚̙̭̱̯̯͓̺̇̈͒̋̂̄͌͌̈́̋̂̎̑͐̈́̈̕͘͘͜͠͝͝ͅoP̸̶̫̬͕̙̯̎̽͐͆̾̿̎̚͜͝ͅ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/kashi/settings/view/VersionBgImageView;->KEY_TOGGLE_STATE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ḻ̸̟͆̋̅͜t͙a̵̴͚̮͌̾̏͠e͉͉͚͒̾͜͠h̵̸̢̢̛̤̫͓̞̀̋͌̾͘͠Ka̷̠͎̘͚̮͈̤̫̜͕̺̗̭̹̰̐͂̏̔̿͆̂̌̈̋͌͆̔̄͒͌͂͘͝pä̷̸̴̯̟̺̺̦̘̆͌̂̈̋̃͠͝t̠̥͌a̰̥̩͓̐̅͊ḵ̷̛̛̥͇̂̋̿̅̚a̷̶̴̸̲͉̩͚̖͉͌́̂̎̃̎̌̚͘͝͝e̵̷̢̢̛͚̦̥̋̃̆̔̌̋̃͌͌̋͘ǩ̸̯̱ư̶̧̧̨̮̠̺̘̱͈̺̅̃̅͗́̋͝͝ơ̮̫̹͉̥̯̟͙̰͈͓͑͂̿͘͠͝͝ľ̷̶̵̨̧̖̯̺̈̀̆͊̑͑̕͜Ḇ̸̶̸̵̶̶̢̨̡͉̘̗̺̞͓͓̫͚̭̯̠̗͙͚̹̅̄̓̈́̈͌̆͑̂͌̎̃̌͌̑̾̋̃͌̔͒͗̽̿͒͝͝l̬̱͒ļ̺̤̫̔̃̍aen̨(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ok̸̷̷̫̼̘̹̱̀̈͘ç̸̴̸̴̶̧̧̱̮̮̆͑̔͑̄̊ȩ̵̶̡̺͑̾̎̏̅́̔͠n̨̰̜̱̎͊̀̔̐̀̈̌̌͘t̷̸̨̥̘̠̖̬̯̘͌́̽̈́̾̊̎̃̚͝͝Ǩ̷̫̫͚̤̻̪́͒͒͐̄̄͌̋͠͠à̟̠̱͗͘Ķ̷̧̨̨̛̛͎̭͎͉͐̿̑̃̎̈́̊̐̀͘͘̚͜͝n̦͋͝P̸̸̸̸̴̷̧̧̧͎̫̦͎͓̫͖̫͕̘̪̪̺̺̼͖͓͖͎̫̌̿̌̈̈́̀̀̂̿̎̌́̋̊̌̍̌̔̈͘͜͝͝oḁ̴̅̔̈́h̴̘̫͖̪͎̀͝a̸͈̎̋̉͜ą̸̮̪̗̲̮͋́̑͐͜͝ḱ̷̯̈́͗ą̷̸̶̸̨̛̙̱̤̯̭͚̙̭̱̯̯͓̺̇̈͒̋̂̄͌͌̈́̋̂̎̑͐̈́̈̕͘͘͜͠͝͝ͅoP̸̶̫̬͕̙̯̎̽͐͆̾̿̎̚͜͝ͅ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    invoke-direct {p0}, Lcom/kashi/settings/view/VersionBgImageView;->init()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ň̸̵̟̖͎́̂P̺̗̈͊̔̔͗͗̕͜ḁ̫̈̌̆̌̌͒͝p̢̧̧̰͓̗̄̂́̎̋̌̾͜a̶̛̛̛͉͓̥͚̥̠͈̦̪͎̅̽̋̈̈͐̿͜͜͜͝t̛̩͈̺̅̈́͝ͅa̶̹͎͎̺̜͉͌̈̌̿͜͝͝h̺͈͕͑͂͝͝K̸̜̭̙̆͝ļ̶̴̡̦͓͎͙̈́̅̅̾͠Bp̵̶̤̭̲̘̫͈̎̒̍͌̅̋̒̎̕̚͝ö̴̧̫͎̠̺̾͐̈͋͜͝ą̮̫̱͚̤͌͊̑̌̏͘͜o̴̸̴̵̶̧̫͉̫͎͈̖̜̖̿̑͗̎̓̈́̍̿͝͝͝͠P̾eo̷̫͚̺̠̮̮̗̰̫̾͆͆̄̏̆̔̍̎̃́̎͘͝B̸̸̶̢͎̹̫̗͚͕͈͓̲̿̋͌͌̌̀̑̃͌͜͝e̷̲̦̗t̼̯͎͓̓͋̌̋̎Bà̋K̗͘pä̡̫̩ȃ̵͈̯̞̫̙̤̃̋̄̅̈́͌̿͜͜͝(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ţ̴̶̹̖͉̭̔̂͌̈̑͒͐̚͘͝Ḃ̸̛̪̮̜̖̖͗̋̍̽̀̎̑͌͘ͅu͚͐̈̃ư̶͈̙̥͎̭͓͇̹̫̮͉͚̍̆̌͌͗̿̈́̈͗̀̾́̉͌͋͋͜e̸̷̸̢̢̘̙͎̩̦̭͕͕͕͑̑̀̂̔̀̃̎̚ě̶̮̗̝̗͈̓̃̈́̂̀̈͌̔͌̌͋͝ţ̸̵̸͈͎̱̫̝̦̹͎͇͎̱̲̫̼̱̹̘͓̲͈̋̐̿͋̃͌̈́͂̃̏̌̇̿̓̿͋̋͋̋̃͋̑͘̚͜ͅţ̴̢̗͎̯̩̰͌̽͒͐͑͌ö̸̯̘̗́͂̆͋͒̌a̛̖͓̋͂̏̈́̑̍̈́̌͜͜͝K̋̆ơ̴̪̝͉̿̉͗͂̂̂̈́͘͝B̥̹̺͕͈̿̏̔͋̆͘͝ö̵̞̹̺̺̼̖̫̖͕͈̙̽̂̌̃̃͑͘͜͝l̀ő̶͓̲̀ǒ̜̥͓͈̈́͌h̢̢̙̑͜t̪̲͓͖̑̃̕a͗u̹̗͝()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    invoke-direct {p0}, Lcom/kashi/settings/view/VersionBgImageView;->isNightMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static n̸̠̥͉̺͚̠͒̋̏͌̆̍̾͘͜͝͝K̨͚͆̾t̶̸̷̴̢̛͈̹͚̱̦̭͕̞̹̗̻̪̋͒͗̍̈́͐̏̍̚̕͜P̸̷͈̪͈̞̖͓̦̭̻̃̓͌̃͘t̷̢̧̢͎̺͇̪͓̃̈́͂̌͋̄̑̂͘͜͝c̷̴̶̴̸̷̯͇̫̘͚̹̺͚̯̫̦̘̙̫̲̰͉͚͚͈̫̫͓̗̞̺̈͗͗͌̈̾̆̃̂̎͌̋͂̐̄͌̈̾͜͜͜͝͝a̶̹̫̮̫͋͌̐͗̔̍͝ͅB̼̤͌̂̃͜ͅh͚͎̦ḁ̶̛͉̥̗͈͎̀̋̃̂͐̈̌͋͝͝n̸̴̢̧̥͈͚̰̖̩̤͉̗͑̈́̂̐͐͘͘͠͠͠e̷̱̫̥͈̅̂̑̄̌͒ȗ̱̌͆͑̋͋̈́e͉̰͌̎̂̈́ḧ̷̸̷͎̘̘̺̠́̀̂̿͘̚t̷̲̚t̼̞̥̰̫̋̆͜ǎ̢͖̃͗͝p̵̫̫̞͙̩̲͋̈͑̂̌͘a̧̢̹̔̑(Ljava/lang/Object;III)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ţ̴̶̹̖͉̭̔̂͌̈̑͒͐̚͘͝Ḃ̸̛̪̮̜̖̖͗̋̍̽̀̎̑͌͘ͅu͚͐̈̃ư̶͈̙̥͎̭͓͇̹̫̮͉͚̍̆̌͌͗̿̈́̈͗̀̾́̉͌͋͋͜e̸̷̸̢̢̘̙͎̩̦̭͕͕͕͑̑̀̂̔̀̃̎̚ě̶̮̗̝̗͈̓̃̈́̂̀̈͌̔͌̌͋͝ţ̸̵̸͈͎̱̫̝̦̹͎͇͎̱̲̫̼̱̹̘͓̲͈̋̐̿͋̃͌̈́͂̃̏̌̇̿̓̿͋̋͋̋̃͋̑͘̚͜ͅţ̴̢̗͎̯̩̰͌̽͒͐͑͌ö̸̯̘̗́͂̆͋͒̌a̛̖͓̋͂̏̈́̑̍̈́̌͜͜͝K̋̆ơ̴̪̝͉̿̉͗͂̂̂̈́͘͝B̥̹̺͕͈̿̏̔͋̆͘͝ö̵̞̹̺̺̼̖̫̖͕͈̙̽̂̌̃̃͑͘͜͝l̀ő̶͓̲̀ǒ̜̥͓͈̈́͌h̢̢̙̑͜t̪̲͓͖̑̃̕a͗u̹̗͝()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, [S

    invoke-static/range {p0 .. p3}, Lcom/kashi/settings/view/AboutSettingsHelper;->n̸̲̄̅ù͊t̚h͚B̸̶̸̧̨̛̤̪̘͎͕̫͎̃̆̃͒̈́̃̌̈́̑͒̄̀͘̚͝k̸̛̛̫̫͋̂͌̋͊͑͊̈o̸̸̧̭͈̖͚̟͚̠̖̫͕̿͑̑̍̅̌̈̌͂̕͠͝͝h̶̶̨̢͚̗̭͈̠̭̯̗͉̩̼̫̘̟̞̹̓̃̑̌̎̌̌͆̅͋̾̐͐̆͝͝on̸̛̟͂͌͑̒̏̂̇͆ą͎̮ȃ̸̧̧͎͕͓̗̪̋͂̈́́̚ň̵̡̢̯͚̀̿̀͗̈́̂̿̚͘ü̶̴̸̸̸̧̺̹̦͉̺̘̱̲̦̖̜̫͎̫̩͙͚̱̻̅͌̅̇̈́̍̎̆̏̿́̄̄̎̏͑̈́̈́͘̚͝ņ̹̃̈́B̵͕̮̹̲̈́̆̏̋̃K͓͙̭̺h͎̀̎͌̄͜ḩ̶̷̧̢̛̛̮̼͓͓̱̄̂͌͗̔̂̉̉̂̈̄̋P̶̎͗̎͝ṯ̴͎̪͕͈̫̥̙͗̂̌̄̃͋̔͝ņ̥̦͉̐̄͝([SIII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static o̺͎͌̾̋ͅa̷̶̢̧͉̦̍̈́͌̾̂͜͜a̸̯̪͎̫͚͌̂̅͜͝͝͝B̨̲̝͈͌̽͋͜͝͝Kh̸̴̸̡͖̺̰̲̞̫͕̱̏̌͝K̫͚͋̌͊̃P̴͚͖̭͒̌͌ka͎͎ţ̸̛̬͈͕̰̠͉͚̫̃̌̅̎̇͑̉͑͗̃̌̋̚̕͝ͅKp̷̷̼̪͈̪͚̬̜͈̥̤͗̄̈́̂̌̊̈́͝h̯͚͇͂̄̃n̫͕̪̤̪͕͌̈̃̀̐̇̒̚á̶̸̶̷̷̧̛̱̥̠͓͈̥͉͚̲̱͓̮͈̌̐̿̽̈̂̃͆̎͌̕͝͝l̶͚̖͚̻̭̪̭̻̘͉͈̫͈͗̑̍̏́̈́̿̋̿͒̂͗͒̊͘͠ư̸̸̶̷̵̡̨̧̺̯̠̘͈͉̥͎͉̯̬͇̗̞̫͕͈̲̗̤̗̻̤͎̦͒̐͋͒͌̈́̃͑̈̊̿͌̾̿͑̍̆̃̈́̒̈̽̊̌̌̚̚͜͠͝a̴̭̥̯̺͗̌͊̈́̀̍̎͗̚(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ok̸̷̷̫̼̘̹̱̀̈͘ç̸̴̸̴̶̧̧̱̮̮̆͑̔͑̄̊ȩ̵̶̡̺͑̾̎̏̅́̔͠n̨̰̜̱̎͊̀̔̐̀̈̌̌͘t̷̸̨̥̘̠̖̬̯̘͌́̽̈́̾̊̎̃̚͝͝Ǩ̷̫̫͚̤̻̪́͒͒͐̄̄͌̋͠͠à̟̠̱͗͘Ķ̷̧̨̨̛̛͎̭͎͉͐̿̑̃̎̈́̊̐̀͘͘̚͜͝n̦͋͝P̸̸̸̸̴̷̧̧̧͎̫̦͎͓̫͖̫͕̘̪̪̺̺̼͖͓͖͎̫̌̿̌̈̈́̀̀̂̿̎̌́̋̊̌̍̌̔̈͘͜͝͝oḁ̴̅̔̈́h̴̘̫͖̪͎̀͝a̸͈̎̋̉͜ą̸̮̪̗̲̮͋́̑͐͜͝ḱ̷̯̈́͗ą̷̸̶̸̨̛̙̱̤̯̭͚̙̭̱̯̯͓̺̇̈͒̋̂̄͌͌̈́̋̂̎̑͐̈́̈̕͘͘͜͠͝͝ͅoP̸̶̫̬͕̙̯̎̽͐͆̾̿̎̚͜͝ͅ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    iget v1, p0, Lcom/kashi/settings/view/VersionBgImageView;->mDarkResId:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static p̻̤̦͎̭͖̘͌̄̀̾̏̾͗͘ḩ̴̵̡͎̦̾n̞̥̦̝͗ö̴̶̴̴̷̸̧̢̢̲̦̱̹̫̫̮̺̘̺̻͎̦͙̫̗̫̤͂͌́̃̒̅͗̌͌́̄̃͒̓̈́̑̈̆̀̈̌̆̍͋͊͐͌̑͘͜͜͜͜͝͝͝ą̶̶̨̧̛̭̘͈̮̲͓̖̪̩͙̫̝̫̰͇̝̔̑͋̂̈́̄̈̌̏̅̋̿̈́͜͝͝ͅB̧̥̫͙͙͌͒̍̎̈͌̚͝ǎ̸̸̫̮̖̋͆̑̑̍̈͘͘B̶̧̝̙̗̰̉͒̍̎͒̿̋͌͒͝ň̷̵̢̛̛̺̤̯̝͎̫̪͇̮͎̘̹͈͉̜̘̻͓̫̜̐̋̈́̋̀̊̅͘̚̕͘͠oűơ̘̬̮̹̈̈́͌̀̎t̶̙̥̘̯̭̂̿̌͊͌̎͌͗̑͌P̙̔͜oa̸̸̧̻͓̺̫̦͚̩̩̮̺̦̮͊̂̃̈̃͌̈́̎̾́̈̿̈́̑͘͝͝ͅț͚ṷ̧c̗͎̲(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$1;->l̴̷̟̭̩̹̥͉̄̌͘k̹̹̼̫̺̒̌̊̾͝n̷̴̶̢̧̧̧̛͕̩̘̗̗̺̮̖͚̺̯͕̘̥͚̘̜͋̒̔͑̋͗͊̿͗͑̅̈́̌̚͘̚͜͜͠͠ͅa̢̛͉̘͓̲̬͓̋͋͊͐ä̸̵̷͚͓̥̭̈́̾̎̌̈͂̌̇̀͑͘͜͜͝͝n̩̋̚͠h̵̹̻͘a͕͝l̛̘̂ḱ̸̟̻̯̖͕͈͌͌̅͝ḁ̷̷̵̴̥͉͇̙̈͗̈̕̕͠͠ẗ̶̴̨̛̘͕̱̫̘͈̼͈̫̹̞̙́̈̓̈́̃͌̿̋̈́͂̈͐̚̕͜͝B͚c̛̤̈̾́̂͝P̻̺͝a͊̾͜ẗ̸̶̘̠̠̦̦̜̰̥̹͓͎̩̭͓̘̹͈́̄̌̔̎́͌̅͋̕͜͜͠͠͝͠ǎ̴̧̡̧̛̮͓͕̲͚͉͌̄̌̈́̃̌̚͠ȏ̪̦̺͓̞͈͎͓̺̺͐͑̋͒̌͜l̅̍̌c̷̷̛̹̪̥͈͋̃̎̄̈͜͝ͅ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    invoke-direct {p0}, Lcom/kashi/settings/view/VersionBgImageView;->updateDrawableForTheme()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method private setToggleState(Z)V
    .locals 55

    move/from16 v5, p1

    move-object/from16 v4, p0

    invoke-static {v4}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->a͚͙̦͕̦̋̌͌̌͑̋͆̓͗͜͠K̒͠ű̷̧̧̫̯͈̗͕̻͎̱͉̑̀͜c̶̸̰̼̺͇͕͕͎̅̿̍̑̑͌̏̾̌̾̚͝K̶̷̛̲̺̥͕̦̫̬̪͊̃̃he̔̚h̢͕̘͂͂͘͝na̴̧̯͎͜͜n̂ͅP̢̗̼̃̂̔̎͝͠ṫ̴̴̷̸̢̧̥̲̲͓̫̪̪̔̒͒͂̋̋̚͘͜͠͝ĺ̵̡̨̧̮̫̤̱̜̐̂̌̚͘͠͝l̢͓̲͗͊̎͝ǫ̷̢̧̢̛̛͚̥̹̪̦̖̮̹͉͎̱̮̰͗̐̂̏̇̎̎̐̋̄͘͝ȏ̢̘͚̘̪̊p̶̶̶̸͎̤̟͕͎̙͕̫̆̈́́̌̃͌̌̔̆͆͗̂͘͝ư̶̗̈́̇͆o̧͊̎̑͗̾͒̾̓́̀͊͝a̢̤͒K̸̸̴̵̨̨̢̛̭̮̱̘͚͇̫̘̦̠͉͎͓͈̱̗̯̥͋̓͂͌̈́̑̃͋̏̈̏̌̉̋̑̔̃̚͜͜͠(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->ec͚͋ǩ̡̠̋̌̂̎a̸̫͈̤̖̘̺̫̰͑̂͆̐́͜ä̸̛̲͉̔n̵̸̸̢̧̛̥̙̪̹͚̥͌́́̌̌͒̌́̑͌͋̈̑̿̿͘̚͠͝K̶͓̙̦̭̹̯̃̑̈̚K̶̸̨̧̮̯͕͉̦͈͕̆̾̅̑̿͐̚͠͝ō̫̹̺̼͈̩̤̭̆̈a̸͈̤͗l̛c̯͎͎̹̪͓̠̭̋̃̇̂̕p̸̸̲͈̫̺̪̹̭̭̂̑͝͝K̷̑̈́͊͠nl̵͕̈̃̄̑n̵̷̷̢̧̺͉̩͎͚̫̫̲̦͈͎̦̠̗̟̱̘̦̫̙̂̾̏̌͂́͗̌͐̀͋͊͌̀̃̇͜͝͝͝͠ở̩͚̜ä̴̶̧̲̘̫̰͕͐̀͜t̴̴̛̤̟̭̫͕̘͎̩̭͉̃̿̾͋͌͌̂̌͗̂͑̋͋̌̌̂̚͘͜͜͜͜͝ô͕͉̚l̿ȩ̘̻̄a̸̴̬̗̫̲̥͌̃͒̌̈́̉͋͊͝t̫͉͜͜͝(Ljava/lang/Object;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/kashi/settings/view/VersionBgImageView;->k͈͕̇̅ṅ̡͋͌̈́lo͓͎͎̼͚͎̩͂͑̂͜͜ķ̸̸̨̧̛̗̭̫̫̩̮̝̙̯͉̝̪̭̎̏͋̎̃́̐͗͝B̸̷̘͈̟͉̯̼̮̺͎̼̱̦̫̂́̔̎́̌͋͗̈́̋̾̚͘̚͝aa̢͙̱̹̭̺̔͋͂͐̎͗̋͂͆͜͝a̷͊͘c̶̶̡̖͈͉̺̯̥̰̟̯͙͋̈́̋̂́̌̈́̾̈̏͋͌̈͂̕à̸̷̶̛̹̭̺̭̗̰̗̎̎̂̈́͘͜͝ͅt̚uë̢̱͎̰̖̯̅͋̔̿͂͋͌͝a͉e̴͗͠͝aa͝KhĶ̶̧̧̧̠͙̦̫̼̝͈̼̱̗̎̂̑͋͌́͗̍̈͜o͗̃̑́ț̸͙̥̼̗̩̂͐̂̏̿͘ͅǘB̶̸̺͕͉̼͉̯̠͋̿̋h̶̺̲̺̘͗̈͌͗̈́̃k̖̱̭̫̙̂͊ǒ̧̨̡̧̺͕̱͎̠͙̤̗̺͌̽͌́̆̅͌͂̋̐͌͘͘͜͠()Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->K͎̖̄̐c̝ǎ͝n̷̶̨̼̦̭͉͎̓̎̆̂͒͗̾̌̐͂͑͜͝hP̵̶̢̧̛̫̰̩͙̩͕̺͐̑̿͑̓͗̑̔̚̚n̟͈̯̘̂̆̿̅͑̚ç̶̸̸̸̧̢̯͙̦͚̯̺̎̂͌̃̅̌͊͌̌̃̔̋͝͝͝ͅȗ̴͑͠K͕͈̺̭̱͗́̑͐̈́̚aą̶̸̷̧̮̫͎̲̺̦̙̘̪̲̯͖̲̈́̂̃͌͋͌̋͋͑̈̓́͆͗͑̈͘͝͠P̟̅n̵̷̢̛̫̯̯̫̺͋̍̃̾̊͗͂̌̄̉͋̑͌̈͗̐̚͠o̶͎̥a̭͈̝̭̮̺̝͓͗͌͌̔͂̐̾͘͜͠͠P͙Pt̸ä̸̵̸̴̧̢̛̹͚̱͕̠͎̱͎̜̺͇̻̗̲́͋̓̔̐͋̄̃͌͗̑͌͌͌̏̀̅̋̀͌̎̃̍̂͘͜͜͝͝͝͝Ķ̻̫uņ̧̨̛̛͎̹̭̮̮̻̗̦̼̱͐͗͆̎̎́̂́̒̃͆̚̕(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    return-void
.end method

.method public static ţ̷̷̸̭̺̯̅̉̋̅̃̾n̈́̑͠o̶̷̴̪̰̗͗̄͠k͖ȃ̺̪̱͚͗̔͋̇͊͑̌͋̈́̚͘͜ç̸̸̶̴̶̛̞̹̲͚̯̮͕̰͈͓̘̰̮̖̗̞̬͎̱͈̯̥̄́̐̆̈́̅̈̃͋͗̌̃̃̂̒̈̚͘͜͜͝l͎̋̎͘͝n̸͉̮̑͌̎͜͝a̯̎ã̗̯͜P̸̢̨̙̠̦̞͚̩͖͑̌͗̄̇̀̄̚͝û̦͈͌͠K̸̸̨̥̞͎̗̬̮͓̗̟̝̾͗̂̂͊̂̋̃̍͜͠K̵̸̢̢͈̫̩͂̿͘P̨͓̫̜̭͓̠̫̾̆̂͋͜͜ç̴̴̷̸̴̵̷̛̺͓̺̹̗͈͉̮͕̯̯̬̱̯̤͓̲̺͚̻̫̖̱̗̮̋͌̌̒͌̃͌͑̃̀̂̃̓̂̈́͂̓̈̎͗̀̏̎̂̎̆̌͊̈̏̂̊̈́͘͘͘͜͜͠͠͝ͅő̷͚͈̰̼͎̫̗͙̗̅͒̽͌͌̔͋̔̒̂͜ͅ(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->P͉ķ̩͕̥͋͗ą͉͕̥̥͎̜̈̅̈́͝k̵̷̨̨̧̧͖̞̥͈̮͓͎͎̪̂͑̑̂̓̐̂̋͝͝ṋ̵̢̢̡̥͕͊́̎̌Ķ̷̶̛̙̫̦̪̙̟̺̎͌̑̋̌͑̂̎͘ơ̸̦̥̂̈́̔̚͠͠ë͈̮͋̄̾Kh̶̷̸̗̫̤͕͚͚̘̞̮̄̋̄̐̓̋͑͗͐K̂p̵̷̪̘̱͕̰͈͐̄̕͘͜͜PB̨̛̘͕̗̫͉̱̫͙̥̯͕͕̰̘̤̤̦͗͗͊̃͋̆̃͐͗́͠B̷̷̤͇̹̋̅̄̋͜͠t̴̤̙̚Ķ̶̧̩̙̮̩̤̩̭̺̺̮͈̍̈͌̂̋̒̔̂̒̿̍̏̌͌̚͝͝at̖̥̠͕͌͊a̸̰̱͂̈́ȩ̶̶̛̛̛̺̩͉̖̱̦͈̫͙̫̥̻͎̯̈̋͌̄͑͂̿͗̌̅͑͂̍̉͘͘̚͜͜͜͝K͚̦̦̫͙̘̺͗͆̅͐̆Ǩ̢̘̠̫̜̼̦̅̅̚()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Lcom/kashi/settings/view/VersionBgImageView;

    invoke-direct {p0, p1}, Lcom/kashi/settings/view/VersionBgImageView;->setToggleState(Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method private updateDrawableForTheme()V
    .locals 53

    move-object/from16 v2, p0

    invoke-static {v2}, Lcom/kashi/settings/view/VersionBgImageView;->ň̸̵̟̖͎́̂P̺̗̈͊̔̔͗͗̕͜ḁ̫̈̌̆̌̌͒͝p̢̧̧̰͓̗̄̂́̎̋̌̾͜a̶̛̛̛͉͓̥͚̥̠͈̦̪͎̅̽̋̈̈͐̿͜͜͜͝t̛̩͈̺̅̈́͝ͅa̶̹͎͎̺̜͉͌̈̌̿͜͝͝h̺͈͕͑͂͝͝K̸̜̭̙̆͝ļ̶̴̡̦͓͎͙̈́̅̅̾͠Bp̵̶̤̭̲̘̫͈̎̒̍͌̅̋̒̎̕̚͝ö̴̧̫͎̠̺̾͐̈͋͜͝ą̮̫̱͚̤͌͊̑̌̏͘͜o̴̸̴̵̶̧̫͉̫͎͈̖̜̖̿̑͗̎̓̈́̍̿͝͝͝͠P̾eo̷̫͚̺̠̮̮̗̰̫̾͆͆̄̏̆̔̍̎̃́̎͘͝B̸̸̶̢͎̹̫̗͚͕͈͓̲̿̋͌͌̌̀̑̃͌͜͝e̷̲̦̗t̼̯͎͓̓͋̌̋̎Bà̋K̗͘pä̡̫̩ȃ̵͈̯̞̫̙̤̃̋̄̅̈́͌̿͜͜͝(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/kashi/settings/view/VersionBgImageView;->o̺͎͌̾̋ͅa̷̶̢̧͉̦̍̈́͌̾̂͜͜a̸̯̪͎̫͚͌̂̅͜͝͝͝B̨̲̝͈͌̽͋͜͝͝Kh̸̴̸̡͖̺̰̲̞̫͕̱̏̌͝K̫͚͋̌͊̃P̴͚͖̭͒̌͌ka͎͎ţ̸̛̬͈͕̰̠͉͚̫̃̌̅̎̇͑̉͑͗̃̌̋̚̕͝ͅKp̷̷̼̪͈̪͚̬̜͈̥̤͗̄̈́̂̌̊̈́͝h̯͚͇͂̄̃n̫͕̪̤̪͕͌̈̃̀̐̇̒̚á̶̸̶̷̷̧̛̱̥̠͓͈̥͉͚̲̱͓̮͈̌̐̿̽̈̂̃͆̎͌̕͝͝l̶͚̖͚̻̭̪̭̻̘͉͈̫͈͗̑̍̏́̈́̿̋̿͒̂͗͒̊͘͠ư̸̸̶̷̵̡̨̧̺̯̠̘͈͉̥͎͉̯̬͇̗̞̫͕͈̲̗̤̗̻̤͎̦͒̐͋͒͌̈́̃͑̈̊̿͌̾̿͑̍̆̃̈́̒̈̽̊̌̌̚̚͜͠͝a̴̭̥̯̺͗̌͊̈́̀̍̎͗̚(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/kashi/settings/view/VersionBgImageView;->a̸̴̸̢̛̫͈̭̹̫̺̿͌͐̈͐̋̐́̍͆̐̚ť͉KPǫ̛̖͈͎̿͋͘ľ̯͜͠ā̶̤͕̌̑͌͘͠͝K̅̈n̄ë̴̷̘̖̫͓͚͎̱́̀́̿͊͝K̸̷̋̅̃̌͝ă̴̴̴̸͓̗̽͘ę̸̛͓̫̯̺̠̫̦̠̗̬͕̘̼̫̩̹̫̠͒̈́̂̆̈̈́̂̔͑̌́̚͜͝͝Ķ͕̌̈́̿͂o̴̧̫͉͒̍̎̈̌͊n̸͉ô̧͋p̸̢͉̖͕̬̼̝͇̭̖͖̻̥̂͋̋͋̌̿ǘ̵̷̧̧̮̭͎̹̲̀͌̑͒͝P̷͆̑̐͝Kc̮ţ̷̶̦̺͉̹͚̘́̈́̈̈́͌̅̀̆͘ą̵̛̹̺͓̫̄̔̈́͘͝e̪͗p̹̉k̷̸̛̛̗̻̮̤͕͈͎̗͙̪̲͈͚̻̲͊̌̾̌̏͂̈̌̂͑͘͝͝ͅp̸̸̵͓͓͕̺̪̫̲̫̗̄͑̑̈́͌̓̋̂͗͋͌̉͘͠(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->è̞͇̖̼͂̑̏̈́̿͘̚͜͜͝B̢̧̲͗̋́̃̄͐̋̚͜ŭ͓̘͙͈̃̋͑̎̔͋K̷̫̦̥̔͗̆͌á̸̸̴̧̛̹̮̫͙̫̙̥̭͎̿́͐̀͌́͊͑̄̈́̂͐͑̋́͌̃͝Ķ̴̸̴̵̢̡̨̧̨̛̲̩͎̲̫̤̙͚̩̮̰̅͆͌͐̌͋͐̂̔͒̈́̄̎̎̐͑̆̎͗̂̍̚̕͝͠͝ͅt̪͎̑̍͝͝ç̵̷̸̷̘͓̫̥͚̫̘̘̥͎̹̥̼̥͙̘̦̱̮̲͎̭̯̺̈́̅͑̌̋̈̈̈́̈̑̕͜͜͝͠͝P̸̩̪K̶̶͇͈̮̼̹̀͗͆̿h͇̹̦ǫ̶̩̼͓͋͌͘͝͝ȧ̧̤̋̂ư̷̴̌k̛̺͕̟̹̋̂̿̈́̈́̀͘͜͠ho̫͗h̵̼̑̾P̸̢̛̛͕̗̗̮͈̺̯̫̭̺̐̃̈̈̌͊̔̍̈͋̐͝a̅c̶̏e̍̂B̴̛̺̩̼͉̅̈́̈́͝(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyState()V
    .locals 54

    move-object/from16 v3, p0

    invoke-static {v3}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->a͚͙̦͕̦̋̌͌̌͑̋͆̓͗͜͠K̒͠ű̷̧̧̫̯͈̗͕̻͎̱͉̑̀͜c̶̸̰̼̺͇͕͕͎̅̿̍̑̑͌̏̾̌̾̚͝K̶̷̛̲̺̥͕̦̫̬̪͊̃̃he̔̚h̢͕̘͂͂͘͝na̴̧̯͎͜͜n̂ͅP̢̗̼̃̂̔̎͝͠ṫ̴̴̷̸̢̧̥̲̲͓̫̪̪̔̒͒͂̋̋̚͘͜͠͝ĺ̵̡̨̧̮̫̤̱̜̐̂̌̚͘͠͝l̢͓̲͗͊̎͝ǫ̷̢̧̢̛̛͚̥̹̪̦̖̮̹͉͎̱̮̰͗̐̂̏̇̎̎̐̋̄͘͝ȏ̢̘͚̘̪̊p̶̶̶̸͎̤̟͕͎̙͕̫̆̈́́̌̃͌̌̔̆͆͗̂͘͝ư̶̗̈́̇͆o̧͊̎̑͗̾͒̾̓́̀͊͝a̢̤͒K̸̸̴̵̨̨̢̛̭̮̱̘͚͇̫̘̦̠͉͎͓͈̱̗̯̥͋̓͂͌̈́̑̃͋̏̈̏̌̉̋̑̔̃̚͜͜͠(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->ec͚͋ǩ̡̠̋̌̂̎a̸̫͈̤̖̘̺̫̰͑̂͆̐́͜ä̸̛̲͉̔n̵̸̸̢̧̛̥̙̪̹͚̥͌́́̌̌͒̌́̑͌͋̈̑̿̿͘̚͠͝K̶͓̙̦̭̹̯̃̑̈̚K̶̸̨̧̮̯͕͉̦͈͕̆̾̅̑̿͐̚͠͝ō̫̹̺̼͈̩̤̭̆̈a̸͈̤͗l̛c̯͎͎̹̪͓̠̭̋̃̇̂̕p̸̸̲͈̫̺̪̹̭̭̂̑͝͝K̷̑̈́͊͠nl̵͕̈̃̄̑n̵̷̷̢̧̺͉̩͎͚̫̫̲̦͈͎̦̠̗̟̱̘̦̫̙̂̾̏̌͂́͗̌͐̀͋͊͌̀̃̇͜͝͝͝͠ở̩͚̜ä̴̶̧̲̘̫̰͕͐̀͜t̴̴̛̤̟̭̫͕̘͎̩̭͉̃̿̾͋͌͌̂̌͗̂͑̋͋̌̌̂̚͘͜͜͜͜͝ô͕͉̚l̿ȩ̘̻̄a̸̴̬̗̫̲̥͌̃͒̌̈́̉͋͊͝t̫͉͜͜͝(Ljava/lang/Object;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/kashi/settings/view/VersionBgImageView;->à̧o̷̴̖͒͒ͅP̷̖̌̀̇ȩ̶̷̶̫̫̲͚͎̺̘̫̂̀̓̀̏̋̎́̊͜͝a̧̰̙̲͚̘̠͉̋t̃͜u̍͌͜KK̸̷̛̥͓̬̠̯̭̫̲̥̭̙͐̈͗̌͜o̫͒̑͊ļ̷̸̷̛͕̼͓̭̗̮̥̗̩̫̯̫͕͌͑̈̌̃̅̍͒̃̿͗̀̇̆̂̌̑͗͜͜͜͝͝͝P̸̨̖̭̈́͊͝o̭͈̫͉̥̿̾͑t͖̞̙̹̦̺̪̎̊̍̑̽̌̀̾͜n͓̯̤̺̠̥̥̥̫̫͈̯͈̖̫̭̯̼̲͂́̋̄̂̋̿͋̎̋͗̇̌̂̎͌̂̒̋̚͝͝n̷̫̯̗̔͘ā͕͋͜ḛ̰̺́k̘͜o͋t̶̸͉̤͆̋͜͝ķ̸̶̛̛̫͕̹̫̺̫̯͚̯̺̗̫̦̫̗̼̆̄͋̈́͂͌̂̎͆̌̑̋̉̊͗̍̾͌͑͑̌̕͘͘͜͝͝ͅĉ̴̶̖̫̼̙̫̥̻̒̈̄̔̓̄()[S

    move-result-object v9

    const v12, 0xd6bf

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->a̺͉̯̗͕̝͌͌͌̈́̈̌́͘̚l̢̛̮̥͗͑̅â̴̶̷̸̢͕͙͎͕͎̚͜Ḵ̷̨̛͎̲͎̿̈́̃̑̍̌͒͒̋͜͠e̢̤͓̫̭̤̪̭̹͉̺̰̾̓̈́̉͑̂͆̚͝Ǩ̸̼̃͊͗͋̿̈͜͝ač̢̱̈̌̂a̯B̢̯̘͓̺̭̩̂̃̋͋͌͊̿ţ̸̫̼̲̤̘̫̞̺̄̆͌̈́̋̋́̌̋͋̄͑͑̂͗͝ȩ̸̴̫̮̘͚̭̯̺̰̦̻̲͂̀̿̈̌̄̐̍͌̌͆ͅǒ̴̷̶̴̴̧̹̼͚̦̦̙̯̯͓̺͓͌̌͋̉̈̂̋͆̋͌̍̄̚͘͝͝͝ȁ̵̴̹̖͎̘̽̿́n̵̸̡̧̛̮̖͉͓̘̿͑͑̔͗̋̌͘ļ̸̶̢̢̧̛̹̘̩̠̺͉͕̭̗͕͓̯̠̰̰̮̙̫̫̘͑̾̌̂͗͌̋̂͆̈̋̏́͋̐̋̃̎̃̂̈́̇̌̌̈̑̚̚͘̚͘͜͜͝͠e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v8

    xor-int v12, v12, v8

    const v10, 0x1aaba3

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->h͚̀̚a̵̻͒̆ȇ̷̦̯k̫̈a̸̸̧̧̦͎͙͈͇͚̫̻̫͕͌̈̂̈́͗͒̽͜͝͝͝ͅa̸̷͒ļ̶̡̪͎͎̻̈́͋̽͂́̾̓̾́͐͗̅̏͌̊̅́͐B̸̨̡̖͎͓̰̩̦̯́̈́̂̃͝K̸̗̥̫̘̏̈͂̏̑̍͝K̘̺̻͑͂͆̄͗̎̑̈́͠o̷̸͎̲̗̩͚͐̂̏̎̅͗͂̑͘͝ô̴̶̷̢͓̩̗̼͈̫̫̇̋̽͋̌͊͗͑̈́̚͜͝͝uP̷̺̖̙̫̘̻̯̫̜̙͋̃̎̂͌͜͝ơ̛͎̱̝̥͓͙̥̲͑͊̂̔ţ̴̸̛͈̬̫͚̩̻̮̲̗͑̎̌̿̂͐̀̊̈̋̈́͒̑̿̾͌͘͜͜͜͝͠B̶̸̧̛͇͉͉̩͚̮̑̌͐̌͋̌͌̚͘͝ͅp̌́͜na̺͉̿p̷̴̢̧̛̭̦̭̱̭̭͇͚͕̫̮͓̃̑̈́̃͋͆̃̆̈́͋̈͌͌͘͘͜͝č͊()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v8

    xor-int v10, v10, v8

    const v11, 0x1ac514

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->k̭̽̂͜ō̢c͈̤̻̗͋̉̈͐̎͘͝͠ǎ̢̦̯͎̺͚̺̦̘͓̺̬͎͌͒̃́̿̌̋̌̃̅͘c̻̥͓̮͇͈͈̃̃̈h͗̌B̫kņ̴̶̴̷̲̥̫̙̮͐͌̾̔͐͑̍́͑̀͗̌͑͐͘̕͘͝lu̷̴͈̱͚̘̥̮͒̅͌̄́́͑̂̌͋̌̌͜͝ä̵̧́č̷̻̄̌̍h̨̖͚̋̀̂͗͘͝h̴̷̨̢̛̲̘̮̫͚͕͕̹̦̦̪̦̋͌͐͋̐̋̈̈̃̂̐̿̒̈̏̕͜͝uo̸̙ē̸̺͇̯̬͕̼͎̈́̌̑̽̈́̐̾̄̿͌͝å̶̶̴̴̠̫͈̠̭͈͉̫̑͑͒̿̂̍̃͋̀͜͝P̧̲̭͈͓̯̗̗̗̹̠̾̑̀͠ḁ̶̸̢̛̛͈̗͚̱̺͚̪̮̥͈̭̩̯͖̻͈͕͋̂͗̏͆̂͌̃̈͗͜k̛eB̴̶͕̫͚͉̹̥̫̹̻̌̈̃͆͑̒̚͠͝͝()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v8

    xor-int v11, v11, v8

    invoke-static/range {v9 .. v12}, Lcom/kashi/settings/view/VersionBgImageView;->ä̴̸̛̰̰̫͕̖̠̰̻́͑̾̑̂̋̏̈̌͘͘̚͝p̧͈͎̮͖͎͌̂̌͌̆̚Ķ̵̴̴̸̛̫̠͙̯̮̥͈͎̥͈́̄͌͒̈́̋̿̑̌͂̆͌̈͌̄̂͗͘͜͜͜͝͝͝t̸̸̴̸̨̡̼̬͚͙̲̖̮̑͋́̿͝͝͝c̱̈́k̸̵̶̵̷̛͕͙̙̩͈̠͚̩̹̯̙̙̩̺̦͌͑̐͒͒͑̋̋̾̔̎̅́̌͗̚͜͝Ba̧̛B̨͇̭̜̗̲̟̞̤̱̗̫͊̋̋͑̿̈́̃̾͑̔͜͜͝h̹pỏKȩ̷̥͓̭͈͇̈̎͗͌̆͠ü̩̒n͙c̘̯͌oěe̶͇̱̺̅͘K̶̴̢̛̛̛̩͓̮̲̹͕̫̙̱̦͉̩̥͆͋̈̈̈́͐͑̾̔̋̽͒̌̎̕̚͜͝͝K̯̄̈́t̶̸̸̸̢̪̪͈̪͜ų̸̴̛̫͇̘͚̭̌̌͂͑̇̋̉͋̚̚͜ͅk̫͎h̶̷̵͉͑t̲(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, v9

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ţ̦̯̘̯̱̐̋̌̄̋͝o̸̸̴̧̢̤̮͙̹̖̺̫͒̌̑̏͊͌̈͝͝o̸̵̷̷̢̢̗̗͓̗̖̪̺̱͈̫͖͖̻͎͌̑́͗̌́̈͂̀̏́̑͌̎͗̈͘̕͜͝c͜l̴̸̖̟̿̿͋̈̌̈́͂ͅu̵̱͉͈̭͝ͅa͙̮͖͝a̮̗̿̅̚P̷̸̨̰̹͖͓̑̔̑͋͜o̺̦̖͎͓̩̭͒̋̏͊̌̈́̒̑͌̈͌̋͘B̸̮̮̔͆̈́ã̧̰̭̫̀͗͑̀Ķ̸̸̷̷̸̧̛̪̼͕͕͈̹͈̰͓̫̱͎͓͓͚͌̑̑̎͋͗̿̔̈͌̈̊͌͘͘̕͘̚͘͜͜ö͎̗̟̭͌̃̀̂̂͂͜B̃p̸͕̈́͒̂̌̿͘͜͝K̗̭̯͚̗̦̭͋͌͌͌̒̈́͌̀͒͗͜͝͝ĉ̸̘͉͈̿̋̈́á̘̦̯̺̫̮̂͑̋͋̌̆͘̕͜͜͝ȏ̱̘̱̙̫̺̆̈͊̂̌̕͜͝͝͝ͅ(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->K͎̖̄̐c̝ǎ͝n̷̶̨̼̦̭͉͎̓̎̆̂͒͗̾̌̐͂͑͜͝hP̵̶̢̧̛̫̰̩͙̩͕̺͐̑̿͑̓͗̑̔̚̚n̟͈̯̘̂̆̿̅͑̚ç̶̸̸̸̧̢̯͙̦͚̯̺̎̂͌̃̅̌͊͌̌̃̔̋͝͝͝ͅȗ̴͑͠K͕͈̺̭̱͗́̑͐̈́̚aą̶̸̷̧̮̫͎̲̺̦̙̘̪̲̯͖̲̈́̂̃͌͋͌̋͋͑̈̓́͆͗͑̈͘͝͠P̟̅n̵̷̢̛̫̯̯̫̺͋̍̃̾̊͗͂̌̄̉͋̑͌̈͗̐̚͠o̶͎̥a̭͈̝̭̮̺̝͓͗͌͌̔͂̐̾͘͜͠͠P͙Pt̸ä̸̵̸̴̧̢̛̹͚̱͕̠͎̱͎̜̺͇̻̗̲́͋̓̔̐͋̄̃͌͗̑͌͌͌̏̀̅̋̀͌̎̃̍̂͘͜͜͝͝͝͝Ķ̻̫uņ̧̨̛̛͎̹̭̮̮̻̗̦̼̱͐͗͆̎̎́̂́̒̃͆̚̕(Ljava/lang/Object;Ljava/lang/Object;I)Z

    invoke-static {v3}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->a͚͙̦͕̦̋̌͌̌͑̋͆̓͗͜͠K̒͠ű̷̧̧̫̯͈̗͕̻͎̱͉̑̀͜c̶̸̰̼̺͇͕͕͎̅̿̍̑̑͌̏̾̌̾̚͝K̶̷̛̲̺̥͕̦̫̬̪͊̃̃he̔̚h̢͕̘͂͂͘͝na̴̧̯͎͜͜n̂ͅP̢̗̼̃̂̔̎͝͠ṫ̴̴̷̸̢̧̥̲̲͓̫̪̪̔̒͒͂̋̋̚͘͜͠͝ĺ̵̡̨̧̮̫̤̱̜̐̂̌̚͘͠͝l̢͓̲͗͊̎͝ǫ̷̢̧̢̛̛͚̥̹̪̦̖̮̹͉͎̱̮̰͗̐̂̏̇̎̎̐̋̄͘͝ȏ̢̘͚̘̪̊p̶̶̶̸͎̤̟͕͎̙͕̫̆̈́́̌̃͌̌̔̆͆͗̂͘͝ư̶̗̈́̇͆o̧͊̎̑͗̾͒̾̓́̀͊͝a̢̤͒K̸̸̴̵̨̨̢̛̭̮̱̘͚͇̫̘̦̠͉͎͓͈̱̗̯̥͋̓͂͌̈́̑̃͋̏̈̏̌̉̋̑̔̃̚͜͜͠(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static/range {}, Lcom/kashi/settings/view/VersionBgImageView;->à̧o̷̴̖͒͒ͅP̷̖̌̀̇ȩ̶̷̶̫̫̲͚͎̺̘̫̂̀̓̀̏̋̎́̊͜͝a̧̰̙̲͚̘̠͉̋t̃͜u̍͌͜KK̸̷̛̥͓̬̠̯̭̫̲̥̭̙͐̈͗̌͜o̫͒̑͊ļ̷̸̷̛͕̼͓̭̗̮̥̗̩̫̯̫͕͌͑̈̌̃̅̍͒̃̿͗̀̇̆̂̌̑͗͜͜͜͝͝͝P̸̨̖̭̈́͊͝o̭͈̫͉̥̿̾͑t͖̞̙̹̦̺̪̎̊̍̑̽̌̀̾͜n͓̯̤̺̠̥̥̥̫̫͈̯͈̖̫̭̯̼̲͂́̋̄̂̋̿͋̎̋͗̇̌̂̎͌̂̒̋̚͝͝n̷̫̯̗̔͘ā͕͋͜ḛ̰̺́k̘͜o͋t̶̸͉̤͆̋͜͝ķ̸̶̛̛̫͕̹̫̺̫̯͚̯̺̗̫̦̫̗̼̆̄͋̈́͂͌̂̎͆̌̑̋̉̊͗̍̾͌͑͑̌̕͘͘͜͝͝ͅĉ̴̶̖̫̼̙̫̥̻̒̈̄̔̓̄()[S

    move-result-object v32

    const v35, 0x1abed5

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->K͈̋o̸̢͓̯̩̗͖̺̼̪͂̿͗̊́̚̚̕͜͝ȩ̡̛̺̰̹̱̗̙̱̃̾͌̄̋́̏͘͝ͅá̧̄̍͠k̹̯͎͉̙̫͊̋̀͝͝c̸̹̼̬̻̦̱̘̝̙͊̆̑̈́͌̂̈́̈̈́͝n̫͉̦͚͆͜n̄͒̍a̾l͈͈̜̪̂͋͐̔̚P̤t̎a̭͝͝t͎ȃ̸̢̗̰̹͋̎P̷̙͎͒K̪K̖̱͎͐͗̕aa̷̸̡̘̘͌̈̉͊̂̆̾͘͝ͅͅu̧̧̻̺͎͙͓͎̿̐̃̑̑͋̏̕p̡̛̲̥̲̭͕͉͎̑̃͗̎͑͋̂͘͠l̷͚̦̘̈̈̉͆͋a̛P͈̗͎͓͒K̛̩̺̃͠ȍ̱͌a̵̶͈̜̭̫̙̫̹͗̌͌̌̄̑͌̋͘̚ͅä̸̛̗̲̘̗̭̲̺͉̫́̃͗̀̚͠l̃̎͜á̺͚̦͈͗̌̎p̯̺͈̤͇̗̠̱̫͌̋͌̉̏̑̾̌̋̐͘͘͘͜͝()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v31

    xor-int v35, v35, v31

    const v33, 0x1aab83

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->ķ̸͎̬̫̺̑͗u̶̸̘̦̪̥̦̦̎̋̈̈̂̂̈́́͑̈́͝l̸̷̸̢̧̛̗͓̝̺̦̭̗͎͓̹̋͑͋͌͗͂̌̏̏̈́̃̆̚͝ȁ̵̸̵̶̷̢̱̼̖̝̘͈̃̄̌̉̌͂̔̑̃͜͝͠c̸̷͙̤͉̰̘̙̥̘̿̌̀̋̿͆͊̒͜c̫̗̫̫͎̗̰̫͑̌̚͜ô̷̴o̴̘̫̗̱̹͎͑́͜͜͠ô̧̰͓̮̰͚̥͋̋̌̆͜͜P̱̫̺̅̔͂͗ţ̸͇͎͎͂̂̍̐̚â̰͓͗͝ṯ̻̠̱̰̼̭̫͈̟͓̎̈́̍̅͌͜͝ṗ̡͚͈̤̥̤̱͐̾͊̑͊̎͝ņ̴̶̧̛̛͕̫̙͚̯̙͚̪̩̜͚̥̻̮̭͕̗̤̰̭͓̺̼̘͉͐̅̌̅͌̍̋̄̈́͌͐̾̋͌̑͌̕͝͝B̶̢̥͈̦̺̔̃ú̺͚̼̅̚k͓̤͙̂͋̃̋t͚͑o̷̷̻̗͌́̿̏̂̈́()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v31

    xor-int v33, v33, v31

    const v34, 0xdc7f

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ḙ̷̸̢̧̢̟͈͈͓͓̯̦̿͋̂͌͌̋͋̎͐̈͑̋̾̍͝͝ȃ̵̸̷̷̛͉̈̈́̈̎̀̌̈́̾̒̚͜͝͝ȅ̫̪̲̤͙̺̮͗̏̌̎͜ḁa̶͚͓̱̪̫͉̿̏̑̈̃͒͗̑̀͗͠͝e̸̹̫̹͑́͑̅͊͌͝͝ȟ̸̯̿͂̂e̸͚̖͌ą̷̴̴̸̴̧̛̥̗͉̗͓̫̠͎͚̭̯̼͈̅̇̈͋͐̒̅̒̋̑̌̈́̄͌͂͑̂̎̚ŏ̵̴̲̖͖͌̌́͌͜a̎ė̸̸̶̸̴̢̨̥̦̰̞̙͚̘̘̠̺̫̼̲̗̥̫̱̿͗̐̔̔͌̍͗̆͑̋̊̋̈́́̾̾̾̒͋̓͐̈̌̚͘͜͜͠͝nt̜͕̭̼̤͑͐K̶̦̦̲͓̱͕̟̹̑̾͗͒̂̑͘B̵̸̢͕͚̺͈̪̫̘͚̆̈́̑͌̂͜ĉ̸̴̷͓͚͈̭̺̭̪͉̩̯̫̺͈̰̒̈́̀̋̎̌̂̈̎̐͌̅͝͝()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v31

    xor-int v34, v34, v31

    invoke-static/range {v32 .. v35}, Lcom/kashi/settings/view/VersionBgImageView;->n̸̠̥͉̺͚̠͒̋̏͌̆̍̾͘͜͝͝K̨͚͆̾t̶̸̷̴̢̛͈̹͚̱̦̭͕̞̹̗̻̪̋͒͗̍̈́͐̏̍̚̕͜P̸̷͈̪͈̞̖͓̦̭̻̃̓͌̃͘t̷̢̧̢͎̺͇̪͓̃̈́͂̌͋̄̑̂͘͜͝c̷̴̶̴̸̷̯͇̫̘͚̹̺͚̯̫̦̘̙̫̲̰͉͚͚͈̫̫͓̗̞̺̈͗͗͌̈̾̆̃̂̎͌̋͂̐̄͌̈̾͜͜͜͝͝a̶̹̫̮̫͋͌̐͗̔̍͝ͅB̼̤͌̂̃͜ͅh͚͎̦ḁ̶̛͉̥̗͈͎̀̋̃̂͐̈̌͋͝͝n̸̴̢̧̥͈͚̰̖̩̤͉̗͑̈́̂̐͐͘͘͠͠͠e̷̱̫̥͈̅̂̑̄̌͒ȗ̱̌͆͑̋͋̈́e͉̰͌̎̂̈́ḧ̷̸̷͎̘̘̺̠́̀̂̿͘̚t̷̲̚t̼̞̥̰̫̋̆͜ǎ̢͖̃͗͝p̵̫̫̞͙̩̲͋̈͑̂̌͘a̧̢̹̔̑(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v2, v32

    invoke-static {v2}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->ą͖́p̸̴̢̧̛͉̖̦̺͚̙͈͚̠͈̫̬̱̫̱͕̜͉͑̄̌̂̊̈̌͑̅͗͌̄͊̅̎͗̑̋͌̑͋̚̕͘͝͝h̶̦̠̲͓͈̫̱̫̱̭̯͚̬̭̭͕̒̿̂̏̍̌̈́̎͗̾͋́̈́t͚a͆K̭̺̫̝̱͗͌̌B̴̸̴̧̻̗̀̎̉̀͜͜Ķ̵̯̩͖̥̐̈́̈̃̌͠ň̵̼̮͉̬̰͈͈̮̄̊͊̈̌̈́͜͝͠͠B̨͙̦̯̠̊͋̌͑͆̈́̃̽͜͝ċ̛̭̻̪̰̮̐̆eą̴̧̛͇̞͉̥̗̘͗͋̽̍̀͋̂̋̈́̾͗̌̑̐͌hh̵̴͕͙̹̻͌͒͑̚a̯̱̿̄͂ő̶̷̫̺̘͈̭̼̗̭̯̰̰̖͈̗̾͂̿́͌̎̈̅͗̋̃̃̕͜͝͝P̸̶̢̯͙̈͊͌͌͗̏̃͜͝͝ò̘̑̌̋͜Ķ̶̴̸̧̨͈̫̭͚̗͈̯͎̀̍̏̔̋̈́́̕͜͠o͝(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->k̢̠͎̜̯̍̌̊̈̈́̈́̉͘u̼͂͗̒͘͝t̸͓̻͙̦̠̻͈͐̋̊̿̈a̛̛̞͎͚͎̥̙̮͉͕͎̻͉̪̲̾̿͌̃̂̐̽̑́̈́͌̕͜͜͝͝ͅoc̸̶̨̛̫̭̹̙̦̤͉̮͈̪̦̰͎͕̫̪͚̼͆̎̿̂͌̄̔̎̋̈́͂̈́̚͠h̷̵̵̟̩͜B̸̶̸̢̺̯̑̄̀l̺ḫ̅c̸̢͌̋̈́̅͗́̿͗̽͜͠ķ̷̷̛͉͇̹͈̮̈́̅̾̌̈́̔̋͑͝a͕̦̙͂̚͝ho̶̵̫̰̮̾l̴͓̯̯̫̹͕̤̩̫̒̑̈̂̋̅̎̌̋̃̐͘̚͘͠͝p̧͈̺͉̗̔̌́̊̋͊͆͜͝Ṕ̶̢̧̡̙̥͇̯͎͉̝̜̋̽̒͌͌̃̿͌̌̈͜͜͝ͅo͎͎͓͊a̶̧̧̧͚͓̫͚͋̅̈́͌̌̐͌u̫̯͐͋͜ḁ̴̫̪͎̼͙̙̺̦͋̃̃́ô̶̢͓̙̂̂̊̌̌(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->ȍț̵̶̴̢̧̛͉̝̯̝̙͈̬̥̋̌̌̍̽̑̌̌̄̋̑̌͠p̹ç̴̢̭͓̭͙͕͈̹͇̭͌́̃̑͒̓̌͑̍̑̂̄̊͌u̷̲͐ă̫͑ť̷̫̱̱͋̈́̾͘͜ǫ̹̼̫̝̽̉̃̈͝aKc̵̸̸̛̫̰̦̮͙̐͗͑͋͊̂̍̋̈́̕͜͝͝K̸̛͚̿͂̾ͅapu̸͚̐̍͆a̧̧̲̗͈͊͌͌̚͝͝u̸̯̎̂p̫̮̜̮̫̋̿̾̂͂̌̔͝cc̴̨̲̘̦̃͑͆̂̇͘͜͝K̡͚͎̯͌̑̈́̍͜u̶̮̬̦̅̑̈p̷̷̧̢̧̫̘̲͕̮̫̗̼̘̦̍͌̃̽̃͘͜͝ơ̶̙̱͌̿͑ǔ̷̖̙̭̙̹͈̹̱̫̪̈͜a̺̩͙͖̲̼̺͑̌̿̌̔̂ţ̶́͜aâ̸̡͕̪u̴̴̘̲͓͓̙͚̬̘͗͌̎̄̄͆̈̈̃̌͆̌͊̆̈̕͘̕͘͠͝(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {v0}, Lcom/kashi/settings/view/VersionBgImageView;->p̻̤̦͎̭͖̘͌̄̀̾̏̾͗͘ḩ̴̵̡͎̦̾n̞̥̦̝͗ö̴̶̴̴̷̸̧̢̢̲̦̱̹̫̫̮̺̘̺̻͎̦͙̫̗̫̤͂͌́̃̒̅͗̌͌́̄̃͒̓̈́̑̈̆̀̈̌̆̍͋͊͐͌̑͘͜͜͜͜͝͝͝ą̶̶̨̧̛̭̘͈̮̲͓̖̪̩͙̫̝̫̰͇̝̔̑͋̂̈́̄̈̌̏̅̋̿̈́͜͝͝ͅB̧̥̫͙͙͌͒̍̎̈͌̚͝ǎ̸̸̫̮̖̋͆̑̑̍̈͘͘B̶̧̝̙̗̰̉͒̍̎͒̿̋͌͒͝ň̷̵̢̛̛̺̤̯̝͎̫̪͇̮͎̘̹͈͉̜̘̻͓̫̜̐̋̈́̋̀̊̅͘̚̕͘͠oűơ̘̬̮̹̈̈́͌̀̎t̶̙̥̘̯̭̂̿̌͊͌̎͌͗̑͌P̙̔͜oa̸̸̧̻͓̺̫̦͚̩̩̮̺̦̮͊̂̃̈̃͌̈́̎̾́̈̿̈́̑͘͝͝ͅț͚ṷ̧c̗͎̲(Ljava/lang/Object;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 53

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {v2}, Lcom/kashi/settings/view/VersionBgImageView;->a̶̸̧̧̨̛̭͈̺̯͓͉̦͗̂̔̈̅̀͊͋̎͝͝e̦͆P̶̵̸̪͈̥̭͙͉̃̈͐́̈̐͂͜͜ą̵͎̗̹̮͆͒͑͊͌͐̈́͒̾͌̆̆͜͜͝p͈̈́̌ą̛͕͌P̢̏cu̯̅̂̆̑ͅl̮̒̍̐̈̈́K̐̑̂͝k͗̑ö̮́͒̂̌ư̷̠̗̂̽t͎ǔ̷͉͚̭̻̯̌͗͗̾͆͋͝͝oh̶̯̜͋̃̌͠ǎ̷̴̢̛̲̠̖̗̼̖̻͚̲̈́̀̂͗̐͋͗̄̀͌͜͝c̡̛̛̘̿͒͝aaķ̖̰͚̲͉͓̫̗͑̋̑͑̚p̸̴̷̱̜̱̹̎́̎͒͠P̸̷̷͙̺̺̫̄͊̒̈͂͌̈̌͌̂͝u̧͓̤̫̗̗̽̕P̭̃̚ç̶̸̷̵̙̫͕͙͖̈̆̈͑̂̂̃͜ư̶̸̢͈͙̞̯͈̫͉̲̗̪̂̉̈̎̾̾̃͗̑̾͘p̜̱̫̝̮͂̍ǒ̷̯̺̋(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/kashi/settings/view/VersionBgImageView;->ţ̷̷̸̭̺̯̅̉̋̅̃̾n̈́̑͠o̶̷̴̪̰̗͗̄͠k͖ȃ̺̪̱͚͗̔͋̇͊͑̌͋̈́̚͘͜ç̸̸̶̴̶̛̞̹̲͚̯̮͕̰͈͓̘̰̮̖̗̞̬͎̱͈̯̥̄́̐̆̈́̅̈̃͋͗̌̃̃̂̒̈̚͘͜͜͝l͎̋̎͘͝n̸͉̮̑͌̎͜͝a̯̎ã̗̯͜P̸̢̨̙̠̦̞͚̩͖͑̌͗̄̇̀̄̚͝û̦͈͌͠K̸̸̨̥̞͎̗̬̮͓̗̟̝̾͗̂̂͊̂̋̃̍͜͠K̵̸̢̢͈̫̩͂̿͘P̨͓̫̜̭͓̠̫̾̆̂͋͜͜ç̴̴̷̸̴̵̷̛̺͓̺̹̗͈͉̮͕̯̯̬̱̯̤͓̲̺͚̻̫̖̱̗̮̋͌̌̒͌̃͌͑̃̀̂̃̓̂̈́͂̓̈̎͗̀̏̎̂̎̆̌͊̈̏̂̊̈́͘͘͘͜͜͠͠͝ͅő̷͚͈̰̼͎̫̗͙̗̅͒̽͌͌̔͋̔̒̂͜ͅ(Ljava/lang/Object;Z)V

    invoke-static {v2}, Lcom/kashi/settings/view/AboutSettingsHelper;->ā̦̫̫̽͋B̶̨͈̹͇̑̋̋P̴̷̸̨̛͈̫̲̫̮͇͓͕̘̺͚͖̪̗̎̃͐̌̅̌͌̄̕͘͜͝͠͝p̵̸̸̶̷̗͉̫̫̻̯̭̤͚͈̩̦̖̘̦̫̰̫̙͚̋̄̅̑̌͗̑͗̽̂̐́̾̾͋͂̌͋̈̑͊͌͗̄͘͘͘͜͝͝͠KB̢͋͗͝ç̵̢͇̤̈́̈́̽̿͑̄̂͌͌̂̉͘̚̚͝͝͝K̷̴̶̷̴̢̢̡̧͈̱̙̜͉̭͉̗̫̈̐͗͑̿̋̿̐́̑̚̚͘̚͜͜͜͜͝͝aõ̧͝ę̷̵̴̴̸̴̶̧̧̛̛̗̭̥̝̠̭̪̺͙͚͉͓͕͚͈͙̆͋͐̅̀̂͋̌̃͊̐̅͐̈͂̈̋́̄͌̀̚͘̚͜͝͝͝a̭͎Pa̩̭̅̈́͒e̢̗͈͎̺̲̫̖̦̎̔̀̈́̎͠B̸̨̡̛̺̘̺̦͚̲̈̂͂͑͑K̶̶̛̲̺̠̄̐̏̎t̴͌K͚̹̹̋̈́̋(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/kashi/settings/view/VersionBgImageView;->P͓͋̾̑ǫ̷̸̷̢̧̛̦͉̰̫̝͉͉͕̦̜̺̰̜̹͇̞̰̫̘̞͈͈͓̹̫̯̤̌̄̔̋̈́͗̆́͌̈́̈̄͂̿͋̉̅͂̌͐̑͗̈́̇̄͗͒̋͊̂̋͗̔̓̈́͌̂͜͠͠B̸̷̧̨̢̤͇̺̹̭̯̰͎̰̾͋̂̈́͑͐͒͌̾̂̔̋̑͜͝t̸̴̷̷̵̢̨̧̛͈̱̗͚̫̫̰̭͉͓̼̟̫̲̞̰̩̲̗͉̄̑̃̇͒͌͑̃̈́̃̂̐͒̂͌̃͌͊̈̑̊̕͘͠͝͝͠͝͝K̴̴̴̢̨̛̮̘̥͖̯͇̖̘͈̫̺̻͎͒̅͗͋̂̈́̔̂̅͗͆̀͐̈́͘̚͠͝͠͝͝a̧̭̼̯̹͉͇͕̎̾́̑̐̑͆͗̄͝͝ȁḽ̸̢͉̞͙̱͌̌̕n̛̮̈́͗͌͂͝͝ư̴̸̴̸̸̶̢͇̭̹̗̝̖̗̺͓̤̍̌̈́̑̈́̓͐̄̌͠͝͠͝u̷̴̢̺̦̝͌͂͂̄̈́͗̆͝P(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setDrawableRes()V
    .locals 53

    move-object/from16 v2, p0

    invoke-static {v2}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->a͚͙̦͕̦̋̌͌̌͑̋͆̓͗͜͠K̒͠ű̷̧̧̫̯͈̗͕̻͎̱͉̑̀͜c̶̸̰̼̺͇͕͕͎̅̿̍̑̑͌̏̾̌̾̚͝K̶̷̛̲̺̥͕̦̫̬̪͊̃̃he̔̚h̢͕̘͂͂͘͝na̴̧̯͎͜͜n̂ͅP̢̗̼̃̂̔̎͝͠ṫ̴̴̷̸̢̧̥̲̲͓̫̪̪̔̒͒͂̋̋̚͘͜͠͝ĺ̵̡̨̧̮̫̤̱̜̐̂̌̚͘͠͝l̢͓̲͗͊̎͝ǫ̷̢̧̢̛̛͚̥̹̪̦̖̮̹͉͎̱̮̰͗̐̂̏̇̎̎̐̋̄͘͝ȏ̢̘͚̘̪̊p̶̶̶̸͎̤̟͕͎̙͕̫̆̈́́̌̃͌̌̔̆͆͗̂͘͝ư̶̗̈́̇͆o̧͊̎̑͗̾͒̾̓́̀͊͝a̢̤͒K̸̸̴̵̨̨̢̛̭̮̱̘͚͇̫̘̦̠͉͎͓͈̱̗̯̥͋̓͂͌̈́̑̃͋̏̈̏̌̉̋̑̔̃̚͜͜͠(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static/range {}, Lcom/kashi/settings/view/VersionBgImageView;->à̧o̷̴̖͒͒ͅP̷̖̌̀̇ȩ̶̷̶̫̫̲͚͎̺̘̫̂̀̓̀̏̋̎́̊͜͝a̧̰̙̲͚̘̠͉̋t̃͜u̍͌͜KK̸̷̛̥͓̬̠̯̭̫̲̥̭̙͐̈͗̌͜o̫͒̑͊ļ̷̸̷̛͕̼͓̭̗̮̥̗̩̫̯̫͕͌͑̈̌̃̅̍͒̃̿͗̀̇̆̂̌̑͗͜͜͜͝͝͝P̸̨̖̭̈́͊͝o̭͈̫͉̥̿̾͑t͖̞̙̹̦̺̪̎̊̍̑̽̌̀̾͜n͓̯̤̺̠̥̥̥̫̫͈̯͈̖̫̭̯̼̲͂́̋̄̂̋̿͋̎̋͗̇̌̂̎͌̂̒̋̚͝͝n̷̫̯̗̔͘ā͕͋͜ḛ̰̺́k̘͜o͋t̶̸͉̤͆̋͜͝ķ̸̶̛̛̫͕̹̫̺̫̯͚̯̺̗̫̦̫̗̼̆̄͋̈́͂͌̂̎͆̌̑̋̉̊͗̍̾͌͑͑̌̕͘͘͜͝͝ͅĉ̴̶̖̫̼̙̫̥̻̒̈̄̔̓̄()[S

    move-result-object v41

    const v44, 0x1abf0c

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper$3;->K̆͘u̴̴̷̫͓̅̄̍̎͘͜ṳ̶̶̷̸̶̸̧̧͎̥̼̮̪̭͎̠̹̪̘͎̹̻͉̩̤̰͈̥̠̯͎̫̽͋͑̾̆̏̐̄̈́̏͌͗͌͌̎̽̋̅̑̋̌́̌͌̈̾͗̏͒͗̕͘͜a̸̶̰͚̤̅̔͋P͚̱̹̼͖̫͉̮͑̔̃a̧̖̗͉͗̉̈͗͋͒͗͋̄̉̂͋̏P̸̸̷̴̢̛̛̻̲͓̫͓̞̗̻͕̲͙̘̮͓̘̹̰̖̃̽͋̆͆͋̃̒͐͋͌̃̅̉̿͗̂͘͜͝oț̴̷̴̯̮̩͇̜̫̦̫̺̋̂̅̌͗̆͘͘͝p̴̢̛͚̿̔̐̌͗̄̔̾̈́͐͘̚͠K͓̍̊̍̋͗͜ơ̴̴͎̼̲̝̺͊̿̔n̛̫̘̯̙̹̦͖͓̹̖͖͙̯̮̍͆̿̓̒͑̐̋̋̆̋͑͜͝ͅK̸͕̩̑̑͋͋K̷̷̢͈̥̻̙̭͚̃͐̃̾̎̑͗͗̅̏̚͝͠c̵c̷͇̯̅̑͋()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v40

    xor-int v44, v44, v40

    const v42, 0x1ac95f

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper;->K̛̠̘̘͕̗̂̋͋l̵̨̢͚̼͉̥̝̫̄̑͒͗͗̂͠͠͝ừ̶̸̧̧̛̗̘̲̪͓͚̥̥̺͕̯͎̫̻̗͈͉̤̾̾̅̑͂͊̀̐̎͗̎̾́̈͌͌̀͌̈̌̔̈͌͘͘͜͜͠͝c̷͎͕̠̀̈͑́̃̌ǎ̪͕̠͙͓̊͊K̸̹̱͋̔̋̆͗͝c̭͈̤̰͕̹̻͆͌̅͝ṯ̸̛̀ēn̖̹̈́͝ô̢̖̤̩̥̗̪͆̉͑͗̀̂͜K̷̸̷̢̜̬̥̼̱͇̼̯̺͎̦͈̄̈́͗͋̉̂̈͌̾̚͜͜o̙̫̩̥̥͝tp͉̫̌̈́ṗ̸̧̛̟̩͎̫̩̰̭̫̬̜́͒͂͗̂͘͜͜͝uǎ̴̴̵̧̛̲̮̱̙̘͕̯͙͚͈̖̠̤̅̄̋̈́̀̌͒̆͘͜͝͝͝a̱̟͉͌͠ä̧̗̱͚̌ḁ̶̢̛̩̦͙̫͖̗̬͉͈̦͕̩̩͎̈͗̈́͊͒̌̿̄̀̏̿͜͝a()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v40

    xor-int v42, v42, v40

    const v43, 0x1abe41

    invoke-static/range {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->B̪ơ̵̶̫̠̥͈̾͗̈͌̌͌̈̋͠a̸p̫̌̑͝n̯̱͕͋͂̌́̉͌̈a̤̥̗͌̂̎̓͐̈͝kk̵̷̵̛͉̭̗̼͕͚̈̂̏̌̿̈́͠p̸͕̥̏̄͊͜t̵̸̛̗͓͜l̶̵͇͕͓̤̺̭̻̻͕̗̗̼̗̫̠̮̩̫̞̫̈́̑͌̂̑̊̀̅͐͋͌̒̏͌̔͋̾̾́̂̎̃̅͋̈́̕͜͜͝ͅn̢͖̯͗̾̌̋o̸̶͈̘̤̔̄̌̿͌̒̏͗P̸͚̫͉͎͙̮̦̺͚̩͕̼̭̆̂̂̐̋̇̅̌̂̔͝͝͠ĉ̷̷̷̨̧̧̗͈͉̘̠̯̭͕̠̺̫̟̟͉̘̮̩̫̋̾̄́̾̈́̍̓͑͑̏̂̌̈́͌̋́̿͊̈́͌̈͌̉͗̕̚̕͜͜͝͝͝͝͝ļn̸̵̸̶̶̨̛̛̼̥̭̙̘̫̼̹̟̭̤̫̹͕̯̭̺̫̂͒̌̇̆̎̈͌̌̏̈́͌̔͜͜͝o̶̢͈̱̠͈̍̂()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v40

    xor-int v43, v43, v40

    invoke-static/range {v41 .. v44}, Lcom/kashi/settings/view/VersionBgImageView;->B̸̯̾́̀ȏ̶̷̥͗̕͝a̷̻̭̫͚͖̘̒͊̿̿̿̚̚a͙̫̼͎͈͗͗̆̃͝͝͝o̸̷͚͒̈́̃̈́kB̸̶̺̗K̸̴̺̖̭̩̞͓̩͕̈̂̿̅̊̿͒̂̍͘͜͝B̢h̴̨͕̥̱̗̲͇̟͈̋͌̽̋̈́͌̋̒͝c̆ả̙̦̥̭̤̼̻̗̯̥̎̈́̐͐͑͊̊̀͊̑͘͘͜a͜Bō̵̧̟͎̰̗̻̃̈́̈̔̄̈́͗͘h̸̴̷̛̺̺̥̫̫̋͐̏͗̿͘h̴̛̦͙̭͑̿̑̈́ȩ̸̴̧̨͓̰̫̗̫̫̼̪͙̯̪̘̮̱͇̏̾͋́̋̆̋̃̅̿̑͋͊̍̈̈̆̌̃͌̂͘͜͝͝͝û̧͉͙͆͜ư̶̶̧̛̮͕̫̠̬͉̝̘̜̘̱̝̤̤̎̀̈́͌̌̂̂͋̌͑̈́̍̉͌̅̑̂̂̄̈́̈́͌̌̚͜͜͜͝͝a̶̢͓̦̠̫̱͇̪̺̫͎̞̎̑̈̈́̑̈́̉͐͜(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v0, v1}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->K̶̨̫̘̞̖̲̻͚͉̂̀̄̚e̸̴̢̧͓̗̠͚̫̗̖̫̋̅̌̈̍̎̈͐̉͜͜͜͜͝ţ̧͎͓͕̠͈̈̽̾̑͒̔̈̍͆̅̈́̔͂͐̈̔̒͝õ̸̤͎͐͋a̟̪͚͎͓̼̭̖̍̄u͑͒ķ̧̹̩̥̥̥̌̌̂͋̈́̃̈́̚͜l̷̸̛̲̮̺̗̯̰̦͕̈́͋́̑̋͑̈́̽̿̀͋̕͠͝͝ą͎̘̯̂̎́͋̀͗̋̒͝eK̾͂̍̎̈́͜à̴̪̺͓͎̥͚̪̻̑̅̈́̋̒a̴̴̛̫̯̥̙͋̀̈́͗̿h̵P̸̢̛̩̼̫̱̬̹̙̫̩̱͚͙̰͋̌͌͋̏̾̈́̋̎̑͗̽̚̚͜ä̦̭̝́̎ȃ̵̵̸̸̧̧̧̧̻̩͈̩̼̮̭͓̭̲̦̦̰̹̫͎̘͎̠̲̖̦̗̖̬̦͈̪̭̝̋̃̈́̄̑̄̌̂̿̐̋̑͑͊͑͋͐́̎͋̿̅̃̍̑̌̆̚̚͘̚͘͜͝͝(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, v2, Lcom/kashi/settings/view/VersionBgImageView;->mLightResId:I

    invoke-static/range {}, Lcom/kashi/settings/view/VersionBgImageView;->à̧o̷̴̖͒͒ͅP̷̖̌̀̇ȩ̶̷̶̫̫̲͚͎̺̘̫̂̀̓̀̏̋̎́̊͜͝a̧̰̙̲͚̘̠͉̋t̃͜u̍͌͜KK̸̷̛̥͓̬̠̯̭̫̲̥̭̙͐̈͗̌͜o̫͒̑͊ļ̷̸̷̛͕̼͓̭̗̮̥̗̩̫̯̫͕͌͑̈̌̃̅̍͒̃̿͗̀̇̆̂̌̑͗͜͜͜͝͝͝P̸̨̖̭̈́͊͝o̭͈̫͉̥̿̾͑t͖̞̙̹̦̺̪̎̊̍̑̽̌̀̾͜n͓̯̤̺̠̥̥̥̫̫͈̯͈̖̫̭̯̼̲͂́̋̄̂̋̿͋̎̋͗̇̌̂̎͌̂̒̋̚͝͝n̷̫̯̗̔͘ā͕͋͜ḛ̰̺́k̘͜o͋t̶̸͉̤͆̋͜͝ķ̸̶̛̛̫͕̹̫̺̫̯͚̯̺̗̫̦̫̗̼̆̄͋̈́͂͌̂̎͆̌̑̋̉̊͗̍̾͌͑͑̌̕͘͘͜͝͝ͅĉ̴̶̖̫̼̙̫̥̻̒̈̄̔̓̄()[S

    move-result-object v10

    const v13, 0x1aa3cc

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->h̼̹̘̹̬͗̂̌̈́̈̃â̶̸̙̺̲̹̌̏̂̌̈̐͝͠o̷̵̷̸̦̎̂̑̆̍͠͠͠c͙͜ơ͇͎̪͓̪̫̦̈́̆̈́̏̑Kc͚̾P̧̯̘̫͋̂̏͝ǎ̷̧̛̯̯̦̲̺̯͈͉̹͚̺̱͗͗̎͗̔̓̈́̂͝͝p̸̶̶̨̟͉̼̖͖̩̹̺̲̥̫̊̽͑̆̄̆͗̋͜͠͝͝o͌ê̷̸̢̢͎̹͈̫̮̮͈̹̙̘̥̱̑̏͂͌̂̑̌̔͐̿͝c̛̲̝̠͎̝̑̈̅̋͝ḁ̸̛̟̲͊̂͑́̈́͊̃̈̾͘͜͝͝ņ̸̸̸͙̝͈̮͓̻̮̼͖̪̱̐̀͗̌͊̈́̑͂͘p͕̜̘̾̉̂̋̓͠eKB̸̷̶͚̯͈͚̫̱̫͌̃̾͝oK̛͓͙͈n̗̤̜̺̈́͘ȟ̸̷̵̸̶̴̛̭͖̯̘̫̮͉̭̫̗̑̌̃̌̾̐͂͑̔̌͌̚͘͜͝ͅͅͅn͝P͓K̘̖̟͗()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v9

    xor-int v13, v13, v9

    const v11, 0x1ab295

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->p̸̷̢̝̫͉̭͕̭͚̯̻͎̦̫̽̂̄̅́͊̉͐̍̐́̌ö̴̶̧͕̯͈̫̱̙͌͊̌̿̌̎͜a̧͖̱̹̮̭̫̭͚̘͕͚͙̾͗̈́̌̍́̿͘͝ͅP͑̿ǩ͉t̶̖̰̬̘̻͈͙͈͇̮̭͂̈̀̈̈̑̌͂̏ļ̶̸̷̧̛̛̙͚̗͚̓͑̿́̎͑̾̃̂̀̕̚͝͝a̶̷̧̧̧̛͙̤͉͈͈̼̪̹͈̰̱̠͈̘͆̄̂̋̈̌̌̌̋̋̐̅͆̀̍̎̋̌̌̊̈́̉̃́͑̃̿̕̕͠Ķ̸͓̰̫̫̗̋̑̈́̈͒̾̽̑̋͜k̩̱̱͗͂̂P͎̿̋k̢̬̫̂̈́͜͝K̷̸̶̛̘͕̦͈̠͖͉̟̂̊͌͗̑̔̈́̂͑̚p̵̴̧̫͇̰̗̫͈͚͎̱̻͚͎̩̰̫͓̖̱̹̯̺̗͎̙̤̗̗̰̦͗̿͗̂͐̌̿͑̈́͂͗̍̂̆̃̆͘͘͜͜͝͝Pe̫̻̫̻͚Ǩ͕()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v9

    xor-int v11, v11, v9

    const v12, 0x1ab696

    invoke-static {}, Lcom/kashi/settings/view/AboutSettingsHelper$2;->k̠̦̹̎̋̀͝P̸̧̨̛̺̩̦̃̌̎̄̈̾̌̋̂̐́͘͜͜ͅceä̸̷̢̺̜́͌̓̈́̋͒͌͂̀̐͜͝a̴̛͖̯̋̄͌͗̎̚͠l̨̼̠̹̝͓̱̈́̋̓̐͜͝͝c͚̋͌̐̃̈́͝K̴̗̹̥̱̃͌͒̃̎͜ǎ̶̸̢̨͚̈́̃͌a̔͌̄ǎ̯͈̄̂͌aa̫̩̤̬̯̒͂̂̃aa̭B̶̘͕̭̙̥̪̀̑͋͗̾͘̚͜͝͠K̷̗̘̭͓̮̖̭̥͓͂̂̂͒͊͗́̂̾͗ḁ̶̗̯̅̈͐̐̅̋̐̋̎͜͠ơ̷̸̷̜̼̘̫̟̔̃̄̍̀̑͆͗̾͘͜n̷̸̸̷̷̢̧̢̛̮̫̘͉̱͖̖͇̯̩̞̤̘̝̫̹͎̈́͒͌͑̃͆̑̌̿͑̾͗͘͜͝͝͠͝a̬͐̋̎̉c̥̈͘ǔ̷̶̷̴̵̸̴̡̯͎̦̱̭͉̈̆͑̍͑͌̋̋̂̀͗̋̈́̐͑̋͘͜͝a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kashi/settings/view/VersionBgImageView;->B̴̥͉̟͎͊̈̈́̂̚͜͝͝k͑Ķ̫͑͑͊̋̍̋͋a̸̧̻̩̲̬̿͐̂̋̋̌Ǩ̷͉͕̗͖̗͉̫͉̎̂͘͜͜͝͠o͈͗ͅh̨͓̗̩͉̿ã̸̷̤͈̗̲͇͓̭̈́͌͝ơ̸̵̸̭̦̫͕̹͌̌̄̔͌͜ȩ͑̌ḩ̷͓̃ä̢̱̺̭͉͋̂K̸͙͋͌͠ļ̶̴̶̶̸̧̧̡̧̛̛̗̗̺̼͚͕͎͖̤͈͚̻̫̙̺̝̱̫̯̻̱̻̥̯̫̫̺̯̹̗͇̹̙͗͋̇͗̑̾͌̈́͗̀̊͋̈́͌̿̌͌̂̊̈̏̅̒͋̌̊̅̈́̈́̄͘͘͘͘̕̚͘͝͝͝͝͝a̷̷̶̵̷̢̧͓͎̙̩̜̹̖̥̦̮̹̖̹̥͊̎̎̂͐̿̂̈͗̈o̻̬̙͘p̷̫̹̰̗͎̩͂͑̎̈́͌̍̾͊P̶̷̧̢͕̹̱͈̂̑̈́̑̃̌̾͌̚̚͠a̗͠l̢̛̠̤͎͈̯͎̈͗̋͐̃(Ljava/lang/Object;)I

    move-result v9

    xor-int v12, v12, v9

    invoke-static/range {v10 .. v13}, Lcom/kashi/settings/view/VersionBgImageView;->P̵̶̧̧͙̫̯͕̗̘͉̠̅̌̈̇̈̇͂̐̂̈̒̒͐̆̾̿̌͗͜͠͝p̸̸̧̧͎̹̰̋́̄̿̿̈̌͝a̖̰̋͘c̺̋t̶̼̭̯̄ẗ̸̵̸̮̫̤͎̯̭̘̦̒̃̿̈́́̅̌͐̕͜͝ͅho̾Kl̷̷̴̛̲̤͙̮̩̫͎̑̌̚͜͝͝n̸̴̷̷͕͈͈̙̫͈̪̫͈͈͎̫̠̘͉̂͂̀̀́̏̾̾̅͊͗̿̂̚͝͝Ķ̴̴̸̸̹̱͓̖̌̃͋̂͋̽̑͝͝͠͝͝ͅa̫͚͈̻̭̻̞͋̂́͝͝P̸̷̨̛̖͚͎̺̥͕͉̙̦̋̔̋̂̂̾͗͌̎̍͗͜͜͝͝Ķ̶̸̴̢̛̮̭͉̠͉̯̤͎̌̂́͋͗͊̈̿͗̌͘͘h̫̋̎͠ņ̸̷̧̢̧͎̫̹̹̮̌̔̉̈́̎̎͘͜K̞͇̱͋̋͊̀̀̇͝ķ̡̟̫̗̹̭͓̄̌̌͋͌̈͝l͇̭̾u̶̬(Ljava/lang/Object;III)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v10

    invoke-static {v0, v1}, Lcom/kashi/settings/view/AboutSettingsHelper$4;->K̶̨̫̘̞̖̲̻͚͉̂̀̄̚e̸̴̢̧͓̗̠͚̫̗̖̫̋̅̌̈̍̎̈͐̉͜͜͜͜͝ţ̧͎͓͕̠͈̈̽̾̑͒̔̈̍͆̅̈́̔͂͐̈̔̒͝õ̸̤͎͐͋a̟̪͚͎͓̼̭̖̍̄u͑͒ķ̧̹̩̥̥̥̌̌̂͋̈́̃̈́̚͜l̷̸̛̲̮̺̗̯̰̦͕̈́͋́̑̋͑̈́̽̿̀͋̕͠͝͝ą͎̘̯̂̎́͋̀͗̋̒͝eK̾͂̍̎̈́͜à̴̪̺͓͎̥͚̪̻̑̅̈́̋̒a̴̴̛̫̯̥̙͋̀̈́͗̿h̵P̸̢̛̩̼̫̱̬̹̙̫̩̱͚͙̰͋̌͌͋̏̾̈́̋̎̑͗̽̚̚͜ä̦̭̝́̎ȃ̵̵̸̸̧̧̧̧̻̩͈̩̼̮̭͓̭̲̦̦̰̹̫͎̘͎̠̲̖̦̗̖̬̦͈̪̭̝̋̃̈́̄̑̄̌̂̿̐̋̑͑͊͑͋͐́̎͋̿̅̃̍̑̌̆̚̚͘̚͘͜͝͝(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, v2, Lcom/kashi/settings/view/VersionBgImageView;->mDarkResId:I

    return-void
.end method
