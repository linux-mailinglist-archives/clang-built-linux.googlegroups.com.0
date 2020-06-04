Return-Path: <clang-built-linux+bncBC75PI4P4AARBE7Y4H3AKGQE2YNCWZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF731EDC74
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 06:44:04 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id l26sf1556139wmh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 21:44:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1591245844; cv=pass;
        d=google.com; s=arc-20160816;
        b=NxNypNhxYx8qGONXbxz37vnIeoHX3wF5TtshdpE6sv0zNYI03VPHpBOd3dX+RJyprV
         d8UfXbjXnjw2F00DzMI+JO/NVSitoZxK3d9hOMQd5Kq9ZaSYsLZCUD66qThsnAY515JP
         79sBxu0xpYhbrmnGbkRc/suwRPuz77sF6ggwVFdFsdT2/S3Y+avVUCUF3sN+t/RmpR7q
         NGLyaWfLSrWfH51LFA8a4pjD4SICvS0DzYiiuptur/Uq+GtkWLZmAUEhF2yrr0ftl1FC
         LQxixaOP+n88uW7K3GowlkyMsu3qlRXnLWcstZEdsK5XQgUgufLBeSHVheH/DEaqQVpK
         OD4Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=tmK0ydncFT5vqv1eIaJZJCaha3gMKGBSBlhzlM5SnrM=;
        b=mzisxY6ibV0JDqn7vYp2tgFt5zVB1fN2I2OFeQjdZFHEymxCj9/QgKanBXaxVATAoR
         MOzVPXQes7oCdve7/Zozq1UvC9mcVA0sw0OUIhp9Qj25PrFv/fM3d0i5cDzwVu8kU5kg
         pQp9aTJfiJMiw2ofmSEG9JWImAxc51fJHhDnqeNU87lvkYRdsS28eXmFV1fpUMBB47vG
         ubEKI5tgNPGM3lMS6hI4Jce5h0JUxIHD7CnXb0X+qyN6/GiPG9yCgCCEllVEszN1T7Ni
         C4lT6IosI0QFn9xA+pdP0lXrVXQTZhGkyiG/aQl7kD5SJmuQKB5lnYogDTjENjiydVQ8
         3+CQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=PuWDtqQJ;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.15.52 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tmK0ydncFT5vqv1eIaJZJCaha3gMKGBSBlhzlM5SnrM=;
        b=Iy2y6Jvoj2aFBHdCoo5miqwdY5nQWCQeq2Xr946D1n4zCqwBn3EtZHMHQDuOwSK4Sw
         SezsnyywuvN4snf714uBomca6RBDQritJjnx5tCT0oY+BjUJCunl9Mcmn0BEtwuV0X9U
         lM70CDzHbS6CsU+zg8yDTDOadKzt3zsyTydiW2TWcY5n/KomT9HFGIwSMvwiiofi1aFE
         CksmiG7IggbquKBKVgmbGpGxYmxdx6R+qhPYimTuMh96jIZEuaC4btCNUP+U+A2b4rFc
         FQ7KdXKLySFWc98zhAWt51icHfg9mTyhxgPobyQqAqmWbjK621CqmbyVe++Mdvmyv3Zw
         Ja5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tmK0ydncFT5vqv1eIaJZJCaha3gMKGBSBlhzlM5SnrM=;
        b=W/wyUicUsBDsXOa8DVnLbQsxtCiazGVgVOdTnOMsLD13lU485gai9oZxvLPAStWtvs
         h8hr1jr2lFEjTp0FtrIFl50d0QCIyyRzKS6HzytKTZjbTZgtxVxbLAG9Q4i8/Rt+5Ez8
         UtHJDnQ4Lh8PMGJii3zQ5D99vjRV7JqU4sNTV7nhGbAAzV+7p46VQsgQecimXJof70QY
         XEMdbexKauvFUbim5N0KjnsUuRMKv+ogvbdwhzpcef+AYWX+0+6LbSmJjOZoIELuhYiN
         Dz555JWTgbBU3I3HVOZrE97j5xPtCCzl9F37HupnQZrMJE4/0/DscAKQES2Xh2uSB3XN
         Hg1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fA3JqtsYOrBXqQa6k2VpXRJDyGrWggb2Be2HOn8PRE+ch3Dwk
	lFAkOQ7RGa6wlkYrV4CQVN8=
X-Google-Smtp-Source: ABdhPJyqnbJMj/46BMi4273iaUKjyIJ5pGSPt0C+ToycmmzLyhRT3Dc5xxY2RhdXPVMybkLZejaCsw==
X-Received: by 2002:adf:f882:: with SMTP id u2mr2687882wrp.40.1591245843857;
        Wed, 03 Jun 2020 21:44:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c959:: with SMTP id i25ls2082681wml.2.gmail; Wed, 03 Jun
 2020 21:44:03 -0700 (PDT)
X-Received: by 2002:a1c:2b05:: with SMTP id r5mr1017578wmr.16.1591245843356;
        Wed, 03 Jun 2020 21:44:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591245843; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3WPgiYxxBDt1i6ApSbTdW0RJze32LNYg8ST8x503z912r8b2mctckoNjw+w1C/eEq
         jmd/bdNWqoSL5iENNcVMbo1kFUZ0JyA6ZqpkcN8jnZXRvT8kNX9Qn6WqrBqn1NrFyHde
         M/daD5x17Pg940fD9Gl/hj6ysg5qoYVSHeIEtoXVtSY4ubPcAlS2T3k1BRdzZsoOWb/J
         B4JMBtTP0Tv9axphqGe+jzOTwPVaHIfK80CHE1k0ViqRVuLeibRgreNh82EI2NTRZufn
         pDxkZhEPXfaYbxb95NMP4g/1mjzalkFu/NyD7VxUDprOflg9mmijyGZjpPObLQqfWGry
         tTEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=Qd39OPv9YEfg+IVHzvzz4hVYByMsurNoetdNH9r5BlQ=;
        b=mTvUlCFN+Nrcw7R4A3SoDf5ANJGq3ip5s+PHYsHNxXw/TySVlxFDjH9GupfpERtOUO
         wcb7/eidd8oK2JCr9aGI16jxegLYj3F2AT6qyEri3Mw9UASxn0UX442DgpCXG+jCevh0
         EEOQW2BiITQ0cEJtpXWssfDFHuIBHMzpnwLj9Xk/NZfUPOSkYyNYThFFgMlJbsPl5Kk2
         ef6BX7tYfZNtpJPbxqtOOenH/WVcIWC0X9CtpIU/c6kAXsFGPjDuQwhWm8FxFlYku/Ba
         pZ5GA43SZzZnSj5hvgFqEtOIdlNiXWc8U440rdpXdeIdFJ+jvmWysFKSXaV9AlwWCNA5
         67Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=PuWDtqQJ;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.15.52 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150052.outbound.protection.outlook.com. [40.107.15.52])
        by gmr-mx.google.com with ESMTPS id l4si254180wrc.0.2020.06.03.21.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2020 21:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of saeedm@mellanox.com designates 40.107.15.52 as permitted sender) client-ip=40.107.15.52;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BoS1rZUNaY0e+6yflDrL40WseDLaE0+Ivevu2e9Fgw/ETqAuX62ZHCwV4hdLTcEMR4OYd0bPVCNkIJEvr+wAQiZosKR+ZzTzKQEzRbAaClw9pQVy1IGYoXHBByfaNw06O/Of0pi4bIu/vWoCH7r8HcF+b67vyX9AaGYNYWvvXLAr4xlOD3+NuSPnEBe/2qjJ0sf+FoJbBd1e32YcctzrdeBVDOqZh61RNcvCz8daBelFW2BFK9+8fYjaB45Oje2gE3Cl8O/kC0UJMqcG6NkhqIwWWB/ywuMcgOE0YbaKKyFC0elssutM837vlzCn1ydJDNsjNO+7QbbiGZ3DdOYpBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qd39OPv9YEfg+IVHzvzz4hVYByMsurNoetdNH9r5BlQ=;
 b=jYgRlZosdqrpwZWj384RwG+S2KaBy7cQMHPYyN1ZHPPAta2KuJssxQvEdT33fuf5cuTCFc497bU7xW/vz1iXWlgZO6xcIcYRUasZ0QO4nZU87ckTlCuIDP8WpC6WllYqqJHxC9E2wljGpPWuVx2eT+QGXt6WesqpfwGSIK4WjxmEmtP1INLt/fYj1GnCrxD3mJzIA1xT43gFZBVr2L1Zb5yEVhz9W2HhnnyLtzUwB3C7QyzfanIaQtGHq8G8c4PnBS2wJlvIr/3T4xYgQTajVVh5xOmYLmf5hL2eyv7eZ4Yt4IQvbbJbMdXecrPW64vw+9G9rm0yVW/gp64Dj3mf9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (2603:10a6:803:5e::23)
 by VI1PR05MB6688.eurprd05.prod.outlook.com (2603:10a6:800:131::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 4 Jun
 2020 04:44:01 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::2405:4594:97a:13c]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::2405:4594:97a:13c%2]) with mapi id 15.20.3045.024; Thu, 4 Jun 2020
 04:44:01 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>, "leon@kernel.org"
	<leon@kernel.org>
CC: "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Vu
 Pham <vuhuong@mellanox.com>, "davem@davemloft.net" <davem@davemloft.net>,
	"kuba@kernel.org" <kuba@kernel.org>, Leon Romanovsky <leonro@mellanox.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: Re: [PATCH net] net/mlx5: Don't fail driver on failure to create
 debugfs
Thread-Topic: [PATCH net] net/mlx5: Don't fail driver on failure to create
 debugfs
Thread-Index: AQHWONlf0HczwSm0LU6J7Vve55nvl6jFtfwAgAGDlACAAKpCAA==
Date: Thu, 4 Jun 2020 04:44:00 +0000
Message-ID: <cf22654ba1e726c3f3d1acf7eff2bc167de810c7.camel@mellanox.com>
References: <20200602122837.161519-1-leon@kernel.org>
	 <20200602192724.GA672@Ryzen-9-3900X.localdomain>
	 <20200603183436.GA2565136@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200603183436.GA2565136@ubuntu-n2-xlarge-x86>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.2 (3.36.2-1.fc32)
x-originating-ip: [73.15.39.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 852d27b9-1bcf-4608-751d-08d80841e6d1
x-ms-traffictypediagnostic: VI1PR05MB6688:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB66886EBC19996C4D7B1893D3BE890@VI1PR05MB6688.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:214;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sWA/bILKNrugs1lNoUt8QZIXT0KVlrz8M6v0m3H2yHp6lgr4W5k+Hj73l8xyAu3j9+Jwc4nBK2KgjkHdGPlFJa+Hnj2HjDDHcPRwtKq9rGd6evnjbDhhS0oqawsBE8nHjWjyEIi8D4GjWTzuQk6waZLa0o27nbhBNt4aNpmjc3ydftnYku3cskMq+oR15/NfSTzQOzkKl7QNutkLxaFo4WBzYj3f89N54/XFDWaQiZ3FJU+WeqwNUInZY7rHngTknER3lQkTvcmu9lCZh1SweBnd4/IX8R3GNZcyoqdrBD3IUTA8C6LT+lEAtl1KMWtbylaYeI2uVx/2LGamTqI+5XneN4U8tZtZNd5L09HaiLKazS2LYEBOKDs2vL8rBUNHv1eJIv7RaU2/i37crP2csA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB5102.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(376002)(39860400002)(136003)(396003)(366004)(346002)(66476007)(64756008)(91956017)(6512007)(186003)(26005)(110136005)(4326008)(6506007)(2616005)(316002)(66446008)(66556008)(54906003)(66946007)(86362001)(5660300002)(478600001)(76116006)(6486002)(2906002)(8936002)(36756003)(8676002)(966005)(71200400001)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: X484vt02thxq2Sh1gOhQScxb2iJLe4C8/W4xklHPpo/CPRNLEuOhvO4TQGxI/PRMnALiE5KewmHTuXTvZBSd9Jq2579oKk3PwpILtaA9BH5kTmjkDcDZQmd41Ja9v2dgVW+khK2w0EMZ80IWNX6TP8DtB/zfewq70/Nh3rZJWL8CPpw0FiE3ZUjWr7dDd6+QAquQ7xIsrC04zOeopVkvHGqFfTsmQY7EvqUcI9TAJLWnfZmkAV4R2IE6d39fueoJWUt8gtYjys5FCEoYI6EO2WLco3t7K9DzyResPTSBjBDESQgXmvjoduUtxYOShNb1eYWLcMtXEK+3/4itj3oYhCDE9R2HGDfQCG5dn9/dXUe7plZx7h7G7J0jR9JEgObD79cC7ARWV4nAI3mZr/cimGMmTKychqL0uUWMn+9ih5lTZVeDL2Igxqwd+dIStzO2rfiWV9bFmPQ7mZJx1EkFnx56Nwng4FzXdjrkZ7AOu3I=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <4FE1866C8E28294ABCC6F46494F72228@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 852d27b9-1bcf-4608-751d-08d80841e6d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 04:44:01.0158
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aZJMAaQ9JHJDoOk7hLA6c6luT7eoxiuXa9iHFz1ChQ0r1u7vZQizjMJ9kMSVUAngIX91I3HeSGBamTobVxLl2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6688
X-Original-Sender: saeedm@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector1 header.b=PuWDtqQJ;       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 saeedm@mellanox.com designates 40.107.15.52 as permitted sender)
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

On Wed, 2020-06-03 at 11:34 -0700, Nathan Chancellor wrote:
> On Tue, Jun 02, 2020 at 12:27:24PM -0700, Nathan Chancellor wrote:
> > On Tue, Jun 02, 2020 at 03:28:37PM +0300, Leon Romanovsky wrote:
> > > From: Leon Romanovsky <leonro@mellanox.com>
> > > 
> > > Clang warns:
> > > 
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning:
> > > variable
> > > 'err' is used uninitialized whenever 'if' condition is true
> > > [-Wsometimes-uninitialized]
> > >         if (!priv->dbg_root) {
> > >             ^~~~~~~~~~~~~~~
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
> > > uninitialized use occurs here
> > >         return err;
> > >                ^~~
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note:
> > > remove the
> > > 'if' if its condition is always false
> > >         if (!priv->dbg_root) {
> > >         ^~~~~~~~~~~~~~~~~~~~~~
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note:
> > > initialize
> > > the variable 'err' to silence this warning
> > >         int err;
> > >                ^
> > >                 = 0
> > > 1 warning generated.
> > > 
> > > The check of returned value of debugfs_create_dir() is wrong
> > > because
> > > by the design debugfs failures should never fail the driver and
> > > the
> > > check itself was wrong too. The kernel compiled without
> > > CONFIG_DEBUG_FS
> > > will return ERR_PTR(-ENODEV) and not NULL as expected.
> > > 
> > > Fixes: 11f3b84d7068 ("net/mlx5: Split mdev init and pci init")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> > 
> > Thanks! That's what I figured it should be.
> > 
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > 
> > > ---
> > > Original discussion:
> > > https://lore.kernel.org/lkml/20200530055447.1028004-1-natechancellor@gmail.com
> > > ---
> > >  drivers/net/ethernet/mellanox/mlx5/core/main.c | 5 -----
> > >  1 file changed, 5 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > index df46b1fce3a7..110e8d277d15 100644
> > > --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > @@ -1275,11 +1275,6 @@ static int mlx5_mdev_init(struct
> > > mlx5_core_dev *dev, int profile_idx)
> > > 
> > >  	priv->dbg_root = debugfs_create_dir(dev_name(dev->device),
> > >  					    mlx5_debugfs_root);
> > > -	if (!priv->dbg_root) {
> > > -		dev_err(dev->device, "mlx5_core: error, Cannot create
> > > debugfs dir, aborting\n");
> > > -		goto err_dbg_root;
> 
> Actually, this removes the only use of err_dbg_root, so that should
> be
> removed at the same time.
> 

Fixed this up and applied to net-next-mlx5, 
Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cf22654ba1e726c3f3d1acf7eff2bc167de810c7.camel%40mellanox.com.
