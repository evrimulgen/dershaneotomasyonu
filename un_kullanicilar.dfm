object fr_kullanicilar: Tfr_kullanicilar
  Left = 362
  Top = 176
  Width = 570
  Height = 297
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  Caption = 'Kullan'#305'c'#305'lar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 432
    Height = 263
    Align = alClient
    Caption = ' '#304#351'lem yap'#305'lacak kullan'#305'c'#305'y'#305' se'#231'iniz  '
    TabOrder = 0
    object gr_kullanici: TcxGrid
      Left = 2
      Top = 15
      Width = 428
      Height = 218
      Align = alClient
      TabOrder = 0
      object kullanicilar: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Enabled = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Enabled = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Enabled = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Enabled = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Enabled = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Enabled = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Refresh.Enabled = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Enabled = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Enabled = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ara_kullanicilar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NavigatorOffset = 10
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object kullanicilarpersonel_kodu: TcxGridDBColumn
          Caption = 'Personel Kodu'
          DataBinding.FieldName = 'personel_kodu'
          Width = 78
        end
        object kullanicilaradisoyadi: TcxGridDBColumn
          Caption = 'Ad'#305' Soyad'#305
          DataBinding.FieldName = 'adisoyadi'
          Width = 180
        end
        object kullanicilaruser: TcxGridDBColumn
          Caption = 'Kullan'#305'c'#305' Ad'#305
          DataBinding.FieldName = 'user'
          Width = 94
        end
        object kullanicilarseviye: TcxGridDBColumn
          Caption = 'Yetki Seviyesi'
          DataBinding.FieldName = 'seviye'
          Width = 74
        end
      end
      object gr_kullanici1: TcxGridLevel
        GridView = kullanicilar
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 233
      Width = 428
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object bt_sil: TcxButton
        Left = 276
        Top = 0
        Width = 81
        Height = 28
        Caption = 'Sil'
        TabOrder = 0
        OnClick = bt_silClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFAA4B14AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE
          4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4C17AA4B14FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B15AE4A10C85118E75E
          40F5634CF96650F96B53FA765AFB785EF96E58FC6551F7664FDB5C3FB14D1BAD
          4B15AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B14
          AF4A11CE5320E96042F46751FA775BFB8765FB8863FB967BFBB4A9F88575F75F
          48EC6148C75736AD4C16AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFAA4B14AA4B14B34B16D55526ED6447F97E5FFC906CFC8B66FA7B59FBAB9A
          FEFDFFFAC2B8F4664DE25A3EC05530AB4D1CAA4B14FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFAA4B14B64D1BDC592DF57556FE8F6DFC8D68FC
          805CFC886BFDD3CBFFFFFFFFDCD4FB8369DF5E3EB8502AAB4D1CAA4B14FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14B44F21D85D35FD82
          62FF9471FF8961FF8763FFBDADFFFEFDFFFFFFFFDCD4FF9578EC7451B9542BA9
          4A19AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          B24F1FCD6138E7764EFA8A5CF37E58D88673CFC8C7D8E4E6E9ECE9F9C1B1FE8E
          6DF98864C35F35AB4A16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFD2653CCE6138994D3C7B465C4948763F53884C5A87
          6C718FA36E67DC6E44E17447B85423FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF121A7402278C00
          299300228B001D85001D7F1F2265794149FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF222A
          6B063BBC0C44B21344AD1446AD1242AC0A3AA8012E9C152A86FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF030A190938931C5ED01B51B61A51B61A52B71B50B61B50B4184FB50739
          A800259CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0717321C56B91F62D21B57BC1B5AC31C5BC41D5CC5
          1D5BC31E5FC71C58C0153A9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0303050D2B592675EE2271E7226DDD20
          69D61F65CF2067D22066D1216AD5216BD6194EB5FF00FFFF00FF0017DD0017DD
          FF00FFFF00FFFF00FF0017DD0017DDFF00FFFF00FFFF00FF0102050E305A2B86
          FE2B83F62573DA2471D8226DD61A52B7226BD32575DF2675DF1E5BC1FF00FFFF
          00FF0017DD0017DD0017DDFF00FF0017DD0017DD0017DDFF00FFFF00FFFF00FF
          03020305101C123967143A6912345C2368BA1A52B72A7CE21A52B72B84EC2B7F
          E51E55B7FF00FFFF00FFFF00FF0017DD0017DD0017DD0017DD0017DDFF00FFFF
          00FFFF00FFFF00FF09090A12120F0B090A000205112D4A3291E136A4FF3091F8
          3191F6349DFE2F91F4194DACFF00FFFF00FFFF00FFFF00FF0017DD0017DD0017
          DDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF33312F3C3D3B13110D021E382B
          8CDD3DB4FF39AAFF3BAFFF39ABFF276ED2FF00FFFF00FFFF00FFFF00FF0017DD
          0017DD0017DD0017DD0017DDFF00FFFF00FFFF00FFFF00FFFF00FF35312F6062
          617574723D3E410D243D14487D2267A62471B4195899152E75FF00FFFF00FFFF
          00FF0017DD0017DD0017DDFF00FF0017DD0017DD0017DDFF00FFFF00FFFF00FF
          FF00FFFF00FF535251727373848381736E69484340181A1B080606141213FF00
          FFFF00FFFF00FFFF00FF0017DD0017DDFF00FFFF00FFFF00FF0017DD0017DDFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86868590908F7D7B7A555556
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfOffice11
      end
      object bt_sifresini_degistir: TcxButton
        Left = 152
        Top = 0
        Width = 121
        Height = 28
        Caption = #350'ifresini De'#287'i'#351'tir'
        TabOrder = 1
        OnClick = bt_sifresini_degistirClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000E30E0000E30E00000001000000010000107B10001084
          100021A52100298C2900299C290029AD2900398C3100319C310031AD31004284
          390039943900399C390039B53900527342004A8C42004A9C42004AA5420042BD
          420042CE420018734A00528C4A0052A54A004ABD4A00296B520052B5520052C6
          5200736B5A005AC65A00428463006B84630063A5630063BD630063CE6300315A
          6B0073B56B006BCE6B0073AD730073CE730094B57B0084BD7B008CBD7B007BCE
          7B007BD67B00316B840084B58400085A8C0039738C009CB58C008CBD8C009CDE
          8C0039739400106B9C00216B9C005A849C0063849C00216BA5002173A500B5E7
          A500297BAD003984AD00428CAD004A8CAD00107BB500217BB500428CB5004A94
          B500217BBD004294BD005294BD00529CBD006BA5BD00D6E7BD00187BC6002184
          C6002984C600298CC600318CC600428CC6003994C6004294C6004A94C60063A5
          C6006BA5C600BDC6C600298CCE00398CCE002994CE00E7DECE00D6E7CE006BAD
          D6003194DE005AADDE00218CE700298CE7004A9CE70073BDE7008CBDE7009CCE
          E700ADCEE7002994EF0042A5EF004AB5EF007BBDEF00F7FFEF002994F700319C
          F700399CF70042A5F70063ADF70052B5F700FF00FF003194FF00399CFF0042A5
          FF004AADFF004AB5FF0052B5FF004ABDFF006BBDFF006BC6FF008CF7FF009CF7
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006E6E6E6E6E6E
          6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E2D2D
          6E6E6E6E6E6E6E6E6E6E6E6E6E1D0D0707070707072D79622D6E6E6E6E6E6E6E
          6E6E6E6E2401120211111111006279792D2D1A6E6E6E6E6E6E6E6E6E03120811
          1619310B280B627979622D6E6E6E6E6E6E6E6E6E0A050C161B31182247103962
          79792D2D6E6E6E6E6E6E6E6E3004161B23391E6767273920627978622D752D6E
          6E6E6E6E6E0616203915587A7A2C31251B6279797579752D6E6E6E6E6E6E0618
          0F2F53535726292A18096279797979752D6E6E6E6E6E6E0E133B42423C1C1F0B
          146E2D6279797979752D6E6E6E6E6E35485C5D5D5C3E176E6E6E627979752D79
          79756E6E6E6E6E4263686F6F6963346E6E6E6E6279626279756E6E6E6E6E3A63
          7070707070705D336E6E6E6E627979756E6E6E6E6E6E49707171717171716A21
          6E6E6E6E6E62626E6E6E6E6E6E366A717272767672726B2B6E6E6E6E6E6E6E6E
          6E6E6E6E6E526B7273767476747672326E6E6E6E6E6E6E6E6E6E6E6E6E446474
          7777776D656D6D2E6E6E6E6E6E6E6E6E6E6E6E6E6E513F545A5A494B4C4A5633
          6E6E6E6E6E6E6E6E6E6E6E6E6E36384D5059666C5E55376E6E6E6E6E6E6E6E6E
          6E6E6E6E6E6E384C5960605F5B4E336E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E40
          4F59616043336E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4641453D366E6E6E
          6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E
          6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E}
        LookAndFeel.Kind = lfOffice11
      end
      object bt_yetkileri_ata: TcxButton
        Left = 0
        Top = 0
        Width = 149
        Height = 28
        Caption = 'Yetkilerini Yeniden Ata'
        TabOrder = 2
        OnClick = bt_yetkileri_ataClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFAA4B14AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE
          4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4C17AA4B14FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B15AE4A10C85118E75E
          40F5634CF96650F96B53FA765AFB785EF96E58FC6551F7664FDB5C3FB14D1BAD
          4B15AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B14
          AF4A11CE5320E96042F46751FA775BFB8765FB8863FB967BFBB4A9F88575F75F
          48EC6148C75736AD4C16AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFAA4B14AA4B14B34B16D55526ED6447F97E5FFC906CFC8B66FA7B59FBAB9A
          FEFDFFFAC2B8F4664DE25A3EC05530AB4D1CAA4B14FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFAA4B14B64D1BDC592DF57556FE8F6DFC8D68FC
          805CFC886BFDD3CBFFFFFFFFDCD4FB8369DF5E3EB8502AAB4D1CAA4B14FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14B44F21D85D35FD82
          62FF9471FF8961FF8763FFBDADFFFEFDFFFFFFFFDCD4FF9578EC7451B9542BA9
          4A19AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          B24F1FCD6138E7764EFA8A5CF37E58D88673CFC8C7D8E4E6E9ECE9F9C1B1FE8E
          6DF98864C35F35AB4A16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFD2653CCE6138994D3C7B465C4948763F53884C5A87
          6C718FA36E67DC6E44E17447B85423FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF121A7402278C00
          299300228B001D85001D7F1F2265794149FF00FFFF00FFFF00FF000000000000
          000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF222A
          6B063BBC0C44B21344AD1446AD1242AC0A3AA8012E9C152A86FF00FFFF00FFFF
          00FF000415FF00FF033DFFFF00FF010929FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF030A190938931C5ED01B51B61A51B61A52B71B50B61B50B4184FB50739
          A800259CFF00FFFF00FF000B37033CFFFF00FF033DFF022096FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0717321C56B91F62D21B57BC1B5AC31C5BC41D5CC5
          1D5BC31E5FC71C58C0153A9CFF00FFFF00FF000A32FF00FFFF00FFFF00FF0338
          F7FF00FFFF00FFFF00FFFF00FFFF00FF0303050D2B592675EE2271E7226DDD20
          69D61F65CF2067D22066D1216AD5216BD6194EB5FF00FFFF00FF00000200030C
          000000000208021D850338FEFF00FFFF00FFFF00FFFF00FF0102050E305A2B86
          FE2B83F62573DA2471D8226DD61A52B7226BD32575DF2675DF1E5BC1FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0231E60336FFFF00FFFF00FFFF00FF
          03020305101C123967143A6912345C2368BA1A52B72A7CE21A52B72B84EC2B7F
          E51E55B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF09090A12120F0B090A000205112D4A3291E136A4FF3091F8
          3191F6349DFE2F91F4194DACFF00FFFF00FF0000000000000000000000000000
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF33312F3C3D3B13110D021E382B
          8CDD3DB4FF39AAFF3BAFFF39ABFF276ED2FF00FFFF00FFFF00FF000415FF00FF
          033DFFFF00FF010929FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF35312F6062
          617574723D3E410D243D14487D2267A62471B4195899152E75FF00FFFF00FFFF
          00FF000B37033CFFFF00FF033DFF022096FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF535251727373848381736E69484340181A1B080606141213FF00
          FFFF00FFFF00FFFF00FF000A32FF00FFFF00FFFF00FF0338F7FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86868590908F7D7B7A555556
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000200030C000000000208021D
          850338FEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0231E60336FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfOffice11
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 432
    Top = 0
    Width = 130
    Height = 263
    Align = alRight
    Caption = ' Kullan'#305'c'#305' ekleme i'#351'lemi '
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 25
      Width = 79
      Height = 13
      Caption = 'Kullan'#305'c'#305' Ad'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 73
      Width = 44
      Height = 13
      Caption = #350'ifresi :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tx_kullanici_adi: TcxTextEdit
      Left = 5
      Top = 40
      Width = 120
      Height = 21
      Properties.MaxLength = 16
      TabOrder = 0
    end
    object tx_sifre: TcxMaskEdit
      Left = 5
      Top = 88
      Width = 120
      Height = 21
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 16
      TabOrder = 1
    end
    object rb_yetki: TcxRadioGroup
      Left = 4
      Top = 120
      Width = 121
      Height = 112
      Caption = ' Yetki seviyesi '
      ItemIndex = 4
      Properties.Items = <
        item
          Caption = 'M'#252'd'#252'r'
          Value = 10
        end
        item
          Caption = 'Muhasebe'
          Value = 50
        end
        item
          Caption = 'Sekreter'
          Value = 100
        end
        item
          Caption = 'Rehberlik'
          Value = '200'
        end
        item
          Caption = #214#287'retmen'
          Value = 300
        end>
      TabOrder = 2
    end
    object bt_ekle: TcxButton
      Left = 4
      Top = 233
      Width = 121
      Height = 28
      Caption = 'Ekle'
      TabOrder = 3
      OnClick = bt_ekleClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFAA4B14AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE
        4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4C17AA4B14FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B15AE4A10C85118E75E
        40F5634CF96650F96B53FA765AFB785EF96E58FC6551F7664FDB5C3FB14D1BAD
        4B15AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B14
        AF4A11CE5320E96042F46751FA775BFB8765FB8863FB967BFBB4A9F88575F75F
        48EC6148C75736AD4C16AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFAA4B14AA4B14B34B16D55526ED6447F97E5FFC906CFC8B66FA7B59FBAB9A
        FEFDFFFAC2B8F4664DE25A3EC05530AB4D1CAA4B14FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAA4B14B64D1BDC592DF57556FE8F6DFC8D68FC
        805CFC886BFDD3CBFFFFFFFFDCD4FB8369DF5E3EB8502AAB4D1CAA4B14FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14B44F21D85D35FD82
        62FF9471FF8961FF8763FFBDADFFFEFDFFFFFFFFDCD4FF9578EC7451B9542BA9
        4A19AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        B24F1FCD6138E7764EFA8A5CF37E58D88673CFC8C7D8E4E6E9ECE9F9C1B1FE8E
        6DF98864C35F35AB4A16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFD2653CCE6138994D3C7B465C4948763F53884C5A87
        6C718FA36E67DC6E44E17447B85423FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF121A7402278C00
        299300228B001D85001D7F1F2265794149FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF222A
        6B063BBC0C44B21344AD1446AD1242AC0A3AA8012E9C152A86FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF030A190938931C5ED01B51B61A51B61A52B71B50B61B50B4184FB50739
        A800259CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0717321C56B91F62D21B57BC1B5AC31C5BC41D5CC5
        1D5BC31E5FC71C58C0153A9CFF00FFFF00FFFF00FFFF00FF307B19307B19307B
        19FF00FFFF00FFFF00FFFF00FFFF00FF0303050D2B592675EE2271E7226DDD20
        69D61F65CF2067D22066D1216AD5216BD6194EB5FF00FFFF00FFFF00FFFF00FF
        307B192F8320307B19FF00FFFF00FFFF00FFFF00FFFF00FF0102050E305A2B86
        FE2B83F62573DA2471D8226DD61A52B7226BD32575DF2675DF1E5BC1FF00FFFF
        00FFFF00FFFF00FF307B192D8C27307B19FF00FFFF00FFFF00FFFF00FFFF00FF
        03020305101C123967143A6912345C2368BA1A52B72A7CE21A52B72B84EC2B7F
        E51E55B7FF00FF307B19307B19307B19307B192B962F307B19307B19307B1930
        7B19FF00FFFF00FF09090A12120F0B090A000205112D4A3291E136A4FF3091F8
        3191F6349DFE2F91F4194DACFF00FF307B1928A94028A63E29A33B2AA0382A9D
        362B9A342C9730307B19FF00FFFF00FFFF00FF33312F3C3D3B13110D021E382B
        8CDD3DB4FF39AAFF3BAFFF39ABFF276ED2FF00FFFF00FF307B19307B19307B19
        307B1928AA41307B19307B19307B19307B19FF00FFFF00FFFF00FF35312F6062
        617574723D3E410D243D14487D2267A62471B4195899152E75FF00FFFF00FFFF
        00FFFF00FFFF00FF307B1926B449307B19FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF535251727373848381736E69484340181A1B080606141213FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF307B1925B94E307B19FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86868590908F7D7B7A555556
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF307B19307B19307B
        19FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object ara_kullanicilar: TDataSource
    DataSet = tablo_kullanicilar
    Left = 140
    Top = 56
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 28
    Top = 68
  end
  object tablo_kullanicilar: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'select personel_kodu,(select concat(veli_adi,'#39' '#39',veli_soyadi) fr' +
        'om veliler where veli_kodu=personel_kodu) as adisoyadi,user,yetk' +
        'i,seviye from dershane.personel where user is not null order by ' +
        'user')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 88
    Top = 112
    object tablo_kullanicilarpersonel_kodu: TIntegerField
      FieldName = 'personel_kodu'
      Required = True
    end
    object tablo_kullanicilaradisoyadi: TStringField
      FieldName = 'adisoyadi'
      Size = 41
    end
    object tablo_kullanicilaruser: TStringField
      FieldName = 'user'
      Size = 16
    end
    object tablo_kullanicilaryetki: TIntegerField
      FieldName = 'yetki'
    end
    object tablo_kullanicilarseviye: TStringField
      FieldName = 'seviye'
      Size = 15
    end
  end
end
