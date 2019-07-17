unit P2P.Base;

interface

uses
  Classes, SysUtils;

const
  TCP_PORT = 8899;
  UDP_PORT = 9988;

type
  TPacketType = (
    ptLogin, ptErLogin, ptOkLogin,
    ptIDinUse, ptUserLimit,
    ptUserList, ptUserIn, ptUserOut,

    ptTextTCP, ptDataTCP
  );

  TUDP_PacketType = (
    ptPing, ptPong,

    // ������ ������ �� Ȯ�� �޽����� ������ ������ �޴´�.
    ptHello, ptHi,

    ptTextUDP, ptDataUDP,

    // Text, Data ��Ŷ�� �޾Ҵ� �� Ȯ��,
    // ���� ������ ���� ������ ���̸� ó���Ͽ� ������ �����ϸ� ������ ���� ������. (Ȧ�� �ݴ´�)
    ptASK
  );

  TPacketToID = packed record
    ConnectionID : integer;
    Data : packed array [0..4096] of byte;
  end;
  PPacketToID = ^TPacketToID;

var
  {$IFDEF CPUX86}
  SERVER_MEMORYPOOL_SIZE : int64 =  256 * 1024 * 1024;
  {$ENDIF}

  {$IFDEF CPUX64}
  SERVER_MEMORYPOOL_SIZE : int64 = 4 * 1024 * 1024 * 1024;
  {$ENDIF}

implementation

end.
