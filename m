Return-Path: <clang-built-linux+bncBAABBYEKZCQQMGQE3DBUDDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 203316DBE38
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 Apr 2023 02:22:58 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id q11-20020a19f20b000000b004ec86f8b0b0sf24931lfh.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Apr 2023 17:22:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1680999777; cv=pass;
        d=google.com; s=arc-20160816;
        b=oxv/lv9lGPIPY0OqJnSXnznyYNPa566V6Wf/Mz/2GjnHcddEAjV35wgWqz+emnBBgZ
         IZgV833aefL3d2fy8jq6N/mDXEHSxFuXeK7p/oY3+cnLogQLkLWZWYK0o2PYNc40EvFR
         A9qNI/NDs3h4uANnv9O1QDnnJb7lqKWUHrwhm8COBASPH/XBfwdOjpT352ZtG6yUg4xC
         uDXaNWCFp+Yg7smpsDs62SdVKUaBr1vaNGGQfdve2pm2f++mFUzYWid4Px3XnT03CeKR
         4YXrcvIt6DqxdZNzhXSCqfA/fXEmjev7eGgBwGddJUFDTO2iWU62G8+EAvmj5D2MaN7T
         XLkg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:sender:dkim-signature;
        bh=/7avCj0fq69tnHg5dkfQzIRH6NIl7vAB36ID6TS9kUY=;
        b=cRFL+0svoEGtDNgUgqknCE+QAmK/J750R1eQr7gNKdMYXkZWUYfizX5CV6e1DbWGgb
         LdrrWbbs/OFydLnaBROsU6d4IlanKdq8QTIhgNRe8deKzfDiuSBWR4Wjm9GTpXG00o8M
         1yb4w2Hi6DK4h2wvMUbIo/W0vMloA1SsT1Y4G06znEJ8GKofiDupzcpxdZSZTPF0oX3A
         I+YQZlpWKhYyBMG4EwKDQYdBSdH1PzFeGNLhalgg2OKEB8Pu15Xr85RfBjOxVh3IBlT5
         zvcOLngPTuETfhcM8LL40qJohGNEdFYl1HeYWQAykfDy1W5lx4BXNvsFLrUPvc5Yp5Ru
         U0oQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=mgwDa4Fk;
       arc=pass (i=1);
       spf=pass (google.com: domain of josephqfim702@outlook.com designates 2a01:111:f400:feab::806 as permitted sender) smtp.mailfrom=josephqfim702@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1680999777; x=1683591777;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/7avCj0fq69tnHg5dkfQzIRH6NIl7vAB36ID6TS9kUY=;
        b=T9TwobLHIZwAZtDjF0dO5Cq/hNW3mU5mZ//g608KQO74AI3rN9KT7nCPgZXVB629Cr
         J67yYrpPo0YvXN5HiI3Lpqo28nN+jCnDQVNPVcsjEbkM+LwMOedsWgwMjgEl1py2mEYL
         QmcfV2WUXsv0SezTSS45603/CUWucjU+do5sx9bX1xRmz0Vj8i2IMkd5THWE6/Jvv33C
         qRUWk0ZTh2PMMYX6jBEvo4hJ7V6W5rTjrToBWldJqImn97YUxCP8+cNFkWpS1sN5RgH8
         kfYZFOzcLcyrNx8l3OgKX/8Cp2SL+fSYBmXCbQEick03S8bFwoO+PqLdThen72jjONk3
         iZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680999777; x=1683591777;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:to:from:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/7avCj0fq69tnHg5dkfQzIRH6NIl7vAB36ID6TS9kUY=;
        b=I5XFIqP4PuNcmeG+2qwDVQTPZcKEWFx0UPVyBf61wGesTrNigerI2OqwmwNDBdxLRO
         4qPNU5/Zf6fbrUP4SM26tO2BOwzO3fN6/V+qIHtzvfHnoS8jU0ZQWEYNDrA76rL+KfsK
         TN/X41nJCU3MajG2RPxMlZl/RePVkkaZgz/wNe2e26dDkdNRde8960pLQJMURNjcTVkb
         YapyZD2V2au+8svTtpR8KXjRc176FuFFZ7q23EUTKiJNah8TQf1GMeXEPG+GyxburgU1
         XCkUCVy71O2Yj5msUYrwE/ZqmtBiMHw9isWNOfRpfcGfJKJ/gCArQA8cuXRDv6gvEdLy
         yh+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9dsy52z3J2qV7D5BxnLi3ccmM+8Xb65POGk6AWwOfiqE412/puh
	fyi6km02G41z8wsFJfq+WOE=
X-Google-Smtp-Source: AKy350Zc6pydhle16wYjCXXxvxim13Xf6lCOcURJIPjACQkwdpQZtyzz+vQl4utayFP8Vb8sNRvHcA==
X-Received: by 2002:a2e:9d11:0:b0:298:92ed:8251 with SMTP id t17-20020a2e9d11000000b0029892ed8251mr1704834lji.10.1680999777070;
        Sat, 08 Apr 2023 17:22:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b11:b0:4e8:c8b4:347a with SMTP id
 w17-20020a0565120b1100b004e8c8b4347als2452550lfu.1.-pod-prod-gmail; Sat, 08
 Apr 2023 17:22:56 -0700 (PDT)
X-Received: by 2002:ac2:5232:0:b0:4eb:3de1:dfc0 with SMTP id i18-20020ac25232000000b004eb3de1dfc0mr674494lfl.69.1680999775973;
        Sat, 08 Apr 2023 17:22:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1680999775; cv=pass;
        d=google.com; s=arc-20160816;
        b=qguc6jbkycezKNgpVbnq3eDLV8MZzuU9Zpo8pISad8AGlJOhO02c6KGPPeqOH5vaVU
         w70Mt+4CM3DpPdKEn/rsW4kFhCApBiz+s1y/tjwTvcySHxD0Si9AEzD0xCuGMx3BKJb1
         RxkZVErpYTrdMCbKnbvVflY9OLGHew75fBm3HrtOvAtzj9ZQw4QVU5Bh2r0qi+a/vrZB
         btgf1H+men8Mmi6bFyFeHIwX8R37SDd2dggv5DdSt/GVecoDz3pvgtvCRkJbUvBISM2F
         w9p8DzLTNxc9f1TbjOdcbKpQS5B869YTPOqkXRTEJWXz8sJ1WlLeW4EtC9nqQ2o+VbIF
         Bzag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:to:from:dkim-signature;
        bh=hyFaWXkQYFdWw55VOtwEFxs8BAJI9CRV93+S83hO5E8=;
        b=HDQM9YIOmsj6Vj71kgupF51SFFIF1RXbHVQ42gnoNoGWe55hZxtQooaxy3MIrD317k
         ITmGzzfpB0wKmVYBEGpZqS1NaR3VPWGFKzVgAZR8MsO1qs3CJFnIRMtGguXjNS0DAPYf
         TLjeuCkKuPEwOsCATFkFAm8UT9RwzDQC2guXiZo0PMlr+UoTR5C11lHuh1tPYUWtx9yj
         FiQB0O+LAELJdNn4IgOeACtO+otfgpZgQM1lF1T22+NeuMlYg5qSUtETBL4w/CdqnpPB
         t/e4mKb3kFFjF7sZwLhGogrheg/yPc8ORg2pMN2QKhRdfrJR6gnCoyI6oDdP9CFgEdw1
         xWaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=mgwDa4Fk;
       arc=pass (i=1);
       spf=pass (google.com: domain of josephqfim702@outlook.com designates 2a01:111:f400:feab::806 as permitted sender) smtp.mailfrom=josephqfim702@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01acsn20806.outbound.protection.outlook.com. [2a01:111:f400:feab::806])
        by gmr-mx.google.com with ESMTPS id be32-20020a056512252000b004dc4bb412f7si407911lfb.12.2023.04.08.17.22.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Apr 2023 17:22:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of josephqfim702@outlook.com designates 2a01:111:f400:feab::806 as permitted sender) client-ip=2a01:111:f400:feab::806;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=in0AxztpiHP+V/ob8CTLWqJE4zO14x5C9YF+d6kgum7ErgnheHrTBvxuEOCmwJ1SSiVh/kpyylFCkLcOKAwHN4U/yVHGcerNaZ7ri9tlpwrRnrNDLxgUOvysXLexZTk/bD+3UeFnZLplRbHRP3nAHZeBWjrxGyylwi9XtopX38VbLwlP/gAcuv4bCALf0Bop3x5Mi5WStSePMTaaPTGdmVjRyZDuCdvjX0i1OayOQgwNbDNkbVsxUTd1XQrfpD+hWBXvTXQXc4cxiswkevflji/IVPhibh/yD4XwmB7ak+l6p/V8uUnaiK30u+vEIIRJ94IWKmUg82oY7P6DAkjUbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hyFaWXkQYFdWw55VOtwEFxs8BAJI9CRV93+S83hO5E8=;
 b=gfVdGZULvi2eGQyBz0tAEXIFQYsUBI3pMnlR93+rGtCNRCQRhO4EwkPzDkT4eIJRCKzKa0m4J4RAYiBbeKShURaBUBto3mFWjxHP16wFw98xh2AfULjN1/wC4SRuS04+vsCtDNl2H1Ln8SZIT+H6SlWv4n0aKkKLmwVoN7M+TgGIaApliW+TrLnZpFpQEx1/Evq2WSQbP7eobGPvvUIzvGHLnAtkORuqqM7TdJbZxr9UCH8TK89Lyv2p1HPxuMcXmYSNCdOrfkuBj4Gq5kDMUaOdo3T0P6ZdjkSlXaRW9tawEsIgEEPz7IhHErmORfTXz6jtp0EfDC7nSEWTya3tSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from PS2PR01MB2485.apcprd01.prod.exchangelabs.com
 (2603:1096:300:33::14) by TYZPR01MB4941.apcprd01.prod.exchangelabs.com
 (2603:1096:400:282::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.21; Sun, 9 Apr
 2023 00:22:40 +0000
Received: from PS2PR01MB2485.apcprd01.prod.exchangelabs.com
 ([fe80::dd09:eeb6:d425:283e]) by PS2PR01MB2485.apcprd01.prod.exchangelabs.com
 ([fe80::dd09:eeb6:d425:283e%4]) with mapi id 15.20.6178.017; Sun, 9 Apr 2023
 00:22:40 +0000
From: Kara Riva <josephqfim702@outlook.com>
To: "clan.249@ezweb.ne.jp" <clan.249@ezweb.ne.jp>
Subject: =?iso-2022-jp?B?GyRCP001JCVWJWklcyVJO343VxsoQg==?=
Thread-Topic: =?iso-2022-jp?B?GyRCP001JCVWJWklcyVJO343VxsoQg==?=
Thread-Index: AQHZanlkuLTqNVaTDUOAMz4KquO4lw==
Date: Sun, 9 Apr 2023 00:22:40 +0000
Message-ID: <PS2PR01MB248557DAE988D7CA41B4EBCFCB949@PS2PR01MB2485.apcprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [TITrok8x2KPPs4y1GIHprjawigc8JF9cHLxpyqi9IxM=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PS2PR01MB2485:EE_|TYZPR01MB4941:EE_
x-ms-office365-filtering-correlation-id: 253d9a22-841c-431e-fa59-08db3890875c
x-ms-exchange-slblob-mailprops: Y7iQSqlERdXBjyVJ0P3JSEo7SxEnPNr2Vsfg3rgcavQeVbsNEDk6Ga0lp1DQuMRxvN1dYKr2vQxcCI5p5WR9MzXqcqGafSIeH6GEA65vQ6x6UgHSNE5f0yzqEDqI6gds4AdINJimmdmYn7kELn6bEDZWmH39ehVE6PyPk0etjpi7k/QsSX9A3jwV68MHUvBNKznWaC3HfEDEY9wn0XxjOBQHMfE2YhbDO3RZ/3RytNmP6mcYjoS6yIY33B0o/gjlbAo8KuDZ4kezV2gnhDcqtnmtK2K6UTnzhtOiDmXkG3mrUrACbDi1d9u8+VhRp/qfHy4Th8rcJWXZ8Llt9pj2skuuGBCgvS9eZAgMbCOdcVDT3uZR417B45AiBzElrwJUVd7DawCWEG8vUs0RoioyxJYrldWpbroeBEVT61Y7ytZRDhCXDC8hGquvLkVpi7e18qw54zIlNKXGF/aVXYB7lL7u7R33GHphKK08brAdFLDrPMUDRvd87gshvtiQf4aVuSpCtN7qcRRdx9cOjTwJRCxfsgfgmZe74K8uNFLSfUwbugBuFCJwJe8Hd8zfRS+RH3s6O4am9UnngVhv8atmf1xDIf3tJ1rZ3zfv2PnaS/r/Yk7S3S6XjSMWfFTypA85ScpSAZxfRn70YfBnolIShIjHE9lRK67qoONzC2q3G3I=
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cRnHiYEhjo7nuuewKeaTD5mmLV4p8nacIAMD1RGCV7NinYh3vv5qBAOcT6GAJdvEyH4LNzn8sNu3+/AQZrA4s7od+xfwnJMBLExvSklkISIzmnK/lNsvBndFxO3kJS+P0HMDO1I3GXbefHIuiHcJpkXokE5PU5B3hxW3yz7aElsFAsyO0HV8sRgsyt809SPqf9Z62W8jzSx9tp5aE7Th0w+gFL+CAn2T5WU7Qyg8762TRvAfZzlx73ekvkpiG5240yvJuwvQtYGhto+Zp8uMJeXyjwz1nLVFCrMMKESCTgdWKFAYi5WXsE1RGMMI9FAvfXmuajaEJ80sm94BH+yLBqarja2j9AE9R34JxF5CW8JMxi7RD4McgA71X6e2VvUfe0b0gUcS5aVrSrzpOtit1VDC3bTlaYca45rSiEHDxBYq5qQ/RbuEeA6qtlDIaM5BI02azyF+bKU9n9oCHWdxyQwPJohGuVWf8UQt3Mcm6Fka1sKog/7CPZKlCm0VIS+geges+0pdahY5sCtqmuUj21BuOgaiCoe31DPHEzee5aGrSvruM2StYiKvdfEQegmrvGeTg7K0lva2Bk2Y14WqErwpCe8b4NPDCbQWjxwx698=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?SjhwTlh5N2Z5aElraDl3emZWRm5YSTNGckVreGFyS0NGUDhQZXcySndh?=
 =?iso-2022-jp?B?ZDlJcWoxbk5rcUptdW5UZlU4TklGK2pwS2l4T2paaHNHSWtNYUQ0TDBo?=
 =?iso-2022-jp?B?STNYMTA2ckhVR3dXSjhEV0lRdi90WEJocDBHa0Y4V2dkWGp1ZzFiZjdp?=
 =?iso-2022-jp?B?ckhvV0ZKS0NLYlZQNUNVbzBub0FwSDFtSFBBY2J6RWdQQVFoZ1F3Z2NQ?=
 =?iso-2022-jp?B?ZkU1QkxSUUltY25PTzhsakdzZ3ZxbktqWmU5cEcyWGtVeVFqR1FVdGRy?=
 =?iso-2022-jp?B?SWswZW1VbGlWcElGeWwzUDlURUp6QmVjL3ZuemhRK3ZKejRMaGpTNWFL?=
 =?iso-2022-jp?B?U3RoK2FHelpRVzc4TWIxNDFPRnBWWk1jVjdkUUhXdW1XSWcvMlMzNmFq?=
 =?iso-2022-jp?B?V1JCcmZCb08xeWY3d2o1bXpUemxVN1hHZUozN0JHNzZvNGhYZnkxQnRy?=
 =?iso-2022-jp?B?clFyZm9DT0dlVFZ2YjFiOXIxc3B6SGJiWTA1ZlFBTE1iMURiQ2RmRXU1?=
 =?iso-2022-jp?B?NW5PL2Vmam4xSm43dnhyOVVINVpoVEsvV05wNWh4S2ZDOUVlMG9UOEpN?=
 =?iso-2022-jp?B?SHBqWENoTTZDbVBIWG1KYzk3OVU3NWYvTkhqNDlDZS9UL05haUtSZnV5?=
 =?iso-2022-jp?B?ZlhoYzI3b3hvRUozTm5PUXI0eDNqNmRjUUZsalF5M0ljNXJKU2w5NUpT?=
 =?iso-2022-jp?B?cllFUHMweExDQlJlS29uQWtZMFJKZ0lSQkJsSEJMTnYySHpReEc3bkI2?=
 =?iso-2022-jp?B?QWlUMEF6YU81VjlJYXhQeWkyMlEvb2MrTVNxK3dweGZPTjdzZ0E2WHht?=
 =?iso-2022-jp?B?cGJGamZORWZXd25kMTZrbW5rV1JmMXdidlRqWnFIY0xsTFA1WjV5RmNQ?=
 =?iso-2022-jp?B?djYrV0dPdk9kakV5MHVlMCsyaEc2TG1rQ3EzVUxTeW9UbFBDT2JYdU9k?=
 =?iso-2022-jp?B?c0d6VmFROXByQkErK0lOdHVSaDV3UEk1bnRlNkdCclVodWwvT01yNURZ?=
 =?iso-2022-jp?B?bGJNTG16NTZXUVFuN2NPMkhjUjV6ZlkxNVNsUVJ3T0VHcTlBYkJqdjFo?=
 =?iso-2022-jp?B?b3ZPNWREeG9Zbm5GNUljMGNlVStKTGN5WURiWm4yazYwcXJSRG1ibkN6?=
 =?iso-2022-jp?B?WHdzT1NTTDFOVVZsUExHVHhYVWFGUDFPWUdoR1Npc0lSeHoyVnhrQ1Z4?=
 =?iso-2022-jp?B?Rzhrd0ovYnFjbUROUWduenNSQ1h0UGhTcFdhUGRkMTM0dXFWaFJ1ZXJI?=
 =?iso-2022-jp?B?eWttaG1UTFdRZ2wrYXpWNTJnVlBtaTB3ck0vTVBsNzZ6L2p4WkhFOHlK?=
 =?iso-2022-jp?B?cVVEeitGRE1HYXZocnprc2lORkV0aUtxOUxOa0dGT0cxYXUyL3ZxNW9o?=
 =?iso-2022-jp?B?Zkw1aURNS1BGVDhhL2U2dWJxQlB2YkFXUUhud2JuRUpJQTNPZTJtUGRl?=
 =?iso-2022-jp?B?YkVWRFR2cDZ2VWx2VVJVekp2ZmxQRkEzMDBub1NXVkJNZGhycnJibzR5?=
 =?iso-2022-jp?B?VVJEMFVvanJXTzhDZ3hLc3FSOXI3SG5IMmRkMmZLZjdCNkdvMzBmNTRx?=
 =?iso-2022-jp?B?K3pndm4xRk1jUWxGUyt0VEVJUnRlOFI5MnozdFBlR0lEYVdRNHVlMExW?=
 =?iso-2022-jp?B?bDFoV3N4c3VpK1VvZHBkdzlXOHBUNmE0M0Z6ODh6WXVrZzBLWGpWcUVS?=
 =?iso-2022-jp?B?Q3JCb2xVdUU1WkpDVUw4Nnl6ZmlTTmNVUkFPdFBwak95V3kyeG4xRWs0?=
 =?iso-2022-jp?B?MFVOY3VYUndWM3pUcldESmRqcXc9PQ==?=
Content-Type: multipart/alternative;
	boundary="_000_PS2PR01MB248557DAE988D7CA41B4EBCFCB949PS2PR01MB2485apcp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR01MB2485.apcprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 253d9a22-841c-431e-fa59-08db3890875c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2023 00:22:40.0208
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR01MB4941
X-Original-Sender: josephqfim702@outlook.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@outlook.com header.s=selector1 header.b=mgwDa4Fk;       arc=pass
 (i=1);       spf=pass (google.com: domain of josephqfim702@outlook.com
 designates 2a01:111:f400:feab::806 as permitted sender) smtp.mailfrom=josephqfim702@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
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

--_000_PS2PR01MB248557DAE988D7CA41B4EBCFCB949PS2PR01MB2485apcp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

5qWt55WM44Gn5pyA6auY44Gq5ZOB6LOq44GM5a6M55Kn44Gn44GZ5Lq65rCX44OW44Op44Oz44OJ
5pmC6KiI77yMTue0muWTgeOCueODvOODkeODvOOCs+ODlOODvOODluODqeODs+ODieOBr+alreeV
jOOBp+acgOmrmOOBquWTgeizquOBq+aMkeaIpuOBl+OBvuOBmeOAgiAuDQoNCuWTgeizquOBjOWu
jOeSp+OBp+OAgeS+oeagvOOBjOa/gOWuieOBp+OBmeOAgeizvOWFpeOBuOOCiOOBhuOBk+OBnSDv
vIENCg0K5bqX6YuqVVJM77yaaHR0cHM6Ly8wcnoudHcvanRvTEcNCg0KLS0gCllvdSByZWNlaXZl
ZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBH
cm91cHMgIkNsYW5nIEJ1aWx0IExpbnV4IiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlz
IGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0
byBjbGFuZy1idWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3
IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5j
b20vZC9tc2dpZC9jbGFuZy1idWlsdC1saW51eC9QUzJQUjAxTUIyNDg1NTdEQUU5ODhEN0NBNDFC
NEVCQ0ZDQjk0OSU0MFBTMlBSMDFNQjI0ODUuYXBjcHJkMDEucHJvZC5leGNoYW5nZWxhYnMuY29t
Lgo=
--_000_PS2PR01MB248557DAE988D7CA41B4EBCFCB949PS2PR01MB2485apcp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
</head>
<body>
<p><strong>=E6=A5=AD=E7=95=8C=E3=81=A7=E6=9C=80=E9=AB=98=E3=81=AA=E5=93=81=
=E8=B3=AA=E3=81=8C=E5=AE=8C=E7=92=A7=E3=81=A7=E3=81=99=E4=BA=BA=E6=B0=97=E3=
=83=96=E3=83=A9=E3=83=B3=E3=83=89=E6=99=82=E8=A8=88=EF=BC=8CN=E7=B4=9A=E5=
=93=81=E3=82=B9=E3=83=BC=E3=83=91=E3=83=BC=E3=82=B3=E3=83=94=E3=83=BC=E3=83=
=96=E3=83=A9=E3=83=B3=E3=83=89=E3=81=AF<font style=3D"background-color: red=
;">=E6=A5=AD=E7=95=8C=E3=81=A7=E6=9C=80=E9=AB=98=E3=81=AA=E5=93=81=E8=B3=AA=
</font>=E3=81=AB=E6=8C=91=E6=88=A6=E3=81=97=E3=81=BE=E3=81=99=E3=80=82 .</s=
trong></p>
<p><strong><font style=3D"background-color: green;">=E5=93=81=E8=B3=AA=E3=
=81=8C=E5=AE=8C=E7=92=A7=E3=81=A7</font>=E3=80=81<font style=3D"background-=
color: rgb(255, 102, 0);">=E4=BE=A1=E6=A0=BC=E3=81=8C=E6=BF=80=E5=AE=89=E3=
=81=A7=E3=81=99</font>=E3=80=81<font style=3D"background-color: rgb(255, 0,=
 255);">=E8=B3=BC=E5=85=A5=E3=81=B8=E3=82=88=E3=81=86=E3=81=93=E3=81=9D</fo=
nt> =EF=BC=81</strong></p>
<p></p>
<p>=E5=BA=97=E9=8B=AAURL=EF=BC=9A<a href=3D"https://0rz.tw/jtoLG">https://0=
rz.tw/jtoLG</a></p>
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
om/d/msgid/clang-built-linux/PS2PR01MB248557DAE988D7CA41B4EBCFCB949%40PS2PR=
01MB2485.apcprd01.prod.exchangelabs.com?utm_medium=3Demail&utm_source=3Dfoo=
ter">https://groups.google.com/d/msgid/clang-built-linux/PS2PR01MB248557DAE=
988D7CA41B4EBCFCB949%40PS2PR01MB2485.apcprd01.prod.exchangelabs.com</a>.<br=
 />

--_000_PS2PR01MB248557DAE988D7CA41B4EBCFCB949PS2PR01MB2485apcp_--
