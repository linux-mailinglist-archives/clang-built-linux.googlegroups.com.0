Return-Path: <clang-built-linux+bncBC75PI4P4AARBE6SRL3QKGQEEWFVLSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id E16A51F6FA8
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 23:58:43 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id c12sf1936425lfk.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 14:58:43 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1591912723; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1DELa9qby8VDg3e2QbYve24oDwTstyzLBN8RWDRAKw1SUGQqAxeSAaiCFjm+t//6F
         x8d41ko1dDMtiwthh/9uLPWVv25nvnKsB3R2ppc6CC2mJIzPq2h7SY8R7IjDOw+9M+Zq
         cl5RoPnpdsnTuvW32yu6v8/8Gg0lFaTGiPYAEpBN3diPTNCmedz9JqW27+5xOt0VPJ0j
         WD4TuJ8531OrJx39zX5+2R0ZYPyCKAcXZkjQGd6RFFyAqu8Zx+reZkhywPkcHt1JuAg0
         O0hWJuckphi/MXlKCyiDTiLyErDlAgzZPLH2JFVNF3l9+riLaP0Y3CoZuzCY8CacY9zG
         R3HA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=0l4oRpTBuq7sbq1lFVCHkoPTZmLKSgfyDcJ94nXQlgw=;
        b=XNwN1O/cgSJvHMxXT+w+NEiTBiYCxkjOJqY19/izhWfpJAqwg2M0fjZ2loCoorglXn
         Bru7wJg4kSBJGyf1bCfueNX5sZkKDxmgah/y6qqGbaGysguj1cESCqzfW26vUR7Ppl68
         aJMpA8b0jzFRUOzggaXYp+OdDthL8N+mfABwezE/X7AZuL4Qfr+vGriHxsbGad41IUfO
         pGN9Y+gaSHkFzC00zreAQT4oKvKXdC5VqueapFEeUgb3D4Zba12C6VI/oPbfgeXmnHbk
         Vqomlpo/VCVDmEph02LSzNgP1NVPGL/ghEfet42O0u5e47Al1QSo1nNmQ1tAm3f5ki2s
         uPog==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=YVznpXl8;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.0.64 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0l4oRpTBuq7sbq1lFVCHkoPTZmLKSgfyDcJ94nXQlgw=;
        b=lRo4I/0qpGZpMChlu+ipVPbsbGSJIPudiyQQmZh/nD9Lpi59luLbwwB23Xo4ehx1Dt
         OfDVRsoqmUz+SVbEUkUAUhTkL/eioxs6amKpU20Q+wtu4sqPfpS8YubguoniXur/yCfK
         6GL6RAVZ2ObMTE8nV2lK7lFL05Z6d3MExh/JqpOao7Ng0FBYknZJzWP/phmOWNHaN+bL
         1AajeqmgzZZ8R5mdMQZ37SUf+F+fHemoc+D3ujB6AUHPAF06l932ulICchMe/IzVis0t
         pSrpk6+79QvNy+E40mWTMJOzYahpTPp3coYdhf3CBHs0JRVsj+zqAYCeU0W5G+jb+Zl/
         Qe1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0l4oRpTBuq7sbq1lFVCHkoPTZmLKSgfyDcJ94nXQlgw=;
        b=s24pPT9cf2AwAg267ff3EWqL7oHhAQL3mvQVgsdFi7dDA+66BNU3HM77pf7yuFcD4P
         Wta6n5pL4WXtIIkEL6iAR9g+VDyFXk03zly732y8BU1AYplxirFkUSzhxHU+l9+/SG4z
         ukQDmw8aLtb1U0Tm/1aWjq/iBo+UPMUuNfWHOfJ3yhmooafzS48buLMRk0hE98IN5spR
         20gI+2ZzQTTelfCeOJk/rTPzMArqPNgxIfDNCNjMC+pg/4+7lUbL99lBU1rxCgNZrEc6
         7PP4Iv0+SKLDw5OFb6JEv57w3a2RE/B5RMtljR0AdUlPX6WhgD/cHcWKrW6W5kFRTkUu
         oxGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KslxDZV9NUYkf2UX1cib1QTIVRQhvj0EgBu3KrM8UOiizRy7a
	DOSvLp8ax0X1oyztW7izAog=
X-Google-Smtp-Source: ABdhPJxMiK5FPDktpw8OZcGflyWRszisYDg+Hffaf81NEKnVEYTRvoUOhGifZkiO+sQtD34VabZwSw==
X-Received: by 2002:a2e:b550:: with SMTP id a16mr5607390ljn.345.1591912723237;
        Thu, 11 Jun 2020 14:58:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d2:: with SMTP id d18ls793025ljj.1.gmail; Thu, 11 Jun
 2020 14:58:42 -0700 (PDT)
X-Received: by 2002:a2e:7011:: with SMTP id l17mr5682480ljc.424.1591912722620;
        Thu, 11 Jun 2020 14:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591912722; cv=pass;
        d=google.com; s=arc-20160816;
        b=So4V2w1h0rH783lp8oVfy2Eg0ZtAi8GwQJyT33mwiP2SgtKAOzeCcPqHrnLO8LM/Rg
         ddAKYU254j4ziQh2BsdhIIYi3r1Vl5c9aP9OwR5tCfzcX44WB1AcAzZudOIgCSX4R6VJ
         /YbTwUCEUCe51HMQCxfjUoXVetZH8RBUoCJE7gH0gumwQriqB+ziAOop16oUUB0o+/on
         Kp2hH3nzcNcIG6IXvKx3nIDzLI+hzdRcA32K2HRlFGcipojk2NF23sEcW6D2HcKKouJO
         wtD8i8mZBKiQL2TYSeCTOmfUqeOn+761zPymhEACiiu3dikRWxAPU5ai/YXUhzSvSb7b
         t6gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=ArkoSBXEc+rMrUvykXW859ZUFbAnZ3aNVjM/8HqUDaw=;
        b=E7bKwyQ4k+hKv8ZUfgCteTdly3aJMJvJaWrcOel2zTs/6D28iTfiV1mB8LDgop5rmN
         uEY/bfSre23qjYv9CaDy3SAeqDqumFQ22PsbtfP5ZGsJzEwY29GT7tLrHhI06kaa4CT4
         HDmoWnjDtPsmf6KJckN0hfY6IM+BINDJP9ETeTZeOdu3oRHTgaVt+drK++IGRIsyP9Ki
         Cgh77RIWlwvPztVxZHB+y2OxyzeV9BtMrBR3j0ymvC/aN5LVw3TP8M8UScW3SAYKGIVK
         DP8vMCSBZNJJXBSfUQ1wQ59D1dUguLfJbOLyoCHUnblaTnAm5D38fzBI7OKWUUqF+yj6
         xJqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=YVznpXl8;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.0.64 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00064.outbound.protection.outlook.com. [40.107.0.64])
        by gmr-mx.google.com with ESMTPS id c144si153230lfg.5.2020.06.11.14.58.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 14:58:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of saeedm@mellanox.com designates 40.107.0.64 as permitted sender) client-ip=40.107.0.64;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzcBbT8lraTPBtvOb7nLBJKLUsOVjHL3sQNO46JLg7xZHdFzIBxwwEcSOOIo/VQkWgUzx/8X9IqHYq4dDOoKHc2nXu29lYjJRttCmGtnXB9uHtZQuFWLQaFHh3x7FaOLinu5qYxn63Vj+5iFDYyuzaFTEj2KVZQTLO+QzOiwbuOX9mwwSJfI9Zh/2n5Fwrv60L7TSvH27Xl1+f7HZ3z5bIBHauBk8rc3O000rut8FYd7lF14e9QdKz0cx/TULZJ31nizxYuPgfu5zzvVWMSlJ7JOUoxw3NTcZFIbwJGs9BMBf7HBQBOyI6oYIw49qwqvGX4zgIeAw8DbDmYL+NpzUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ArkoSBXEc+rMrUvykXW859ZUFbAnZ3aNVjM/8HqUDaw=;
 b=EnhFeh/mRkuYqOUsFyq3gtyPkmlwwfIZzFnG6MCDPjXAEnqSQyBRi38RT6SEw01VbPMRqjQGfDzA8HWsmahGCs6RkxDwhx+e4JQn6QR4KiqE3egEmU2A3GZJyRptEVbpVm1/4XOZFTp6vX7DAAEzN37ZK+5M1NKqihCnOvUoqso+uyaz5LcrSw0FlpGcPap2fG6VURhk1N/ia8BlTvDMVaDY1YapL04t1c91WKDpuwyqjQ7CiitCJkQE0z0bOzw5qMGJNAheH4R2a8HpSTyc7eAF/h1Hg2hxWLt/vKSGIVQ0EuazOpHxlTpeKafnQ7SdTZQRCU8T0nzAPu5pnEc7Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (2603:10a6:803:5e::23)
 by VI1PR05MB5119.eurprd05.prod.outlook.com (2603:10a6:803:a7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Thu, 11 Jun
 2020 21:58:41 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::2405:4594:97a:13c]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::2405:4594:97a:13c%2]) with mapi id 15.20.3088.021; Thu, 11 Jun 2020
 21:58:40 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>
CC: "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, Leon Romanovsky
	<leonro@mellanox.com>, Vu Pham <vuhuong@mellanox.com>, "davem@davemloft.net"
	<davem@davemloft.net>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "kuba@kernel.org" <kuba@kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "leon@kernel.org"
	<leon@kernel.org>
Subject: Re: [PATCH net] net/mlx5: Don't fail driver on failure to create
 debugfs
Thread-Topic: [PATCH net] net/mlx5: Don't fail driver on failure to create
 debugfs
Thread-Index: AQHWONlf0HczwSm0LU6J7Vve55nvl6jFtfwAgAGDlACAAKpCAIAHYF+AgATBCAA=
Date: Thu, 11 Jun 2020 21:58:40 +0000
Message-ID: <a18dab795ca7dc85744dc5b45bb6e48caa148f51.camel@mellanox.com>
References: <20200602122837.161519-1-leon@kernel.org>
	 <20200602192724.GA672@Ryzen-9-3900X.localdomain>
	 <20200603183436.GA2565136@ubuntu-n2-xlarge-x86>
	 <cf22654ba1e726c3f3d1acf7eff2bc167de810c7.camel@mellanox.com>
	 <20200608212243.GA2072362@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200608212243.GA2072362@ubuntu-n2-xlarge-x86>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.3 (3.36.3-1.fc32)
x-originating-ip: [73.15.39.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7665898f-29e0-4198-5419-08d80e5299f9
x-ms-traffictypediagnostic: VI1PR05MB5119:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB51194957E816C8E99ADC8998BE800@VI1PR05MB5119.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q6+7/Ro7Hfjp5Kz/NuTspVpJdhBtyoWKF9GJT+7ccwSxLTaKKt2qaupS7rvbgBVzgPifgbOQlK3CnKar2UOixyMHN9MlgRYVR/k87ime6FNah8kkX5m04GNUJZVVGwR1IO2U74FlQ0oWF9iIaKhBFdDeqglGiAphuZf/Lqzp6mO//HgOUXKJz4IMdpGSxgnmd+5OeoI87gurtjM6iGnzMFK8bQ00yx4/jVmrX68rWekdHw4NYN8O15+H7cU05lEvOSiBYAKGOF0dTInq/xMduW5KK1qMvH2LAw2cTguVgz7EExRXfj/spLS7+bP2OgdvAaN+3xmfe+jG5jKWALhAZcKqpqaQnfwF8akG4AAcC2yF5LJo1qdB+NY47ylRvd+/40utL6rCSiuT7cYy+KMFZw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB5102.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(346002)(136003)(396003)(39860400002)(376002)(366004)(2616005)(6916009)(186003)(54906003)(36756003)(2906002)(66446008)(64756008)(478600001)(66946007)(966005)(66476007)(76116006)(71200400001)(316002)(91956017)(66556008)(6506007)(5660300002)(8676002)(86362001)(6486002)(83380400001)(6512007)(26005)(8936002)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: cdotI/LHDqgPBxaaKMv18eE42MqWeXEheUv4yURjK3P7ADBci9ZZg25CnyUMsjTPPI8QJ8iFETS9PugOcSllNcT4Iy/31RJQRBlfKXIaB0+mPow+bQyQBGvb/hsVOMLjFgIjOnhV/50qAq999iB4K2g3A/04HRFi0Osl2sl5gzQzIFJTyosnwlx6ly17W67VfO+N5tjI91OAbi2964K2dzO0rBWd6ctlrRN/PWLsVLI1b2qb2CuehpQwNq33oGKQIZd0LH6vo0UaRamDW0z7ApC74SyS2fzJOTKIPl6z/D/bBEssCebSzP1aCDptTIc41MN30/I/3IW6cf71/iwUWWSbwineBbzXoafgAjuFpcrccl6iKkEfRbCpVtvN6jJRvE6ErbCIp96KiReN/R+nJOjxTf/i0Jo+ts9a3CMuQnea85pzx6TwhAM6RgKsQinPGe9c5o47udXglbbA6CR9T3ih+2//kLgPNSxPSWAMg5M=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <4284D72C812BC8448096C90AA1DA7D0A@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7665898f-29e0-4198-5419-08d80e5299f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 21:58:40.4347
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TlCfMvRg/gAoN61xkPXTcsGjNCZqjT32p+ff6O+qrTmdSVspi8VbhoaQzWkUwUUkmlpJ5zw1REuW4w8Qzm0rNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5119
X-Original-Sender: saeedm@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector1 header.b=YVznpXl8;       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 saeedm@mellanox.com designates 40.107.0.64 as permitted sender)
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

On Mon, 2020-06-08 at 14:22 -0700, Nathan Chancellor wrote:
> On Thu, Jun 04, 2020 at 04:44:00AM +0000, Saeed Mahameed wrote:
> > On Wed, 2020-06-03 at 11:34 -0700, Nathan Chancellor wrote:
> > > On Tue, Jun 02, 2020 at 12:27:24PM -0700, Nathan Chancellor
> > > wrote:
> > > > On Tue, Jun 02, 2020 at 03:28:37PM +0300, Leon Romanovsky
> > > > wrote:
> > > > > From: Leon Romanovsky <leonro@mellanox.com>
> > > > > 
> > > > > Clang warns:
> > > > > 
> > > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6:
> > > > > warning:
> > > > > variable
> > > > > 'err' is used uninitialized whenever 'if' condition is true
> > > > > [-Wsometimes-uninitialized]
> > > > >         if (!priv->dbg_root) {
> > > > >             ^~~~~~~~~~~~~~~
> > > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
> > > > > uninitialized use occurs here
> > > > >         return err;
> > > > >                ^~~
> > > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note:
> > > > > remove the
> > > > > 'if' if its condition is always false
> > > > >         if (!priv->dbg_root) {
> > > > >         ^~~~~~~~~~~~~~~~~~~~~~
> > > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note:
> > > > > initialize
> > > > > the variable 'err' to silence this warning
> > > > >         int err;
> > > > >                ^
> > > > >                 = 0
> > > > > 1 warning generated.
> > > > > 
> > > > > The check of returned value of debugfs_create_dir() is wrong
> > > > > because
> > > > > by the design debugfs failures should never fail the driver
> > > > > and
> > > > > the
> > > > > check itself was wrong too. The kernel compiled without
> > > > > CONFIG_DEBUG_FS
> > > > > will return ERR_PTR(-ENODEV) and not NULL as expected.
> > > > > 
> > > > > Fixes: 11f3b84d7068 ("net/mlx5: Split mdev init and pci
> > > > > init")
> > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> > > > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > > Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> > > > 
> > > > Thanks! That's what I figured it should be.
> > > > 
> > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > 
> > > > > ---
> > > > > Original discussion:
> > > > > https://lore.kernel.org/lkml/20200530055447.1028004-1-natechancellor@gmail.com
> > > > > ---
> > > > >  drivers/net/ethernet/mellanox/mlx5/core/main.c | 5 -----
> > > > >  1 file changed, 5 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > > b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > > index df46b1fce3a7..110e8d277d15 100644
> > > > > --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > > +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > > @@ -1275,11 +1275,6 @@ static int mlx5_mdev_init(struct
> > > > > mlx5_core_dev *dev, int profile_idx)
> > > > > 
> > > > >  	priv->dbg_root = debugfs_create_dir(dev_name(dev-
> > > > > >device),
> > > > >  					    mlx5_debugfs_root);
> > > > > -	if (!priv->dbg_root) {
> > > > > -		dev_err(dev->device, "mlx5_core: error, Cannot
> > > > > create
> > > > > debugfs dir, aborting\n");
> > > > > -		goto err_dbg_root;
> > > 
> > > Actually, this removes the only use of err_dbg_root, so that
> > > should
> > > be
> > > removed at the same time.
> > > 
> > 
> > Fixed this up and applied to net-next-mlx5, 
> > Thanks!
> > 
> 
> Hi Saeed,
> 
> I see this warning in mainline now, is this something you were
> planning
> to have merged this cycle or next? I see it in several configs so it
> would be nice if it could be resolved this one, since it was
> introduced
> by a patch in this cycle even though the core issue has been around
> for
> a few months.
> 

Hi Nathan, 

I just pulled this patch into net-mlx5, and will send it out in my net
PR today.


Thanks,
Saeed.


> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a18dab795ca7dc85744dc5b45bb6e48caa148f51.camel%40mellanox.com.
