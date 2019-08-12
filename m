Return-Path: <clang-built-linux+bncBAABBYGRY3VAKGQEMCCSLEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1103C8A526
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:58:57 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id o9sf20560578ljg.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:58:57 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1565632736; cv=pass;
        d=google.com; s=arc-20160816;
        b=PecsA+g9OO0+ko7apeJBtC+yJ1cKnAV4HbkSNz/ID0Gy5ZL0MGvxS49H47PMxiS+Pa
         xf4Q3A+sURfhBxd+j/ltyw+Xs+Be3+LErCvYCMN9OnB3KZqMzW3EJwiA36NdW7gN5E6P
         mx32FdatKGU9o68K/tdSkBXEbKluQHYQ8OwfzegfLwO3yWLU+3ZquYMBgJfqIUG1lCTF
         mQZNKPNtO2I4lKZt4dezpNi/zG/mC64dRx1RxOHUkM3iPk/gGpTyTMSjm1usZcANl3ml
         wFg2J4xS6pQvEI2D2DoFxKkOb3sORxZeU4f85/InmJvoE0HkA233bnpcTA+gX2LQXLW0
         IUFw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=kM9wRkuUIZ0JirmgHT+7YtZBc4brdbmncqg5JGeklt0=;
        b=CcMzMq+iipuJuiysCFK5avN9ZjLSWK/fBG9tGvn5lE8bLljX00UFSBTEkicqfZZgV6
         FO2Sm9TxpYEazIIpyakrWBQo9CDox3Q+SenqlAnh4yFePmoaGXt6a9lMy+qyb9NhUdQk
         CAubycutNku+qifGi43DNRS9MsBYn/SSu8jmnE+axE7KrbTOeibuStNtznDmnX3CXfZm
         BOGzbUwmdJO85UZwnCybVaJrXsvEG3DJdai+O8OLJUpUuOcy6fZPANCvTtEbe2XdzAvC
         yom2s7K/DnstGqWrzz0PYUzH4GguZhmnO3PmvnnlWIlbO0xDZp5L1vuuZylE5ZPVm3KQ
         XYcA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=Fnd3Ga+e;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.77.91 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kM9wRkuUIZ0JirmgHT+7YtZBc4brdbmncqg5JGeklt0=;
        b=ZHcHyZoEbY+WwX1//HyMWOY5Sjffva3ZXij0EBfcc4MwS44vgEZjCpwCUShDfBlfyx
         Q8AhigoERxEj7z85IOuNuJRvP+B2/GQzPk0iVriIYNg1Fp5ByCBOiOLS8Cn3EoIQkYzA
         1G6A11XyL3+fbW446Kn2855qHoID4o5Tf+LB0UmUna0/5IFT78mzbRzhREQhPOMM+cXz
         V+y7GAOQTXgfGyVBAcreT2TRIs8w50qhA061itrBMTC0xtKoeurAUecHH1WDm5577oqY
         z/1Fv3JYCJfXjGSKS70/fy+f1aYQAT8AUJZDppVH3z5aM5njz/2AcVthkWpQjM+csydw
         bxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kM9wRkuUIZ0JirmgHT+7YtZBc4brdbmncqg5JGeklt0=;
        b=NiVkDp+2meCGLTS4Sw2Ei/pCHQsSnvErHHVFVo+oMnah3xDOptJP/DnsUy8IBXSLUx
         sAPs9xnh847OHRDp7rni+epxBLPBgap8lzmNnIX8M+h1qGcAORdx2ACWtdfFjfis76em
         b/Qwl+kcGtElRpYs2XXkQrUROEkGRYTwcVW9w/9vAfTJz4At2kdovLB+SKbnwmLk6j5s
         3QwpdwIuZ5bFOVpEXOG1bFclvfw/0lAWBolKUHCFLhGySXWtrGM0VGYG+NuWFDMaBh8+
         CDTOG6Fg1hkqQO//l7m5kWiVRHl+En/Hiyn6aGZRQs+vfUG2CoQ/9wun+8Gwpr+PwVoH
         XK+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0N2HrpDpSJtbdyD6LQ3RTWuTmM3qyrCu1YWK2OtCryy0tRUEM
	FR145Bw6mKTW9GXt9yLvzUM=
X-Google-Smtp-Source: APXvYqyHfJlp9nuWICeAc1lkvS/Y/h77capf/MgwMapt9mVPV2ezzzVtP0Yo1kg7QNhyd5ArVEFFEw==
X-Received: by 2002:a19:6557:: with SMTP id c23mr20154099lfj.12.1565632736670;
        Mon, 12 Aug 2019 10:58:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6556:: with SMTP id z83ls11844530ljb.11.gmail; Mon, 12
 Aug 2019 10:58:56 -0700 (PDT)
X-Received: by 2002:a2e:9c85:: with SMTP id x5mr20194536lji.139.1565632736312;
        Mon, 12 Aug 2019 10:58:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565632736; cv=pass;
        d=google.com; s=arc-20160816;
        b=gTIY5XuguS1IPlXmrf6bJAC1DRbnm4hpNppFYyVv28MDjCywnOMHczC/Jq7Y5fM+A0
         dHgSr1Gqa90BpGZhrm7o8rs6pB/ssCTa0LM+zXBulIP0QkgnZyWZI2Taa4Vo3AEzOblr
         lNCd6IR3uzbWH9RJQBZY712q32Wm/Sxq3z1CAyM7k6w0WRW/SPFQ0/FRcwm0GBGxei+3
         7ITay2PRqqRrgyxOEV6weLxMCVhroEChD5I48sUn4yYaw4HscTxPd8K47EDwNlUKT+y6
         pJwUaW3H75S7T9M32NknGGDbIdEqnqP5fyMhQ3iUcHw2XpeFWxxkgdT5BakrOGs2N+jf
         HHpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=rQ+zOhPWxWr/+OnIyGt25IXGG4WaR85Z0Ex+CLlDKFY=;
        b=yPUnaSE5JjG6hbZgbPS9g8e1MV5k2FhIR0BJ4e91vJn2f89AXNESHo3eNeMNiZ8MyF
         XXaooFf+5u4L29SQz54PEFlhdFrMx9p+d+QONrDIJR3DPb+NJGgosG4ZgYwJG3m0zbe7
         GoCL8Bf7i8HU0iWL2fXVzid//V70eAr0wV3aLeTU1d9/wPz8Z/erVORiwKNKwv6FuHN4
         C2oqv51wJl5wrCR1X4A+FRVXFhWMP5lV4E2JF3dcS+XxN9kXV8BF+KQDbCt4akc8Wdy7
         3UdmRd77vfGBE5Qawm5elrSotzAKH2UtRilRdh1YYJXok+rtZZqnja+XoufeXHmL4S9Y
         nxKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=Fnd3Ga+e;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.77.91 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770091.outbound.protection.outlook.com. [40.107.77.91])
        by gmr-mx.google.com with ESMTPS id q11si5558128ljg.2.2019.08.12.10.58.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:58:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of pburton@wavecomp.com designates 40.107.77.91 as permitted sender) client-ip=40.107.77.91;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcqTettayRHOXkpm9OY+HZad4uXIkB6QL5iAM5P6Cc3GlsEG1ILgzn9I7r1diY6i/MmRQnv5kKpSiB7hAb/8h2SsGRYasqcYUu4I9FXjEZwaNU6QPXS8utPbCIRYpgBQ69AkbJq2xlMW+xXS6slYnw4VW8hxn1v/JCNrU9eTBwbC1VnPjF4pHP6nAlNDLnzbKI4AgiBUyMHRLFt4cZSL/+PentXwb/ONtgksTfUgge52XJrK6LheJuQCfPMzhMw0d0EO7GbvoY9mZpkSn8vPtRBbqeaPDl6vMy1NX0yiEkoM6XU7bMUhzu+AQ3Dbyq1nUYjQHNWDTWzCI0BYPf++pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rQ+zOhPWxWr/+OnIyGt25IXGG4WaR85Z0Ex+CLlDKFY=;
 b=UkKWw09JWzWtRrvpZF0HwIYegnampOzYSSavq6D7ZAmsjdb7e0pjvPaFC2Fwo75iHP7vEQQIVc1c89lqlZ7Ppoe1LjDn5TE1qj4iSkvPyD5pWDFAFTeh5MaV59jVbjPntVqYA1fF9GKjL7UOmO6oeyR5PgKxm9DTQcYqey8ecSdyQwTG7DiJde0wrQZaZwdjPhNFAJUkD1ImVoAB1KWerW7mT9aIOyx4MglV0K9AFHbFZUO5rD9IPesr52kVFv3DHxKhO9DRgglUPXnUVJ1W/KaYVjoGfI/NVR8YzbsBDx1bO3D+Z192Df7UITLyo52ktRNzJwE31HneZF1FljwscQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1104.namprd22.prod.outlook.com (10.174.169.154) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Mon, 12 Aug 2019 17:58:47 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c%10]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 17:58:47 +0000
From: Paul Burton <paul.burton@mips.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, "linux-mips@vger.kernel.org"
	<linux-mips@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Vladimir Serbinenko
	<phcoder@gmail.com>, Jussi Kivilinna <jussi.kivilinna@iki.fi>
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Thread-Topic: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Thread-Index: AQHVUTeWNolbWFJ6CkGezm0cPp8EqQ==
Date: Mon, 12 Aug 2019 17:58:47 +0000
Message-ID: <20190812175846.ozvhx5a2sturrclt@pburton-laptop>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
 <20190812052355.GA47342@archlinux-threadripper>
In-Reply-To: <20190812052355.GA47342@archlinux-threadripper>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::21) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d66e9ba3-1cdc-4aba-1ce1-08d71f4eb953
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR2201MB1104;
x-ms-traffictypediagnostic: MWHPR2201MB1104:
x-microsoft-antispam-prvs: <MWHPR2201MB1104BA7E25CC230D7145B3C8C1D30@MWHPR2201MB1104.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(7916004)(376002)(136003)(346002)(366004)(39840400004)(396003)(189003)(199004)(9686003)(7736002)(14454004)(478600001)(6512007)(54906003)(53936002)(305945005)(58126008)(316002)(33716001)(64756008)(1411001)(66476007)(66556008)(6246003)(2906002)(66946007)(4326008)(3846002)(71200400001)(66446008)(71190400001)(4744005)(6116002)(76176011)(1076003)(25786009)(52116002)(6436002)(6486002)(6506007)(386003)(446003)(42882007)(11346002)(476003)(8936002)(26005)(5660300002)(486006)(81156014)(44832011)(229853002)(6916009)(8676002)(102836004)(66066001)(81166006)(186003)(99286004)(256004);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR2201MB1104;H:MWHPR2201MB1277.namprd22.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MJO84WnTJbYt8+QiUBpNwQYgfQgXmUHnRZT7Ev7KqcYYmCfinbhQEX3qmNZNlDiTgl/TiP4nzl/VnH7bCy+HjtVR/kaXHiq38v89qo6qSlchSTSka4U5ZJ0tWCDBJu7oexMl/nJ0cqu3VPTDcBlIpgLeE+ikYFizm7KbNcpWtFZtWttDecZVKAuIe+qm1O63WKmqafBLHduIBI3Zbl4oJxlf4RF0nKoDAFkZbNUGUMcQZzYaIJjTOYsJQu1QWblhnipXJDP7SWFjCg4J6x/EGgkFTAmS0ngAQ0vYpZYFxl+Pwhzg/VpV17YqXnXtm9QxlEG9mF3/PaqAd9lFlgn94gzO0x6G7vy5ieVhKe0vkF7y/5hKMB48PJqvM3dYCN9pjQ3Oo9R0/IAyOsHB+cxbeYv5l2CayrVlmrYof6jxRGk=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <590DCDA92AE15C48BF35F3D7D623F45F@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d66e9ba3-1cdc-4aba-1ce1-08d71f4eb953
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 17:58:47.7024
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gtqlD9l3m7/KvqhvJcxvJMhvE0am6qMwLcVaz0yV8tb0CR/g/rvaNYS7BUMhoKQQZnpi1MweG1Y0kqtABJHAwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1104
X-Original-Sender: paul.burton@mips.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wavecomp.com header.s=selector2 header.b=Fnd3Ga+e;       arc=pass
 (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass
 fromdomain=mips.com);       spf=pass (google.com: domain of
 pburton@wavecomp.com designates 40.107.77.91 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
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

Hi Nathan,

On Sun, Aug 11, 2019 at 10:23:55PM -0700, Nathan Chancellor wrote:
>  I noticed you didn't pick up this patch with the other ones you
>  applied. I just wanted to make sure it wasn't because it was sent to
>  the wrong person. This set of files doesn't appear to have an owner in
>  MAINTAINERS, I guess based on git history either Andrew or Hubert (on
>  CC) pick up patches for this set of files? If I need to, I can resend
>  it to the proper people.

The 3 arch/mips patches were trivial for me to apply because I'm very
familiar with the code & know they should go via the MIPS tree.

I'm far less familiar with lib/mpi & needed to look up maintainers,
which is why I didn't apply them in the few minutes I had spare.

Thanks,
    Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812175846.ozvhx5a2sturrclt%40pburton-laptop.
