Return-Path: <clang-built-linux+bncBAABBB5JQD6QKGQEVDJBEGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B86D2A2C5C
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 15:15:36 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id k200sf1644230oih.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 06:15:36 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1604326535; cv=pass;
        d=google.com; s=arc-20160816;
        b=lzf4I/NW/tvVeXe/Y3S8hckUy4oTVkgCKhy3JtkuYd7xWoC5bONR9HsJlkmD5WPzFc
         qf01/IB/4C+bK40fBrNFTBv+0zni07k7dKQVRlEUZnQUm2Oxi7LIeAzKR178Gu578WMp
         /vMiY8vfYL7X0sJuuw12Le7tpIVE+XIBmvEFchpMpXNWqoMZWCIZAbSAv4+7Ag87xNy0
         GxGML0t3qyzwLfPeoznH4DV6v/1azMMmJ6gJSg9nKtNxL7tr7Fix8mF7jZYU4UPxsrAB
         ursfzggUx4afT2exHma/h89PqHR6CCM3IjHsioH2RHtJ9uGHHWjxhv0Rygq+uMpCbrX8
         BIYg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=8vMYbzg2itybo7Mk03G6YxCaV/y9KaIicTGgY87I9XE=;
        b=oqARE9rV4qAdbaSp4Lo7liPcoKrBBLdOuHxWgk/vzH9b8bxjhlFRC4kheoRCQg7/F2
         7PM06s3r+VHx5zx+dLo0Jhs6Z+K3RoNGxc3hFl/PhtJzkpsnpwQb05Po9xZ+KG+2W2M3
         z3eodBvHRsQHvgf19gZ1MGQm20evoV4PedE9LEgBjZxgFsf4Bdo+spIrVFW84OOQG0xD
         kmPiiasqfntJmVKHJuCrxN1gXGLix4yR7836LZRY1N+rvltGNd3Y/gQDKOZpjQBwmocy
         clSnrDe3yAG/I5tTeoyteLB1TH5JlGkhjSlupiZA2lDjHg29aHMjEoc1yJR4WrW6rK/z
         f3vQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=HwaknSRY;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.236.73 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8vMYbzg2itybo7Mk03G6YxCaV/y9KaIicTGgY87I9XE=;
        b=ZGAnLp+/U6P8N3goDW9xTEVlgu/U1dVePEDOdNNFdpskLIpuhIy+13B2WhKzkxmijd
         LX2oXmS+mMqI+AtJAGmE2KlCuBp7WzNcGEpy5jD8ZLTnX05IK71bGMzSPwXfweXGii4W
         rHFuVADtztgo6cnq/1AiUTHBhAwiCKsRVSy7Yc1hQ80sZPozdbCR8dUmCPI9qYwu1A7M
         qjSadB/FnqqPSYV6hv6BmdHgNL6HJiC1vZ0OYthCQlX1ANdePdzhs+J+SymNhzzhI9IR
         du6UvJtw1yDpeLAIZkidY05aJ9P3SEn1Q4o2YkXhJLHeF+z50sGFLUkbSdzoxkn1AQ2t
         0ZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8vMYbzg2itybo7Mk03G6YxCaV/y9KaIicTGgY87I9XE=;
        b=OBa4dvS+7cURaQEGaw3SSRyCcATyc1wWnWNBiiPeFsF3lhUBNFRS/VudDzmGbJZqu8
         0ZpDlaBmP026p8myI1s/kK4pIv/ZP/MOCUlWjDmNXH5w/UPlMKIbCKhKpeFXJLHGZHJ2
         Wfqh6m7eDgDlZ6Xw0ERDtqOdR8vTskLHlqKkb1qKHOlI8RkPbszLkGfbSBeSHIV4xNxV
         Y8wytrWB5fuMeHbY96HogUGvfwG2DaX+gRaAJ9NXPOsIS1gUzDKo2pDBtZ1QRxmWF33x
         dGP2V5FsN4XeZY+wLhWCfJ9RVNaakGQpkb2K4s5Z4YEqQd/97TDo7e+nwWbDl0HhbIIu
         LEVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XHlj3Jzn4wki+NL5b4gtlWKdwBks4lxxEuBew4l+qsxxOsGOV
	E/il9K2ziD9FOMzs++XvQkM=
X-Google-Smtp-Source: ABdhPJxqJJLoWNFz/b7LjEvBKubtHuIuH3HYTqFkcEJC5d9bKRceuhLhihsJMBAXsSYM/AQRoOkP+w==
X-Received: by 2002:a9d:21c5:: with SMTP id s63mr12435627otb.171.1604326535290;
        Mon, 02 Nov 2020 06:15:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b784:: with SMTP id h126ls404973oif.3.gmail; Mon, 02 Nov
 2020 06:15:35 -0800 (PST)
X-Received: by 2002:aca:a988:: with SMTP id s130mr6395174oie.172.1604326534913;
        Mon, 02 Nov 2020 06:15:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604326534; cv=pass;
        d=google.com; s=arc-20160816;
        b=X/Kvu3NXcjx6UzWOT0lgJGLr81EmU2i+sFU8Wc1Arq9j7rHqGdlY9UyU+yg9liLDWd
         AjMk4YJxcZ/LM2zk7vRJGilt7ohxs2IdOQW584+pNYTpKLpuIbXzb12Sh6TzrfbafNk2
         hYWsV8RLINEHZhtwI3oaF1MfPMk/19NlmWJqndmhAJzcgljuNKXSo/JXvtvovdxTkN2B
         wddTfw7uosR9zR8IEBX6EhTYO73uxPGgaDK4slc+V4+s+pHEIU9rdXVLWqSEu4Vasuvt
         6TmdRPX+56oFAqfgS2Gzu82w/7gxOM7kjuAOs3Z+Jq/6leYsrfPBNMqLNxz4e8ZzAv8E
         BlcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=3nTE+rUHVgj2jf3pH0KS0bvRRau+/3rw4cgO+tAy9EY=;
        b=EFnl7aI0+439dQXcZymT610X58bgby3Ogk+I5tRzTvxPWcpOOjUaeKaG02SjZcs1WF
         BvT3XHxGmetKqanIR19uSKG9hV8C8Pjdq/XvP1oge2bt7mxPliIO5Mem24Y3x35pGmj5
         vJiMcjmi51BPKNQYM5XLXk6GCltvNu+Gjt/+a/CgXTuGQbjE15ujYFfpMdkcmL5JyxH7
         b791+AfgugR74dnQWfnCsCf7Qj4zNoeRwieqNMiuNPuSg+f32tG3Gh4jTiECMehfwAxe
         cuq+2DLvl8VMq7hFFUxslgGfGOiYqrb1BFJaFGdO0w6lvMdLZTlvit3R59XM4neRjX9u
         /8qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=HwaknSRY;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.236.73 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2073.outbound.protection.outlook.com. [40.107.236.73])
        by gmr-mx.google.com with ESMTPS id i23si1357362otk.5.2020.11.02.06.15.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 06:15:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gopakumarr@vmware.com designates 40.107.236.73 as permitted sender) client-ip=40.107.236.73;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=caCWii0s4uTiOCpNn80oaaHkDfRvEdXF2GwX0+IhWnDO7qfylgkn4UffyiKNj7SNm+OJn+pAcY3K7Mwg80ooJznW7u/BXWNlqT4AX3tZiwIkI2G2Zc7+lT9VAkzCyJyQ7PKNDUoeDU1e36Ea1Spu2yonx8fRw7Kg27I3xEXIuk6RvduigQe585UibNTlUDGaOAnH/ixpi1ffws2vy7Wobx6Srvh563r+0mmSDRAoHkVrJR3KZ1OgdhKqSZUV7FeDnE5AiUS1gIXk64H28Vnkh1d7/eWo7KpYckuIdqNfsscHZpCdhV4hluy4IuOV34cusrdSUMBwgdt01b21UqKgXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3nTE+rUHVgj2jf3pH0KS0bvRRau+/3rw4cgO+tAy9EY=;
 b=Y/M15tWl3MrEbmuYJBQUGevMq0pn7Owzq3ymy0smdMLeupUlXBYO2kbQIokigyjad1xq90dlB/iMxoRBORhYqc0iHJdfH6Upzzx2NBlJym7lllEwLxFPaDRbC9UbkIcvkSxQ025aocnWW+k8MXgcTIXOqWOuNbsweUJe0EkCl1Xp+M/DAWAP29RPXiuChrfclfiX2Jr5+ov5smCdpYn+IIfM+y9TJ7i7iR2qPa3ZqRqgmoaeRuxdj43+EPLvnyNWRLHd1P1PSw/iomaCNq+NhAVP0wjqo6mVb4p/O6i9qQoTn04HVHKGcy1WXEzCJ0TKuUaPXoRAXBhYVnT6DSEPUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from DM6PR05MB5292.namprd05.prod.outlook.com (2603:10b6:5:5a::30) by
 DM5PR05MB3321.namprd05.prod.outlook.com (2603:10b6:4:45::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3541.10; Mon, 2 Nov 2020 14:15:32 +0000
Received: from DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146]) by DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146%7]) with mapi id 15.20.3541.010; Mon, 2 Nov 2020
 14:15:32 +0000
From: Rahul Gopakumar <gopakumarr@vmware.com>
To: "bhe@redhat.com" <bhe@redhat.com>
CC: "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "akpm@linux-foundation.org"
	<akpm@linux-foundation.org>, "natechancellor@gmail.com"
	<natechancellor@gmail.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "rostedt@goodmis.org"
	<rostedt@goodmis.org>, Rajender M <manir@vmware.com>, Yiu Cho Lau
	<lauyiuch@vmware.com>, Peter Jonasson <pjonasson@vmware.com>, Venkatesh
 Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Topic: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Index: AQHWnjk5ihPzOwsVE02I7/jG5KTBz6mQW+kAgAPEkzyAAWl/gIALAETTgAAhwwCAAAD7T4ACZ34AgADZzMiAEREnqA==
Date: Mon, 2 Nov 2020 14:15:32 +0000
Message-ID: <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>,<20201022040440.GX25604@MiWiFi-R3L-srv>,<DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
In-Reply-To: <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [103.224.33.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1235515-e134-4ca5-88ef-08d87f39c292
x-ms-traffictypediagnostic: DM5PR05MB3321:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR05MB33214E77903D8E7A9D14B070A4100@DM5PR05MB3321.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Up9I7Q+1RDL+qjj98IXKG++ZvMgTAimzLZtwwf08fPdlcX7YhvmylUrYc91wn7bama7RylFPKsu+gBiQl4iBlgOhcLpMdYBgc8Q1J6U70cNIVMsoIIW3QEivUWNHIlW1EDlb3qGtagYH1KTiVZr5sdWOjWjzeknksOmDRm2Df1ktqHPqdEhg+Cm9FHj6ah/rTTLrlO7/Ybv//HhZFAYnFGGCmz8NfILK6Ojq5VsGkxQnHnvWtmXVQkBJR7WKG57xwfgHZQyI1grcWOR6LdJ4NYqL5IBQ9RdrHTDo5NthHtWoStmXnxyq7rbH94cQVaLEpZ971//aGXT9PxkmhagFkw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR05MB5292.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(39860400002)(346002)(366004)(376002)(71200400001)(4326008)(7696005)(107886003)(8936002)(83380400001)(6506007)(53546011)(186003)(26005)(8676002)(33656002)(86362001)(52536014)(6916009)(316002)(66446008)(55016002)(66946007)(66556008)(66476007)(54906003)(5660300002)(76116006)(9686003)(2906002)(91956017)(64756008)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 98C5mP83CvdOkrDDtqAXTJUH4Fo8lJ/sS1r4vqBKv+obpYaTlXrPsa1y+HHDIknl3x4IAjJzld3BLK4YchxyZK4GSFz28DLTultUacAIDY1lJ7ynL1n+XrmlYmcHNfHdeo6J0s6hrlMN7H7aAya4nKzlPZXektEeQNZY5s09EOT0t1E9TDSQq0BDAxXriZY1ip5BnUju4/ZM1M11qc5M6dH7OgkQq0PTPiiwaBquxEKBfNvbMGJs7tc8t+GbAAz5eX1ci6WvFD7A+ynbA1FcELgFi0nYEBvkeTQ4d3QzqbXCISaD+ZbtNnllh4rGpq4nVXADSP6F5YjU0llnRZQjdg/aoUpMp0gwqSVzb6YBU7OlbnAFkPDljxKmifWIS7NlapKs+OdU8CDNIhyn4yOIo42xDeWmCbalDLmFlC0ZlsHGWThO+15wIzgboHPWQ9liIYO4wrGeZIRrmF60i127DSOfDT4Q4xpTiGedEnctNZTiser1sBc1pygcOPhrrfkU7Ad91Q4QstnfSIMrH9jFBTalhjbeVNY+AeYPtAZHG6ISGwqVkaGQnpnrnJzarIWRSlLV2ZK+QfLjtxUbhRyuxjSnsYvhOrOhwxNtdMq75lJW5buvGwILbRSebJlYOqkRaZeEeIo+Ht9JOlwjx3BJIw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR05MB5292.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1235515-e134-4ca5-88ef-08d87f39c292
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2020 14:15:32.5090
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HS9ekwF3jxuT0mExPUAekIIsk2s4DzVg/1gtglcBD7GvyvjWU/rwyLh6iwv2sq7fLKKADc2uKVt1frDkfiv40g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB3321
X-Original-Sender: gopakumarr@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=HwaknSRY;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 gopakumarr@vmware.com designates 40.107.236.73 as permitted sender)
 smtp.mailfrom=gopakumarr@vmware.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=vmware.com
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

Hi Baoquan,

There could still be some memory initialization problem with
the draft patch. I see a lot of page corruption errors.

BUG: Bad page state in process swapper  pfn:ab0803c

Here is the call trace

[    0.262826]  dump_stack+0x57/0x6a
[    0.262827]  bad_page.cold.119+0x63/0x93
[    0.262828]  __free_pages_ok+0x31f/0x330
[    0.262829]  memblock_free_all+0x153/0x1bf
[    0.262830]  mem_init+0x23/0x1f2
[    0.262831]  start_kernel+0x299/0x57a
[    0.262832]  secondary_startup_64_no_verify+0xb8/0xbb

I don't see this in dmesg log with vanilla kernel.

It looks like the overhead due to this initialization problem
is around 3 secs.

[    0.262831]  start_kernel+0x299/0x57a
[    0.262832]  secondary_startup_64_no_verify+0xb8/0xbb
[    3.758185] Memory: 3374072K/1073740756K available (12297K kernel code, =
5778Krwdata, 4376K rodata, 2352K init, 6480K bss, 16999716K reserved, 0K cm=
a-reserved)

But the draft patch is fixing the initial problem
reported around 2 secs (log snippet below) hence the total
delay of 1 sec.

[    0.024752]   Normal zone: 1445888 pages used for memmap
[    0.024753]   Normal zone: 89391104 pages, LIFO batch:63
[    0.027379] ACPI: PM-Timer IO Port: 0x448


________________________________________
From: Rahul Gopakumar <gopakumarr@vmware.com>
Sent: 22 October 2020 10:51 PM
To: bhe@redhat.com
Cc: linux-mm@kvack.org; linux-kernel@vger.kernel.org; akpm@linux-foundation=
.org; natechancellor@gmail.com; ndesaulniers@google.com; clang-built-linux@=
googlegroups.com; rostedt@goodmis.org; Rajender M; Yiu Cho Lau; Peter Jonas=
son; Venkatesh Rajaram
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kern=
el

Hi Baoquan,

>>=C2=A0Can you tell how you measure the boot time?

Our test is actually boothalt, time reported by this test
includes both boot-up and shutdown time.

>> At above, you said "Patch on latest commit - 20.161 secs",
>> could you tell where this 20.161 secs comes from,

So this time is boot-up time + shutdown time.

From the dmesg.log it looks like during the memmap_init
it's taking less time in the patch. Let me take a closer look to
confirm this and also to find where the 1-sec delay in the patch
run is coming from.


From: bhe@redhat.com <bhe@redhat.com>
Sent: 22 October 2020 9:34 AM
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: linux-mm@kvack.org <linux-mm@kvack.org>; linux-kernel@vger.kernel.org <=
linux-kernel@vger.kernel.org>; akpm@linux-foundation.org <akpm@linux-founda=
tion.org>; natechancellor@gmail.com <natechancellor@gmail.com>; ndesaulnier=
s@google.com <ndesaulniers@google.com>; clang-built-linux@googlegroups.com =
<clang-built-linux@googlegroups.com>; rostedt@goodmis.org <rostedt@goodmis.=
org>; Rajender M <manir@vmware.com>; Yiu Cho Lau <lauyiuch@vmware.com>; Pet=
er Jonasson <pjonasson@vmware.com>; Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kern=
el

Hi Rahul,

On 10/20/20 at 03:26pm, Rahul Gopakumar wrote:
> >> Here, do you mean it even cost more time with the patch applied?
>
> Yes, we ran it multiple times and it looks like there is a
> very minor increase with the patch.
>
......
> On 10/20/20 at 01:45pm, Rahul Gopakumar wrote:
> > Hi Baoquan,
> >
> > We had some trouble applying the patch to problem commit and the latest=
 upstream commit. Steven (CC'ed) helped us by providing the updated draft p=
atch. We applied it on the latest commit (3e4fb4346c781068610d03c12b16c0cfb=
0fd24a3), and it doesn't look like improving the performance numbers.
>
> Thanks for your feedback. From the code, I am sure what the problem is,
> but I didn't test it on system with huge memory. Forget mentioning my
> draft patch is based on akpm/master branch since it's a mm issue, it
> might be a little different with linus's mainline kernel, sorry for the
> inconvenience.
>
> I will test and debug this on a server with 4T memory in our lab, and
> update if any progress.
>
> >
> > Patch on latest commit - 20.161 secs
> > Vanilla latest commit - 19.50 secs
>

Can you tell how you measure the boot time? I checked the boot logs you
attached, E.g in below two logs, I saw patch_dmesg.log even has less
time during memmap init. Now I have got a machine with 1T memory for
testing, but didn't see obvious time cost increase. At above, you said
"Patch on latest commit - 20.161 secs", could you tell where this 20.161
secs comes from, so that I can investigate and reproduce on my system?

patch_dmesg.log:
[=C2=A0=C2=A0=C2=A0 0.023126] Initmem setup node 1 [mem 0x0000005600000000-=
0x000000aaffffffff]
[=C2=A0=C2=A0=C2=A0 0.023128] On node 1 totalpages: 89128960
[=C2=A0=C2=A0=C2=A0 0.023129]=C2=A0=C2=A0 Normal zone: 1392640 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.023130]=C2=A0=C2=A0 Normal zone: 89128960 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 0.023893] Initmem setup node 2 [mem 0x000000ab00000000-=
0x000001033fffffff]
[=C2=A0=C2=A0=C2=A0 0.023895] On node 2 totalpages: 89391104
[=C2=A0=C2=A0=C2=A0 0.023896]=C2=A0=C2=A0 Normal zone: 1445888 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.023897]=C2=A0=C2=A0 Normal zone: 89391104 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 0.026744] ACPI: PM-Timer IO Port: 0x448
[=C2=A0=C2=A0=C2=A0 0.026747] ACPI: Local APIC address 0xfee00000

vanilla_dmesg.log:
[=C2=A0=C2=A0=C2=A0 0.024295] Initmem setup node 1 [mem 0x0000005600000000-=
0x000000aaffffffff]
[=C2=A0=C2=A0=C2=A0 0.024298] On node 1 totalpages: 89128960
[=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 1392640 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 89128960 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 0.025289] Initmem setup node 2 [mem 0x000000ab00000000-=
0x000001033fffffff]
[=C2=A0=C2=A0=C2=A0 0.025291] On node 2 totalpages: 89391104
[=C2=A0=C2=A0=C2=A0 0.025292]=C2=A0=C2=A0 Normal zone: 1445888 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.025293]=C2=A0=C2=A0 Normal zone: 89391104 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 2.096982] ACPI: PM-Timer IO Port: 0x448
[=C2=A0=C2=A0=C2=A0 2.096987] ACPI: Local APIC address 0xfee00000

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM6PR05MB5292DF14DF1C82FFE001AC24A4100%40DM6PR05MB5292.na=
mprd05.prod.outlook.com.
