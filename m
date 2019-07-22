Return-Path: <clang-built-linux+bncBDBLTFFIGEINNJGW5ECRUBBOI6REU@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 590646FDF4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 12:39:20 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 191sf23577224pfy.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 03:39:20 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1563791958; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQzsT3eFTwXqQbhKfsGTLv/GX0GV61wTtiJqjelAYM8NIN2ch8kwNqvn4uaAwxuV2p
         kOWxHExfWqAulwKM45s/dF/HhP+u5R7cfNOesYc6huDKLYUzwFlBXk+c8Jhmnoruhtuf
         0bqka1dfIHmB9C3iof3SizvRT5399qGBXdurJnxN4cHzvWMmchnPnOZb27pVIw0TjBgp
         OQg+SDtL+TN0aeer+rchdVPenrLbas7oOpAnwChojfYgp0OWjQukIuVq40GUGekR1Xl8
         q5oOc4m2bzH/hadYRzQ+BzuFOd61mbe5lUQAAsKTMJ+JsY6xLD50L/Z7xbkeWFNR8Fq3
         600g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=GzOZNGHBYJAQ6ZSzP4gHL7RlGhoiq9QgokMRbj/O6f0=;
        b=LCUal26FsRyZFL5B1Mo8uJ2AfyPV1nT7y1qBDX2uo8KQa0JYZPLbBundRMtKpwzm2Y
         iY8gG+4G58wJCHcyZnjqW3wmq83Ddr9mfYXFWRanY8ovv7IjRGGGqfT7Z388hBMJVfs+
         UK86OTheB1hhca/npPJGUOsaUgqE03C86Nsr5qUB4g9LnuEPeD0aba9n1Im4ruI8fyp8
         wX3cA0fzSEy9hWYnMoPAdbhKT/K3Iz++PET0BxNq7H7mvzqNUdmYoQgQ2+5hxksazjpF
         /KXj4V5eFEuXjylUwpuycvGzgfy7OUO8W3yfc9uWmLhUC1L2ysv4MaiD7XAVDMCZbpv1
         NnKA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of jbeulich@suse.com designates 15.124.2.85 as permitted sender) smtp.mailfrom=JBeulich@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzOZNGHBYJAQ6ZSzP4gHL7RlGhoiq9QgokMRbj/O6f0=;
        b=V0RhaWKE2Lkhwdsq5efOOnRkzNM86Ua5OTMqt99r7+uP7FFilcJ3gQhAoD8YIXmywz
         hKW5XnuThqk265OhxuNuww2/strBW0EoRnEbV42n4Bs5FlnmAN3dBKyMjdbL/BIu4BZ0
         7NQIJgg6qsYzWvqoj/87L2sTlHMD6RFjOVZjPm+XuycCV8eZKmtaYYgnQYmpF4PpKnL7
         0vxvvV0t8ufeX/p01Jt7aWdLxrJf623mmtpCjY3a9AMpmrQzT4B5iCKS4KuVOOkAt36P
         oCtE95WPAN7hFB9Eth30b9tAouQP6yc/Fh7b8JHDROtKNBa2njpBAvJuE19sGeq7MuoY
         gJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzOZNGHBYJAQ6ZSzP4gHL7RlGhoiq9QgokMRbj/O6f0=;
        b=srz7bV7E8AT/qlDRwH4uGZoIz1txPqpAQpAEW2nsnli5YHJlPYy7H+hrxckgi5/nIK
         V+xDIJTtY2nw1YB9LQVQFdDEpP0aKOrEvGW/xUZNVnITM2ixE/L9qHk/XpytMKrvEPht
         bgyv/+oTZM+T9JWr9KfsvnXzGSHOa31QOSa29uPiENpbTXkeJ6Fk/fTYRz9tm31aKw/f
         A7PTyfjxAsOrwfafgtXQXFa705fmhw6bc0s0nPVRqS7A703SzZ6NoafWaUtGO1tADFGk
         0lDcBbeMvenD/4G+EAKiIQeZlRSzCr3Wnl4eGzwjMXdnhHonuxkiaPAocmI3QEuNhbyZ
         f5Iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4q+goIvIvRKqnAvGMgBLegPEBZ3xPOKj/YTyKYjiQiqzaQ9B8
	ZxbruSJ0cIVwD6BcVMnFcjs=
X-Google-Smtp-Source: APXvYqyCs7T5rBTRckfHM8MhR96NjNAwdewN29LGYQsNz3a7ITEMto3437KUOcbsaSkJUXr2fAPk1w==
X-Received: by 2002:a17:902:4e25:: with SMTP id f34mr74302677ple.305.1563791958628;
        Mon, 22 Jul 2019 03:39:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2866:: with SMTP id e93ls10616993plb.10.gmail; Mon,
 22 Jul 2019 03:39:18 -0700 (PDT)
X-Received: by 2002:a17:90a:3548:: with SMTP id q66mr77123376pjb.17.1563791958281;
        Mon, 22 Jul 2019 03:39:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563791958; cv=pass;
        d=google.com; s=arc-20160816;
        b=TmBXuW+QDEQtfMg071RmgTcL11LUy/ZXj5OxhZf8us8nbtSpGtrfzADeRi0fiwmMif
         nLLU6NK54VvVJEcpLS6ybxjEz11UeHPcC/dXYP7BGSNsB7hnH6/RoRbCY5kDrL5x+hnH
         Ksl/u6a9a7c1/cnMhAiY7wARJGY+eS+tfrbXDmz2vEKrajCUPo+Nmi37SaV4XWhKn+M5
         B/Tp7YFvdBt27/pk/BzoqaYUqP9+leUyPey5wqSkhNWflfjOtyG2ogKeGSDH2r0I9Aw8
         vtHCxM9Tp3cYdcm4ON8RnO88SD/2UjDLYxZWX4AM+g0IO1F2kKTfUC4t5QCAEfYUGUzT
         puzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=NjvYv2xQuhBrfiJC5oMIs/A/uGCm9CVcRdLcr0pcB9s=;
        b=IdtdS7LK9pt6NTzdJK8fse8z2XqxF+/LVIAcQrwbDJaWsJTwQNg3Glvk8eEjFyjPsR
         zHRVA20F10FsatqecySrj1Ybo9y1Y7LmpnCX7OR9wQvfy0qCDmAS6eK3XxiAkIeaxbCA
         U1LB3qKhxUtXsgGNpsq55rHa+9e2dnYVnQbr9TwKnjS0ULi3OJ6wix2WYX8UbBjaNTRK
         DQFWJN8bQ2nRUHrCNmNQJ/BAEkLOX/orJDqvkCIluHSPrX9aceYSdcye2Uo0T+LE/TSC
         3x6Ofup7u3MIO55uHhh0Egx592yWdKAYdP+58AXPn5IP6Eu1n7f+ObplPcEEuoBb+Q1T
         /dEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of jbeulich@suse.com designates 15.124.2.85 as permitted sender) smtp.mailfrom=JBeulich@suse.com
Received: from m4a0039g.houston.softwaregrp.com (m4a0039g.houston.softwaregrp.com. [15.124.2.85])
        by gmr-mx.google.com with ESMTPS id z9si1820766pjp.0.2019.07.22.03.39.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 03:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbeulich@suse.com designates 15.124.2.85 as permitted sender) client-ip=15.124.2.85;
Received: FROM m4a0039g.houston.softwaregrp.com (15.120.17.147) BY m4a0039g.houston.softwaregrp.com WITH ESMTP;
 Mon, 22 Jul 2019 10:39:11 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M4W0335.microfocus.com (2002:f78:1193::f78:1193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 22 Jul 2019 10:38:49 +0000
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (15.124.8.13) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 22 Jul 2019 10:38:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FGT3tbI/TdQ8/1b0BNeh/xBuqdOh5OiFnZxvrxs54O3qN9Ui+xXl8fMda0JFtAnwp7Ut2/Q7uIzMakyPLFtOQ4cYJl+G8iy/guBam+grDEi0y52/wHmT5oux6r0ybM2YNdi+uLwp+EZCOmbt3B0smDibL4BNiswkuISN8sb4n+FEEtQ/Uztc3N4/1lo+i6kwKgA+O4sr0SuRi4vyIOLN9LiBf0moS5OL8jN99Ea9j1/PefdF/tk8DdW+9r4dwNA7Zx931UxCl1f7KdtQsSZ/LMNJPa58+Jqgv45Sn6+nyxXoW7dlYj4onvPW6pOXb6nQpgBG1aleyV4k1eNbXdcwcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NjvYv2xQuhBrfiJC5oMIs/A/uGCm9CVcRdLcr0pcB9s=;
 b=l0MZLS69ptxoSxB8oa1/aOAginwiSDWuHElQ+aY0IWkXReCcaJ561Y2r2+b6zIJMdLNfs+J11KlLPKI+gWnsbqoq/B893d2Cul7tOFrloAcDSQck44/U79qpP6NRHMZrYLGBY7PBtOZ0JMqgHFU5RgpmfK7fJHfIJPrXxc5yCL0mIZqET8zp7uTWOQBDeomz9GIJUwDtAPar6B43ZzxU6930BEGW/Gl91L/U8jpAbSmNOojBZ6r8JuWeFSNPcAASsrql/w/CSYEq+qkgssRbTGdgXJl2YSPNsHjnc2Ba3M16ybhS3jzpnuzHiI2BPdW2tqgyIvMfDsCVmbsuo/sxUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from DM6PR18MB3401.namprd18.prod.outlook.com (10.255.174.218) by
 DM6PR18MB3146.namprd18.prod.outlook.com (10.255.172.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 10:38:48 +0000
Received: from DM6PR18MB3401.namprd18.prod.outlook.com
 ([fe80::1fe:35f6:faf3:78c7]) by DM6PR18MB3401.namprd18.prod.outlook.com
 ([fe80::1fe:35f6:faf3:78c7%7]) with mapi id 15.20.2073.012; Mon, 22 Jul 2019
 10:38:48 +0000
From: Jan Beulich <JBeulich@suse.com>
To: Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>
CC: Vincenzo Frascino <vincenzo.frascino@arm.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Andy Lutomirski <luto@kernel.org>,
	"x86@kernel.org" <x86@kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
Thread-Topic: [PATCH] vsyscall: use __iter_div_u64_rem()
Thread-Index: AQHVQHXOiVUIEYK0K0OeYsFGCBwTqqbWclWA
Date: Mon, 22 Jul 2019 10:38:48 +0000
Message-ID: <8f01be52-3235-644d-4afc-df979bfce25e@suse.com>
References: <20190710130206.1670830-1-arnd@arndb.de>
 <33511b0e-6d7b-c156-c415-7a609b049567@arm.com>
 <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
 <alpine.DEB.2.21.1907221207000.1782@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907221207000.1782@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0199.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::19) To DM6PR18MB3401.namprd18.prod.outlook.com
 (2603:10b6:5:1cc::26)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [87.234.252.170]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db215d13-893f-4ecc-26c6-08d70e90c759
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:DM6PR18MB3146;
x-ms-traffictypediagnostic: DM6PR18MB3146:
x-microsoft-antispam-prvs: <DM6PR18MB314656ED0040DF55DFE3FD48B3C40@DM6PR18MB3146.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(376002)(346002)(366004)(396003)(136003)(39860400002)(189003)(199004)(54534003)(31696002)(14454004)(81166006)(305945005)(52116002)(26005)(99286004)(5660300002)(2616005)(6246003)(53936002)(446003)(68736007)(7736002)(36756003)(11346002)(2906002)(3846002)(6116002)(81156014)(86362001)(8936002)(76176011)(6512007)(66066001)(66446008)(64756008)(110136005)(256004)(14444005)(6436002)(102836004)(25786009)(316002)(71190400001)(71200400001)(4326008)(66476007)(476003)(66946007)(6486002)(186003)(66556008)(478600001)(8676002)(54906003)(31686004)(486006)(80792005)(229853002)(53546011)(6506007)(386003);DIR:OUT;SFP:1102;SCL:1;SRVR:DM6PR18MB3146;H:DM6PR18MB3401.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HXUmAMuEcNP7ffbesKOfqyleUpRCY/Z6CrgDJ5aWETDpLolUGf7rEHx1mswIv3pLzv3nwYe3nhtRqSDHaASi6KZX5R0+B35lfGLQyx7jEan2yqKjNUc6J8SlWdh8OpLWdLwsCCbEvFBYJznXb4QvWBcMCu9gB7et93YCxZrm2MfZxQwS4ooJNKNFgDcplRVZomYZXvILX/FTr3NV+cf8Fn4EDX/4NFYc1TY+Ndub3VHRT9LJU0pmSbxdNBwBvEoSuvowMj5r9VKdC2RqWpwKdvT4u05UY0bZwduHqky6LSqbbXS0FKXkqXsdx8ipdVrXcRNgd09Lh/S6ppjSzIX+r4eJpZlW9R1mcnDTTl9NhjoPHHSpaKgIRIKj9sPCezDQhKaNvgY4twZgAXd4Vb2ctn1ABwGvGiElYR3ULMlCJ8Y=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <DE4F71547DB1104090F8B9DBF80A98A2@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db215d13-893f-4ecc-26c6-08d70e90c759
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 10:38:48.0751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JBeulich@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB3146
X-OriginatorOrg: suse.com
X-Original-Sender: jbeulich@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of jbeulich@suse.com
 designates 15.124.2.85 as permitted sender) smtp.mailfrom=JBeulich@suse.com
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

On 22.07.2019 12:10, Thomas Gleixner wrote:
> On Thu, 11 Jul 2019, Arnd Bergmann wrote:
> 
> Trimmed CC list and added Jan
> 
>> See below for the patch I am using locally to work around this.
>> That patch is probably wrong, so I have not submitted it yet, but it
>> gives you a clean build ;-)
>>
>>       Arnd
>> 8<---
>> Subject: [PATCH] x86: percpu: fix clang 32-bit build
>>
>> clang does not like an inline assembly with a "=q" contraint for
>> a 64-bit output:
>>
>> arch/x86/events/perf_event.h:824:21: error: invalid output size for
>> constraint '=q'
>>          u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
>>                             ^
>> include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>>          raw_cpu_read(pcp);                                              \
>>          ^
>> include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
>>   #define raw_cpu_read(pcp)
>> __pcpu_size_call_return(raw_cpu_read_, pcp)
>>                                          ^
>> include/linux/percpu-defs.h:322:23: note: expanded from macro
>> '__pcpu_size_call_return'
>>          case 1: pscr_ret__ = stem##1(variable); break;                  \
>>                               ^
>> <scratch space>:357:1: note: expanded from here
>> raw_cpu_read_1
>> ^
>> arch/x86/include/asm/percpu.h:394:30: note: expanded from macro 'raw_cpu_read_1'
>>   #define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
>>                                          ^
>> arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>>                      : "=q" (pfo_ret__)                  \
>>                              ^
>>
>> According to the commit that introduced the "q" constraint, this was
>> needed to fix miscompilation, but it gives no further detail.
> 
> Jan, do you have any memory why you added those 'q' constraints? The
> changelog of 3c598766a2ba is not really helpful.

"q" was used in that commit exclusively for byte sized operands, simply
because that _is_ the constraint to use in such cases. Using "r" is
wrong on 32-bit, as it would include inaccessible byte portions of %sp,
%bp, %si, and %di. This is how it's described in gcc sources / docs:

  "Any register accessible as @code{@var{r}l}.  In 32-bit mode, @code{a},
   @code{b}, @code{c}, and @code{d}; in 64-bit mode, any integer register."

What I'm struggling with is why clang would evaluate that asm() in the
first place when a 64-bit field (perf_ctr_virt_mask) is being accessed.

Jan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8f01be52-3235-644d-4afc-df979bfce25e%40suse.com.
