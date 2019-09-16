Return-Path: <clang-built-linux+bncBAABBTML73VQKGQECIADFPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD83B3AC7
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 14:53:34 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id w4sf7809469lfl.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 05:53:34 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568638413; cv=pass;
        d=google.com; s=arc-20160816;
        b=V8ZPYp/3yi1RlGhoe+0ZpoQpElDzblqlThWe/b/k9fKhvcoRR/DpMvNXgCv6llagT7
         Y6KbYGV6oarXHLowzfVUGuVAkFxigyX/cQ1QE5YKbby1Bco9UhtWq3yxcBJTf6GRaoEs
         8yGJ2S4+ns5aDYmCKzeEzX9btinE0iC+iVgtILXM0+tmT74FnxXEAk+N8g2w9DBCaKrH
         fkCWAOSssfYEFdGRpFokSXeMn4pcIixsSyW07RSbY4U7Hw/9RM46Rz0jXqewyT21GIal
         Y31sKwiFzE5uZ6IzcVBhNzdvViVk1aAtFl0NqTJ4dY3EJ1M8ZYUR1gBk5jouyQKedfem
         RRBQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :from:sender:dkim-signature;
        bh=fWM+XYzlNdMxQPj3gOP2/kxLdJRFxqal9dziZiY7zn4=;
        b=mfRzPdRUXc6Vc24DsJ8yudEnh7Cb7dPMk2X2ZO6DyNY5Rx0JEBmiIZYw453pSnFiY4
         PVPzMmXOpkIUQjlQM0OlAhyCqdh2HRJLf8PKqFpRjuFukdGZcun4z1uk/3EPJgSuFLcJ
         y73TrEmipJ2BpOZGY3uxpQd/1j0YsStZnyp9+XT++tbqJGn+/ifDGBROueMVabq3D6/m
         0QtH6+mutc+ad+4Ttr04Mg3vs16BN3OQfAKu7olLqWm7uNUqkcofxfJq6oiyvPXzu2Mv
         r+Sj8cAnk6oVWVe8WVUxl92wdx58uuf1p46CGIQlR9ZJSmWY+fbY1/PLewbRnONlIsK+
         bfFA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=n7A8shAx;
       arc=pass (i=1);
       spf=pass (google.com: domain of patmikando@hotmail.com designates 40.92.8.21 as permitted sender) smtp.mailfrom=patmikando@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fWM+XYzlNdMxQPj3gOP2/kxLdJRFxqal9dziZiY7zn4=;
        b=izlk4gWg0xJ64noSFVEaBe4+axhWKDTgUcl2oRHwzL1RiDI9/BOJezHsUIeG6Jgerp
         h5Yeuor1IkYfn91KRkw2t0EwyprMF0PJImDfC6hZ16NQLAso/H8QDfqiK4ErrIgQT0z0
         vA9xXu7R/VExd3kE2pUQOP4OE9uSeVagjdAessbErVkDqHbwDiQBt9SB0wDdykWbqcZc
         qMOH1ocTyWb0dOP9onZhBmE4bZWAnNn9/SjMljHQeGhDTriDpIYwmVpcuwrCJrsaww65
         IIV1WJh3RtQBDlD8UcH4iHemVKxmJ+TlLdw3ktvygNSX4246s3ku9811D+XxPopZoyeV
         DeIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fWM+XYzlNdMxQPj3gOP2/kxLdJRFxqal9dziZiY7zn4=;
        b=EqT6c0GwO6GyFn3AaBZSMV7locqyNn9BRO5TA4t5nVjYTebL6IJBRlOoo9nE4kP5QX
         kNMIv/bFeqhWEDZqxbsleIVW5FU8rmeJYT4YAmR8xRS9CJXEHoGwbJHrRQmYmOFiLNJx
         Oey5m7LvGhEaa0lZbTErunukVidb3Ja6qm4XZUAmMI2pKADf+n7PUPJmBbe1uqRCAJ4i
         KetftCyGAs8QY03l0IFHqsAReF8pvI7z886WxlbAAWg2JUlg/J0GzF1DNbwV/xSv41F0
         ptIUAgEzaOFkAIzMX/EoA9GH3Z7xrkuf4GDNobt9+xwDi3S0uPG3a67TIrn1fdVSsiBI
         9d+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRRzG1T9bSCyl2lF0N7mBBN+eAoMzVRdLLxe9iYsnDDHK23y/c
	svIpFwpy8puTHa2h4f3SaFE=
X-Google-Smtp-Source: APXvYqwhR+2HOGP2Pm5GK5omgQaM+QqONLWcpOLvOZneNFzFwS649o4pKC+2Wh95gJWd7XILZZ8cNQ==
X-Received: by 2002:a2e:3613:: with SMTP id d19mr34458860lja.57.1568638413824;
        Mon, 16 Sep 2019 05:53:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3613:: with SMTP id d19ls466787lja.6.gmail; Mon, 16 Sep
 2019 05:53:33 -0700 (PDT)
X-Received: by 2002:a2e:9890:: with SMTP id b16mr1313848ljj.189.1568638413423;
        Mon, 16 Sep 2019 05:53:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568638413; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ag85DZOhk2mb7/1Tt8vI0nsUMJVeWNGOxnx8l0n3uNr5Ak4WRIb3Zg3ozZqkFGSbip
         eeJQ2ZO7MnGHrd/ULx0VxNy26cW4NPM/uZnRNKnhhedDawYLgNNkNlftyA5Pr8xth7aL
         4zclo/A2CyZqp7Mk5tjDnQJmP8+sUIJK2EL+CSTGFCvupSaje0pTnjftvVGmb6FQrxOe
         ZxTBEv3StuWD4IkXkw1SHXETFHR4Z7GfP39MU0Ec5W9TZwdkRkvHBRluwE7F+AoA24ph
         VbU79BfHPYpDtkCwnMnqEYhxntOUx8aZfcXMLaw1resOqE2rE5C7OYKZq8Ijsw6nZLxY
         2fnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:from:dkim-signature;
        bh=/nL3sr6Egg1mkFfV//vdT5l78rgEd6UM1oq50MhU2sE=;
        b=bLr5wO2yuE1TT8cpSgY0JJxC0UjJtIdNRcrXgE5eHgJCDW1ChBY/YBEaaKINoTC2PF
         BGNBBuAC3vKxPoB5gW0z/KL6GdAPoG3vp2yzZWzkRBaTbCK9EfZp8vlZjH1ZK6w9L6yt
         VfWPmIFIzjLgRkHXSdee02oWzkee8NAaYRoI6UdQsWc6HjTb/eI2yItYF+gNj7mAR5sb
         g1Mg+ltiVpg6toJYVcTUYm5cy9jtylO7Di9e4PyX3HcbJOzJETRCuLmFUvxLsyDejMwO
         84gO+Ty8X9bFzCMiS9e5xnggma1Xblo8138b9fbY8ICsgbRXwR84FcWyWjVnBmujICbG
         +RLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=n7A8shAx;
       arc=pass (i=1);
       spf=pass (google.com: domain of patmikando@hotmail.com designates 40.92.8.21 as permitted sender) smtp.mailfrom=patmikando@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-oln040092008021.outbound.protection.outlook.com. [40.92.8.21])
        by gmr-mx.google.com with ESMTPS id u24si1245259lfg.2.2019.09.16.05.53.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Sep 2019 05:53:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of patmikando@hotmail.com designates 40.92.8.21 as permitted sender) client-ip=40.92.8.21;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OV816gZ4iC0ABaoguyO1gp2V4cLg4ru3lpVP9IxmLxe1fQjGgqSKbHYCIk0AosrDPIpclheboIswX+rMdfSCg34wdu8eo4++MlUh0gIG+h3L2FrYcb85C5amMzhf8BEPfwfpvxFK2vvSbEd1zVo9u7+IFMqNfKc3HqlfmjPD+8G6qPSECs7SDugBXIQg3AgNV71VemOb4FRxlfUbez0ixFkRCh/m/kXYMmXtw+6ERHrq2hlRzjkAJDqPNnbXnBW0ruNTykTZp+gm9/EtnqYOYq0MGsZYRMZy5fsAIPcl/b61srgiT3wQdVzjvB/wsGxAyOTQC00sTQBc3vpborEZEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nL3sr6Egg1mkFfV//vdT5l78rgEd6UM1oq50MhU2sE=;
 b=R4/OnNtN/NLPQb0nV0WzGeOB0LuhVcdGuyIa3v54P9K0oUuk+N3kpVKn9omDBXTfwY4OSvleNF8ufAkN/4tHK/ywtSTrU04Ufi7GbBlonLO/HBKNNdXKPv3c9+IvFsTxa0KHhoMJhOm2I+PPVnZQlo4JZlxMvzR59f5uXIGeLZRdG7cAZwAHK+Ong97P3l7yeTuvjIrMph0brU2OHfNNp/YBK/IQ0XJ3IXHj/WhkhENQYCkjjKAvG8RO6wZ1yDouxKsWQ5ZawQcFiIKm2nRE3xeV5e0+iz3PPT35fQmSrxRew6Z8nQEBCmPEHioJRgBVIzSe/y7hXfjTgDvzo24ilg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BY2NAM03FT052.eop-NAM03.prod.protection.outlook.com
 (10.152.84.53) by BY2NAM03HT117.eop-NAM03.prod.protection.outlook.com
 (10.152.84.172) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2263.14; Mon, 16 Sep
 2019 12:53:30 +0000
Received: from SN6PR05MB3935.namprd05.prod.outlook.com (10.152.84.57) by
 BY2NAM03FT052.mail.protection.outlook.com (10.152.85.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.14 via Frontend Transport; Mon, 16 Sep 2019 12:53:30 +0000
Received: from SN6PR05MB3935.namprd05.prod.outlook.com
 ([fe80::d561:a657:2019:ed6c]) by SN6PR05MB3935.namprd05.prod.outlook.com
 ([fe80::d561:a657:2019:ed6c%5]) with mapi id 15.20.2284.009; Mon, 16 Sep 2019
 12:53:30 +0000
From: Patricia Mikando <patmikando@hotmail.com>
Subject: wish you all the best
Thread-Topic: wish you all the best
Thread-Index: AQHVaeVB+WrU92AB4ESBCKeLfnokdw==
Date: Mon, 16 Sep 2019 12:53:30 +0000
Message-ID: <SN6PR05MB3935360135A42A22FF8C47AEC1B30@SN6PR05MB3935.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2C4B1B5130DAC1E5C359408890613859BFE2FC223429E6D35DD0706AC4520E5E;UpperCasedChecksum:D89323E843E1D15676F58E0F485471D1F6D8F864D36B5AF9F9E6E7BB1D3233F4;SizeAsReceived:6974;Count:39
x-tmn: [2uxBZOZyCEy4bZzKLQhdxiZYxEmQ0mq6]
x-ms-publictraffictype: Email
x-incomingheadercount: 39
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(5050001)(7020095)(20181119158)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);SRVR:BY2NAM03HT117;
x-ms-traffictypediagnostic: BY2NAM03HT117:
x-microsoft-antispam-message-info: i9XvFZ88QlGZzecMtM6n8FIMwFa91q1Doa3ei5FCgZyXofALFwxBmb4OdOGmFrrjcT7KG40C5X8PD6d1e6Q041769L0JqL25uyChGxphXjz1VsI8+rxANAGa8bCuHF+I6f7tjkS0H4pwpZMSGHY0Lo6DAiBrIHjIKjpxtuWYw4GFVRtpvCo+hOZXPR6UjMaQ
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_SN6PR05MB3935360135A42A22FF8C47AEC1B30SN6PR05MB3935namp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e455f453-9ff2-4224-7c16-08d73aa4e02f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 12:53:30.5851
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT117
X-Original-Sender: patmikando@hotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hotmail.com header.s=selector1 header.b=n7A8shAx;       arc=pass
 (i=1);       spf=pass (google.com: domain of patmikando@hotmail.com
 designates 40.92.8.21 as permitted sender) smtp.mailfrom=patmikando@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

--_000_SN6PR05MB3935360135A42A22FF8C47AEC1B30SN6PR05MB3935namp_
Content-Type: text/plain; charset="UTF-8"

I hope this email finds you.
I want to know if you received the last message I sent you?
I really want to hear from you.
wish you all the best.
Patricia Mikando
I look forward to your response.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/SN6PR05MB3935360135A42A22FF8C47AEC1B30%40SN6PR05MB3935.namprd05.prod.outlook.com.

--_000_SN6PR05MB3935360135A42A22FF8C47AEC1B30SN6PR05MB3935namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<div style=3D"margin:0px; font-family:Calibri,Helvetica,sans-serif; backgro=
und-color:rgb(255,255,255)">
<span style=3D"margin:0px"><font face=3D"comic sans ms, sans-serif">I hope =
this email finds you.<br>
</font></span></div>
<div style=3D"margin:0px; font-family:Calibri,Helvetica,sans-serif; backgro=
und-color:rgb(255,255,255)">
<font face=3D"comic sans ms, sans-serif"><span style=3D"margin:0px"></span>=
</font></div>
<div style=3D"margin:0px; font-family:Calibri,Helvetica,sans-serif; backgro=
und-color:rgb(255,255,255)">
<div style=3D"margin:0px"><font face=3D"comic sans ms, sans-serif">I want t=
o know if you received the last message I sent you?<br>
</font></div>
<div style=3D"margin:0px"><font face=3D"comic sans ms, sans-serif">I really=
 want to hear from you.<br>
</font></div>
<div style=3D"margin:0px"><font face=3D"comic sans ms, sans-serif">wish you=
 all the best.</font></div>
</div>
<font face=3D"comic sans ms, sans-serif" style=3D"background-color:rgb(255,=
255,255)">Patricia Mikando<br>
I look forward to your response.&nbsp;&nbsp;&nbsp;&nbsp;<br>
</font><br>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/SN6PR05MB3935360135A42A22FF8C47AEC1B30%40SN6PR=
05MB3935.namprd05.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/SN6PR05MB3935360135A42A=
22FF8C47AEC1B30%40SN6PR05MB3935.namprd05.prod.outlook.com</a>.<br />

--_000_SN6PR05MB3935360135A42A22FF8C47AEC1B30SN6PR05MB3935namp_--
