Return-Path: <clang-built-linux+bncBDZ4ZY6STAFBBDGGZPVQKGQEH3UZCNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id E1107AC2B7
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 00:51:57 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id l15sf4100109oti.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 15:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:thread-topic:from:to:cc:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=owVslbWTWIdviI1ajRV/Zcf9Rp4Ckh/2seZPJw0o8dQ=;
        b=qzKt2Ech2dV+KLn7oVL/Y6EQdNAEAPRcrL0AYJd858LZZw2gpzHbs/jlapCsYTHz4w
         K41GC84EAqEDWPlx5/h1rdCHAptNlIyTxt6zuFKuY/Ps1Vg/CzvSaqam5EGKSx1dyZZn
         RVdt/CgjilOwd/GYRuSGs3g20Xkj8gN+6C/QiTPyGLZ2T3RL0S8FmPB4JzsVKFNpGADD
         /r8kT8s8irYdvJWYkretW4xK/KiQ4hSSBQTkweFzSWkewdMmNW4mcQHhosZBilIYfDEt
         mIBhVleWxwKesNrNzmNykJcvvkVtaF/D0L23pzFdTTtZwEI/dnkskh1GK2fLCjZ2ZBZ5
         FEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:thread-topic:from:to:cc
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=owVslbWTWIdviI1ajRV/Zcf9Rp4Ckh/2seZPJw0o8dQ=;
        b=FrgLPbkt0ccHXS9L5ojvGhmSpBqDUfhuFe3pMI9ZMxrdJVEEYD081jINc+GsFfYdif
         lif83GImm1vOtTGzxwUwTE5BJHL2X/ndwDVONZmPaj+pFs8JjObMo4RXRKa9loh6NpPY
         /jijd9p32V2wbduPEqjtpfVIR24J5BlF5BcBrEJ6MndNU/cOiTJQ/mTwr3YpISLpleYI
         AzgvO4RNsbEQiCf76lzIMuJtLUiS3n4MCzqix6N4u1+VMaca2Mr1IROfDYepxbM1m2Wg
         AhJ9VAWf+Yo64gliGVWmG3dub4Wd/WCOIry9RLz2vbB9/g1Yk5GMuZMimD+IgjE/H8KT
         oKFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQiWTytqdX7AS1hS4TqaRZaPSFvXrfQKBCqtvGhuwByMhOdJq9
	Mz+BGbUetSgQHlQR17IX9x0=
X-Google-Smtp-Source: APXvYqyjApcsP7Fa0QAH7seG/sBbcVrt51CTtA+qvhbPKcx1iWOuIPlXwyKI/lxLAaRXzl7AfWXFyw==
X-Received: by 2002:a05:6830:1d4c:: with SMTP id p12mr6302744oth.333.1567810316562;
        Fri, 06 Sep 2019 15:51:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1211:: with SMTP id 17ls1373255ois.7.gmail; Fri, 06 Sep
 2019 15:51:56 -0700 (PDT)
X-Received: by 2002:aca:fd17:: with SMTP id b23mr9460543oii.29.1567810316248;
        Fri, 06 Sep 2019 15:51:56 -0700 (PDT)
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com. [199.106.114.39])
        by gmr-mx.google.com with ESMTPS id p20si394031oip.5.2019.09.06.15.51.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 15:51:56 -0700 (PDT)
Received-SPF: fail (google.com: domain of efriedma@quicinc.com does not designate 199.106.114.39 as permitted sender) client-ip=199.106.114.39;
Subject: RE: [Bug 43121] ARM: invalid IT block in thumb2 mode
Thread-Topic: [Bug 43121] ARM: invalid IT block in thumb2 mode
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 06 Sep 2019 15:51:54 -0700
Received: from nasanexm03d.na.qualcomm.com ([10.85.0.91])
  by ironmsg03-sd.qualcomm.com with ESMTP/TLS/AES256-SHA; 06 Sep 2019 15:51:54 -0700
Received: from eusanexr01b.eu.qualcomm.com (10.85.0.99) by
 nasanexm03d.na.qualcomm.com (10.85.0.91) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Fri, 6 Sep 2019 15:51:54 -0700
Received: from NASANEXM01E.na.qualcomm.com (10.85.0.31) by
 eusanexr01b.eu.qualcomm.com (10.85.0.99) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Fri, 6 Sep 2019 15:51:52 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (199.106.107.6)
 by NASANEXM01E.na.qualcomm.com (10.85.0.31) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3 via Frontend Transport; Fri, 6 Sep 2019 15:51:52 -0700
Received: from MWHPR02MB2479.namprd02.prod.outlook.com (10.168.202.19) by
 MWHPR02MB2350.namprd02.prod.outlook.com (10.168.250.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Fri, 6 Sep 2019 22:51:49 +0000
Received: from MWHPR02MB2479.namprd02.prod.outlook.com
 ([fe80::91d6:633a:b2b6:7363]) by MWHPR02MB2479.namprd02.prod.outlook.com
 ([fe80::91d6:633a:b2b6:7363%9]) with mapi id 15.20.2241.018; Fri, 6 Sep 2019
 22:51:49 +0000
From: Eli Friedman <efriedma@quicinc.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Hans Wennborg
	<hwennborg@google.com>
CC: Stephen Hines <srhines@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Thread-Index: AQHVZCWucpPfKJsiv0yeyP2sIU7tAacdhi/ggAAERwCAAMIqAIAAlQUAgAAL8ACAAAOjgIAACWnA
Date: Fri, 6 Sep 2019 22:51:48 +0000
Message-ID: <MWHPR02MB247910107670627480C2CD4CCABA0@MWHPR02MB2479.namprd02.prod.outlook.com>
References: <bug-43121-8919@http.bugs.llvm.org/>
 <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
 <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
 <CAKwvOd=yoZAR+m78cGrwQD1pO5j8jgbZ2=6kuJPUei7p--ePUg@mail.gmail.com>
In-Reply-To: <CAKwvOd=yoZAR+m78cGrwQD1pO5j8jgbZ2=6kuJPUei7p--ePUg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.106.103.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d39bb856-d180-471e-41a4-08d7331ccd27
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR02MB2350;
x-ms-traffictypediagnostic: MWHPR02MB2350:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR02MB2350CD78B5DB2A35B25E25C6CABA0@MWHPR02MB2350.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(39860400002)(396003)(136003)(376002)(346002)(51914003)(189003)(199004)(13464003)(8676002)(25786009)(26005)(71190400001)(71200400001)(256004)(8936002)(6116002)(66066001)(3846002)(81166006)(81156014)(229853002)(66946007)(66476007)(66556008)(64756008)(66446008)(52536014)(478600001)(5660300002)(4326008)(14454004)(110136005)(54906003)(33656002)(7696005)(76176011)(76116006)(74316002)(305945005)(316002)(186003)(2906002)(86362001)(7736002)(11346002)(6246003)(446003)(6436002)(476003)(102836004)(55016002)(6306002)(9686003)(486006)(99286004)(53936002)(53546011)(6506007);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR02MB2350;H:MWHPR02MB2479.namprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tONLY3IBB3mWrAqk5r1218tt9IIOIaWeybDzmVrcYJTm9qvTXxP9NYzjlrH7KR4z5Ynt5Fho8znNqOtxWb8I88te+Hj2BYGzPFxYjhjcope77V1jg77PHROAz+GDRtuII6H6vnzM5Yc1A19BqR0BG634jwTDQML2+Y12m3G+NQVbrOBJ6nG187xm1KreD9XIV21qHqWNoFSRK63OuoIqWaIkCm1cxOgPS2gbBC7fDXKLGdosp2lN2NQOscHp+VAjtwEv7l1CC1T4yzLUajSi++tigneWd/X1EMQ/Nh01QMeF+xUcLmEAnK/ok5g7cZXWoP55rpFbWcTEs+AJI5mOvzT1CbXtEHdTqsP+uYu48HvaOXEORlKAblfRtbVWK2Gqs4031ihQe6lSTBpmYE9lrpYH9ScKRUM3yaFinn97KFA=
x-ms-exchange-transport-forked: True
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=THIGXLAWBCOWfpzv9LL8Ht8C+3vd1VBMED6X0HBF1JY2INF03wSnOXLtP5bzHRnNfsWTXrmezwtRDW6NGx5ueI8d+Wcs9tOyZ1XHHgymoyXzpw+esjqmmTkwTncmb3t/GD3HXX+300L6aT/ZKhhBYyS9kJ8YvwcPX4rU6R+YL8BYDqRKnK1druXQOgxywDMIR1Veja4qLP65d+vDDYjtlORP+PJLZB4QvhmDAUlGL+O8vRCnCtZJFlKDHgPC/bBnuMp9PeXrtXLL0Dm4P3Jnz6jkqPylB7pypIecrvfgndctwZqKxrnq0BoI/kddClLGaQqECUrmrBYgZTcgfJAwwQ==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6JNYgmMZwMsAzHHQAntx0dq+mikBLY2tval9LL9xNYU=;
 b=Twc1XmhWLux30h18NdTvfya1MXMOddzoWugiIa68RgB810rZIktbnbA8ikJ3QFA5VeOcecaDoNPHkL/R3Pc0dK0kfFp+ShkDfznOPRCJqkviRrYUTPomNIfqGRHDvlZDg7nzTqHjAIhEDCWyXSIjQYPBCZMdCaMd01tduD5Qa/wDlY/OR/wae3aikIQ66Zb/okJfsg3lMOOTXE8/zn0uG/qgQbLLYS8jpmJ3fKrneBv/zA8KBadv8mfeVA3Dd+2m5A5DptEDbCfVj0mpB+qt+xie3LK/BNGrFzdW1IzRFIOu3/h8tBUlymhLeLqEYUCGD10h0kJ0aL+MmiPu1TCoAA==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=quicinc.com; dmarc=pass action=none header.from=quicinc.com;
 dkim=pass header.d=quicinc.com; arc=none
x-ms-exchange-crosstenant-network-message-id: d39bb856-d180-471e-41a4-08d7331ccd27
x-ms-exchange-crosstenant-originalarrivaltime: 06 Sep 2019 22:51:48.9717 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: v+lvfKCsmIB6AcU0dborPw5H4npDRfQKYW5kOwiuoAY259DlmcaQF1vffVagDshlWJmP7gOXNoRhfx4AhyBbVg==
x-ms-exchange-transport-crosstenantheadersstamped: MWHPR02MB2350
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: quicinc.com
X-Original-Sender: efriedma@quicinc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@quicinc.com header.s=qcdkim header.b=gp3J14F1;       dkim=neutral
 (body hash did not verify) header.i=@qualcomm.onmicrosoft.com
 header.s=selector2-qualcomm-onmicrosoft-com header.b=iHcXkGeR;       arc=fail
 (body hash mismatch);       spf=fail (google.com: domain of
 efriedma@quicinc.com does not designate 199.106.114.39 as permitted sender)
 smtp.mailfrom=efriedma@quicinc.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=quicinc.com
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

> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Friday, September 6, 2019 10:59 AM
> To: Hans Wennborg <hwennborg@google.com>
> Cc: Eli Friedman <efriedma@quicinc.com>; Stephen Hines
> <srhines@google.com>; clang-built-linux <clang-built-
> linux@googlegroups.com>
> Subject: [EXT] Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
>
> On Fri, Sep 6, 2019 at 10:46 AM Hans Wennborg <hwennborg@google.com>
> wrote:
> >
> > Thanks for the detailed reply!
> >
> > On Fri, Sep 6, 2019 at 7:03 PM Nick Desaulniers <ndesaulniers@google.co=
m>
> wrote:
> > > Of the 2 patches I'm requesting for clang 9.0, the IfConverter
> > > (https://reviews.llvm.org/D67203) fixes a compile error for a lone
> > > driver for an arm32 allyesconfig build.  That driver is for some
> > > obscure piece of hardware and isn't critical, but "allyesconfig" arm3=
2
> > > kernel builds are broken without it.  I think IfConverter is only use=
d
> > > for ISAs w/ predication, so Eli's change may affect other ISAs than

In practice, the ISAs that currently use IfConversion are ARM, AMDGPU, Hexa=
gon, PowerPC, and SystemZ.  Note that PPC and SystemZ don't actually have c=
onventional "predication"; the PredicateInstruction hook for those targets =
only support converting unconditional branches into conditional branches.

-Eli

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/MWHPR02MB247910107670627480C2CD4CCABA0%40MWHPR02MB2479.na=
mprd02.prod.outlook.com.
