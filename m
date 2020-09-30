Return-Path: <clang-built-linux+bncBAABBFOL2X5QKGQET3SFK6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5008F27F8F2
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 07:13:58 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id 99sf2440498qva.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 22:13:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1601529237; cv=pass;
        d=google.com; s=arc-20160816;
        b=D88TKUTdFczrYWvfNvACL+MYIJL3zOusts+gub9B3FtRrFp6RdyESaQEe2yGGrj//T
         JowyPvLfE3iQYzyieY52JV4cy8AAyXBvQi4krN9pyNFQxQwpygs6JYnff54AOOaYWqHk
         Urk52iqC7UMR24kSvW6RYIe4vBu09R0Hg/mNLMUQ/EejcxvmAf9xXzd08Ly4sRuDrgQ4
         BSxqq5+JM3cxisLbtUhXimzZRUFVQej1QKKmIpUWDr+sRKYx0jBUodTgudsexQQwy+Fn
         9LCmMqBWQfON19+n+lfeyDfElfCZqBRiXeayZ3N+Lo8pntouuzIXw07lB2NxWPiWKr5X
         jPQA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=gUKfQD7pqpDNQktfJLMO/nkXhUbHtfijbH4+pzwkmsw=;
        b=nG89sq39a/DAlYyjEUrKb6BKdAihkpRRvrgtoXP60X7Ko3TJF+p5OxdhzpfGtt5vq4
         AMTGQtB7HzsmxZCB6sW2YbYnZgJsnm7aZxZlNcUkw8JNZ4MqNGM1kLqd+1CrBh2sUSr2
         7rvSmZqjiTybvrXkJiA6RqpUS5AYZ903GWsLpr+3TSA4t5ZWoPpR/tt5xvpGudb3GClo
         jPRKKhaupz6uaoNlddkwSyxBfQmmwnwVntBJmjAACxL867+4xGDQcXNsIk0B4hkpLyXj
         uBLcsOvB6q9lwrRBn+WY/WQUl2QylBLxUtHOKoLNOeSTiZ05a9JI9eZlFZZM5vVfxi9X
         Veqg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=M5NobQhj;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.20.43 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gUKfQD7pqpDNQktfJLMO/nkXhUbHtfijbH4+pzwkmsw=;
        b=U85lmFJRpfTGgLzV/UVNrY+oatM7Q6YfPz0D7HEZyLJIE3V6JQ4oJ2M5V9CIKzMDP3
         rShgqiuGG5diLrq7yNIwnvC0BZ0laKCYR2GfB3kQv/yzt4rVZ7ToUOrEvK0NX8PIx6Ot
         N74UClKoW/Uiy6MF75ZFfHw1fw77iXlxAXa5c9eRMkWcwOKDTGWc5s/t9UycuMEh8Ot0
         pUe2QOUhBCltU9siYCgMFcmd/2+Myt5NOpAKuNoAconyJzxNkGWh+Ju2Wbvf487d319L
         YOdOqjWXQ0TYpfSZ0ERVvxyJ6uSYDBYrNWPjYrhhD1AhF8H5IRQXsZE2U5m70z7wFvNf
         7WVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gUKfQD7pqpDNQktfJLMO/nkXhUbHtfijbH4+pzwkmsw=;
        b=U4E3RLhpJmQEjdNW67Pvbbh+ijahHdpbh8C77+CVckTyVAcrIYSIt9gi4PKJPOs/Zv
         EswNLuY4O+nkV/jugBX8Ple71IkCAoO1hBoywFwxerjbBNtln3nFj41Mg+2K1aznKuot
         TE+dd8k8oluIDHgXzfTYT8F2PN4fPI97cshIJ/oi3CNn0a9kjKhM8+6xK98p+lO29yhp
         JQDFQjaQ0DfHDTvksDEp/m+gi4r9UZLlnt6dnWvkf83UFnEauNMnkaaCY43T7ELAC5xq
         uShz/xqwLziEYeK4HRCEZazYjoZFAHI375+UXNxtGLvXqCKIbXq1BC3Pay6PS+PCe0ob
         v0Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YrvUH2OX/QJs81RHzFX/J8jtoyO5DeOvc9j+3bTKk+ORZdFIL
	1DSNeodiY80T2rmg0qgWnuw=
X-Google-Smtp-Source: ABdhPJxTVC3xHueiKI+SUQkjSGozedVyI9ivl6h4ZX/A9UQhdP0RlajUbNH1r/ActiulEwMSHuc/6w==
X-Received: by 2002:a0c:eac5:: with SMTP id y5mr6323324qvp.2.1601529237156;
        Wed, 30 Sep 2020 22:13:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:470c:: with SMTP id f12ls1536301qtp.9.gmail; Wed, 30 Sep
 2020 22:13:56 -0700 (PDT)
X-Received: by 2002:ac8:4052:: with SMTP id j18mr5871686qtl.352.1601529236825;
        Wed, 30 Sep 2020 22:13:56 -0700 (PDT)
Received: by 2002:a05:620a:2444:b029:12b:28f0:4e2b with SMTP id h4-20020a05620a2444b029012b28f04e2bmsqkn;
        Wed, 30 Sep 2020 14:58:38 -0700 (PDT)
X-Received: by 2002:a1c:1bd8:: with SMTP id b207mr5183587wmb.139.1601503117505;
        Wed, 30 Sep 2020 14:58:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601503117; cv=pass;
        d=google.com; s=arc-20160816;
        b=VoFFNk0FAGObtxIhQfueNtAK74dRrDltja9ZnxHRhVxNlc6WnXhQkkM5tfs8DLWPdo
         q3inD9m+T6gGdtdiz5yx5fkiGi7XMp5WUpy+RVnR6WUYr1h+6dM7VOABYRq04ayaBiU+
         mZ5AvwEBoiyfj5blx8WMBKjAyMS2d1V27EW2rN00FV7K05rUJ//bwMJwctgN6c3axLUd
         CDwMYeIj2RPMdrCcFvKuU8fpWdiaDzlGGsEKSuB+ZgFQJymrlHCmVPlHQEpNI0GDoaRg
         7C1XinHJC/JiDqLZtArv8LTXtiDiOOY1bX11IvRGtMzny5DESXElPtEBd9ZqPoykz6Eo
         R70Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=jAN2XSTPWZ8EBysSCDDD5Y5j3cs/CfyyWIHHiRHnus4=;
        b=cUwnSgUhN5L84gM0FStSWq9WPhQylGKAo0xMV8sxKGZNh5wil3L3TodlFhO731nUXw
         IFITU0sw1AgvZY21BnkDOJQwPyFcZsRGYRptBTZTUOKuETqCiXukG1l85yvCsjP20g4o
         IxSa6dQmvFRX1188CSsYmRhXKT6jDZ/LX4XuVOucY3BJXsQEPJVJCj1euQBOg9bI0ueB
         EJqfJQw0mI7NG5rMnl8oBZIbFICaNDDYnts/IjaadSNBTVROeYfKOIM7Y5St9YzIji5i
         m6YXIm3RWjs1s5Sl+2NAknKJ3n3AvdTRYflbMoUnvUoGwgfcp5mez5vj3MpkF1vd2H8M
         J9XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=M5NobQhj;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.20.43 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2043.outbound.protection.outlook.com. [40.107.20.43])
        by gmr-mx.google.com with ESMTPS id h2si18778wml.4.2020.09.30.14.58.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 14:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.20.43 as permitted sender) client-ip=40.107.20.43;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WF3kIYUst32WCUSkTNkiFSo118OFrSqsvgHKytEwqOKLXUNx7HcXgIcZ82ZxJF35lL31MXKqAz4H6verbSsxSgGOnF1UvEnpa4b48dU1OVLQO6fkbkIUrOSkzxEaTnzbhTb53V3PL3tUAGCH5/NEK9cvSe0ogAC6gEj35hO4PhsxFKWS2W+X4uy8gQ2Smwqk22cx7hDoI64p+UPBrreLE1cOrtLN0Z9SAbHGEZ3ip+2Y4qfCwVWyQe3aFWbQmCdznFCHZg82Nj8+oNodtZMYomdxlln8qvq9vnaPa/FehxTE4/mkAtMUpeiBwLRQ52d7G5lccJdtksdakvWgKM+OBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAN2XSTPWZ8EBysSCDDD5Y5j3cs/CfyyWIHHiRHnus4=;
 b=bOW5H4iMktGgHV9vYBqR3vvY+NlC0sjIcO7KQihfpeq1//q8elhW9s2AXyBvPBNXAZ16WJ22cyFdbWaOav3IoDvlXzq+4NYF7P/SFwzD1Wr6iEbv5VQ9MJjjEZdmaVqwswHAYFKifKzhTdfBy0egOi8xn+BX9ldqNTF7hKfWvtTWhZ0jnIXMAWNzkTVDQ+by2fO3pktV50Ew8XisIxWl1loHZJ3mW1dZDRrf8CTFkMbgFUy07nzi0ItQmBb/f7uA/b0b3obwXwjWX+8b9JnkOznXJ6u3emTsyi2M2rwq/txawmp0cJUOXFXtbqm91aO4mN9bONYAJ7WcO6snGzK2sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com (2603:10a6:803:e7::13)
 by VI1PR04MB4686.eurprd04.prod.outlook.com (2603:10a6:803:71::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.28; Wed, 30 Sep
 2020 21:58:35 +0000
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d]) by VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d%3]) with mapi id 15.20.3433.032; Wed, 30 Sep 2020
 21:58:35 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [linux-next:master 8414/12330]
 drivers/net/dsa/ocelot/seville_vsc9953.c:1107:34: warning: unused variable
 'seville_of_match'
Thread-Topic: [linux-next:master 8414/12330]
 drivers/net/dsa/ocelot/seville_vsc9953.c:1107:34: warning: unused variable
 'seville_of_match'
Thread-Index: AQHWl1tlXbdtoMZp80+IjRU6x06HDqmBuvmA
Date: Wed, 30 Sep 2020 21:58:35 +0000
Message-ID: <20200930215835.siv2bx6g2yotkm5o@skbuf>
References: <202010010203.vu4bFxHO-lkp@intel.com>
In-Reply-To: <202010010203.vu4bFxHO-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.26.229.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4e406d7a-4e64-4845-e2bd-08d8658bfaf7
x-ms-traffictypediagnostic: VI1PR04MB4686:
x-microsoft-antispam-prvs: <VI1PR04MB468659014EB5E50663AC5876E0330@VI1PR04MB4686.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:376;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fu2cFAyBn8LCYBMJBwPhpmLaT2pLdwOXJ/ind5Bopw4VFoEodjQK6C8n71BFdqoigto69klxLON+fBkH2H2Hxjui2yYxP6VKP0tbhYeH/6RPLEp5e4ZShgtBtm4jnCcvvwVIb6jFzhMtuS5XFniPAciK2QEf1sTUGkAGuTiyJl4GIg0QpuPTVwT2SOXGqgLOfh1waiUmVtRKukA965cUraBW+zmxmHImS/SX43BJFIcxJ+awamEgQWERMi8Zh+VgVPUvjjcj1jIsJRtHxVglDJabN26vDEvEaG+/iljd/zIqLbJc10b/Nv5n1B5DdzpgfpqUf9/rLByaluzKq8m+jJWcDWpyIP+od6C50n/sJeXOl882tUOB611oAcvhhGia
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5696.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(396003)(366004)(346002)(136003)(39860400002)(376002)(186003)(8936002)(4326008)(66556008)(66946007)(6486002)(26005)(66446008)(76116006)(66476007)(33716001)(5660300002)(6916009)(64756008)(6512007)(9686003)(71200400001)(44832011)(1076003)(86362001)(2906002)(83380400001)(54906003)(8676002)(316002)(478600001)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: bm+titFycCpOtHGCGEin7DLVIM24i6Kf+2yy/hl2t0KOH6EO6Me1cINqRsRcHzpL8u6rhVxy/r9h1RqQUol1mMETAZJqpbdt3/Rlbq2O9p+tjpQn6JmCD+zyyc9pdVCMb5uMvrHPvwDNQLZQsZovwY/EJCkydpcxPwKtJFa2MtJXV89d2P8YCkfRoXyz0PVm+rXEPpxrDbzqqHwfFTL+Z//gxoC2AhTrVlqcCYjFIjC+J/8dIrxr/E88xdaws5CP6UzOUq49lzJZGf4TICksN4ZG8giydGfjxRFuAx6blqcgKTezYIiaJcClfqwT6ayL3EjuMfXd8n98BE1JgkJXXfTk0GnuLujpfl0j9Iy9T3/SMzqKRPyqsXAlqJCMGn2ulJm/ExCzPFrlklXvRTn9jjg/VWuhMUF9+eOWCbxsdzwXhZ1Q/VLbuoD5rAIG0BmllIZI/UrnWjdrFTKDWNwdtyfm20sLfb4tX4tJFPM404Mojw21uj83uCPAUAzsuyVlrlUdDmZis3MNH6H6z0oiDyUhn8f5INB0G93BUup8Y46a4ZADvJIayphUbNMbYdMBz+I3kKvw8RypVlh5jvNdcqjHaHd9qv9R/DGmBiN9vPNJcD6SPCBsQrlljcEmh3zkoPjkQQJY1Rrzk5bXYwJdfw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <FC7A787058989943B586E3F80D9B140E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5696.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e406d7a-4e64-4845-e2bd-08d8658bfaf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2020 21:58:35.7444
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NZFcXmhUCcC20/PAmttj7XKWN2yy0XzFqJGJbCgrNsQmIwREKw38dZ6DQQ9ycgR2Mp9d4fCOk7e6dzxUaMd3Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4686
X-Original-Sender: vladimir.oltean@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=M5NobQhj;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of
 vladimir.oltean@nxp.com designates 40.107.20.43 as permitted sender)
 smtp.mailfrom=vladimir.oltean@nxp.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=nxp.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, Oct 01, 2020 at 02:51:06AM +0800, kernel test robot wrote:
> Hi Vladimir,
> 
> First bad commit (maybe != root cause):
> 
> tree:   (URL mangled by my smart and secure company)
> head:   de69ee6df1cfbf3c67787d8504fd21b59da39572
> commit: d60bc62de4ae068ed4b215c24cdfdd5035aa986e [8414/12330] net: dsa: seville: build as separate module
> config: x86_64-randconfig-r002-20200930 (attached as .config)
> compiler: clang version 12.0.0 (URL mangled by my smart and secure company)
> reproduce (this is a W=1 build):
>         wget (URL mangled by my smart and secure company) -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # (URL mangled by my smart and secure company)
>         git remote add linux-next (URL mangled by my smart and secure company)
>         git fetch --no-tags linux-next master
>         git checkout d60bc62de4ae068ed4b215c24cdfdd5035aa986e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/dsa/ocelot/seville_vsc9953.c:1107:34: warning: unused variable 'seville_of_match' [-Wunused-const-variable]
>    static const struct of_device_id seville_of_match[] = {
>                                     ^
>    1 warning generated.
> 
> vim +/seville_of_match +1107 drivers/net/dsa/ocelot/seville_vsc9953.c
> 
> 84705fc165526e8 Maxim Kochetkov 2020-07-13  1106  
> 84705fc165526e8 Maxim Kochetkov 2020-07-13 @1107  static const struct of_device_id seville_of_match[] = {
> 84705fc165526e8 Maxim Kochetkov 2020-07-13  1108  	{ .compatible = "mscc,vsc9953-switch" },
> 84705fc165526e8 Maxim Kochetkov 2020-07-13  1109  	{ },
> 84705fc165526e8 Maxim Kochetkov 2020-07-13  1110  };
> 84705fc165526e8 Maxim Kochetkov 2020-07-13  1111  MODULE_DEVICE_TABLE(of, seville_of_match);
> 84705fc165526e8 Maxim Kochetkov 2020-07-13  1112  
> 
> :::::: The code at line 1107 was first introduced by commit
> :::::: 84705fc165526e8e55d208b2b10a48cc720a106a net: dsa: felix: introduce support for Seville VSC9953 switch
> 
> :::::: TO: Maxim Kochetkov <fido_max@inbox.ru>
> :::::: CC: David S. Miller <davem@davemloft.net>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> (URL mangled by my smart and secure company)

Can a human explain to me what's the problem here? Is it because struct
of_device_id is not used on non-device tree platforms? And if so, what
is the "fix"?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930215835.siv2bx6g2yotkm5o%40skbuf.
