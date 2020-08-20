Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBCVY7L4QKGQEOBZ3RBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B8024C285
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 17:51:40 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id l195sf1467851pfd.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 08:51:40 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1597938698; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZlcYP2YRXfEntkbHeCQ26w/sejYT4ZPNwAy2rG4p3ikRL2ekLTstI9rvt3r5N31fSM
         WfgDm0hL0pcaE4DSyFSrp2du+mJZdsyz+HFPWnOrciVdsUWDOKMc/tEF31vniA2LnEk1
         KmOm7zpyYXjveF3ncIsn6MzyNakpwff5aX/7orwzpBnbzVyCO9VVgpP1HwE6PxKzfLqU
         v+CPcr7psX8yxofWBHq7gGGtW27eYHl9PhsLRnNw17R0V7wa58T8SVn/EOo9HjOkh6Zg
         3i10Wpz0dfdt2D/Ljo6bD3Ccfnqu3KSOCQjcgHPjYtMUcJIdnxp5XSovSh2bkU7qkXKs
         79Xw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:in-reply-to:user-agent
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=GT6P3W4NSHtTYLwmEWMBiPxG7FGnOcMCPq9CKyCtxM0=;
        b=1ETlI+BISTL1g0R14GXYePNJ6bv6Et24TLLXLqLdu/S1PF286JH8b/hxOBDTbUxU75
         CERJri1azNU5yEEZ96lOWHLYYZHDbFTbc/TCp34ATwilQY5Z8P4vMTAHj/9tIhjUH6Co
         ha62UOu9oQlh5X+FAgdYt8fWSXTUM/Ip+wyaE32VQlutMTUVejjzhdKayHfzmqQjThAU
         agqY3RRlwcgHUrzHxFyQyUgfFdhe5qeB6askgLIBR5u2f/pg5UHq2fweOB3JuZD1hFHW
         B2f5ebtpLMMwuuq5UvNNpCMz6+BJq+XzCTn64EFcsUOlIkODylLw4Vu1Q++a69nYAEVL
         n7Dg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=iW584+hC;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=AtESGWdv;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GT6P3W4NSHtTYLwmEWMBiPxG7FGnOcMCPq9CKyCtxM0=;
        b=Shy2gix2sBdgO+EOdgzY6SBaOAJCHRTREVA11U80f1CO+AI57jp6A4qquGK8QxDOZh
         V+83+VZkZEWaAdXkCA5daD+rM6fIudcgLiDvUjKgLcbJYIfyfG69FLLQoGSFChAD0AtD
         /ClymIiV4eG8o5vPPkzE6tdqu1O7GfX9KjPab6vZWWvUnzCEEQ0i2InyGFFNIsQ9rA5I
         kFpr7uG8arj7NZRQvabS2Mz8RkTBg8TKrbohclUA9BCeSkiUIeQH0AQPFUcw6YnAAzLt
         earUUNuXiNLQ2T6gFAYLJuny/EeR8ROQps+txrs8XXWmfhwl/icG/sfzTquGYN5y7vJQ
         IJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GT6P3W4NSHtTYLwmEWMBiPxG7FGnOcMCPq9CKyCtxM0=;
        b=LnMfRp6GJBkWcoqqQ+do4ZPx9g7PwSVlHBVWBKAldq7WeHW0bbRueZFv5Io40PHVmP
         gkpt4fOzsLyANumM7U+X9PAmL5pGRQLGVlOBHLI035w+hJF4jmpwthWJg07MTYrcm9zm
         iODkyEpcjbPRzi2QvY0Lm6J8/rAuS933U4C1MxWV/ETbnqs0L7aC/e37yKIvfQEBQHSg
         8m9HEDeoudjcsw8y4O9QXQBlwH8eE+Kt98cyJFblcexn2nPxxcP2gwZLBKwZ8eaEcm40
         bGyLTgULc2QINZLrMy/en+nv51aMCdH0aQUUBvkP2iJ19/hM9KcBiqEq6QDLNv8Lrbrm
         tjjw==
X-Gm-Message-State: AOAM532AtabFMPc867XOJ8tZrlphbwH/nKPo56/sMBGxE/9ioiFx7r7R
	PLgk0rwstrEs5jyaT2ZP2f0=
X-Google-Smtp-Source: ABdhPJxurQW4r/5BWBL4TlufVN3v4jSVYXMqDRmblWHafWudEDdnuJuQTGo8jgSk8rwj9wzatxJHOQ==
X-Received: by 2002:a17:90b:1258:: with SMTP id gx24mr2935245pjb.98.1597938698299;
        Thu, 20 Aug 2020 08:51:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d303:: with SMTP id b3ls1420763plc.2.gmail; Thu, 20
 Aug 2020 08:51:38 -0700 (PDT)
X-Received: by 2002:a17:902:d88a:: with SMTP id b10mr3091306plz.117.1597938697886;
        Thu, 20 Aug 2020 08:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597938697; cv=pass;
        d=google.com; s=arc-20160816;
        b=KgrsNr131jXTalWNfU7xLalzb/DTahhsHpPZ9OZ7qi7CMJakIuJzo8G/4S+sS1xB53
         LxTX06I17aPGpdg0lf5O1Mft/RiW4njZQhrL9FiuKss7/vwo4wKWugnQE0po2f9hmDAN
         IIw0u81mncgcUkobUjtxjVne6lNQ3C4+lEebb8BQNd3rqsz4XBbQUoVSDxYgT812l7lH
         3ff6/aYcucv3iMz9JdSJL5O3wkmlgIGX4oKqhJFHKywqRCJHOTZD+I9u2juxTl+yxW9y
         ZAc/DXDYWN7VwZcyB/yqYQJ/4N4pVHi8ACTG4fK7MJpT/6VT4UVQUJtLlilaiUtOOdxT
         IYZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=RXIGmGBzq0cniGsP+T8sXiyur8XpDWLRd5q+UNsQ1DY=;
        b=udMGEfJqHcJZSvPsMZ+HwbGRjpBvHK3z+93U0WUTvipugBknaY+Yk1l7UebbiK13e0
         7g9ko4NE2YhlDaln06HLR1nIs2fphe04B23SSPF1zXvYupTyIb1FTqoq5Da6rsTp79OO
         LywKmKmLrIVKgHb7oZwn7B+PRhU0ZO+5wgRbQupcEwhvGbP1okxSxiC2MSAXnZZ77xPe
         s1ZlCDOUffpQb9mkrkwS/fkUGSWX7OS4A8o5L4MTqxzIZ6/pP5MhdgyYBwEf/2aY6Xaa
         nHI0iZsfe8+yu9x5kWmGjCMnsjEHp2OHAYYM6leRo0zLobNVoPyBVgKwKclx1FfGCBQv
         YI4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=iW584+hC;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=AtESGWdv;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id jx18si124426pjb.1.2020.08.20.08.51.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 08:51:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.42/8.16.0.42) with SMTP id 07KFgR4C002213;
	Thu, 20 Aug 2020 08:51:35 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by m0001303.ppops.net with ESMTP id 3304jjevft-10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 20 Aug 2020 08:51:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 20 Aug 2020 08:51:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MwHyLHeoThsPaR+IKMUP4U+knH1Gb8C3Owff0L1PCATx3b2MXquLvGH3r/w7UDVWYskMscOXBzgYzA/JHNbGoZs7W0WxIus+twH0ACMB8Cn0bNR5OtHY6R00eelp8PCmQEmsZCmr5pnxEUVO5HkkRepgNWqBU4kqHXTgmpW0t5TE5Yftk0X5N008j/ZrCnLm5IVinmi9gQjMr9wjgvr/3NpUtSGDC2SR0AiVwVQbRs+mdxJ8i/RmDZDs5sTs14UDSrQI9ydd5eZ8RQklnR43i/66kzx+U/Yt9Ly4fbGRVi4x9Ng9fnyvCR0yIqXqJSkqNXc4qR7ascMJIwileQ8NXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXIGmGBzq0cniGsP+T8sXiyur8XpDWLRd5q+UNsQ1DY=;
 b=MkHEpP3EwinGgprzME8dXhvXm1xX1pvs8S2J1d+3f5W89eDg6+I+/353IuhCfESPyN1VZeUBa6+2HcDg+8616Mi406pmNdla6DV7jvaPytlvcMdE4aMaTs9j8heVh532fLOQLaa1tUojQYiyydXpCvLS5D2GDOJyODohsBe+lck57nVN83+eIjnuLfi7+EVoR4fl1GTzKin6J3GSmZPbYqslXkCC7kWq9GDiuwMZ8m67OV0VciKI+KizFwdUS2cuDSnRySVpKiMvYLiCYtnIILvW9eSzlnik9/fcGiM84Ylr1QrLSn+VthjZnxJ4J5CqgZ0qYzHzN9SPGPGDNOPjOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BY5PR15MB3667.namprd15.prod.outlook.com (2603:10b6:a03:1f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15; Thu, 20 Aug
 2020 15:51:25 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80%7]) with mapi id 15.20.3305.026; Thu, 20 Aug 2020
 15:51:25 +0000
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong
 alignment
To: Mark Wielaard <mark@klomp.org>,
        =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?=
	<maskray@google.com>,
        Jiri Olsa <jolsa@kernel.org>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        Alexei Starovoitov
	<ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Nick Clifton
	<nickc@redhat.com>,
        Jesper Dangaard Brouer <brouer@redhat.com>,
        Network
 Development <netdev@vger.kernel.org>,
        bpf <bpf@vger.kernel.org>, Martin KaFai
 Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>, Andrii Nakryiko
	<andriin@fb.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh
	<kpsingh@chromium.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>
References: <20200819092342.259004-1-jolsa@kernel.org>
 <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com> <20200819173618.GH177896@krava>
 <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
 <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
 <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
 <5ef90a283aa2f68018763258999fa66cd34cb3bb.camel@klomp.org>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <7029ff8f-77d3-584b-2e7e-388c001cd648@fb.com>
Date: Thu, 20 Aug 2020 08:51:19 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
In-Reply-To: <5ef90a283aa2f68018763258999fa66cd34cb3bb.camel@klomp.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BL0PR0102CA0039.prod.exchangelabs.com
 (2603:10b6:208:25::16) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by BL0PR0102CA0039.prod.exchangelabs.com (2603:10b6:208:25::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend Transport; Thu, 20 Aug 2020 15:51:22 +0000
X-Originating-IP: [2620:10d:c091:480::1:7ec1]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ccc40fdc-a529-478d-31db-08d84520e49d
X-MS-TrafficTypeDiagnostic: BY5PR15MB3667:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BY5PR15MB3667449F2A64063EDDE2D042D35A0@BY5PR15MB3667.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wATdE9ftt66wxkJt95WGAmbpSY63xwUOXHLUAtgUZ9dKZRLzFB64Xeva1MY6yqqV2dY3xbCQxajOZRzdg+rhxaCHbCKXxMrRdc9XGhgFDLjS1nLaB9vfKf9jg2cWhDOF2jKaNqdnEySx3jBQOQi0IggoasKn+pwy6b9G2u17FMeajjHQgDejtL5PGZitaWnomAY6aYUjjj17hUNNhpxIkr1aZMTmeG1jHfjB1dEFx0VAAuimT0QjXEXyfdNO8gqf8IZ3YNXPjiSksT17y4uJTmWv75XQqUq7WllKFRnsKtz1Cqsv0npcMHBUEiXxzAU3vucKpOPM2HTpeSZhqdM48gyLZDqOUYwY8yPTObvfGb38VW2GDeElwQW7HUNGaAEufjdl66uzDsgcTIS2ZGTbxqH9q9OXmzBvBVjkzGiX9W8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(396003)(366004)(346002)(39860400002)(136003)(956004)(2906002)(8676002)(66574015)(52116002)(36756003)(6486002)(478600001)(4326008)(31696002)(66476007)(86362001)(66556008)(8936002)(6666004)(110136005)(186003)(54906003)(7416002)(66946007)(2616005)(16576012)(53546011)(5660300002)(110011004)(316002)(83380400001)(31686004)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: gq6TvculH5/1suEkF6sfSlmH35bZCmVTukO9zQFNp4leXhkMudR8BMAcAxo4HPMaYOapPglHw7DkF9Q2u9bCPE0Tu/255kRAme5T0tOP4mHp0RlZM66lmSm7kihKFk+8/AdniDQ3k902qoNZxrOmWRRKug8V/zqrz8dCcby6OLDcxgbF9Z+kFhb9/Ejij0sRbxGKQM6F9QOSLt3EY4bi3wrrm9R9vTMX9/BSg284vo5+iych8BaaBDfcGp8aSdzQbdy5ETbanF9Bb9hGnKBpJbwo9iubQPvR4epf8kkK/Kuhh/RCTlVTLAoxbFiqHbSiTlOzgUwLLRdDeaRALqkWGE0KnZrDNwanrZRD5vMR8hGP4vIPJXwYOuCbkAOKjhOdVp1MJ+ubhqlMtKres4WyOdoXfG53ZkNs/uoIR5yYHCroVW4UcVivwswKBWLBx1X9/mYIshLF8VJcEMDU3hvEE/HiFZL8AeV+y5XzwguF2nw0SICTwPLpotWWMd0czWiZ45tpAOeDhcEuQBwjx8vJ08zOeda735RdL44ABv+OYKacS1tsbLzQiDE3hQAxfVzOVtdEl31Svcej1iwc0MWFeW/DFnpfgH8slTH2WU5K8Rjpsp9bZ7eNJ5GNfyg5V/Ws3WOsSPn/8vBSiWfARKh8CXcqruWfO7gDDNY/tmAnfLoBV8joKvstIWGtb05JMJ1r
X-MS-Exchange-CrossTenant-Network-Message-Id: ccc40fdc-a529-478d-31db-08d84520e49d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2020 15:51:25.0691
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lyv/9IQOMwRh60+pxg287qrAuUUYWRKGIcXHI2YLT+wH5beTlPm+EueRsHUqoQg2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR15MB3667
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-20_03:2020-08-19,2020-08-20 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 impostorscore=0 bulkscore=0 mlxlogscore=999 phishscore=0 mlxscore=0
 clxscore=1011 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008200128
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=iW584+hC;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=AtESGWdv;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
X-Original-From: Yonghong Song <yhs@fb.com>
Reply-To: Yonghong Song <yhs@fb.com>
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



On 8/20/20 3:18 AM, Mark Wielaard wrote:
> Hi,
>=20
> On Wed, 2020-08-19 at 20:23 -0700, Yonghong Song wrote:
>> On 8/19/20 7:27 PM, F=C4=81ng-ru=C3=AC S=C3=B2ng wrote:
>>>>>>
>>> I think this is resolve_btfids's bug. GNU ld and LLD are innocent.
>>> These .debug_* sections work fine if their sh_addralign is 1.
>>> When the section flag SHF_COMPRESSED is set, the meaningful
>>> alignment
>>> is Elf64_Chdr::ch_addralign, after the header is uncompressed.
>>>
>>> On Wed, Aug 19, 2020 at 2:30 PM Yonghong Song <yhs@fb.com> wrote:
>> Since Fangrui mentioned this is not a ld/lld bug, then changing
>> alighment from 1 to 4 might have some adverse effect for the binary,
>> I guess.
>=20
> The bug isn't about a wrong ch_addralign, which seems to have been set
> correctly. But it is a bug about incorrectly setting the sh_addralign
> of the section. The sh_addralign indicates the alignment of the data in
> the section, which is the Elf32/64_Chdr plus compressed data, not the
> alignment of the uncompressed data. It helps the consumer make sure
> they lay out the data so that the ELF data structures can be read
> through their natural alignment.
>=20
> In practice it often isn't a real issue, because consumers, including
> libelf, will correct the data alignment before usage anyway. But that
> doesn't mean it isn't a bug to set it wrongly.
>=20
>> Do you think we could skip these .debug_* sections somehow in elf
>> parsing in resolve_btfids? resolve_btfids does not need to read
>> these sections. This way, no need to change their alignment either.
>=20
> The issue is that elfutils libelf will not allow writing out the
> section when it notices the sh_addralign field is setup wrongly.

Maybe resolve_btfids can temporarily change sh_addralign to 4/8
before elf manipulation (elf_write) to make libelf happy.
After all elf_write is done, change back to whatever the
original value (1). Does this work?

>=20
> Cheers,
>=20
> Mark
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7029ff8f-77d3-584b-2e7e-388c001cd648%40fb.com.
