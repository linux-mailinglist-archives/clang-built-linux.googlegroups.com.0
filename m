Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBI67RT3AKGQEXYJYKPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5691D8CC9
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 03:00:20 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id q2sf11547269ild.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 18:00:20 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1589850019; cv=pass;
        d=google.com; s=arc-20160816;
        b=h4GlPBkB7bkMql74OAJVj/goo6aq8gjGEJkl/bNishLi0BENqZVqZS5Vup099PBPwa
         9BSp2997kSipJ1ABXcdjl5pM2s0lYewB/jaBa0xjBKbJeffPdLOB7j2kzuN9C7qDvIDX
         TBp3Pc3kd4HoaIDEXFJ3kWZkwGBav86jlDb2o7TbpG4vluakJ9cPBjoHo1/hHYbDobfN
         QCJ96kDAenDVe1vy1y7H0M4FG9fQlpfD2SLP85b+Z+RW50V0XEWofcXcq3cdbj/ZWRGs
         YH9Hi7hQED+AChcchODcnF9np5MPR/oKapiOUZtHR2XMPcttcn2Rf3So5dDqfD2ZYede
         ufhA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:references
         :cc:to:subject:from:dkim-signature;
        bh=2b5C0YruoDJaylqSPvsxd9CQyIMhZFzvTgwKzHr0qzc=;
        b=J9F+KGHAhbUqiij1H+5iVFyZEJHEg+xHwb1NHOTWSKykgPqkSwsECTffY5QlGDmRPR
         sznrpk5vykmysW3ijXME09ILfHPIo5udqyOYu95ehix2nORK8uifYBRz3LC6bp35s+4k
         MUV4TprfeBvYAHxo/y/5DbOC4zcudNLFJs2Bns54Zj8WtoXptzvdAFIUhPaLCW1j+23s
         bPJ6LlIEYGeJd8z7280YUnascRAgBvlBmjGPOwWQu1Y1SbvuOHfFDVXRb4A5C1+Q39pK
         G5h83Nhcg45dEdX7Qn4vwGSTC6t+b8eyK9wLm04JK6zuqsSHPddplbD9ajI6jrteyk4P
         NKMw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="NfWCcQ/V";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Do+A8ce8;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=24085befd6=yhs@fb.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2b5C0YruoDJaylqSPvsxd9CQyIMhZFzvTgwKzHr0qzc=;
        b=KqNrsc+oWcHn3MmHJfy42010Tp0+YYGm2ciLRF+jwWNOowT5Ns3loztIrh7DB8yUE5
         Jd/52HWx3l04x8RaFHKuhSi1Ldb7QqCQ6QJ77f6BOrUpjzuUOS8XpMqE9wMG7DgZ29J5
         nPqWoumUF6QdJ9J592Aygu1mTqatiD4z+MrhNnhZ3r4yQlB5oFfDr3vh1ivSYE14kNPI
         AFIdYS0a29w5emtB9szqz4izin0YruYKPFvxEahAXu1N/YfVY71qbZAWRYkl9Yt73vXC
         ZxwAOgMH6Zu7jkI01qRLRLF374423iy6rvGlLNFEkrExz4Wsfg9JG/h75wF1WpnW283B
         gJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2b5C0YruoDJaylqSPvsxd9CQyIMhZFzvTgwKzHr0qzc=;
        b=K0/1sFHj9fjGrvgjkb1VOYq6/lDBvaZTzCJ5AOGwF/e58ETKKk+BPT/W2S5sFyi7vU
         3WF7ynPuL4r5zJ3p6/qLx6DTV7ynItngF3gfp6owndrlni//SLObaOj66DNtA+Q86XcX
         CyWTmlzcO0RE+w9gOLue8MFOXymYo6GdZU6EANrUUjTFXhkbszWyrLOOaRegQ8fUbUX/
         GnzGtdjL/7v39qScsS++DMtaXmgBxvpMKkEj8RcaLdes/rP//1YEthztSIjhMLt6+N1g
         FFOpATN4CJdSyhRJI5y2VOCX7swsLnRGbUhSx94F0coiFs6eaBTGPQDgAT0rEy0LZ6/J
         TR3A==
X-Gm-Message-State: AOAM531WYtflEW3/ioglB7+GNDMhZsG4nE/4v6U/MWLZfqhXd0sz9ZdV
	+KaXQAGAjlidn4clh8fAYWo=
X-Google-Smtp-Source: ABdhPJx6QGOQSbbWqwb9pca21/UMHtGjSBV9iU5yhch6yF4Pti8ka0Ousg39/ICXrqHJuigmyRxZQg==
X-Received: by 2002:a5e:df08:: with SMTP id f8mr17384485ioq.30.1589850019462;
        Mon, 18 May 2020 18:00:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c514:: with SMTP id r20ls1607647ilg.7.gmail; Mon, 18 May
 2020 18:00:19 -0700 (PDT)
X-Received: by 2002:a92:bacb:: with SMTP id t72mr19940511ill.26.1589850019104;
        Mon, 18 May 2020 18:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589850019; cv=pass;
        d=google.com; s=arc-20160816;
        b=lw7XIEQKDigJ+FR9WuZCqxs3E8Jk+ZRo53Y4d3kk3RQl0OpFdcYP1qoc8N2b1E+d8P
         tl9KvI/d0JExu2bJovMlUDftWnOzIj6RAnedltlN+/t1ZK839yiZpkhVz4R0T2n6eMNz
         S9fN3eUF87BqkRTdgPjYGbHKR8iP2O6WiDuO7OIY26pnw4VP3ilw4QKJj+elBRg+YfMK
         A2s4gVngXDf1p5XWNvB0FuXWALDxos2wJJBDlyPBnjFS4KpBAnbTQSkAwdcEQTkLe7fv
         esLFuDlSZ2c1dZPTpSaQ2/n5+cSZCAMkDJaKtlxWjrV5/HbTtydwE4t5IcUtx5M/Q+F3
         5vZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:references:cc:to:subject:from
         :dkim-signature:dkim-signature;
        bh=PE5yJF7+VMNN2lkn9QA3zJHhm9Au9myyKImmSp7E/Os=;
        b=FMz47pWjIgyvX+m2wV0sveeZje1+aVfm6ATeHolqaUMKgTlULOOY0dmkiZPl5rWsdL
         wnVI4nsG1caoicEwRQAWAqx0+t0atQDfSY9n8KBNwljiT7sHand2AVBopw4ftBhmf1ud
         mFTe+kor3YLWD4ULqSPhu9WuUp4uXCcP5CWg4j0sc5o8w3ABZSSF31MVnqhqm2JCJZex
         M0teGisd1mk3iZWlM0Y072MjjYdhzL+qVGEpC+M6iDeNRxNS1AvjmkOUI/0p4cwuL3mf
         TxpFxNymlhblN+kF/BzO0cSbQuqWtMh2xnMIwtkApXzbVVzuAmZU6dbEPS/0XNlacsoE
         IqLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="NfWCcQ/V";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Do+A8ce8;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=24085befd6=yhs@fb.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id g5si709413ioq.3.2020.05.18.18.00.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 18:00:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 04J0rbwQ002148;
	Mon, 18 May 2020 18:00:16 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 31305rtw13-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 18 May 2020 18:00:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 18 May 2020 18:00:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+EB0f+D01VeMHNnHxAybF589GwNTgiFx9QrTLJOCHrp9O+vX6S4MCh/oYndRMEz6Dk+kn9NMN5l3i2p03TCrkAgwWsm+MPJOLCExxVL+frS2CO1obhsJVPxHiyhPtUm8IxAfdhfXqod3wEULfx5liAxHQBXATk0jiq48qhO8G4wLm4lPs0cxCVezOLDPLsL/L8LLyky7EA9V+cFczd9Lq/djuTTbmBwMNHbGbYvLqefVtlLlZi4wQ65mvGCDKghXV1rHOvqruLFgGR3YAiWgx61wRI5EzbuIIUXJJBB6buQfZBqu7XotmcOK+V7A5SAZdtjXhtnN35kP9MAPvUeGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PE5yJF7+VMNN2lkn9QA3zJHhm9Au9myyKImmSp7E/Os=;
 b=PKSkhvB7LpZDJnoD19scH3mt8mIRWpGnMWhXTLy5PtsKVCnTwQjBqODSbMVH/9kaXlNUJRljavq0niXLiDnGWQXIL0KfzvVZ5T428Ja3iM/CCduKFF7kg3hTgP+gqp9CtmTcY45L3aT5VZXaFeh/gFJk5FvzUOnDwjwr6PTqFtvuMOkUpWoVIOSWb5B2Jlc+Wv2vUkiGP4NTtfFP9z8RsY5D4IbiNDmuM7UTwEW3TUeGAhoikrQbCYvfN5Mrlc97yqsyOft/0XEUFjNta2VS4+qaWgrkIjEQ2wcGR0j9EtyqOCSpLKj6KIsbNzy4iSXMVUuKVbtBLMrj8Sd/E9xUVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2550.namprd15.prod.outlook.com (2603:10b6:a03:151::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Tue, 19 May
 2020 01:00:11 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 01:00:11 +0000
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>, Qian Cai <cai@lca.pw>
CC: Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann
	<daniel@iogearbox.net>,
        Martin KaFai Lau <kafai@fb.com>, Song Liu
	<songliubraving@fb.com>,
        Andrii Nakryiko <andriin@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@chromium.org>,
        Linux Netdev
 List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
        Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
 <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
 <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
Message-ID: <45f9ef5d-18e3-c92f-e7a9-1c6d6405e478@fb.com>
Date: Mon, 18 May 2020 18:00:01 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
In-Reply-To: <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: BY5PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::37) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from stephyma-mbp.dhcp.thefacebook.com (2620:10d:c090:400::5:f205) by BY5PR04CA0027.namprd04.prod.outlook.com (2603:10b6:a03:1d0::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25 via Frontend Transport; Tue, 19 May 2020 01:00:10 +0000
X-Originating-IP: [2620:10d:c090:400::5:f205]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8b9e7b90-6731-4acc-146b-08d7fb8ffb2f
X-MS-TrafficTypeDiagnostic: BYAPR15MB2550:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB2550E01FA0A2B4514F835580D3B90@BYAPR15MB2550.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NBRuypD9zcY0exa9EGlTLHZpkShmpAtkFHcB4u/icmsyoqTy6A38yyf/G9BXbyfmVuTUIbGIZf1NY4uanu8SJ875VWmepI1ZZGsXsRp+6GsF2slzutl+pKcgRdp0nPxB5S8emJbaypvMYDAhuTUUcIewX779kOIWgD9yncO8QNykdw6gAHMmnTTZen6CsmYLZWDpPhzcpzu7LJl5w1inHUGv16owPL1an3Yk8+oDgDPy9K7QKzX4iLktcftIDPk/Qs9FZbVeMD0djVsaulYU2jajwQqp7jw854s3wwBKCNAh5P79nBcM7UDqA6bowVSoE9gSStq+CiMw4377c0gpFq52g9NHUomtViBtsFCM3ZYWeU0abDsS6jRXPOVyUUq/6NKuNHCixPsBLSt/XG2cBIJaI1Ag55hc5BBDqJv9dOkwJ8xsSp1DhiL5LtWyPERFKd0R9FmalovbYGtAdPfhw+kk9itgUjDVCVYtNYOcokU7yzrrCjHYUm4ZjAYHFQy6/RdL5QUDuTFlg1+5kAFhpISfrx/FrazjW2glKf1xGDx2oIh5QNvbfUPHIahS2JSiNy9RkNKyB6OghZMFZbqwn9G1oRbuIbhWxh/IiQAcqZBUBQnm3N+gQUVp1d40y6EmG4D3Knslpkqi76TmYoyRizgtyQs9rXOUvQbo2ppnOVoH5dwNu0gUClXfojOET2VS
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10001)(346002)(136003)(39860400002)(376002)(366004)(396003)(8936002)(8676002)(36756003)(2906002)(53546011)(31686004)(6512007)(6506007)(52116002)(6666004)(316002)(86362001)(16526019)(31696002)(54906003)(110136005)(4326008)(186003)(66556008)(66946007)(6486002)(5660300002)(2616005)(478600001)(7416002)(66476007)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: I2eWxsK6ijGKntgdNnC59BcR3YygcENTRtuQaKkTsjfo2+9NPBm5vmt98ajwXzmFn8nTLKikh7dy2WcbZwG65LF8RmejQk6gge+YUNByEesYOgHjtq+aoEJSioMgoAH2Z3xf6FQKu3GN6tKbuYfGnFrK+NE26AoV6pUITusgiZFGVDg2FdXNm8PeOzPsXSJWoAfldNZo+BT67V4mdiDbCtL9McIVL1Hr51nWGDh6QejFRanTetH9+lT8091HGUldZjyuxlkoY13tPp3/zujCDSOi4w/wiQyivyup7UIdjYWA2cWMPYTz7z5wmfjJW6LvqOjCOd8rhNAD969RdiW5Tj71UJV/wTqhD1/jZCUvOThE7LyIes18MOC8L3qRGEAOHRtI1r4cs8VaYcslu9+7TEjJrRxVaWV/6rCoPYOYvLD0TVJwQXq7+mFKLj4zwuyGMBGvESvVd3c6NSAXWpD2wa3qhely1+5byA6GeDczr4bCzpwucNs0/bMlZHHZ+cnaxXF9nlRSfOOtQc94/o0Y+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b9e7b90-6731-4acc-146b-08d7fb8ffb2f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 01:00:11.3014
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SDHabtcaoouTk0cFSHhZfHwG2/cutGnzw0xNPKSa1CZ1pQ6FSQNd7piWZQ2SAxgq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2550
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.676
 definitions=2020-05-18_06:2020-05-15,2020-05-18 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=27
 bulkscore=0 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 priorityscore=1501 adultscore=0 clxscore=1011
 cotscore=-2147483648 mlxscore=0 lowpriorityscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005190007
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b="NfWCcQ/V";       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=Do+A8ce8;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=24085befd6=yhs@fb.com";       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=fb.com
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



On 5/18/20 5:25 PM, Andrii Nakryiko wrote:
> On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
>>
>> On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
>> <andrii.nakryiko@gmail.com> wrote:
>>>
>>> On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
>>>>
>>>> With Clang 9.0.1,
>>>>
>>>> return array->value + array->elem_size * (index & array->index_mask);
>>>>
>>>> but array->value is,
>>>>
>>>> char value[0] __aligned(8);
>>>
>>> This, and ptrs and pptrs, should be flexible arrays. But they are in a
>>> union, and unions don't support flexible arrays. Putting each of them
>>> into anonymous struct field also doesn't work:
>>>
>>> /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
>>> array member in a struct with no named members
>>>     struct { void *ptrs[] __aligned(8); };
>>>
>>> So it probably has to stay this way. Is there a way to silence UBSAN
>>> for this particular case?
>>
>> I am not aware of any way to disable a particular function in UBSAN
>> except for the whole file in kernel/bpf/Makefile,
>>
>> UBSAN_SANITIZE_arraymap.o := n
>>
>> If there is no better way to do it, I'll send a patch for it.
> 
> 
> That's probably going to be too drastic, we still would want to
> validate the rest of arraymap.c code, probably. Not sure, maybe
> someone else has better ideas.

Maybe something like below?

   struct bpf_array {
         struct bpf_map map;
         u32 elem_size;
         u32 index_mask;
         struct bpf_array_aux *aux;
         union {
                 char value;
                 void *ptrs;
                 void __percpu *pptrs;
         } u[] __aligned(8);
   };

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/45f9ef5d-18e3-c92f-e7a9-1c6d6405e478%40fb.com.
