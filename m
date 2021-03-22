Return-Path: <clang-built-linux+bncBDX4F3XH2MMRB2UM4KBAMGQEITLHYHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A6434404D
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 12:58:35 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id g6sf25325340pfo.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 04:58:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616414314; cv=pass;
        d=google.com; s=arc-20160816;
        b=qI5XIdLrnO3Sp0k/c+/V6mvwqwJG4dn3MoNoJqC4FFaGClpNTsghhkW2owKSXy/Zsq
         OUbzU8hYSRbiVr4Z4DX2ZSMzIOq5zA8HWIXq/SfveAabYXmHXaDNy89xkCLLocULRh0D
         mgy1EwTPR8FtHJSku5RWd3rtEj4ikPi7Ej2N5irNwp2ay7dCEhPvTFj9Uq+tsQOhEJ6p
         qpanTSQ/QDHDqBYrz9Io3Z/9gTMjYAYY7xoaghE7QNJCq2AFySgen3y1E25doouLNQUW
         EKJn5GcXkB87kCfhrVs/5G1AMWWp8qxMEYMaGVr/4F4IEV5gpE4Q/Cvk00AaGLn8jAPH
         mFCg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :content-transfer-encoding:in-reply-to:user-agent:date:message-id
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=3CDnqvyZrFd3aI0DADQywLiYCtNx5k3IVoBiTyQ2ZNs=;
        b=ir6ee+47qKVF9RPvtF5pGggMrgpfUVS+C11m4VAHMnVqy/THRS8SYz7GnVrKnQY/WF
         AQec/Tk7CAK+hgLvWvV2s5QKn/9rEeFQAw/RhMDjPFbarhIqyZqFshakreN4kgHvFmXE
         TSMxWTrcsgRY+4MqxUbG0seJ5BAkcuDixoBA0UhInI+ei5s+5iZ5Ojwmpnhd5+4WXS1M
         Sq42IKJYg7vh6Bb53fl8/8OhvPR1SjF8sXpcHQ5URSDRuOpGaJ0E9sTjh9K6i/ZZzKhn
         s3XzU96LqNw/t8oubhdX4RVoo/1Q5PPwTWfKydTtIPFwt0JxCfJhDLqGG3i3lLf/JmCR
         taPw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=ff1sdGzy;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of christian.koenig@amd.com designates 40.107.220.80 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3CDnqvyZrFd3aI0DADQywLiYCtNx5k3IVoBiTyQ2ZNs=;
        b=WKyBzbLKTZ9X9pK/nKskMN3w8cYSuDYWcKqpyYl2rcIrav7DtGNDi+lZOGXi8i1iER
         VqMAsiOhMcaVqGXgn7AFLjfJAQKynG8JRH8vodYOIeyKgiBhCM+PpmDQ2z1OOT2lWFFo
         fd8bMiSbQcOHUHMz2hdU2dvqqGbUvPZxDqAzkTQK78n5irHvj1jX6Bv9fOZZhd2WTU8G
         7irgnH/Oh8M48nendd+VWGBhEnPhNtXvkQgO07+wt9IsX0YIxox8Iw0hngoyWPSH6KEB
         9RLp/pb1JG0JrqnpPFCC5ChH+e0g3NG4nec/7sa0jgLmmbnbyZQy89jAEwlvCg18zodW
         iwhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3CDnqvyZrFd3aI0DADQywLiYCtNx5k3IVoBiTyQ2ZNs=;
        b=bqMBsoo2lHBLL6x5slhXIaDhNwP25ChTpdpgjhQUBoF0NUvAgBzDCnAhEcS1IRv5aY
         98NuCmgBVWtLd5VfG5NkUFFrDzBtvnDHdfb4c4pbgdmFX2w9zothr1yoZyGPY/R76U64
         cViyG9HT/+B8rRb3MYMiXBzyGSvhM2vHbl3lCFNwnTK5P77c3FRuRgvs4Pn9jOoXGWAW
         +mrEhU8lKt9EQ6ch/vW1GdLCbdf3G6EQ89aZL7U+untnRPp6zlK5HThJT1iLnsnGq0TC
         /AEDIZa8l4W5WFt3UT605yFvHE4Clib8CjpIcd50oMKnDg0YlneZ++OwVBTaeY4DlkZY
         k6WQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530auk1icP7fY+pKlooEVHlgOXeW5nlsAh9D/HbFkiWKEhc31lp5
	3PSw+9QMDBmYwslwV+q/nBk=
X-Google-Smtp-Source: ABdhPJyu/hCELLo4VjM1rav8qOrYRqPlWotzdQQRm1pA0AdFTD9iz99NaWJ6JjLDFBPYf+pJm8xGjw==
X-Received: by 2002:a17:902:e74f:b029:e5:fedb:92b9 with SMTP id p15-20020a170902e74fb02900e5fedb92b9mr26438415plf.67.1616414314278;
        Mon, 22 Mar 2021 04:58:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed11:: with SMTP id b17ls6565243pld.10.gmail; Mon,
 22 Mar 2021 04:58:33 -0700 (PDT)
X-Received: by 2002:a17:90a:70c2:: with SMTP id a2mr12720044pjm.63.1616414313727;
        Mon, 22 Mar 2021 04:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616414313; cv=pass;
        d=google.com; s=arc-20160816;
        b=trtJwFxhzN5/GyHTVyVbDYLW2aXe7wsJCt8pG9dMHbdzmg+gCqRRL1LgItVPNylN42
         zpKgrUuHWcM39uV3hy7ciFplfNXwIiP5arZy3VEqksFCpMslia+ML/pGWiHSp6uTOEry
         /f8yoNspIJ6IleE5WAVrLgOS6EsLTsFpaY+H2LqpPMHm2wk+KCJlpy7arCcfjUJ9HmWO
         DVqu9j1tq3LQfaB/LJVUQU2bIzYCaaK0Ej6zDp1bXLO6MO7Jq1aBVwwxk6Aj6bbA8cgx
         CDLDu795EsLpM0oa4e1z+HCoinTUUHrzrbqb2IQMyAg+hhKv/AS9nxMYXekwdc/ooNMP
         7jng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=G883sjOj/bQ3RfhdFZ36x4y/IjNHJyP87/9oaQyXzfM=;
        b=bgraGkWiRYMaNIViq/VF2BTVtd58Lbh2Ttru0gVa5zk8jVitNLAs5U8DPg8X5FTTy1
         lvqwlYeSZTK23AribelDu//vwmQ+QT0P6eWjY7FMOuLkaWITs8QCg+5anpFVjypq5Uyq
         UU74XsdwUdm7ImjA3R2anVDkQmD1W1xm+Wig/oNeXXom5kxX87jardT4ZCpuf0A5Rn84
         gDpi7FYrqLK/Gr2l7YByiRtjvcMhDfCFLgyzFef297Ft17WJA+Pk+8s52r2O76EiqcKf
         /ZOhTKsK3INzoNy0YHo00YNl1peAHrlGqMkMkKEROZmOCmXMhjI+02FUXq/XAFFGdXZt
         sQUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=ff1sdGzy;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of christian.koenig@amd.com designates 40.107.220.80 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2080.outbound.protection.outlook.com. [40.107.220.80])
        by gmr-mx.google.com with ESMTPS id t5si819020pgv.4.2021.03.22.04.58.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 04:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of christian.koenig@amd.com designates 40.107.220.80 as permitted sender) client-ip=40.107.220.80;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eLwj3SJdbQ8ImIxdXeAhYwh2Qe59UqFEElmkRZGuKiGnQsEUb9xuUU8vL6bPdoNLm37uZN4MnCnJNvYQZr/wVEGHNOnzrf5NR+2yHHrRJ9vzabWL73sLdn5iVZ+gX5u4KPnLvYqKYs3gHr7ozyaIXetuSunnq5Yf6Hya8wmWGvsj5GDoMOeqcnUie7u8nqnK5YrZDbMnCi4JApwm1T60axsrybH2WpHZffXIhfjll/v/gnllHGQgwiOWl/UerTRdHrWvBDxyPjYvkhmKyr36qxi0wpldshSxPgi2Qj42p1fqIBjhqhwgRdaO8c3dNU7ifV8Q31hPHku/HshtWOcZ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G883sjOj/bQ3RfhdFZ36x4y/IjNHJyP87/9oaQyXzfM=;
 b=f52WpEYjdS92WywI06CGBlms6MGqSRWfMqm8KwswO/en79srOdG0vxtuKrEcX9cSotQnN0RfDAMMfAyxbboly/Uy/T5OoIkd2CvM73UUXqyy7XChygr+HBA7/8+Sdo2HRpy7CH9+2OGIDT5nxwOBdiFQxcD2sW7wJ15xjxO4QXWDxrIUCY22UTlEXgB7TAphvTDsxP0vKTRfEm/Epn3iDSGrpkUG1Ee/kDKPSgiQVWzynDAmCqbjBIqUVx65YLuYW+UVnOA3mUFENNZqzDH+NGu0dhuORuAbuQjipgPM0VAPleolZXIYuE3ZJcNPsFZ/uGbXKPq5Hh1Wee86PFh87g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4390.namprd12.prod.outlook.com (2603:10b6:208:26e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.25; Mon, 22 Mar
 2021 11:58:29 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2%2]) with mapi id 15.20.3955.027; Mon, 22 Mar 2021
 11:58:29 +0000
Subject: Re: [PATCH] amdgpu: avoid incorrect %hu format string
To: Arnd Bergmann <arnd@kernel.org>, Alex Deucher
 <alexander.deucher@amd.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Lee Jones
 <lee.jones@linaro.org>, Chen Li <chenli@uniontech.com>,
 Tom Rix <trix@redhat.com>, Sonny Jiang <sonny.jiang@amd.com>,
 xinhui pan <xinhui.pan@amd.com>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210322115458.3961825-1-arnd@kernel.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <385b8150-ab31-0a53-db09-e0dcdd1d7c25@amd.com>
Date: Mon, 22 Mar 2021 12:58:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210322115458.3961825-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:e345:6f8e:fa4b:2c52]
X-ClientProxiedBy: AM4PR0302CA0020.eurprd03.prod.outlook.com
 (2603:10a6:205:2::33) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:e345:6f8e:fa4b:2c52] (2a02:908:1252:fb60:e345:6f8e:fa4b:2c52) by AM4PR0302CA0020.eurprd03.prod.outlook.com (2603:10a6:205:2::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend Transport; Mon, 22 Mar 2021 11:58:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 130530c0-c46f-4ddc-d0b9-08d8ed29ce17
X-MS-TrafficTypeDiagnostic: MN2PR12MB4390:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4390FFD1C67D9865938D45EF83659@MN2PR12MB4390.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5/qu3R3BnomeW3WmsOT0rUwl05IZv2NHh6kPmqBlbYQhcfiv22HW5/v0xra2aB6mq2N+VjGb9eJVdDYldvlgz/LYMg9vxSdmhhxGkG/MvQ9jwrmhDd9+kid79dGmhQKPGnyu28xfixaAbZ+M+abFnl5o4nybWd8r4xmkBbL8gQ85p2kNsyxQWGRCwUsokrbQUkZLB4eLMjr8J1vQ0S7rXkcHULsJaJI89OANX94wDExgtXS8Q1jHYXZ0gFfL1otltTs5YDulFPqCm45SDqyKyMEIOSJhneXttr4zFAVnuOGiBhFhNT89V8ciz3/wyPv3t9zQ/aAG5xmXvgQFaae7aGLta7onL4jX3TjAcSWW+niLXiq69O1QrAmBKjFEptGB2auj8S4Bth2GwQRfOyXvuXv2jr6H74KvL43l6PkBIrENftHLs8flVEsu33jtdz0Dy72VcedQn5c5MDduI9SLK8EvHpvXOqGQryFJzBzASbFjcKhPVMK5ZQPiH3ZwBEIhnp4qtHu9YcK54FIKvsiCpr0IGMI71ZdsjVxyCnDcgl6Ab2AwVKls7nZFDG3OkV17L94mYJrVgFiYdvaEf9x/n18eQs87TCtMMxetOCnVF1bRjD0vVQSqhopBLvkv+iYNu2HDYpJDx37U7tdNQUoWtBMOjexjWUg0vyajJAo4P2UPi+52daZOzhplc2W0h7/sf9wsmGx0v7dxOrvWcEN4fvuybOamccsUgwAUUWYxC4I=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3775.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(346002)(39860400002)(396003)(366004)(7416002)(52116002)(2906002)(5660300002)(4326008)(31696002)(2616005)(38100700001)(8676002)(54906003)(110136005)(478600001)(316002)(6486002)(86362001)(8936002)(66476007)(31686004)(66946007)(66556008)(6666004)(16526019)(186003)(36756003)(83380400001)(66574015)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Yitsdm85ay9hUU1GZi9XVG5mQlBWa3NkMFcrVTlCc09tRE1zOUFPd0lXUmhJ?=
 =?utf-8?B?QTBwZ1dFdUxIaXVncDU0Y1JwNlRMMEFaaVpRTVhWYXlpRmlJb1NIRnMvaEJo?=
 =?utf-8?B?UjdoSkhqbDNEaG5Fd0NWemdobnFXQ3BqYWFSclU1b3pYbXpzS3VTZWN3RmxJ?=
 =?utf-8?B?ZDErNlZObXM5UUpJV0x2cHRBMGxWSGNoTENpNW5QUnF2ZHhnY1F1SHd0NExs?=
 =?utf-8?B?bUVpWFczdGlvZGRyZ3hCamh4TXZOQkk1UUFTNzgyNlRRWWhuRWF3TzAzckM4?=
 =?utf-8?B?eks5L2liU0w0OVY1dW8rV2RSQ292Mmt3UjR5UlBqV2JReG9lc3dpbUlPTG1L?=
 =?utf-8?B?Y3E2WWNOUHRDOFZUbTByM3p6TTNpOEcrSytndGI1SzFkeUU1Sm9oUUxGaTZB?=
 =?utf-8?B?ZmFRVnJ1Sm55VmVSaGpKZDlKUmZJU1VaZFJGUUlzRCtHVjJQVVFicTZScTBm?=
 =?utf-8?B?MlQ2TkprY1UwbnEvdzNiak5aaDJnZHg5REhsRjl6cFRnNXArbWtQc3h0ZGNy?=
 =?utf-8?B?OWdxQXRBU3c4SnFncVZqdmgyeWwwVlg2WUZ4U250aVBlaG1nOWx6ejUrMHda?=
 =?utf-8?B?TXhaVTZTTHRXdGlQN2VxemdtQVIyZlJoRHlyVmtzMitjdStSY25oN2lEV1NW?=
 =?utf-8?B?QzgrYld4djB2R1MrR2puRkxNVmF2QTZHNVNuWWxBdG9SMlVzanJMQVQ4MGhD?=
 =?utf-8?B?bmJnNU4vdUI5Snk1c25nQWpydE9qTUxCNEdBbzhJY2k0YXVzMklJci9sT2VE?=
 =?utf-8?B?bWFMREt5UWVKRlNnWVJqWUFHL05uNUtFejlEc0lyK0I5TzFKdjJsTmFrMzRz?=
 =?utf-8?B?TE9tN3RHN1Y4eVcxTDhVZGNna2t4RURUd01MRzJKZmpQWk9SWjlMUHZXVXAr?=
 =?utf-8?B?Q2xGVW53ek1pVW1FU3dOYzYveW1mcSt3RjFYZmFTOGZqamJVWVJZWVZOd29k?=
 =?utf-8?B?dVB0OERGRVl6bU4rWk1vUWN5NXV0RTdTNm1iYVg0T2RWa2haTUQzLzJMU2JF?=
 =?utf-8?B?N3R2NUYrYlZHTENHbzZtRlBEa0d2WS9xNHlSV1BtREhQL050QmtCWUFpbSs4?=
 =?utf-8?B?TE5LcjNqZG1Sc1FEazRVcENrM3ZORkg0Zmo4aXFsQ0N4VDZCK0xaL3QzeGdo?=
 =?utf-8?B?TmpzdGFhOW5Fd0luL0M5ZUlteXNLcDVpTVNEaXRoMnV4STVXcytrRVV1cTND?=
 =?utf-8?B?TDQrT0JrSWhaeVFWRWdpRG9mYnpVY0cxZ21sZ0xYRGFueU1mVE5DcDczWERP?=
 =?utf-8?B?L0paVEM4cldKcEFYdS9ZdkJmRlF4dmJOM2R3dzV4UzE0WkptOUJtT3FtU29I?=
 =?utf-8?B?MjZsbU9tWXJ0SlpNaFdHWWFKWnM2aFVyQUNjd2pYUks2VVo3em9pcHkweU1F?=
 =?utf-8?B?ZE1saTJIaWU4R2U2SW0yQ3NaeHZyWThpOHc4UGczbU5kUmxDSlQveHhJOFJn?=
 =?utf-8?B?Q1F5RldMUmtjY0ErMUlrSkllbHU1TmY3YmFBUmh3WC9pQndpOU1uNjdCR3ly?=
 =?utf-8?B?Ry95UHorUUVHRytYam9WN21veUpFZE1YRkpBbFNjZGphYXhtay9NUk1qVkU1?=
 =?utf-8?B?Q0d4MkFmeVM0RkgyVDNSVG0xcG1IUy9NeTNtRmFoVzNkbWVHRUFYOStiVTlJ?=
 =?utf-8?B?bWJRTlBudVRvRkl2cjJQZkd5aW41VnhpTUhHZ1ZCUktpWWZHamEwamx5UHJV?=
 =?utf-8?B?Zi9GVHJTbU84eXZXSXNjS28rMkgvTU1NY1FxYktKcFQzUlhseUJoTmdwSGxx?=
 =?utf-8?B?WGlZT2UxeDRuR2o0d05Nbmc0Z2NRNTJaOHhpWHE5WStWMk1LRi8xYUk0ZGw2?=
 =?utf-8?B?a1VYdUxNN1pHZTNhd3Q0aU5KWmZsOGlJQWR0dzdsMzZST0pCK3pRVDBWM2Rw?=
 =?utf-8?Q?XSEc5lG+ftFOE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 130530c0-c46f-4ddc-d0b9-08d8ed29ce17
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2021 11:58:29.5975
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iSwj3bajZvFAWcKed6mBdH6Jtqke/2w2nqrqL1OxDYHkJ7DBO9PxX77mUS7TAlgm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4390
X-Original-Sender: christian.koenig@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amd.com header.s=selector1 header.b=ff1sdGzy;       arc=pass (i=1
 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass
 fromdomain=amd.com);       spf=pass (google.com: domain of
 christian.koenig@amd.com designates 40.107.220.80 as permitted sender)
 smtp.mailfrom=Christian.Koenig@amd.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=amd.com
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

Am 22.03.21 um 12:54 schrieb Arnd Bergmann:
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang points out that the %hu format string does not match the type
> of the variables here:
>
> drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c:263:7: warning: format specifies =
type 'unsigned short' but the argument has type 'unsigned int' [-Wformat]
>                                    version_major, version_minor);
>                                    ^~~~~~~~~~~~~
> include/drm/drm_print.h:498:19: note: expanded from macro 'DRM_ERROR'
>          __drm_err(fmt, ##__VA_ARGS__)
>                    ~~~    ^~~~~~~~~~~
>
> Change it to a regular %u, the same way a previous patch did for
> another instance of the same warning.
>
> Fixes: 0b437e64e0af ("drm/amdgpu: remove h from printk format specifier")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>

> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_uvd.c
> index e2ed4689118a..c6dbc0801604 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> @@ -259,7 +259,7 @@ int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
>   		if ((adev->asic_type =3D=3D CHIP_POLARIS10 ||
>   		     adev->asic_type =3D=3D CHIP_POLARIS11) &&
>   		    (adev->uvd.fw_version < FW_1_66_16))
> -			DRM_ERROR("POLARIS10/11 UVD firmware version %hu.%hu is too old.\n",
> +			DRM_ERROR("POLARIS10/11 UVD firmware version %u.%u is too old.\n",
>   				  version_major, version_minor);
>   	} else {
>   		unsigned int enc_major, enc_minor, dec_minor;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/385b8150-ab31-0a53-db09-e0dcdd1d7c25%40amd.com.
