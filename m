Return-Path: <clang-built-linux+bncBC75PI4P4AARBHEL33UQKGQEWLDS7HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C66B721FA
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 00:09:33 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id c12sf9550577ljj.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 15:09:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1563919773; cv=pass;
        d=google.com; s=arc-20160816;
        b=HKm6OG+B/H+lbCUbFaqPHRzNZmdUS+GKsZgfEautqLTTOYM0g94GeI5zulhOHxS49d
         YblsKvBYWzJiunPG99yO4rSV4nqgFy6MrI4+K4cfI23VuxVJRtDpA5MdzotoT6r7Aj2i
         /G1x7hPQPKV9vymEy+0MQD4jjB7kUk6EwainlnbDJ4lGETeTzZL1+6sHsQtX/1Ld0Rt5
         9lSPNeEuvnwebiYwFvUYrfbt1ow/mogwC9tUv5C8E8rLeKRCpnhnT/M38cn0ejVt+b/G
         yqk70v/Kfd7j5we7ILkqpRxpx34YiFA08F+DNtdLEbUGWVll43gAct02ssTQYdnr8jq1
         bZ1Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=wu1hJpoz0OgELG9ze9caweIOkKzoRbSEww8vZehOUMs=;
        b=BSJ1lw+B0EYHlfo5PYrItXpo1cNquMiXkdo+Jy2tT1tPTCmc2YRRNOM8nPAdxqG8dN
         O0SDlAR5FoooXtdfD5qGOiWCUS0nma+JqF9T0ODo8rSzRwfb1OipUUazDCHO3VG4iVSP
         eOMcNYeZAPgB8nk4/ysEBBTVlIqbDWZUKJVwHAgwDj/qaijvpBPdp3CFWXO0JnCL1LxR
         3TrojRMLBuAbpk5OQsCI8PJIWAHWgjv3aDNba5ssTn9ZmOGHu56qfOJSc8HH24XNhC8i
         0INdqQAI32jb9qo1k6/ROy+6A5Rb7YKVK4PjeT4mGX0gROqsZmCUT8hHAwykwyEGDhtn
         Pqgg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector2 header.b="l/Gfzq3K";
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.15.57 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wu1hJpoz0OgELG9ze9caweIOkKzoRbSEww8vZehOUMs=;
        b=Ztkj7DTqGeK5MR+Y/0UEoqb7sGDNka0gI1EOWNrhVqMynXoGNIEhgxxMxpobfO+Ool
         I/ElBonHIOC7+CRPQWQ5+qa0acIoLUEvTUBbkffJFKyEKj3H01TWJDqJqMtvo2NusWg3
         sv070Bv3LwZk7WEY49FX9Cnv05cQibLiHCUr9NqX6w1UurMD7KW+vuxX9kK5gxA45Fqk
         yNxdT9DDTzOIClxzYsuPfpjUeW2Mifyy41ExoogMG1n9eB9eXlZgqEXzDycOH+UzZ2gt
         8+tOcJOWDWiKKe4wNdPgPA8RVidu9gvPJsdns+dgMM4tOAeF+1KPT4XB71hnHQYTm6Wv
         lu6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wu1hJpoz0OgELG9ze9caweIOkKzoRbSEww8vZehOUMs=;
        b=eKjkIKiQYJnbWqKK8h/x2ThNvbZN/EW2vtKK9+kScSszivcjE/uYZvASmrECCfh6Sl
         /QU1/+vDV7q7MqlkUPyHoieKkeSPyJrvdB6Q6WHVcFnaAOJg24RlKAOx8DizKFXSJ+Z7
         q9V64iGqF496BmCIUr6lE68Y0dvPqUKEA0B6SNjxZ3GuZq2kwsFoi81dX4rAl9025kUU
         6e8scNzUVS6JdC6P7UGomARO3eCYm4a1jTIwL4d86h9NJ+U+zODERGC7c9uU306vMbmi
         Hb5PHbqu30pIV/L83BG4t25mVSI6ajPaL746VCa61I7RFjATcW2mL3FfqfFCl7ICovVw
         ub0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyrh5ceTziGWDxuC5ZXjsWYHth+VT/W98XCz2sdDs/omSC2lDc
	wNqTR3OYmBuze19xTuzmOD4=
X-Google-Smtp-Source: APXvYqzdMwWRrcGE0hLDIM/f5ViwB6kDKhXQ0g4ViNArJHI1yWbwXeIFoDKmd0phJAxTZxc4+lfBTg==
X-Received: by 2002:a2e:4b12:: with SMTP id y18mr2268342lja.238.1563919773023;
        Tue, 23 Jul 2019 15:09:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9643:: with SMTP id z3ls5041299ljh.7.gmail; Tue, 23 Jul
 2019 15:09:32 -0700 (PDT)
X-Received: by 2002:a2e:9950:: with SMTP id r16mr23521645ljj.173.1563919772565;
        Tue, 23 Jul 2019 15:09:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563919772; cv=pass;
        d=google.com; s=arc-20160816;
        b=k0PQx3OoAA3waT4uvjQiu3D6tgzoXO5VrMoBRQPk0M1Vmsd6dyWRtIjhXKftOgZg/S
         lyhzQO31CwDv3RwRbZZS3fIe717e8Kw693e2O1dr2sG1AIutYVEb6lrqPC6tjJE1+Ep3
         8Y8uWkkvYjBvsfzYZiCo20xmde3pNicdmmCtUPMD+TOrEz9B9nUodnicId/OPQ9NdSiI
         gkxgCFLjvfTphh0vuQtbNZuQpQvz8GqCkSxwuiURkuOyOBRPNdbDitNnTFE4BUVV1BaI
         ooOvibaEl1fRoCrPZViwAWTiSqv5LTCqcQ+5NsYjWM095tX9E3rBqvDqSmE9icLREeq3
         tHtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=XUgcURHfBDQDRmujLonKqDPZyQx0QFaUwC0jVuzPfko=;
        b=CPJi2VQ5SqfAb1s/k+Ef7PkLDhn5T2BNPpKXYjVxIg1MxPp3Y/yCBLT2Bj/7D2EuUf
         jze0stYEeHvfzY8xcVVzot0ICU5zZGY/NJwmBRQM9+LQuaJtiKjw2deO/YTJGiWUYvL0
         gfp9whhzYybRV6rf1zF47sMwoVt0Mqm5eIwquL4QcvMwhb8BE1WWhNaSWD+VeSCLlSyO
         u3O3CtvMWwPhmfXfXYyfQZ9EnoNoJUy+FEB9F2YkZ4BeFSVxpRD5PfuEKyVRnqVCgLyc
         t/E6A+T3iJf/MoIyv+YWp56err8QLxWAVISKvWYzht2ow8ETe0mDxtOX9+flKmqBX0Hv
         sO0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector2 header.b="l/Gfzq3K";
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.15.57 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150057.outbound.protection.outlook.com. [40.107.15.57])
        by gmr-mx.google.com with ESMTPS id s14si2545699ljg.4.2019.07.23.15.09.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Jul 2019 15:09:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of saeedm@mellanox.com designates 40.107.15.57 as permitted sender) client-ip=40.107.15.57;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Knxp4e2U65DX+PoIORIoEGrQ4cObKgNSwZFswRfLRJwgNL+Ryy2ozONSFK9N8BdwkBNQedzFM6R7/Jz4yfIM4kuO41JZFAWsmPDnxe1rtylxoI8yOEJB9MZ0dlbt/1YcKw8Kub3OI+1kTyiD/qy134wE8yzstHUe6Xk7Zp8me1BqHDR597W4hCMurkcnoEHB86AV+8Vmdqw5ERgc7FZSSdAKdPIIYtkGJmt1jU/CsavtKDNcBML7Uemm3z3VHEkY2ZRl37GEG/LVtLam8u7i3j+6hse1UTPCpiZM+dZuXNSAZT23Cic2dSLvluaeRR8MU23p3ldsOdnVr3whBhzT5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XUgcURHfBDQDRmujLonKqDPZyQx0QFaUwC0jVuzPfko=;
 b=VzfHiYZmEZOUWci5zpHERpI324pLT2S6tYIgk++tPnvzbUffbfyYA1V7c4GVMSTce8Nb6QG+PdSG39TWFagso0xcQ9LmRlZPj+rQGvESumB82I8EkQH13V3/Z+Yx+24T+OEIMD7UBEF2sd7UDl3ygT/fWwbQUx5EQK8UOxR4toPWj3+/ldj8DJle5J4FLqUgUMnqTX2ZpaiLD+LM8CFJ7y6QGikDGJtwetLhHMHkcgfai7hD5XfgLONBU9ih8X+GhsFTtsriGpoHZHyhQisfKTyX71WDRQa6tJKGVDfPJKp9gPIvGrG4wd2p5Eiskgy5KCahWgZVxHdoF9qMXMIReQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
Received: from DB6PR0501MB2759.eurprd05.prod.outlook.com (10.172.227.7) by
 DB6PR0501MB2680.eurprd05.prod.outlook.com (10.172.226.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 22:09:28 +0000
Received: from DB6PR0501MB2759.eurprd05.prod.outlook.com
 ([fe80::7148:ecd4:3a7f:f3f]) by DB6PR0501MB2759.eurprd05.prod.outlook.com
 ([fe80::7148:ecd4:3a7f:f3f%11]) with mapi id 15.20.2094.011; Tue, 23 Jul 2019
 22:09:27 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "davem@davemloft.net" <davem@davemloft.net>, Tariq Toukan
	<tariqt@mellanox.com>, "arnd@arndb.de" <arnd@arndb.de>
CC: "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"jackm@dev.mellanox.co.il" <jackm@dev.mellanox.co.il>, Erez Alfasi
	<ereza@mellanox.com>, Moshe Shemesh <moshe@mellanox.com>, Eli Cohen
	<eli@mellanox.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Jiri Pirko <jiri@mellanox.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH net-next] [net-next] mlx4: avoid large stack usage in
 mlx4_init_hca()
Thread-Topic: [PATCH net-next] [net-next] mlx4: avoid large stack usage in
 mlx4_init_hca()
Thread-Index: AQHVQJ57thGXqeHaWUeyAhcQSxLAJKbYxVaA
Date: Tue, 23 Jul 2019 22:09:27 +0000
Message-ID: <8a76a11a6a7ad2dae93f52b9e243aa79103279ae.camel@mellanox.com>
References: <20190722150204.1157315-1-arnd@arndb.de>
In-Reply-To: <20190722150204.1157315-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.32.4 (3.32.4-1.fc30)
x-originating-ip: [209.116.155.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07297a12-0b6f-4d77-27ae-08d70fba6dfd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:DB6PR0501MB2680;
x-ms-traffictypediagnostic: DB6PR0501MB2680:
x-microsoft-antispam-prvs: <DB6PR0501MB26807926B88F2F4E7B293920BEC70@DB6PR0501MB2680.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(346002)(136003)(396003)(39860400002)(366004)(189003)(199004)(14454004)(66476007)(66446008)(4326008)(8676002)(76116006)(66946007)(64756008)(66556008)(54906003)(110136005)(91956017)(76176011)(102836004)(68736007)(316002)(5660300002)(66066001)(86362001)(7736002)(486006)(6486002)(118296001)(478600001)(26005)(71190400001)(99286004)(8936002)(71200400001)(53936002)(2616005)(6512007)(476003)(305945005)(25786009)(446003)(2906002)(6246003)(81156014)(14444005)(256004)(36756003)(229853002)(6116002)(58126008)(2501003)(186003)(3846002)(81166006)(6506007)(11346002)(6436002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB6PR0501MB2680;H:DB6PR0501MB2759.eurprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4kna+UzpsHSKqlrFYANndPlg/i2Z4omXh4VRfZOsPGaxzhBaWTaGxnhmRHErYnoJPa4T99mCw53bMmFhNmrnSdg5PWvPPNlSkWlb5W4spZifgdPKfqf5Mv6ZQLJotMiafwBdj4imd1aWpWYV1KFH/6S1tyb1Dc660fgkkk0kIS3yp2+zEFhcqgdPTvX6uWmaH9bWhFVguzdpb6tr2l+GyF3woVc3d7pXBeOrx0l8slB9tXXen/ZE7K/w8NxESyeq/xIiIzkDBEAipfrdjMJA1menbKEGSwb/MHIwh1VpRQTfE39ruA+4eVrw82nQSEJihSqwCCBgMOIQal2XEQ3fl5YvO/LmB67xlY8MH4d7B82HJTfsUtAvHZnnC3unXJ3h32OMjlhYiBYiQ5TCFFqMqvicMYfdYYPAKVqVFQmSDjY=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <088FEE3FCBC0FD40BE612FD7F24EE14C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07297a12-0b6f-4d77-27ae-08d70fba6dfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 22:09:27.8526
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: saeedm@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2680
X-Original-Sender: saeedm@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector2 header.b="l/Gfzq3K";       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 saeedm@mellanox.com designates 40.107.15.57 as permitted sender)
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

On Mon, 2019-07-22 at 17:01 +0200, Arnd Bergmann wrote:
> The mlx4_dev_cap and mlx4_init_hca_param are really too large
> to be put on the kernel stack, as shown by this clang warning:
> 
> drivers/net/ethernet/mellanox/mlx4/main.c:3304:12: error: stack frame
> size of 1088 bytes in function 'mlx4_load_one' [-Werror,-Wframe-
> larger-than=]
> 
> With gcc, the problem is the same, but it does not warn because
> it does not inline this function, and therefore stays just below
> the warning limit, while clang is just above it.
> 
> Use kzalloc for dynamic allocation instead of putting them
> on stack. This gets the combined stack frame down to 424 bytes.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>

> ---
>  drivers/net/ethernet/mellanox/mlx4/main.c | 66 +++++++++++++------
> ----
>  1 file changed, 39 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c
> b/drivers/net/ethernet/mellanox/mlx4/main.c
> index 1f6e16d5ea6b..07c204bd3fc4 100644
> --- a/drivers/net/ethernet/mellanox/mlx4/main.c
> +++ b/drivers/net/ethernet/mellanox/mlx4/main.c
> @@ -2292,23 +2292,31 @@ static int mlx4_init_fw(struct mlx4_dev *dev)
>  static int mlx4_init_hca(struct mlx4_dev *dev)
>  {
>  	struct mlx4_priv	  *priv = mlx4_priv(dev);
> +	struct mlx4_init_hca_param *init_hca = NULL;
> +	struct mlx4_dev_cap	  *dev_cap = NULL;
>  	struct mlx4_adapter	   adapter;
> -	struct mlx4_dev_cap	   dev_cap;
>  	struct mlx4_profile	   profile;
> -	struct mlx4_init_hca_param init_hca;
>  	u64 icm_size;
>  	struct mlx4_config_dev_params params;
>  	int err;
>  
>  	if (!mlx4_is_slave(dev)) {
> -		err = mlx4_dev_cap(dev, &dev_cap);
> +		dev_cap = kzalloc(sizeof(*dev_cap), GFP_KERNEL);
> +		init_hca = kzalloc(sizeof(*init_hca), GFP_KERNEL);
> +
> +		if (!dev_cap || !init_hca) {
> +			err = -ENOMEM;
> +			goto out_free;
> +		}
> +
> +		err = mlx4_dev_cap(dev, dev_cap);
>  		if (err) {
>  			mlx4_err(dev, "QUERY_DEV_CAP command failed,
> aborting\n");
> -			return err;
> +			goto out_free;
>  		}
>  
> -		choose_steering_mode(dev, &dev_cap);
> -		choose_tunnel_offload_mode(dev, &dev_cap);
> +		choose_steering_mode(dev, dev_cap);
> +		choose_tunnel_offload_mode(dev, dev_cap);
>  
>  		if (dev->caps.dmfs_high_steer_mode ==
> MLX4_STEERING_DMFS_A0_STATIC &&
>  		    mlx4_is_master(dev))
> @@ -2331,48 +2339,48 @@ static int mlx4_init_hca(struct mlx4_dev
> *dev)
>  		    MLX4_STEERING_MODE_DEVICE_MANAGED)
>  			profile.num_mcg = MLX4_FS_NUM_MCG;
>  
> -		icm_size = mlx4_make_profile(dev, &profile, &dev_cap,
> -					     &init_hca);
> +		icm_size = mlx4_make_profile(dev, &profile, dev_cap,
> +					     init_hca);
>  		if ((long long) icm_size < 0) {
>  			err = icm_size;
> -			return err;
> +			goto out_free;
>  		}
>  
>  		dev->caps.max_fmr_maps = (1 << (32 - ilog2(dev-
> >caps.num_mpts))) - 1;
>  
>  		if (enable_4k_uar || !dev->persist->num_vfs) {
> -			init_hca.log_uar_sz = ilog2(dev->caps.num_uars) 
> +
> +			init_hca->log_uar_sz = ilog2(dev-
> >caps.num_uars) +
>  						    PAGE_SHIFT -
> DEFAULT_UAR_PAGE_SHIFT;
> -			init_hca.uar_page_sz = DEFAULT_UAR_PAGE_SHIFT -
> 12;
> +			init_hca->uar_page_sz = DEFAULT_UAR_PAGE_SHIFT
> - 12;
>  		} else {
> -			init_hca.log_uar_sz = ilog2(dev-
> >caps.num_uars);
> -			init_hca.uar_page_sz = PAGE_SHIFT - 12;
> +			init_hca->log_uar_sz = ilog2(dev-
> >caps.num_uars);
> +			init_hca->uar_page_sz = PAGE_SHIFT - 12;
>  		}
>  
> -		init_hca.mw_enabled = 0;
> +		init_hca->mw_enabled = 0;
>  		if (dev->caps.flags & MLX4_DEV_CAP_FLAG_MEM_WINDOW ||
>  		    dev->caps.bmme_flags & MLX4_BMME_FLAG_TYPE_2_WIN)
> -			init_hca.mw_enabled = INIT_HCA_TPT_MW_ENABLE;
> +			init_hca->mw_enabled = INIT_HCA_TPT_MW_ENABLE;
>  
> -		err = mlx4_init_icm(dev, &dev_cap, &init_hca,
> icm_size);
> +		err = mlx4_init_icm(dev, dev_cap, init_hca, icm_size);
>  		if (err)
> -			return err;
> +			goto out_free;
>  
> -		err = mlx4_INIT_HCA(dev, &init_hca);
> +		err = mlx4_INIT_HCA(dev, init_hca);
>  		if (err) {
>  			mlx4_err(dev, "INIT_HCA command failed,
> aborting\n");
>  			goto err_free_icm;
>  		}
>  
> -		if (dev_cap.flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS) {
> -			err = mlx4_query_func(dev, &dev_cap);
> +		if (dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS) {
> +			err = mlx4_query_func(dev, dev_cap);
>  			if (err < 0) {
>  				mlx4_err(dev, "QUERY_FUNC command
> failed, aborting.\n");
>  				goto err_close;
>  			} else if (err & MLX4_QUERY_FUNC_NUM_SYS_EQS) {
> -				dev->caps.num_eqs = dev_cap.max_eqs;
> -				dev->caps.reserved_eqs =
> dev_cap.reserved_eqs;
> -				dev->caps.reserved_uars =
> dev_cap.reserved_uars;
> +				dev->caps.num_eqs = dev_cap->max_eqs;
> +				dev->caps.reserved_eqs = dev_cap-
> >reserved_eqs;
> +				dev->caps.reserved_uars = dev_cap-
> >reserved_uars;
>  			}
>  		}
>  
> @@ -2381,14 +2389,13 @@ static int mlx4_init_hca(struct mlx4_dev
> *dev)
>  		 * read HCA frequency by QUERY_HCA command
>  		 */
>  		if (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS) {
> -			memset(&init_hca, 0, sizeof(init_hca));
> -			err = mlx4_QUERY_HCA(dev, &init_hca);
> +			err = mlx4_QUERY_HCA(dev, init_hca);
>  			if (err) {
>  				mlx4_err(dev, "QUERY_HCA command
> failed, disable timestamp\n");
>  				dev->caps.flags2 &=
> ~MLX4_DEV_CAP_FLAG2_TS;
>  			} else {
>  				dev->caps.hca_core_clock =
> -					init_hca.hca_core_clock;
> +					init_hca->hca_core_clock;
>  			}
>  
>  			/* In case we got HCA frequency 0 - disable
> timestamping
> @@ -2464,7 +2471,8 @@ static int mlx4_init_hca(struct mlx4_dev *dev)
>  	priv->eq_table.inta_pin = adapter.inta_pin;
>  	memcpy(dev->board_id, adapter.board_id, sizeof(dev->board_id));
>  
> -	return 0;
> +	err = 0;
> +	goto out_free;
>  
>  unmap_bf:
>  	unmap_internal_clock(dev);
> @@ -2483,6 +2491,10 @@ static int mlx4_init_hca(struct mlx4_dev *dev)
>  	if (!mlx4_is_slave(dev))
>  		mlx4_free_icms(dev);
>  
> +out_free:
> +	kfree(dev_cap);
> +	kfree(init_hca);
> +
>  	return err;
>  }
>  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8a76a11a6a7ad2dae93f52b9e243aa79103279ae.camel%40mellanox.com.
