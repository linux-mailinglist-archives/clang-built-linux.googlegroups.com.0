Return-Path: <clang-built-linux+bncBAABBN7E6OEAMGQE6BHYTYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B1F3F02EB
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 13:42:48 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id r6-20020a92c506000000b002246015b2a4sf1036811ilg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 04:42:48 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629286967; cv=pass;
        d=google.com; s=arc-20160816;
        b=qiINarZNlbxwLlunku/zpeno+NuHXedMvv+2ZyiWw6kMLZIJN62jCfWqqLx8AJZpSk
         SFVrs3bmJUvUfoW7/4ndP9URGJMKMnKPGc954orj/aDKLn8DgJUPRFzkrlPxyNZLMly2
         uGC3ALd9YTXlnL1FDV+Jr4mkawt3ALtbY02tU2G5ZVpACwsAaNzSWsRI90QTNTAR14pX
         YNizHmVE38sMladlcWFy8RD3l1d20Z9x++5EbQ2MXRB7dgCwdzWhZm5YUvBzNRQg/q7F
         rKcUw0z7EgDwL1wVnS05ZdU64Cq7ogTd7jqjPwMNUHjRmjiP9GuP3ebXJ0Pm5UeNvgN+
         ZM/g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:in-reply-to:user-agent
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=LV0aLipmEQDMvO07sXlFqusHE99IaGzzT7idqjaf6uQ=;
        b=wKQcj7rqR6vA3qAjTJvXP1lyNBEUjosMRew5eU1oES6kTXEoqJAZNasT9vRZrS66T5
         SBSNOC7oesgAnacUeF4X5hUINIKYOKzy07FFULtAIM5XbKb3wRqOWcAo/42dncIi7Tl/
         wbb5NHz3rtO4fSNBMtN3M6GYggh8fEUjBDJUxOLjPB8O+MH/DTHTfg4Y9SN9JqQB0PPx
         F2xYdQP4HD7xGKRqkRw2p/GSi/tQa0ioWI1LRBY3wAjz8zWTjGPintZR1lM2uVz7Q7Pn
         xasRC6TSurPMCX4i3TzJNukCw0AuhbcqTkqaeZF/2cnQflJgdNCYSh5bbQZAHargW54j
         38Og==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=GwehTpH0;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of lijo.lazar@amd.com designates 40.107.236.76 as permitted sender) smtp.mailfrom=Lijo.Lazar@amd.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LV0aLipmEQDMvO07sXlFqusHE99IaGzzT7idqjaf6uQ=;
        b=NDiOQ890Yia7vtc+r59g8PuTM6VeGtG/94/obSy3jhzGeBKznVcoWpL2M7SWvYsjmw
         +P5SjeO/nqaFTn0upZGRc0gr+tbZLJcI5nNFYSG0V/d22CL3jsEu9LjzEm8PIg71R2Xb
         uWG+4Fnpc0YXR+XGJuCLpFk7+VIBuEz5gmG3dGdye1IZRPRbE9SMEGcE2zT/iylqJrVv
         esU9aKpDdA2mqkLnRkXI7o2zdlMOhr4+YMfs23TqxX1YFSr5TrYtm1M9v+41pYj8d99E
         cjCYfRvvwku/84qCGwjI47TvX3LI3sCWIgkqfDzPXq/XihlVoyHHc1Zz5zL2VK7ytPcs
         x4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LV0aLipmEQDMvO07sXlFqusHE99IaGzzT7idqjaf6uQ=;
        b=TNi7fAk/8f/QuTy/tV4UMrRdR5aNII8nA2fiJth7khRyL/X2oZmil4eXuqxiqkPbhi
         ehSSIZFaCK9IGPHANqxD66q5q0dA22E+rcGXz2d2217LWoLo7aM+IfZ8VhHtgzzYx/kg
         tcit/fWtj2tCowNGagha2EJwKwSL0zBccuk3HUo9Yrc/DB0p2ZVT0n1nxP6lWmE6enbk
         kTPzwkwHup3D4v8sK8/MZOyNV175NIxwxorl2qPpPD0e9t+MspKxTt1Uf4z7GWEG5TDG
         WyAz/75hdHi3AkqbtzIdUOFcrSzsKUngKCLnnVgvYiTVlJ4M4pzkNOcbSYRdyBte4sKl
         Ojzg==
X-Gm-Message-State: AOAM530+FTIfl7seuB4Kfm7t/WneQhTxi6MBx9sOlyZPIIeieT9YwOx0
	DAgeseHm/OH6MuA0e4Ejfsg=
X-Google-Smtp-Source: ABdhPJyb41doAa96HIBrnQQlr78LGQfIdU3OkX3wptWJA3ZSZ6vkISrW9MBXmRsDdLDST20uiXPPAQ==
X-Received: by 2002:a6b:8f4e:: with SMTP id r75mr6883834iod.172.1629286967657;
        Wed, 18 Aug 2021 04:42:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c789:: with SMTP id c9ls409200ilk.9.gmail; Wed, 18 Aug
 2021 04:42:47 -0700 (PDT)
X-Received: by 2002:a92:d9c2:: with SMTP id n2mr5666178ilq.214.1629286967294;
        Wed, 18 Aug 2021 04:42:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629286967; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4mKGCcEmCcOFBy0fRB0qzjyd/ZqzPhV78vFmMs2jundFN9aZQPMbjPG3IKMQCZHHl
         iHmY2PMRkgKfevPw4bk8ZFBkcnpSPMp3sxvR5N0Gu07VOPcWoO8LPKqX+1Pv/G6Jqz1I
         xWO3i+JDRVdHWvMTQSKt6kcNIIPgNXKDOFa7d+HMxqTLZD2kZCqalrEGvrZUUiNxABXJ
         ZwATIWidIAH4i4ooC29McS6bw4XJDthuDuSCbcN44svYAIDuJ7S1niGX4gGsjDq61rxe
         nNtemfmt7C1kNZqSHOsn7o3WBvdvMULTqLWy2GOkr1HuFOvxUw1zo8ccORxilz8vjYI8
         OwoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Yxqwy0mxZf9gJtsmhVdOc2Kal1+HmRpbtgnF0fwncoI=;
        b=LOOOyFsdQzerz8603Hsgy6szIllDmRgoL2dN+DrKR/JUiBYgGCP9mWVIGgl1bh9oH2
         DLMSb7pT5TIflx+9n/5uiW3qNAARrIDTUx+2H6E37iPJWRkBYHoFn9PP19JDA7OZWlqh
         0F7psuNKf9v0zaFLYumCGu3/pLY9Dx/7O26vEEXbvKdHd4pjsxkVMqxZjoOMqC2NutEq
         wBTJi0KuFMMdr4TCg8GFoEVK8anPthFUOngUK+KcLPLdbbtyiDDRAXQhKJT4ItgchN4Q
         SI4FEzdr4fS2qoM2KOMAFhFRhG9+OPTXlAtYDqAPZFLCAOoDCGmHkXiqNZWKIyPqsaEQ
         AmKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=GwehTpH0;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of lijo.lazar@amd.com designates 40.107.236.76 as permitted sender) smtp.mailfrom=Lijo.Lazar@amd.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2076.outbound.protection.outlook.com. [40.107.236.76])
        by gmr-mx.google.com with ESMTPS id b12si100712ile.1.2021.08.18.04.42.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 04:42:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lijo.lazar@amd.com designates 40.107.236.76 as permitted sender) client-ip=40.107.236.76;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pcrl3GMOq3hTMr/OKfjOxqvxr55mZ5PovtE4LpMA5WKtZ1K0iNpI+Q4ec82BRzzsGymolPl6hFAY42QR0N93FKnenLu1EAAwfBfeXbYwvgnx0KMUfowKbrCe+hUtb8/tjLAoJCE08VQIv5L+DKsQ1rhsn03gCUcbm3kprI8xv5gqp2kEZTpO0mcXn/Q5LZU+Iw04Rdzk6dNd1C/Gt6xWRed3aNOobPv69Nkp0jeYWLyOJS5tMfrWfg/hn+Z78Orqlp4qXs8WrAOX025hVsniihodEQPqtfTnORrJZu2Zcc1jYugMTVjnZXTzxXb/D2uxW4oI8qaY70X6/uTRltazCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yxqwy0mxZf9gJtsmhVdOc2Kal1+HmRpbtgnF0fwncoI=;
 b=CZsawTHlFV4WIYlijIrzk5kE+DoQQOZtl0dkD+W5mYlWv25dYez0+ch5757zwzTiS3kSlVnSRhX6wdqmJi3or5YGXtfqPc3q9/4jhMsGNkl2EmmuKFhKrk5eouLzgYtgfsSt5FYpirsgDChDixlVjAMlXUlZk7GArD4cr8iX/IOxB10qJOpJHglX0OM5x7dFhdwPNSCGcWJXPoRGok9QKda32Na6KbZ4lxbTgTkW4z1bcGEpR/Hw7Zq9gVmp1ae9f1vAXQCP4XtxZdgVyopJ76Xelu97n2W3P14f6T6APOUFKQRsIUhNFxg7thMVqj0FzDtfo2FGzuq3XmtQfePAXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from BL1PR12MB5349.namprd12.prod.outlook.com (2603:10b6:208:31f::7)
 by BL1PR12MB5303.namprd12.prod.outlook.com (2603:10b6:208:317::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Wed, 18 Aug
 2021 11:42:45 +0000
Received: from BL1PR12MB5349.namprd12.prod.outlook.com
 ([fe80::152:9dd3:45a4:eeb6]) by BL1PR12MB5349.namprd12.prod.outlook.com
 ([fe80::152:9dd3:45a4:eeb6%4]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 11:42:45 +0000
Subject: Re: [PATCH v2 18/63] drm/amd/pm: Use struct_group() for memcpy()
 region
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Hawking Zhang <Hawking.Zhang@amd.com>,
 Feifei Xu <Feifei.Xu@amd.com>, Likun Gao <Likun.Gao@amd.com>,
 Jiawei Gu <Jiawei.Gu@amd.com>, Evan Quan <evan.quan@amd.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Alex Deucher <alexander.deucher@amd.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-19-keescook@chromium.org>
From: "'Lazar, Lijo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <753ef2d1-0f7e-c930-c095-ed86e1518395@amd.com>
Date: Wed, 18 Aug 2021 17:12:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210818060533.3569517-19-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: PN2PR01CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::30) To BL1PR12MB5349.namprd12.prod.outlook.com
 (2603:10b6:208:31f::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.31.157.114] (165.204.158.249) by PN2PR01CA0055.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:22::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Wed, 18 Aug 2021 11:42:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 20c8a3ce-7a62-4306-749f-08d9623d4ba8
X-MS-TrafficTypeDiagnostic: BL1PR12MB5303:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL1PR12MB5303B5A57FF03755B979BCB997FF9@BL1PR12MB5303.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PxZ8IYTdL3vmlXJOvlFK1xxIc34TqyHhqCq5FpdLi0jMGU3vvCOFhTIJgwBjCowsKuYVyKdG1dDvPGBODhP5vzd5lTMvCO6sLmx1KNSMorSZMgY9YnEGDSE0h+0Sd2QJgaMJQtAK8ge5T6jPYJ1bEPYjakbnGxf81IDZHp9y+x3ApSjcnY7f+dNS7cdLz+u1OO89+P86HW0FGbQEWJfvN6gvnum/MwB1otlI7hCJuGYOSqPlKPD/2F/1MoQrf6bcOAVy2S9LHgn01QIYFxN61FMoohQI8B0/eFqEV1To6H56JhKsNq/He6FvSwdW6dzhBI7a+F3KoZcWQ5if0R9Cr7tHNXuzSY/H+DWxmzPuBrnZRryf/6giZ90/qTqx0UyUd0DwtnBtdFw3WxCDndWM/MFeG2Nsr2pbQ/KkauSh2r9lPWV2+6fE9/7MZuYj+5ybz+B9smROTwJNLGqYP/6UrB+wd3C7VSagpcJD5s5OwH2nq7de+dXV9z9HQXQqImhF2PHWEbC6vikEVkpQRZFs50ywD7ydJkr73z34rfvv/KPVJwA5Br3QCaeA/Uu938teE7YUYAKgz6cp5gAzyehOlR2GZITea2VXMfTjgIjrqQ1IloWCW4YlWqVzTpzoNII75s/daVHFxBQeSKS+Je1+78sFnSL/xZYb13RS6HA11o/bakPw6Mhr2TVPjcnOvtwgAFR82p7/Y7IOPWdDb3Ndr5OePKgSxLq1HZMTyNN+Sl9NQb2/o3x1JNCOPUd6uCYTesvl3O0f04GvN9K0KoRUKyynv/b+oKpFzb7jjF8yg+DMGpk9BtJiAmoNhVloodNa
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR12MB5349.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(396003)(346002)(376002)(136003)(31696002)(26005)(86362001)(186003)(30864003)(956004)(31686004)(8936002)(54906003)(8676002)(966005)(83380400001)(36756003)(4326008)(66574015)(66556008)(2906002)(66476007)(2616005)(316002)(53546011)(6666004)(19627235002)(478600001)(66946007)(38100700002)(45080400002)(7416002)(16576012)(5660300002)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?empvU1pjeGRpa0llZVBWOHhlcXY5TUl1KzBCOFFsNUFFM2VhRzVmSEphQkNL?=
 =?utf-8?B?bGR0dHM5TmRTMzZtYjNhbnZqRDZLVUlXQ2VqUTVuM05rWU9UaE9xdjBhTTBG?=
 =?utf-8?B?Wm90UWNiRG9xZTA5SnZTdHBmNFZsZkRlbkRTbnpoSnhmR1ZLbVNPK2o4TlRM?=
 =?utf-8?B?RXh2UmlSMnZoSjZZZjBIZTNIZ3BUTnpQWno4bjd6U0NyRjZhQTVneSs0bHlx?=
 =?utf-8?B?SFFGSk5jUHcrV3B5Mis0aXhmcVJnUXFva2ZWK3M3MTNla3h4ZE5xVzhPUzNW?=
 =?utf-8?B?YjJYbVVQUjc0YUJKY1lMNHRBUVBZMUtpRUg2a2p2SndmSVdwOUtTUFU3QU04?=
 =?utf-8?B?WmJxYlVibW14M1VNWDJYRDlTOG41M2RFTXorUmF6eGtBQWtvSHdJNVVHZTVo?=
 =?utf-8?B?cFgycDNVTUtmaitrUHR5VHAxR1RoZ1pZakp2QXhjMzFWU0YrUHg1U21JMEVT?=
 =?utf-8?B?S0hCRldWdmhPOTdQNU9SWDdPQU1kOVJPbTRZdGR1TDVKUzBXUUNCUkF2MlJ1?=
 =?utf-8?B?UmQ5K055c3R2cGc0UThuTm9sQ1B0ZWQwM3M4N0RBclR3ZDIrV1J0cW0wcDEw?=
 =?utf-8?B?MklQSXZvL2R4Zm13QzJmc0lmRE5wYlBhTHppSmZtdThDNUM5VEExWVU2aytu?=
 =?utf-8?B?NVF3MDV3VEIycDV2WjltRGMxc1FLc3hiZHpoOTc4c1hnbkZ6aWRNS3RxZ1Jx?=
 =?utf-8?B?ZitWQWdSeWF5Y05uWXFpTmd0d0ZTT1NDdUZ1ZWN2UHJJbjU5aW9CcXF6WjBU?=
 =?utf-8?B?ODFJd3dSemF3dDA4RHIyTXdDc1BjcktlVjFtSmZrb01hVjJzbW9Da2xLaGJP?=
 =?utf-8?B?b3JJQ0cra1NUdVhIN0JJNjk1Uk9FL3ppaDRncXpid2ZUMGsyZ2pNTXc1Z3hv?=
 =?utf-8?B?WU5UYSs0djZtald1Rmp0VFNBd0ZGREpSVlA0a1I0ZmJQZnY4MTgzZFNjd0N1?=
 =?utf-8?B?bkdtcWFjdCtPV3BGVkdLYXNqcWxmT3VRUkYvdERGVUw1c1dCVkhJWEt3d1Q0?=
 =?utf-8?B?V1RKYlIrajY4ZlZlaXh0T251U2xtaFVsd1VVY2JxcWxISDJpY0JkSGhIVFcr?=
 =?utf-8?B?V0NUVENrUzk0aThMOUlEWnhsckVtdm9WSVR2Z3JCeTV1dlo0ZWVPRm1GOStr?=
 =?utf-8?B?Um51MWJVYVRnQXh2dktuOFp1dWc4bVdwS3J2cjdUcmpvdHArSkdPWTR6VXRa?=
 =?utf-8?B?dFBHUnVEV1BRQ0JCc3BGK1NXWnhyWm9sSzhmdXNkUGRrVHdVbXNxQjllZ29v?=
 =?utf-8?B?K1JKeFB4SHZLMnQ2dG9ocm5WOUlpOEUyQVk1UDNIaXZFajdzZkl5cXpkaDRL?=
 =?utf-8?B?Zi9QMXFSVnZzc080WnMxY0YySmpHaTBsS0FhSkFjcHV4K1plZWFwWTY0dHJz?=
 =?utf-8?B?Vm5jejlibk45eEp5cU51Z1JkUlpGQVk4L2xTWXVOWjFxZ3BSaXY1d2FkdlI5?=
 =?utf-8?B?emdGeXkwNUhGZUMvS2dpbm9xUmlDM1BrUHR2V3FNdCttT3Q3S0cyeXRMMngx?=
 =?utf-8?B?Yk5mc2l5eFJxVVhCSFpRRCtuQzZtM2k4R3Q4aUpjdGQvWTVtSmwxTVVKdGlM?=
 =?utf-8?B?RE01aDhNNm5QRnNaR0ZRc0IvZFZ3MTl1c2ovTU56U2ljd0FGVXVGSjlubHJ0?=
 =?utf-8?B?SUEzRXNzdC9sU1FtTG5CbEo1VnRBcjAwR09XNHRpVXArTWlDalJxNHFBRnJO?=
 =?utf-8?B?bzNScG9YaFFwZTRMYytwTktEUVNhbzBlcmREbW9sN0NHdDZlMXYvRXNXU3Ft?=
 =?utf-8?Q?p+tQwuXqkFW6+vHb8Davr7ZW5g5CQgK8wI9PCG+?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c8a3ce-7a62-4306-749f-08d9623d4ba8
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5349.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2021 11:42:45.4351
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZdvTAa1eKZCiW8G3E/O728gMhGWSbd6jtNeRQXe9ncQram6LcsAUj/A1dHd+tUQa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5303
X-Original-Sender: lijo.lazar@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amd.com header.s=selector1 header.b=GwehTpH0;       arc=pass (i=1
 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass
 fromdomain=amd.com);       spf=pass (google.com: domain of lijo.lazar@amd.com
 designates 40.107.236.76 as permitted sender) smtp.mailfrom=Lijo.Lazar@amd.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
X-Original-From: "Lazar, Lijo" <lijo.lazar@amd.com>
Reply-To: "Lazar, Lijo" <lijo.lazar@amd.com>
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


On 8/18/2021 11:34 AM, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
>=20
> Use struct_group() in structs:
> 	struct atom_smc_dpm_info_v4_5
> 	struct atom_smc_dpm_info_v4_6
> 	struct atom_smc_dpm_info_v4_7
> 	struct atom_smc_dpm_info_v4_10
> 	PPTable_t
> so the grouped members can be referenced together. This will allow
> memcpy() and sizeof() to more easily reason about sizes, improve
> readability, and avoid future warnings about writing beyond the end of
> the first member.
>=20
> "pahole" shows no size nor member offset changes to any structs.
> "objdump -d" shows no object code changes.
>=20
> Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
> Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Hawking Zhang <Hawking.Zhang@amd.com>
> Cc: Feifei Xu <Feifei.Xu@amd.com>
> Cc: Lijo Lazar <lijo.lazar@amd.com>
> Cc: Likun Gao <Likun.Gao@amd.com>
> Cc: Jiawei Gu <Jiawei.Gu@amd.com>
> Cc: Evan Quan <evan.quan@amd.com>
> Cc: amd-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Acked-by: Alex Deucher <alexander.deucher@amd.com>
> Link: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Flore.kernel.org%2Flkml%2FCADnq5_Npb8uYvd%2BR4UHgf-w8-cQj3JoODjviJR_Y9w9wqJ=
71mQ%40mail.gmail.com&amp;data=3D04%7C01%7Clijo.lazar%40amd.com%7C92b8d2f07=
2f0444b9f8508d9620f6971%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637648=
640625729624%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLC=
JBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DrKh5LUXCRUsorYM3kSpG2tkB%2F=
czwl9I9EBnWBCtbg6Q%3D&amp;reserved=3D0
> ---
>   drivers/gpu/drm/amd/include/atomfirmware.h           |  9 ++++++++-
>   .../gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h    |  3 ++-
>   drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h  |  3 ++-
>   .../gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h   |  3 ++-

Hi Kees,

The headers which define these structs are firmware/VBIOS interfaces and=20
are picked directly from those components. There are difficulties in=20
grouping them to structs at the original source as that involves other=20
component changes.

The driver_if_* files updates are frequent and it is error prone to=20
manually group them each time we pick them for any update. Our usage of=20
memcpy in this way is restricted only to a very few places.

As another option - is it possible to have a helper function/macro like=20
memcpy_fortify() which takes the extra arguments and does the extra=20
compile time checks? We will use the helper whenever we have such kind=20
of usage.

Thanks,
Lijo

>   drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c    |  6 +++---
>   drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c      | 12 ++++++++----
>   drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c   |  6 +++---
>   7 files changed, 28 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/amd/include/atomfirmware.h b/drivers/gpu/drm=
/amd/include/atomfirmware.h
> index 44955458fe38..7bf3edf15410 100644
> --- a/drivers/gpu/drm/amd/include/atomfirmware.h
> +++ b/drivers/gpu/drm/amd/include/atomfirmware.h
> @@ -2081,6 +2081,7 @@ struct atom_smc_dpm_info_v4_5
>   {
>     struct   atom_common_table_header  table_header;
>       // SECTION: BOARD PARAMETERS
> +  struct_group(dpm_info,
>       // I2C Control
>     struct smudpm_i2c_controller_config_v2  I2cControllers[8];
>  =20
> @@ -2159,7 +2160,7 @@ struct atom_smc_dpm_info_v4_5
>     uint32_t MvddRatio; // This is used for MVDD Vid workaround. It has 1=
6 fractional bits (Q16.16)
>    =20
>     uint32_t     BoardReserved[9];
> -
> +  );
>   };
>  =20
>   struct atom_smc_dpm_info_v4_6
> @@ -2168,6 +2169,7 @@ struct atom_smc_dpm_info_v4_6
>     // section: board parameters
>     uint32_t     i2c_padding[3];   // old i2c control are moved to new ar=
ea
>  =20
> +  struct_group(dpm_info,
>     uint16_t     maxvoltagestepgfx; // in mv(q2) max voltage step that sm=
u will request. multiple steps are taken if voltage change exceeds this val=
ue.
>     uint16_t     maxvoltagestepsoc; // in mv(q2) max voltage step that sm=
u will request. multiple steps are taken if voltage change exceeds this val=
ue.
>  =20
> @@ -2246,12 +2248,14 @@ struct atom_smc_dpm_info_v4_6
>  =20
>     // reserved
>     uint32_t   boardreserved[10];
> +  );
>   };
>  =20
>   struct atom_smc_dpm_info_v4_7
>   {
>     struct   atom_common_table_header  table_header;
>       // SECTION: BOARD PARAMETERS
> +  struct_group(dpm_info,
>       // I2C Control
>     struct smudpm_i2c_controller_config_v2  I2cControllers[8];
>  =20
> @@ -2348,6 +2352,7 @@ struct atom_smc_dpm_info_v4_7
>     uint8_t      Padding8_Psi2;
>  =20
>     uint32_t     BoardReserved[5];
> +  );
>   };
>  =20
>   struct smudpm_i2c_controller_config_v3
> @@ -2478,6 +2483,7 @@ struct atom_smc_dpm_info_v4_10
>     struct   atom_common_table_header  table_header;
>  =20
>     // SECTION: BOARD PARAMETERS
> +  struct_group(dpm_info,
>     // Telemetry Settings
>     uint16_t GfxMaxCurrent; // in Amps
>     uint8_t   GfxOffset;     // in Amps
> @@ -2524,6 +2530,7 @@ struct atom_smc_dpm_info_v4_10
>     uint16_t spare5;
>  =20
>     uint32_t reserved[16];
> +  );
>   };
>  =20
>   /*
> diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h b/driv=
ers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> index 43d43d6addc0..8093a98800c3 100644
> --- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> +++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> @@ -643,6 +643,7 @@ typedef struct {
>     // SECTION: BOARD PARAMETERS
>  =20
>     // SVI2 Board Parameters
> +  struct_group(v4_6,
>     uint16_t     MaxVoltageStepGfx; // In mV(Q2) Max voltage step that SM=
U will request. Multiple steps are taken if voltage change exceeds this val=
ue.
>     uint16_t     MaxVoltageStepSoc; // In mV(Q2) Max voltage step that SM=
U will request. Multiple steps are taken if voltage change exceeds this val=
ue.
>  =20
> @@ -728,10 +729,10 @@ typedef struct {
>     uint32_t     BoardVoltageCoeffB;    // decode by /1000
>  =20
>     uint32_t     BoardReserved[7];
> +  );
>  =20
>     // Padding for MMHUB - do not modify this
>     uint32_t     MmHubPadding[8]; // SMU internal use
> -
>   } PPTable_t;
>  =20
>   typedef struct {
> diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h b/driver=
s/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
> index 04752ade1016..0b4e6e907e95 100644
> --- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
> +++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
> @@ -725,6 +725,7 @@ typedef struct {
>     uint32_t     Reserved[8];
>  =20
>     // SECTION: BOARD PARAMETERS
> +  struct_group(v4,
>     // I2C Control
>     I2cControllerConfig_t  I2cControllers[NUM_I2C_CONTROLLERS];
>  =20
> @@ -809,10 +810,10 @@ typedef struct {
>     uint8_t      Padding8_Loadline;
>  =20
>     uint32_t     BoardReserved[8];
> +  );
>  =20
>     // Padding for MMHUB - do not modify this
>     uint32_t     MmHubPadding[8]; // SMU internal use
> -
>   } PPTable_t;
>  =20
>   typedef struct {
> diff --git a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h b/dri=
vers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
> index a017983ff1fa..5056d3728da8 100644
> --- a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
> +++ b/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
> @@ -390,6 +390,7 @@ typedef struct {
>     uint32_t spare3[14];
>  =20
>     // SECTION: BOARD PARAMETERS
> +  struct_group(v4_10,
>     // Telemetry Settings
>     uint16_t GfxMaxCurrent; // in Amps
>     int8_t   GfxOffset;     // in Amps
> @@ -444,7 +445,7 @@ typedef struct {
>  =20
>     //reserved
>     uint32_t reserved[14];
> -
> +  );
>   } PPTable_t;
>  =20
>   typedef struct {
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c b/drivers/=
gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
> index 8ab58781ae13..341adf209240 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
> @@ -463,11 +463,11 @@ static int arcturus_append_powerplay_table(struct s=
mu_context *smu)
>   			smc_dpm_table->table_header.format_revision,
>   			smc_dpm_table->table_header.content_revision);
>  =20
> +	BUILD_BUG_ON(sizeof(smc_pptable->v4_6) !=3D sizeof(smc_dpm_table->dpm_i=
nfo));
>   	if ((smc_dpm_table->table_header.format_revision =3D=3D 4) &&
>   	    (smc_dpm_table->table_header.content_revision =3D=3D 6))
> -		memcpy(&smc_pptable->MaxVoltageStepGfx,
> -		       &smc_dpm_table->maxvoltagestepgfx,
> -		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_6=
, maxvoltagestepgfx));
> +		memcpy(&smc_pptable->v4_6, &smc_dpm_table->dpm_info,
> +		       sizeof(smc_dpm_table->dpm_info));
>  =20
>   	return 0;
>   }
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c b/drivers/gp=
u/drm/amd/pm/swsmu/smu11/navi10_ppt.c
> index 2e5d3669652b..e8b6e25a7815 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
> @@ -431,16 +431,20 @@ static int navi10_append_powerplay_table(struct smu=
_context *smu)
>  =20
>   	switch (smc_dpm_table->table_header.content_revision) {
>   	case 5: /* nv10 and nv14 */
> -		memcpy(smc_pptable->I2cControllers, smc_dpm_table->I2cControllers,
> -			sizeof(*smc_dpm_table) - sizeof(smc_dpm_table->table_header));
> +		BUILD_BUG_ON(sizeof(smc_pptable->v4) !=3D
> +			     sizeof(smc_dpm_table->dpm_info));
> +		memcpy(&smc_pptable->v4, &smc_dpm_table->dpm_info,
> +		       sizeof(smc_dpm_table->dpm_info));
>   		break;
>   	case 7: /* nv12 */
>   		ret =3D amdgpu_atombios_get_data_table(adev, index, NULL, NULL, NULL,
>   					      (uint8_t **)&smc_dpm_table_v4_7);
>   		if (ret)
>   			return ret;
> -		memcpy(smc_pptable->I2cControllers, smc_dpm_table_v4_7->I2cControllers=
,
> -			sizeof(*smc_dpm_table_v4_7) - sizeof(smc_dpm_table_v4_7->table_header=
));
> +		BUILD_BUG_ON(sizeof(smc_pptable->v4) !=3D
> +			     sizeof(smc_dpm_table_v4_7->dpm_info));
> +		memcpy(&smc_pptable->v4, &smc_dpm_table_v4_7->dpm_info,
> +		       sizeof(smc_dpm_table_v4_7->dpm_info));
>   		break;
>   	default:
>   		dev_err(smu->adev->dev, "smc_dpm_info with unsupported content revisi=
on %d!\n",
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c b/drivers=
/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
> index c8eefacfdd37..492ba37bc514 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
> @@ -407,11 +407,11 @@ static int aldebaran_append_powerplay_table(struct =
smu_context *smu)
>   			smc_dpm_table->table_header.format_revision,
>   			smc_dpm_table->table_header.content_revision);
>  =20
> +	BUILD_BUG_ON(sizeof(smc_pptable->v4_10) !=3D sizeof(smc_dpm_table->dpm_=
info));
>   	if ((smc_dpm_table->table_header.format_revision =3D=3D 4) &&
>   	    (smc_dpm_table->table_header.content_revision =3D=3D 10))
> -		memcpy(&smc_pptable->GfxMaxCurrent,
> -		       &smc_dpm_table->GfxMaxCurrent,
> -		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_1=
0, GfxMaxCurrent));
> +		memcpy(&smc_pptable->v4_10, &smc_dpm_table->dpm_info,
> +		       sizeof(smc_dpm_table->dpm_info));
>   	return 0;
>   }
>  =20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/753ef2d1-0f7e-c930-c095-ed86e1518395%40amd.com.
