Return-Path: <clang-built-linux+bncBC3ZF2VMQQKRBKFCULUQKGQEEDG4FNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B36FD6709D
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 15:54:48 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id g8sf4341816wrw.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 06:54:48 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1562939688; cv=pass;
        d=google.com; s=arc-20160816;
        b=JTOQOi5uuax2T8Y5P99Qc+ezspRyjPF2nYc2uKDP4wBeDMiKUOYcDfcbkonykru84c
         JAgTNzX0Vj3mEC378vHhtH+Hbscf9cM12nzJEPAVvmX+irnmZHltwEU87qQyGZFglsYZ
         YhTPrKa6z6RK/x/e2p3Mx2FEZHxHNA3RF263k2zVdTHnnTPPGxS/8OuPnO1qekk438Qm
         xATfI4Ih5b9KuZWhH/FfXECPXSvDQfkN8DBzM29ici2Y1I6GLVKxmmbssKXquGUN3RBx
         efcyE0a55NEiNJIrodaBDEQsPTuP0KXTr5AA+PGka36tT80jRtMubBw2Uc3nTp17wi37
         1Mzw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :mail-followup-to:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=usoGvQ16Uv1ArVL+/XqtmUu0MGZ0OeLayjQDcdNXyf8=;
        b=oMqtLScMvbGlz4FN9DAYcXvOW5CTQ6iY/LMPBik/2NmwuvErBOq+zu4BIbbphyhVTR
         JNDu5hzXq9Pc9w3V0VWEsfYttXnoYNBY7H7aaEz7stAzQWCdvtdEciyZ4tuFq91wOhB+
         1eTC6iY7eXSFXcprhaVsgBbGMH1M9eXA7zW/dFLj4TFaBoj5ejJWOFnD06ZymjChFQx0
         A9W89GAcDo96mXs0AXH9BSI3TvQs11QGsxNJlhU+HeASUoNoOa7wAIhxweQpqHDtmM6P
         mesW9RRY0pNn/cvOvfWVL1OuuVJ0Qa3RoWUC6vdq2R+7w1HWdkwV8Lq36+M6oKY/8C7Q
         sUcw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@virtuozzo.com header.s=selector1 header.b=KxYbFp2R;
       arc=pass (i=1 spf=pass spfdomain=virtuozzo.com dkim=pass dkdomain=virtuozzo.com dmarc=pass fromdomain=virtuozzo.com);
       spf=pass (google.com: domain of rkagan@virtuozzo.com designates 52.101.141.243 as permitted sender) smtp.mailfrom=rkagan@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :mail-followup-to:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=usoGvQ16Uv1ArVL+/XqtmUu0MGZ0OeLayjQDcdNXyf8=;
        b=ROGFXuElFRxHHDAjCdh698uNag/wOFJy6SczwiSzYTLDxFGjvq08pB0B4ntjIW8qU+
         zK5bHfjhLO4Sx6Q+W7pRkMU/g4bVbwnD6F4YZ2uig0nMA2HF3Kca3+6HumuAh/KxCHtf
         8RBoh6sU0PnFRlWFyPLD8kHka8qKbms12PPnDnN6OZX9dmfIFVM6nQBmHRBJGGAL/GoO
         dpouOsRT4qAkuTTtak7Xbh+35y8SgauKuMaYVx8wYaOyvzkwSI8v4jyAe9r5HwcWZm/e
         QoKhQ1JyLpaHUffSUYQiuXiLwZzH/Pbv5C5zwKblwx7lJRDeLMqslEr4cKYt+7TkoW4T
         qbuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:mail-followup-to:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=usoGvQ16Uv1ArVL+/XqtmUu0MGZ0OeLayjQDcdNXyf8=;
        b=dMJscmOx4yh0VFd0MTmT7QuBHzqbAGr9TsH3jBHkX5MzPH64DR18en0JtvA80GmjE/
         HpmwM2II5Vgr8Bg9llxZmNx5wPv4xs1wxHBJuYd7PxLaAqO7J8VFM6HuT1w99ae/ekvm
         S4vKFMK5AB/2/S0ildeH71oBGtPzrzj25ziXQl2h9Fa1kzW4yOyB0UhtUEDi75SUIV33
         quFf8yYTiKHtgKYAmvDMhpRk5gTRDMWvnHeLeCywt8jhfiNaN0wwSQkvyQp69qBYZc1n
         0GqlmxFDA9ZilfxIkftzRqUM3wHyCNGky/547iooOb+UAPK0T4We82uTsb0X45wQhq+i
         9ICg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFIbStTee8/f50JwLxCUla09UhklQVyJvmL7e7i6FBm9zISEfQ
	u1fWh5Ye/449aJ79X9u56r0=
X-Google-Smtp-Source: APXvYqy/Rro7E4amKbuTwyLOLurXV+uXyKnM/AoRjDGnEU0ayuGLhnZcLs3pdmlxqc4vEe5o+NcZBg==
X-Received: by 2002:adf:e708:: with SMTP id c8mr485285wrm.25.1562939688475;
        Fri, 12 Jul 2019 06:54:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:53c6:: with SMTP id a6ls3189026wrw.2.gmail; Fri, 12 Jul
 2019 06:54:48 -0700 (PDT)
X-Received: by 2002:adf:a70b:: with SMTP id c11mr12423396wrd.172.1562939688105;
        Fri, 12 Jul 2019 06:54:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562939688; cv=pass;
        d=google.com; s=arc-20160816;
        b=xztJvN010uimdMDShCbfiHiSpH1rRwEEdEIbl86AovB/CD2roEyckgneqJaoj0pgde
         NUjN33P+jALFXufjTrGURX9J7D/VAYVlY+BrziE+OrUn3KQYDuQRiOSmsehlhY1w/kYn
         vgdE2sMdP6FM9edDMQi/6caqPDASJyfDCL0lACYnVERj9YJv+9dHuyGMGyQ/+YElmlRg
         WokCas8lxI8Pg3rbwM5DZE1Cxco4Daus9g/yxwx7nOUQ/aSDPh2kdn+augkdSmQiGbzZ
         OXEXnjKI4MUbz6cy1LlZavuxyGGCY9uXqRKZ3iitT9QOEAEr6UvMT9Ew94uZHuG4j6Lc
         4pmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:mail-followup-to
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature;
        bh=ZliQVgXdGRoIL/8ZIliPg3yU2/XmSi6A05UccHYH2w0=;
        b=IsfBKrFo3a0P9U/CWP06vuDnFkD7coNZpUMrkC3absfcFemsj6zX+eBgbz4L7JEAZY
         x7ywOdhpWwBEnGPsaz2ucrBZX9c7pXFn4EGy8QfwAZF5CPJYHhp4mopKG6bxdhwQiRzp
         J9i+M9fKCUG+4zBAjnPEEvLyP2i1J/QuXmWqnQPHKwht7/p20f527FdlWMQSb5xJLZ7q
         cW0gcMB5ZwPomE7oGJyPdIbSmBdLBe2V00+aaj1RaXNjt6KqlLrdJZcHpc3yGvyG53KK
         4AYx773XVKC0nKOUzTDVZy9xZBeHFDLrlO7wxr4tXTx0IHAm4Zo+D/fTbNESEGVtIQQM
         kn7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@virtuozzo.com header.s=selector1 header.b=KxYbFp2R;
       arc=pass (i=1 spf=pass spfdomain=virtuozzo.com dkim=pass dkdomain=virtuozzo.com dmarc=pass fromdomain=virtuozzo.com);
       spf=pass (google.com: domain of rkagan@virtuozzo.com designates 52.101.141.243 as permitted sender) smtp.mailfrom=rkagan@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
Received: from FRA01-PR2-obe.outbound.protection.outlook.com (mail-pr2fra01hn0243.outbound.protection.outlook.com. [52.101.141.243])
        by gmr-mx.google.com with ESMTPS id r13si555907wrn.3.2019.07.12.06.54.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 06:54:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of rkagan@virtuozzo.com designates 52.101.141.243 as permitted sender) client-ip=52.101.141.243;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzBOmjjWKKmXGPhUGq9gB5nbyQi1+lyp8qQEMx/oUoTY6O5COU9Fq37buATtMRgdTKFP8lgv3JCt9DNnOIbGxpzzkBlsS6OYq2NGCp46JteipzgMbZhi7E7bVQr7UaViESDGOL73HGLGKXlHY/wza8sNjVk/nrsRVNjR+CPzSAugP/u92Gb77lgFalY9YI1acjaLN9iRtjCT1vAMnu5lsuu+qfzd9LQKCpz7QcihA0W7BOQK+UXKvYhGFCOOQIrEFMjvHoyTF5jCvRB/iJF7wX0zxoBzl/6Y+7aSRHkeug22hhXoI2BOlJP3X4U1cD13ACSdetHz+mJVv11wSjnprQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZliQVgXdGRoIL/8ZIliPg3yU2/XmSi6A05UccHYH2w0=;
 b=DddigbYW/forJ7Dp4hfy7suNX6awMV05IV+tUa5qEp7BmVkFz7Z0bnUfDGYb8UQzsiSH1VqAXNmK2UIVwV86GU/Uhd367yWW5+UPRqX/VKGn5VWVmkDJfkYa1fAfDBJvESlTUF8+kKYsgc19AQmXcdEHyt8zM8mfs4KI22103jmgO3Nvl+/1O2dseWM+wDUlbjLOCIVeUGr+m7Wpi13XSSUYgF1WJ0geHd7NLB6AGLC2aCcYFdm1TfbyJ2igC87eAm572b09d1yfXLmDTgK73BCC8tF+i3Rf3Dh/oz9H2ZHoFUDt+66i4tHu7Yqhj6X32wKFaowYPATzi4guCEkLlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=virtuozzo.com;dmarc=pass action=none
 header.from=virtuozzo.com;dkim=pass header.d=virtuozzo.com;arc=none
Received: from PR2PR08MB4649.eurprd08.prod.outlook.com (52.133.107.81) by
 PR2PR08MB4636.eurprd08.prod.outlook.com (52.133.110.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 12 Jul 2019 13:54:31 +0000
Received: from PR2PR08MB4649.eurprd08.prod.outlook.com
 ([fe80::bd59:a723:4d09:9e88]) by PR2PR08MB4649.eurprd08.prod.outlook.com
 ([fe80::bd59:a723:4d09:9e88%7]) with mapi id 15.20.2052.020; Fri, 12 Jul 2019
 13:54:30 +0000
From: Roman Kagan <rkagan@virtuozzo.com>
To: Arnd Bergmann <arnd@arndb.de>
CC: Paolo Bonzini <pbonzini@redhat.com>, =?iso-8859-2?Q?Radim_Kr=E8m=E1=F8?=
	<rkrcmar@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar
	<mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "x86@kernel.org"
	<x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Vitaly Kuznetsov
	<vkuznets@redhat.com>, Liran Alon <liran.alon@oracle.com>,
	"kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] [v2] x86: kvm: avoid -Wsometimes-uninitized warning
Thread-Topic: [PATCH] [v2] x86: kvm: avoid -Wsometimes-uninitized warning
Thread-Index: AQHVOLZnDJqkDrZxKkKAHlLZPaQCbabHATaA
Date: Fri, 12 Jul 2019 13:54:30 +0000
Message-ID: <20190712135427.GB27820@rkaganb.sw.ru>
References: <20190712133324.3934659-1-arnd@arndb.de>
In-Reply-To: <20190712133324.3934659-1-arnd@arndb.de>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.12.0 (2019-05-25)
mail-followup-to: =?iso-8859-2?Q?Roman_Kagan_<rkagan@virtuozzo.com>,=09Arnd_Bergmann_<arnd@?=
 =?iso-8859-2?Q?arndb.de>,_Paolo_Bonzini_<pbonzini@redhat.com>,=09Radim_Kr?=
 =?iso-8859-2?Q?=E8m=E1=F8_<rkrcmar@redhat.com>,=09Thomas_Gleixner_<tglx@l?=
 =?iso-8859-2?Q?inutronix.de>,=09Ingo_Molnar_<mingo@redhat.com>,_Borislav_?=
 =?iso-8859-2?Q?Petkov_<bp@alien8.de>,=09x86@kernel.org,_"H._Peter_Anvin"_?=
 =?iso-8859-2?Q?<hpa@zytor.com>,=09Vitaly_Kuznetsov_<vkuznets@redhat.com>,?=
 =?iso-8859-2?Q?=09Liran_Alon_<liran.alon@oracle.com>,_kvm@vger.kernel.org?=
 =?iso-8859-2?Q?,=09linux-kernel@vger.kernel.org,_clang-built-linux@google?=
 =?iso-8859-2?Q?groups.com?=
x-originating-ip: [185.231.240.5]
x-clientproxiedby: HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14)
 To PR2PR08MB4649.eurprd08.prod.outlook.com (2603:10a6:101:18::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a7f7a63-77aa-4ed9-8215-08d706d07676
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:PR2PR08MB4636;
x-ms-traffictypediagnostic: PR2PR08MB4636:|PR2PR08MB4636:
x-microsoft-antispam-prvs: <PR2PR08MB4636D160D4340FC19483C353C9F20@PR2PR08MB4636.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:SPM;SFS:(10019020)(396003)(366004)(136003)(39850400004)(346002)(376002)(52314003)(189003)(199004)(26005)(6116002)(66476007)(86362001)(66446008)(64756008)(3846002)(68736007)(66946007)(486006)(54906003)(66556008)(14454004)(256004)(14444005)(36756003)(66066001)(186003)(446003)(11346002)(58126008)(476003)(316002)(7736002)(305945005)(6506007)(81166006)(81156014)(386003)(6486002)(5660300002)(6512007)(8936002)(6246003)(7416002)(8676002)(102836004)(99286004)(2906002)(53936002)(6916009)(52116002)(33656002)(25786009)(1076003)(71200400001)(71190400001)(76176011)(6436002)(229853002)(4326008)(478600001)(9686003)(30126002);DIR:OUT;SFP:1501;SCL:5;SRVR:PR2PR08MB4636;H:PR2PR08MB4649.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: virtuozzo.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EpoJ5qYy3iE1uYT6Ijn1gwCbtWslZxLa5ZdiuWKj3TbzbHUPdC2mNqrS2iw2XgPGtJwhutvsGZ48qAJaHYbUzUZU+H8wfkHF8rEZ0oz3UoPmIq04+lEwOgQai2TOyQL4B6cJ//GuxHcW9LjIJ2kq+Z+jQ096l/SUpbJc0Rl8qS6PWIwzz+iJ3dW8ZeDRG2D3W14A4uQEUVZeGDNapd4GC2fW0BusbFw8MnCLxgoHOo5Jksl26LZsWEbbfiHsBEXycfNqKvtdJgWeOHnAR8RGXdw+6Be4fk/dEIJZC3EI7fOmp/fGsGLX43zu7fLNEqe9ZmcByuXKnOQ/lwRQlKucHmLogSkzPnyGI+/Bj41Oub2EQO8r13tGy604rBxneGVexDz3t5IyZXRDpqnkCHi3LV/yDgDs0TBcLwvDWH8lRwORYfFWfQm5HHY+qJc9GDNzOnOTOH6sNgG5WCALtz7CscaEEjKd/cJbuIIk/cv/NWamb057TtHW7YICrApw8Bhb
Content-Type: text/plain; charset="UTF-8"
Content-ID: <43608ADB0A8B3C49BF5F65BF0FBE848D@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: virtuozzo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a7f7a63-77aa-4ed9-8215-08d706d07676
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 13:54:30.8355
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0bc7f26d-0264-416e-a6fc-8352af79c58f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rkagan@virtuozzo.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4636
X-Original-Sender: rkagan@virtuozzo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@virtuozzo.com header.s=selector1 header.b=KxYbFp2R;       arc=pass
 (i=1 spf=pass spfdomain=virtuozzo.com dkim=pass dkdomain=virtuozzo.com
 dmarc=pass fromdomain=virtuozzo.com);       spf=pass (google.com: domain of
 rkagan@virtuozzo.com designates 52.101.141.243 as permitted sender)
 smtp.mailfrom=rkagan@virtuozzo.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=virtuozzo.com
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

On Fri, Jul 12, 2019 at 03:32:43PM +0200, Arnd Bergmann wrote:
> clang points out that running a 64-bit guest on a 32-bit host
> would lead to uninitialized variables:
> 
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'ingpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (!longmode) {
>             ^~~~~~~~~
> arch/x86/kvm/hyperv.c:1632:55: note: uninitialized use occurs here
>         trace_kvm_hv_hypercall(code, fast, rep_cnt, rep_idx, ingpa, outgpa);
>                                                              ^~~~~
> arch/x86/kvm/hyperv.c:1610:2: note: remove the 'if' if its condition is always true
>         if (!longmode) {
>         ^~~~~~~~~~~~~~~
> arch/x86/kvm/hyperv.c:1595:18: note: initialize the variable 'ingpa' to silence this warning
>         u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
>                         ^
>                          = 0
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'outgpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'param' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> 
> Since that combination is not supported anyway, change the condition
> to tell the compiler how the code is actually executed.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: make the change inside of is_64_bit_mode().
> ---
>  arch/x86/kvm/hyperv.c | 6 ++----
>  arch/x86/kvm/x86.h    | 4 ++++
>  2 files changed, 6 insertions(+), 4 deletions(-)

Reviewed-by: Roman Kagan <rkagan@virtuozzo.com>

However I still think the log message could state it more explicitly
that it was the compiler's fault, and the patch is a workaround for it.

Otherwise later on someone may decide to restore the similarity of
is_64_bit_mode() to other inlines in this file, and will be extremely
unlikely to test clang 32-bit build...

Roman.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712135427.GB27820%40rkaganb.sw.ru.
