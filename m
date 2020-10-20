Return-Path: <clang-built-linux+bncBAABBIUDXT6AKGQE5ENIVCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDD9293F88
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 17:26:28 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id bb2sf1576377plb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 08:26:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1603207586; cv=pass;
        d=google.com; s=arc-20160816;
        b=FP1l28Xl0WjpcEUCuLbd77UPPGNKJo5Sl3MLw+VAA+dTAbij3CD/O2eG8xvyhQLCpv
         6Msb0GjW/83BuxLqHlfJE9P3ODIVgxwtzr9ccRMtrbD7jHaaLiP/A7BzGwCLIJOCq56R
         AaJGUoEAUcevaxixTUg5BuQ8ilT9KlwxOt5YIPdZ8EC4YSsPmGr/j/8GYqyP7HoJhHkm
         O1bpaos0alW7BIQH04mLFTGYHee2skw6aTRb69yNtuW2hPaFUXml/AoIeF8w3lcUciMa
         J3nPbE1yLQxkC5Ovh8rp/VS2tmQtyhZ/2DlzmStrP9k6Z63xgJG8rSu57b7mBxq1yNW5
         01Ag==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=qnCzvwyIvXe2+bIZqAACOWioR1uiDnxn/FhOap42rkA=;
        b=Gbcd/PO+D7OVu89lgL/J37V3XthBchgW/lMv7krWl2t7AtxNapv9pwxtS0TCZHWG6d
         XPMsFuoshp2RgLIeJ9N96YOgQGZM5ecn1H7iPq1P6ElXn8u4vfQOIc61ie4yLsrhLXs3
         U3wWaczm8tT7Z6Fb1bTS1wuGA6hlJqGXMQ8MiEcRFl/H9gXgB77ru7ofGw6iLSqMVJ9x
         arIo5tOzaHqOCT47MeY6Wx+LUP2++vzgp2EyB7Qj8DHNoKUBDhKhlLjnAhqNWDyltGHO
         bPFJP+6gjCM/HQWXMVOJZA2w0YozfEUEp26zUQuoMFIZHjnkOMV+vemv34TcO0KcxjBH
         PI6A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=khFnPQnJ;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.243.83 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qnCzvwyIvXe2+bIZqAACOWioR1uiDnxn/FhOap42rkA=;
        b=AdhLV94T08tMok3AMwB2PmlWq64mc6nWt7u/bF40Go8BfGAt6Ho8CgpIHc1P6gRgMM
         i81LzjIItfxeWsMWu6szhU49kUtDqcqePFJDZdF6WrrGjYhFA5P2P4JuF3xpTeaH030G
         /rX0pXUBQRGQjXwBZm5CgrzaEp/q2CAq0SEvVmDjxmDWcSqQi+nmaunDbK4YvbOnVxx0
         mnifDgjko3WhFGQR7yQ9lkqSZhFB3ZlAH8K6ljEQP9hjiPL76Zcqvk19OwpL9d1d/mv3
         lyg6TAUs9ehkOOqQbEcWBYjdLIqGjR7IntFarWXEPygdi+PO2pc45WHgjVll8UbAOPLf
         qrrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qnCzvwyIvXe2+bIZqAACOWioR1uiDnxn/FhOap42rkA=;
        b=evuPDPdqvCQbN+ZjYF/lhfwZwVw4qouuE8Rl3ZJexKThgCmkUS7HDxftHDfGfqdsy+
         ZkkO6vHZiah/Hw/BnXmP2CDDJ4ietHNhQsIDRT4DEvdOZmh8/iSUb8O19x/wcW9qGwNY
         2AbulYvhgrAw8rJtW2MxHRoeZ8mj0PoUBocRpaZ+JWcA2+4r3of9FTCnZ+6aQYvCYgd6
         ndpCfX9cnLMaB6KTA92okNpxZanKGCokFWkO5+RNjG98MpB5qSwJWbDiqQAfvMivxNJg
         FVU8yEMeuzC+wMTg6hXEoXMLdP6OgwxN0UDMeSlAPl62CIAJ+5dMP9QQLjDRDBcdlHIo
         R2Rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XwWimFFKq5sGRbFU7qlexvJTdB5Bv4fuYArM2rmjhS9Cvwz9W
	hxum8kmhYQTYG6XjxUkty74=
X-Google-Smtp-Source: ABdhPJw86MOiDsSszAgxlcqhyOI8zcqwVVRRn+xifapTAPKuvNUZQ88Byyj1zFDkrPmZpwE2gVxC4g==
X-Received: by 2002:a62:aa10:0:b029:155:d56e:5196 with SMTP id e16-20020a62aa100000b0290155d56e5196mr3205791pff.44.1603207586410;
        Tue, 20 Oct 2020 08:26:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d4d:: with SMTP id i74ls885647pgc.5.gmail; Tue, 20 Oct
 2020 08:26:25 -0700 (PDT)
X-Received: by 2002:a63:1f19:: with SMTP id f25mr3167468pgf.232.1603207585885;
        Tue, 20 Oct 2020 08:26:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603207585; cv=pass;
        d=google.com; s=arc-20160816;
        b=g75jBssC4mQOMFwmpEEFhu3u0wm2hQJYPjBE49DhMnSJTQhNUHI3e/Ev1jo1L6b8H+
         NHiD2OtX2PkXXkp6Kp6zWiLXNOxn6x5GY7tISxgerwM/lf+wqdP0cKvniDuCoy2Yiqwq
         NOxhQZ9QYFT7KKCK7UmkR98kuH7fEQ6aysJu8oofLi2ERPE2+Zn1t+/kLro9vP2FpGRc
         iMXeEhvS7+7rmmLuFn0Z6t0+3ygkRXqM8NrnfIpmngPsLNC5G/AXsctZAs/cCBApx71+
         DRFvkABDsSsJTE52Ha49b/ye39sVwsBhpJOZEHnqWMduCio53p7KvL6VgvEnbzYobTUu
         QBkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=7Z7es8hs12hOa/f3g7dEjuNDCHRy2shg3D4WTyvbp6w=;
        b=Ay8MjijnzGjgSbT2n1lmoibfm9ERq7daezZw9necutHeniUrJ4kftgexV+GkyfSi9l
         LPHtPTQdtZBhVg0n+DkhKSPbYh4sbvC/UWI4ZoauWBqfA10FNfhqu7Khvvf8EiVJF9JU
         V44BNvgqGKER5ZLdH310Nq/2WZ3mPQzB3HKYSNwoVk2C9mm5Fcqkz4G+CotkZOfCcKF7
         +EoCRTV/mcHkZl4zVE6WPBa99eQtZxMrsF3pmwfltrQTYrhO3CZs0fOe5c7sEYjdUR3G
         Q9d3Ps1Xfq1cv8Q789cm9xUnqS7jBeDk+HbIOtAPZTKIFRWPl1IuIK0LJd+xrMz1Lzy9
         LGyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=khFnPQnJ;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.243.83 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2083.outbound.protection.outlook.com. [40.107.243.83])
        by gmr-mx.google.com with ESMTPS id x1si167787pgx.3.2020.10.20.08.26.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:26:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gopakumarr@vmware.com designates 40.107.243.83 as permitted sender) client-ip=40.107.243.83;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9WhZTZcVqs+6b5gLkHzXRCg/6bSF1fDSGHhTsTkM1vRvMpSbALJbMvJ3HuvDm5G92Z0Tp7z4BbJKp/OTSQC77o6DkafUZW3ATK/Q/icPEr0L1dx6y8sc69J8jgU9jnxxOOvoI7mLdwYixLCe6tko+eaiwnDNnSVEFFnTd3HwhD/72Mm55ulClPuRjoJtdPVHoPj4VfxfYq+GvQH8Iy7Lf2USN2k0dANOsdBdhad/dUiNmilXl0aTJK8xrVppXu/EHyFBBh6WcmNKS64Yakp83Ol/XRi7H/U4K+0glkw7uDhgwecAGla/GiQuXZQJX6/Mww7l6fxWoFXhkZTx0gJNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Z7es8hs12hOa/f3g7dEjuNDCHRy2shg3D4WTyvbp6w=;
 b=MWkl7sjkRcQDDuYgVDnwhCCmrywX06l5yD4ZlT0+fcnY6muAWQtw1Ltnu6QzucXrbWIlOhEeOXjXj5qcFRrv6+eFLDD0twlrkGMNLeFshi8hziqmYxvjAPFBTjtwynL2qygmzY/ChwqnyKEQAkXKIHkwANybPMMlVODR3rjb9AcFeDgqBmObUAhOWYhPXQAY/c47ERZBB9tSm7H4P1tZAAM2ypLTgiiRl1tPGXzNHxbO0+puEQ+UK8ZKD5CWMjRJ0JRv2vyOWQFVMn/f9FmSmVLcis7ZEM0+ODH6qdtQpmQe1P8/x/s0MJ5+4K8BIxAiwuqIQA+vxtxfmAgZyH676g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from DM6PR05MB5292.namprd05.prod.outlook.com (2603:10b6:5:5a::30) by
 DM6PR05MB3994.namprd05.prod.outlook.com (2603:10b6:5:8c::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.7; Tue, 20 Oct 2020 15:26:23 +0000
Received: from DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146]) by DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146%7]) with mapi id 15.20.3499.015; Tue, 20 Oct 2020
 15:26:23 +0000
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
Thread-Index: AQHWnjk5ihPzOwsVE02I7/jG5KTBz6mQW+kAgAPEkzyAAWl/gIALAETTgAAhwwCAAAD7Tw==
Date: Tue, 20 Oct 2020 15:26:23 +0000
Message-ID: <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>,<20201020151814.GU25604@MiWiFi-R3L-srv>
In-Reply-To: <20201020151814.GU25604@MiWiFi-R3L-srv>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [103.224.33.65]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4595ebfd-e8cf-40c2-ea34-08d8750c80f1
x-ms-traffictypediagnostic: DM6PR05MB3994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR05MB3994578080DE2C62F57629CEA41F0@DM6PR05MB3994.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pGaeU3UGbwXcMJpovoEhGJHOGeI/6FuAoNaVa6WtnCCq8aC6fPa7cc9D3BnhRqeRxw4IYtYjdsc7A36cy1y9wNxFf4/Umo8rfEggqr4nDXspEDaWcTCEt8hqokn08eMbUiQRn+a8jxtT0nomy6WaeEli114CfMsAPeyu3fj5tVGF8PU48pG/o91ThovjqfghqjPcs5hEW7mL5LXhewtxpl8I8bEzn54OGS/LI/kp3ZlJkNjD/7Dhi72tLAaZP1nG6lLor0pCD+iDyFc7oCjI7t/Ix7qK5pGOlEfJKA7jGaCd0/CemauFhEmmXoV+P6PxKUxZZD50L329FPUT6pZ/7Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR05MB5292.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(66446008)(316002)(55016002)(86362001)(478600001)(2906002)(66476007)(76116006)(53546011)(186003)(64756008)(8936002)(66556008)(33656002)(4326008)(66946007)(91956017)(6916009)(7696005)(54906003)(71200400001)(5660300002)(26005)(8676002)(83380400001)(6506007)(107886003)(9686003)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: c3Pa+rAEU/kYZ+SooBq7iWWdTnOlClFuAgglvc32JY6jhqCUZxixC/IX7AuMcGhBaYPpYU0pTc5HrM/WGFnsfGnGq+4kSqPE0yHfWlvpa+XcRILwqKN6hjc38ZLbtD1X6AGwJW0a59I7oYRPtxstkM1M6XTGVFWrshtNb8BfSoxXvjF6nIDXXse8v5JqqXJpXDP9IfzlNLV+NluKwctfSgRs7ty9YdYI0DkAo7ggzeGS+4HXGl4XRQFSZXk2oE7nj2iQGChI72HHc74CF6ELAmT98LaXrsZWs1+Ds02J132yczNs14N+PPyLnt/VJ+0xMsw6oG6P5zoh0jdNuLZAmHDywXw9yKl3Q/V/256m5w0Q9nlLqVjsrBnGqd0gUAW7Qz0sCZJNShi+P9gVImj/rW66M44Zvdvl4vVH3KE1qxf+fUYw0LND155n4/fAwkGpLWuohxegtSPiFUCc4FQ4RBQz+n08j8AuI+zi6SudMfREvhhvkilRmqr3+5rt+8c9P+UwLEfWC2Rbdh4jV7I6DzfbXzcVOiR8KZCQh2XC70NyGZOMkQDHxVhXXdoGb9L6RxAFxvQSg80c7Uy0B5WpPKFSEmWEjgsUuyxKGCCSzLzDGtYzOazJymq/EhL41NyokNQz9IMgU9KDzvDo6R3glQ==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR05MB5292.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4595ebfd-e8cf-40c2-ea34-08d8750c80f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2020 15:26:23.4201
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoNtWnC/rk9esnXY7nVDSPcI5dJiSjHX7LJ8HJ26/caaQzKDCLUdP0O+wLMT2LeUqGPs0TiexqRCVHQzt3Ry3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB3994
X-Original-Sender: gopakumarr@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=khFnPQnJ;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 gopakumarr@vmware.com designates 40.107.243.83 as permitted sender)
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

>> Here, do you mean it even cost more time with the patch applied?

Yes, we ran it multiple times and it looks like there is a=20
very minor increase with the patch.


From: bhe@redhat.com <bhe@redhat.com>
Sent: 20 October 2020 8:48 PM
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: linux-mm@kvack.org <linux-mm@kvack.org>; linux-kernel@vger.kernel.org <=
linux-kernel@vger.kernel.org>; akpm@linux-foundation.org <akpm@linux-founda=
tion.org>; natechancellor@gmail.com <natechancellor@gmail.com>; ndesaulnier=
s@google.com <ndesaulniers@google.com>; clang-built-linux@googlegroups.com =
<clang-built-linux@googlegroups.com>; rostedt@goodmis.org <rostedt@goodmis.=
org>; Rajender M <manir@vmware.com>; Yiu Cho Lau <lauyiuch@vmware.com>; Pet=
er Jonasson <pjonasson@vmware.com>; Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kern=
el=20
=C2=A0
On 10/20/20 at 01:45pm, Rahul Gopakumar wrote:
> Hi Baoquan,
>=20
> We had some trouble applying the patch to problem commit and the latest u=
pstream commit. Steven (CC'ed) helped us by providing the updated draft pat=
ch. We applied it on the latest commit (3e4fb4346c781068610d03c12b16c0cfb0f=
d24a3), and it doesn't look like improving the performance numbers.

Thanks for your feedback. From the code, I am sure what the problem is,
but I didn't test it on system with huge memory. Forget mentioning my
draft patch is based on akpm/master branch since it's a mm issue, it
might be a little different with linus's mainline kernel, sorry for the
inconvenience.

I will test and debug this on a server with 4T memory in our lab, and
update if any progress.

>=20
> Patch on latest commit - 20.161 secs
> Vanilla latest commit - 19.50 secs

Here, do you mean it even cost more time with the patch applied?

>=20
> Here is the draft patch we tried
>=20
> ------------------------
>=20
> diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> index 8e7b8c6c576e..ff5fa4c3889e 100644
> --- a/arch/ia64/mm/init.c
> +++ b/arch/ia64/mm/init.c
> @@ -537,7 +537,7 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
> =C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (map_start < map_end)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memmap_init=
_zone((unsigned long)(map_end - map_start),
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0args->nid, args->zone, page_to_pfn=
(map_start),
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0args->nid, args->zone, page_to_pfn=
(map_start), page_to_pfn(map_end),
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MEMINIT_EARLY, NULL);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;
> =C2=A0}
> @@ -547,7 +547,7 @@ memmap_init (unsigned long size, int nid, unsigned lo=
ng zone,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long start_pfn)
> =C2=A0{
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!vmem_map) {
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(size,=
 nid, zone, start_pfn,
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(size,=
 nid, zone, start_pfn, start_pfn + size,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MEMINIT_EARLY, NULL);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct page=
 *start;
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 16b799a0522c..65e34b370e33 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2416,7 +2416,7 @@ extern int __meminit __early_pfn_to_nid(unsigned lo=
ng pfn,
> =C2=A0
> =C2=A0extern void set_dma_reserve(unsigned long new_dma_reserve);
> =C2=A0extern void memmap_init_zone(unsigned long, int, unsigned long, uns=
igned long,
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum meminit_context, =
struct vmem_altmap *);
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long, enum me=
minit_context, struct vmem_altmap *);
> =C2=A0extern void setup_per_zone_wmarks(void);
> =C2=A0extern int __meminit init_per_zone_wmark_min(void);
> =C2=A0extern void mem_init(void);
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index ce3e73e3a5c1..03fddd8f4b11 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -728,7 +728,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, =
unsigned long start_pfn,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * expects the zone spans the pfn range=
. All the pages in the range
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * are reserved so nobody should be tou=
ching them so we should be safe
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */
> - =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(nr_pages, nid, zone_idx(zone), st=
art_pfn,
> + =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(nr_pages, nid, zone_idx(zone), st=
art_pfn, 0,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 MEMINIT_HOTPLUG, altmap);
> =C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set_zone_contiguous(zone);
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 780c8f023b28..fe80055ea59c 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5989,8 +5989,8 @@ overlap_memmap_init(unsigned long zone, unsigned lo=
ng *pfn)
> =C2=A0 * done. Non-atomic initialization, single-pass.
> =C2=A0 */
> =C2=A0void __meminit memmap_init_zone(unsigned long size, int nid, unsign=
ed long zone,
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long start_pf=
n, enum meminit_context context,
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct vmem_altmap *al=
tmap)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long start_pf=
n, unsigned long zone_end_pfn,
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum meminit_context c=
ontext, struct vmem_altmap *altmap)
> =C2=A0{
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long pfn, end_pfn =3D start_pf=
n + size;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct page *page;
> @@ -6024,7 +6024,7 @@ void __meminit memmap_init_zone(unsigned long size,=
 int nid, unsigned long zone,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (context=
 =3D=3D MEMINIT_EARLY) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (overlap_memmap_init(zone, &pfn))
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (defer_init(nid, pfn, end_pfn))
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (defer_init(nid, pfn, zone_end_pfn))
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
> =C2=A0
> @@ -6150,7 +6150,7 @@ void __meminit __weak memmap_init(unsigned long siz=
e, int nid,
> =C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (end_pfn=
 > start_pfn) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0size =3D end_pfn - start_pfn;
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 memmap_init_zone(size, nid, zone, start_pfn,
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 M=
EMINIT_EARLY, NULL);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
>=20
>=20
> ------------------------
>=20
> We have attached default dmesg logs and also dmesg logs collected with me=
mblock=3Ddebug kernel cmdline for both vanilla and patched kernels. Let me =
know if you need more info.
>=20
>=20
>=20
> From: bhe@redhat.com <bhe@redhat.com>
> Sent: 13 October 2020 6:47 PM
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
rnel=20
> =C2=A0
> Hi Rahul,
>=20
> On 10/12/20 at 05:21pm, Rahul Gopakumar wrote:
> > Hi Baoquan,
> >=20
> > Attached collected dmesg logs for with and without
> > commit after adding memblock=3Ddebug to kernel cmdline.
>=20
> Can you test below draft patch and see if it works for you?=20
>=20
> From a2ea6caef3c73ad9efb2dd2b48039065fe430bb2 Mon Sep 17 00:00:00 2001
> From: Baoquan He <bhe@redhat.com>
> Date: Tue, 13 Oct 2020 20:05:30 +0800
> Subject: [PATCH] mm: make memmap defer init only take effect per zone
>=20
> Deferred struct page init is designed to work per zone. However since
> commit 73a6e474cb376 ("mm: memmap_init: iterate over memblock regions
> rather that check each PFN"), the handling is mistakenly done in all memo=
ry
> ranges inside one zone. Especially in those unmovable zones of multiple n=
odes,
> memblock reservation split them into many memory ranges. This makes
> initialized struct page more than expected in early stage, then increases
> much boot time.
>=20
> Let's fix it to make the memmap defer init handled in zone wide, but not =
in
> memory range of one zone.
>=20
> Signed-off-by: Baoquan He <bhe@redhat.com>
> ---
> =C2=A0arch/ia64/mm/init.c | 4 ++--
> =C2=A0include/linux/mm.h=C2=A0 | 5 +++--
> =C2=A0mm/memory_hotplug.c | 2 +-
> =C2=A0mm/page_alloc.c=C2=A0=C2=A0=C2=A0=C2=A0 | 6 +++---
> =C2=A04 files changed, 9 insertions(+), 8 deletions(-)
>=20
> diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> index ef12e097f318..27ca549ff47e 100644
> --- a/arch/ia64/mm/init.c
> +++ b/arch/ia64/mm/init.c
> @@ -536,7 +536,7 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (map_start < map_end)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zone((unsigned long)(map_end - map_sta=
rt),
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 args->nid, args->zone, page_to_pfn(=
map_start),
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 args->nid, args->zone, page_to_pfn(=
map_start), page_to_pfn(map_end),
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MEMINIT_EARLY, NULL, MI=
GRATE_MOVABLE);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> =C2=A0}
> @@ -546,7 +546,7 @@ memmap_init (unsigned long size, int nid, unsigned lo=
ng zone,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 unsigned long start_pfn)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!vmem_map) {
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 memmap_init_zone(size, nid, zone, start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 memmap_init_zone(size, nid, zone, start_pfn, start_pfn + size,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MEMINIT_EARLY, NULL, MI=
GRATE_MOVABLE);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct page *start;
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index ef360fe70aaf..5f9fc61d5be2 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2439,8 +2439,9 @@ extern int __meminit __early_pfn_to_nid(unsigned lo=
ng pfn,
> =C2=A0#endif
> =C2=A0
> =C2=A0extern void set_dma_reserve(unsigned long new_dma_reserve);
> -extern void memmap_init_zone(unsigned long, int, unsigned long, unsigned=
 long,
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 enum meminit_context, struct vmem_altmap *, int migratetype);
> +extern void memmap_init_zone(unsigned long, int, unsigned long,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 unsigned long, unsigned long, enum meminit_context,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 struct vmem_altmap *, int migratetype);
> =C2=A0extern void setup_per_zone_wmarks(void);
> =C2=A0extern int __meminit init_per_zone_wmark_min(void);
> =C2=A0extern void mem_init(void);
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index b44d4c7ba73b..f9a37e6abc1c 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -732,7 +732,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, =
unsigned long start_pfn,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * expects the zone=
 spans the pfn range. All the pages in the range
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * are reserved so =
nobody should be touching them so we should be safe
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zone(nr_pages, nid, zon=
e_idx(zone), start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zone(nr_pages, nid, zon=
e_idx(zone), start_pfn, 0,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 MEMINIT_HOTPLUG, altmap, migratetype);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set_zone_contiguous(zone=
);
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 2ebf9ddafa3a..e8b19fdd18ec 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -6044,7 +6044,7 @@ overlap_memmap_init(unsigned long zone, unsigned lo=
ng *pfn)
> =C2=A0 * zone stats (e.g., nr_isolate_pageblock) are touched.
> =C2=A0 */
> =C2=A0void __meminit memmap_init_zone(unsigned long size, int nid, unsign=
ed long zone,
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 unsigned long start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 unsigned long start_pfn, unsigned long zone_end_pfn,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 enum meminit_context context,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct vmem_altmap *altmap, int migratetype)
> =C2=A0{
> @@ -6080,7 +6080,7 @@ void __meminit memmap_init_zone(unsigned long size,=
 int nid, unsigned long zone,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if (context =3D=3D MEMINIT_EARLY) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=
 (overlap_memmap_init(zone, &pfn))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 continue;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (defer_init=
(nid, pfn, end_pfn))
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (defer_init=
(nid, pfn, zone_end_pfn))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 }
> =C2=A0
> @@ -6194,7 +6194,7 @@ void __meminit __weak memmap_init(unsigned long siz=
e, int nid,
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if (end_pfn > start_pfn) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 si=
ze =3D end_pfn - start_pfn;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zo=
ne(size, nid, zone, start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zo=
ne(size, nid, zone, start_pfn, range_end_pfn,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 }
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
> --=20
> 2.17.2




--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM6PR05MB529293AC2B077B5170FFE625A41F0%40DM6PR05MB5292.na=
mprd05.prod.outlook.com.
