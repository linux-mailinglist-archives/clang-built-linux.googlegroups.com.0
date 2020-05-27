Return-Path: <clang-built-linux+bncBC75PI4P4AARBS5KXL3AKGQEYSPXBWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A101E4A20
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 18:28:59 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id k185sf3458wme.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:28:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1590596939; cv=pass;
        d=google.com; s=arc-20160816;
        b=ub/aLsgscHRwcLS9mLrV7Mu0iQ2UGWxPA/p9LrFAA5r5OSF04pZdkH4t2YRx+lEpY3
         c6FUTZud9kQ/wH1UzK/D0T2i9+eZudxpavlsaQU+DnECnvogX0MdJwQCWybI7Lv1J1GH
         Kzjk+aZDy46Pc89SF3dXKq4IjEQDFhus+d+0ljNeIMQhHEMMlJhWIb1HDGNxk913GnOt
         UNe+5m8GNSpp6ZMvLtWuEDGqCNnePy0pojrX4LGvkJelIpEVVewdddAm0uZ/8pPWEgNc
         UOliIw8WBLdhFcDR76NGdrIW3e87oYpAZtkLOFk+AkZUnCngbMUYWhpANXjt4dqqONqu
         OetQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=FnxCDZF9KQ3gb8aDGehY/1vmqSbGEtUujB/kQ62d6os=;
        b=xc2EJVMEXqD89CrDaXaqpWHy7dvVwumQXVX3lz2w9wAl/FXLt0TofWhlyqwCHvxO7G
         gVa2bKIovEnJ1Y5AowmimYVAUnN0oG1XgGzVZ/jreGx0MHHmD23s0rq3792VXdhoyfKN
         DIFXeqmHjLG+1Ki7g14tN7u1MEH7icImHSdEqGbBiSdedqAqcEpeGjUx4Ijg08CFPZns
         blH6C2RYuq4De+N2SZM58KuUzkYuO3lWk2zq8Y0hjOz6A0cx4KBFWvL0qA+xdFCu/Y4s
         q2ynytuvGq8/X5v6iBCQ1Rbu93RgwYqNfMNDCCj/ZpVcmyLZ1f7NlitixkWJIna9ziKp
         TBew==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=BPdKIiqQ;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.5.41 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FnxCDZF9KQ3gb8aDGehY/1vmqSbGEtUujB/kQ62d6os=;
        b=IarXqZ4uxEk5MXsgyoyOZ/Z5cAmfgCcdejyewEOWAJAwuf4sDBkiz1yvWrgOgDKo1R
         ufRKRz48SHaIxBmzG6QwguK4iaND/N68yHItrqHdcSk5necFPeQL6MXHopkXFh//Ms9d
         RdpzNRE6KaTkrfFh0hBmaOyHZ6kFz962juVLVg6BCz6cisAo/NSxAMvlVOUCbprs9W2j
         fDpVM3su5QyJYh1YYSduiCVjbxGEizfuHgbLxeMb5/ZRxq1Q40VHO3rf+u6e9m0DwRLJ
         cK+H4CpX0mSVUxA/yHLlDmvSLeQM9g+XXUBO9rPP0+ogdq+3eBRoXd4uflYAZHKeeOBf
         CfMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FnxCDZF9KQ3gb8aDGehY/1vmqSbGEtUujB/kQ62d6os=;
        b=DzCkhMH6lhZNtJPOdpkPVN63PBB8c29EM23Xllr4XO3VuZQs8OSMCkpj7EbWgMFIv+
         QtwLCd9f2jz4+3TzWS5pf1iRj27ChsCeMsLkyoop7S/jhCsLTszOOzPpptWeqbmILSmC
         cCiTbGKUGvXc77HcNzbPJtTEeDPW5WBIRNuaJxtr2AEwj6buFAttPMsOsZm0+pJr5uOM
         rUpHePLfUZE2Cgd4zVwC39olqH7LNMfm/k8Wr9L9dXIbCl/NtZOXb+B459lkyf/JWKCN
         7YOOlGJ+opBp3p1q6BvDEHpYt6Hpf9BNbSEwFanrKNaFbzdy3wpqOSFAyfVvlE0+dzu2
         dgpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zNIwbEDjc5QHbuptoDODAr/H0H56L/k8Efuuay9Q5+nZv/7Gf
	NHSCDzn/Nwv/XVb93A2jDRY=
X-Google-Smtp-Source: ABdhPJwEO1yFSfVVDVdGDuR8C4F2BMgvIpPWEfvJYxyPcL0+6WAI+jE79BSQlN2r3Q7L5sdbsx9JYw==
X-Received: by 2002:adf:c651:: with SMTP id u17mr26353094wrg.416.1590596939559;
        Wed, 27 May 2020 09:28:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aa8f:: with SMTP id h15ls2451040wrc.3.gmail; Wed, 27 May
 2020 09:28:59 -0700 (PDT)
X-Received: by 2002:a05:6000:146:: with SMTP id r6mr26599019wrx.9.1590596939116;
        Wed, 27 May 2020 09:28:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590596939; cv=pass;
        d=google.com; s=arc-20160816;
        b=BRK/R2cQGEfwyTa/wOG9dCTOfO5V1nihasitvE+Qh0uxaX/icAnefoD4GPXcxSqTv9
         WpNxTodltVgJp+MHuQrWMFRnNI+qwpNQ2PgU+1gmrm05Kv6gagiWS8pA1cr13rQWFJ5d
         8rTwOeitrdhiI4q1c4Aa7ITwW9/RwavHko95J0wXEIK1EsJhUZdns06yoY1JCfYyc0uS
         Hoq6O4g1SLpcfRvCTr5KItw4orbKpbyY2cqA0ebelf/CgCW6paYTroSuDBFZux6iiJRh
         x9PhE+ic+APfbHL7tlVfmksqRn/e/SZbizjt6TpQACgiOTORP6S16x6iIcMnlO/Ia2Rz
         fEEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=jtjmjoLemD5dILtAlznJFmS7F0DmmCjaj6pGgrdqOJU=;
        b=psKD01TzLDHY2mToQcgXvKsPfrseiUoiVNpdwloprxN6ywN0et+oITr6xICN1M85pA
         1OKsu/RgKjqEaTVwMfhdD5hTKKCmt/ainZbi9es5h08lImXHN7Oph2Gm0ixPG3CJeyQV
         5gVWcD8l4wAnSKIY2pN1+sX+QzwO081lRaRn0GVSs1Zx7sNNo/m8QSHzrJ7tv/+gVDTO
         /53LgxhiAXvWhx7h2/cFpyvixqqDU6Z0SXEwZKN2OSSx9ads10kMaAnaPHb9ZUmuBbnF
         qPEtuT82aB3OFRMYnpBvCJc5mfaQh23JMMzOHLc/p9EcSfWdW+qIt+MjxEfjqMFoo/Jn
         TDfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=BPdKIiqQ;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.5.41 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50041.outbound.protection.outlook.com. [40.107.5.41])
        by gmr-mx.google.com with ESMTPS id 61si126639wrm.3.2020.05.27.09.28.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 09:28:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of saeedm@mellanox.com designates 40.107.5.41 as permitted sender) client-ip=40.107.5.41;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dz0BMHRV4xhbcS9CYZNiFnarox3FO++Ur9og5bFXsZ3accu/cVnhFC55D8/yu6yssml6RfUN/+9PUeow1Bk8HdIKJ/gF8efdgGgriAyd1n51KjXahNAFtvhRLyFl7JG2GqrAp/oxLuI9ndu7JvPM5kTg6kqqIhdSIfJE6D0f1AZrx5NYj4Hfm2QAWNkXUFHd6D1Xxz3QPyaf0XL9Baj+F6xcOev+8GVZ9xZl80U0nLUTHrGBoXVMirg0oG3woy1mRd9DbPiuMRg7Vyif7U6PbKn0w+/GJnRL/aWQvSaTimvVVmqxKfXJmNe0v+29H/DuAdXVsZMsT97iT8TgZKad1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jtjmjoLemD5dILtAlznJFmS7F0DmmCjaj6pGgrdqOJU=;
 b=HystMcJ52kufftrNACNRBYP7suEJmkwPverCxXiX9Rc/bzitgJt5z2+Ol/kNyWveGI8eyDp54HOhXlrtXrS4ffTYBWnzQDADqElQPkC4DHcg0g0Dyx7bSUJe7fP46PZLsXq8jLhj6lJBQFTAP/MbTA4OypBRJoYvwUt34ZEmByZmllLPrhZtyB+lFNN0fodU9T5x46dorNqUfYqv+sI7FOr503yveX1vimt6Tbj8kHH0mtgeAkVPu74YE/RG6Mo9QWRJSHTsCHdfdSSf9Y5Fg2yhKHiHYA/ngYCQpmzt3gGmItkZS4FzDp3ILbvknlB5JL4rWHfwPRGT3JwuComIng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (2603:10a6:803:5e::23)
 by VI1PR05MB6895.eurprd05.prod.outlook.com (2603:10a6:800:180::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Wed, 27 May
 2020 16:28:58 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::2405:4594:97a:13c]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::2405:4594:97a:13c%2]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 16:28:58 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>, "leon@kernel.org"
	<leon@kernel.org>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] net/mlx5e: Don't use err uninitialized in
 mlx5e_attach_decap
Thread-Topic: [PATCH] net/mlx5e: Don't use err uninitialized in
 mlx5e_attach_decap
Thread-Index: AQHWM/uW1M9R5MKUQ06oEOaaCPeIWai8H94A
Date: Wed, 27 May 2020 16:28:58 +0000
Message-ID: <df7438fed1ee6a2829a3745068f0938a6f159fdf.camel@mellanox.com>
References: <20200527075021.3457912-1-natechancellor@gmail.com>
In-Reply-To: <20200527075021.3457912-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.2 (3.36.2-1.fc32)
x-originating-ip: [73.15.39.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d61b0348-277a-4127-be13-08d8025b0e8c
x-ms-traffictypediagnostic: VI1PR05MB6895:
x-microsoft-antispam-prvs: <VI1PR05MB689583A3D18443E85993B4AABEB10@VI1PR05MB6895.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:350;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SlR5uwimAR1lLZcavCS3qXLDmwU3bOd6NaF5XiknJlG3mgORWtynTic83TTaXAKD7of4SLnSlViohRBYT8JDf3x2uYHuDeBtRdb1Wo+ZJjkZe/7pg74dlUQqlPfNv9DiG36TrHd3ZeWwTuhgfdm+E9Zv1cS1WnLld2KJWCGNUEST7XXbM9khQKtv8ahIKgBP6QQO4KNGseIpe4ZdQnMUJ/4DJFUrDtoGA1my3PZ4In7SK1rTjD0AwvWlv7F0AQhXW/RbnWfuAvCCq5GXAbZkelnOAE19vQHt0/r2gRd+OwKTZpXf/Oug7gVmgO/5huA1Yg8cc+KN9zmGCAQVJXLrm1weuIrq60/rA8BRMi0buDPHyMQndD63loCYdf2JMBOiqIUXDCYY31tfUvNgGqYxCw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB5102.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(86362001)(5660300002)(66446008)(66946007)(91956017)(66556008)(36756003)(478600001)(76116006)(66476007)(64756008)(2616005)(2906002)(71200400001)(110136005)(966005)(26005)(186003)(316002)(6486002)(6512007)(8676002)(6506007)(54906003)(8936002)(83380400001)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 15XUp+G4wTXK3i0a52JUj2JHXE84ZyAsgsDOvegfna6jV1RvPcbam3LLhshedkPMhXCI0EyCFER2P/CzouXQIGQQFng7Ib2RkrXMNDSvdQj8bOxByJ+agvvVdIvm4xWMTp/I943njHpPtTKahO+LD7PkI8tK+2CZU0UzUZzE5TenMmjB9CNGOxTKJ/SeBzRNU5mUMx0WHBQjZhf/AksP8kES6n+5Quis1vtHEi7BIcckNKbXGrxagyBDZ6f8tIo6YktjpR7ggjRLfiVMBDY77c6P7BQasJje2Agjy0omXC9lwLgcaScTxCN7B/vb9sRaGHpqyp0cdsFx75WiWLUdrOlNrR2+hLMb0IBfMRO1S8dt7KzZM+IWp3iTIJEqNfvmjrASzVnw/ltThPfWcl93XL5KkGna2aSzv+7dOkQh7hEBJ5/+RB9QXkvYcm7LyvUTjOLiusIxpD8Tp/XOD8s+5j93jTeRchf8RFAQ45LpgKY=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <44C337C62E7DAD42AD04C573403D8AA8@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d61b0348-277a-4127-be13-08d8025b0e8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 16:28:58.0830
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zLGX8GZ3rQ6rkN1Dtn6qcYVtmVPaNTUOtIs1LdC3AEc1FInHIePZ+fkq17w+OVqiFKhAtyWWVZGf0LsgZAtAQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6895
X-Original-Sender: saeedm@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector1 header.b=BPdKIiqQ;       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 saeedm@mellanox.com designates 40.107.5.41 as permitted sender)
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

On Wed, 2020-05-27 at 00:50 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3712:6: warning:
> variable 'err' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>         if (IS_ERR(d->pkt_reformat)) {
>             ^~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3718:6: note:
> uninitialized use occurs here
>         if (err)
>             ^~~
> drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3712:2: note: remove
> the
> 'if' if its condition is always true
>         if (IS_ERR(d->pkt_reformat)) {
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3670:9: note:
> initialize
> the variable 'err' to silence this warning
>         int err;
>                ^
>                 = 0
> 1 warning generated.
> 
> It is not wrong, err is only ever initialized in if statements but
> this
> one is not in one. Initialize err to 0 to fix this.
> 
> Fixes: 14e6b038afa0 ("net/mlx5e: Add support for hw decapsulation of
> MPLS over UDP")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1037
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Applied to net-next-mlx5, will send shortly to net-next

Thanks,
Saeed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/df7438fed1ee6a2829a3745068f0938a6f159fdf.camel%40mellanox.com.
