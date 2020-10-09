Return-Path: <clang-built-linux+bncBAABBA6FQH6AKGQEYB5RN5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 085D32889A0
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 15:15:49 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id h20sf6231632plr.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 06:15:48 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1602249347; cv=pass;
        d=google.com; s=arc-20160816;
        b=a8bR/HvXfXNfGCigh+E1sLSbMc/TQFg1rzzaUPW8zzqGIsRumOvjzSz9sj/Nu/XePO
         CrvpzwAk7CtDUPLy+Cv/nu+vwJntjrxE95hNki68w2qbf938bfKf+oDE1T8ujcO2u9Co
         nAdZYB1juIposjzzG0O+N2L8umxjTA8x7FBmZ/JAoQuIwrQ+G2nelJymLNb1l8SFx1BP
         J1s8uu5q123CDekpVzFK5XZ2xYUXPCqpmyF9kPPeYTJGPYR7x5p4Laotdtzj2Eehr4Aq
         MeUuOF2utp2d5pcXlZ8FhZSO9DCYT1JJ9DIJgFLgt+ZT6XAED31pbvrHxN/FRpRi4wYN
         acrw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=DQpzggUNt0KwKCFZjBwByv8J2kknbd8+50fgLHGU1I8=;
        b=pTVpdE4J2BofoAgDi1067NHyh6lOp7SwLkVktCuvnzAzTcMdhdW+kpRKsdGugF3yuZ
         8t3leAdW14wN35Ttq0ncRwSETp4cDiIpoyIYZh8omRhfmHRW6VIiJ4uorbgEblPO0cEO
         IDCuPmHaVRJi9nazr+Pgxcl2kMfwtiaqA2r+/H8aGEDW9AGcaImvm04na0+cAGjF/bEV
         kQf5BJ5tUoDhCGWY0B2TVvCW2kFKiKeg6viF/5qiZ4pCw85x+VIq863oEESxYH/x4nm1
         xY0DH/+yn7kIK57uY7qs/IuWzzF9g7bYcBcQ04zgHqhNX1HjQqMiCX6706cxp+CiYyE4
         2WAg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=uG0L7vzD;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.93.75 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DQpzggUNt0KwKCFZjBwByv8J2kknbd8+50fgLHGU1I8=;
        b=SN4LnfFWhg8VJFvLdHry6jDA3NGlq5WVv2sn+j6DlNuuO4HL4+/IXorE5uhu5Jtjc8
         wgEVvOMmqcztIo+0f9SZNo9aeGA9463W0cQ4RFAJD5lgecZk9qVa8qdi6ozsl6g2qCXu
         /6iLsB6bovPniTDkZ7Sy8olksAa/dmxyEbq6ewAHRH2X+fehGqXewWRI1vb5Vlk2e2ux
         hNVGAdOh4z1OGXbkD11ufm9NkudZ+pDffMVH1cwTXNJ2DFDINMYK0bKe6XqMy40zqzSe
         Zveh0ATrqzTdp5lsVmsWMOFY/ZEKzj2CH1+qQsaaYOwTnrdCurYKCAsKWMdiA2N8K2SM
         IsLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DQpzggUNt0KwKCFZjBwByv8J2kknbd8+50fgLHGU1I8=;
        b=iLQFTuhaW/dz0HM7uzfw4dvcJ/5YMqlDLwWIADl/An2AX3eQWUEpoZx//SHiO1jQYD
         uO3vTGcycSdT3uuh0pjqoWUOpUzUtw1qypWaeIa9UqBKkOFpATy5YiTjn6N8yEJe+4+i
         BcVuk89A129HmqADadbOqvpcXXMgfuxqu+PrKn/yP/3msWt++dL+p/s0RHZTJOaENJxQ
         3eX9rdPqDxr2g+e6zQGNrcYIf0BJzSLKAfPQSyKebFTbLjENiPH1CfHLcvIHQJJ6A+Nf
         7NhBzJkfNsQSUN9Ffwzr6aJnNRp+KbZlS9cpqmDznfxaqeiKU9OcNjVUfRHt8wo8K5eq
         QnZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ijqc67Go7B/ps+BJRbpEwXkjU8NLzRF7yyImRiI1EdYGAPN2e
	xoqzr0vw6V2SnWxEhsiTTpY=
X-Google-Smtp-Source: ABdhPJzEFgZv6fsrfGnoDeujjGRhubGoq/ZtguktHnHgOC39XWqB96yF7V4B42kDwuChXRchhfLjZw==
X-Received: by 2002:aa7:9607:0:b029:155:2b85:93f5 with SMTP id q7-20020aa796070000b02901552b8593f5mr10376170pfg.36.1602249347533;
        Fri, 09 Oct 2020 06:15:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4547:: with SMTP id x7ls3376543pgr.2.gmail; Fri, 09 Oct
 2020 06:15:47 -0700 (PDT)
X-Received: by 2002:a63:fc10:: with SMTP id j16mr3423768pgi.315.1602249347031;
        Fri, 09 Oct 2020 06:15:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602249347; cv=pass;
        d=google.com; s=arc-20160816;
        b=EvaRXnb4k62OQhIrx2WL2D0fRTF0wOBXsnP6PBrzYSn4jvhn0vSmpIo1F6KBaNBBuz
         fLin5WTBdUS/xl7InqVNV1RZbaw+dUtKNJ67EN6qBp+nEgh3RxEr+hBKvMYVLNfQ/w5h
         LB4szzwRQovuLkz6AZaElK7p9xMsIm6JxYeOH9T6JEdtvEIqJAQiT64A/xNbIOMdfZmx
         qqQh0K/Guf9x9wpI4hKU2Il5qpDZfLlZfHBjXqqguNzry6ByGDtZP1wFmbgSQvmN5HqH
         d3OKL8SHPOkOltFoNz3I5fCWKGU2OoqWGMwrTWmCmGZOxk18xid2Jxil0e+mO3YoOlZJ
         vtHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:dkim-signature;
        bh=Impx6rpK4bJ1x+iTFzrAFzAfltNXcNBfAKD0GDgQsGY=;
        b=GTIW3oC2X6c5BsCwcf/RdMMuyfiPoUdGUOj16yl2eZLvSS+LzFbSojbWFfyLhL0sFy
         Ox2gY6xZbOY/BMzCfZ2hG2UYviOgP1SlIipEAcWNVj0eKt0hWSRJL2C5QrANeGLvEmok
         rzvMYQoYgpVsdjsk5Au2ByE26iiIhRzK/hQfNc4p3uQ/kMWF+9rwjhkduobqUg9o+URy
         YOoQ4Iu3bUN0nOEg7qfrdZ+j35vw+Id3aNFyuSp/HGSEMei8TK8+V6XJNW9if443gayE
         UpoH+194GunYFgJs4qH2df/D61QrPzNNyMdmggS1dN7hYwKAlZQpbwCo43DZkz3IrdYh
         sl6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=uG0L7vzD;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.93.75 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2075.outbound.protection.outlook.com. [40.107.93.75])
        by gmr-mx.google.com with ESMTPS id np11si125942pjb.1.2020.10.09.06.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 06:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gopakumarr@vmware.com designates 40.107.93.75 as permitted sender) client-ip=40.107.93.75;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n8B+5JOsdQQ+9U1fZ+dLu21qs6g8eyqOhcT2+xPWg40dH6OayeKOi3e27wx42WVfoAJva4m2tzsyECzpW0RGy8iGK0omi8yeBQhp+aPERg2FUdivTYp7P8SZYsq1RsGtVysXIPUgyXAFoxwC3HJdaA9jAi5Ma950LkTgemAQNhrSkT6YSLL1hLMmNDBBDevMO4weOinx1XIx12cbYD7T+rRrrA0kS5Gq3g/ahPWLPkX+kHPJjOouB1kGISiPsY3JAMRB7lD2M0rtndoj60Ijf2kX/TKzYollrmWB47LxqEEVcHfSe8kJMQ3OeAwA2smHSDkb5eXeKHMl+XevbFpCKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Impx6rpK4bJ1x+iTFzrAFzAfltNXcNBfAKD0GDgQsGY=;
 b=XI0NAAjheuNYc+ZK+4XkmBYq/S6U25sJogJFhOrOwShRXYFNhYz8ltASkLX9lRVHL7bNtuzUwcwu55/heDpbm/PgJCc5P5lYgRink/krPl9a/OrFT1F9JbAaEI1D6YbgSjH+GxOYe+D4iRoW88ewTMHGje7JSDY6aPwOqXKCniy7RwhoGRE+kMxyDAiiuVajRHJcuDdakp9rPjYC5KetZe4N+0NeiEEXpYvwwVoQZvgFESlIcaorEj4+WbWsSFIcTu+TYdL8tA9kGel16sdCSvv2WQOeeoJLP5ucruB2PLIOZM329J/EYTIpkQC0f6XKIEx/2wHcNGzuAo4pVQ9o2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from DM6PR05MB5292.namprd05.prod.outlook.com (2603:10b6:5:5a::30) by
 DM6PR05MB6441.namprd05.prod.outlook.com (2603:10b6:5:130::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.11; Fri, 9 Oct 2020 13:15:43 +0000
Received: from DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146]) by DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146%7]) with mapi id 15.20.3477.011; Fri, 9 Oct 2020
 13:15:43 +0000
From: Rahul Gopakumar <gopakumarr@vmware.com>
To: "bhe@redhat.com" <bhe@redhat.com>, "linux-mm@kvack.org"
	<linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
CC: "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>, Rajender M <manir@vmware.com>,
	Yiu Cho Lau <lauyiuch@vmware.com>, Peter Jonasson <pjonasson@vmware.com>,
	Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Topic: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Index: AQHWnjk5ihPzOwsVE02I7/jG5KTBzw==
Date: Fri, 9 Oct 2020 13:15:42 +0000
Message-ID: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [43.225.165.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96a3a9e8-bebd-4920-b50b-08d86c556d0b
x-ms-traffictypediagnostic: DM6PR05MB6441:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR05MB64416F39E10C2AD30A5474CDA4080@DM6PR05MB6441.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /JYVEV8gvPpF576kjkw0eEzdrMAbwJCEi/nga5vmdXIjSoNuXb5NhBTdJZTuK0oTUoooGg8D0CJb+/oXKgeVZLfD3s23IojS1gI6psAvMsd/LVVHLiy07v//UfA/5v38wJpZ6r2CT04S+w9txtCbOCki0Gi5GjKcucOXnwtCMTY5xnMI4MnTooMJ4QWX6c5BU6kyPOBcuIyiGwDxj5T57GOg3aJZBmIS4MDSCtqaqPM53xFTFo7jcJQqBlLXE7Mq1GVZc08JjjQoe1+4RgYHsDbD6RW/G0FAmCwv6ZvdBerqh7tVL5+V2cId3VEEkRUryALJXBQm2PmfONDLIzkofQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR05MB5292.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(346002)(366004)(376002)(136003)(33656002)(9686003)(478600001)(2906002)(64756008)(76116006)(8936002)(66446008)(66556008)(91956017)(83380400001)(66946007)(55016002)(66476007)(26005)(316002)(110136005)(5660300002)(54906003)(4326008)(86362001)(6506007)(107886003)(8676002)(186003)(71200400001)(52536014)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 4EPfNVK2JOoDygrL+qU1n+96qQfNteVp4yI+7J0BIuY0KePClTDxV/WuyoN4nTdRDIIxPmqHZopMyfdw5YQ3VrmGszXObqXiutnKF1FghFB5QCwWDIX31yK9UHO8sT5E6/oBulyax4pWb3Ke3z9VI4o8ascTluqXez5XSgslA3yJ9w7BWteYqbOqR7QQj5PNnHkuWoh8TfYtaPTDxagNPjOu8TmmIKe185XD26SDjRSrLxqwDxIP8CGH976JyE2QRSUw6KnjopBxcIN/PYdPfWc6Crm3IpOOTdVhWS5HXLNZu4rH87GPqELym30xjogPPBPaUCf2sVnFELGX05koxlLK860FfOKM+EofNo+JI+fNhcdXQXSGpM080IAzKN76qY63L8wLXKT5+jiVV/r5KrGXo5dWR26sU1ehf1etFl7ch6hGarF+1aWRf+XNA7QpMYyrc1zvmoP1Z2GprIAloBMBJ7VuSXaPRYXKpzHyZ5dy0ajk3YO+91mX6ZzxGPPV9jMQ3SUYd7kdTlumFxY2nH5WICMElD1m+bOZ2JLcWLY29vpanCHlL/wshxiIRbp7fKzvc1pAog+fwDvAl2GcO0F8eyn6tolDZfxN6ouit1oZ+9J+qgR7oIFwKviHzR+T5m8gM7vLBoniMXoT+uBpxw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR05MB5292.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96a3a9e8-bebd-4920-b50b-08d86c556d0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 13:15:42.8619
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnTnbvA9rAsXh01hKh6EnqW+eMOdkr0bTdDy4Ox+0qyJx9R3dCYqtvlpiYk86xSPgQUPKNJfLGveH4G4GkuGMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB6441
X-Original-Sender: gopakumarr@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=uG0L7vzD;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 gopakumarr@vmware.com designates 40.107.93.75 as permitted sender)
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

As part of VMware's performance regression testing for Linux Kernel
upstream releases,=C2=A0we identified boot time increase when comparing
Linux 5.8 kernel against Linux 5.7 kernel.=C2=A0Increase in boot time is
noticeable on VM with a **large amount of memory**.
=C2=A0
In our test cases, it's noticeable with memory 1TB and more, whereas
there was no major=C2=A0difference noticed in testcases with <1TB.
=C2=A0
On bisecting between 5.7 and 5.8, we found the following commit from=C2=A0
=E2=80=9CBaoquan He=E2=80=9D to be=C2=A0the cause of boot time increase in =
big VM test cases.
=C2=A0
-------------------------------------
=C2=A0
commit 73a6e474cb376921a311786652782155eac2fdf0
Author: Baoquan He <bhe@redhat.com>
Date: Wed Jun 3 15:57:55 2020 -0700
=C2=A0
mm: memmap_init: iterate over memblock regions rather that check each PFN
=C2=A0
When called during boot the memmap_init_zone() function checks if each PFN
is valid and actually belongs to the node being initialized using
early_pfn_valid() and early_pfn_in_nid().
=C2=A0
Each such check may cost up to O(log(n)) where n is the number of memory
banks, so for large amount of memory overall time spent in early_pfn*()
becomes substantial.
=C2=A0
-------------------------------------
=C2=A0
For boot time test, we used RHEL 8.1 as the guest OS.
VM config is 84 vcpu and 1TB vRAM.
=C2=A0
Here are the actual performance numbers.
=C2=A0
5.7 GA - 18.17 secs
Baoquan's commit - 21.6 secs (-16% increase in time)
=C2=A0
From dmesg logs, we can see significant time delay around memmap.
=C2=A0
Refer below logs.
=C2=A0
Good commit
=C2=A0
[0.033176] Normal zone: 1445888 pages used for memmap
[0.033176] Normal zone: 89391104 pages, LIFO batch:63
[0.035851] ACPI: PM-Timer IO Port: 0x448
=C2=A0
Problem commit
=C2=A0
[0.026874] Normal zone: 1445888 pages used for memmap
[0.026875] Normal zone: 89391104 pages, LIFO batch:63
[2.028450] ACPI: PM-Timer IO Port: 0x448
=C2=A0
We did some analysis, and it looks like with the problem commit it's
not deferring the memory initialization to a later stage and it's=20
initializing the huge chunk of memory in serial - during the boot-up
time. =C2=A0Whereas with the good commit, it was able to defer the
initialization of the memory when it could be done in parallel.


Rahul Gopakumar
Performance=C2=A0Engineering
VMware, Inc.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM6PR05MB52921FF90FA01CC337DD23A1A4080%40DM6PR05MB5292.na=
mprd05.prod.outlook.com.
