Return-Path: <clang-built-linux+bncBDMZPGN4U4HRBPHVU6AAMGQE6MG3CBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3D42FF7B3
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:05:49 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id l3sf3539927ybl.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 14:05:49 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1611266748; cv=pass;
        d=google.com; s=arc-20160816;
        b=XujT/tBNZSZ4KEMOXkbQpfO33Xl2ECtGUR7CVw3XeW/9m0NYlS+4GYUs3uL8g0Dkzm
         TB8OZyExSDkHoF0d7eptYs5d6WiMWoCqeD9v6vO61yJh2nkX4P+cX87LeJsCy6SCxfEl
         yiBM9P173f4XQDPC4v+qF2dqZgitH9vG6ns2YLwQ7rMVnsQWDUQAFNK9CzhkztOcSudT
         j6Geo5rlBSIUlR+KaHyaT2t/3vWmGECDv5D1VHT9FZu5C6x+O0yD/bMpabtvciAiu4Sb
         OzD406F9357R/XCc5rKxOyBD6/HtHwj8fCBEOSF74eGxkfGZ4A+w/mp7pG5rI/v8R2PV
         mQeg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5nCy7CqiXrYp7pQrF+v/IdqhxaVVKPnduxUFgomHgYA=;
        b=ko+uV5BazVc08ct8YXq5dRTFIcWhIuHD65k7RystztW8pnzLtwOjMGDXJre2uMAUD9
         0dXxwVRoPsmzjMgYC+Ag9m0YJLltpW568BjbGH4l28PUww7Dw5CTMP0UcOx096yIsDpp
         qL9nLrGrmcaO5yGwnM1P8NwyzPLqcPBQR5zl09+UuJgTKD8lkWGxw6t7H4qf1UzuTZ+k
         G2pk5ZJVCFgvI8DwaQLuxjhqUo+XzBVOt4kX2+LEAV5vyJSlye5qoSfKdxDG2ufPUt3F
         ZgbeYnD9MqsyrAPT60zsDxhNM7645wqI5ph+zQIJMeYjZ7Cflp1P40WcfyLQwLWS5FFb
         ub8w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=CxKmgDEv;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of erik.kaneda@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=erik.kaneda@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5nCy7CqiXrYp7pQrF+v/IdqhxaVVKPnduxUFgomHgYA=;
        b=aZwNStXyixEjiVXArWr3RkIgZZFeXEeji9xxAXyj7/NOVLr+ErvMfxHaSstSexjJcj
         4+pcUAm78g8O/ndYq8jIIl3T+ie+qyFFVtMLEO2jFh8eEeDNXqR4eJ5xzXuPOwW2JJN2
         dUX0peSuav9/L+O3hxhQg0CEcAfWk6OHlCmyDQhozouYNHtvt6XsGaWt+n/rE7CTK1OW
         36PQNV01GH3wacXS60NtxHIswg4IjDBk/jV+S6nO5zS3QbdDsKW1rCvU5XyrHBKUhQ+Y
         /P0LW5hdmiOvlkogfOcP7YuGPEd3x/p8hxua+IfrPjM4W+1/gMHEc4Xp5ieKcI6Bo/pS
         Nk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5nCy7CqiXrYp7pQrF+v/IdqhxaVVKPnduxUFgomHgYA=;
        b=DwDLxVYyEznnIBT/ekOBDESjDWFvcS16R1v4wTVqMLNPNyMNwAkMxK+HYAV88IxEBO
         7brvp+ccdCeVWENu/6Op7O7EtsgMIw5hKK+S3q3fKNGNMrYxb0Rkt/QivkICtdjTyi9v
         j4HWTKlET0evhttiR0arnHzsknQI/1sa31em849wihPZ0v+j+Hlh4vR8WBQc0wH0t7vz
         8pYiTKKn2SemdGRNE1h68p8NO3LEO7KD6+yCbMtPGTdcrO4YglPkDXi4wDRzerNj/KJA
         shJHjbrSfZJMf38/Lr87i7HL0SIAn+E9q9kRnT/EuTOFnsgYzyHdxzXo8cXFkZj711et
         D1Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YFCv2yjK8ORDVR66HcscPQOzAQ+W5eJhwNDPx8p3UZTr5xxpu
	VAZKtkcF1wXy3tnzUCpwEQk=
X-Google-Smtp-Source: ABdhPJyPoj7dYRcHfW/1utR5TZLa88zty50BQtZiA+xz4A4LfVib/5gXwsTxmqU9B7yYURljnsL8BA==
X-Received: by 2002:a25:ce8e:: with SMTP id x136mr2139925ybe.173.1611266748721;
        Thu, 21 Jan 2021 14:05:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:828e:: with SMTP id r14ls1973976ybk.7.gmail; Thu, 21 Jan
 2021 14:05:48 -0800 (PST)
X-Received: by 2002:a25:dc8a:: with SMTP id y132mr1467529ybe.274.1611266748371;
        Thu, 21 Jan 2021 14:05:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611266748; cv=pass;
        d=google.com; s=arc-20160816;
        b=c1fjynycinaXyqpDbG0Gj/F8cQ9+6NeX6FXJPe9JA824d0hzwcd9KKfSMq21bFD258
         yYA2jVMK+7fppUbvutPAhbChnltyp0OnzRwiwS1xPoUz/8HMtwCmeJGz/NRGHaKRx67W
         tml3yHMRAlVKbGW3zeI0SjKTTswHS1arXvnb9KHJJxM1d5wOqns0XtTHLM0+FkFqu91g
         cRhALmKprMrvXQKbx9QSEhY/U+sCXqoF48hB1xDSU24l92rsI+TtSnP7zKTBv7pZ69wp
         18LQ/Zntgg/zRlAJ5U3CWLi8Av+zvSVzfL4W04HW3WqGwFSZnmBLJgMQjiub/5shSevL
         ofBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=AYVgoSwV3qnm3TOkF3xxd4fntWyrW0LKO+4+ap+qRdc=;
        b=yc7BGwpQ8RzeH0olUI+zUrHlIwSzXB6HHw/vmrgB+7izNfiZ0ynV2Qc61iyr37hecF
         DAF9eMQBLk/40v+aCtrv+8PlPEEAIMLq35VpD7WFcKJWOKTpsKFwwTm8mb9+8obMa2+a
         3RZJO2WJMg82jkDDhIpLmQbMOsLWBjnerlomTbDpffcm1r7/AHeVbSg1QZmmEsabzZde
         RhAa5fT0BbwEqoIqispHDKc2cUhTysVmnfkkY6guc8AJfYCiyUwmZcZYIF9IvnR5gT7H
         nqrNCIP5T1Jvp2G3rgwebdTaDsHEHGWRC5y+AP//7Q3LzAcsMG6N6vo8WSRjqdyU2E3u
         AQMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=CxKmgDEv;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of erik.kaneda@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=erik.kaneda@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id k19si511148ybj.5.2021.01.21.14.05.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 14:05:48 -0800 (PST)
Received-SPF: pass (google.com: domain of erik.kaneda@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 2UyjJAAQ0jnQnGDxXTVoOueXmzJGUWfCM271LP04XysNUdxIqXKf4W+YkAe0PDGtL2F8+LaS/X
 xlCpK0i8naTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="167028020"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; 
   d="scan'208";a="167028020"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 14:05:47 -0800
IronPort-SDR: 3VNd/qVawhtsMUN9MYLFoG7rzE9BR8Fgq30MBSswsGM/62HBkTuno8aStUddiGA0mQH41UI8vW
 ZFaxLCp271RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; 
   d="scan'208";a="367073075"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by orsmga002.jf.intel.com with ESMTP; 21 Jan 2021 14:05:47 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 14:05:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 Jan 2021 14:05:46 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.59) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 21 Jan 2021 14:05:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7+cpt174OyeLOWULbz4q7/t2S5UU8PEHkQtN5alQ3/xlwAd1Rwy93ZUTqmX7C0BNutnWbP1fZ5HH0QPZci0mQqoPSu+LNt42fX9g+2Q6ijN2YzYL6kpyyQ1JyOKvg8zf2PGYUFWUUZHJFAHGjxwvkzWG58hRyMbvmpwS9VtNfGecPewWo+hMBlOyCmWSELXq2nhV3nIoK0gc3mIFyBI72t6vsvVOFqZRplBab+xjaZvjwkbPXfOgGYM8xjxMq1FnQP8JMhTX3dQ6NkfRe0IoxxCt7ntvYw9CAi6ZhbYULYHpEzrJjICcN2aGU77j+/lARZ1dHbFbfYU7BYnpapl7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AYVgoSwV3qnm3TOkF3xxd4fntWyrW0LKO+4+ap+qRdc=;
 b=Mxv7WD+LnNfq6QJe4MYLmqIOCRz1KZ/6qaA6l1nHMMAXarGFB8x/Xq8dGenTVV06z5nqaixnITYthEmacoosC/mEKWNmrdpzPktvFK4/a7+q5x8meMkHNVxH4D0tRcuI9OS8mxke8LkQXpm2y9CU32gvRlniDkEMov9SoHSBv7jxKU0RvFr56VzBblD13SojuK7ThoNI5iNlFieMRun6FFpvAEHikl5DPBck/9rP99L+i9pD2Tacv1XJM1zCknQSflZZypmuQJiq+BZfZGbUUqwDfSugDPRjRdU39W4R3RqtnESAArStmzASMyx/BlZAlBbsAdqDZCp8ZlFBKU4XBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1599.namprd11.prod.outlook.com (2603:10b6:301:e::16)
 by MWHPR11MB1391.namprd11.prod.outlook.com (2603:10b6:300:23::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Thu, 21 Jan
 2021 22:05:43 +0000
Received: from MWHPR11MB1599.namprd11.prod.outlook.com
 ([fe80::4878:159c:ca1e:f430]) by MWHPR11MB1599.namprd11.prod.outlook.com
 ([fe80::4878:159c:ca1e:f430%10]) with mapi id 15.20.3763.014; Thu, 21 Jan
 2021 22:05:43 +0000
From: "Kaneda, Erik" <erik.kaneda@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Rafael J. Wysocki"
	<rafael@kernel.org>
CC: Jon Hunter <jonathanh@nvidia.com>, "Moore, Robert"
	<robert.moore@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, "ACPI
 Devel Maling List" <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT
 ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, linux-tegra <linux-tegra@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BQlYjhl8Bfrk+mO8TKTgEi+KoySncAgACWFoCAAAE0gIAAMY2g
Date: Thu, 21 Jan 2021 22:05:43 +0000
Message-ID: <MWHPR11MB1599FF516D46CAEEDC1C21B8F0A10@MWHPR11MB1599.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com>
 <CAJZ5v0it3KfdNo7kwq-7__C+Kvr4Eo7x8-3rBi09B5rHfNv-hQ@mail.gmail.com>
 <CAKwvOdnG6Ew+7HMjJuH3Or8kEE_ZyP-xNGbwaX8HdT=6FApYxA@mail.gmail.com>
In-Reply-To: <CAKwvOdnG6Ew+7HMjJuH3Or8kEE_ZyP-xNGbwaX8HdT=6FApYxA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [174.25.99.223]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 824e41e6-3071-404a-541f-08d8be58b2b0
x-ms-traffictypediagnostic: MWHPR11MB1391:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1391553F3F77060303A8CB29F0A10@MWHPR11MB1391.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rPBWAFp0N3d0v50G4FZXBqVfqR5dYtDd2bF6eKdea8/ZnTnMCC6pOLTsdtkdFIbEwe+oNq/LtOPf6bdOmAjqMVKPt3lRc0SC1Y8G2LbJUdjBFrfijwNQq/VDHAk/iyLG7EJr8/GcFpBhQ2cu5pq8TMz1slV3MShBI6aNNBRKlX83Nse2529QvMCBC3aVAQgCxOa68qsuk9s7UDaUWNmJsLmUCx6Jzp81SI++CtCKE1grw5ejm3evOOGSdxrX0Yomi4H1Negxvvy7SGvHwMd9ktX0YPclueW5vS/Jgl5bKKNicIKPTxFR4jm7iYqNYejaggBHl6V1NSzQ36ogV62KtxIskqgIiUgtmu14tiflUk40Ry/+I8bM5Y+ZLm6QOS7TwDELM+eT1kg50V72oq2rekJCPH9kGn+nwj3CZMZM9pWuKF1FV1ZekYafJ8PIK81mG/NjkuYcMa06J4wDsRQVMQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR11MB1599.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(136003)(346002)(396003)(366004)(478600001)(33656002)(26005)(9686003)(86362001)(4326008)(186003)(110136005)(71200400001)(5660300002)(2906002)(54906003)(7416002)(8936002)(52536014)(55016002)(66946007)(66476007)(316002)(76116006)(8676002)(83380400001)(6506007)(64756008)(53546011)(966005)(66556008)(66446008)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?RGRDdGdoTXFtWWFrYWorVXRwbk5vVkI4Yk5JQmtvYWVHMGMvcWpaZjJFZFlx?=
 =?utf-8?B?Z084Y0dmNU8ySlJVYlFWSHA1bzhicFJkOThweDI4cVVqY2NGYmdxdWhHRmFU?=
 =?utf-8?B?VkJpS2tWRXROWi9jZjBEbkxENXdVTXlER0l6MjdrUElnbW51cHRzRHVvRzhO?=
 =?utf-8?B?RzM5ZDF1Q2ZoV044YlpzTWRkaEJRVk9PUkV0ZVZ3RWtKVk0wWmZ6Ly9qcnZZ?=
 =?utf-8?B?ajFFVDNOcGlUT3lrYUZZYzFZVjJKZmwzU2t4dFg5ZEJkb1UzZGFTbDlBMXQx?=
 =?utf-8?B?SkpqZWZnUnN2SzNjTlJTQTdyUDVzbUJCTERhcmNLZGptN09QZVROUGxxK1hB?=
 =?utf-8?B?SUNlOU9tU0NuQzZvbnEzT3d4VWhqSXk5b0RqTkNnZ1NwdU50eDRMRytGTnFZ?=
 =?utf-8?B?QWhDaUU0QkRWRzRGVm9hZ295TnRDcFdVMVprQzVzUDBRWGJFQU5IaXBMQ3k5?=
 =?utf-8?B?V3RhTnBMVUplOWR0eUVTN3dXbVY0Q1VHY1ZTOVIxRC9saGFPTFh0ZE9lRUFk?=
 =?utf-8?B?MHZQTjYvemJtbjQwMTFsV1EySyswUGxpNmlRQkZMMmN1RmJvMnRZcnhnRXZC?=
 =?utf-8?B?SGF1VHhkTms0S08vQVQzR1RlVHVmYjdpUmMzbmlyTG1jUElRQTZrZzZSd2R6?=
 =?utf-8?B?cUlIZkZCS25NU3NEMWZKS055SlFCWlRhYWFXUmZxSXVNdG1WVU53UGVQdVpo?=
 =?utf-8?B?WmRZeTEwNjR4dW91UWcyN2lmL2tmWjlvY0xZQzlOM1B2VUEwRGxKMVVCamZ2?=
 =?utf-8?B?U3pPQVczNTQxRVJYVXBmOU1yTW4wekJQUHJxRlltNGcwcnNyUzBvUjVteUZK?=
 =?utf-8?B?QlNKQS9DZW5lTkdtRERQWVFpN2NNV1JrRm93RzhweUtlVzUzUE54TDI5bUNJ?=
 =?utf-8?B?RWp0WnNpL1NNZHlBMDVoVTZ0M1A1K2x5YU96VWpwa0dhQks3a3ZnbjVIVWN3?=
 =?utf-8?B?RWVFRSt4STFpUWNkSWRBSHRpNzFBVm42LzFsandFckduQ3pObVNTenRKUnJt?=
 =?utf-8?B?NHJyb0NKTGJtdnA4VTNoMDRzak5RK2hJSVd3dVFTOXhQY1RYUWF3ZVhicTJY?=
 =?utf-8?B?MVZXZnNOd0NLZGV4NlBKVWV1T2taYmxYZ1YzNEdkbnQrSVZtTDZLOTBpVzVy?=
 =?utf-8?B?c0NRS0MyZHowZE5pb1o1Q0tySFlUbVJBVGRPc1Fja0J4QXBhcHZwNW92czV2?=
 =?utf-8?B?MGNxSUhZbE1YQXZkek5CL2hxczBrejFpRVY2TzZidE1tbG80T2ZJSS9jVS9R?=
 =?utf-8?B?UEVSdDJtS0M3TmZEWHdEMkhoenFBNkJMWU5UV3ZUNkR1OVB0TXRWNEV0MEYz?=
 =?utf-8?B?NE4rc3VyYWludDdpeWxLTjl2bnMvQTBmTkx4bzA3U3RwTmdmQzM5RkhuQ1k2?=
 =?utf-8?B?Nm5GNnRHenIzUjRibDI0WXpQbGJiV1pwWVl0dS9vVkFyOHp0dWpRc05LZDFl?=
 =?utf-8?Q?nA9Cm5j5?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1599.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 824e41e6-3071-404a-541f-08d8be58b2b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 22:05:43.5495
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ar08mOoNu7F2YzJPXxlHk2Gjoh7pJq3+UqXvzDoWLGajweIz/vdAtrHz5w0SLZPAle5rGVYjAkpFrOjElxtK2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1391
X-OriginatorOrg: intel.com
X-Original-Sender: erik.kaneda@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=CxKmgDEv;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of erik.kaneda@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=erik.kaneda@intel.com;       dmarc=pass
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



> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Thursday, January 21, 2021 11:08 AM
> To: Rafael J. Wysocki <rafael@kernel.org>; Kaneda, Erik
> <erik.kaneda@intel.com>
> Cc: Jon Hunter <jonathanh@nvidia.com>; Moore, Robert
> <robert.moore@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>;
> Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-linux <clang-b=
uilt-
> linux@googlegroups.com>; Len Brown <lenb@kernel.org>; ACPI Devel
> Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT
> ARCHITECTURE (ACPICA) <devel@acpica.org>; Linux Kernel Mailing List
> <linux-kernel@vger.kernel.org>; linux-tegra <linux-tegra@vger.kernel.org>
> Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
>=20
> On Thu, Jan 21, 2021 at 11:03 AM Rafael J. Wysocki <rafael@kernel.org>
> wrote:
> >
> > On Thu, Jan 21, 2021 at 11:08 AM Jon Hunter <jonathanh@nvidia.com>
> wrote:
> > >
> > >
> > > On 11/11/2020 02:11, Nick Desaulniers wrote:
> > > > The "fallthrough" pseudo-keyword was added as a portable way to
> denote
> > > > intentional fallthrough. This code seemed to be using a mix of
> > > > fallthrough comments that GCC recognizes, and some kind of lint
> marker.
> > > > I'm guessing that linter hasn't been run in a while from the mixed =
use
> > > > of the marker vs comments.
> > > >
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > >
> > > I know this is not the exact version that was merged, I can't find it=
 on
> > > the list, but looks like the version that was merged [0],
> >
> > It would be this patch:
> >
> > https://patchwork.kernel.org/project/linux-
> acpi/patch/20210115184826.2250-4-erik.kaneda@intel.com/
> >
> > Nick, Erik?
>=20
> oh, shit, looks like a line was dropped.  Here's what I sent upstream:
> https://github.com/acpica/acpica/pull/650/files#diff-
> cccd96e900e01f7224c81508cbddfb1af6fcfbff959d6bfb55123e1b9cad4e38R154
> 3
> Note in the patch Rafael links to that line is missing and there's
> instead an #ifdef that's empty.  Was this line accidentally dropped?

Let me take a look...
>=20
> >
> > > is causing build errors with older toolchains (GCC v6) ...
> > >
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/drivers/acpi/acpica/dscontrol.c: In function
> =E2=80=98acpi_ds_exec_begin_control_op=E2=80=99:
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/drivers/acpi/acpica/dscontrol.c:65:3: error:
> =E2=80=98ACPI_FALLTHROUGH=E2=80=99 undeclared (first use in this function=
)
> > >    ACPI_FALLTHROUGH;
> > >    ^~~~~~~~~~~~~~~~
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/drivers/acpi/acpica/dscontrol.c:65:3: note: each
> undeclared identifier is reported only once for each function it appears =
in
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/scripts/Makefile.build:287: recipe for target
> 'drivers/acpi/acpica/dscontrol.o' failed
> > >
> > > Cheers
> > > Jon
> > >
> > > [0] https://github.com/acpica/acpica/commit/4b9135f5
> > >
> > > --
> > > nvpublic
>=20
>=20
>=20
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/MWHPR11MB1599FF516D46CAEEDC1C21B8F0A10%40MWHPR11MB1599.na=
mprd11.prod.outlook.com.
