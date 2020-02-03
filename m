Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBRHX33YQKGQEWAJWUCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DBC1501A6
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 07:20:54 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id 39sf8490323otr.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Feb 2020 22:20:53 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1580710852; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0FTEkH1AEt7sTsihbwWR9iODwRcnRxoA+C3xglfuD15Bvc9Zt6b3EHFqP2ijme9Hv
         OzM//Rpj+8sQ4g9vJBtZ25AEShlv2DnLun2A/wM3VQTnbE+d6ChATfFvUdPIl4kJT7t3
         CfqI99n8xQIdNeuPXHsdVWWg1gk73/d9nxAXNrQAgncO1w7e+U5fUmOTBSPGdb8YeUo2
         huGPEG5X4vF8/kvP5bKMT13KcmXFHaNDa1DptGpURf0dh9uhp12r0A6MpIaEHrz2YC3R
         /QPEyl1G50Q9vrSscfZrseaXZgPIITa+hC4zI5KVjkGxWIiF9dPpNdfLI/Obgyl83GH3
         Mn0g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=hJBAiPVEuaELbRVMFdw1uxuXxaBUXlpsANtv53enT7g=;
        b=Iv2LYF6npMaORcY78PRkpc2+yK9uLcDPqCScVSU8/1M9PMnMrtmNxx3+wXjfLUm3nd
         cNsk6pDS2dyYw0BefKGE/hn2ok6WXlL5eVRTmXPm1/loeukr+ycQe7kKxb+N4hGQxylo
         2cooPX1HHcJzXTmfYhWcC/biVV+pguK1lDDKYG5yggy9wcrOfTVmb04MfWBaZWl4JDzw
         S544PBJNKHOizU2aluIUwqmoThH8pWtz6yhp5xs3C5ncPyctFOTsGw3QA52/I4gl/41D
         i2Z1jyU8SPsRbd0/zBy37yPJjP02B6/a2zRKIrCEMILE8Yzu8DGqoZKiCDRGbIkH3VXe
         nEqg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=nqwHLhhe;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Q0KHKHKj;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=93027d5212=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=93027d5212=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hJBAiPVEuaELbRVMFdw1uxuXxaBUXlpsANtv53enT7g=;
        b=tFKYGUdgKfe6CmtyJiFHjepC5BvHrqmkEBhClRi4lMEAcV3gBLhkm65hRSVvbLlXyU
         cGucKfIjT75I384j1l7Mim7D5KrlbIe1yCnuL3fe2rOI1kwFOn6Ka5qfQsuj0n3bAvOA
         T0pCTlXiejcW37MPpAoXsXxAHBYZZy/y+ZOzV/PlrWxCxirZ6JshcL0AA5cwUW0a0Zt4
         ddje0kxpi74eKfXe9z6OMlpMwDmC6c1dTWsNLTnIZ7rl7ZBsx5Lf+emGyLj5CGakTHY9
         JgQ0awVI8uZ3rRcpkd8nAsqpdPa2fjWvVrhOGicmjKA+tTzBNW/Fd2uBSbzM2dEuZxrL
         G0Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hJBAiPVEuaELbRVMFdw1uxuXxaBUXlpsANtv53enT7g=;
        b=dycwZ4zTRsN3fI7JNUqgiK6onWMQgY+cG42w79L4OUQhd81gRiV3GMvpJMLczGnJyY
         Oeh6ahi6s/BjHMNqIUBcH6ksYdGMljOmY19ceI1RNRxWza72j+TmDi7gLDFyPYf0817/
         UVzkucr7mCevrP2kjBW/h7VEVMA4/6zsW1aYNnqIa/0FCq+rDB7hXE3O5Zd1DvPdNqb5
         KhBM6GPcjp0hzn8cvYNspSlUCca72PLXeUQNgnNXF2gUb7+v6dLdzTZzQAxJFO3tfS0d
         bnZOqmoEHFcNAYUY6Aed47pvPPCOT2MXk/kLGtLD2X/UjqcXfbxFIXv+p0KdazgftcaJ
         2cRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWTTaLbg2zrpXSTOSz1IqNC1pqhh8tgiyqG0hrhiwB8d4Bl1ODd
	6E4bsXNEH9icHIwydGeow7A=
X-Google-Smtp-Source: APXvYqw780q8NVlsWVzfjKGE5Baum66liggANxPH7XIbW9Vn+4bLLD9zHodkD5aOKD/pi2W4Ro3gBw==
X-Received: by 2002:a05:6830:1185:: with SMTP id u5mr15453956otq.147.1580710852745;
        Sun, 02 Feb 2020 22:20:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:534e:: with SMTP id h75ls1746983oib.9.gmail; Sun, 02 Feb
 2020 22:20:52 -0800 (PST)
X-Received: by 2002:aca:cf52:: with SMTP id f79mr14010696oig.129.1580710852423;
        Sun, 02 Feb 2020 22:20:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580710852; cv=pass;
        d=google.com; s=arc-20160816;
        b=J62dQjfL36KSM1Oyvv4Bo3xhEYnphaVTqGLReU0maaEynhXdoWKt4iI/kd9Si02YLC
         32J4VDNPRX3w3r5dHE1cWUUprx/0Dl06I/fiJldVu9vO4EEb1G2WhJkSEjSTNeQRgKLE
         ajIe+fE+mcFj9V6vWNkL7rOlmotrd1QOqB5Fu2o5rVC7BpwBW9LHfnh1TV85fmDem/9v
         tXzYzM6ubFxvewMjn1dFg4AH33Rj80rfapTpii6yMZUcB2It/yUybuv90YoIW52c//ci
         3llMcel7ZYe2W/3LPCNJ4sJ44ba5VU3bKS6x+q6w6VLPISnpvI8vouVI9dvEdXOGwMne
         jgNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=K/8ktSIsAvoJ0nUZ5dILkNtx4J6nUrEgEIG+FDKgSHI=;
        b=kRsFvYSgQjlTthIj9BsmB7HmjzpfzmzGgOZg85pxgBqYHHwz7IQDRTK0HW1UOqkK5X
         JyZxwN3pNVgE7mDDpd72ATqSm7Lt8XgOPyTCz8aUXpttpQCQl4vAgKhXKUI+O+7l0EYA
         Ccy2HUuvFbpBKdcz3LiD8gCzhzFkJHlOHW2UbytdWBCYWio6QWd798PZgi2Wk4P/LQjf
         AhUXM73+NZciHDu8Ue0KR4AnSAw+CjwKBnJfGeRBgPq1ZELeCHUliYgnuDjnlrl7WmH4
         BYMbOiO13DmtS6bnh2msmGQ0Uyv8ahbGZt9Y+kSGrUMo2elrKbdoOribwn7EKTT8WnAi
         vCMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=nqwHLhhe;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Q0KHKHKj;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=93027d5212=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=93027d5212=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id d16si783617oij.1.2020.02.02.22.20.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Feb 2020 22:20:52 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=93027d5212=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.42/8.16.0.42) with SMTP id 0136A2sG017419;
	Sun, 2 Feb 2020 22:20:52 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by m0001303.ppops.net with ESMTP id 2xw5vsntpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Sun, 02 Feb 2020 22:20:51 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Sun, 2 Feb 2020 22:20:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PBk8EfOHxNkQcjW3a/HAa7E9wy2f2w/8HKtETTK4xnP96Nlnt/saGGd/bQlpD1bR3i0JC/DvkAiDvfs3bJ5FJh6mEGYXTeb16LMNqFabYsM6oa2CV0y4ncUQ34IrtuFahq9VMVqhuWz6FIkBD3VKkEhLxy6U5vASAjFgijDLk8XMoBNH7p5cHViZesQnCtofO5zXEkZM37/mC+MKAEZQxzx+vU99qdNS/lxXNdK+h+mYMtIB/nrZuUJn7zJpC//7p3vog5TiqoHuaDrFSEvpxtS0nlBp5X4O71VvEToufNs7Sb8asE4DaZFk2KTVdK02UfnuEXxy30THhRjcNPA9Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K/8ktSIsAvoJ0nUZ5dILkNtx4J6nUrEgEIG+FDKgSHI=;
 b=Aw3Kedog5AS2xMmQ9NueWnbzQfx+2UzVbyfARfzQTAEVTHG+c654bphh+1Fx0LR3j6SIOhWSCz6tOSuOIYjNmzblv5DOYdfIdlh/fmzJd67OMn5A9b7rSal2oA9TK4zv78etY7ibFsFqEuFrHHZWZIsWN64UA+v/lkOdOIEiw+c0uDI/RcxX7f1PTkSurWLPD6QXkBlpLHE5TfKR83W2S7h0IzSfG6SkFls5D0eYBNeNtXC5VFt6wP9BarfZZC1FyY83FSUjQuEvWZUbfJrWNZPNH/yfMYLsHNwnx5HqRD2JAnTO2cVCjqW7qikaKXPXdl/3I/gtFaCc0cXfPRkaUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from DM6PR15MB3001.namprd15.prod.outlook.com (20.178.231.16) by
 DM6PR15MB2826.namprd15.prod.outlook.com (20.179.164.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Mon, 3 Feb 2020 06:20:36 +0000
Received: from DM6PR15MB3001.namprd15.prod.outlook.com
 ([fe80::294e:884:76fd:743c]) by DM6PR15MB3001.namprd15.prod.outlook.com
 ([fe80::294e:884:76fd:743c%4]) with mapi id 15.20.2686.030; Mon, 3 Feb 2020
 06:20:36 +0000
Subject: Re: [PATCH -next] bpf: make btf_check_func_type_match() static
To: Hongbo Yao <yaohongbo@huawei.com>, <ast@kernel.org>,
        <daniel@iogearbox.net>
CC: <chenzhou10@huawei.com>, <kafai@fb.com>, <songliubraving@fb.com>,
        <andriin@fb.com>, <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20200203020220.117152-1-yaohongbo@huawei.com>
From: Yonghong Song <yhs@fb.com>
Message-ID: <a29bf101-81b0-68ef-356c-dfdc9c53d899@fb.com>
Date: Sun, 2 Feb 2020 22:20:31 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
In-Reply-To: <20200203020220.117152-1-yaohongbo@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: MWHPR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:300:117::28) To DM6PR15MB3001.namprd15.prod.outlook.com
 (2603:10b6:5:13c::16)
MIME-Version: 1.0
Received: from MacBook-Pro-52.local (2620:10d:c090:180::afe7) by MWHPR03CA0018.namprd03.prod.outlook.com (2603:10b6:300:117::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.29 via Frontend Transport; Mon, 3 Feb 2020 06:20:34 +0000
X-Originating-IP: [2620:10d:c090:180::afe7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d9cea84e-7bd2-4a5e-b2cc-08d7a8712e73
X-MS-TrafficTypeDiagnostic: DM6PR15MB2826:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR15MB28264B169DAFFA6D1AB8BAC6D3000@DM6PR15MB2826.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:291;
X-Forefront-PRVS: 0302D4F392
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10019020)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(6666004)(66946007)(53546011)(6506007)(5660300002)(66556008)(66476007)(52116002)(81156014)(8676002)(81166006)(478600001)(8936002)(316002)(16526019)(31686004)(2906002)(6486002)(6512007)(31696002)(86362001)(186003)(2616005)(4326008)(36756003);DIR:OUT;SFP:1102;SCL:1;SRVR:DM6PR15MB2826;H:DM6PR15MB3001.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bkJgpyaHV8h8MGm9SfOruVxFeJuq/OQNuqcOP6Sgo0FJM2FsU8pEVQX1burRaPJVxdGbH85+vQ4VxEXoHy/pHlnU/Koi4GcJgJi2dIMGauLzqmqlztP67x0Ny4QwTM2V85UJ2N19obHPSYvRPwS/ULirmx8iNEslgAu3P2+/0ZOB8LBcyZz0L94k2Sh3YEw/TDX+vBuHkYWIKlB5bNz4dIh56flKZZZSxRdvosmPjFvhBqCx+mTMTqZJXsmzkSD2mj7bsmf8Jct6ITraD+a4WFPtuXy8lL62W8g010g9e3sXHjpU39Xgi/9XFXNQPldukNCFE4e3t/OBB+dC6lNE3WH7DiGB23mU60eeRH9kD2BvRj4ChDyoBew5TfVdkgm7gcu6qSTLGtBnO//cDFcf52gJONf9QlHBz+KBYWutqu97bq4HsUJHUAzGjOjXyy7v
X-MS-Exchange-AntiSpam-MessageData: +BG3KNvhsvVnHfDug5jXGdZXILspH3fQF6xMEeEXL0iFdOe9qLt4MpcGXeI0ABfGos3Am/+Pf/38a49H4siKLjjBLfNqJpPPPiYT6qXn4W8OC3HimgHfMCWCjjBbsa6XvJdtssWlFB5hJpKBujmqn7Amzt3ol65J2CkeF5BHjEE=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9cea84e-7bd2-4a5e-b2cc-08d7a8712e73
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2020 06:20:36.3118
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OutLqTq+6zduPepUAz5Nzz49tHmOmRiJr3BuC7z32tFpbXgwchloDlz3VmGz3mdf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR15MB2826
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-03_01:2020-02-02,2020-02-03 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 phishscore=0
 mlxlogscore=999 suspectscore=0 clxscore=1011 priorityscore=1501
 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1911200001 definitions=main-2002030049
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=nqwHLhhe;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=Q0KHKHKj;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=93027d5212=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=93027d5212=yhs@fb.com";       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=fb.com
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



On 2/2/20 6:02 PM, Hongbo Yao wrote:
> Fix sparse warning:
> kernel/bpf/btf.c:4131:5: warning: symbol 'btf_check_func_type_match' was
> not declared. Should it be static?

Yes, static is better since the function is only used in one file.

Please use the tag "[PATCH bpf-next]" instead of "[PATCH -next]".
Since this is to fix a sparse warning, I think it should be okay
to target bpf-next. Please resubmit after bpf-next reopens in
about a week.

> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Hongbo Yao <yaohongbo@huawei.com>
> ---
>   kernel/bpf/btf.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> index 8c9d8f266bef..83d3d92023af 100644
> --- a/kernel/bpf/btf.c
> +++ b/kernel/bpf/btf.c
> @@ -4144,7 +4144,7 @@ int btf_distill_func_proto(struct bpf_verifier_log *log,
>    * EFAULT - verifier bug
>    * 0 - 99% match. The last 1% is validated by the verifier.
>    */
> -int btf_check_func_type_match(struct bpf_verifier_log *log,
> +static int btf_check_func_type_match(struct bpf_verifier_log *log,
>   			      struct btf *btf1, const struct btf_type *t1,
>   			      struct btf *btf2, const struct btf_type *t2)

Please also align
   struct btf *btf1, const struct btf_type *t1,
   struct btf *btf2, const struct btf_type *t2)
properly after you added 'static' before the function declaration.

>   {
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a29bf101-81b0-68ef-356c-dfdc9c53d899%40fb.com.
