Return-Path: <clang-built-linux+bncBAABBMHBWX3AKGQE5IETF3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3701E2F35
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 21:40:33 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id a4sf1023078wrp.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 12:40:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1590522033; cv=pass;
        d=google.com; s=arc-20160816;
        b=yK9VEvBAg0vNooVJWfbcoEfCAeujdZBtiMV7BY5Bx11aY7UcMpz4IUJNXucH7V34cf
         PN5FDfRIS27BtYU8PMenFHDGGRwzSyolfq+4LUq5GFZYe8Xe58Dayp3CyWCLchAizZQl
         b0GDUvDwze5FhhODEJrXGbFvZkFMPfq8z2Llw9ByV/PSo4m4noSCxkfGbbhKBlkVDcK4
         DpR+TemWUQQfC1isDpjw3zpZveLLU3035jvI4nCxtBIInJodU87qbzbgKJzS0H1+RNWh
         QE9HBDUETHkhl1Th4IcZxPzWKS4Cx/HQsj1jNGWajRwp7IRxLTik/Sqf4SZADjYxQnl5
         VeCw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=v9gTHlpOVH5TX7uGjXMD+ALSEfROtQU08FbYfthgZzE=;
        b=i+83w3df03Sr2j3PhQb8fPcCeJGMGyktIMs0MtEuHLVV7puQ4EAwJgTT5qY5pChJtn
         jUqVgCi9+JvqZGypfAjbnMNipPHfslJKK2w5AfIFBYRZwingRdUx1HLpI/SN0AQWqGwf
         shACDnwTKmivFeu8boLFQxHzR7uskntSrw6DlEv8hhyDDceLdKyhJbTyWFaYgkC2BP4o
         XzGu8YLLBK2RyJRE3sga7iiM/oEln7ZPU/dw59KUZK/s1edscGMIo1mIIk68AHKYflDS
         WiaJDrMDbX6Gc5jVrqv1/qVUfxRM1CSVKnJzCPGzHdgRRsjNu0Wu2XSMtu4fkJiEMfqn
         5l4w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=UgGauLKy;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.4.84 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v9gTHlpOVH5TX7uGjXMD+ALSEfROtQU08FbYfthgZzE=;
        b=UyRfbxqRITJVay79aqJd/f/s5qj/ZQd8vZ3o0THMnb4IVsYE+bqiaxeu+6Zk+IAmii
         5mJYAGAe8ajSaxrCRTqQWIsWPqTiI4TZ9Zf6jlpCzsayJxVw08cl44Q8S+xj2d/XRXQm
         9E4VgVge8+QfR3ktim/AfahEDuAo7j/5PCcJtzSmQVUw6jNP1u/oxRoVAFM4+kFjbIyj
         bX/L/RFJBt/LcKEGwkT46zBeZE4NP7ZHMCAwH3JxFv7YE2F3mk9F3JHZNYugZxbaaeHC
         pC59kNGvXdwv7xgcuEBrr8RhueYj1ku+nKNYwgpUrsQ+6Yv4Dy9/H7eAx09hiV5kh/1T
         L43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v9gTHlpOVH5TX7uGjXMD+ALSEfROtQU08FbYfthgZzE=;
        b=m+Kn2pA5sYEx7HUCm5zmJtOgJKVM3PgKJm0sEtuHiEcvw7r7BbC15JuCZ+Kxy2YO/F
         RFOm4mMZb/aj22WHI+O4TgMGHqiYm5tx+es6K9O+OqFifn0o9qhCJCflqkOyvkkxnbp9
         gRCByhFA7jVe07N1pB7aj7g4oDJPEUnjikJhGhAJxwCK0T22SEk7z+o49SliCG4Lnbrq
         0de3zWhOLoxkLByo2uT3WWtwlltSY3MiX3a9NU8YvT2lEdcdahiihMPrRSHMp+RGSCrt
         MM+//TyCmH5MlqgJKO+mjN6UaqnxF4KPuMN73Xw6etAqylzJOudaCxYmFcFj5RlP1IHZ
         5lDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GWMapvHuIteppzZidgqHy/C0QhTtv/BSZfTT9TUDNOsZpMBwS
	8DTp1OSZPH8Kn1Ucy/ViZnI=
X-Google-Smtp-Source: ABdhPJy5CQiv80dFSzwQima4Nvj2y10sSeZ/PQjxFRxrbOSo12IpEMmLeZnUdF1gvKY4l6hhaBp0JQ==
X-Received: by 2002:a5d:4d0d:: with SMTP id z13mr7077465wrt.220.1590522033048;
        Tue, 26 May 2020 12:40:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9a89:: with SMTP id c131ls263331wme.2.canary-gmail; Tue,
 26 May 2020 12:40:32 -0700 (PDT)
X-Received: by 2002:a1c:9c85:: with SMTP id f127mr721792wme.79.1590522032583;
        Tue, 26 May 2020 12:40:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590522032; cv=pass;
        d=google.com; s=arc-20160816;
        b=zUFdtlWAEXT3c03FcN96Bq0aWCdssX51NInlDsjHhhlamh+mSACHrmO5C/9Dx1mgEu
         urrotfUf+ggDL8RtD0l2WNOn73uNPkBSz4r9K48c6CWI5gt+raSF8tn3u+DqLPFyiqAJ
         OZWJd+ygM+QI+SCqPwJTb8GMJ0RmNc9scTrwzE7H4fmTmRVC2im9UaY7uqBCfB9tYcaX
         B3kKGfZ72a3coRy+bkd5RFhGjni5yU8CBJuitA1Q5Sjz+E1Vi85AISJT+m2D964os89U
         l5vRv5Zq6lGRx+vK5e0oXAHm2xEkZzT3oPbt+qhu+eWIA0t+nKQ8LIdVEnkxcU4trlz5
         fxhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature;
        bh=5f0qv8Y3IIVDGslo5bWX7ZyxMuRXFAwT0cyiLTMVLlg=;
        b=rido6Smw+39Wge53NWayrJMXRJOcddPBMk+pwrwdjsWbYOt8jSr68ABSzscRvIB1MY
         gOQ+rMIOrDfxr81M7tisjg6fSNbLPg526NK/VQbEAGjk8UMEpW0ckJvHyDUmC1tScz8q
         znMt15kWVGyAXVGGoOVcB0hRjmN1lQgzV00iYd+08jXQGOqdUQhy+sG8XpJNvUY1UAkU
         dVALhM6bnFHfD571ZuRz6f5l8wWzjGAi6a3UHO2a/zE8QT4Wcjci8nbkRju6EXpV+2G9
         K7d67ytPhnpI0lrkHiaddepeJXKBvSZFDrWSZRHZzD7PH16kbUBMSh1MbVzpkrwkYM+L
         sBVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=UgGauLKy;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.4.84 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-eopbgr40084.outbound.protection.outlook.com. [40.107.4.84])
        by gmr-mx.google.com with ESMTPS id q8si39190wra.2.2020.05.26.12.40.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 12:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.4.84 as permitted sender) client-ip=40.107.4.84;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MrPCpGH9++1t5DpOo08iuL556ILI78c2w/uwNitRt17E9qB/g6x7UyW9bQsVN2gtFHiAU/oWs6QSPaGsgCnBsZmFYuzLaugnFO/OHYTjP24aE+h/d/a91DyCl3MUEzWSQlxxZXkhEaPq3VMWT1wieEwBAaxHn3B8jO0eSRaOsyfXa3FMQ2gNFaJUz3pUyZ99g1fiN9gnu98dBetCMYB1Iwml9jtO9buvkFSt7EH6JllJv2gtH2aO0R0SweyNcbbGd1hATk8qdgXVeZ9kxhnrLf3idkMfYrXmSbRj9hVEEn8Bv4fTBB2+0Lw5kq4FWreqDVuOxuFHkfyDPZLbz+NNKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5f0qv8Y3IIVDGslo5bWX7ZyxMuRXFAwT0cyiLTMVLlg=;
 b=VLdJiiueK52CJVaD4gVyjnmKTUJILGHWIBwtjNwYDY20ZH+vBjGAo4g1vSKkYcOGIn+gzSbr7YUbb4Y1pPQc9IjwbGZrDVAXncWubc0nZTquXJoohZsG0iLB9eTbiaF35RdavLSTp3jH039jlKDzZv+vwne9jKWqdF5gr04rybY+lyKC0QDJr9xq0Ic3idTixCCoM8of9Y/DXfXtPpWp7MiE02+j5lXGUCkNTIhOruuyL8mpk1m9P9YoWj1naNnG10+Wp1O1/aLzF1qDIVq4Sk/e+MI0Lxm80aCIMTA9ksqAn3bI5JujsyTCV0kUqNBop5b23KaxtsoOVPVWXSyFHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com (2603:10a6:803:e7::13)
 by VI1PR04MB6927.eurprd04.prod.outlook.com (2603:10a6:803:139::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Tue, 26 May
 2020 19:40:31 +0000
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::1df:4c77:2e50:22d4]) by VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::1df:4c77:2e50:22d4%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 19:40:31 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: kbuild test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [EXT] [linux-next:master 6663/12912]
 drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no previous
 prototype for function 'sja1105_vl_lookup_entry_packing'
Thread-Topic: [EXT] [linux-next:master 6663/12912]
 drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no previous
 prototype for function 'sja1105_vl_lookup_entry_packing'
Thread-Index: AQHWM5VRlELqGoI0O069kVZNBYAKBai6w68s
Date: Tue, 26 May 2020 19:40:31 +0000
Message-ID: <VI1PR04MB5696BCF57BEEB9E874F98443E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
References: <202005270324.fspPrqPY%lkp@intel.com>
In-Reply-To: <202005270324.fspPrqPY%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.25.147.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6710c82c-a222-46fa-0e6a-08d801aca680
x-ms-traffictypediagnostic: VI1PR04MB6927:
x-microsoft-antispam-prvs: <VI1PR04MB6927AE466BD9DC23AC78621EE0B00@VI1PR04MB6927.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:196;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mQ60ns6P8P9p5yE5FX9gTziN4g4uwH9+ZQ3lYa0oaoIHBFNXQMPAcv1BGGVCtBY7SEjnvEvL/n7F5eEbjoy7yK+Vh68x6/JTQAOyNl7XmyrcvW2Fd0mKuwlhVEKADGoMULc6qCp4iduyHa1J/S+1SwfK5Zk1l5kN4x/ySH0sRV1AmXTczEYiZwSGqs3q4W7e0rq3Xa4+a4+Y2j8vbSEo1SluM/s6hf3z/woqvblQ9HXn8SSECJKAhrstyiIzo6xkRNhJRKERJzJ0qT82+daJpK+TyznDCvllwD2UB+9A7NzxUA2E4M32a1X40UZULloRDbY+bLN+i4rdalU4s+zglQArTZ5CB4uRaEenwf3o9gZI3uULURh9Q48Bsnj/G2uFilMLmBUCo82yuopofCQw1ULxPM6utLdV4yp5tSaA+Xt+gjC5m4rR2C90LcGIgojH+l4F2lh583V+0qU9Gz0FBA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5696.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(366004)(136003)(346002)(376002)(39860400002)(4326008)(166002)(44832011)(71200400001)(19627405001)(6916009)(55016002)(7696005)(966005)(53546011)(52536014)(478600001)(86362001)(45080400002)(18265965003)(33656002)(186003)(6506007)(26005)(316002)(66446008)(76116006)(66476007)(66946007)(5660300002)(8676002)(8936002)(54906003)(9686003)(2906002)(83080400001)(66556008)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: nxrHhdQIK1bBBGlVQYUadBUtrUvG4U/AJZkW0cI0YJO8ElGmZwsKea/FI+1I+WSSNV0fOgDa0CtGH6sPeWtKmRLwsHbsvpAk0fBl/NnB+uAZ4J7xWV6Ug3rFKNl6Lba1p0BtKIqLyzG3kvYcUnX9YrKzvMCMA0lnFqlrQikbeEVZN4EDsXt8fIErkY2SUx6IJL9MzbexPe3xBL3LjU+m24vmfnSTrbZRIg5IyXPPnNEhahU6y1grL9O8lSyQDLv4GJT3snvb4SPRrD1Ge3Rq5/ZxASkK9EGZVUms5oVT7N/HgdOd2P+MAcSo/Px2XwKUWtxw7o+wlflOeRJM+fCsJLLX0NMi4zWKWAgaK084o2M3KiTJnVuBNJCXIsCNjZRB+oPoJsGM6iiIb7jtQ7gIVUzUAt/ZhiKzS6zqY/0zCyIF478h/F90bRHzI3VGpS3QGPdhd+Q2BBh4ttpa3J9689oQ88S+CENsHrpTjKyVFDhBXS1qMfDL8jbTgx12W3I8
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_VI1PR04MB5696BCF57BEEB9E874F98443E0B00VI1PR04MB5696eurp_"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6710c82c-a222-46fa-0e6a-08d801aca680
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 19:40:31.0688
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fsO3evCHJRKinz5H3PCNzP/xitafOx9wPw6GKjogKeEX3T3imgXx5xFnhhiB/un3LsmDVjw1kG089NXEdUV0/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6927
X-Original-Sender: vladimir.oltean@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=UgGauLKy;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of
 vladimir.oltean@nxp.com designates 40.107.4.84 as permitted sender)
 smtp.mailfrom=vladimir.oltean@nxp.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=nxp.com
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

--_000_VI1PR04MB5696BCF57BEEB9E874F98443E0B00VI1PR04MB5696eurp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What's wrong with a function that has no previous prototype? What 'fix' wou=
ld be recommended?

________________________________
From: kbuild test robot <lkp@intel.com>
Sent: Tuesday, May 26, 2020 10:38 PM
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: kbuild-all@lists.01.org <kbuild-all@lists.01.org>; clang-built-linux@go=
oglegroups.com <clang-built-linux@googlegroups.com>
Subject: [EXT] [linux-next:master 6663/12912] drivers/net/dsa/sja1105/sja11=
05_static_config.c:463:8: warning: no previous prototype for function 'sja1=
105_vl_lookup_entry_packing'

Caution: EXT Email

Hi Vladimir,

FYI, the error/warning still remains.

tree:   https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flinux-next.git&=
amp;data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801=
ac6954%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457956492&amp;=
sdata=3DTIM2F4HXtmN2AXNm5xM5TjwaYNmdstN8orTe3V%2BwNOA%3D&amp;reserved=3D0 m=
aster
head:   b0523c7b1c9d0edcd6c0fe6d2cb558a9ad5c60a8
commit: 94f94d4acfb2a5e978f98d924be33c981e2f86c6 [6663/12912] net: dsa: sja=
1105: add static tables for virtual links
config: x86_64-randconfig-r006-20200526 (attached as .config)
compiler: clang version 11.0.0 (https://eur01.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;data=3D02%7C0=
1%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6954%7C686ea1d3=
bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;sdata=3Dy8IInLZxj=
z%2FF6cqTJIdeL0izRRnP2dnJP8yehJXzNmg%3D&amp;reserved=3D0 3393cc4cebf9969db9=
4dc424b7a2b6195589c33b)
reproduce (this is a W=3D1 build):
        wget https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.=
cross&amp;data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb102=
08d801ac6954%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63726118745796644=
5&amp;sdata=3DTw6wTZsqKIRtdGuIjiiHiKKlzWFIlWJhsGyb9XSvECU%3D&amp;reserved=
=3D0 -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 94f94d4acfb2a5e978f98d924be33c981e2f86c6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

drivers/net/dsa/sja1105/sja1105_static_config.c:105:8: warning: no previous=
 prototype for function 'sja1105pqrs_avb_params_entry_packing' [-Wmissing-p=
rototypes]
size_t sja1105pqrs_avb_params_entry_packing(void *buf, void *entry_ptr,
^
drivers/net/dsa/sja1105/sja1105_static_config.c:105:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
size_t sja1105pqrs_avb_params_entry_packing(void *buf, void *entry_ptr,
^
static
drivers/net/dsa/sja1105/sja1105_static_config.c:199:8: warning: no previous=
 prototype for function 'sja1105_l2_forwarding_entry_packing' [-Wmissing-pr=
ototypes]
size_t sja1105_l2_forwarding_entry_packing(void *buf, void *entry_ptr,
^
drivers/net/dsa/sja1105/sja1105_static_config.c:199:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
size_t sja1105_l2_forwarding_entry_packing(void *buf, void *entry_ptr,
^
static
drivers/net/dsa/sja1105/sja1105_static_config.c:254:8: warning: no previous=
 prototype for function 'sja1105et_l2_lookup_entry_packing' [-Wmissing-prot=
otypes]
size_t sja1105et_l2_lookup_entry_packing(void *buf, void *entry_ptr,
^
drivers/net/dsa/sja1105/sja1105_static_config.c:254:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
size_t sja1105et_l2_lookup_entry_packing(void *buf, void *entry_ptr,
^
static
drivers/net/dsa/sja1105/sja1105_static_config.c:268:8: warning: no previous=
 prototype for function 'sja1105pqrs_l2_lookup_entry_packing' [-Wmissing-pr=
ototypes]
size_t sja1105pqrs_l2_lookup_entry_packing(void *buf, void *entry_ptr,
^
drivers/net/dsa/sja1105/sja1105_static_config.c:268:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
size_t sja1105pqrs_l2_lookup_entry_packing(void *buf, void *entry_ptr,
^
static
drivers/net/dsa/sja1105/sja1105_static_config.c:344:8: warning: no previous=
 prototype for function 'sja1105pqrs_mac_config_entry_packing' [-Wmissing-p=
rototypes]
size_t sja1105pqrs_mac_config_entry_packing(void *buf, void *entry_ptr,
^
drivers/net/dsa/sja1105/sja1105_static_config.c:344:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
size_t sja1105pqrs_mac_config_entry_packing(void *buf, void *entry_ptr,
^
static
>> drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no previ=
ous prototype for function 'sja1105_vl_lookup_entry_packing' [-Wmissing-pro=
totypes]
size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr,
^
drivers/net/dsa/sja1105/sja1105_static_config.c:463:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr,
^
static
drivers/net/dsa/sja1105/sja1105_static_config.c:513:8: warning: no previous=
 prototype for function 'sja1105_vlan_lookup_entry_packing' [-Wmissing-prot=
otypes]
size_t sja1105_vlan_lookup_entry_packing(void *buf, void *entry_ptr,
^
drivers/net/dsa/sja1105/sja1105_static_config.c:513:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
size_t sja1105_vlan_lookup_entry_packing(void *buf, void *entry_ptr,
^
static
7 warnings generated.

vim +/sja1105_vl_lookup_entry_packing +463 drivers/net/dsa/sja1105/sja1105_=
static_config.c

   462
 > 463  size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr,
   464                                         enum packing_op op)
   465  {
   466          struct sja1105_vl_lookup_entry *entry =3D entry_ptr;
   467          const size_t size =3D SJA1105_SIZE_VL_LOOKUP_ENTRY;
   468
   469          if (entry->format =3D=3D SJA1105_VL_FORMAT_PSFP) {
   470                  /* Interpreting vllupformat as 0 */
   471                  sja1105_packing(buf, &entry->destports,
   472                                  95, 91, size, op);
   473                  sja1105_packing(buf, &entry->iscritical,
   474                                  90, 90, size, op);
   475                  sja1105_packing(buf, &entry->macaddr,
   476                                  89, 42, size, op);
   477                  sja1105_packing(buf, &entry->vlanid,
   478                                  41, 30, size, op);
   479                  sja1105_packing(buf, &entry->port,
   480                                  29, 27, size, op);
   481                  sja1105_packing(buf, &entry->vlanprior,
   482                                  26, 24, size, op);
   483          } else {
   484                  /* Interpreting vllupformat as 1 */
   485                  sja1105_packing(buf, &entry->egrmirr,
   486                                  95, 91, size, op);
   487                  sja1105_packing(buf, &entry->ingrmirr,
   488                                  90, 90, size, op);
   489                  sja1105_packing(buf, &entry->vlid,
   490                                  57, 42, size, op);
   491                  sja1105_packing(buf, &entry->port,
   492                                  29, 27, size, op);
   493          }
   494          return size;
   495  }
   496

---
0-DAY CI Kernel Test Service, Intel Corporation
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.0=
1.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=3D02%7C01%7C=
vladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6954%7C686ea1d3bc2b=
4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;sdata=3DJUxpDGnGAvzno=
iXrgdumiSSY8FHKcZV6q1LaZHN6HMY%3D&amp;reserved=3D0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/VI1PR04MB5696BCF57BEEB9E874F98443E0B00%40VI1PR04MB5696.eu=
rprd04.prod.outlook.com.

--_000_VI1PR04MB5696BCF57BEEB9E874F98443E0B00VI1PR04MB5696eurp_
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
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
What's wrong with a function that has no previous prototype? What 'fix' wou=
ld be recommended?<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:11pt; color=
:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> kbuild test robot &=
lt;lkp@intel.com&gt;<br>
<b>Sent:</b> Tuesday, May 26, 2020 10:38 PM<br>
<b>To:</b> Vladimir Oltean &lt;vladimir.oltean@nxp.com&gt;<br>
<b>Cc:</b> kbuild-all@lists.01.org &lt;kbuild-all@lists.01.org&gt;; clang-b=
uilt-linux@googlegroups.com &lt;clang-built-linux@googlegroups.com&gt;<br>
<b>Subject:</b> [EXT] [linux-next:master 6663/12912] drivers/net/dsa/sja110=
5/sja1105_static_config.c:463:8: warning: no previous prototype for functio=
n 'sja1105_vl_lookup_entry_packing'</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Caution: EXT Email<br>
<br>
Hi Vladimir,<br>
<br>
FYI, the error/warning still remains.<br>
<br>
tree:&nbsp;&nbsp; <a href=3D"https://eur01.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fn=
ext%2Flinux-next.git&amp;amp;data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C0=
8e6290ccbe844ccb10208d801ac6954%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%=
7C637261187457956492&amp;amp;sdata=3DTIM2F4HXtmN2AXNm5xM5TjwaYNmdstN8orTe3V=
%2BwNOA%3D&amp;amp;reserved=3D0">
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.ker=
nel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flinux-next.git&amp;amp;=
data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac69=
54%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457956492&amp;amp;=
sdata=3DTIM2F4HXtmN2AXNm5xM5TjwaYNmdstN8orTe3V%2BwNOA%3D&amp;amp;reserved=
=3D0</a>
 master<br>
head:&nbsp;&nbsp; b0523c7b1c9d0edcd6c0fe6d2cb558a9ad5c60a8<br>
commit: 94f94d4acfb2a5e978f98d924be33c981e2f86c6 [6663/12912] net: dsa: sja=
1105: add static tables for virtual links<br>
config: x86_64-randconfig-r006-20200526 (attached as .config)<br>
compiler: clang version 11.0.0 (<a href=3D""></a>https://eur01.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&=
amp;amp;data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208=
d801ac6954%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&=
amp;amp;sdata=3Dy8IInLZxjz%2FF6cqTJIdeL0izRRnP2dnJP8yehJXzNmg%3D&amp;amp;re=
served=3D0
 3393cc4cebf9969db94dc424b7a2b6195589c33b)<br>
reproduce (this is a W=3D1 build):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wget <a href=3D"https://eur01.sa=
felinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fraw.githubusercontent.c=
om%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.cross&amp;amp;data=3D02%7C01%=
7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6954%7C686ea1d3bc=
2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;amp;sdata=3DTw6wTZs=
qKIRtdGuIjiiHiKKlzWFIlWJhsGyb9XSvECU%3D&amp;amp;reserved=3D0">
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fraw.git=
hubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.cross&amp;amp=
;data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6=
954%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;amp=
;sdata=3DTw6wTZsqKIRtdGuIjiiHiKKlzWFIlWJhsGyb9XSvECU%3D&amp;amp;reserved=3D=
0</a>
 -O ~/bin/make.cross<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chmod &#43;x ~/bin/make.cross<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # install x86_64 cross compiling=
 tool for clang build<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # apt-get install binutils-x86-6=
4-linux-gnu<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git checkout 94f94d4acfb2a5e978f=
98d924be33c981e2f86c6<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # save the attached .config to l=
inux build tree<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COMPILER_INSTALL_PATH=3D$HOME/0d=
ay COMPILER=3Dclang make.cross ARCH=3Dx86_64<br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kbuild test robot &lt;lkp@intel.com&gt;<br>
<br>
All warnings (new ones prefixed by &gt;&gt;, old ones prefixed by &lt;&lt;)=
:<br>
<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:105:8: warning: no previous=
 prototype for function 'sja1105pqrs_avb_params_entry_packing' [-Wmissing-p=
rototypes]<br>
size_t sja1105pqrs_avb_params_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:105:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit<br>
size_t sja1105pqrs_avb_params_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
static<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:199:8: warning: no previous=
 prototype for function 'sja1105_l2_forwarding_entry_packing' [-Wmissing-pr=
ototypes]<br>
size_t sja1105_l2_forwarding_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:199:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit<br>
size_t sja1105_l2_forwarding_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
static<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:254:8: warning: no previous=
 prototype for function 'sja1105et_l2_lookup_entry_packing' [-Wmissing-prot=
otypes]<br>
size_t sja1105et_l2_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:254:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit<br>
size_t sja1105et_l2_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
static<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:268:8: warning: no previous=
 prototype for function 'sja1105pqrs_l2_lookup_entry_packing' [-Wmissing-pr=
ototypes]<br>
size_t sja1105pqrs_l2_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:268:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit<br>
size_t sja1105pqrs_l2_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
static<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:344:8: warning: no previous=
 prototype for function 'sja1105pqrs_mac_config_entry_packing' [-Wmissing-p=
rototypes]<br>
size_t sja1105pqrs_mac_config_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:344:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit<br>
size_t sja1105pqrs_mac_config_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
static<br>
&gt;&gt; drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no=
 previous prototype for function 'sja1105_vl_lookup_entry_packing' [-Wmissi=
ng-prototypes]<br>
size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:463:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit<br>
size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
static<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:513:8: warning: no previous=
 prototype for function 'sja1105_vlan_lookup_entry_packing' [-Wmissing-prot=
otypes]<br>
size_t sja1105_vlan_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
drivers/net/dsa/sja1105/sja1105_static_config.c:513:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit<br>
size_t sja1105_vlan_lookup_entry_packing(void *buf, void *entry_ptr,<br>
^<br>
static<br>
7 warnings generated.<br>
<br>
vim &#43;/sja1105_vl_lookup_entry_packing &#43;463 drivers/net/dsa/sja1105/=
sja1105_static_config.c<br>
<br>
&nbsp;&nbsp; 462<br>
&nbsp;&gt; 463&nbsp; size_t sja1105_vl_lookup_entry_packing(void *buf, void=
 *entry_ptr,<br>
&nbsp;&nbsp; 464&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum packing_op op)<br>
&nbsp;&nbsp; 465&nbsp; {<br>
&nbsp;&nbsp; 466&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stru=
ct sja1105_vl_lookup_entry *entry =3D entry_ptr;<br>
&nbsp;&nbsp; 467&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cons=
t size_t size =3D SJA1105_SIZE_VL_LOOKUP_ENTRY;<br>
&nbsp;&nbsp; 468<br>
&nbsp;&nbsp; 469&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (=
entry-&gt;format =3D=3D SJA1105_VL_FORMAT_PSFP) {<br>
&nbsp;&nbsp; 470&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Interpreting vllupformat as =
0 */<br>
&nbsp;&nbsp; 471&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;destports,<br>
&nbsp;&nbsp; 472&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 95, 91, si=
ze, op);<br>
&nbsp;&nbsp; 473&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;iscritical,<br>
&nbsp;&nbsp; 474&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 90, 90, si=
ze, op);<br>
&nbsp;&nbsp; 475&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;macaddr,<br>
&nbsp;&nbsp; 476&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 89, 42, si=
ze, op);<br>
&nbsp;&nbsp; 477&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;vlanid,<br>
&nbsp;&nbsp; 478&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 41, 30, si=
ze, op);<br>
&nbsp;&nbsp; 479&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;port,<br>
&nbsp;&nbsp; 480&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 29, 27, si=
ze, op);<br>
&nbsp;&nbsp; 481&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;vlanprior,<br>
&nbsp;&nbsp; 482&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 26, 24, si=
ze, op);<br>
&nbsp;&nbsp; 483&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } el=
se {<br>
&nbsp;&nbsp; 484&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Interpreting vllupformat as =
1 */<br>
&nbsp;&nbsp; 485&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;egrmirr,<br>
&nbsp;&nbsp; 486&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 95, 91, si=
ze, op);<br>
&nbsp;&nbsp; 487&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;ingrmirr,<br>
&nbsp;&nbsp; 488&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 90, 90, si=
ze, op);<br>
&nbsp;&nbsp; 489&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;vlid,<br>
&nbsp;&nbsp; 490&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 57, 42, si=
ze, op);<br>
&nbsp;&nbsp; 491&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sja1105_packing(buf, &amp;entry=
-&gt;port,<br>
&nbsp;&nbsp; 492&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 29, 27, si=
ze, op);<br>
&nbsp;&nbsp; 493&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br=
>
&nbsp;&nbsp; 494&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retu=
rn size;<br>
&nbsp;&nbsp; 495&nbsp; }<br>
&nbsp;&nbsp; 496<br>
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;amp;da=
ta=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6954=
%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;amp;sd=
ata=3DJUxpDGnGAvznoiXrgdumiSSY8FHKcZV6q1LaZHN6HMY%3D&amp;amp;reserved=3D0">=
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.0=
1.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;amp;data=3D02%7C0=
1%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6954%7C686ea1d3=
bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;amp;sdata=3DJUxpD=
GnGAvznoiXrgdumiSSY8FHKcZV6q1LaZHN6HMY%3D&amp;amp;reserved=3D0</a><br>
</div>
</span></font></div>
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
om/d/msgid/clang-built-linux/VI1PR04MB5696BCF57BEEB9E874F98443E0B00%40VI1PR=
04MB5696.eurprd04.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/VI1PR04MB5696BCF57BEEB9=
E874F98443E0B00%40VI1PR04MB5696.eurprd04.prod.outlook.com</a>.<br />

--_000_VI1PR04MB5696BCF57BEEB9E874F98443E0B00VI1PR04MB5696eurp_--
