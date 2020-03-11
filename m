Return-Path: <clang-built-linux+bncBAABBDEKULZQKGQE7RC44DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9641810A9
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 07:28:29 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id t20sf193294ljk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 23:28:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583908108; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKfrb/x0IHeW7R4HmZJE59BCREwZqJVanBtUkdK5UEWWgCAgJaMLepF6naThK7w0sF
         8m/k+iAOHIiZO9+L533NQqw3J96ym38Lbd1CbW9mHz4cGZ+G8RQJLzDFzX3gmrjlIfrP
         bkohIPf7KeMVy8OypXo0fEhXSbWuf8y83AiF/if7+Vd049Zr9vIPH6EW5Oqmq7XKYUrM
         CRQgWEjWziXnmWOz2K1Ag5ebEOKtH8yzvnQC4ZV7VgPf53nMU9oxzNUdVMj9unU5g/Ei
         N2pnTGKnf3GHIglH08GUi6odeHo3lQizHt3zk55kZva7OOciaIZ4GsBWd3frxzGksvgt
         NvmA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=xwXXXVcwFipRAOycIlBODQ5BVBNzICgmITzBRsMrL0o=;
        b=RbkoBBMXMNvRRYO5fm6AlcVEMX/JZ5sPPo1WEwfLAAAzFGxcSF/ihIkN68yqMnh4ob
         Lb1TKCJp0ZvEzvjeJjw/g7gAdgGRRW6dDe2Bl7bnVS/wYANyJLp1YGzs//EzTkfS552D
         wT8xjSX9tc2DosiatYIcsHvfekJg9JRJh9xddq/VzFX8eS9I62rqs2VYXb0zLbiyo9uh
         ryWHA8y1TCAw/WxeMVlq+kcHgQ2PD2FysDlY1Ovb8Ze33U08vnY3lJ0W1KpeLUjJ/KcA
         oYkcizMRGbmV681/4sv/+0Yl2iBDFugk7XXuWRXV4/ISAB9TjsMUPs5fryDbCoQLg1U5
         pouA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@NXP1.onmicrosoft.com header.s=selector2-NXP1-onmicrosoft-com header.b="SPbH7Gm/";
       arc=pass (i=1 spf=pass spfdomain=oss.nxp.com dkim=pass dkdomain=oss.nxp.com dmarc=pass fromdomain=oss.nxp.com);
       spf=pass (google.com: domain of madalin.bucur@oss.nxp.com designates 40.107.20.88 as permitted sender) smtp.mailfrom=madalin.bucur@oss.nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xwXXXVcwFipRAOycIlBODQ5BVBNzICgmITzBRsMrL0o=;
        b=bYap8GKRO4naxMh5LzIZB8ToZw17XWoIRfNH2kKAkweAMpzZa0iCQElwgK1WPFSPqL
         qFPpABFC1S0/N0SVinTKOgv3A8fxVi89JFzfjgmPdoLN9CsK8JE3POlNXSJXPDSvSVqB
         bubsMD2/hGTMHsNO1PUUK335M5Qt6nNxZnGqa/6YpjFvWEknMpcWQng2neO8UiU6WMU6
         t0envgGGTt2U6aa4qMTP6FecJYcNOx+Vxy2fod8MKdKqfSliCjpZT0r5a/R/vOnvCQxX
         T/U59O/+MiOx9KPbGUeZhClT/AKqqOiOP8wcYJw0bVN28DCT/pUJIMXJ06WzWOvw7Kfm
         lZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xwXXXVcwFipRAOycIlBODQ5BVBNzICgmITzBRsMrL0o=;
        b=pvBF7t2Qer/eQHm1T4LkkrsIe92+WgmgfmnPPBSB7r/vkPChVTzV87G6BmUx/fLMqS
         4LRwCEBVet6DwUOGIDB82quF/TkjBivhKS80GKCCBIWlQImQBSIE7MApeyYDmHVxr96p
         +cACa7Ozu0OsChpnzvslzISkymhVoqrMcFwCcEAfaR0nBlSLC24ElQA45j0WZJD/osO9
         1tJxoRz2rcVFe0OfxLsKpB4WBwaZJe2dXNCajeLQNBsRFNPElK4GR3fZ8/eJ7M02u9V0
         20qe736x+ytymb4Ujua4TYEPtawXGSiBiA93uPyBTiUZfLGF1XEAmgFM/XA1OoUpvFeM
         Ue1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ09qB/+9VeTGQpPFG0aOarZT+mge2g9J3LtqElL+1EpvAjZFBdD
	4bzajKLS3nTqFQXwngmsetM=
X-Google-Smtp-Source: ADFU+vsK87JMr4B2bWbiaOc23rmYOa4MuIswOwh71m4JNjXIx5sTh2yHNfTBLlpfNNxHej91596B8g==
X-Received: by 2002:a2e:9cc1:: with SMTP id g1mr1170838ljj.152.1583908108716;
        Tue, 10 Mar 2020 23:28:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls148998ljn.9.gmail; Tue, 10 Mar
 2020 23:28:28 -0700 (PDT)
X-Received: by 2002:a2e:b5a2:: with SMTP id f2mr1176217ljn.212.1583908108164;
        Tue, 10 Mar 2020 23:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583908108; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2MvNFo1pk/FvQt2cST1l7eh9CnAseJ7vcVskIAvBxybOp3BWovJafGcAlpdUS2cy6
         r96+f8KnIncMAuALZgb2PYVob4DIT8OM2d9AA8ZGnbRXva7PE9UUQNQIHA6c3Vwq4VnB
         0GvEXeOleigfRxwX4VYSacHBnJhTpA9D/CP+qPgwthsUtSvE2Fl91lWTA8jOoQ4+D+Oe
         4wSWK+Ra/jGM7e3l4Lp1HMxih81XA0vh31qRufNGb2YPerOnZvIWg90Irf7Aif8yQ/ig
         ADx1E3OL52AfEU8wSqFmRKHSR5ZpxoJO8zn1uqOIVcgr8VBy3YC6piVn8Pt5+tA7PAwh
         LH+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=WrrzdlgW89qyudRrOhcZh+b5nFbUAFMIH/q6G+jBBpE=;
        b=xMVy7gvklslhFjIUHXwTR5gHzE8aKZjlJRU9uLXSabA9A0b4f8ri7+nMN7NQIz7Ogx
         9klsYkRI5wWvdiq1cBzA/Utsr2pkY5iE80T1BWfl8JR3vG1Ymbpu1bkIV1zdUj3RDZA0
         awhNPCvTJ5AzCmoQ5b6kjau6nz/bFQuo9AoaI4tY4JyB69jyh6et52/soREwD/z7fbs8
         Jg64MCebBUzv8YrkuuVSaTHWOjYHOc3zTMF+pYqzJraXt38kHRnY6tk0rQgO49vLeU/S
         PVZghY3WXlBbaN14nbbKX5hinGZPLrq71yx5oB01hHibCopRICBXH8/dc7BZUXttNgsq
         4ddA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@NXP1.onmicrosoft.com header.s=selector2-NXP1-onmicrosoft-com header.b="SPbH7Gm/";
       arc=pass (i=1 spf=pass spfdomain=oss.nxp.com dkim=pass dkdomain=oss.nxp.com dmarc=pass fromdomain=oss.nxp.com);
       spf=pass (google.com: domain of madalin.bucur@oss.nxp.com designates 40.107.20.88 as permitted sender) smtp.mailfrom=madalin.bucur@oss.nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2088.outbound.protection.outlook.com. [40.107.20.88])
        by gmr-mx.google.com with ESMTPS id s8si58576ljg.0.2020.03.10.23.28.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 23:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of madalin.bucur@oss.nxp.com designates 40.107.20.88 as permitted sender) client-ip=40.107.20.88;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oDcqTUDYKfIDciT+Qf1y262+pGzOuS9BgbTDcaLRHkBydq6c4bS8V8AVEaWRuTl41nR7qX4LAk+z31VWaytkxOZhIDQv92xAOEtXvRHiLb+eifMhRxGKda3LsOzZJMscPUYZeYgjOrPeGIB4mH0mx76KdW41b75RpszX5+AmMrbhrYVc5tFpoyQFVA9eK/i4K3B1bZiqLAwFUO1HuwJefUWLei9tjot1z/wguMwZGAHsp913neek49kWZEX0EY/YPa97PPBPR6uta2Hb4KFBgX1vsGPPql36mDVkwCH0xpTsNgJdV5tPIfOozFmRXNu7Y13CHrKLOKmBEWzP3Jpffw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrrzdlgW89qyudRrOhcZh+b5nFbUAFMIH/q6G+jBBpE=;
 b=YBgRlNR0tjdrhY1M5yxU11An2dllpSfiHPRcV3MgKR3Hhy4IlzvW914FjpsAhtjqbA8lba9EXyL+rThZTOA5lzgzaxo5YTMe8kiTY7NAPuWnPP1l6YnOVKtAivqXrHBDPDsnMm9URrgHzsH9AbVKK1d9NNYjHZwMrSpN02rHxGDETON+mNr2HQz9joGHGrItVn3MnPWeV7clAsP1z48WCG5VL0JgUNgJHJbpWgRpRQGAK9eHpIqJO2XbnScGrfcLA14tMynnUEBEUvX/hVnBnrWMd7XSR7ndK7rXCduuyK53tc53hEfruLLCfCclF1sU6fqmLD0mA62m8EpW3dP/HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com (52.133.243.85) by
 DB8PR04MB6971.eurprd04.prod.outlook.com (52.133.240.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Wed, 11 Mar 2020 06:28:26 +0000
Received: from DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::a523:58cc:b584:2c2]) by DB8PR04MB6985.eurprd04.prod.outlook.com
 ([fe80::a523:58cc:b584:2c2%6]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 06:28:26 +0000
From: "Madalin Bucur (OSS)" <madalin.bucur@oss.nxp.com>
To: Nathan Chancellor <natechancellor@gmail.com>, "David S. Miller"
	<davem@davemloft.net>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] dpaa_eth: Remove unnecessary boolean expression in
 dpaa_get_headroom
Thread-Topic: [PATCH] dpaa_eth: Remove unnecessary boolean expression in
 dpaa_get_headroom
Thread-Index: AQHV9yg9B58WfTtTEUGZdgGF+/fe+6hC7dsQ
Date: Wed, 11 Mar 2020 06:28:26 +0000
Message-ID: <DB8PR04MB6985A192818CEB0F0D274677ECFC0@DB8PR04MB6985.eurprd04.prod.outlook.com>
References: <20200310220654.1987-1-natechancellor@gmail.com>
In-Reply-To: <20200310220654.1987-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.126.9.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 15530de9-c1c0-4bfb-13c3-08d7c585681b
x-ms-traffictypediagnostic: DB8PR04MB6971:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-microsoft-antispam-prvs: <DB8PR04MB69711396ADFD226F8416BAF2ADFC0@DB8PR04MB6971.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:155;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(136003)(366004)(346002)(376002)(39860400002)(199004)(110136005)(8936002)(316002)(54906003)(6506007)(5660300002)(64756008)(66446008)(66476007)(66556008)(53546011)(76116006)(66946007)(9686003)(55016002)(33656002)(4326008)(2906002)(7696005)(45080400002)(478600001)(71200400001)(52536014)(86362001)(186003)(8676002)(26005)(81166006)(81156014)(966005);DIR:OUT;SFP:1101;SCL:1;SRVR:DB8PR04MB6971;H:DB8PR04MB6985.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:0;
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R1uL8wTxG9AIF/q1QYTzEK877BnShzw65z5kog/6yRXdcM5i1fR23NQoUGHUqnp96SSlD6pysxfYofs1RZEZfZsTuJTnWT8GCWFYIQJSdXnu+GbuwMoj2jMmv3y0sLmA/XQdiNpxlIZyk5cAVdi6vJ06Z6Bwvq93E3j2FBaSFn1tpTl2mOo6JwZ/AkhFK3R6jlIa3I+X38JeR8pzB55gCWT5tNzFw/d7aLs57D9TRaf3dUIVIHf/HlMgSBrXLFCd4nNY6PRI/tLTy0J+BWmLFw9KU8xagYqEL8kHNqdSRhruJNebI1td+Z1qH1j9Jdb9sTdjYDOJclLeDaTWJzrjJtj1Mg0Qi+0NE4G4EIYo29yr4uTlmwylYhI77eSvlcI/ZaTKpokdgcbknfJ5Xp1w19A3gCvzMtWPrGw0pBgOwMZf7NF9RVfclpsPDOHzuFh5JFx7DDdWMmYtQMvd/BF7n3hjic3VRuHg0DUkcsKJEUgZFqdFxNq2if4WZBm4sVwwR45rPm279We/PTFtDmxGWA==
x-ms-exchange-antispam-messagedata: OQD3wOUzvHs+oZCJyi/KbYbiOQU/3Vey7a10YawTrz4nQEksfYsdt21CWf/VbrCXlfAfRIXzRr5BdDWbnTl4JOd1t7wTF8hrAH4c12vbOz8X4XrYbYL0SUgf+YA2Nel+ZkcRXVX2I1cseJJxbZJfaQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15530de9-c1c0-4bfb-13c3-08d7c585681b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 06:28:26.3006
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ReTbHtuZQi6IjDLqzN30561s5v8rZKTigIwIzqlt0z057ba0+pxWIfTkRWGNw17kZvGS4LBJzRPd2UriWCg2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6971
X-Original-Sender: madalin.bucur@oss.nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@NXP1.onmicrosoft.com header.s=selector2-NXP1-onmicrosoft-com
 header.b="SPbH7Gm/";       arc=pass (i=1 spf=pass spfdomain=oss.nxp.com
 dkim=pass dkdomain=oss.nxp.com dmarc=pass fromdomain=oss.nxp.com);
       spf=pass (google.com: domain of madalin.bucur@oss.nxp.com designates
 40.107.20.88 as permitted sender) smtp.mailfrom=madalin.bucur@oss.nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
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
> From: Nathan Chancellor <natechancellor@gmail.com>
> Sent: Wednesday, March 11, 2020 12:07 AM
> To: David S. Miller <davem@davemloft.net>; Madalin Bucur
> <madalin.bucur@nxp.com>
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; clang-built-
> linux@googlegroups.com; Nathan Chancellor <natechancellor@gmail.com>
> Subject: [PATCH] dpaa_eth: Remove unnecessary boolean expression in
> dpaa_get_headroom
> 
> Clang warns:
> 
> drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:2860:9: warning:
> converting the result of '?:' with integer constants to a boolean always
> evaluates to 'true' [-Wtautological-constant-compare]
>         return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
>                ^
> drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:131:34: note: expanded
> from macro 'DPAA_FD_DATA_ALIGNMENT'
> \#define DPAA_FD_DATA_ALIGNMENT  (fman_has_errata_a050385() ? 64 : 16)
>                                  ^
> 1 warning generated.
> 
> This was exposed by commit 3c68b8fffb48 ("dpaa_eth: FMan erratum A050385
> workaround") even though it appears to have been an issue since the
> introductory commit 9ad1a3749333 ("dpaa_eth: add support for DPAA
> Ethernet") since DPAA_FD_DATA_ALIGNMENT has never been able to be zero.
> 
> Just replace the whole boolean expression with the true branch, as it is
> always been true.
> 
> Link:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.c
> om%2FClangBuiltLinux%2Flinux%2Fissues%2F928&amp;data=02%7C01%7Cmadalin.buc
> ur%40nxp.com%7C53f37e7dbf584248844608d7c53f5f70%7C686ea1d3bc2b4c6fa92cd99c
> 5c301635%7C0%7C0%7C637194748277007260&amp;sdata=GshtiHYyjvTcp87StdMoQDP5L6
> %2BhYN6nnUi6vbyuqic%3D&amp;reserved=0
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> index 190e4478128a..46039d80bb43 100644
> --- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> +++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> @@ -2857,9 +2857,7 @@ static inline u16 dpaa_get_headroom(struct
> dpaa_buffer_layout *bl)
>  	headroom = (u16)(bl->priv_data_size + DPAA_PARSE_RESULTS_SIZE +
>  		DPAA_TIME_STAMP_SIZE + DPAA_HASH_RESULTS_SIZE);
> 
> -	return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
> -					      DPAA_FD_DATA_ALIGNMENT) :
> -					headroom;
> +	return ALIGN(headroom, DPAA_FD_DATA_ALIGNMENT);
>  }
> 
>  static int dpaa_eth_probe(struct platform_device *pdev)
> --	
> 2.26.0.rc1

Reviewed-by: Madalin Bucur <madalin.bucur@oss.nxp.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DB8PR04MB6985A192818CEB0F0D274677ECFC0%40DB8PR04MB6985.eurprd04.prod.outlook.com.
