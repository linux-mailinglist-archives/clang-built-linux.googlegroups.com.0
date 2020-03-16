Return-Path: <clang-built-linux+bncBC75PI4P4AARBT6ZX7ZQKGQEVROAFKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF7F18749E
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:17:04 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id w6sf9600823wrm.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 14:17:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1584393424; cv=pass;
        d=google.com; s=arc-20160816;
        b=WUxaz9bvFggx5C5uOJ91TUakvQDIpQjzLM9uczF8Nd8/92LGbZFZ2WUVWn1+tKV30a
         EnBqU+VLDF74SJ3lsxtteVuBoVbmFJpNOHFcy+hA5ANY065pZ51pzB4KfAM157VBiD3+
         JeJWf5saPmNLRhayAEp05TcyNa40wzV4INIEaoM2req21AYORD0dDgXEb6hTkMSYfOK/
         1GTA7ZkSPkXyx6fMZgM57A7t5KKMmqhKBsPgqDCUmsWO6Iv3wu0c46aKWY7YbslWX4gK
         oDt5vJX8oo9cIdnTCVWuJKjMQoD6EaSU4a8GOrTl838DV3JfoI1qp+r8I9/zHzwkuO3h
         crNA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=6Kb3gf5yVhlgZAwaELjKizPmntPvZ2Cjb3EVlhu2ouY=;
        b=L1O2L0s6H6O5lydbPZOPgjIW5R85WgryZE0ZggA/c/ekaOlJWoI8aCihiqQ+BXLZ/m
         6r5/2xV6Ew9fCej4LSkiLs+UhK60K70GxOPNXNHDUeH7N+0qUgFMaBZJtpIEVmW8KtVM
         UWmmEJpVcvpwz1Es/9+U8VXF5/g0mhbpRol1meLiky5KOvvPsODQ/PSyRqwpkzzJkdrr
         a1h0PRyfW6//1b0wAcAY/5sx7Cn7zSgVJ2eNOTHhyk/EGPBADU1OGWli6/PY1bfFm9Vu
         V901JimZNr2Oau2q5BkoP4VKiwBwjZqz0F29M9xy75hMM5fwWFiYh5CWswkW88wCL6OZ
         QCvQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=ASILV4Dd;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.20.72 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Kb3gf5yVhlgZAwaELjKizPmntPvZ2Cjb3EVlhu2ouY=;
        b=kXZYi4WVX68mx5s138U+bkapeIAlOPvgiZ+SBaxo3GKMBlszP8pM2gqwc9Nq6Ve7ZA
         nrKzTyqfqgnEeVGmRKqPCRCqrZ6pl/2Bk/4DHtpka3ne42p25hBTH0+lAA8r+Pqoufnw
         Hc3de4mjx/P/zcL6A8KhgDlo9mv3+mQuPeLmuM8fM4K3kQ4fUf8Rb1oYC+A3pShILXrM
         ClrD1WqF+mueyqzwKiSRdDBw2nXBoZhL2P6Xbzs4o5fKJYlC3hyWEhMMOVUNj0JRSMF5
         CjA+YBJjJkYxXY8kizDYp1DlFIl0aAdiCc7pG5G5OKCzB9k9PKSxz6a74E/k6gAhF3Ox
         D38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Kb3gf5yVhlgZAwaELjKizPmntPvZ2Cjb3EVlhu2ouY=;
        b=mpEF8y/1wYWEPfBJa2rmz7wVOZwN6KQrSMAB4lGmUmBGLLddnkijVMB2UMAOLNsV+K
         8N0PzyDq8E+0g/U3TdgQ0nHQ/ZLR4+DuXtLU8YANy2xl1IT1l96XIQvO0o1gufRZNiVm
         RcCKAQUwlWuBNNcfpmO6SXkROlgHCjSpxb45M7cMaviEE189sYK4BPKDd+dq8Qrxl15Q
         C4t9SoW6gAuY5eTHVXRHKwzy0LNPjYuZeDMYZxpxuUUJYiW8jMLOQ9AxXkvAmxfRDtzn
         c7S6ayspJ3l2VuPc+XxyKc8TFCfy2i6OkVe2dFdvsYERi1guhNAPNnPPN4u+gRJV5Ok8
         BopA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1jRjlKEAC7uiEbT1fXd9sFq/c1LvJTGvKoxmaUxzDsvEx+fPeG
	zXvZTTvkHsKqz1ST1fSIkxg=
X-Google-Smtp-Source: ADFU+vv4akWHQF3lvcyqiPm/a4oj3IGBcywj/vUVtQNxaSHZfHSQyYUKNPw/Y5fhJ9cklhS6b0pjTg==
X-Received: by 2002:a5d:4104:: with SMTP id l4mr1415051wrp.55.1584393424058;
        Mon, 16 Mar 2020 14:17:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls378800wme.2.canary-gmail; Mon,
 16 Mar 2020 14:17:03 -0700 (PDT)
X-Received: by 2002:a1c:4b18:: with SMTP id y24mr1016187wma.149.1584393423559;
        Mon, 16 Mar 2020 14:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584393423; cv=pass;
        d=google.com; s=arc-20160816;
        b=d7rrU2i3aQIYwdo9lLnjefryd2WZaZtjLVSCn/glvwa/cvQUwTjDq+mjAcIcoFmmzU
         EDmAOvXNDRmQMsE17kPxai8zyYszKGIRBBuXkoQDGEBMAD1zvfRiNil+t/9yubwqUiIl
         WEyC6VfO34Xn9k4p3kuJ8IRzROAo1hCzIDhUg84j6ns7GEV76ZA0m6uhYN3vOX0HVBlq
         tsR8ejwKX1gAYlSA6WGcdgppccLw6jUS88tDUrQStU4gg7HOIo//Eh/UVISzxMv0Rzsl
         J1L88i1tzCn0QlnKfyHcbAJ3+EVgEOyNHldyeuQeJ+h+u6USpd9KoTVlO6iS7lwGB6HC
         L7tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=eruYCWB3rUiNNZSF8GMhcXMTybxrxAwahilPTpj5aIk=;
        b=KERRr0Fnet4qJnoyiLX8/+EH1lSJZjJwuaxhtvNGxx0Z4Iu57bpSAqQo59FmyIrh4n
         6FFwXWUQh75JbXIZaFXmWPrBEUfMXzY4u+xP/WkmjJcrAPJ0eFZzN2bMqTmFDZK6y7FF
         pxQahT2Ey+Zob4GXS8aJh1XzWyAuFwqkBfsuPfJi33xJ4T9gtH+84aIx+14BG6Tyz7/G
         +JTa1P2sO5opi7HnLe5PDvvyVso/6dVywxeCpCWKxMYwzVAlAoNJM+N+nIvzN/20rWsP
         J2yNwtxsZgeesxjsh0lM4zq9kMcF9lmrQthSNP1aenyWIXE2AtE0yZ5Lp/568J+oafo9
         Vsow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=ASILV4Dd;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.20.72 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2072.outbound.protection.outlook.com. [40.107.20.72])
        by gmr-mx.google.com with ESMTPS id n9si60363wmi.0.2020.03.16.14.17.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 14:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of saeedm@mellanox.com designates 40.107.20.72 as permitted sender) client-ip=40.107.20.72;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SjvvG9J8UktW52IxrIKk5c19PdL4y+TXgzY4RqdcQFLbhX0VFVTY5Up5m1C7bpqkKHnMj11cbUY8iVYhoA4jutmAbnQD5PMjtlRKfFnE7WXuIdFhKPJ1EAKFMU75IbzN7EOIjYrnEvfGpIu16k4rYWqpRg6T7+V/BFlbSdXh3B/t91CMndWF8jXUM0rwBk0wNUZ3vuy5cQ5hx0CuAf6rn1V6L/Yd0Xry09GevCgXyEyk1kj87ooDxXjZiC70MCvy+UF51vK+5o9JLtp7CfSrp8ntK1shC9yDwbIgrOaj0Sv0jaNxV0wv+BI6j+jmWqnS4Wzkh+kLC4wFMxeeHNG8Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eruYCWB3rUiNNZSF8GMhcXMTybxrxAwahilPTpj5aIk=;
 b=dwaA756e+FJ1IoV42keAJ4v8bAx/qLJH5ydwF44y7wc5dKxyZuRqbBwqUjc9bJAyghlhGt0fls4qKpPzzyOVwvoVcTWWHykW++XvHjEB82j3GQfIbEDZAi2wg3g9Elyvgx3n+GXTWvrzmvvWgJv+tCnLwmIjA61frn51KIbQfbh15tVYrdxWKhYTBbbYzAV3pJTinK1yCgF4gb0CHyVsatncQ22SMOc6oEFpIysBVpqyuMq0m/R9DkClhhrAWhlr+PsZY3332gLs8Lo6sYefOxW2yI5+flB30vEfYUP58clEMPUXyD3rmw/6ayO9Vxk5YUejeyrq36TN/rxLFxQEpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (20.177.51.151) by
 VI1PR05MB4926.eurprd05.prod.outlook.com (20.177.52.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Mon, 16 Mar 2020 21:17:01 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::8cea:6c66:19fe:fbc2]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::8cea:6c66:19fe:fbc2%7]) with mapi id 15.20.2793.023; Mon, 16 Mar 2020
 21:17:01 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>, Paul Blakey
	<paulb@mellanox.com>
CC: Oz Shlomo <ozsh@mellanox.com>, "davem@davemloft.net"
	<davem@davemloft.net>, Vlad Buslov <vladbu@mellanox.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Jiri Pirko <jiri@mellanox.com>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "jakub.kicinski@netronome.com"
	<jakub.kicinski@netronome.com>, Roi Dayan <roid@mellanox.com>
Subject: Re: [PATCH -next] net/mlx5: Add missing inline to stub
 esw_add_restore_rule
Thread-Topic: [PATCH -next] net/mlx5: Add missing inline to stub
 esw_add_restore_rule
Thread-Index: AQHV+bJnGd9AuASRPUuoZqjIc8S+FKhLvPOA
Date: Mon, 16 Mar 2020 21:17:00 +0000
Message-ID: <f56f1ce8c78810021e1946530eb1661bb425171f.camel@mellanox.com>
References: <1581847296-19194-8-git-send-email-paulb@mellanox.com>
	 <20200314034019.3374-1-natechancellor@gmail.com>
In-Reply-To: <20200314034019.3374-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31)
x-originating-ip: [73.15.39.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7a8a8cf1-d529-48dd-911e-08d7c9ef5e48
x-ms-traffictypediagnostic: VI1PR05MB4926:|VI1PR05MB4926:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB4926754105DC7D5C2761D46DBEF90@VI1PR05MB4926.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:46;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(39860400002)(346002)(376002)(136003)(366004)(199004)(76116006)(110136005)(6486002)(2906002)(5660300002)(54906003)(8676002)(81156014)(81166006)(6636002)(478600001)(8936002)(91956017)(316002)(36756003)(66946007)(107886003)(186003)(66476007)(86362001)(26005)(71200400001)(6506007)(66446008)(4326008)(64756008)(66556008)(6512007)(2616005);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR05MB4926;H:VI1PR05MB5102.eurprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qRelJKcJRxRvDindhktOl979f0MlC/XPfFUK08og3gGORlFcTH6no4Yk4KokIeq8/pa7+u1iWAGA1F263LcBxuMja8yXqsPyqARYJEJmW618yPa3u6+1VCJIB5r7PK8LD/hfYpktbt0mivzOOhmvRw1ZrCNwCZSgPCX/7vwFuzF9Is5s/a2ZhzFfqVDqWuTlXyJJL5OBC+a8W3PAmtEtgGvepLRGyYJB9qg71vEaHabHiT4fE3uwfNcqRytujiZLEBs6GsVEtD23FvIYQzG5yxoKEnu35GjVyMmMiMRO3XbaHBjRQF0v7XOJYPrWNEeye/OWdG+ZiGjNMCsLxnbD3RC08CVLB5N1GZYmc+nvCXrWhI1jyh0U82F1I6Qg+72N7fb4n2BZLejyQ/HMVGALDtEl4pMhvgg3D5HGqGgSrY/FNDkJSG1Cig3L51W2P+BV
x-ms-exchange-antispam-messagedata: 3v4W1dqwck4BfEvm4W1lcctyv4ROWthl8zRlkC4uao7Ecvh8dtFMKObG3AOrotAeYnv0A6+fCHI6gK3UgomXxvE1ZkAtO4ZOZ0/v3NT1ZbJ1/I5qsVIzmuJZucQQba3hH4yGxGcDRAqOozWc/VXsZA==
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5B53DD095D64374EBC46AFFA184CE55C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a8a8cf1-d529-48dd-911e-08d7c9ef5e48
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 21:17:01.0406
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inj6a4nbZw5Qu/yc3zwmzcBd0ianU/qoinbgS+DxAyUxQkY/0A9fIB0Cagm9R3J6LwJcgFh2u42JlYS1fW9LYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4926
X-Original-Sender: saeedm@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector1 header.b=ASILV4Dd;       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 saeedm@mellanox.com designates 40.107.20.72 as permitted sender)
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

On Fri, 2020-03-13 at 20:40 -0700, Nathan Chancellor wrote:
> When CONFIG_MLX5_ESWITCH is unset, clang warns:
> 
> In file included from
> drivers/net/ethernet/mellanox/mlx5/core/main.c:58:
> drivers/net/ethernet/mellanox/mlx5/core/eswitch.h:670:1: warning:
> unused
> function 'esw_add_restore_rule' [-Wunused-function]
> esw_add_restore_rule(struct mlx5_eswitch *esw, u32 tag)
> ^
> 1 warning generated.
> 
> This stub function is missing inline; add it to suppress the warning.
> 
> Fixes: 11b717d61526 ("net/mlx5: E-Switch, Get reg_c0 value on CQE")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/eswitch.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
> b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
> index 2e0417dd8ce3..470a16e63242 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
> @@ -666,7 +666,7 @@ static inline const u32
> *mlx5_esw_query_functions(struct mlx5_core_dev *dev)
>  
>  static inline void mlx5_eswitch_update_num_of_vfs(struct
> mlx5_eswitch *esw, const int num_vfs) {}
>  
> -static struct mlx5_flow_handle *
> +static inline struct mlx5_flow_handle *
>  esw_add_restore_rule(struct mlx5_eswitch *esw, u32 tag)
>  {
>  	return ERR_PTR(-EOPNOTSUPP);

Applied to net-next-mlx5 

Thanks,
Saeed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f56f1ce8c78810021e1946530eb1661bb425171f.camel%40mellanox.com.
