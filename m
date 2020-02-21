Return-Path: <clang-built-linux+bncBC75PI4P4AARBAOHYDZAKGQED6TVXHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A101686C2
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 19:37:53 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id r7sf781173lfi.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 10:37:53 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1582310273; cv=pass;
        d=google.com; s=arc-20160816;
        b=FVQvG1NKrKnTkN2PMNNrhfnoP0e/oAxpbFK58bTrXLgRSwygKE1YAUyNuLggp+SF4C
         z0eFlUxHGDcBGRpvmLpenUmfSGJLY+MTclIB3mXSp/7m5JAdWL6fCZfER5BDUeBrBCuT
         R449p2VF0uU6sLLrC0tkZ4Q94T8de47r7e+LB6TJ16v1TgANFHG0HO2E1Kmb4SJGPph4
         0qieM5kgQl4Sh3sMt1mPdbYkkZ7Av56PGIxDnzCRElMoU5PyCsZk+qHWzF2R+rqnlk4Y
         icn7yKos+tQH3s5E6FEW6pHRXPlTol5jhYXR3KGDYnFwmbcBpFaj1L44Zg54cXqDn8s7
         u2Mg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=ozYsjAmykxho9w0SPTWeowW4VDLz9ktYOQQ92z76YLU=;
        b=CZZdNFwKXY6h42YORml8MG6lPyPZdtZG2VkZonQ8xqp9bfo+6/3t1Tq7ifvZ4cWTFY
         neerbhMlfCFAgwc+H1U8J7xr92J8N8oX/uB8T4qoLUOZVl3ih4lRCjr6xu2kpO3FU0X8
         dd0RpwqCW31IbNuqiOe9t0rkXl0VsswLcvNGQLbiRSoOpMWV3L3OJcNlsVA47o5DVXL6
         nNOJGybbhKybjLEanPWpbaJimg6MFo0YBHXJ0eRb/bSz8jWB7xSzPCPLXgxv+7BIDRe5
         CH71SdZcbpp/KxLoPbpD+2PLoSu+PNapm93pLVhwBFY1WptM/ict6Crx+DsOfbPAiSpu
         KuEw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=PuhoUDSg;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.21.49 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ozYsjAmykxho9w0SPTWeowW4VDLz9ktYOQQ92z76YLU=;
        b=nIKQ8QoR9EMCxNIepwgLr2EFfdijQGXCwvzoSB7v128ZDjTmIyAw5ZpgXwQKJSuWJP
         cPufppLXSAdClZyDrHXTPYTDDk8U1toOzvoge2ZRCr44sPau1gNxju4QSm4TEikHLRvi
         j/W7RY3WPFNlyCr1mNvAV+bwD+59QjYRHwzdCw12PfSoa+1cdyvJz5tszzQRwzFBUS62
         r9TZKUxtxJDkZgrgral5WM1R7mOrdNQZfAaMacszOHkq+MixtfAp33Wy5/o2zwPd0v4d
         qUOvxBM0P9SF1yUPqUWoyNKaVXS3kRQyVhMmabC2fjIzdgcGrMoyE3wm95RXcjiXlDE0
         0Rsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ozYsjAmykxho9w0SPTWeowW4VDLz9ktYOQQ92z76YLU=;
        b=syp7hdDJovVcB0xjmReN5D3GS96WJ6AMXwXIQFaKkqCToaA01FK4d2l+OeXEZFBr8M
         6exl7t5kwTKLlKwRhi6cGaQktym4Af0yxvyhk3UxiV626e/a6KXBH9xzuGNw8Zh/bkZQ
         77uDMFcb28qU5lOV12g4XrMTjaScUPw5RyHgd1XxVYUKpgeD45rCoRgwEMbx1KHZhAVV
         oA/DO905s0eUlW2R045g7aRXXKuR0GFV7W6UvjncEgiIEe1zRsK4f9LsCLwDeaOw5u9F
         wYrNKyXrPjedHwJefC0gUk/4xE/4NzvkS3MeWkOOQJ8Vn7j6gvO2i/P3BlRo5vOXK2Ss
         KONg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXWViF8vmRP18LR3QguorOAWbn3CcbN9/sOcTQ1d0LVS/gnw29
	Lwo8GA2S47+RnzSTuv1uR0E=
X-Google-Smtp-Source: APXvYqzQSYH1Mrw4qNlgqHyPmPc7EsdM42UlXo+UN/5Nvg8T3EEhsC2Sc38DbTlXZrHvvtKhWzT5iw==
X-Received: by 2002:a05:6512:6c5:: with SMTP id u5mr12029464lff.51.1582310273095;
        Fri, 21 Feb 2020 10:37:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e7:: with SMTP id s7ls510457ljm.10.gmail; Fri, 21 Feb
 2020 10:37:52 -0800 (PST)
X-Received: by 2002:a2e:9d92:: with SMTP id c18mr2075616ljj.265.1582310272487;
        Fri, 21 Feb 2020 10:37:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582310272; cv=pass;
        d=google.com; s=arc-20160816;
        b=syhbbkETDiMS296FrPLl+3dtrs6Ag0XCBLTOHQNT9RsrE/xFuerTVHFr5Bb1KTVbxZ
         WDiB3dadHWTwEK+pqaXT/3QeS3aJCSgo07uRKA/UP7MfuxeoY34nItoGN2jg86AGdXWM
         nfnxJHLXSzZy8qKybFQOZKHC035KAieAcbd/UXvA4hce4ERA/Ftw1AofW1pT8/IMDGzN
         yDKjvo2jC/qiXeOLlmzOn+89Mgv/DedD9jnNcXdBNpUSf7byucYTG7+pn7BThE6WYLef
         Gn6irqxMhAG2rKjXgO/pFpMQInQ3k668iqjeLdQIGAb4Gg1c3xFU1PF6b2F7Szqfp84V
         ukIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=gSmglGTY9yUYZqBhk++xyWetha2tpbfuFMmUc0nSPR8=;
        b=DDkTrfTiYtpBk2Smp8pUGMSI6Z/WZRSLm3xhe4k6GkVWrj/wHLBf4xKAZy5djQypRS
         Qmcfp9U3SMQFVBgR1fTqA76XknraPW+2ff4AI8CyIEJhX2BqYcdS0zk8dwsD13WkFzuq
         ZXGWthJ/aI115DZfoK3789FDEpovDx72LSFRoNjjIup52alJrTTH5mlICySsK2x6COXY
         DJdQdx4Wk+1mY80UNIzA9Xxcfik3nOCm5L4MQg0O5Sh8fDojlDPv5bQnAFHyltBj3oH7
         NfMi+/vCX85toLcpUZ/KI1uu5E7VcmWxryJjKyMMPfsc+RYPBunbvHisdaOZNmoKI4yE
         FHTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=PuhoUDSg;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.21.49 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2049.outbound.protection.outlook.com. [40.107.21.49])
        by gmr-mx.google.com with ESMTPS id h8si205879ljj.3.2020.02.21.10.37.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Feb 2020 10:37:52 -0800 (PST)
Received-SPF: pass (google.com: domain of saeedm@mellanox.com designates 40.107.21.49 as permitted sender) client-ip=40.107.21.49;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TPgpeUYalIQQrr5Ky2wkxve4wW194YUf18NocRhYsjPyfhyOwxN0k8EcUmA05eHDLlc1PWfElAcW5QJfwhEJXrqNrE6xw0/wvnMYipOK0zl6t7lBKlr4rz6+DYavrcXwES+hiGyLH/i1kEEF6iyfYxvupkVNFmLjAZ2Qb2ZGdIelmGPlKBKqrnn6sCjfNqjAotSmVETtVER6bsPG0j9rQopCtyuLP1oPVaVEMY/FgI/kEFoII05vcYgw+hWRZl5r1yMQpS2hJ7/6YR8kNegoX2rEScboImChif1XuAmVsz5RPhZt1H0XPvxdo1JYdNdK17YcZP2KOGzz9tQbobPLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gSmglGTY9yUYZqBhk++xyWetha2tpbfuFMmUc0nSPR8=;
 b=nL8w5pVowVqz91aaS89U9hUFaB4c8yVKtqn/AojOidllr42k9mqsASB10rslPp66+1/mlAm8pV6/cqSOxPt4mjqgwaDyb88fnFOwxhsvZLy9ElVAwsCWQ1r0zatm1xe/frQHd9Wd2wRrz80nnk1bDhuzbozGA0xJbO0rL0xFXNrLYCPl/z5NHB+YqCKa5HV1+CMSLll5oenHs8GAE7KZln8HOZIU3WS+7pyy6cJe+1JGQvxzPFXFLYVnZ1DvJI9TEVVAzBDNSnNNfOBTlbLUIR7D/6cNbHGP7AJpnHXaEaKA3eS0WUeVO0hkne2gsqBjkdSEZVVbYPwBbM5XSeSUkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (20.177.51.151) by
 VI1PR05MB5968.eurprd05.prod.outlook.com (20.178.127.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Fri, 21 Feb 2020 18:37:50 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::8cea:6c66:19fe:fbc2]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::8cea:6c66:19fe:fbc2%7]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 18:37:50 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>, "leon@kernel.org"
	<leon@kernel.org>
CC: Jiri Pirko <jiri@mellanox.com>, Aya Levin <ayal@mellanox.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, Moshe Shemesh
	<moshe@mellanox.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH net-next] net/mlx5: Fix header guard in rsc_dump.h
Thread-Topic: [PATCH net-next] net/mlx5: Fix header guard in rsc_dump.h
Thread-Index: AQHV6HdBTg8zQMdEMEKdK2dIQcVUnagl+xgA
Date: Fri, 21 Feb 2020 18:37:50 +0000
Message-ID: <89dda0680320d0ce1b42093e59985313e2a1ac50.camel@mellanox.com>
References: <20200221052437.2884-1-natechancellor@gmail.com>
In-Reply-To: <20200221052437.2884-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.3 (3.34.3-1.fc31)
x-originating-ip: [209.116.155.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f1d02762-97f9-4eed-7f72-08d7b6fd279e
x-ms-traffictypediagnostic: VI1PR05MB5968:|VI1PR05MB5968:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB596847E3E8232729EA728B43BE120@VI1PR05MB5968.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(136003)(346002)(396003)(376002)(39860400002)(189003)(199004)(5660300002)(36756003)(86362001)(2906002)(8936002)(4744005)(8676002)(71200400001)(81156014)(81166006)(6486002)(4326008)(6512007)(316002)(6506007)(186003)(26005)(110136005)(54906003)(66446008)(66476007)(91956017)(2616005)(76116006)(66946007)(66556008)(478600001)(64756008);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR05MB5968;H:VI1PR05MB5102.eurprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0bzVXhFmKcH6Yglesvhqb1VKqOZGcrBL6qbpJ+5Uc2qNhp0KBT6Sg7b1cez39QbjKPsSWJ8fuv+6FaoIfQpNWBQSM8i+Fbm/bb1PR27UC6QFjTVnNZbMDy4g7htg+Ad1uv+v+CSvySgTIHOTSaxy3xU3RogvwnrsZiFqqWmiA7VFT+adJXV7EmYSoJUb9JjNXtd7HxjET2DwNWuC1PwXyn+aFpqkbGo9uiX/0SwL2ZpsHbLnnOREHOtux6PuWC+mZdduoYhTEc1yBPDr6BHS99cu/UUvI0zO5w7PrTFxwiQTIlToIYCvfp9jfReCR76KuYY1dbNwTaeband6a2iwnGbrgFveU63cjZ1azUvG/Lpf62SWuISrInJjggI+/eFhBykLc8ochJJhmHXa3gc4J3OqHg/gw6hu1Vv+fpGXXMPODJR4gY/yLkIPWHop+eR7
x-ms-exchange-antispam-messagedata: 3IKRUe4aCzIBgJioEnbTTCqO0LRMOoah26M1f/ShnICZoQOiwWLn55lCZ8jDkTW2dN6AmF8KFTlDm4r4lXNUsalpztCRH8XqzteUNuIhJJSvUkpAKu+DI4jSd6v8Z9gHHujDqFuh2R0qd7Ij5XO3/A==
Content-Type: text/plain; charset="UTF-8"
Content-ID: <C593F7259EC27949B0E1551062C5DA78@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1d02762-97f9-4eed-7f72-08d7b6fd279e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 18:37:50.2605
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gLWLO9GJGivOs0P8tzjCrOYrYmOIrwbGmylIjdDOxDUozawSIb2OLTOCUiNTtbH/kVyePJVz4sVkWh8P/w28Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5968
X-Original-Sender: saeedm@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector1 header.b=PuhoUDSg;       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 saeedm@mellanox.com designates 40.107.21.49 as permitted sender)
 smtp.mailfrom=saeedm@mellanox.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
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

On Thu, 2020-02-20 at 22:24 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
>  In file included from
>  ../drivers/net/ethernet/mellanox/mlx5/core/main.c:73:
>  ../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning:
>  '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define
>  of a different macro [-Wheader-guard]
>  #ifndef __MLX5_RSC_DUMP_H
>          ^~~~~~~~~~~~~~~~~
>  ../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:5:9:
> note:
>  '__MLX5_RSC_DUMP__H' is defined here; did you mean
> '__MLX5_RSC_DUMP_H'?
>  #define __MLX5_RSC_DUMP__H
>          ^~~~~~~~~~~~~~~~~~
>          __MLX5_RSC_DUMP_H
>  1 warning generated.
> 
> Make them match to get the intended behavior and remove the warning.

Applied to net-next-mlx5

Thanks !

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/89dda0680320d0ce1b42093e59985313e2a1ac50.camel%40mellanox.com.
