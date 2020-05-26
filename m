Return-Path: <clang-built-linux+bncBAABBHE5W33AKGQEVLYF2SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB4C1E3176
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 23:48:12 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id j14sf2092909ejx.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:48:12 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1590529692; cv=pass;
        d=google.com; s=arc-20160816;
        b=YppPW1ISC5qUzL+x/TveIGffoYqJQz3FvIZ2dHjGSNM9W9x4lBHksf2v+jcmR6IaHJ
         unN/njO+sY89nHTRn0CoTId6yuta2kV5sOf5U07mnda8+Sd4kva1jCM2GdghdmB8oKEt
         qfJSeHv211lUQEwxBetQ/y0AeRk4TUs69m79YwtajImqL4ghjUi93Xw28h2JIcANWq8N
         kT53IRV39A0EXV0x0b6dPgvX5sXmPdqBnKgytbSjDl2UYYIIIQezsh/tMXodlM8VvtL1
         Tb6JlbA5zitnUJbn0Yv4ygmgK4v1UfZYvFnkLvDycigwxTnHuzBTfv/XsBOD7t8z4CkV
         gCFA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=grh1NEyvAq7TSzMQ7kKqusyvhyvrI1L/B5GB8EgQPp4=;
        b=Rm+Bm+IzJMErB/Ih6X2TV5iGzrAwvE7DA6aWy9QpkO31OEh1gt4gCyAQzn3wKhtUTQ
         JtQG0ROcG9KTojntYeOX1f/Gsm2XH4fr+c8OKj/s8P7rZ673+z9nYkOSyD/Lu9vUl1Xz
         1rny1A3sYl29IsKCMK1GyChCWy04W/dAX+rs0RJ6omfpVgW80cTcCm5DzIiGdf+HHoF+
         QjcIuduo7UHw5UKWpcyxXV8pWEvp+Gh3nmAPdtUsxFUfDxu1XhGIJTsDtdCAiUV7XQbq
         uosdvliNsEYzD5nIO/OI7JMYwGSJZXL4Mqe+jOoR7mRLHZdSaTXPClswEv2Hi591v7fU
         Da+w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=lKibu+Jm;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.21.84 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grh1NEyvAq7TSzMQ7kKqusyvhyvrI1L/B5GB8EgQPp4=;
        b=JmaSH66zLamtEu4KgLI643Jo+4nMLbPUUu9NVdeKpuzEVYUFI4rDzU4PuEaodNRbF0
         Lxf4UQB6MqHiZ8yERVrJXFuiE4J1xOIh1w5Lyc3sRwfe2JnaBkLeQXtyTlOXlIdYRsp2
         7EYOdu28WUQ5DUUWV11P7WBQoa9/6cPCxUfizmGRuaY8uKZRaFi35pYwG2Cf0ypvX+c9
         x2hwml7rqtiZOBKmmQxi8SQRFErJCAqHdEwkUtKE0yZMKPkFrSYjmq8QoqOyKuIgi9VW
         Csr36Ip8C4jLxqFDmQ0IrCb7bjBKlqpDzafx8oR+kgOTUDNaQlQDeAo0PaL/brh5rbUt
         Q+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grh1NEyvAq7TSzMQ7kKqusyvhyvrI1L/B5GB8EgQPp4=;
        b=kDam/QBTd/25wY94HRqMDbgqIA6e+Dj6j6Ftlbp8EqfOkqQfQUzIYarhIiuSNSQgKM
         v/TFwAoheorRkw7bjMv0CwVNQldF1ytQBkkghl0KRX5LF9UNOwJuVumzk7FbfCjHgMCK
         XU6ZR1oJmQxrPo4Qql5+ERAycLpJcChx3WwNKlITyJN9T33ZhgfsrBE5MahFhwhAgszs
         C8WyPhwZHws5AmmWVxKcx43PkSRdPY7McIXVJG6YEck5/3gR5q+99HtLx+8aNQCmcsQZ
         dOKRFBDOrUFWZuh9/qBbCiLhN8GvVjp4lu1cfPINyRzWhe6wvUhbJT6pzNh6gxi9ZSVM
         Hklw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MHsAIRueeL3agegz51Rob2do0DIciCEx2EqEBmp9+S7nqTkjo
	f4JFoAKqcIyLKhwVtFwENhI=
X-Google-Smtp-Source: ABdhPJyrxe+HWToiAk33HOdwoyDjp10xN9byDtpZRh70XaLlz3tNDFndLq6+6Je0UUA5k72H7zFfEA==
X-Received: by 2002:a17:906:7684:: with SMTP id o4mr3059323ejm.449.1590529692661;
        Tue, 26 May 2020 14:48:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d2d2:: with SMTP id k18ls13462514edr.3.gmail; Tue, 26
 May 2020 14:48:12 -0700 (PDT)
X-Received: by 2002:aa7:cc0e:: with SMTP id q14mr22917105edt.64.1590529692288;
        Tue, 26 May 2020 14:48:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590529692; cv=pass;
        d=google.com; s=arc-20160816;
        b=gABNJPPTLODOVxipVdZIlkRbwIUJyDwLcIl62gHTU1wg6r8kEMKb7teMHI6PDQjCDC
         bTIETXl28IBRkLw87KtKAaYUxqJYJwgRsjfM1yEgnuwWDRsBCbh5QJWihQrT+c+K5dN4
         p0hRiWPauGiwwOINKsb2ooYW8EQLStak0uUtCnL1R59NEpY0gOadka3A2Qk+ehf7w3mi
         8ZyhWtNnsXhRdnmbWMvK80p5YcQnjef5/OMcZVbqSOWZWddMzGMN/ORLIc/gUZX492Hq
         yLYNSYB/r6YbNsoIOyxxsFF3bo6b5KQBRFm8WeFzih7XhPlb7T20LfbBLZXxCaUYUFk0
         foxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=e4w8MAPKDfS3DAxsebqmqE3U+61cVYfDMbj6sK5z47U=;
        b=z0lKY6xGJBtaegha4YiizDn/670ykIO4bdlrNMR+OXBYIwoUo7kesHbQeBKC+99ZIv
         vJPcsnjCgEIHx4ESLapiBiLPhH4kjxIEi00T3/9KbmEH3HiZzhnjiL3olZiKcR/XSLCL
         OUFa95o49SNH0UY2165z8MBG+9nkKe35EtqO8ygj6BCIB/euT3Q0zsksdqu+rGVLtIGR
         FoLWaAYx5F+fGKDs/95BGVLaliZk5JVBTNDhiEccPo9DZyN6W4TZpm2BuzQIc48fe73f
         2fdeQoIwrCSwV3b23hDb5Y8ySfxWfr7/MOvovpnFw4gVlz1HqVnE4sHIAvrGH/TgSj5s
         dJ1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=lKibu+Jm;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.21.84 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2084.outbound.protection.outlook.com. [40.107.21.84])
        by gmr-mx.google.com with ESMTPS id bu18si33280edb.2.2020.05.26.14.48.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 14:48:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.21.84 as permitted sender) client-ip=40.107.21.84;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CgJa/BJlB2gjG8htBaO6ZR9QC4u/r/KeZQtMosWrBD2vtqv9SG48iy9Gu2VWPGApUMoB8J/gvFCCJov8CMlROoEHNP+/bc5tV7Mb2WVocYXDHOqot9CeKXZLaAFgnx7lxSCPjxobYUCEKfv4N2Bb3MatQNzkqhP+LeJVH/PMVqN9Z+vlHUNoaNpUb+HnhH+QY7SYh9+OmAN59tfHmAP3LJgsdXWr/vFnW/qqHPQUScc5KZOu6ZUg3MgVOL27CE6gJNwdMAHCReClQ4Qze6as8KXVc3XOP17QAIVFi765r2U7ASppFk3N1rmpBdBsWCl9IYkagSEGLl5pHkOlk4/3pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e4w8MAPKDfS3DAxsebqmqE3U+61cVYfDMbj6sK5z47U=;
 b=XzygXtQtKpdsd0s7De/wqkfU8HpMHOob98Icnoy73qj7wi+5diz0+AAVNgKv+F+QB6g+DKOd1xmI7p989+5RhFr0KYjvE+89jMcWRt5wjDu0ZhFPlNd83p/0q1uMDpcQuQoUhGmcNH9stYZEo6dMfos0e1bY3JnD4zPulek4/O9gfwO6H8j3qtGx1rGVbGHDXM18oPlS95HFNhlns9OZHgiXeFz/2YuzC322GrEcY2++AAePZCRck2AWejCgSf3q5N1At0yMtl0boRY+OFN/xfGYf+uI0ITpAhoAfYaShOF9+rqlqDx7C2wVbx1eNQZuTxR9cwCVULqt80C3pyXjFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com (2603:10a6:803:e7::13)
 by VI1PR04MB3167.eurprd04.prod.outlook.com (2603:10a6:802:8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Tue, 26 May
 2020 21:48:11 +0000
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::1df:4c77:2e50:22d4]) by VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::1df:4c77:2e50:22d4%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 21:48:11 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: kbuild test robot <lkp@intel.com>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [EXT] [linux-next:master 6663/12912]
 drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no previous
 prototype for function 'sja1105_vl_lookup_entry_packing'
Thread-Topic: [EXT] [linux-next:master 6663/12912]
 drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no previous
 prototype for function 'sja1105_vl_lookup_entry_packing'
Thread-Index: AQHWM5VRlELqGoI0O069kVZNBYAKBQ==
Date: Tue, 26 May 2020 21:48:11 +0000
Message-ID: <VI1PR04MB5696923A89D612E7EB299DA7E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
References: <202005270324.fspPrqPY%lkp@intel.com>
 <VI1PR04MB5696BCF57BEEB9E874F98443E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
 <CAKwvOd=9w8fMazrrjrttHSXgFBHA0vp5tN6qA+dX=D5rqCRN4A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.25.147.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b9f873ae-0fef-4525-aa56-08d801be7c3b
x-ms-traffictypediagnostic: VI1PR04MB3167:
x-microsoft-antispam-prvs: <VI1PR04MB3167816C83B0772C7F646C27E0B00@VI1PR04MB3167.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R6Olkru8bcQwfCXnPdH7+EcKJLQrkSF64I+m34n/DvLOIdrcVYXr4adYLaiNS4vhAfhhhighrghpERgU7FGhg3NLKNaYEFhXOn5Eq52Pxfpia+DNdu/zxZ6w3Abpr5LjivveZmV77O6N07E2QRBcv6uYClZh1pcfk10xGYS5FHZPMqNd5SqWoAbM7SgTy2rcs0wthcDv7QPLTh8xVmIjDgVZWwKbxrzYUivpCEMHKCAmQYDJQBVrQ09VT/I3Ps8v87iy5Pfkj1XWa25D8eK7G2x0PKG2teyDPIEqL/5DNBFAzjB+aRZrIr+9Plda+GDK
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5696.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(346002)(136003)(376002)(39850400004)(396003)(55016002)(26005)(53546011)(9686003)(8676002)(478600001)(186003)(6916009)(86362001)(2906002)(4744005)(5660300002)(71200400001)(6506007)(66476007)(54906003)(76116006)(66556008)(44832011)(66446008)(64756008)(66946007)(33656002)(316002)(4326008)(7696005)(52536014)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: r8TGMV6Vkxy7vxkUQh7ZHFLqtf4WbxhnVdECQ0F5zMQT56Z9h7eGadNyUYf4voRS0Vt2jBJRoWAFGBITfg7xv6xxfWYg25CmYPVKyzMTN3K/EcqP6Z6Ddc5QSg9r4j+cmGVJWE4k7tsxgwOBJMNDb3tv1V15aTS/60OgU1+IxPh9d/9Z9K851Buz/0eCu0JN7QrCfMa9ZPRBZ6pX/J/eovUuCF0bTrwD7bY500eYcI6o1lZAJ7q34vSs7fJhmikW3tmKU2beUYSj7vLaAvA6hLiFKbKGHoF4/ib4gMgyHCk5L4sz+vaewXW+uAGGc8OuVmUvyqeNwSvufYtGqxZrcFqwCXcpNaeijQNiHGaiJOWmIv1+mgjZDWRCVCwtVm6fihyVYRmlw7CF2QdcTil1tGDnnIA8MKNW61mRObSRYycibhbnTjHq8YqnUmiKKXJ7DHoCIeKC867SQCPS25lKSPSw0Orma5wmmkgL3R4wDRmIHrFwZDaGsP/pe9hzAC3b
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9f873ae-0fef-4525-aa56-08d801be7c3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 21:48:11.1584
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qEvjOv8AeR0YV4sE/UBHu00soXKV0y/nLpBDcCwL6RqdTqzlo+F66lrLPSVUuINw+cGmk8YtYDNisMjj/YngHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3167
X-Original-Sender: vladimir.oltean@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=lKibu+Jm;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of
 vladimir.oltean@nxp.com designates 40.107.21.84 as permitted sender)
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

Hi Nick,

On 5/27/20 12:07 AM, Nick Desaulniers wrote:
> Caution: EXT Email
> 
> On Tue, May 26, 2020 at 12:40 PM Vladimir Oltean
> <vladimir.oltean@nxp.com> wrote:
>>
>> What's wrong with a function that has no previous prototype?
> 
> It's possible that functions definitions don't match their
> declarations, which would be an ABI mismatch.
> 
>> What 'fix' would be recommended?
> 
> Including the correct header that declares the function.
> 

Thanks for the reply. I have no intention whatsoever in making any 
changes to the code structure. There's a big difference between the 
possibility of being an ABI mismatch and actually being one.

> 
> --
> Thanks,
> ~Nick Desaulniers
> 

Regards,
-Vladimir

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/VI1PR04MB5696923A89D612E7EB299DA7E0B00%40VI1PR04MB5696.eurprd04.prod.outlook.com.
