Return-Path: <clang-built-linux+bncBDX4F3XH2MMRBMFLXL7AKGQENLPVFYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D80262D1B3F
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 21:50:57 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id x26sf10638860pfo.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 12:50:57 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607374256; cv=pass;
        d=google.com; s=arc-20160816;
        b=LvdAdkoLC8z3t6zZm4dabLjjWWMHSKOL5+Y248cM16x7zAM0axw2ZKUP5PJ5yFfvli
         b1s0gBicHeo/nodTo7WG/MwHcsFUwH6jyhE7hPeENZKhcogXlDGyC46aRUb/y9uxv0fK
         Ji1DyITiry0uoTjM7bC5WaonSltK9S4aV+qE5nF3vW8wnT8jG5DNBu9+L8RDOxsJqbwf
         JvGafUiplif8PTZvJvIiR8SUonIjnvDNw4T79i//Yq1xJHECvlDXc/zNsMvso1yRDpo+
         HfKGZ4xoRolgoz34YG7UCwiN+iJdoWfsOzKSF8rgyA6MoajzlT3C0QdzT5U35aTXPm5j
         Yn6w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :content-transfer-encoding:in-reply-to:user-agent:date:message-id
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=fE/1Myxo0Gieuj/uDI9OiyZG9fsg1yCzHYJIVaT9idQ=;
        b=H9UhdtGA3KJh9SUxc8vEgTHEYXg9L3kx19ighXV/xsdGCgKmO1H49Bl88i9uc0Xf7S
         GPwW+Kl/+W2ncR0RhlZsaJdVmhInrk0PJCG1vu7VeRupnK3otrVziing9I50OTYO3Jqd
         ZGqzCQxHvVypS3Cl22WkYmjEfEN3gEB0jiVJtvf20wi1ppRTPX+1kmqMJeGeYldPfro6
         Zwqqlar7TvHyMyOrOOG6CX/rAeASulcMVer4jfnbPBgtDblP9g6I9jhGnxDTzwKnNdkm
         fAQ4FrSxsTIK1yijqBmkzu6okNPvN1k91WDqxl4aTnCbYIn7RL7yxWfdjMUD9e9jQxIQ
         hB4Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=Sq0oit98;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of christian.koenig@amd.com designates 40.107.223.72 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fE/1Myxo0Gieuj/uDI9OiyZG9fsg1yCzHYJIVaT9idQ=;
        b=SIaoY3/yQlnNSEYiD9lwrkzkOEWFg/ZQD0QcDj+NiU8k3eV7fxdtpScO//Dqn/BtsZ
         GgF1QaEB64v6eFneB7NV5H0K2Ctv6StFpX3IotOS5mpwJ2DEK6VL+Hz4PrCSqhncLkfI
         RPev78xJUuQUtPpC9IKkxMR7w0ngDRBhxGWvP3q1T6m9fbzfH6LxBXa2JYi+ScP8qqlK
         S43g2j6Shr+yJpVZ7gtfd8E+/DwqKXrgi8yVeHaZhy7jOUFMq5F++CoTvZ4skhTOTGcY
         530C7sMcjb7K9p2wENg5V8B1Cblh69W6SgVYwB54ANoUXt7yL1Enxms+WmqpAAHcfR4+
         9JuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fE/1Myxo0Gieuj/uDI9OiyZG9fsg1yCzHYJIVaT9idQ=;
        b=OTTQjX7XSpoT+xydRoWykZ8dQ+WZi0Sl3AkJ2fGC8b/j3BuaEX/pVhaqNJaCcBBjNQ
         J9vWW918UpeqZbane1KlfQjlgzhSm5HWaGAfD4BYf/ioDN+3btetUiSB27RQG9/9X+GI
         yj0rWxpOM0Ii8e22W7eSAng3f7vynUIQdnyXw8fAzky/3WWXcTcMC2M9mz7YlNaQfYqx
         us9g2mP76i72FN0AIkAR/flefGwbploubkijsHRh47lISsfwiLbxxXNfI67srCmk2b5x
         XSZ3h4GWylMN6QTQFDA9XIqbqL/kesMijQiPVNmD0+lZuW/0sNMfpGzU9B18KpPd2We5
         g9QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iTEXxmRrZDfen83FAVW0+4o538v8Ma+MndkLZQmeKGEamc5Cs
	KKlOL/BY8jlE5zuRa1VCW2k=
X-Google-Smtp-Source: ABdhPJwun0BBWiTMJ7g7ljxqdeJuJTaaE/kXd+vmzFbu2F3ruD5M6OQ4QCcIz/TBo3qsV72K9Nbt5g==
X-Received: by 2002:a17:902:7144:b029:da:7268:d730 with SMTP id u4-20020a1709027144b02900da7268d730mr17831572plm.20.1607374256355;
        Mon, 07 Dec 2020 12:50:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls5358569pfb.8.gmail; Mon, 07
 Dec 2020 12:50:55 -0800 (PST)
X-Received: by 2002:a05:6a00:882:b029:19c:5287:4a1e with SMTP id q2-20020a056a000882b029019c52874a1emr17552633pfj.44.1607374255636;
        Mon, 07 Dec 2020 12:50:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607374255; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGyQlLyAKoRy5fgkY1SdiVZB+eRtbA99YJ4LilsaUR5vL48oSeKJrGThGVsmLhSfit
         HWNhFEdSIb8vohs73CWblbPF1UuZ2MJSga52JQX5ORlsixiilXDBxcdcyyRmH8+qwIkI
         8KenOXGzib+a5vRU964dvzh6Kgh/lN6IQuHZts9ni7dJujolaofF25b2bMsG0fsdLetp
         jd3LdiCkHYFdxvN1cpuwdGbBMzxcHKFybcv7ETk78wMYTdETWqSb/sQZFsKj5E+DD4AN
         3m6vD0Iy+JwgaIOqzkFi3CpFXk5z3pott7auE/iDlVuywYa+fgVIHHVVZ9uIqT16qha4
         jDVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fjx/MIoaiG8Yt+cof0s3jmnXd2XcKaDshZxVg5+irn0=;
        b=BFanLxeKPbya/UQTaN39ocFu3H9AS6jubh5JNoeLgpRsvI0SA37wjnzVyBtB2DLOUb
         qQuGJ5Y3VaBfopkkDaBplonTAvaG+hjbqvRaymszp2byjMln2hYPMG3Pkzgp4mCKAoz3
         gf/5BIkk42eYKLJlaIZxtSPfVSfztcQ0AzMtvIVytPfbEuw6QipJcxl2IiMNpG5cJnan
         CCfKaZTTiVZMJHwnBBHYBz0hFtzQCBja+XhmEk92+0bJoSSEUrPL/MPXia6Rrr6HcXgD
         HJAEqSKL9sDhgzffNEqpXIitwfLtWhZEH1HJezmPkHMD6dcj92ocNkdxSagHMQeKgcuf
         C9zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=Sq0oit98;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of christian.koenig@amd.com designates 40.107.223.72 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2072.outbound.protection.outlook.com. [40.107.223.72])
        by gmr-mx.google.com with ESMTPS id e19si995960pgv.4.2020.12.07.12.50.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 12:50:55 -0800 (PST)
Received-SPF: pass (google.com: domain of christian.koenig@amd.com designates 40.107.223.72 as permitted sender) client-ip=40.107.223.72;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GoztSgcPf3QkkvIqraZgZ9cydD+6AcCTPLq+OPM2iO4JCImz10VgCM5AqWJEBGj7UFsPMQ9Ho2Q3CkWv91tqOmy7UHK7+0v1m/9EJ3oJitMtr9gf/6wOgewevMIZ9fjlPW5OPJNXx4/QcdKBXWLLsbwu3ggOPM+FGq6pmu6sFYOgrkyyQUiFzvmES+ynXKICOe/q+8SbBYyhOL3WCtTh33GR0MmWkYntTEaHL9n5AP3/Ilf3ix0PyZomsQXKsvw6+rdCAfl4AA5PIO9hkVQxGBF7/brlUKikY1hFIHuZEhbi2uiXUeuctLs6rSJsec0aGvJrdYkNyjBMwO/FYeliMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fjx/MIoaiG8Yt+cof0s3jmnXd2XcKaDshZxVg5+irn0=;
 b=Qd3qt5pjQI0V3sQz6Xw9KQu7825g/Y74GbdALBsDXHiav+GKEDY6s7EoPrI/wJEL+/HNlosIEjN1L6RviIneh8qiwfpYVJMEjra0Jfr53SY4CQpCOkmX2S0AmcKuZI1CdhdLu791neZ9bBa8SSC70eGCli94H/XrT0+TDrrfgYl84hSL7Hgk+E5aeLpRLK/+dM+rKwVyySJbnScoEoUhWKHS3xDK0hBwPmu7d3Q3gOKdq8w6MSTc58Qgej949Vk34H/SJvIj2G9jR4u1tPtxPFFD9BUUeh5cLXmTF61piCp50fJ8chOti0wNdCdiiG1UPLUbMqWXIkJojWCkuSoyxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4690.namprd12.prod.outlook.com (2603:10b6:208:8e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Mon, 7 Dec
 2020 20:50:48 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::44f:9f01:ece7:f0e5]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::44f:9f01:ece7:f0e5%3]) with mapi id 15.20.3632.021; Mon, 7 Dec 2020
 20:50:48 +0000
Subject: Re: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
To: Alex Deucher <alexdeucher@gmail.com>, Arnd Bergmann <arnd@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Mauro Rossi <issor.oruam@gmail.com>, Randy Dunlap <rdunlap@infradead.org>,
 Roman Li <Roman.Li@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Daniel Kolesa <daniel@octaforge.org>,
 Timothy Pearson <tpearson@raptorengineering.com>
References: <20201204081349.1182302-1-arnd@kernel.org>
 <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com>
Date: Mon, 7 Dec 2020 21:50:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM3PR07CA0064.eurprd07.prod.outlook.com
 (2603:10a6:207:4::22) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7] (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by AM3PR07CA0064.eurprd07.prod.outlook.com (2603:10a6:207:4::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.8 via Frontend Transport; Mon, 7 Dec 2020 20:50:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 810267c6-ce82-48f1-0c3c-08d89af1c69f
X-MS-TrafficTypeDiagnostic: BL0PR12MB4690:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB4690886153E83497B5A1685983CE0@BL0PR12MB4690.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RXb95/eKC6EPkszjv3pTXmb4+tBk7IQ2bDClx86DFpANPj/goU2znlIzZRAp1TSO/RLxKC0/PTf20Ij7NZuwbA4nGsPI+CEqH4etTpV3zTwkUxyJHCr6h2/TxZQuFOnxjsALSFT8HA2DkzB02W5u8wFLs/DIeIIJeGQY36CgqSlr2JSBzcpI/jo22X2jEwvkVRkIy2LuYZPsI0CYt95rt+5bn4MnfOWsJlHDppg3MmoynxqLrkl0mh26yUHcPTmCIbl8bh6B2YN0Zyt05TaFeE8x0PuHHxcfs2O7m0pvgwmYhbKbPcAAYEUgd6Nxnbz/JVe7mQJyOFvMQ7uJyJis2DrEKdFke+gKympr0hPzQ4mSB/19KwIT7CU8R1v4SB/LH8UP7Rg4DTrq0q4UPgZmNqjTECSYVGVp3dRHk238uLzUpd9+8kWiu9y3k8+jouyKL/UcLm6W1rspWNLuopqo/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3775.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(376002)(39860400002)(366004)(346002)(2906002)(31686004)(478600001)(110136005)(316002)(16526019)(36756003)(52116002)(54906003)(7416002)(8936002)(2616005)(4326008)(186003)(53546011)(5660300002)(6486002)(8676002)(86362001)(83380400001)(45080400002)(31696002)(66476007)(6666004)(66946007)(66556008)(966005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Z1pJeEt3cnVPdEV2TFpRTXFpc2NOL0tYN2t3RVlVUkNRSWRpeHNVNFdBSDds?=
 =?utf-8?B?RHdqZmFhZUF1eERrdHJEWFhXMWNqZU02Y25qNjFsOENBN1NiZEw5K0s0S08r?=
 =?utf-8?B?alRFQjBEZFlJL25GSFZocngwZkwzNy9McDFnWVFrajY5V0pRemtwZE9ISWhM?=
 =?utf-8?B?WXBnK1huQlgyYjdnT0hHUDhaWXd0ZEFMOTYvMUhpWkVZanFzSkMxbkhWM1Bh?=
 =?utf-8?B?aitMUWtQNSs0R2lvS1VkQWpiUHA1NXByRkMvRUpyMkYyTnpEZ3pCTUpkVndo?=
 =?utf-8?B?NDZydzdvcVRJaGsyMTB1OHJic1VhanRTdkx3RWxFMU1CRXNjVUR2MnZ6OGdW?=
 =?utf-8?B?a1o3QXRsMmN2ZlZTODBRNW1JTzQ4dmxkQmcwVlgyZDVGREZIZWtObkRuZTJj?=
 =?utf-8?B?YVlwZlAxalhYUWVWNEkvQ1FMLzJvSElQYVZ6RkU0YWFRL1Y0disxQ2ZOOFZL?=
 =?utf-8?B?VTl2T2pKRGtTaGJEdHR6L3JHZFRacW45amR2UDFDVmtSZEp0d3hGTENNVjZM?=
 =?utf-8?B?Wkh3dEt0a1pGakl4WFd0d3lsMjZoSHhsTkNiMEJHSjJXbDRJaGdubjc0NUhB?=
 =?utf-8?B?RnEvQUliM1FzZ3EzVjNKVmYvWWJjTnJWR3ZPQXpOTWVZaFVrTktlWC9KSDV6?=
 =?utf-8?B?TzVETWNHTjZyanRKSnY2ZWlPTGI1UXZhdGUwOFQvSWRvbVM2RWZuKzk5NUNP?=
 =?utf-8?B?ZnlVaExVT21pUG15c21XT1hwWURkaFFYRUNxZ3BIZFFPMmZqWkpPOThralYv?=
 =?utf-8?B?aERzU2JIazBRWU9aZU85bHRLYjdpN3dRWVNlSW9IVThtelZlMk94SllJNmx0?=
 =?utf-8?B?cWdWMGo1c0RxeGc0R2d5Y3cyYi9wYk5IWmVFNTljek5xb1JHOVZGcyswa0Rz?=
 =?utf-8?B?MXExazUwL0IyV1NqVllPQWVxVTlOcVYzcmptdWcxUGl0YUthdGxveWNBRmhq?=
 =?utf-8?B?STlRdklHbU5mTXQwcEZZODUvS2dnWUsxM3dQdHd5WjlHS2cxWTBEcElpNE9a?=
 =?utf-8?B?UGpLbUtxQ2gwR3ZlWDhWV25mWE90bkZCT3VJbjFGVklmUlRQUGhYQVdVbXVR?=
 =?utf-8?B?R3U3OW5pMXdnS0xrZWt6byt6MHBlQkNxSUZVWjRid3I5VGVVRExJSjlZZ09x?=
 =?utf-8?B?dE1wWEg0VnVkK1lCaU5jVzRoZDVITVVVTnNXZFdNWUZ0YUsxbEZhSkhYVjhx?=
 =?utf-8?B?OWtrVmlOc0ZVWkorSjB0L3RLQ3lJbWhMeno0dHZ0STA3QVNWb1BaTHpPL3RK?=
 =?utf-8?B?bld5dERoWDdVYUdJSWNDQzg4TWdzRWtacjlTMjlYbE9yamNIZ3A4eE51RFRY?=
 =?utf-8?B?WkFudnF1VXN2Skgxb3pRYnJRN0hTWURGdU93Tk9rNmJGcGFRc0lDb0hsTEhm?=
 =?utf-8?B?Z1RPb2pzcHkyclNFaCtDWVpGbFplU1FXYUg4VlpONVhkc1ZZdjFhWnpudEx0?=
 =?utf-8?Q?jLVN/1Zt?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2020 20:50:48.1743
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-Network-Message-Id: 810267c6-ce82-48f1-0c3c-08d89af1c69f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tWHZuWwC+2GN7WTRj3aHnOUAziHwcwk3SRgOWbGP/TimkZT9ck2HgxJIXBv+tp5u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4690
X-Original-Sender: christian.koenig@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=Sq0oit98;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=pass (google.com:
 domain of christian.koenig@amd.com designates 40.107.223.72 as permitted
 sender) smtp.mailfrom=Christian.Koenig@amd.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=amd.com
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

Am 07.12.20 um 21:47 schrieb Alex Deucher:
> On Fri, Dec 4, 2020 at 3:13 AM Arnd Bergmann <arnd@kernel.org> wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>>
>> As the DRM_AMD_DC_DCN3_0 code was x86-only and fails to build on
>> arm64, merging it into DRM_AMD_DC means that the top-level symbol
>> is now x86-only as well.
>>
>> Compilation fails on arm64 with clang-12 with
>>
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c=
:3641:6: error: stack frame size of 2416 bytes in function 'dml30_ModeSuppo=
rtAndSystemConfigurationFull' [-Werror,-Wframe-larger-than=3D]
>> void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib=
 *mode_lib)
>>
>> I tried to see if the stack usage can be reduced, but this is code
>> that is described as "This file is gcc-parsable HW gospel, coming
>> straight from HW engineers." and is written in a way that is inherently
>> nonportable and not meant to be understood by humans.
>>
>> There are probably no non-x86 users of this code, so simplify
>> the dependency list accordingly.
> + Daniel, Timothy
>
> Others contributed code to enable this on PPC64 and ARM64.
> Unfortunately, we don't have these platforms to test with within AMD.
> Does PPC64 have the same stack limitations as ARM64?  Harry, Leo, can
> you take a look at fixing the stack usage?

This reminds me that I wanted to reply on this.

2416 is even to much on x86 if you add -Werror :)

So this needs to be fixed anyway.

Christian.

>
> Thanks,
>
> Alex
>
>> Fixes: 20f2ffe50472 ("drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONF=
IG_DRM_AMD_DC_DCN (v3)")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>>   drivers/gpu/drm/amd/display/Kconfig | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/amd/display/Kconfig b/drivers/gpu/drm/amd/d=
isplay/Kconfig
>> index 797b5d4b43e5..54aa50d4deba 100644
>> --- a/drivers/gpu/drm/amd/display/Kconfig
>> +++ b/drivers/gpu/drm/amd/display/Kconfig
>> @@ -6,7 +6,7 @@ config DRM_AMD_DC
>>          bool "AMD DC - Enable new display engine"
>>          default y
>>          select SND_HDA_COMPONENT if SND_HDA_CORE
>> -       select DRM_AMD_DC_DCN if (X86 || PPC64 || (ARM64 && KERNEL_MODE_=
NEON)) && !(KCOV_INSTRUMENT_ALL && KCOV_ENABLE_COMPARISONS)
>> +       select DRM_AMD_DC_DCN if X86 && !(KCOV_INSTRUMENT_ALL && KCOV_EN=
ABLE_COMPARISONS)
>>          help
>>            Choose this option if you want to use the new display engine
>>            support for AMDGPU. This adds required support for Vega and
>> --
>> 2.27.0
>>
>> _______________________________________________
>> amd-gfx mailing list
>> amd-gfx@lists.freedesktop.org
>> https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist=
s.freedesktop.org%2Fmailman%2Flistinfo%2Famd-gfx&amp;data=3D04%7C01%7Cchris=
tian.koenig%40amd.com%7Cba72f82a98a4443b0dd108d89af15c1e%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C1%7C637429708726258711%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sd=
ata=3DEU1LuB3uxSCrtAw%2BgwD%2FFWsYpZMp1FbffZvkerQ7WVs%3D&amp;reserved=3D0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b9d7e33c-4dcd-0075-d0ca-d22b2488c354%40amd.com.
