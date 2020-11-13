Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBHP4XP6QKGQEAJZT3AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5682B2747
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:43:58 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id i20sf6613057qtr.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:43:58 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605303837; cv=pass;
        d=google.com; s=arc-20160816;
        b=sWN8czYhMbaHai5nXUihjKQGvcgBXlqmRNatpidGFjyL1qIUZ6/lBqj1cpcvoFACR3
         51mV3ECB249wWrgmgqUCylLPBwxn6U+ucHzai4XRlbYtpax5wlkgr2SF80Y37oHNymSQ
         2oDAOpuIJQ3lwni2KIv57wGrtTJLcn7MoZ7dgQiHHJYrgJKXLv/uTgUf2fsi5d3y512Z
         6m/z+ec3j92WPWyzjIPqkGH5aiRc8rjbV/hMWbGhq+qYLCPtsNollIJaCk7Jfa3CcyDC
         88klQpcZQvPo0WittaSkWbtrIM8ENHswLeb5yqPKwRJKHI6ApH05RsEblw2twT6JbfMi
         1pDQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WT8hNqMp+Izub7Hj7pLiAKTBy438XVP45sviR5xvx8Y=;
        b=QV8AHo6NMB8ZJTSzh6G0LLhQxuTR3h+6bWUTmKFaJ1FyAXf/yRnqln8EEujaNPrCov
         wtN8UOJCQ7pQNPs9XmUhEyghSphBl537shJmSxUrqOZWQIlgq+1RUf/S6mL4js1h5f+s
         xdVHRaiI5JQJwMU/3gMZdfQmVGDU46TSxoFcKNBrOGosWDN6H2tt67IVToGdGVJ+N8SL
         wl4snvnyZqNoHY3aV6bow/pS3qsGV6OArwoGelOhr9AS3GL9OHPlvl3Om5WkRjAc+N3T
         O996l0JM2nkmV4KpD9vMq6Jk3qMh3xtpwwr63AWdk3ht2TduY0XysIivLaJ7661ezShv
         vvhA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=bJPMUmvX;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WT8hNqMp+Izub7Hj7pLiAKTBy438XVP45sviR5xvx8Y=;
        b=i/p39qzOSRmbu181D55ogGVPlWJ//KYCr/BC+HPnm77OABa0Y+V0zHHAoGVOGwozbU
         oig07L6ndmR20wyIGeBkKCHvCxu19TgXX5U3bFf3xu/h7GcEB/l/kSw4/IArKD8khC4p
         J8D36dk3vmp+TEmPbpUBF1SP96RXvv9NdCR9kj0BwVy+SuMJAWL4fib+2z70PAvoZSOL
         w/0ZmXTLEWxBIWQTejr1aB9w/3EMgdHtrH67T7E2oTcg3w0oyczK22oeFYgPXCCsa8ID
         zl/Hc8MouHAn/islp6xA7gzwhCyfnPZwNoqU8LSwENBHAk53nax/SrrtROMCn9B7ulDg
         LX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WT8hNqMp+Izub7Hj7pLiAKTBy438XVP45sviR5xvx8Y=;
        b=PV62FGk0dhK5WjEiJsVnUC8+a9dIlAYjb1OFK9Vpw7RwwImVlfPukrlWDq9IIoWU8n
         +uRf/Pd2lpUx9l+cEg7ISEmpJQ9P3Uoi+E3Jc5uclC6E5HS2NKFS4qSv1Z1Pq1vG0TJc
         KMDtcGbeffKSeQNBiYLOE6dzc/6WL6FiBt0NFg8Xzr93TYh6tdqVz5dIBIOEtnOlR8as
         QfTDqFlc/B+DzQsz8sfHy39uCTu7QdxR3H72DRgfP+Xc+DC6Ol6LjmwRnU83Xj+2+pgN
         qyx0OXxZ2X1hpu+2CQSBLaz8lF2/bzkyqU5mfTNegHfMXacRsnowHjUiYJwDmQZ1FSez
         S4lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IeOJxSomzoVfj21ToIi627YSoKyJ91DZQZQVCihiUQQiUArjG
	HGKW/Ab7Vg9mVYQXG00/YV0=
X-Google-Smtp-Source: ABdhPJw4BA34w5uqBdMPJfWxq3oXnnP8NnGmA9T4BxIMkhOAMZrBnc7A247aciRyQpyNA/7KNkjf2Q==
X-Received: by 2002:ad4:45eb:: with SMTP id q11mr4610168qvu.20.1605303837217;
        Fri, 13 Nov 2020 13:43:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:abc3:: with SMTP id k3ls1812466qvb.1.gmail; Fri, 13 Nov
 2020 13:43:56 -0800 (PST)
X-Received: by 2002:ad4:5544:: with SMTP id v4mr4131275qvy.43.1605303836735;
        Fri, 13 Nov 2020 13:43:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605303836; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4IpJO2KbFjaUsAphHDUxXp4dmyc2cVZwQkjedRp9co716srt1GvIM1+TpSGniT0RZ
         NXtgXwQIF79muGU6HT7sXWIN0EOZjUmz9E5yKp4ZL6VhqYf2l5m+tOeKilkCgysOHiwR
         GdI91vVFhjmf+tg82fECw+XRk7DxtTPYzDHH5rsRTedbfuRWd6gdI7WMZ9ynZGLHtDOs
         7pMk3vvRQyabTBcjV3EepRdySHbW8Ikm0N8p8IjpYPwHNOf49ZI4nHTJVjIVHHg3wl96
         3ZOes4YQTR4+iajYxHLSYePC4NFtEqPXi42vlTANn4JHh6E6+JTdsOCVFlKsrt3Bl2nP
         3XpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=a+o+r/5Mf2zf0xepcgT3YWoZRCN6DqVRmzKWFb9llmg=;
        b=yiiy8N87bz/Uvy/AjgLPIA9LJvnGcmUMk4NujdFjOG/rRZsUpzPtN36klSpdew920C
         OPg2cdQiq2DpNTZPEMuh331t2HNFo1GYAkJglct1QMyUGt9htz/z692SQ5Y96vHHr2+Y
         3Bvpg5MfToucaP15YBbuOWgNFLdApE1kHwUu0zdfmzccP8UV9AN+JtIc9IXdk2BY+M+2
         E2sxd1AlALTHjRYfB+oWwR6jIR7JMBis/gJZXhrXx+7nkKJSv4p3jfENQdEubOTMv7Fz
         NkdMPfEzBXj0QpracEvg8aSdM+YmwJwC/jO0O/CL81S1v2QscYR5OqnQI7nO/OnptxPU
         ByoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=bJPMUmvX;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id n21si409004qkh.0.2020.11.13.13.43.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:43:56 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: BPI6N/rhUYQtYpzGN7MpumykRKtVxXRL/6mg44M7navUcrnFTLnr4kuHTJdBXYgDz0tWxjF7ZI
 Q641r09EFF5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167958804"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="167958804"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 13:43:55 -0800
IronPort-SDR: lYwTiOHOzz43nsTcAUAZfPcnkn2l2zDSRyC4bSJ40QkSDLBd1I9LM7j9d5fH70cMXZtQCbZqaB
 VUXOxckuEeqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="474813046"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga004.jf.intel.com with ESMTP; 13 Nov 2020 13:43:54 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:43:54 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:43:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 13:43:53 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 13:43:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kn87uV8AttuEKDu+Zay9FNHNVLATwyY3AqEqRI4CMSBoEzgS1O214fTTZS+VB+EGEPpCOOUOqNju3FRF1imLiBt2EdSOwyC3SX2O5b/SGojk1gegA48K30Yj63IGHbX/56olW5oKzGFhY2wtlxXxdzhh6WQ1ATZ+3K+8iyVLaLrBYnG3MQMPUGg4tJShAJWHEcnDj2G7Qd+eLDLksrnLLh4JCJIlmGfSkZ/yOpaXxRCsBjMoEQbWbONF8RzKfCUcTZKqTi3iUU3bbGJs0XDxajzwAxm3LKSkHqB+UvUz4jKAN8iWplvO+i+um2TgmgvrLVVK0IlHVZYm6B0OZQrpoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a+o+r/5Mf2zf0xepcgT3YWoZRCN6DqVRmzKWFb9llmg=;
 b=gYFX047kKx35udRLXfHl9UHcb7+aBw/qioqlxBQRiUoca0f0xEVwz4wl6VszTQtgRYv9HzV1vjFpFT+D5LAp2HRAVeIEv/MUJdpkeyQ/xVxfxPO48abdHXogZ3lK0b9dlCWyMQFvmKAcDqLwotNvZ894ABPTkXt661MU5SPXnYwDGUG9Tkln2pYzyxw9LozxHvS1hktmYSGxroPHSdDqfruibjQ6tn8BI86qLlGf5xtFC2KrGtThJsgG4TLfUMYTU3Q0gj3AgerHsra27C/uwu6vD6CFJZIxfqZwnyq8SzX67ItTPQb9f7kjU/dZZIn3mxZS3eylv4MAkT3j4tGRcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB4976.namprd11.prod.outlook.com (2603:10b6:a03:2d7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 21:43:50 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 21:43:50 +0000
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
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnGl5SwgAAB3QCAAAJ3cIAAAHnQ
Date: Fri, 13 Nov 2020 21:43:50 +0000
Message-ID: <BYAPR11MB3256E6E37618702C5EA761A087E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
 <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2b739f9-43e5-4bfb-a36d-08d8881d3576
x-ms-traffictypediagnostic: SJ0PR11MB4976:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB49764055EF729A6EDEAF61B687E60@SJ0PR11MB4976.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cSKxhCAknijyizfUYZTcNWO/ka/Z2ksGe644Ygvcrh7B0BPg7JRt8FfG5w5BK+ap3AR3PydSZuqzOnNjQodkp4td+v6ATdJ96GF3Qt4E691SqSH/DO4a/hv+01zLPA4YAVZo1iArkZ/8tYF0rvNHQanprVFA3naFwwWyhj4WW8Ml8UX64ElKIWSRdsIjb3CowSVOxqG9hYWnXnJUC8NA1Ov9lO/qmhGER71V+ZZ1IkImf9NaaVy/T/7Y7i5Orya4eug5yUCoT4htKBeA6/uFfUvV1PUF1mjFX5LjcrNgy6U6XIDy1M0YEXdV/FQH+mu5HkcmZYJoZNpERy2gGRDzpA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(376002)(136003)(346002)(396003)(53546011)(478600001)(2906002)(71200400001)(8936002)(5660300002)(54906003)(6916009)(76116006)(64756008)(83380400001)(52536014)(33656002)(9686003)(6506007)(2940100002)(66556008)(316002)(26005)(186003)(66446008)(66946007)(55016002)(8676002)(86362001)(7696005)(4326008)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: yaIupS0LPIDPPH1MzTsIKZsSBxF6vCXdUmvXSrWu8Tx8eh+VV/DRyeVEW9cMFWsikYPrb7lWjCl1KTVvmNUMW1Ic5egO1cUuGgCDXc/dHdMyt/GyXjcY7jGFuBELwPL9P4KqYFx0PN4FJr4ULcfAagQA3BgmwOFhWpLu8kRioplH1z6z2DqVH5gcqVKUZXrUV74mjtKUjKdhCqV0ioIJ7WuOZqKBeORwB2nZLWzFS6WV3g0QUuKh+SYWyOJPZu/uKOwRqHXkM1RgzU4PRBSp6EFfcOVy9i5yvyIdO/O910WcC9YF0Xy+2LLLgOculDaPGHqGrpHsfMT+tsXuOAn6XzkmBPxQGaCQL24N9x8TrlWcNRfoKkrNso5gjy5+rRzvGUpoE2G4hMyiytGdQoKU2Yk0Wllz8H2xH+ERrbRoySJ+c9ky7XxN9Pn0nsteF5Xp5wKuTSDwMglwf4EjbEXltgJdV+RraTa1vzMHX5y3gHJsX8wgFhCBnwUB6MUmZ7yYPnK9El3xGn1jzAes26FNTuboWJ5Jxs3x2O5nfelz/X7vrAWNzTfdc98/dnev43c18+CpzmD8gNtSXtPog4HfC2sIZGEquWIIhfAvUrvk0noK8+OFwDw6fTuJLJFNxVfnC6CEtSiBDeUw0Cn2FCH1Mg==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2b739f9-43e5-4bfb-a36d-08d8881d3576
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 21:43:50.3572
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wo+wfCXnYX9sVas6Qj60P//6+na6aHgvSmwT0OnU+H8zbQ/VHemRaWReUkUFVlyi5dffvy/V78SQ+rvHXpXHBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4976
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=bJPMUmvX;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 192.55.52.120 as
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
From: Moore, Robert=20
Sent: Friday, November 13, 2020 1:42 PM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysoc=
ki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-l=
inux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.=
org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com>
Sent: Friday, November 13, 2020 1:33 PM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysoc=
ki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-l=
inux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.=
org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Fri, Nov 13, 2020 at 1:27 PM Moore, Robert <robert.moore@intel.com> wrot=
e:
>
>
>
> -----Original Message-----
> From: ndesaulniers via sendgmr
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
> /*lint -fallthrough */
>
> This is the lint marker

Yes; but from my patch, the hunk modifying
acpi_ex_store_object_to_node() and vsnprintf() seem to indicate that maybe =
the linter hasn't been run in a while.

Which linter is that?  I'm curious whether I should leave those be, and whe=
ther we're going to have an issue between compilers and linters as to which=
 line/order these would need to appear on.

It's an old version of PC-Lint, which we don't use anymore.

So, you can get rid of the lint markers.



>
> BTW, what version of gcc added -Wfallthrough?

GCC 7.1 added -Wimplicit-fallthrough.

>
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
> b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19
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
> b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f
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
> b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d
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
> b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072
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
> b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9
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
> b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551
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
> b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120
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
> b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585
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
> b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2
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
clang-built-linux/BYAPR11MB3256E6E37618702C5EA761A087E60%40BYAPR11MB3256.na=
mprd11.prod.outlook.com.
