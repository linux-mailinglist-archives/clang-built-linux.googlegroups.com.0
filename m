Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBLFCWX6QKGQEOJPW3ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC132B0832
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:13:50 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 64sf4168213pfg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 07:13:50 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605194029; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgjmhJ2QA8GlbgsRnJHLVNe4gFZXH1YRRBVZbkbLr7Y/4scEs2I3Oa2L8d/SCI0uwZ
         Y1+mVg4l7OL/RCJklYBKew5nMFkyJVLMNBMHpwMbtMRTib/ijf3eKAcKEtxx+caXirYk
         o/cKpAmgLaCHYN0bvaCaIc/bkHH5ZB/ZcROizLzjyaUk+8u8eqHz88sqW8Y5p59rdMcs
         TEVI7onaM0pHhQ1H1Ba6jCD4oY50L8AizcKHi4gZdHnkpF2ebeSi+TeOj8noMR7Zta9f
         JBD/pXzpId5nqJaIzy8H9T++qC7vyGrbTsSOSIFHgIcybIwsl+Qe7cpsGqXD7s8dAjGh
         riaA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=r7HWQWL0rW5ThLC5pomMk32f5oRjmQkRenWt73uobVk=;
        b=HxpdMSeLvl6yZAKfiBO6w/6CJTJVo1TANngkv48tpg+QGQ4XdjWYmkj9AxeWc71tYl
         fxljFPVttzbKAav53LoOyMfkU9MmGNwfpPB1OOz2N7+RSXzNTbtc+4oVvW78w7Eux/N7
         +vVdY7H4gy5FBDvfsY3+X3G9WEmsJdR+BfbX9cBH30ygZXHNsAVFaKER2njiynnxvvX5
         9BGrPj00ZRhAf5bI9sadYgCAK55wY7GPxEzOt4okNny7fAR0x0tV+ErJE4Uko4lsEdnx
         LGlk7m4iJHKvsvAL9kRqZy0eTwNUR2/fD3MzO+r2RmfsvyDL2Of1Fx7vYXNVovyFZhGM
         E8gg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ly+gkJW0;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r7HWQWL0rW5ThLC5pomMk32f5oRjmQkRenWt73uobVk=;
        b=JN9tDo5hXulrr81EPUggNBAGkYBxqZyN1XN9yY0GGRsVoiHxB/RNgTrFHjxNGrGoPb
         /gN3dZTBggZb0wLBldAqoUmVG7EyYAUyA0TNcjrtJKtlAbA+WwYZxjpU4//9TDzboFKp
         6GnCsWFDxsOGE/GV6uk7L6udq0oi+dhuurkDNDV5wct/vei6SsjMlv28sF5o6FI1MeUQ
         5XtiAxM3WhWLl0uAtrBbr0aQThbgUAE7x5X2hS7yQcVO8820JJ7+tDUxCkXNR2IVrv9j
         kIg/+1XyuZBd/vRQlkmi6yrJCbuLxXkUzUcatsjq/rQonkILzts5mYzuSuEwlk+r7kKu
         e01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r7HWQWL0rW5ThLC5pomMk32f5oRjmQkRenWt73uobVk=;
        b=TBLnz52hSq0vLQn6+YCzPQjtM/04H4EEQSlvEJzb2Y3nBiJ4rFVIGVIorqrxxsGNyS
         crQSnao/2CBEDSmGy6dSHBnOdE3t3mP5gIjmHSYV/3cn0nTUXQy/W1BLWhbDed7GssWI
         AQcafLTuXB6bnxYRAqncgx5ixlR9O23YsDhU272DhWKdzTaitn+yLwPcng7u5/517CMI
         ob9X6OTF/zJd5baQTExlbUCuzSn3DuRBxLrhbMwjGu70lfS8VJAp97nUTwYp8OU6Y+gQ
         qBV+MYtXTMb02+LUZMkDgCQV4TynTddlM2OWeOHmvwHfiTJbzCaLDXAUtuqmzYKH3BaT
         f4rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53187YixXM5dTWuCV9QWQvWULUf+NmqTuFJTf/pYamKEEHvuMYCk
	d/ji0FJw6xiWV0K2xKL5WH0=
X-Google-Smtp-Source: ABdhPJyj3G437kCNCeR7sqTUVkOCWjRjnG8r3PtsN2rREFrwbaQcZukgBNEHD7c+pY9xb9aUMiaQyQ==
X-Received: by 2002:a17:90a:e38c:: with SMTP id b12mr3676992pjz.145.1605194028918;
        Thu, 12 Nov 2020 07:13:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d98:: with SMTP id v24ls1591255plo.4.gmail; Thu, 12
 Nov 2020 07:13:48 -0800 (PST)
X-Received: by 2002:a17:90a:a58e:: with SMTP id b14mr9660473pjq.203.1605194028293;
        Thu, 12 Nov 2020 07:13:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605194028; cv=pass;
        d=google.com; s=arc-20160816;
        b=qssAtU/mWc7EBfpmVoUPpAxABw+4Sy6FdwBjsbMQ8s7OMPMAR+mHs2rW5B7Y+tmlww
         6hkADekaRbs9tMg75pc7o+PbhWzIjM9QcuB+0PDEgfg5GZBnyYXtzikIwR+hRntX687D
         H1VzmlD1xOOMVg7HppbXp1Bvu1PeMoBYiJLO8P1k8nL/lxbSelnXYatb5V2eWVs2usYW
         yPETOOEI5ETz6Kk+kD+p3qhGBE7g7VMNMyjfknOvcppqO9pwRTKDwgzc/dO58NVllYuT
         3hFwdUs/DbHNvV3545nVT0uiyvHAHrYh+TNeWigAPbAZsNexnyOC86irEDsvVcCaf9p3
         AOTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=uOMMiYM7GWTNamVhgzJmg8qQnfqskU8kTYEjdhxY1Nk=;
        b=rv48SIcLAr2exD5UC2DpdjAgLaVJZx3VX2weiUy+BkkwInjuxiKCxlDpOFVIpPUp6N
         j24JPMtg20735oaTagRxntwLKAbNdrx0r1Jm6TnwOmPm+SMJ9ulUyD8ukIf4U/ceOaLu
         PF98mARUfi2GClAgOOcPPUMT/E9CUlrC1f95tIxv4TI2aiIZ4vzne306gYtEvPlKAFRc
         B42BBC1T6JanScbXhBwxsxi2gY6F+OYm5DNLk86pSWe8n2A+qL4l8GQQuYc+d1KDacRr
         OAanvuhWYgWpIfrC5++DZaZwwTOZo+nNbHGfhOdZimmjEqQEe14x+96INlqd6P+wh4cy
         efCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ly+gkJW0;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id e19si256365pgv.4.2020.11.12.07.13.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 07:13:48 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: CPlgVzUCM6Uus1m+lef6aBAJJh4c2Ya1VEk9y7maxz7EM6PW1HxTxyrcOGIXDlHTxnuf6sJwB8
 YWWwdCwABdLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="170428971"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; 
   d="scan'208";a="170428971"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 07:13:23 -0800
IronPort-SDR: Z6fdRpQE4h9ryyYjJiMC+KPRrFXOcoQk1t/4vHRzFhQjHLlFesGljFGjusIXM6JE35v/c2gaHo
 mYxV1LEd/2xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; 
   d="scan'208";a="323667665"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by orsmga003.jf.intel.com with ESMTP; 12 Nov 2020 07:13:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Nov 2020 07:13:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 12 Nov 2020 07:13:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 12 Nov 2020 07:13:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XoC2wb7UZN/xR5+8emHhaQNK3apW9PBBeXnsFtT9u7FJ6W0Tn3NoGuGClD8ZCf+XbxzFgvvGw/tVCZcILwivPStdsqNIZMb649zWYV2EF+n2SPofNBNdCBV57w/13EvG0x3vafYlARaF9GDAxDuL6u2nV81rLYn9Xn5rBOKc2h7uHkGAbdz/lRf883PrE4Yb+fDKvEOkQctK1ccTNAheugqmyejFhON8WsDDDhPPzvP1gjShXwjb4afuWbpKqnnJvVVN+QjWRkJrCih3dUKyANcKn39QPwRo0YpDB03LGO3vmI/GVuO7acmB5QCurlnBykAEozi6p8ZGwWUmzdcMvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uOMMiYM7GWTNamVhgzJmg8qQnfqskU8kTYEjdhxY1Nk=;
 b=nS1aB0dbfczsE50p8X/eAKHTxKocAiefftEx28SsXOegEN2633r/4Llu5qoNX2XqlHmBvFzzqSJ1O3nb/1Y5ZpgdcK02qTaEbybWrYq7WmB5AYGED7xXb2O1WNM/5dLx6zl6n3okZOJGg9GnqUeSwe+nYaQw1pzXkTw6Y4Hfr9inw+gxyeeNKN+rXUMMEa6QpRjXm5/B7L9Otu6MM9h729cFf8XErhCDLbt1qy56OClbLnooq+f+dE+HJi+79264oWqwamLrZ6YhDu2J3LBZJHmNGcvV1dqh1P35M3xClWoF1PZB09CuS4sOyenegX3i5UesLsNUu3gt6Lq9UdpNCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.23; Thu, 12 Nov
 2020 15:13:19 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Thu, 12 Nov 2020
 15:13:19 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J"
	<rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva"
	<gustavoars@kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnDCsOAgAA8BQCAAVTWIA==
Date: Thu, 12 Nov 2020 15:13:18 +0000
Message-ID: <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
In-Reply-To: <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37d7ac10-b655-4f7d-9a67-08d8871d7cdb
x-ms-traffictypediagnostic: BY5PR11MB4243:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42433ACC95FDBC14ACD2A7A887E70@BY5PR11MB4243.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6gadGoVFepiotkykGrYif+v099pbRYeDK2IU7diebuLtYKJp+VWb+DEI4HKQ2TYSOhBlRNGNit7V19njKrlKSkfZCtRL/An6vSpY5jdSMBiOkr3w4luD01R4rmFIc6GI/jo0IP3fIgGnu8u3yRJ+lDORmhxH0TlcTYDZBrMltVZOeSm0eLI+6LMrbQCQy/qEKDoXtd9r/FsVJqzcwMtJ5/difIBlyMa3v/BNpojr/MfVTYgU78qoOwADc2Yk3e94X5Oh58jg1g4F2wLJzv/TArE7TC6J4+T1hgnKCMaksULq/NHufEgw7XblnEFHroWHCXBKHcrdfXBUPv2wCbIzzw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(136003)(366004)(39860400002)(6506007)(8936002)(8676002)(6916009)(5660300002)(4326008)(66556008)(76116006)(64756008)(7696005)(54906003)(186003)(52536014)(26005)(66476007)(66946007)(53546011)(66446008)(316002)(71200400001)(9686003)(86362001)(478600001)(55016002)(33656002)(83380400001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: uRjV2vxoCR/qDwZ17Hd0gly9U8i3LzkD1aSWCdGCmZGWd67UjSk/j/PHEuLTxPXHat07XO2R0k/+7L3C8DYRZGjFpWphuswSTzwoMIZqKHEUr1PzVX0O2YOafUDgQie3pdLL9NBonXm9Y/bZuYXNGCHOUmfKvlAExhYWzaeSoCxudjgiuAm0acRXwwrYSdwCe3Z7qy72QOX5bJjodZYMa/f+D+bJBc1RJDrQ1D60dRsnBWp93jDN7eQMdE5XLMiAVL+kINnsYEyhQiX1zHCN8ijQOx6i3KzmTxFX1kV22lIqYhebhnhzxglc88zQYiXR4LBd8w8fVJjltX4ioIOG3vS6MpYOR33/Mm7GNIeSSpzZKv0UusSSaTHtxV0LxaNktqmJM5e785eZnjOlDh5ffTOLCk0Ijw7isCCvg9Qhk62TTcFPy2MCjb/P2fwX8DPS9B+gZZOWQyTO1t/H/OkMxsbV2KnSQCfhsnZ/IcDtOHXGnP+5QIfV+mpgK+DTnXkbPH35KR1/IaxXspq9OUCYnlVH2/EDsu2r2FT/1PFwUU57ZXDUiqy9Nqf5ERj6gzQ5XwKZ49Vq0fd77knIAzyTLOP66hzC3gdSA+PbW4FL+5HZTn1HJMCETGBN02tuMaN0OjBu1ZpqprzANP8JOMRLKw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d7ac10-b655-4f7d-9a67-08d8871d7cdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2020 15:13:19.0553
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SoHBKW8R3QJP1OA7ud6Vap1m21zyMuhCfcqC/CJklTVvVW6jN/wgpOVg22OXv8SKiZ9GGUTJe6Q9GbmOavD52w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4243
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=ly+gkJW0;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=robert.moore@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com>=20
Sent: Wednesday, November 11, 2020 10:48 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysoc=
ki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-l=
inux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.=
org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Wed, Nov 11, 2020 at 7:15 AM Moore, Robert <robert.moore@intel.com> wrot=
e:
>
> Yes, but: isn't the "fallthrough" keyword compiler-specific? That is the =
problem for us.

It's not a keyword.

It's a preprocessor macro that expands to
__attribute__((__fallthrough__)) for compilers that support it.  For compil=
ers that do not, it expands to nothing.  Both GCC 7+ and Clang support this=
 attribute.  Which other compilers that support -Wimplicit-fallthrough do y=
ou care to support?

We need to support MSVC 2017 -- which apparently does not support this.
> Bob
>
>
> -----Original Message-----
> From: ndesaulniers via sendgmr=20
> <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick=20
> Desaulniers
> Sent: Tuesday, November 10, 2020 6:12 PM
> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik=20
> <erik.kaneda@intel.com>; Wysocki, Rafael J=20
> <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva=20
> <gustavoars@kernel.org>
> Cc: clang-built-linux@googlegroups.com; Nick Desaulniers=20
> <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>;=20
> linux-acpi@vger.kernel.org; devel@acpica.org;=20
> linux-kernel@vger.kernel.org
> Subject: [PATCH] ACPICA: fix -Wfallthrough
>
> The "fallthrough" pseudo-keyword was added as a portable way to denote in=
tentional fallthrough. This code seemed to be using a mix of fallthrough co=
mments that GCC recognizes, and some kind of lint marker.
> I'm guessing that linter hasn't been run in a while from the mixed use of=
 the marker vs comments.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/acpi/acpica/dscontrol.c | 3 +--
>  drivers/acpi/acpica/dswexec.c   | 4 +---
>  drivers/acpi/acpica/dswload.c   | 3 +--
>  drivers/acpi/acpica/dswload2.c  | 3 +--
>  drivers/acpi/acpica/exfldio.c   | 3 +--
>  drivers/acpi/acpica/exresop.c   | 5 ++---
>  drivers/acpi/acpica/exstore.c   | 6 ++----
>  drivers/acpi/acpica/hwgpe.c     | 3 +--
>  drivers/acpi/acpica/utdelete.c  | 3 +--
>  drivers/acpi/acpica/utprint.c   | 2 +-
>  10 files changed, 12 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/acpi/acpica/dscontrol.c=20
> b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19=20
> 100644
> --- a/drivers/acpi/acpica/dscontrol.c
> +++ b/drivers/acpi/acpica/dscontrol.c
> @@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *w=
alk_state,
>                                 break;
>                         }
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case AML_IF_OP:
>                 /*
> diff --git a/drivers/acpi/acpica/dswexec.c=20
> b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f=20
> 100644
> --- a/drivers/acpi/acpica/dswexec.c
> +++ b/drivers/acpi/acpica/dswexec.c
> @@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_stat=
e *walk_state)
>                                 if (ACPI_FAILURE(status)) {
>                                         break;
>                                 }
> -
> -                               /* Fall through */
> -                               /*lint -fallthrough */
> +                               fallthrough;
>
>                         case AML_INT_EVAL_SUBTREE_OP:
>
> diff --git a/drivers/acpi/acpica/dswload.c=20
> b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d=20
> 100644
> --- a/drivers/acpi/acpica/dswload.c
> +++ b/drivers/acpi/acpica/dswload.c
> @@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_s=
tate,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/dswload2.c=20
> b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072=20
> 100644
> --- a/drivers/acpi/acpica/dswload2.c
> +++ b/drivers/acpi/acpica/dswload2.c
> @@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_s=
tate,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/exfldio.c=20
> b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9=20
> 100644
> --- a/drivers/acpi/acpica/exfldio.c
> +++ b/drivers/acpi/acpica/exfldio.c
> @@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj=
_desc,
>                  * Now that the Bank has been selected, fall through to t=
he
>                  * region_field case and write the datum to the Operation=
 Region
>                  */
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_LOCAL_REGION_FIELD:
>                 /*
> diff --git a/drivers/acpi/acpica/exresop.c=20
> b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551=20
> 100644
> --- a/drivers/acpi/acpica/exresop.c
> +++ b/drivers/acpi/acpica/exresop.c
> @@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                                 case ACPI_REFCLASS_DEBUG:
>
>                                         target_op =3D AML_DEBUG_OP;
> -
> -                                       /*lint -fallthrough */
> +                                       fallthrough;
>
>                                 case ACPI_REFCLASS_ARG:
>                                 case ACPI_REFCLASS_LOCAL:
> @@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                          * Else not a string - fall through to the normal=
 Reference
>                          * case below
>                          */
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 case ARGI_REFERENCE:    /* References: */
>                 case ARGI_INTEGER_REF:
> diff --git a/drivers/acpi/acpica/exstore.c=20
> b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120=20
> 100644
> --- a/drivers/acpi/acpica/exstore.c
> +++ b/drivers/acpi/acpica/exstore.c
> @@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
>                 if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
>                         return_ACPI_STATUS(AE_OK);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         default:
>
> @@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_objec=
t *source_desc,
>                                 }
>                                 break;
>                         }
> -
> -                       /* Fallthrough */
> +                       fallthrough;
>
>                 case ACPI_TYPE_DEVICE:
>                 case ACPI_TYPE_EVENT:
> diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c=20
> index b13a4ed5bc63..fbfad80c8a53 100644
> --- a/drivers/acpi/acpica/hwgpe.c
> +++ b/drivers/acpi/acpica/hwgpe.c
> @@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_e=
vent_info, u32 action)
>                 if (!(register_bit & gpe_register_info->enable_mask)) {
>                         return (AE_BAD_PARAMETER);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_GPE_ENABLE:
>
> diff --git a/drivers/acpi/acpica/utdelete.c=20
> b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585=20
> 100644
> --- a/drivers/acpi/acpica/utdelete.c
> +++ b/drivers/acpi/acpica/utdelete.c
> @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_op=
erand_object *object)
>                         (void)acpi_ev_delete_gpe_block(object->device.
>                                                        gpe_block);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_PROCESSOR:
>         case ACPI_TYPE_THERMAL:
> diff --git a/drivers/acpi/acpica/utprint.c=20
> b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2=20
> 100644
> --- a/drivers/acpi/acpica/utprint.c
> +++ b/drivers/acpi/acpica/utprint.c
> @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const cha=
r *format, va_list args)
>                 case 'X':
>
>                         type |=3D ACPI_FORMAT_UPPER;
> -                       /* FALLTHROUGH */
> +                       fallthrough;
>
>                 case 'x':
>
> --
> 2.29.2.222.g5d2a92d10f8-goog
>


--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/BYAPR11MB3256C9711620932685C368F887E70%40BYAPR11MB3256.na=
mprd11.prod.outlook.com.
