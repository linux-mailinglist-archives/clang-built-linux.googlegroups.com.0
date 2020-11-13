Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBLPUXP6QKGQEMFY364Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F5C2B2695
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:27:11 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id x19sf6839354plm.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:27:11 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605302829; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cie7eNwutZs1vV2ZG7TlE62VhY7aOGmIO1nRxDuDjAYvTdxN2laTePkxndUx34Jd81
         eNl0UwzW6il23Fp/lLO10QJ3FdopiR30LPLUH1pJYIXVYPNK+lMx1P9ZaQOsWT+1CGZU
         nFfUbo9+1e9+f3KQCYeJQrko6EeR8esGzY3oUMwmNPloVeWQopdPrD5yhHy720HkBL1r
         C+Z9XCD/fjIkv1kH8njyFvrmfq7+X1eEcsC51erkX+KG0aexQjwJvXF1DNF4PtgaYZRN
         89NT6cm9AVDxTRo3LRoGZIbg36yhlTzHkcUqoWBr/cCfUq0VHN/CxOBVkE+QQj5+tGsN
         Q0Cw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=VJgy6XZNRCMiKbwCUOb27mftJUSo7lN/lWwdxs+4CLU=;
        b=g6u0bmXwl174KAkgncg+oCJdRvu9oZL9xHKvg7uhWHBbkmM7/KL2F/FHVL16qW8dma
         k6FAsdsKS9lW28ZY0tlNy48KpsWMg8GjFFHm+qlwg4DqzuirOMg248Wf01nF2O4iKQAp
         by1dKlaocX4iPXgRTzVWv/FouAPoxcY0q34EI4QF0DSZXTCIxn2HFe2m4FQcJaaIYF3g
         uTzdslkl8l3T2M7Y3cMXebJtg1Nbmz9we7r40vJtfJYO3ZV3DvQHGKzj+BrEDTdNvLKD
         etCKw++3yog7XD47Q3yiUO4lEUFqX/8deNSo4hkiml33+G4Z6zlC84ga/pP+VmB4CIwh
         TR6g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=GJXE2vc4;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJgy6XZNRCMiKbwCUOb27mftJUSo7lN/lWwdxs+4CLU=;
        b=Xzf5fJXi3U4uNhzpVftk7mjuoLhtO55YgotdkfETrnrgJUf2Cob4PrfJo85UvOojS1
         1HDU8oefAj5nAgQQrnuVTHsMs42dGosuC097iOve1ToGL5KHlsnzNral9NV0zamyy2t5
         GQumrbXmlycVRdHaX4gSJfFkSbkOdiahnbLnvRuUm4/tT8EOaZHIXoHoOm6p5d96sf8h
         8tDWGRinn2EtSNF5lI3nYugoovMWOIsMpFhucK0u5dgiBadMEvJ/QE76t/EmPS+y61h3
         v3b2VI4cI+yOdrilZ0+dNYq8LTonAWXz+EcwPNZm281gbRw22O+43q3lY97MKfI1skXq
         xFsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJgy6XZNRCMiKbwCUOb27mftJUSo7lN/lWwdxs+4CLU=;
        b=aVuuf4BV6K0mwDW0dLMcQisKUUICsoVvGqh49ujJxXcZMRMqnMOMTVifXoO7Vvw4iV
         684ZjZPfNGiugt4xzmZGYtuuJ0p3QeAcWGW01FXJ6tH5f/uVR7/XzvdPnjRt9HLuzpY8
         GgikKi+zJMkLk0qn76bFftoWzqjR5VBXYbCTElZ5Xm0dUQhgr82q3XfahMh5drlSUM0q
         nCtBBjSEgEZ+L12Z7un9BCLEAbxVxoaX2x4mQfYzetSQxJrC5HcpGpdHR77X7IxZoYJz
         B9n1vKcIwcA5ly6GX2MhoZzoOxM/oY2baCnh+73FLbZHGbfpQIo0WaKnvqot1b/iFLU8
         mFfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532l307a3oFQZoWlN0JdE9VQWszvX12wo7rbj5jqYq1QsbrbrW9z
	rVBrWEjfIJLkF2uDDTEEhlA=
X-Google-Smtp-Source: ABdhPJy+sjfMwI86ujHSB3AFKB8FxR836R+FSclSj/ympCgRWEgDKXkTICvuC68lpvI9rrx+T/pmQA==
X-Received: by 2002:a62:2ac2:0:b029:18c:25ff:d68 with SMTP id q185-20020a622ac20000b029018c25ff0d68mr3842700pfq.64.1605302829616;
        Fri, 13 Nov 2020 13:27:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls4338498pjo.1.canary-gmail;
 Fri, 13 Nov 2020 13:27:09 -0800 (PST)
X-Received: by 2002:a17:90a:c085:: with SMTP id o5mr5244312pjs.18.1605302828999;
        Fri, 13 Nov 2020 13:27:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605302828; cv=pass;
        d=google.com; s=arc-20160816;
        b=kY4dkm1Zr8oXT0mDGwnPwt/hU2OqRnTPnsvv2/kix2R3VVulOwgofCEzqUkpif89dC
         47tP28hHUDYo5ZQcn9N+nZ7+fHZUxE1L+R7wsQ5qplrqcX4n+ZSqWujPGvCco8BoE6Ha
         7ADrDktMnIcQ9VHtlF9a2OKMn4KRFMqEn/PpK/UGY03D9HfwnbHN5uL57jDIwDlnA1Ry
         6aZXLdGzGvMNdjnVAmZyxfcpacjXqeNtbE6uXMb3xNPuf54/YV+lrG8Br8aKwXTLyCXh
         G5Q0qzF4aC/6nM7/jiomhpB5XlvAv6Q74BpQOwNAJsHWfmrJ2T7GsLZBru5uWS/95rH1
         nwTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=DO/Enr5YBfPSQMOkuiPToyKP6O8h1tjKEVSY8sr5HPU=;
        b=iatkmdue2RjZanU/Ze1fltjvwtcaNJILU+jz3Sv0LIJmBHdvt63xoYU8Q0IH0BRiyn
         E0UHy09hrSm+KHvUWMeHvaz1ah7DP8OoZhMMiieOdINyP2TXbxOkoUJLhaz6yx97knes
         2rzh3hR6R2B6kxVA/0tnmRLmfR+FT+ZFZU1vzfpYpNUXpuZohLHMi/7+J0sFjXzYU1t0
         gXdBZqF9t2mwp+AFT+kp1dUtvBHR2BC4S/YHufz7BvFVm3hVnE5Z1nDU2GVoywfjZCeO
         mUQaCtjknoWDcmR/iNFa4fPod6FPxdZ49ky7A+2WsgsGKNcXTXYiqhKPZ4HRS2aG1Yp/
         xS2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=GJXE2vc4;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id bi5si601679plb.2.2020.11.13.13.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:27:08 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: tF9kHUegnagx1L1BcbZM2sq1wP4nv6UxDm4E9eshIlFbrkwFqq5Le6Tm2nCzNao7q/ySWnrql6
 32yrHcE6h78Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167025714"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="167025714"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 13:27:08 -0800
IronPort-SDR: fSly51ZhqySxb4TOE2z5WahDHWTSa8x1NVo7+qKTzVHCzV4RRRz5nIkMWZIKHo/2jzjZxlIUQe
 WqlPiCK0KloQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="399862990"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga001.jf.intel.com with ESMTP; 13 Nov 2020 13:27:07 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:27:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:27:06 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 13:27:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 13:27:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gH2qFwb6gLiJwOs7Pyi32drxOBH5cjB9AZUAFcVQUHwyXfgEkww1NCucHf3TzB2hUtDeDcoJSsxRp0MpqngdccLxGvMbYzlXpErEs1qXBvJglCBoO+xQmUVpXG0h/FOC7ZfmzAClrY8zQvTSlets/rz+R7LMvq7rz9oqBwhQBbEZ1FzipqtjFi2dXhQ7/3JJdnMBZD5x5BH7N2Tj5V7cN0hoAgxpModvDOPrgIwz26LJ1VJnH1vRq0KsE/gXFjdN5yzTfB2Rf6ShYfvGqO60lA1Fl25GJJvX1SU0ko2JnsJlQFysBCs7w5AgqPgQZ18twQMYAuMBIff0O1QmnVFG6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DO/Enr5YBfPSQMOkuiPToyKP6O8h1tjKEVSY8sr5HPU=;
 b=YwNJsX2cOE1dCN/h3WozrxiLBj6mrB3rVDfSlPWzAeLJ78j4g/B0Phiv/1cJunpUwlGwWwZcapmdGSQTNxSySsLaDWckM5enBiEU/KHFephHgId7ErDms3FsIz6x2gevq+DsuubNqvIILOiD9bEq/9Z0fk4D2mLFhjOgZCpZ1umsyUOqtl4uY6xPkbkD9E2eMVYsi30ju+pLXyWbvGSbDl1Ut00BhCCj5RfOnXRAZj/vzx7v4HWszU//g5Qo683J3lC9bsXr9jgTGLIFkRljzdoMxAzSDcY1rQz9ae1H2hPl9rQRzqvcVlQThnRAZTWdkwJMVdNZOuAOz3m4/QBN6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB5168.namprd11.prod.outlook.com (2603:10b6:a03:2dc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Fri, 13 Nov
 2020 21:27:03 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 21:27:03 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Kaneda, Erik"
	<erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Len Brown <lenb@kernel.org>, "linux-acpi@vger.kernel.org"
	<linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnGl5Sw
Date: Fri, 13 Nov 2020 21:27:03 +0000
Message-ID: <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
In-Reply-To: <20201111021131.822867-1-ndesaulniers@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f0f4869-b3ed-4784-75fe-08d8881add55
x-ms-traffictypediagnostic: SJ0PR11MB5168:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5168528ECBC46C7EAFD0540B87E60@SJ0PR11MB5168.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DoYZzUX4qXpWbgb3pleHYh5VGVbONlfJ4hNfcq8W8fwsIHQfEgLpLo6aamI7E3pK+xsGKgoFfCblIM/VvVkERuCZUNesZ9ARI++biZMxeFKM5ETtFydEclAZp22HWQR/SkWH8qC/gttETDm0xSESRnpMf5UDHV0XCVgjsZXmc+2yifaxS0cIx6Rb2lHcHrZeEvIvEwSdta7pt1MNTZrxnmb3BjI2SzGF3604E3Xj6wmgIVbYyLZAfnzUnSBWzHA+SIxzHoX9l4C6T7z5cp3GIPNVVv4iLrWTIWo2EaJ9gr5Gm7fMCXUHLAzxPrTmJQEKEwK7OmyMXoyEGJYGdPVSTw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(346002)(136003)(376002)(39860400002)(71200400001)(83380400001)(66556008)(4326008)(316002)(6506007)(66446008)(64756008)(55016002)(7696005)(9686003)(8936002)(54906003)(110136005)(66946007)(2906002)(86362001)(26005)(66476007)(53546011)(76116006)(8676002)(5660300002)(52536014)(478600001)(186003)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 05bI+71TPkybb87aaxQqvB52kbVgtSO2J82mKOD6nBrLM/f718RpufQYu/nNWcM5ss5IHDv/XmGPXBTpb5+MxliQ0w4qrA2BObfE7JLUSJt90Z5nkMvCVEHmSEqXczMiEXwXI+xrUaTHVMirDLMyV+5s6MPMjnAaefsFssOPNfgX2Jph69xszM6AenNIoEcCMAy+4PX+s6uiGswyJcPot5yl9847gre9njORi/6UTjsVria6+3cwzPZAIsC+3oOe05RUEI2Llf+/lH/H8lu2FsPKhwkn3fBJGNVoswIlsAKNGpg2h018P4/HByaeqf900jHt/aLvQEgYtg4LiG3hF6cWm9WjLgS9WrG6fAlS0Ejt6Ttv6IXhqwXGyuIpNFqYXYaRmq8e0GWAEhxMjc46f9ZHM2jPTJXozfkbtQkkNE/CAyPkR9sGSqFc4rOqJoogcPlOcrx6cC5fQNTa6J3yOByvSOqHYfYo3XM696YyVp8T5eCf75DWaY/S7IGWXvpjYq49+Lyn2q6RKitx/1WP6rjeo1sNuu+ghL7A4ci+zUtEvUsmFctpa9DsKIgYq0a3oXE0KU5uVvMGFsNRM1ArWKMfHchrtbfcOCicNWHjUu5swuzMyuHCjblqWMsFjerXk6o95XG8z8/t2sCCyyXsUA==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f0f4869-b3ed-4784-75fe-08d8881add55
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 21:27:03.5588
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4n8VeS9YAdVcysbPGhyPb7pdbLPpqsI3HJgeDZqzbe5qSm33/lZ38AvM/7H9hJmcJkCm7M58XYe/To3maThTQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5168
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=GJXE2vc4;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as
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
From: ndesaulniers via sendgmr <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick Desaulniers
Sent: Tuesday, November 10, 2020 6:12 PM
To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>
Cc: clang-built-linux@googlegroups.com; Nick Desaulniers <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: [PATCH] ACPICA: fix -Wfallthrough

The "fallthrough" pseudo-keyword was added as a portable way to denote intentional fallthrough. This code seemed to be using a mix of fallthrough comments that GCC recognizes, and some kind of lint marker.
I'm guessing that linter hasn't been run in a while from the mixed use of the marker vs comments.

/*lint -fallthrough */

This is the lint marker

BTW, what version of gcc added -Wfallthrough?


Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/acpi/acpica/dscontrol.c | 3 +--
 drivers/acpi/acpica/dswexec.c   | 4 +---
 drivers/acpi/acpica/dswload.c   | 3 +--
 drivers/acpi/acpica/dswload2.c  | 3 +--
 drivers/acpi/acpica/exfldio.c   | 3 +--
 drivers/acpi/acpica/exresop.c   | 5 ++---
 drivers/acpi/acpica/exstore.c   | 6 ++----
 drivers/acpi/acpica/hwgpe.c     | 3 +--
 drivers/acpi/acpica/utdelete.c  | 3 +--
 drivers/acpi/acpica/utprint.c   | 2 +-
 10 files changed, 12 insertions(+), 23 deletions(-)

diff --git a/drivers/acpi/acpica/dscontrol.c b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19 100644
--- a/drivers/acpi/acpica/dscontrol.c
+++ b/drivers/acpi/acpica/dscontrol.c
@@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
 				break;
 			}
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case AML_IF_OP:
 		/*
diff --git a/drivers/acpi/acpica/dswexec.c b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f 100644
--- a/drivers/acpi/acpica/dswexec.c
+++ b/drivers/acpi/acpica/dswexec.c
@@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
 				if (ACPI_FAILURE(status)) {
 					break;
 				}
-
-				/* Fall through */
-				/*lint -fallthrough */
+				fallthrough;
 
 			case AML_INT_EVAL_SUBTREE_OP:
 
diff --git a/drivers/acpi/acpica/dswload.c b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d 100644
--- a/drivers/acpi/acpica/dswload.c
+++ b/drivers/acpi/acpica/dswload.c
@@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/dswload2.c b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072 100644
--- a/drivers/acpi/acpica/dswload2.c
+++ b/drivers/acpi/acpica/dswload2.c
@@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9 100644
--- a/drivers/acpi/acpica/exfldio.c
+++ b/drivers/acpi/acpica/exfldio.c
@@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
 		 * Now that the Bank has been selected, fall through to the
 		 * region_field case and write the datum to the Operation Region
 		 */
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_LOCAL_REGION_FIELD:
 		/*
diff --git a/drivers/acpi/acpica/exresop.c b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551 100644
--- a/drivers/acpi/acpica/exresop.c
+++ b/drivers/acpi/acpica/exresop.c
@@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
 				case ACPI_REFCLASS_DEBUG:
 
 					target_op = AML_DEBUG_OP;
-
-					/*lint -fallthrough */
+					fallthrough;
 
 				case ACPI_REFCLASS_ARG:
 				case ACPI_REFCLASS_LOCAL:
@@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
 			 * Else not a string - fall through to the normal Reference
 			 * case below
 			 */
-			/*lint -fallthrough */
+			fallthrough;
 
 		case ARGI_REFERENCE:	/* References: */
 		case ARGI_INTEGER_REF:
diff --git a/drivers/acpi/acpica/exstore.c b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120 100644
--- a/drivers/acpi/acpica/exstore.c
+++ b/drivers/acpi/acpica/exstore.c
@@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
 		if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
 			return_ACPI_STATUS(AE_OK);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	default:
 
@@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
 				}
 				break;
 			}
-
-			/* Fallthrough */
+			fallthrough;
 
 		case ACPI_TYPE_DEVICE:
 		case ACPI_TYPE_EVENT:
diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c index b13a4ed5bc63..fbfad80c8a53 100644
--- a/drivers/acpi/acpica/hwgpe.c
+++ b/drivers/acpi/acpica/hwgpe.c
@@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
 		if (!(register_bit & gpe_register_info->enable_mask)) {
 			return (AE_BAD_PARAMETER);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_GPE_ENABLE:
 
diff --git a/drivers/acpi/acpica/utdelete.c b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585 100644
--- a/drivers/acpi/acpica/utdelete.c
+++ b/drivers/acpi/acpica/utdelete.c
@@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
 			(void)acpi_ev_delete_gpe_block(object->device.
 						       gpe_block);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_PROCESSOR:
 	case ACPI_TYPE_THERMAL:
diff --git a/drivers/acpi/acpica/utprint.c b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2 100644
--- a/drivers/acpi/acpica/utprint.c
+++ b/drivers/acpi/acpica/utprint.c
@@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
 		case 'X':
 
 			type |= ACPI_FORMAT_UPPER;
-			/* FALLTHROUGH */
+			fallthrough;
 
 		case 'x':
 
--
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BYAPR11MB32568FEEF4CFA1C20296427B87E60%40BYAPR11MB3256.namprd11.prod.outlook.com.
