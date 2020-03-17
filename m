Return-Path: <clang-built-linux+bncBC75PI4P4AARBBXAYHZQKGQEGKMJSNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 136EB1879BE
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 07:36:55 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id w12sf1654062ljj.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 23:36:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1584427014; cv=pass;
        d=google.com; s=arc-20160816;
        b=sZLpzVkxCsZVUTKkxzLgXQz8U4Stgw2/L4ruLS9VMsQ0LU46ztCFWKarO7d5AMdjWp
         t+mwfZ8QhSTA6JztShTOD5CH1FouYx0E/jH0XfQMMPeNKqnbVjryUgaPINk1KvnuiLM6
         GH9mcZ0ucvdMVu+infhy66NIoNmIoklLjYHraP/G92ImkkRfV8tgIQ7jpam5CsigYfPd
         tDVJWaVUJ+mMzFD530tQjlLLRMnz/DuofLwqErU8c6WNeB1SH6kf5RwqNAu5XIJQFxQG
         ntMQaLViqGL+0osZWhtO1mP3sU96KQcyCMOfp83Cp9by1quJpnoQzcbq2OoOf+lqByWZ
         EdPg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=LvANxjxtFxxobSB8kUXWu6QvbK/y3LGywOo0F3nn6kM=;
        b=p4sgrb7Q5kvVFj/NtYWSweTPOC9PJmzopj9iAExjoZ/5Ivj5fABcLpN9kZDZzEaOY/
         fZRSVuXDrbdBs9F0uCCIAzTvjl85ijjaagiey4wY8WCyiaySFHhjcANhWT8ccl0GeFni
         QTmt2XxCjbOnJOEY8Sk4Pv4Cc7/Y+QkPQeT6IIK+AVJCzy26LOlJDv+vk0lCihTXifUx
         o9GyDSlaavFTe/AXFw0p/P9a6CWKr7aTBwQ/lD48Dtr7gqlcDhzDL1zHDotbOizqIiQX
         JXgi5oEdJXyK1VAYQjiv619Hm8u2OMsNHxgk48Wtab9iZ38Qwf/aAtLpYftjkVsm0z2F
         pf+g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b="p/MpfJQC";
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.6.71 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LvANxjxtFxxobSB8kUXWu6QvbK/y3LGywOo0F3nn6kM=;
        b=ob2HIpB0c5iF2nVraLPkALdHTmi2w1XSiER1bWjhskwFoGM9zxjSj9iVRFRIqSlxM0
         NUR71p3/6mRNhPNf+2dNbozgGRkoGt+PAhLoOiskT4qjW32SqZ1DmCbIOwOFSoKzPpw1
         v1ALCKeFtHdiy9pcU+k03QSljHP+eoxWUJOGJXwbmwJXR0bpTOue9wnb83uhtkpCqbsC
         oLOVsBzhiUVjPVTBi/a345RGO1y6ePzhdfIQYAyFn2L0W+XlBJz4M5YA+MOGpAJzwYmP
         fITJ4IYwRn4o4bVnK48KTmPWRJ/yj2rhYF+im8MAHqQV6X+2zmwSCvLkDziFBEMtjoNz
         sPJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LvANxjxtFxxobSB8kUXWu6QvbK/y3LGywOo0F3nn6kM=;
        b=fmVilU7izmOcWLJxlIIVsoSjquoOj401ZdHcvguzy+rd+S5uaRF5olxrW4fZpHiAfx
         171TmNQ3kxp0+sqhLKnYPQ7jQiYwFvG6CNSzqogddLu1x3bCXK9ZSp3W8bSI7XbHsxCS
         +SzT2DwDTDAiBSqFxAYV61AuFO/64DyQc7xgLF2jxZ50osRtU+8LrgWyU4u/aTLrwhbN
         96u/QBS4VShCpDs0ZC5WRppnvWWELgSzjOxvFzljJtNrYWdzZX/LAYzAJ3EcpQlHrrlv
         xbLCM3XhjzzkFD0EnckVB0w3MqOCapT6FwxmNX6EUhdxfk0/xkq/38lrn3bW/7JjUrae
         vDAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Q4TH0nAElR+oB0QV/XowK2z2j3MRQF2a6jTh2YdsYWld8/ezK
	S128BKHPJ7M1OGJGeEoLFyU=
X-Google-Smtp-Source: ADFU+vvyK54ua5mlOY/j5xw2UFUbK+MonX4TfKAtzNOa6VGORs79eJdiqxY93yANF5lPbGfO3vIH3w==
X-Received: by 2002:a2e:90d1:: with SMTP id o17mr1759748ljg.284.1584427014359;
        Mon, 16 Mar 2020 23:36:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls2689243ljg.5.gmail; Mon, 16 Mar
 2020 23:36:53 -0700 (PDT)
X-Received: by 2002:a2e:964e:: with SMTP id z14mr1862151ljh.44.1584427013733;
        Mon, 16 Mar 2020 23:36:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584427013; cv=pass;
        d=google.com; s=arc-20160816;
        b=ctlVs5tnYUqH1/LL8TclAt1CEwUjnRG4hqdnXYIV0H09t41V4aPDiWcH/kp2j1c5DZ
         EYkiBZNIUkbgm/4z5mzHeookuztUTfYsI46wJjHKNQ9x+KNiJiYZdT5dD0Dtv8LRAfXY
         pzNn75ZDTuXkYOhRA7tGKGzwxQ976U/AVJjeFMIQkVtJ5Iwxyn2iIC7k4a+P5g5/ZKMx
         SEjxmNGRCLRnD9LpYLXK/PW9JgJg0hWjZVwQwzBt2+3ERuBeoTtXQ/+QMkhI9mJ7LzSE
         OE2KzO2/q14P08zZNEbLnag4RJaqpO00iI++6ByRk1eGaGBk4NKlAym/r3e3dd5NzdTZ
         HOtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=GtwgJr+/JupANyR8Bjo4kb8TBBLNawc0UCpTjWtb7b0=;
        b=ckU1N/+unpOTXo9NrVr0x+S+vSLI+8TO7k7ScAWjrqwO7yIdI0mSyA1BUbZx0nc6j8
         jePDHc75Q9vo11M0OnstIkeXP086P05cC7rI+ymcXysuQPJp+e27acVcihXWLr5Plr9v
         ct9HNO9tQpblxynBMgV73PyiOJu9ZpqUdm/ytz5G/XHXVXmlLIp6unCZtavcONKupjC/
         uzWXqpAoX/gGxNgPVJWiq9Qefj1BecdNLslsTn7P0Z0Ck66qIZMBhvBemYNc2XYHETy4
         hKeWxv0WugFmTeJZx9ceejGSRIhhwWipEVz1xO7q4qcXT/AaeVNpLig1MBMaiz67Sheq
         UnSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b="p/MpfJQC";
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of saeedm@mellanox.com designates 40.107.6.71 as permitted sender) smtp.mailfrom=saeedm@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60071.outbound.protection.outlook.com. [40.107.6.71])
        by gmr-mx.google.com with ESMTPS id s17si162217ljm.5.2020.03.16.23.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 23:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of saeedm@mellanox.com designates 40.107.6.71 as permitted sender) client-ip=40.107.6.71;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J8R/viJV1Uxir24Zlv2Vu3tdknIUqxYQPEkCeKjkNYy0mRTvSj1lezebjOqFN5DNtKHlWD1WfeXN0TQGmdqHUp1R6A+y3rOXGOvqCtNupGe30faIIOR1vXInbptldnt/RDOKoeRWdK9zzrprk3OTyB7Y9K5euvzvaRt9YD8EESn2S7qjWsRDpv25JVvaYfhRYroVhS92jVhkDSfC69Bo++5+RzVm1hMVEU96/uDYJAjPqkJnYKCgT9llJ/9bkmYtP6O/sI4rp8F1Wj8GFwLc00WfcDAulIeb1jLx7Op4Bdm/NW4agNYHwKFb+HLRgR05pBNsf7fRkHlFrVhv76wNWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtwgJr+/JupANyR8Bjo4kb8TBBLNawc0UCpTjWtb7b0=;
 b=OtG7IDvcrYhFcptiwBw2jT65+ARJyqdWu52Y0qbEdy0NVeKZ2LS9pl/b8CBKZN6E2Bk7uvDNWmmc4/LQQHBt08CVMmcfS/0O1YQh+c6T8WCO+ruq/HRaKmkwoFhLsJSNCFR+YP4GqnEfB0pSebHM/6YVzNhDLotYNDDdBlaoSF+LIDQax+PXYsCTbJR1/QogOy9bhuN2jTEBxNG7u059v6zdxLk4PH+MMXOVxmuMBaNYVwGCEY8dIl+4pmJuEi2m3te6LG1S6MPHtIik4nLDrUiSNsEYiv2WFhfvm+Tt93hffKflZAOJ7ZukLgay9/Yc5kpcSFAnxHqAPbmIa4ChEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com (20.177.51.151) by
 VI1PR05MB6589.eurprd05.prod.outlook.com (20.179.25.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Tue, 17 Mar 2020 06:36:51 +0000
Received: from VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::8cea:6c66:19fe:fbc2]) by VI1PR05MB5102.eurprd05.prod.outlook.com
 ([fe80::8cea:6c66:19fe:fbc2%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 06:36:51 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>, "leon@kernel.org"
	<leon@kernel.org>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] mlx5: Remove uninitialized use of key in
 mlx5_core_create_mkey
Thread-Topic: [PATCH] mlx5: Remove uninitialized use of key in
 mlx5_core_create_mkey
Thread-Index: AQHV+9JofEO2fsSXcEevmUAlteNGUqhMVTqA
Date: Tue, 17 Mar 2020 06:36:51 +0000
Message-ID: <1639b8bff62218c8a931ee48e01710f921bf9666.camel@mellanox.com>
References: <20200316203452.32998-1-natechancellor@gmail.com>
In-Reply-To: <20200316203452.32998-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31)
x-originating-ip: [73.15.39.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5758010e-a11a-439c-29fc-08d7ca3d93e7
x-ms-traffictypediagnostic: VI1PR05MB6589:
x-microsoft-antispam-prvs: <VI1PR05MB6589AFF3C89D5B25568F72E7BEF60@VI1PR05MB6589.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:98;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(346002)(396003)(366004)(39860400002)(376002)(199004)(478600001)(110136005)(54906003)(966005)(2906002)(86362001)(81166006)(6486002)(26005)(5660300002)(8676002)(81156014)(8936002)(316002)(186003)(71200400001)(4326008)(6506007)(64756008)(66556008)(2616005)(66446008)(36756003)(76116006)(6512007)(66946007)(66476007)(91956017);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR05MB6589;H:VI1PR05MB5102.eurprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dbly9omG5ad62CYkOBpvRuKvLoOPb/mtE/XfjjfIvxY4+JRcHahzTU9wHJjy/ZV5kIG8F7U+cexAoljwphiSc+5FZw3dzPGemlCO1lO4s4clekbwY+coZl2beZAg5NcIbLPYcBhsPxO5kTpv0WQXBK3mSIGnyitwiiGe1rLCaFdzgy6OauOajgra92+xHSxe/CNcOfnCH/DUqWT1jNIfSmgIbfxVB0h/upVpfphQxLF5Tc7ztBkRNTGres3hDNyiyqajM++qWdLPbspNdGw0EBm5LSn5JuVnkNWyNIruqENdmzZSy4q9L2T6gM7uuSdElnZ7sEVT9jD4tKl5mbr6EROw1QgcdYJvUoC0alUhpMhjLegPLPEf8BhWaumtqs0k3i/Gi/UG+gP+PLBqHjFFywPO8rQ2rLF7KfTxZJ6kR6FD/rTWgzpGIfxe6JT7UXHe17ERP8YySJgLQAVKBYiPbCgv0TnmJBGDUprCNausCSqrZqE6ypU1xM1id9tpb6N0X3ZM7rDVY7aty+wTgfb95A==
x-ms-exchange-antispam-messagedata: 7C7Wnv3guY5/q1+YvzrOcHkGlav2g1V/aTY3V6InDZS1jA1a3IGNIvFHk1hA/Ds3WF6GP036sZ0zX/b1cfAK00+yc5cjYpYp/YnNnHF8gY+n1UsoC+a7WxuVre226Nq3jCHDZej+s8UsiK6KRubhNg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <45442FF83533354BAB84493D59F634C3@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5758010e-a11a-439c-29fc-08d7ca3d93e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 06:36:51.7781
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GMb6/LgTDIGVpJJNn6d4IfpaHu1T2hK7QX48DdkAzmUoYnyq8gAwFTOHkazwweyah7Qebj+zXMFQbtmhKP1PvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6589
X-Original-Sender: saeedm@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector1 header.b="p/MpfJQC";       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 saeedm@mellanox.com designates 40.107.6.71 as permitted sender)
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

On Mon, 2020-03-16 at 13:34 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning:
> variable
> 'key' is uninitialized when used here [-Wuninitialized]
>                       mkey_index, key, mkey->key);
>                                   ^~~
> ../drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h:54:6: note:
> expanded from macro 'mlx5_core_dbg'
>                  ##__VA_ARGS__)
>                    ^~~~~~~~~~~
> ../include/linux/dev_printk.h:114:39: note: expanded from macro
> 'dev_dbg'
>         dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                              ^~~~~~~~~~~
> ../include/linux/dynamic_debug.h:158:19: note: expanded from macro
> 'dynamic_dev_dbg'
>                            dev, fmt, ##__VA_ARGS__)
>                                        ^~~~~~~~~~~
> ../include/linux/dynamic_debug.h:143:56: note: expanded from macro
> '_dynamic_func_call'
>         __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func,
> ##__VA_ARGS__)
>                                                               ^~~~~~~
> ~~~~
> ../include/linux/dynamic_debug.h:125:15: note: expanded from macro
> '__dynamic_func_call'
>                 func(&id, ##__VA_ARGS__);               \
>                             ^~~~~~~~~~~
> ../drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note:
> initialize
> the variable 'key' to silence this warning
>         u8 key;
>               ^
>                = '\0'
> 1 warning generated.
> 
> key's initialization was removed in commit fc6a9f86f08a
> ("{IB,net}/mlx5:
> Assign mkey variant in mlx5_ib only") but its use was not fully
> removed.
> Remove it now so that there is no more warning.
> 
> Fixes: fc6a9f86f08a ("{IB,net}/mlx5: Assign mkey variant in mlx5_ib
> only")
> Link: https://github.com/ClangBuiltLinux/linux/issues/932
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 

LGTM

applied to mlx5-next

Thanks,
Saeed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1639b8bff62218c8a931ee48e01710f921bf9666.camel%40mellanox.com.
