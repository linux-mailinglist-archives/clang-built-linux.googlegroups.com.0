Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBW5PQKAAMGQE37BA5RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB6E2F6A9A
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:13:32 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id o9sf2890529yba.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:13:32 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610651611; cv=pass;
        d=google.com; s=arc-20160816;
        b=GZOBTOrRtYn2GtPVIj6nC3yTsZebEL6gJbl2/LyEGOrLTX3jVe357n9HCE4b37Zc/T
         rcnu2RtFrZ0o5Vfkklk3P1K3BD+Sa0SARBH3tDIr+lexcEq6X2v4xE/MHIXMNRUCkHGH
         ExqtFETsxGNThdR+cLfTDNvHHIZQD5NXOAesXnf8MGN16dk8vA6jLhnZJoF86otuEJUi
         Hr8D2paO8Xl9oNbZy1AT3QzPGr/qc0qTwQYRqS3/jx4m6t6r901Bbdhg1BWzr4Y/hOi4
         3jXscDse1r8WBfA7fuaxkp4Wml4a1Fkv+485gKTsZ0SXpg4rE/jA/BsFrYa/NsIX1lj+
         o6Iw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=WDaC9Px26GXDvSSbOqUoK5CMqUfCnLqXH4SR0sDZ418=;
        b=zwdcwyt51bsuc2lIGEysrQ1b8EkXiB4oykrvtWzDNAH0aKuDNeMisXZw5CkNd6H9cj
         89ZI9YZshIJQ6n+BkKJ+tEWak0gh6GP9o/0kBHQGTDjWP5We/1lbyuSPOzTAtGJl6dS5
         8MUTm8MM5SHifsVmDDChV9J/Sl4CjR7FWMGWUR+fY4mDZ4k29npXzGEwBz7BvBD9EPx7
         AUdG1AgPMv0rhvknm9E+66sqTF0zeXifiwpJBEDxgPAQ6tSZI/zTE4AoXI8fEYdeMYMu
         i+QP1YaRhb8Ixe3QTj93/6/sz+wzHpUXid3MjHdktWop17W7QKZQCRp62imIakC/jYfo
         szRA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=CrERExtQ;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=BcW5KHUg;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=064855ab8e=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=064855ab8e=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WDaC9Px26GXDvSSbOqUoK5CMqUfCnLqXH4SR0sDZ418=;
        b=QwstTot/wFhoJha0NgvMotPAmhgFfiiee1HtpcXqbX46NAzkWW4h9PQCfZlCeSEB10
         FzCZsvZFUYoPjXUAnSEScOe66e4qZs32Fa8Byt2vSxLa51cZljb3RnckKc6Qfi48q6ey
         nGLAg/+A34e9xPUAu54zL2gbbp4Qn2PTkscEsUDtqQA0cle0+t1Dg7f4UhlPAL7lGmaV
         xsjFdcMugpq6G0aFu3LOx8au4Xm2xr/vScocMQHigZ38j13B61n1pxOOioNXuq/U09t/
         ol9y2VT1xOHmXXHrl8kU7WXMDZ62oRsjD7HWQ2hEisprz79MtGBEO7jV+f/KwYBOJX7Z
         KvYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WDaC9Px26GXDvSSbOqUoK5CMqUfCnLqXH4SR0sDZ418=;
        b=O6CYZ2G2+oyaBnUmx01HreNw0toIw899oMu5q+/7qfEdV3fAoMG0WKSy1/fgqKL2xz
         33TedQrC9hmhb+GRfoE9x2eFV+WuK4m1lwRfIuV7y+Hg6xgL9Lg111WKGXr8yBcSbexc
         /dosjVbGswO+LCyIs9uQi82tu6EY9OlDAVKISM5W1vwFcNfXK6gjeOA1/lLEJPXKhQQx
         2mfgGBDVaVukO/ih0hp7gbgR4dkmPDzIDb6yiU8ovaaWLuGK1wVqhexT9brHmLJBZA7y
         Za1RgZ/q8Zzy4mTURkD5iTvN3v/LCfhPsdhgjsk8/plSnk29MPjZgyTjbcGpsjcrVrrh
         94Yw==
X-Gm-Message-State: AOAM532id7qs3lkIChPRjqJrhN1g5pMmyPYIba+snG/vB3p8sqWFx1TH
	cKW8JG0+6d/ODk9SR2L9ukc=
X-Google-Smtp-Source: ABdhPJyqdiRa7PClLZmGCEBXhxH9DOzSZFVuAcjYoTu1dbVuI2hvf3jFX3rONuM/UiTbW/z5G9gL/Q==
X-Received: by 2002:a5b:a8b:: with SMTP id h11mr10717663ybq.1.1610651611240;
        Thu, 14 Jan 2021 11:13:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7314:: with SMTP id o20ls1529815ybc.0.gmail; Thu, 14 Jan
 2021 11:13:30 -0800 (PST)
X-Received: by 2002:a25:42d0:: with SMTP id p199mr13059448yba.352.1610651610848;
        Thu, 14 Jan 2021 11:13:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610651610; cv=pass;
        d=google.com; s=arc-20160816;
        b=o3vukEoIQoOFQj7vaE64WVQw+Ji9PDOvIFqWCDPox1oPg6xrV1mqF1AtXaT0Ls/VQm
         qD8Jd1rzKrB9RaxXtjXkJGE5cJ9XTKAtqwgbiunheGDB+lsyh4TNcNUbV6pDxgD3fNxi
         ZXs+JPT83fCA/Fb/YHF7EpeaahbGCEF9xdjsyAziMAsbw0UYN2eDdBkaQwH7Jsd7wk+Z
         EmdBfGOZ95qIePMwERnzWIEcEOJxgM7o7P/TfsYare5H5gC3oxEN/psjOab3FmXJE44X
         qs7346KywUxVtx8KVRDHg9G5D1U4tKJYBN04BgU6pk8xfC+fZB0UNhPZUW5Pf22GfCQw
         Kgdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=3ss0qb+We8mmU+g4wsn+cbX3vxiAghiQFMuJbupimF4=;
        b=0WYv5PNOi8s13ACpgik/qnXwoIiP2xLCTIyWyCRxxViC0vYwtdqf95Y6l4x4Tdh1lt
         ySxL74HNTMipyxmbOHJakL/MH31rbDy6Rv3P7jDEvxyUU2IhKjtSKMKVgWqhUB0rVc7k
         uJGFX8AK1bsXk5YJt/YoYT2VCxB5hqYSc4dsJ4IOAE4SOwok+qkSVMghO1uYW3MWj48A
         3Dy+Q6/5qRTnMZ1HaCFj/Dk4giyq678QxJIX2eJCr1WoAL5oFiwjpSM13DOQKd8dOkVf
         XOubCSXvQAJr+uAo59VEmjc1DcRHMSAwMN+wg7Iw1Jl70gNs/knpPu4PNGWuDS2+VByA
         HXPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=CrERExtQ;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=BcW5KHUg;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=064855ab8e=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=064855ab8e=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id i70si452456ybg.1.2021.01.14.11.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:13:30 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=064855ab8e=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10EJ8Sku021399;
	Thu, 14 Jan 2021 11:13:23 -0800
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 361fppmmvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 14 Jan 2021 11:13:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 14 Jan 2021 11:13:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKX5Nrg0kgDMgSP6ZQbyJ+G/ZYqMqPwAb5VMjAutHJZ0TXkj8cz0N7gy3ZjH+DKqhxhhpy50mVDsQ5BYmLk5u5Aoy8uErFRwF5qw8ykkcSsFA+phutIEGjSM1toDFtsHwkvpSsVaggfbYgloH9ZaBBQEDQsnRDyIaR1mGXrgFR5RKOmV96PCWkIhz9sCJjenDZrLyBRfx78E7DHKhL9Zq8DWv32pY0waEPpqAIKdqcvGnn8LG6QQ7Yw/p3dWHswTqDL5RIu3zFkX+HXhxPRvODSM3SrYFyESwEJIqtHb48rSmxJ0U2sdlLZPfVyGV86IomwrH4cPQ5t+9u34YdLukg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ss0qb+We8mmU+g4wsn+cbX3vxiAghiQFMuJbupimF4=;
 b=kB8rJyYgCW5AXafjYsaedM+kAqTyr/4ud0VLxLGZ6vPnsfgA54/D8vENyzra2KLP6s5oZ8VVAj+Ftq9CWs4GcuxAO43rQg8tmPD8eiygOk+ly2AHovrheqRoAB350PSIbzwjn4teA3xnQd1hq47X7DqPaJmEjUNCk1FxdxBJVCcbmLb/bb8qktNYRK2HbNFrmeauAO4fOGOvTsCbIoP510PIWfXPUDBiVPFExOLlpFB3vZKcvrzPL+wHjNaB607L+RauefaFqRllsLOzywsYqiUemLX+NNoC4AAXPxpJrCjxKW+0tpKi/iwBQAfUAA3GxfEGnvXeaEx5Nwspqrt46A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BY5PR15MB3668.namprd15.prod.outlook.com (2603:10b6:a03:1fb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.12; Thu, 14 Jan
 2021 19:13:21 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3763.011; Thu, 14 Jan 2021
 19:13:21 +0000
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo
	<acme@kernel.org>
CC: Caroline Tice <cmtice@google.com>, Arvind Sankar <nivedita@alum.mit.edu>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Nick Clifton
	<nickc@redhat.com>, bpf <bpf@vger.kernel.org>,
        Masahiro Yamada
	<masahiroy@kernel.org>,
        Sedat Dilek <sedat.dilek@gmail.com>
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com>
 <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
 <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
 <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com>
Date: Thu, 14 Jan 2021 11:13:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:ab59]
X-ClientProxiedBy: MWHPR1401CA0019.namprd14.prod.outlook.com
 (2603:10b6:301:4b::29) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e1::13f6] (2620:10d:c090:400::5:ab59) by MWHPR1401CA0019.namprd14.prod.outlook.com (2603:10b6:301:4b::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Thu, 14 Jan 2021 19:13:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72afb3c7-5667-43d8-0408-08d8b8c07593
X-MS-TrafficTypeDiagnostic: BY5PR15MB3668:
X-Microsoft-Antispam-PRVS: <BY5PR15MB3668463CB106C65E0F253BD2D3A80@BY5PR15MB3668.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rfkWcBugolfxPnYzCE4+hoF2zdi2Ei1RWAimEbQ0MhXvT+CQP4rIdcMmNjzcmIkp8SnUxQGnoWXyDoxK4s4FN7zgDkGgXBEgNU3RkfDVPVIzx+30u5Rf2GMwr4lmrSjyFT32WiIPOi84YnD0kjAsEUscCEPr5G0p23pzrheG/lLErYNxPa6DIVBFi69SXlFBjjhYw7HvaAVI5bUUVoVHfMcMKrV3mOm8kDM9SMVKtE8JpIZaxo7eeKygfSShkCapBDPcVYjYYebSE5ums7m/6Zpvlk2G9sXYojPGIN5t6aJ5DockSaIHxijchFZsDfvyST0V30Qj9LQfiGt6JaSRLOxUZVEfDUHK+2QHEKlTBKLszA6vgGYCV2QT2iMjDkM7G5TGWt1EpwMlo1fWrn/o/4CoT3I/6pcOF3+nLR1o1K2zUSMpgBPKyyaYhodRuGEO4ozuaFD/EhJsQ7Z4Yr9nzimYPjwB1ysskpoPnSHPGUA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(376002)(366004)(346002)(396003)(136003)(186003)(7416002)(83380400001)(8676002)(5660300002)(66946007)(8936002)(16526019)(4326008)(31686004)(316002)(53546011)(6486002)(2616005)(52116002)(86362001)(31696002)(66556008)(66476007)(36756003)(478600001)(110136005)(2906002)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?cVdpekNncmJOREhsdG1VTDJ2eGZONVlqSUZZQUthdld3OVlkUU5lWHlxZkpW?=
 =?utf-8?B?VWNFekNjR3hOeUdSRTh2RytmTnRiNERjQTBDWi9DZUJVczNVVHovWnZZdkpl?=
 =?utf-8?B?Nm0rUGRKNEhxNGtsNm9GOGhFclFndzVra28zSHdtdU90eWpPVm5OdjF5Y29m?=
 =?utf-8?B?NW9ZalhoVmtJaWhFS0JCMDF2L1V5enlZSk5OREpReFlFNVhmS3VjKzJ3Q2Fn?=
 =?utf-8?B?azg5dGtqMkpKeVZhRWpQQnhwNlJSdTBDSE1CeUt1V3V2eWlXYTBGZndqdzRp?=
 =?utf-8?B?R1c5YnBuOWdCbHBBay90dGxEL2pWUnRRZ2pleEN3ckJmQ29sc0pEZm1VcGo2?=
 =?utf-8?B?SFZXeC95elFpV2pRZEt0U2RFUWpVOG5YR0lvSnJ3NGE0S2tnK2V5SU9mbHhZ?=
 =?utf-8?B?YWI5emlsMXlweVY3NW02Q0NsSWJKR1R0T1FOMHl5bmdrdnFrU01PSythb1Bk?=
 =?utf-8?B?d1o0SWkweUVTNEhFbENxSmY0YWJUWThJSjBlQ205MExucGFZblRHYUpJUEh3?=
 =?utf-8?B?RERGdWUrTXVQb3hPT3V1bFBFWDZVaWgxdWtrN281M0I3ZzV2WEJ3M3VMZGFP?=
 =?utf-8?B?dnpMWXVOVEJHOG43dGVqWjZyNGtpcWNYRDE5QVR1S3lXVkpwSGFnV2M2WURo?=
 =?utf-8?B?YkVubE5UYWVuczl1L2ozaTk4ZkJKZUFMdElGUVdUMmt3RVh3bmpzelJ5TlR0?=
 =?utf-8?B?UkxLNW9QYU9PVXl1R0VFNTVIMFdQdDRlVk83NzliMzVucjRzSm04SXd0N1hu?=
 =?utf-8?B?L3RKaC8rVm5tb1BuMk0wT3RhME9QTlAyMmFQTkNyU1pBYUNvQm1BZWtza0N6?=
 =?utf-8?B?aEV5NWhDQnRZRE5UeGdxdGVtT2lZbUVqaVhlZGptSHQ1eFdzN0J1YTJhRDR0?=
 =?utf-8?B?L1BvOUNTZUptQW42TittdmU5UFltcGRVS09hbmUrZloxMXVRUUFvZW5wQXEr?=
 =?utf-8?B?V0YxUTQ3TWQ3TkRUYmhuakp0TnNZbWtSZnVxSFJRM3BENmpDQzd5MVFMc1Va?=
 =?utf-8?B?SVFVcGRQcUxpTmVCbVdkSmppWU05RDhQTWxyd0Q0UGYzMVIrV3RBN0VhdEVK?=
 =?utf-8?B?cnJ0L1BRVnhtNU0zdWNBQnpUUXlreS9OemUvRUo4TWJMSHBrOUQrRWVkRE1E?=
 =?utf-8?B?U0dOdUtVaE1rWm53SytPKzBDcExHU1NTUDU5ZmlVUHZRZlZYZ0Z5S1YyQy85?=
 =?utf-8?B?Y2NtaU5GdWxPM1ZadkNwcVhGREF2TUxQN1ErZlUybzlxZUt4VWtJYS9EbWwy?=
 =?utf-8?B?cGlGdWNZZkNXdng5ZUd3UTBTbm1zVkd2aFVJNkQxb09mMXhBcWVvUUFRdFM2?=
 =?utf-8?B?cHRuQXV2aHNmbEpRVTdJVnlPTTZlUC9zZVdIdXNkYXFNbksxaUU5RlIxYnBB?=
 =?utf-8?B?Z1Z0Mld6RDcwdEE9PQ==?=
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2021 19:13:21.7846
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-Network-Message-Id: 72afb3c7-5667-43d8-0408-08d8b8c07593
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4y642P36e/4o6/SsFtbemszqGrx9OC2tZf6l7InMnzEldD5KVei9BgFrsJA2vH3T
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR15MB3668
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-14_07:2021-01-14,2021-01-14 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 mlxlogscore=598
 mlxscore=0 phishscore=0 spamscore=0 clxscore=1011 bulkscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2101140109
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=CrERExtQ;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=BcW5KHUg;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=064855ab8e=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=064855ab8e=yhs@fb.com";       dmarc=pass
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



On 1/14/21 11:01 AM, Nick Desaulniers wrote:
> On Thu, Jan 14, 2021 at 10:53 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> On Wed, Jan 13, 2021 at 10:18 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>>
>>> On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
>>>>
>>>> On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>>>>
>>>>> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
>>>>> CONFIG_DEBUG_INFO_BTF=y:
>>>>>
>>>>> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
>>>>> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
>>
>> I can confirm that I see a stream of these warnings when building with
>> this patch series applied, and those two configs enabled.
>>
>> rebuilding with `make ... V=1`, it looks like the call to:
>>
>> + pahole -J .tmp_vmlinux.btf
>>
>> is triggering these.
>>
>> Shall I send a v4 that adds a Kconfig dependency on !DEBUG_INFO_BTF?
>> Does pahole have a bug tracker?

pahole could have issues for dwarf5 since as far as I know, people just 
use dwarf2/dwarf4 with config functions in the kernel.

Where is the link of the patch to add CONFIG_DEBUG_INFO_DWARF5 to linux?
I think you can add CONFIG_DEBUG_INFO_DWARF5 to kernel with dependency
of !CONFIG_DEBUG_INFO_BTF. At the same time, people can debug pahole 
issues. Once it is resolved, !CONFIG_DEBUG_INFO_BTF dependency can be
removed with proper pahole version change in kernel.

> 
> FWIW, my distro packages pahole v1.17; rebuilt with ToT v1.19 from
> source and also observe the issue.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5707cd3c-03f2-a806-c087-075d4f207bee%40fb.com.
