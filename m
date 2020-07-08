Return-Path: <clang-built-linux+bncBCG2V4NKUEFBB5PISX4AKGQE7W7JOFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0D3218117
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 09:23:35 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id r9sf10766779ioa.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 00:23:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1594193014; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2E9VIWmlP68AL0g21GgFm1gm0Kd+jRApReQLieKOW/ymoH1EkrLgP5IRWIvs230Jq
         weBcCi6k6Qs5VdoWWKez6/ks6VVKJzFeUbM6I2g+HPXFukvP+WU0fQJpHm9GevTjGZwV
         4wuvFBJXGqpTYxkpNHbk2fK+d0uP/xnW364n/fAkILZgL7vIdB52H/fOTpbz7U9W8G6+
         FJRXZZtK+awy7BGIdmY/Vk17Ut0lv++LSqRC1MnI38juTM4JMaQfwqUZ0MED0IpjFWfw
         ZFIXvbTJdU83V4m3VLXDs7xrIesoe0XRM7AJJiO0puzPW+oydI0onZgGXbWHzeJmEQ4v
         AJ1Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-version:dlp-reaction:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=FCkjHnwRBsE8rmqFyXoFzI2SIv0S2qywDHmWWGonpSw=;
        b=uzhDN0l10WlLtASGhAwIzXBh3grF6p5uWY+s1ob6zezt8K4qCGdx4BCm0JcQWi0Etw
         n1XsMOODonD0ndWfIWQcDHSYWpQ2UjGy/xSnz56rJGLXuqzYGLdYT0BLJ9TF/NuO/3jq
         fzw3kdgfcoxbe7I7ScbrlYVmDLz7Xwj8Xkdi9LvTOPFzgM0LNmoMfWGsMHXPJO7okQUr
         9VDUXZua64UJnrAv6FlPq+21mZgXW8acctgm9BISXJ55R3y2vH3l4PVUO2yjQqwtCrPu
         FIQ3skvzZaPj+v2a68qvfTD4I2wy21gpjp76vgIDR8Gocllew50Nht7AWNQYVoTh3gOm
         VXGg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=T0aVOhys;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of hui.xia@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=hui.xia@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-reaction:dlp-version
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FCkjHnwRBsE8rmqFyXoFzI2SIv0S2qywDHmWWGonpSw=;
        b=oTnGYMHF2cjUogB8ZWmgvwV9FQKBAh68TygDqxpocOJ5C8xpJplShvmV6wo5UVAw9V
         dAkb3ekOQ/4xrKlxWnbYqBMCu/kz3FINy2LInSrjg/MWL1r4KL1PyDIssWxFXVW6kSs+
         K2HZ1DSRIfYIEf4fwgK6M7anIUVs2V9ypQnvXvuU50DQZx2oCX8qE7WuwzQQOwZSStpL
         LCRDxMwo3SAPyrYmeHoOkdmXv9uODYK5AzX/J1Tjvj0m/AdkW2iJedUhlQ9b5cU7N/vq
         s+hsaZvDrIrKdwxjEsZzmfz0UTWXDCQDmcUKzoKCMiGc6/VICQWtSIB/ZS1Qbv3fCBKQ
         kgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-product
         :dlp-reaction:dlp-version:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FCkjHnwRBsE8rmqFyXoFzI2SIv0S2qywDHmWWGonpSw=;
        b=f8e8H1Je/j3FIRkJf7qP7lvjnqNHBdet0EB8eIRxLICa4iV5caRP6STonxnWB5GbAS
         GvIb5eiSkTSm8nK0wLRLVLz9PK0hgaNlTLEkh6DFiMKTX4j8noYJ8DuTiEUFxcwH+Uyx
         vN9CmZewuuq3Ar/C/3nbus4FN9lwnZG/eD1mIf3OXYvVbdXdEw3ZMMQiv/XBjM/DPqkE
         BvB4kKB/ywmQccEnUXeg0g4LcoCGrYUaZtEinbjmQcV/KfR+6DReJBmku2SGqlhnMX2X
         b0mh4UFS/sKiVYXSTzIODuNviEtl4AF5x22TwXHYfYlNFFn+teJ0n6R7ZbaqPVD/D//J
         G1UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531n6kWIwAethWN3MUYUEgPVgVBECyR1LF3G1w85MIq7+QTdkHN3
	6PcDb7H/TWErA42gNKNt59s=
X-Google-Smtp-Source: ABdhPJw1vjSiU+I6pNuYir6bRxNcr1d2q8I3cHExLh9KZIVySQ/KqHmtyTa1jCjuWha4IlLoQjbPig==
X-Received: by 2002:a92:cf51:: with SMTP id c17mr31038232ilr.122.1594193013821;
        Wed, 08 Jul 2020 00:23:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f13:: with SMTP id r19ls225718jac.6.gmail; Wed, 08 Jul
 2020 00:23:33 -0700 (PDT)
X-Received: by 2002:a02:cd28:: with SMTP id h8mr51640846jaq.40.1594193013306;
        Wed, 08 Jul 2020 00:23:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594193013; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCsTffIFnZfmlI/vuexzD2Xps4nkNt3BSiWdZ3hykeZ84ySurZx4c9vaHI+XIGPl/9
         yGLDDHLkyE57cAkI/wDqRlBiTGGULdv0zmn6bD6zrt/5e4eieMpi9EChlXxvwXvieq2y
         r4neaQ6FYrLVeosFMwJDUeTJ4T2g8pK4I8TdEpNVSLb/nt/mjNR3Q+nyHXr1awJgkBwm
         6K5faxmxsFEGDkhsvhF7cIkTNG27fIuebCsIZb2q3vvTjNXZsOzdfyU6axR83QIY9UBS
         2TMCUl2ir481cFVDuYPuLg8ajhFWKAjR1bAsvgKCqgCs/irbipBGh6UN4lH7No60ziY4
         4oKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-version:dlp-reaction
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=2W0Y9FTXY4+AtRIUlPxxBso0vnLlKDCeDm2TQgp6Z9Q=;
        b=JrkKitOFbVEoxaCeBlLAehz2q3nzEEfnmHCNN/ldpKSgKK2Q9P2LbdHPyvJtF1+mgu
         jRasWBPJS4pd3TZAsfrIvMbotzOx3P0Yx5LloDiZSFeTmkuVc1R6NGZXXtmq8k9nJtnd
         TJ0BWI+GjiWitsO4xPwq3/qsM9TexvELmzemRpP0dNOvMDV2ZsG21w0kApkhnpUlJmkQ
         sLLUdydQryeebYCMm4zxlt6kq+9ulH/N6hWJ4TXZaKNbV44Yg8iJALQvZcFZrT/K2EVu
         a+vCc28MX6pMcCU2jbW1luMXrfytet3fvPs4BO/3U2KVpV2SoFrhS6A9SmSEmtCg4gCl
         AVvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=T0aVOhys;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of hui.xia@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=hui.xia@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id b2si2191836ile.1.2020.07.08.00.23.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jul 2020 00:23:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hui.xia@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: VjXVEkR2TVAwSPyXpw0+tbnCr9xpsVxP+OL4M9vJMUIoZ8AOT+mZ6eutOHEqtpcGlxdyHIY/vo
 J3J1d+yx4kMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="127833025"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; 
   d="scan'208";a="127833025"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2020 00:23:31 -0700
IronPort-SDR: IyFabraHI9+QtVGUpmdsDbXaa2TD50IBORjhbkddOBXGOuRQDCM050vEsP6tJyy3auF4WZYH/V
 YsdYMiZj690w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; 
   d="scan'208";a="314562995"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
  by orsmga008.jf.intel.com with ESMTP; 08 Jul 2020 00:23:31 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 00:23:31 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX152.amr.corp.intel.com (10.22.226.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 00:23:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 00:23:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAmFK/n4K/JwlQxAqfnx9zNBRhPfyu2XHxrsNct41woyunndaoST2ptunPm+x7wLg9nTPs6DdDQ4Lg3c4TtuXKNAI/mXqQEkwbAx2+O8UmaYWAOMZUuswysaAN5Nps1WNX87en5CmVtWf2ftlAnQxClNoXXy77A+jlo2b1W8xi4j+zfoJ1nn5xlzpfReBe8qpy8d9e0ZsnfPtiqziRqHAghsTCGTGXu0CnsxY/g2EasAMKDcu2qZjSbTT0tKK/L9GEt9ao8q1OC6FbFLEYgRG6YZqULB5trFAzGg9f4yxVcheI3+VH8Zbm4PlySgmHb1TQ4eKN3afVpB8L0Qti2z4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2W0Y9FTXY4+AtRIUlPxxBso0vnLlKDCeDm2TQgp6Z9Q=;
 b=UQ6myfJQRqGocqH7pdLXBuVwKZVu+XHcULAdDIp9hKxVQy6z/DF5GOhjSqwgwjpiJ4U1cx/ITqx77S1BsrKfeq9gzzbRz1hP73h+1wYRvw4QtKH0jNBj/ujzlEyb60qFotcQigA+gZ6TygbvCdBhKA1RCGhy4xbSaWgaAIiwx9wISifZSsJCsj2R12/g5bvR6ncPp3jv8p5lgfqLqBd6OimKDc3EMLmfb3FnPekGIoMXL4XfBsTYVOa2fOOl8AKGxninpB0kk1hhhsN4yMeWmTnfeg4Q3Je9qtCmc6KoUUZ6Y5jBbx4e+SAMRBpnHpUbJGk4xfzEA38UOwFN/rXi7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4064.namprd11.prod.outlook.com (2603:10b6:208:137::18)
 by MN2PR11MB4727.namprd11.prod.outlook.com (2603:10b6:208:26f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.23; Wed, 8 Jul
 2020 07:23:29 +0000
Received: from MN2PR11MB4064.namprd11.prod.outlook.com
 ([fe80::453b:72cf:dc13:cd6e]) by MN2PR11MB4064.namprd11.prod.outlook.com
 ([fe80::453b:72cf:dc13:cd6e%7]) with mapi id 15.20.3174.021; Wed, 8 Jul 2020
 07:23:29 +0000
From: "Xia, Hui" <hui.xia@intel.com>
To: Wei Yang <richard.weiyang@linux.alibaba.com>, lkp <lkp@intel.com>
CC: "Williams, Dan J" <dan.j.williams@intel.com>, "akpm@linux-foundation.org"
	<akpm@linux-foundation.org>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-mm@kvack.org"
	<linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] mm/sparse: only sub-section aligned range would be
 populated
Thread-Topic: [PATCH] mm/sparse: only sub-section aligned range would be
 populated
Thread-Index: AQHWT58ur2eZdYn/REmqs2dyXuQ9Oaj9T3vw
Date: Wed, 8 Jul 2020 07:23:29 +0000
Message-ID: <MN2PR11MB4064B0104312A3D22F1698F3E5670@MN2PR11MB4064.namprd11.prod.outlook.com>
References: <20200630021436.43281-1-richard.weiyang@linux.alibaba.com>
 <202007010217.Rut2zTnF%lkp@intel.com>
 <20200701115816.GB4979@L-31X9LVDL-1304.local>
In-Reply-To: <20200701115816.GB4979@L-31X9LVDL-1304.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [192.198.147.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc84e9a9-56d2-4bfb-1242-08d8230fd012
x-ms-traffictypediagnostic: MN2PR11MB4727:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr,ExtFwd
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4727A7336B1F437524E5E3CEE5670@MN2PR11MB4727.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04583CED1A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: POcQACR6XLr4HTYDR+wylnNWaqN55HhbX1MZhwxIxpH7+zEs+7qvtrUNNrFnYqIqvelzRTJ5Cuw9fV4+iIcMH6BhiXulcGQM51CsoRS5ssrQpx5Xmbcq21eeFSpeaVk0P096qhqTvDFhGSyYog+qsWbok+3ZIptIxfAJDpx21en8MSsdlnuJkw6VfNSxSBoxwJyuZAr52pcL6SnQjrB6wqfLIqiMBhLeGAWpAU6cjnVkvB+bjcfDC4uP0Akp3MdX6C7XaJS+urKP5OroEu1h7PidYfD9oJLT5h3s7hIcq/DrnCi01ZUiWn/8yrjFFIIb0qNkcSiWJB7p3t+N/bctVYx5tRCV4FdOQNI/QB/rYVpG5x7HB4H24lCirYYFw9dOK+mBQmbi/Ah31Bbm9nzFJbS+09j0yWdcYcACYcjrvQ/BalOuw6+nbkDUxIwa+bYvTyxf7aHQh2czxVlqDfVY4A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB4064.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(52536014)(71200400001)(26005)(86362001)(83080400001)(5660300002)(966005)(33656002)(83380400001)(478600001)(6636002)(6506007)(8936002)(8676002)(110136005)(54906003)(316002)(66446008)(7696005)(9686003)(186003)(2906002)(55016002)(4326008)(66476007)(66556008)(30864003)(64756008)(66946007)(76116006)(579004)(545624004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: LocEIeQGAQrpLk+qeGhyTSzw0Sehe1AJieqo7PNfOEPcPLaLAH+wWlY2N2rLEyBiWDaWxSvkd8dpq/mxfBxZXIRUsxweC0HwLwjycDCC2CA14bGhmaCvwMdQpFrgjv7d3gJL4APLmGARxX2k985sbBei7f6E6my6e04ZNKWo5IoFyxJ2CDUkyc+ngML/38g+3Qzn3UPoPzs8xWuyXSHkgb5fyeLm2En7xSuTLq8JRjh8mW/WTIkizsxoTiucaXVueF51S2d1iPQinvYgcu/bK/z7+xuXnwoOeM3BVNmj5orX9bjCeG0zO+JJDwYHowfXP102rAUXwMDPXFFn7UJrjnGqm3H9v7rnL+oAEx7qk/1/c7SjVrHLnVcSeOoNsaGCzC38hDD9GJd41rnWFpUFO9f3AFctNGsgNA5Ojb1F4cqn0zLBNMbN+8yLbfqyrvlqEec/Zn1NL+FEhSK3JaxXl8E7oku+LTly9/7MOXKuD7he2fx74QzwJgh2bVsU4iOt
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc84e9a9-56d2-4bfb-1242-08d8230fd012
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 07:23:29.3103
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NwnJXWB58SHS1LFA9qe3Obd9gYSLw9611bxlSZiI9DZZ/cBo+QohnuFcxW5szKMKWKZibQLscWGAHublbFYxXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
X-OriginatorOrg: intel.com
X-Original-Sender: hui.xia@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=T0aVOhys;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of hui.xia@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=hui.xia@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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



>-----Original Message-----
>From: Wei Yang <richard.weiyang@linux.alibaba.com>
>Sent: 2020=E5=B9=B47=E6=9C=881=E6=97=A5 19:58
>To: lkp <lkp@intel.com>
>Cc: Wei Yang <richard.weiyang@linux.alibaba.com>; Williams, Dan J
><dan.j.williams@intel.com>; akpm@linux-foundation.org; kbuild-all@lists.01=
.org;
>clang-built-linux@googlegroups.com; linux-mm@kvack.org; linux-
>kernel@vger.kernel.org
>Subject: Re: [PATCH] mm/sparse: only sub-section aligned range would be
>populated
>
>On Wed, Jul 01, 2020 at 02:11:10AM +0800, kernel test robot wrote:
>>Hi Wei,
>>
>>Thank you for the patch! Perhaps something to improve:
>>
>>[auto build test WARNING on mmotm/master]
>>
>>url:    https://github.com/0day-ci/linux/commits/Wei-Yang/mm-sparse-only-
>sub-section-aligned-range-would-be-populated/20200630-101713
>>base:   git://git.cmpxchg.org/linux-mmotm.git master
>>config: x86_64-allnoconfig (attached as .config)
>>compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
>>cf1d04484344be52ada8178e41d18fd15a9b880c)
>>reproduce (this is a W=3D1 build):
>>        wget https://raw.githubusercontent.com/intel/lkp-
>tests/master/sbin/make.cross -O ~/bin/make.cross
>>        chmod +x ~/bin/make.cross
>>        # install x86_64 cross compiling tool for clang build
>>        # apt-get install binutils-x86-64-linux-gnu
>>        # save the attached .config to linux build tree
>>        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
>>ARCH=3Dx86_64
>>
>>If you fix the issue, kindly add following tag as appropriate
>>Reported-by: kernel test robot <lkp@intel.com>
>>
>
>Sorry, I don't follow up with this error report.
>
>It looks like a build error, while I just removes some check and the build=
 pass from
>my side. Confused with this error report.
It is false positive. Please ignore. Sorry for inconvenience.
The report complains about " warning: no previous prototype for function 'd=
evkmsg_sysctl_set_loglvl'" which is not caused by commit in this report. We=
 will investigate and fix in 0-day side.

>
>>All warnings (new ones prefixed by >>):
>>
>>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>   case 1: ^
>>   include/linux/signal.h:177:1: warning: unannotated fall-through betwee=
n
>switch labels
>>   _SIG_SET_OP(signotset, _sig_not)
>>   ^
>>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
>>   case 2: =3D ^
>>   include/linux/signal.h:177:1: warning: unannotated fall-through betwee=
n
>switch labels
>>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
>>   case 1: =3D ^
>>   include/linux/signal.h:190:2: warning: unannotated fall-through betwee=
n
>switch labels
>>   case 1: =3D 0;
>>   ^
>>   include/linux/jhash.h:95:2: note: insert '__attribute__((fallthrough))=
;' to silence
>this warning
>>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/jhash.h:95:2: note: insert 'break;' to avoid fall-throug=
h
>>   case 6: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   break;
>>   include/linux/jhash.h:96:2: warning: unannotated fall-through between =
switch
>labels
>>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   15include/linux/signal.h:190:2: note: insert '__attribute__((fallthrou=
gh));' to
>silence this warning
>>   case 1: =3D 0;
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-thro=
ugh
>>   case 1: =3D 0;
>>   ^
>>   break;
>>   include/linux/signal.h:203:2: warninginclude/linux/jhash.h:96:2: note:=
 insert
>'__attribute__((fallthrough));' to silence this warning
>>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/jhash.h:96:2: note: insert 'break;' to avoid fall-throug=
h
>>   case 5: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   break;
>>   include/linux/jhash.h:97:2: warning: unannotated fall-through between =
switch
>labels
>>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   : unannotated fall-through between switch labels
>>   case 1: =3D -1;
>>   ^
>>   warnings generated.
>>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrough=
));' to
>silence this warning
>>   case 1: =3D -1;
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/signal.h:15203:2: note: insert 'break;' to avoid fall-th=
rough
>>   case 1: =3D -1;
>>   ^
>>   break;
>>   include/linux/jhash.h:97:2: note: insert '__attribute__((fallthrough))=
;' to silence
>this warning
>>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/jhash.h:97:2: note: insert 'break;' to avoid fall-throug=
h
>>   case 4: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   break;
>>   include/linux/jhash.h:98:2: warning: unannotated fall-through between =
switch
>labels
>>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   include/linux/signal.h:233:2: warning: unannotated fall-through betwee=
n
>switch labels
>>   case 1: ;
>>   ^
>>   warnings generated.
>>   In file included from kernel/printk/printk.c:61:
>>   kernel/printk/internal.h:54:20: warninginclude/linux/jhash.h:98:2: not=
e: insert
>'__attribute__((fallthrough));' to silence this warning
>>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/jhash.h:98:2: note: no previous prototype for function
>'vprintk_func'
>>   __printf(1, 0) int vprintk_func(const char va_list args) { return 0; }
>>   ^
>>   kernel/printk/internal.h: insert 'break;' to avoid fall-through
>>   case 3: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   break;
>>   include/linux/jhash.h:99:2: warning: unannotated fall-through between =
switch
>labels
>>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   :54:16: note: declare 'static' if the function is not intended to be u=
sed outside
>of this translation unit
>>   __printf(1, 0) int vprintk_func(const char va_list args) { return 0; }
>>   ^
>>   static
>>   kernel/printk/printk.cinclude/linux/signal.h:233:2: note: insert
>'__attribute__((fallthrough));' to silence this warning
>>   case 1: ;
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-thro=
ugh
>>   case 1: ;
>>   ^
>>   break;
>>   include/linux/signal.h:245:2: warning: unannotated fall-through betwee=
n
>switch labels
>>   case 1: ;
>>   ^
>>>> :165:5: warning: no previous prototype for function
>'devkmsg_sysctl_set_loglvl'
>>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
>>   ^
>>   kernel/printk/printk.c:165:1: note: declare 'static' if the function i=
s not
>intended to be used outside of this translation unit
>>   int devkmsg_sysctl_set_loglvl(struct ctl_table int write,
>>   ^
>>   static
>>   include/linux/jhash.h:99:2: note: insert '__attribute__((fallthrough))=
;' to silence
>this warning
>>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/jhash.h:99:2: note: insert 'break;' to avoid fall-throug=
h
>>   case 2: a +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   break;
>>   include/linux/jhash.h:100:2: warning: unannotated fall-through between
>switch labels
>>   case 1: a +=3D
>>   ^
>>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough=
));' to
>silence this warning
>>   case 1: ;
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-thro=
ugh
>>   case 1: ;
>>   ^
>>   break;
>>   kernel/printk/printk.cinclude/linux/jhash.h:100:2: note: insert
>'__attribute__((fallthrough));' to silence this warning
>>   case 1: a +=3D
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/jhash.h:100:2: note: insert 'break;' to avoid fall-throu=
gh
>>   case 1: a +=3D
>>   ^
>>   break;
>>   include/linux/jhash.h:102:2: warning: unannotated fall-through between
>switch labels
>>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /dev =
/etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var Nothing left to add arch/ block/ certs/ crypto/ drivers/ fs/ include/=
 init/ ipc/
>kernel/ lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-throu=
gh
>>   case 0: /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephfs /dev =
/etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var Nothing left to add arch/ block/ certs/ crypto/ drivers/ fs/ include/=
 init/ ipc/
>kernel/ lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   break;
>>   :2406:10: warning: 'sprintf' will always overflow; destination buffer =
has size 0,
>but format string expands to at least 33
>>   len =3D sprintf(text,
>>   ^
>>   include/linux/jhash.h:136:2: warning: unannotated fall-through between
>switch labels
>>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   include/linux/jhash.h:136:2: note: insert '__attribute__((fallthrough)=
);' to
>silence this warning
>>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   __attribute__((fallthrough));
>>   include/linux/jhash.h:136:2: note: insert 'break;' to avoid fall-throu=
gh
>>   case 2: b +=3D /Dockerfile /Gemfile /Gemfile.lock /bin /boot /c /cephf=
s /dev /etc
>/home /htmldocs /include /kbuild /lib /lib32 /lib64 /libx32 /lkp-cloud /lk=
p-src
>/media /mnt /opt /patch /pkg /proc /root /run /sbin /share /srv /sys /tmp =
/usr
>/var fall through arch/ block/ certs/ crypto/ drivers/ fs/ include/ init/ =
ipc/ kernel/
>lib/ mm/ net/ scripts/ security/ sound/ source/ tools/ usr/ virt/
>>   ^
>>   break;
>>   include/linux/jhash.h:137:2: warning: unannotated fall-through between
>switch labels
>>   case 1: a +=3D
>>   ^
>>   In file included from kernel/capability.c:13:
>>   In file included from include/linux/audit.h:13:
>>   In file included from include/linux/ptrace.h:7:
>>   In file included from include/linux/sched/signal.h:6:
>>   include/linux/signal.h:147:1: warning: unannotated fall-through betwee=
n
>switch labels
>>   _SIG_SET_BINOP(sigorsets, _sig_or)
>>   ^
>>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>   case 2: ^
>>   include/linux/signal.h:147:1: warning: unannotated fall-through betwee=
n
>switch labels
>>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>   case 1: ^
>>   include/linux/signal.h:150:1: warning: unannotated fall-through betwee=
n
>switch labels
>>   _SIG_SET_BINOP(sigandsets, _sig_and)
>>   ^
>>   include/linux/signal.h:133:2:In file included from note: expanded from=
 macro
>'_SIG_SET_BINOP'
>>   case 2: ^
>>   include/linux/signal.h:150:1: warning: unannotated fall-through betwee=
n
>switch labels
>>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>   case 1: ^
>>   include/linux/signal.h:153:1: warning: unannotated fall-through betwee=
n
>switch labels
>>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
>>   ^
>>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>   case 2: kernel/sysctl_binary.c:15:
>>   In file included from include/linux/netdevice.h:37:
>>   In file included from include/linux/ethtool.h:18:
>>   In file included from include/uapi/linux/ethtool.h:19:
>>   In file included from include/linux/if_ether.h:19:
>>   include/linux/skbuff.h:3690:2: warning: unannotated fall-through betwe=
en
>switch labels
>>   case 24: diffs |=3D __it_diff(a, b, 64);
>>   ^
>>--
>>           ^
>>           __attribute__((fallthrough));
>>   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-through
>>           case 56:
>>           ^
>>           break;
>>   In file included from kernel/printk/printk.c:36:
>>   In file included from include/linux/syscalls.h:76:
>>   include/linux/signal.h:147:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   _SIG_SET_BINOP(sigorsets, _sig_or)
>>   ^
>>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>           case 2:                                                       =
  \
>>           ^
>>   include/linux/signal.h:147:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>           case 1:                                                       =
  \
>>           ^
>>   include/linux/signal.h:150:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   _SIG_SET_BINOP(sigandsets, _sig_and)
>>   ^
>>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>           case 2:                                                       =
  \
>>           ^
>>   include/linux/signal.h:150:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>           case 1:                                                       =
  \
>>           ^
>>   include/linux/signal.h:153:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   _SIG_SET_BINOP(sigandnsets, _sig_andn)
>>   ^
>>   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>           case 2:                                                       =
  \
>>           ^
>>   include/linux/signal.h:153:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINO=
P'
>>           case 1:                                                       =
  \
>>           ^
>>   include/linux/signal.h:177:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   _SIG_SET_OP(signotset, _sig_not)
>>   ^
>>   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
>>           case 2: set->sig[1] =3D op(set->sig[1]);                      =
    \
>>           ^
>>   include/linux/signal.h:177:1: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
>>           case 1: set->sig[0] =3D op(set->sig[0]);                      =
    \
>>           ^
>>   include/linux/signal.h:190:2: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>           case 1: set->sig[0] =3D 0;
>>           ^
>>   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrough=
));' to
>silence this warning
>>           case 1: set->sig[0] =3D 0;
>>           ^
>>           __attribute__((fallthrough));
>>   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-thro=
ugh
>>           case 1: set->sig[0] =3D 0;
>>           ^
>>           break;
>>   include/linux/signal.h:203:2: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>           case 1: set->sig[0] =3D -1;
>>           ^
>>   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrough=
));' to
>silence this warning
>>           case 1: set->sig[0] =3D -1;
>>           ^
>>           __attribute__((fallthrough));
>>   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-thro=
ugh
>>           case 1: set->sig[0] =3D -1;
>>           ^
>>           break;
>>   include/linux/signal.h:233:2: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>           case 1: ;
>>           ^
>>   include/linux/signal.h:233:2: note: insert '__attribute__((fallthrough=
));' to
>silence this warning
>>           case 1: ;
>>           ^
>>           __attribute__((fallthrough));
>>   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-thro=
ugh
>>           case 1: ;
>>           ^
>>           break;
>>   include/linux/signal.h:245:2: warning: unannotated fall-through betwee=
n
>switch labels [-Wimplicit-fallthrough]
>>           case 1: ;
>>           ^
>>   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough=
));' to
>silence this warning
>>           case 1: ;
>>           ^
>>           __attribute__((fallthrough));
>>   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-thro=
ugh
>>           case 1: ;
>>           ^
>>           break;
>>   In file included from kernel/printk/printk.c:61:
>>   kernel/printk/internal.h:54:20: warning: no previous prototype for fun=
ction
>'vprintk_func' [-Wmissing-prototypes]
>>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { retur=
n 0; }
>>                      ^
>>   kernel/printk/internal.h:54:16: note: declare 'static' if the function=
 is not
>intended to be used outside of this translation unit
>>   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { retur=
n 0; }
>>                  ^
>>                  static
>>>> kernel/printk/printk.c:165:5: warning: no previous prototype for
>>>> function 'devkmsg_sysctl_set_loglvl' [-Wmissing-prototypes]
>>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
>>       ^
>>   kernel/printk/printk.c:165:1: note: declare 'static' if the function i=
s not
>intended to be used outside of this translation unit
>>   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
>>   ^
>>   static
>>   kernel/printk/printk.c:2406:10: warning: 'sprintf' will always overflo=
w;
>destination buffer has size 0, but format string expands to at least 33 [-=
Wfortify-
>source]
>>                           len =3D sprintf(text,
>>                                 ^
>>   18 warnings generated.
>>
>>---
>>0-DAY CI Kernel Test Service, Intel Corporation
>>https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
>--
>Wei Yang
>Help you, Help me

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/MN2PR11MB4064B0104312A3D22F1698F3E5670%40MN2PR11MB4064.na=
mprd11.prod.outlook.com.
