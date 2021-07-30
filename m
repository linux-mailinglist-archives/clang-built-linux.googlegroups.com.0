Return-Path: <clang-built-linux+bncBDZYPUPHYEJBB37VSGEAMGQEGYYNKRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 017B13DC0E3
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 00:19:29 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id f9-20020a05622a1a09b02902615523e725sf5127017qtb.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 15:19:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627683568; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmzjxECtRh7gEYRemaWOyf4WRikzRsaC30WejXZVaCRoZH+KMnayD4KiXQzch2Nju+
         tPiDKP/MQWBfjO1G6VJ2H37OoVwJRo0CVqaRkuGjRbbdfEyD+VTAyUS45lXriC1Bmeml
         4+vf3ThJq9hQb2nvKSi7alN974mxOjuK/FYqDnLgbAxenv4qXdHGjALAGt2O5Tq+Pm/U
         gXMaGHGUuLThiC3IRaU7/Qkd7oW452+pxWNL07ZT4ZjcSFdTq4aFi8321pEhIPOPMphg
         NHQlObUfMJrXwmMz6IotCrYSR5IdpHoz82J6IZ6uYx89BEG1SK/OCjtP7yvd2DEK1rFy
         AOoA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=oqErdripNBUbWB0vHTWHLr9SwLhSGddt4S/7zMb2kIM=;
        b=d87unRAY8TeY/3ZkbiSmnZ9u8srHyLOQCu7aZdOpiVC6sRBa3izFMfVTM1CQQjS9S1
         YL0vnPh6MdjExlyDY5SAS4wdU1zEBJCu9W9gNRG8aanO9f3vijCivm6s4wFAlnbtxUfb
         hndkWcCnUTwxVJIowPHG6VESqJX+IAz/lQ6QauE7dw+h932SPHZq8aEcr/fcWAMTr0qR
         ct3Ip+9vv0lngPIULtCVxYGp9zaKBNFYM1D44+Mu/S1/D4gdjvE8oClCH2rsXmfjWUG2
         4Te6m/4gyzJBDTPmDL5fgimI5ILPOz6M0UnkTUtEEGEI6czaP3g9DadtyyPQmj4EisJB
         k35Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Pc+CJFqu;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqErdripNBUbWB0vHTWHLr9SwLhSGddt4S/7zMb2kIM=;
        b=sQAYj5VZnv0zzxcrWww/04p47vU1jvK2bZ9Z/nlIHeiBWTGJs/YWw0IqvUb0FFOV5o
         kTvNo98g1FaWSKCjkN+zkmW2+7//9wue9rsuwRdc/4ZfBim9rArPQa2M3e0yz7fu5R0l
         K3VYDvtPq1HV964Xj8qzHgyRQuhEfF8zmqjxqMjzNXR0uEpywL5c33eWc9gBMDKK4Nd/
         VlOXa90DhDyH0Onv24bklz+6Zcx5wm3eaTkBgsrH52rsxNKCV53pakkwpwcby8nCtbne
         IUL974lSasZx2q/IsBzNd46UtBN4gHns8hm/dVmaDDqFSp2OYYlmSG9TTmHJ86ywDGUE
         ehPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqErdripNBUbWB0vHTWHLr9SwLhSGddt4S/7zMb2kIM=;
        b=NkH7Vo8cz0TpVA33MIl58MWypbrNx7MD1q8n5fL7MjZquSA10SK6KG6aUsPMo3yTtD
         gPJzDZd5II7K/ZGW8quELUZ8KiLymhMA+G62HAqhDhfS6ELy+Pwo3fk2zZHKAqVYvWcM
         NDTRoo8GCpQ3kAktkTpmDq/h388WOtXQQiekQa+SRCaaLzI8bVYFu0RwFuAy2f3lCelo
         VsAFn5fAgVxD8PlGNlclwccmMUdvQXEAgFiEXkgID3dOeipG3iZC4AMfuTq+sxU31l/g
         9Tgx16zVXwHLePP8TyJ0ofakT0HTKKs1/+g3SKlSTGwfiInpgcwOIh28iWx2P5VwDrwI
         YTEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531T/epPjlBWDluTow4sZ857ah99hNdBQMPKQAq2YolYAPXurafC
	cwyObsNPGOBTR+euqwaj9ow=
X-Google-Smtp-Source: ABdhPJyBi/OFpd8zvnIhZlnPqsVmgSelF8D41HloV1vN7BQK66DXchv0M6FqTOcdDsJZAebtszsPCA==
X-Received: by 2002:a05:620a:c84:: with SMTP id q4mr4590951qki.243.1627683568050;
        Fri, 30 Jul 2021 15:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1002:: with SMTP id z2ls1520261qti.0.gmail; Fri, 30 Jul
 2021 15:19:27 -0700 (PDT)
X-Received: by 2002:ac8:6b99:: with SMTP id z25mr4405875qts.150.1627683567558;
        Fri, 30 Jul 2021 15:19:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627683567; cv=pass;
        d=google.com; s=arc-20160816;
        b=P9r4qAdfcNyCGVHKtaR0lf+TLB3PHVIp0ca8l9WcSjjg8xUzHafiHrqygOALOy04OK
         4sG9QHjpvpR/MjqMEz0cWXrFtxmSlEPgBYH3YcESTzg3Itmq5XF3vzA6ihJF1x44MPFI
         eP6NefJYbXfYka47TIYOE6dsE+SnHqdSeYEVpYhvAw8XpVs2L9wgybe2urYuXmUzJ3wZ
         /Om5vuquqFd0c7uV8uu1i3115BqTboWed0zN7SPZJ5iUjGn0UkAU+GvOxH2VLutDzY6s
         B8Tm4axRZ5FFAVrt1l4fHWtqaf4hNWKYbHqWVt1j/SNABVeuE+4iLDW7qhHx5oO85ZVf
         AnvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=PhDqZqkfDP7BPsp6M0Jc7OK2PsfPBqMlZrUCai4MFmU=;
        b=j8kW2WR5HXQaHqw5X6fkhGuWzpoAlZ7Ludx3qHKuE4qsj7NkWMGESWHsLfR5GSz44G
         MCKqWHG+QDU/WGBfj2I5hZFE1yQPpR8dfC/CPZhJsHNaJtzOmZDNes3Cviz1GJfSsKvA
         16O36I8E8xIU2mXwRr5ln/DDif1QJmCoG6/RJMcOrqqRZmeBYhyoSex01JP2+R6fPUkj
         WJF+4LTrgPm/emj6mrTSQFomHCS97/l/3L4s7XJWjpsT4ffXgGjAyaWJkRnYeshNv1Vi
         M5w+BHg2ufAZrgwj1KtrslWEOvoAMs3bShTX0rGOfhI+saIOh3/TCHRGnMCgI9NHQgQQ
         z9Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Pc+CJFqu;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id v31si131477qtc.4.2021.07.30.15.19.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 15:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="213210494"
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; 
   d="scan'208";a="213210494"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2021 15:19:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; 
   d="scan'208";a="477199134"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga008.fm.intel.com with ESMTP; 30 Jul 2021 15:19:22 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 15:19:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 15:19:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 30 Jul 2021 15:19:21 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 30 Jul 2021 15:19:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxOnmoU5CdXVIAlJdI7ACVw+JLrhOxEgUT0dirr26sB49QKqOcz3XT1UrLdUiMoAizIXue2i1lqcb/ujD6PpQW3RazC60iLM1W+MnLCtm0A/iqC011WsuaAvu3237+bgJ/GvMDICua+pCv678k1h/4KpHLeJd0OqDBc0bVzdM9dBYMNID+mZwHkgi4X0GEHmRZvNk8oBx5AzXLjt76ejxIeAX+pQCdpNM+qpplhdyxIrcdON/lEiMST9ww6koXd44JnR6O6CSMM9qNLw2nTrErE8KUl6yP2L1o3TsScZCfmLCXbAme0z8goOW8q3ibm8MLBsUn4KYYV2X/hTNtODnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PhDqZqkfDP7BPsp6M0Jc7OK2PsfPBqMlZrUCai4MFmU=;
 b=jxFoiIUXBMaa7qDlfncDcfZpDX1FwddZy2lIUuFaxMS2Wb2VoRCTeuU9aLp8+/jHnzCQ2cKSniy1eaKk/KEhHGnxrHp29iZPTyWtP07Kc+keit5I6fzBdLvwZ+RWe7RYUvIILllu2UpmrowqgXKwUZGdlIKdPBTeIHfFA9r9Y4yXCwf0rdIzZRJ6tbuLMdEaxsprmp7RGKCmGrXTJ0rMBWwfl+fDCKtnVHPU5z9UU3kguJSE0sr40aCBfsdaP+7yFSW6BiDNiB+h4V/AxBHaR9UXKUZq+/DUm6ChyynOlWJhTNdjRuoHRxSHOqX5/hZHZtuj+Prmfawohs/3YJpKjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5150.namprd11.prod.outlook.com (2603:10b6:a03:2d4::18)
 by BYAPR11MB3461.namprd11.prod.outlook.com (2603:10b6:a03:7b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Fri, 30 Jul
 2021 22:19:20 +0000
Received: from SJ0PR11MB5150.namprd11.prod.outlook.com
 ([fe80::15f9:1166:732a:313d]) by SJ0PR11MB5150.namprd11.prod.outlook.com
 ([fe80::15f9:1166:732a:313d%3]) with mapi id 15.20.4373.025; Fri, 30 Jul 2021
 22:19:20 +0000
From: "Williams, Dan J" <dan.j.williams@intel.com>
To: "keescook@chromium.org" <keescook@chromium.org>,
	"linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>
CC: "keithpac@amazon.com" <keithpac@amazon.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-cxl@vger.kernel.org" <linux-cxl@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
	"gustavoars@kernel.org" <gustavoars@kernel.org>,
	"linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
	"linux-block@vger.kernel.org" <linux-block@vger.kernel.org>
Subject: Re: [PATCH 04/64] stddef: Introduce struct_group() helper macro
Thread-Topic: [PATCH 04/64] stddef: Introduce struct_group() helper macro
Thread-Index: AQHXhZDxZGHjIxWvvE6M0gb3lz9V/w==
Date: Fri, 30 Jul 2021 22:19:20 +0000
Message-ID: <1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com>
References: <20210727205855.411487-1-keescook@chromium.org>
	 <20210727205855.411487-5-keescook@chromium.org>
	 <41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk>
	 <202107281456.1A3A5C18@keescook>
In-Reply-To: <202107281456.1A3A5C18@keescook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.3 (3.40.3-1.fc34)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5acc0d7-b0b9-49e8-6312-08d953a813eb
x-ms-traffictypediagnostic: BYAPR11MB3461:
x-microsoft-antispam-prvs: <BYAPR11MB3461F42C55625C1E139BD8E7C6EC9@BYAPR11MB3461.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ocrIM4lNPAW+QMkfm0PtlwqWr0EynkIOL9w333QhL494qGGVq0ZvNtaMaFnZ1jCafKYky5dUiIrskt4SAfFbJiaIPMl/bCoDgW0vwHCBNajHSPU0WwvNgxW29Psd+XtSPKjoLFYWNIwl6XRVCqQ5DU8uR6GrvTXSgOQk4qM0jipqOAQcSGRqS/s6fapMq2+kW22oiUlVA0uJzF2D5OQEeF7qiabvybWM89t2BW1plWXkjYR6xP72JDMZLQgjwxxK9Gi7ZK/u9Q9gdMacm9eU71dj6vS3CMMgOHwLwG1QOV/T0fqwslZl5RXoqchyi5uXIkDJZEXIRUhZLikyK/98hjMMWCVcnXV85urVwKFeQytqQQxPrjVqjMzjHQc7rTz7i+tY6+OfLeaRwC22jLGFsaziIsEX2PqfN5uQ3ZwEZ1fJsAhhBmxQ/ROdp7uVvnh0tiwuwmreMuDoFRRX9mzTYJSjoA+hvHhXR8id4sw346nt+9lB9Qfr/XTkykjBtO4LFD2TpCcauXmZ4Q2IpomKRg8lmulxAsmBPI4JBrYCjtbiaZpESvoXCo2SA1TlXjcTTS3wKw1O0FqpSpTZddH2zbNCN/sBdnDkrFMh+gSXhgpg94CEoS3SIoRTQrFMGxmX9Y8NLK6cABo3sOhpJYp7T3h8KDDlkdEUqn9W1+KO6rGArnvnyWh4hl92UFKwhpAhDqZ5dfxTVG5MGDkFS30Ycw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5150.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(396003)(366004)(346002)(39860400002)(6506007)(71200400001)(64756008)(66476007)(66556008)(66946007)(6486002)(4326008)(110136005)(66446008)(83380400001)(6512007)(8676002)(54906003)(86362001)(478600001)(8936002)(2906002)(26005)(186003)(38100700002)(316002)(122000001)(36756003)(5660300002)(7416002)(2616005)(76116006)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTNPT01ZeEFDd0tqbTVzbDFHTVRjcWNjOVZ0ZDBuSmpKR0lZbEJaZjRTeXQr?=
 =?utf-8?B?ZTdHTFhZQmpJZjdianFLaHNJM2wrVk40MnJ2Rmk5c0tFbkNGVFhDbnBvU0x6?=
 =?utf-8?B?OXRRMGs0aThzL3FxSTZPOTQ1THZoZlc5OUY3ZEVUZnR2eVpUNDlXU0IxMUI2?=
 =?utf-8?B?ZXh1dldiOXJja3BkYjQ1VzZmVklCWjJOV2JFZFY2Tnp3ZmZ5UmU4bS9TeUE5?=
 =?utf-8?B?N3JwOHlYWTJ0VHR4eEIwbk9SZlFaM1NIQU4wWHNNelFNOWVwM3JBVGI0OSt4?=
 =?utf-8?B?WHNubXZwNDdLTEFhYTgweG5FSXlxTkl1cmNXQkNwQ1JoK0FabElENXFmUmxW?=
 =?utf-8?B?cTk2ZmdYNzVOU0lNcjZ1S0hPMUNjOUpuRUhPY0xoVmxSM1F4T3BubmJveW9o?=
 =?utf-8?B?aWp6YWJKUEJHbDJhTzVuS2dBdXV6VFRHai9GSGY3UXVkSEVNRnMvdDNqMzdS?=
 =?utf-8?B?aFovWWllNFBKSCttenZPSkZBZEJ6YzBhNEl3bjh5dTJRTmdJK0xJL2lUcDZO?=
 =?utf-8?B?S1YzbU5JNmx2dStzYi9IcG53VFZWdDQ0QUwrS1YxODR5Ukh1b1pIS0ZpaW5H?=
 =?utf-8?B?aU9mY3A2d0VTVWNwSW9GK2RNWVRObnV5SFA1L09YdGpQNXZqc2FweGdYOERH?=
 =?utf-8?B?eGFCNHVhdzhnVXdEb2hSRkVDZWhneENTZFQ2eEh2VUJGcW5Pamt3SjJybEdm?=
 =?utf-8?B?dysvakFyTTlCRFlHMDZmTEJaRTV6anlHT2xzOVFMSU52UEVyWjl6WDBkbFVr?=
 =?utf-8?B?eHF5d1FnWVgyMk5PSWRaUmpPcDZyOTRoZVl5WWFsSjBpMTBpOUU0dUlyamtE?=
 =?utf-8?B?bXpWNmNqTFJjQXhBcVk3MjFjdllwVnRlblVsWXJ5Z2hhVXhNbDU0S0Z4VnY4?=
 =?utf-8?B?ZXFwbzBTaXhvU0xDVFV6T3owTVl5V3JjUFR2N2w4cEdMZEx4R1FPdDdYUlVC?=
 =?utf-8?B?SmJUbGRNR0k5YytTVWZxd3hWek5RaW1sQXFZQlQvcWxlcExsZzhHaEN4WHE0?=
 =?utf-8?B?UzE3NWFpNTVwMFlUcDVrOGluS1RNT2RHR3hpSm5pWW94QXlXNGY3Rm54QjFY?=
 =?utf-8?B?dkxMOUc0NU0xMDB6OFR4TStwR0lDZHlZcklmWUFtVWVKdG9VNU5ycm1kOEs0?=
 =?utf-8?B?ditQbkVORFZqWnA5VThvemNQKzhBak03cTd4S1luZjhtcVJhZCszcm9OTXhV?=
 =?utf-8?B?MzdpdXR1andWNHJYU0JFemlOSTZNSk1BQlUzazFndkZRbnBCVEw0aVk1Q2Zr?=
 =?utf-8?B?ejRLN3BvdXVsT1R4b2dubnpqY3JFa2dMU1hVb0NVRjZlTVpIT2VhMHhQMU1r?=
 =?utf-8?B?YlQ3SCtQMlVRSUpraGVRTDEzV3dON2RvRWp5RXpVeTNJek1HRWtjVXYyUEx5?=
 =?utf-8?B?d0R4ckdkY0hSbjZmNzRrbmpKSUNkM0VTOElvMXI5NkJNN3dEc0tJQWZDTFRG?=
 =?utf-8?B?dk5kMmE2alFKNE5ZNW9makd6ZEhXaDRZZTVhaEk4TUY2ZXNJdUpheks1dTcv?=
 =?utf-8?B?UkU5SGowUTZ4YmJFQWdHcFNGVjltOS92ZE1UWXhOTmRmOEh3SjhxcWVWRjNu?=
 =?utf-8?B?R1o4UlpTNVROUlQ2ZEpCYVNLWmttVlhudno2NVlmMEFHM1JlU0NVd3FEbElW?=
 =?utf-8?B?YTc1SXdlbHRXaDVaa2hDM2tXc2wyUk5Od2JIYy92THY1VTg2QUhiWEVlaDFM?=
 =?utf-8?B?ZVhTclBSTEZCRGRsWmZJQTAvQ25NdmRFMXJZQTlWaGNiQlNTNWYvWG94RjZj?=
 =?utf-8?Q?j+vCawjgVERvPWF3kE8ziwuEifElhH7HmKxMxa4?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <B2693B1DEE6BBA448203184C824748F5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5150.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5acc0d7-b0b9-49e8-6312-08d953a813eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2021 22:19:20.2096
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c4FbVQxHNfBAT1mt+U1jXpsr6dnYUaTjfnTnF8mHMk63Q9MJqRdvJgjsOVSftseNiAN4/UwRSgEq+LWrh1IYupr6fapNEsF0A1mub5pcHhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3461
X-OriginatorOrg: intel.com
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=Pc+CJFqu;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of dan.j.williams@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=dan.j.williams@intel.com;       dmarc=pass
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

On Wed, 2021-07-28 at 14:59 -0700, Kees Cook wrote:
> On Wed, Jul 28, 2021 at 12:54:18PM +0200, Rasmus Villemoes wrote:
> > On 27/07/2021 22.57, Kees Cook wrote:
> >=20
> > > In order to have a regular programmatic way to describe a struct
> > > region that can be used for references and sizing, can be examined fo=
r
> > > bounds checking, avoids forcing the use of intermediate identifiers,
> > > and avoids polluting the global namespace, introduce the struct_group=
()
> > > macro. This macro wraps the member declarations to create an anonymou=
s
> > > union of an anonymous struct (no intermediate name) and a named struc=
t
> > > (for references and sizing):
> > >=20
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct foo {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0int one;
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct_group(thing,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
int two,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
int three,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0);
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0int four;
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> >=20
> > That example won't compile, the commas after two and three should be
> > semicolons.
>=20
> Oops, yes, thanks. This is why I shouldn't write code that doesn't first
> go through a compiler. ;)
>=20
> > And your implementation relies on MEMBERS not containing any comma
> > tokens, but as
> >=20
> > =C2=A0 int a, b, c, d;
> >=20
> > is a valid way to declare multiple members, consider making MEMBERS
> > variadic
> >=20
> > #define struct_group(NAME, MEMBERS...)
> >=20
> > to have it slurp up every subsequent argument and make that work.
>=20
> Ah! Perfect, thank you. I totally forgot I could do it that way.

This is great Kees. It just so happens it would clean-up what we are
already doing in drivers/cxl/cxl.h for anonymous + named register block
pointers. However in the cxl case it also needs the named structure to
be typed. Any appetite for a typed version of this?

Here is a rough idea of the cleanup it would induce in drivers/cxl/:

diff --git a/drivers/cxl/cxl.h b/drivers/cxl/cxl.h
index 53927f9fa77e..a2308c995654 100644
--- a/drivers/cxl/cxl.h
+++ b/drivers/cxl/cxl.h
@@ -75,52 +75,19 @@ static inline int cxl_hdm_decoder_count(u32 cap_hdr)
 #define CXLDEV_MBOX_BG_CMD_STATUS_OFFSET 0x18
 #define CXLDEV_MBOX_PAYLOAD_OFFSET 0x20
=20
-#define CXL_COMPONENT_REGS() \
-       void __iomem *hdm_decoder
-
-#define CXL_DEVICE_REGS() \
-       void __iomem *status; \
-       void __iomem *mbox; \
-       void __iomem *memdev
-
-/* See note for 'struct cxl_regs' for the rationale of this organization *=
/
 /*
- * CXL_COMPONENT_REGS - Common set of CXL Component register block base po=
inters
  * @hdm_decoder: CXL 2.0 8.2.5.12 CXL HDM Decoder Capability Structure
- */
-struct cxl_component_regs {
-       CXL_COMPONENT_REGS();
-};
-
-/* See note for 'struct cxl_regs' for the rationale of this organization *=
/
-/*
- * CXL_DEVICE_REGS - Common set of CXL Device register block base pointers
  * @status: CXL 2.0 8.2.8.3 Device Status Registers
  * @mbox: CXL 2.0 8.2.8.4 Mailbox Registers
  * @memdev: CXL 2.0 8.2.8.5 Memory Device Registers
  */
-struct cxl_device_regs {
-       CXL_DEVICE_REGS();
-};
-
-/*
- * Note, the anonymous union organization allows for per
- * register-block-type helper routines, without requiring block-type
- * agnostic code to include the prefix.
- */
 struct cxl_regs {
-       union {
-               struct {
-                       CXL_COMPONENT_REGS();
-               };
-               struct cxl_component_regs component;
-       };
-       union {
-               struct {
-                       CXL_DEVICE_REGS();
-               };
-               struct cxl_device_regs device_regs;
-       };
+       struct_group_typed(cxl_component_regs, component,
+               void __iomem *hdm_decoder;
+       );
+       struct_group_typed(cxl_device_regs, device_regs,
+               void __iomem *status, *mbox, *memdev;
+       );
 };
=20
 struct cxl_reg_map {
diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index cf7f866944f9..84b7de24ffb5 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -49,12 +49,18 @@ enum {
  * @ATTRS: Any struct attributes (normally empty)
  * @MEMBERS: The member declarations for the mirrored structs
  */
-#define struct_group_attr(NAME, ATTRS, MEMBERS) \
+#define struct_group_attr(NAME, ATTRS, MEMBERS...) \
        union { \
                struct { MEMBERS } ATTRS; \
                struct { MEMBERS } ATTRS NAME; \
        }
=20
+#define struct_group_attr_typed(TYPE, NAME, ATTRS, MEMBERS...) \
+       union { \
+               struct { MEMBERS } ATTRS; \
+               struct TYPE { MEMBERS } ATTRS NAME; \
+       }
+
 /**
  * struct_group(NAME, MEMBERS)
  *
@@ -67,7 +73,10 @@ enum {
  * @NAME: The name of the mirrored sub-struct
  * @MEMBERS: The member declarations for the mirrored structs
  */
-#define struct_group(NAME, MEMBERS)    \
+#define struct_group(NAME, MEMBERS...) \
        struct_group_attr(NAME, /* no attrs */, MEMBERS)
=20
+#define struct_group_typed(TYPE, NAME, MEMBERS...) \
+       struct_group_attr_typed(TYPE, NAME, /* no attrs */, MEMBERS)
+
 #endif

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel%40intel.co=
m.
