Return-Path: <clang-built-linux+bncBAABBTM4QX6QKGQEL3ULOTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF452A4547
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 13:34:23 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id a24sf5077063pfo.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 04:34:22 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1604406861; cv=pass;
        d=google.com; s=arc-20160816;
        b=f9iWOLfr9ptgs6xua4hHqYdw1uA9asuRHWDR8O8tFLYQUPGqB0nwNEcHkWDx0XK2IT
         JvfaGtKifdoDj0I2dyZC43asDz88lbMZN2TMumMe3Iua7UzuKGzrgSOcSJpvl2Thh4HL
         9b03GGCRsNVIMC2ONEUMaPCsG4tq/LZRpHE9zIf/lGyH+JpxsxBXTUhbPU1m4pYAPhv+
         z1ktjdrkkaasQ9oyScO+SVoqPtW+1Cd6RXiqFHkUhfMz7BP74vA7c1Bgaym4fM1pMVeN
         M+oIHyFcymtFfAQH/9GKSFUHS7g8dBi74NoVirxybQ/lzF/OvDfOgfqswwleo8qL0FnX
         MmYQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=Yltt9yB0CPVQNQ1AFXKz3z3vXAL2eAOOyQHpBtz+u0I=;
        b=Zp2OIevX7nNeWeBv4mEMZCVrS+PVioVdt6qLhxM7sKs+s78OziIo89HpguwRljR62P
         PMkTQ2yslV6dwH9i3xpP21goMSGQAW4xUqkSU07lgeeYpbf9CObo6AD/2wB71hE2bwjR
         Z80gbM22r3CU7fnZCXQwzahvli1c+ceM4eTDl779c8bYO23hhFp02ZAMhwfZegySwqgf
         mfuzWD1X8z2KDzewZfn6geZLaatz5SKKmw+qY3Xvsm15apyz/bNw9Ans1b6KXUawzztF
         /Cw2lDCaIMXoUN2BCOXIw8klC+VTgrvKZqr7M2KBef6moNoXyXsZZjUwLYImVN20GUVF
         d6Fg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=gJULn07d;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.77.59 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yltt9yB0CPVQNQ1AFXKz3z3vXAL2eAOOyQHpBtz+u0I=;
        b=NKY8wCVfluaa1HNot+tU8Wv3Tb3Wgy9lXEWJeHO0Tq8b0Uva+NfJdql9tRlWF3waaz
         hpo57WbkO4tZH7c+Dr1DoeLTbC4DaQiDr+vGGnFIUIxv7VrclkIMxlDLv13UR0JfyyFA
         RkYJ5AnCA2z7EW8j48Tvf3w7gg9gXZ7Gesm+m1DSSiGRGbO1BfyqdNqt/u3khW6id46z
         F6vCd90tMwqQsFo/vftJMI/uPNnnUuNPfdTx3W2SXcFa7q8SnTEtGQaQ9+NvI9+/ODVs
         yx1eXirQH7/7zEQtzcHVPbbYYzHudTumrHzy6KJ8ZaDs7biKjQKNp9kb7Qh67fgX5hY7
         RTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yltt9yB0CPVQNQ1AFXKz3z3vXAL2eAOOyQHpBtz+u0I=;
        b=RsfncdBQPAfIVwdXD0VgypoBTlfT9V7yWnKtpthMMFEJmSyXno5AzKmtYjKQiHZLD4
         AjiXju7UcnTtgkLPFdRRe/Iw9iYJaNm6WyjQgbvlgLbfJfMRvRGCbiDV9Ij4WaNDmkOa
         b3dJ8YOpI9h1l1Yz9wJPV8YeTr0HkyDT5WfZBKR04Lg7BkVqIeKOHePNaMzec9JcHPRd
         LIjs/pt+YxfdQv1eC7g70dr41QOSnU9NTo4vhJwbWkFjDk0NiHEtoGlfP3PhZ8FqYz+W
         fr231+RLpuEe8PLIv7YNFgznbP0BDKzn/5SZVG/WkBnqxxXiNHMoVNNchqLMzcBo2/Bd
         RHLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321SyorIQZ+burC80QNUdW/jho4yVfIyrycESbQjRs7MzK2Gc0c
	aPxkvbnUEq68YoCCmdMAQE4=
X-Google-Smtp-Source: ABdhPJy6XZu0j2kG7iNs/OMQvm5ivOnza/4C9QktpSYMSTCtmsk1KZmsJwKOKRlezE8nw2sJBZFNgw==
X-Received: by 2002:aa7:8b50:0:b029:18a:adb4:8411 with SMTP id i16-20020aa78b500000b029018aadb48411mr15185178pfd.66.1604406861542;
        Tue, 03 Nov 2020 04:34:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5:: with SMTP id 188ls626724pgd.4.gmail; Tue, 03 Nov
 2020 04:34:21 -0800 (PST)
X-Received: by 2002:a65:5809:: with SMTP id g9mr17589405pgr.35.1604406860868;
        Tue, 03 Nov 2020 04:34:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604406860; cv=pass;
        d=google.com; s=arc-20160816;
        b=kI8adqeIcYryUWxkVaOQ0/WXi1L95+GU+NT1O4h2qKetNKQetmGxMlx38i8GF2GQAU
         OSc9E+MVsgCsBMbhARfJlIjGYqRDR2EKJtNKepo7rVMzwa7zB47HA9cycOdjA3I7ErDP
         7H5KsnXt5vADyQ9jOTVkmeSUPYI7U0Ca6Tb0KGqkXA7fvqy0aX/52E7b/exTd6mXOnGi
         a4XKH3QvaW8Dfp/0d+HWPu6Ma+e3+rbUUGvGN7eWHylrmlW5cX2/7saCmBXR3+WwO2S1
         7+m9pM2Wt7LCzaMeKqLnoMPFbfSekY/PHj5zrr8yKk280CgjoNlIBLSeJ6fs1n+6FvJV
         sPGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=/6IkiTBhOnFECJnIyOJISJG/UWD7BMed6y9MEOWkVAU=;
        b=vWah+i2A9DQIl+bqazwBMisgNQ6Ebo0biM5pzTYqrHKsz8rsGUPtyrb3v6dKt5BCLN
         H7/zlOYOpSSTk2b94YhUri49vzOiQRqfxEmhMWwq39ugo9ctJ2QUrWPXpBINrwJDJqti
         eHrvqzUbn9FnHJZUZtQT9xu52X6ntZo5UMFpmeYZajV6rTZ8UVauKrs7T7xqv7DBgSnU
         Qrxr4JIfCoJJ/VvAsm4iVkoZoJ51OBso9p+1Tr9OPKxOniUUF8zd3KAA2OWeZK2peQo5
         VbxrFAQyhJO3UiYobocSzQmanq6pz8lTxKNzbfnBQA5B+OeK/AjgWyFLFn0e7m95nIxY
         OzBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=gJULn07d;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.77.59 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770059.outbound.protection.outlook.com. [40.107.77.59])
        by gmr-mx.google.com with ESMTPS id z18si930165pfc.3.2020.11.03.04.34.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2020 04:34:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gopakumarr@vmware.com designates 40.107.77.59 as permitted sender) client-ip=40.107.77.59;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLeZfzWD7Zzn3EnTigvoUGWEOWZe4h4kWlwYveS5XhQcGvBdoQkAdJOWLif+oPGikatvSXoAfZkDstiQ9NVmPB9fcEpQqSMDAp4zKN9/ZblGHFsMmRRPj+lHor1C3mBmygr2+Y9iKbUckCXWHVyS23OzrXHLQJCv2zRdc0ZIMTlHZa/hqrJ9o3bPBnWi2HDHuYsNMoFTiijlwr0lRy3UMazXaYlLgwMYg5Xs19LF0tZd4z9B18Q6a697ZkV3yw4Rgpeg/+2xKQMR0h/lWbAsLHcyUH3eW96p5nw0culubFdT83Eg9TBUqLJvrJMHEHJswwceM/UIaFr0NWhbJjYdaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/6IkiTBhOnFECJnIyOJISJG/UWD7BMed6y9MEOWkVAU=;
 b=a91gGccUKGzwlseZ5MO+GdGUHu+wbJsO9R1fk87vnQiHSSU1auHenGhGvvU3OVw85Qu1kDJIP7hdOb1N1gNyWySupSS6oAeIREz7zIx2wTyGB/nmsE57aqpb51GTU5/7eAQSiUy2hyuws5zoq/6PtF0NwYDws5d3Fb1PqAe7203JMqdhQuiWt5WjGTQ+LUiNNMJHfGEfjXg8JEdwNOt6/6YgtvBLD7HGiujuZ0pokc0g7eaplxqFjRaxscWhXWzCrT9NgTFh/ELQ9y+0LCK+QITQ9YNyUHQ3XJsJ4pUrRkhWm5qwqQigZMbLcNdWUzLsGWlegntsfXxRyu4Rs1JX2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from DM6PR05MB5292.namprd05.prod.outlook.com (2603:10b6:5:5a::30) by
 DM6PR05MB4636.namprd05.prod.outlook.com (2603:10b6:5:14::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3541.13; Tue, 3 Nov 2020 12:34:17 +0000
Received: from DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146]) by DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146%7]) with mapi id 15.20.3541.016; Tue, 3 Nov 2020
 12:34:17 +0000
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
Thread-Index: AQHWnjk5ihPzOwsVE02I7/jG5KTBz6mQW+kAgAPEkzyAAWl/gIALAETTgAAhwwCAAAD7T4ACZ34AgADZzMiAEREnqIAADZOAgAFrvxs=
Date: Tue, 3 Nov 2020 12:34:17 +0000
Message-ID: <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>,<20201102143035.GA3177@MiWiFi-R3L-srv>
In-Reply-To: <20201102143035.GA3177@MiWiFi-R3L-srv>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [103.224.33.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee166c2d-711b-42dc-4483-08d87ff4c7ef
x-ms-traffictypediagnostic: DM6PR05MB4636:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR05MB46362CCC0F77DA94942004ABA4110@DM6PR05MB4636.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: talEpydvkVdxawGpKhskZ5jow2FUkLARcjLtc1JAMvX55la/IVGcCaAs/Vb5uGxfP6JqlJfkrThYshpKNOjq7x6YY3kws++0EwVaR4ThGJLUJNz3ZDw7PLIuZdE+4VDBAqIhV65+aWLA2BH0vywpvGgOrA4FZJcdmsj4EjCCcU1+G95PwbMzjLLAHMIV+DcGJGsyxyOKQ6WbAVnuoz3nii795LoVxUKWE/3chxtgkK3Lv5uMMEe2lht6zN5+ngPCtw8VcH4ls2VZhD0m514pOCtxGgv3pvTH+3O3JX0367Vn/9Z/SUzBS+QdKU5fYoFAQePgEsgH1/c9Fz94tpbfug==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR05MB5292.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(4326008)(66476007)(66446008)(107886003)(6916009)(76116006)(66556008)(64756008)(91956017)(66946007)(52536014)(5660300002)(9686003)(498600001)(83380400001)(55016002)(86362001)(53546011)(8936002)(54906003)(2906002)(33656002)(71200400001)(8676002)(7696005)(26005)(6506007)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: xJfmuwQ6eEITWple7YKHOkeMbbvwmyOGEThb58Lm3OA6Xd8RcZsj+e/5ZQNj61JPyWALzD+v0uqSSKGjWkFGcuTAZ46QxNorUEF8XA8x5pEQmvHK2gUNeSnvUOSX+QPtH0vrw+88pNuswwffFMOeGl8jctzZeFy4HW2OqwtOEG6zX7fNnnsrpwXg3zTAz+wWSANq8D4vldIFnAXl3EHcPzwfFTbKdEi9P+yKbI+AnYAxU3S+y1H1HdmEAGHjAYrSVjgpz2wwPw03q9Yka6G8qzyrOFRTWcg64e1Na9DmFAcD9egGlgw1fuTlfdr5q/PkTqpPHDNq4KZVsfyH0f+5aMV4ssKaIybFgZ8bioSdO19yPdUwiRKRwGW05xNNVOPVq7ZALgjGdnYMzeoQgh88xEjPw2pkp0Ya9GxaWHgyto2Hk2qOMpz3KNQTNXXmL8Q7/ZCgQOsL+fmohf7JjLM/yuNG18VyrgbZQt5q1QMnc7xkLdBe8aDbFBk5LRwXLr2WM2UyFPh9pwLER/Y/3mEPNODSCIALZSuWjFE7gdsmoCSCg9dfexwI8GTBdEhZjMo1fVGPCNWYgt3aJwjKAjbmvs1d9TSeAgxNgpqF/wxyOfe0XQ83E7M93LvrF6CymhD5c5xWgvraHt5OLX+glHlumg==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR05MB5292.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee166c2d-711b-42dc-4483-08d87ff4c7ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2020 12:34:17.4058
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u1+Hj5zgQEUsNdyBUVbzbCGAVFfAmEe/kF+phdXpEAfYSKfYTNjmvzHc9sdT9Ij4Su9ZfVXcZjQlMUHhbynqmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB4636
X-Original-Sender: gopakumarr@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=gJULn07d;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 gopakumarr@vmware.com designates 40.107.77.59 as permitted sender)
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

>> So, you mean with the draft patch applied, the initial performance
regression goes away, just many page corruption errors with call trace
are seen, right?

Yes, that's right.

>> And the performance regression is about 2sec delay in
your system?

The delay due to this new page corruption issue is about
3 secs.

Here is the summary

* Initial problem - 2 secs
* Draft patch - Fixes initial problem (recovers 2 secs) but
brings in new page corruption issue (3 secs)

>> Could you tell how you setup vmware VM so that I can ask our QA for
help to create a vmware VM for me to test?

* Use vSphere ESXi 6.7 or 7.0 GA.
* Create VM using vSphere Web Client and specify 1TB VM Memory.
* Install RHEL 8.1, that's the guest used in this test.

With draft patch, you should be able to reproduce the issue.
Let me know if you need more details.

________________________________________
From: bhe@redhat.com <bhe@redhat.com>
Sent: 02 November 2020 8:00 PM
To: Rahul Gopakumar
Cc: linux-mm@kvack.org; linux-kernel@vger.kernel.org; akpm@linux-foundation=
.org; natechancellor@gmail.com; ndesaulniers@google.com; clang-built-linux@=
googlegroups.com; rostedt@goodmis.org; Rajender M; Yiu Cho Lau; Peter Jonas=
son; Venkatesh Rajaram
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kern=
el

On 11/02/20 at 02:15pm, Rahul Gopakumar wrote:
> Hi Baoquan,
>
> There could still be some memory initialization problem with
> the draft patch. I see a lot of page corruption errors.
>
> BUG: Bad page state in process swapper  pfn:ab0803c
>
> Here is the call trace
>
> [    0.262826]  dump_stack+0x57/0x6a
> [    0.262827]  bad_page.cold.119+0x63/0x93
> [    0.262828]  __free_pages_ok+0x31f/0x330
> [    0.262829]  memblock_free_all+0x153/0x1bf
> [    0.262830]  mem_init+0x23/0x1f2
> [    0.262831]  start_kernel+0x299/0x57a
> [    0.262832]  secondary_startup_64_no_verify+0xb8/0xbb
>
> I don't see this in dmesg log with vanilla kernel.
>
> It looks like the overhead due to this initialization problem
> is around 3 secs.
>
> [    0.262831]  start_kernel+0x299/0x57a
> [    0.262832]  secondary_startup_64_no_verify+0xb8/0xbb
> [    3.758185] Memory: 3374072K/1073740756K available (12297K kernel code=
, 5778Krwdata, 4376K rodata, 2352K init, 6480K bss, 16999716K reserved, 0K =
cma-reserved)
>
> But the draft patch is fixing the initial problem
> reported around 2 secs (log snippet below) hence the total
> delay of 1 sec.
>
> [    0.024752]   Normal zone: 1445888 pages used for memmap
> [    0.024753]   Normal zone: 89391104 pages, LIFO batch:63
> [    0.027379] ACPI: PM-Timer IO Port: 0x448

So, you mean with the draft patch applied, the initial performance
regression goes away, just many page corruption errors with call trace
are seen, right? And the performance regression is about 2sec delay in
your system?

Could you tell how you setup vmware VM so that I can ask our QA for
help to create a vmware VM for me to test? I tested the draft patch on
bare metal system with more than 1T memory, didn't see the page
corruption call trace, need reproduce and have a look.

>
>
> ________________________________________
> From: Rahul Gopakumar <gopakumarr@vmware.com>
> Sent: 22 October 2020 10:51 PM
> To: bhe@redhat.com
> Cc: linux-mm@kvack.org; linux-kernel@vger.kernel.org; akpm@linux-foundati=
on.org; natechancellor@gmail.com; ndesaulniers@google.com; clang-built-linu=
x@googlegroups.com; rostedt@goodmis.org; Rajender M; Yiu Cho Lau; Peter Jon=
asson; Venkatesh Rajaram
> Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Ke=
rnel
>
> Hi Baoquan,
>
> >>=C2=A0Can you tell how you measure the boot time?
>
> Our test is actually boothalt, time reported by this test
> includes both boot-up and shutdown time.
>
> >> At above, you said "Patch on latest commit - 20.161 secs",
> >> could you tell where this 20.161 secs comes from,
>
> So this time is boot-up time + shutdown time.
>
> From the dmesg.log it looks like during the memmap_init
> it's taking less time in the patch. Let me take a closer look to
> confirm this and also to find where the 1-sec delay in the patch
> run is coming from.
>
>
> From: bhe@redhat.com <bhe@redhat.com>
> Sent: 22 October 2020 9:34 AM
> To: Rahul Gopakumar <gopakumarr@vmware.com>
> Cc: linux-mm@kvack.org <linux-mm@kvack.org>; linux-kernel@vger.kernel.org=
 <linux-kernel@vger.kernel.org>; akpm@linux-foundation.org <akpm@linux-foun=
dation.org>; natechancellor@gmail.com <natechancellor@gmail.com>; ndesaulni=
ers@google.com <ndesaulniers@google.com>; clang-built-linux@googlegroups.co=
m <clang-built-linux@googlegroups.com>; rostedt@goodmis.org <rostedt@goodmi=
s.org>; Rajender M <manir@vmware.com>; Yiu Cho Lau <lauyiuch@vmware.com>; P=
eter Jonasson <pjonasson@vmware.com>; Venkatesh Rajaram <rajaramv@vmware.co=
m>
> Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Ke=
rnel
>
> Hi Rahul,
>
> On 10/20/20 at 03:26pm, Rahul Gopakumar wrote:
> > >> Here, do you mean it even cost more time with the patch applied?
> >
> > Yes, we ran it multiple times and it looks like there is a
> > very minor increase with the patch.
> >
> ......
> > On 10/20/20 at 01:45pm, Rahul Gopakumar wrote:
> > > Hi Baoquan,
> > >
> > > We had some trouble applying the patch to problem commit and the late=
st upstream commit. Steven (CC'ed) helped us by providing the updated draft=
 patch. We applied it on the latest commit (3e4fb4346c781068610d03c12b16c0c=
fb0fd24a3), and it doesn't look like improving the performance numbers.
> >
> > Thanks for your feedback. From the code, I am sure what the problem is,
> > but I didn't test it on system with huge memory. Forget mentioning my
> > draft patch is based on akpm/master branch since it's a mm issue, it
> > might be a little different with linus's mainline kernel, sorry for the
> > inconvenience.
> >
> > I will test and debug this on a server with 4T memory in our lab, and
> > update if any progress.
> >
> > >
> > > Patch on latest commit - 20.161 secs
> > > Vanilla latest commit - 19.50 secs
> >
>
> Can you tell how you measure the boot time? I checked the boot logs you
> attached, E.g in below two logs, I saw patch_dmesg.log even has less
> time during memmap init. Now I have got a machine with 1T memory for
> testing, but didn't see obvious time cost increase. At above, you said
> "Patch on latest commit - 20.161 secs", could you tell where this 20.161
> secs comes from, so that I can investigate and reproduce on my system?
>
> patch_dmesg.log:
> [=C2=A0=C2=A0=C2=A0 0.023126] Initmem setup node 1 [mem 0x000000560000000=
0-0x000000aaffffffff]
> [=C2=A0=C2=A0=C2=A0 0.023128] On node 1 totalpages: 89128960
> [=C2=A0=C2=A0=C2=A0 0.023129]=C2=A0=C2=A0 Normal zone: 1392640 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.023130]=C2=A0=C2=A0 Normal zone: 89128960 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 0.023893] Initmem setup node 2 [mem 0x000000ab0000000=
0-0x000001033fffffff]
> [=C2=A0=C2=A0=C2=A0 0.023895] On node 2 totalpages: 89391104
> [=C2=A0=C2=A0=C2=A0 0.023896]=C2=A0=C2=A0 Normal zone: 1445888 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.023897]=C2=A0=C2=A0 Normal zone: 89391104 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 0.026744] ACPI: PM-Timer IO Port: 0x448
> [=C2=A0=C2=A0=C2=A0 0.026747] ACPI: Local APIC address 0xfee00000
>
> vanilla_dmesg.log:
> [=C2=A0=C2=A0=C2=A0 0.024295] Initmem setup node 1 [mem 0x000000560000000=
0-0x000000aaffffffff]
> [=C2=A0=C2=A0=C2=A0 0.024298] On node 1 totalpages: 89128960
> [=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 1392640 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 89128960 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 0.025289] Initmem setup node 2 [mem 0x000000ab0000000=
0-0x000001033fffffff]
> [=C2=A0=C2=A0=C2=A0 0.025291] On node 2 totalpages: 89391104
> [=C2=A0=C2=A0=C2=A0 0.025292]=C2=A0=C2=A0 Normal zone: 1445888 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.025293]=C2=A0=C2=A0 Normal zone: 89391104 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 2.096982] ACPI: PM-Timer IO Port: 0x448
> [=C2=A0=C2=A0=C2=A0 2.096987] ACPI: Local APIC address 0xfee00000
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM6PR05MB5292FD196FF6B18DCB47CE25A4110%40DM6PR05MB5292.na=
mprd05.prod.outlook.com.
