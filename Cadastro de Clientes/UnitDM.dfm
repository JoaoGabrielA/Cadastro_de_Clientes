object DM: TDM
  OldCreateOrder = False
  Height = 378
  Width = 529
  object conexao: TFDConnection
    Params.Strings = (
      'Database=dados'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 120
    Top = 88
  end
  object tbClientes: TFDTable
    Active = True
    AfterInsert = tbClientesAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'dados.cadastro'
    Left = 256
    Top = 128
    object tbClientesid: TFDAutoIncField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbClientesNome: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 26
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
    object tbClientesTelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 16
      FieldName = 'Telefone'
      Origin = 'Telefone'
      Size = 16
    end
    object tbClientesEndereço: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 23
      FieldName = 'Endere'#231'o'
      Origin = '`Endere'#231'o`'
      Size = 50
    end
    object tbClientesEmail: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 31
      FieldName = 'Email'
      Origin = 'Email'
      Size = 50
    end
    object tbClientescpf: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 15
    end
    object tbClientescep: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'cep'
      Origin = 'cep'
      Size = 15
    end
    object tbClientesbairro: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 32
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object tbClientesobeservacoes: TMemoField
      AutoGenerateValue = arDefault
      DisplayWidth = 11
      FieldName = 'obeservacoes'
      Origin = 'obeservacoes'
      BlobType = ftMemo
    end
    object tbClientesdata: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'data'
      Origin = 'data'
    end
  end
  object dsClientes: TDataSource
    DataSet = tbClientes
    Left = 160
    Top = 224
  end
end
