Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBB6F533QKGQEE6EVTZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C27B20FDC3
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 22:37:29 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id o11sf15243405qti.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 13:37:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1593549448; cv=pass;
        d=google.com; s=arc-20160816;
        b=TsGKwHU8/ZhFz5g2fHRsVpAnIUk13VGSjbbIpxKNkYKTkZHLmAe3HHEfsTgspfJfeG
         5fA1Uj0t5Y6VHkLLHN/tsSyR+P+e1l7QsrcFFZiPTTA2yoJn653ywykdFtrLod+agj1o
         yqexB5rx80c0SsgxajQ3LpsTLHabBPRiSriFn47OaqqekP9dKVZYEiOoI+YYh+D9iQlg
         Ayees32C7OtwnVJ5naH+e7AF72mc8E0tWiYXH4P6VJC+yKjzT+1o3pfMjrY49nl223i9
         CBMcQrtHLJs0YMAAqf3XguSC6RdQ237+XrgbyGJccvNzUzwaefBazf8w1t5Zv3W6VUER
         V7Iw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=iqLmZWvfY2MSDUWxMWMv4F82JrXyVALP0NhAsx1To8Q=;
        b=cqV28Pw4mDsWs6XRuojg6GjPGbYTlX0QTqmPsrqvCdt/R2ZwGMSLzSI//IsXKZCTrz
         Nf9FU37VwZi+dnR5HBPfYI9Qdn9hwOeRld+/YQbU9LSux5xN+S9CHLxP5TVoOfdHhkxo
         AZ3L/P4idkuY1SXkbiS7m4kKrME9KjAJChSQwCebCaKD87EFjLHYjS1ehIYyx6S/ISme
         +zg1WKBKLF5OQAm6Zi/f7Q5nvmI3gzBEjLGJgEBawgnFLuef6ezQObCYLhzoQYfz+qBA
         niWAu/8V8Rq9T0aN2U8x1OeDC9Mr68eP19JlcJXBJFSeRyQ24sHYzBubm1brCqTyYF4U
         8KYQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=q827KWEC;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="Ay/GKmIj";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=4450ba6e99=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=4450ba6e99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iqLmZWvfY2MSDUWxMWMv4F82JrXyVALP0NhAsx1To8Q=;
        b=LJX5+gZfUJsgAFzGT+KroRh0ajUW0wwK6fmPNoLQYyqVveWQsPNjdmY9y0SKVBhdg/
         RYVxvxhIFAn3HkunY8fYNLns7PhYyWG3Fvnhb1Dn2ixW+Gg/Lvxpna8GDwjyVAsmJAbj
         LObxyW8n8DVu3kL1pWYPm0ukF4wCP/BFzcVR1/EZshsjSQmsGQGajGU0+hSX8lLYM8hd
         6XlYj5uGerbGUY8R3rANXtMjL2++bzeYHN6cHs1e9DCNprlgOEM8CynS7nea3J6Hy5oJ
         3/MnJT2ui2yLK0z4OKKQDUiqxmhUX0mPu6CjKXQ4jL4h9OWdFaERdBwUDhsYg0eC9UXx
         S3ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iqLmZWvfY2MSDUWxMWMv4F82JrXyVALP0NhAsx1To8Q=;
        b=uQ/oGXpnSvuZnLUVOPCTGfx2IH8E+tntDNd71Und7JjzILVYMHPpleT0jWj0LDyHG0
         qfBdmktxxqj5CPd7HLiFgbmlR3fdg6y9ON852xJyFDhOyPJoeAlbkPttwWh5ZjGZH4re
         h0P7TZIJkaf1sg3flRuOK3GVYUZ1t4p04nxjADnrGPIoq4DSx3rbU1ox5f7CyOnjsmlB
         KIPClgnI9PeUazb9Ots9Mq2puoqsA2LKQLH9/x16/WwQ+ykNoiBrUk2etc5qjz0HtnBM
         n0P3anmo0VD8jrBESoakXk8v4XWbmvc7GsIENBKL5g+C6KuAcvG1IXB1ocExwRvOy/rg
         f/FQ==
X-Gm-Message-State: AOAM5303SSPdIfP0jnyfFU2KyFkf5q7QejgXaaLRJXqFkCsmByuOpUGk
	lHicESd9KbKeS4U7iNPVUek=
X-Google-Smtp-Source: ABdhPJx+9wB4JMdLAs5MNzS1kT0hRCmsA1ECuUyckgT/Q5k5S+StVjcs2vlqzv4ry+B58/9G4F6h0w==
X-Received: by 2002:a37:9c8f:: with SMTP id f137mr22305785qke.63.1593549447123;
        Tue, 30 Jun 2020 13:37:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9ece:: with SMTP id h197ls10473618qke.7.gmail; Tue, 30
 Jun 2020 13:37:26 -0700 (PDT)
X-Received: by 2002:a37:a306:: with SMTP id m6mr3522229qke.7.1593549446818;
        Tue, 30 Jun 2020 13:37:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593549446; cv=pass;
        d=google.com; s=arc-20160816;
        b=w95pSlm1WH6OxNsTtHinyHEBBQAnE/cQta8qVp+JO8oWt9vkbcERuEOiolRxbMWUHX
         xFsWGok/AsqoljeXGxPiRZMz+SKWQ5orWixYoeVky/gGDPporVPbF/ZCJApZtOsA1KcA
         cPUHAuAGVoc4LWHbI3okRV1eEee8jYgwoFfDVOj3Gn2UwZ/o5rQmHP2jppndHr30Abdy
         cURPGtOThgNU65ISF9SICAGhLnGoVZvZXB0d5FbL2PBisPIK4eFFRJhlwqiYhLJ42GJp
         Ab9aUU3LunBx2OcxngZ12hgxtuycDwLNp6fg+sTby8WOhVfJ8jiCfubvnvBEYSf9ex5H
         7xLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=L6lbj+8ZVRfUhgjnLEyZjTBKJEt8lULKwnRK53ecsDE=;
        b=cPF9vGxQRW8UC7i9qr/zUP49jIf7uFugXuo+0bAkfn0Z+mjHgWR6ucKRmQ8GUSy5jx
         b6OAJE35i3loGYrt+2KW89LU3r5GkAR+jx7J5lO/rvZVqZSyDmbfugALzVBHOXJkQVF0
         cpQy9KDUPjg6vJ/bo+gmKpX+Jkl5Sx/qQfHaftk4lpcxsoHoqHBYgHg2hoVR6vf401J8
         Qau5XfXJe0OJAg50d/2sIY0rOsgHCGM8MKS4kJaFxbSTACl6X5wR48lAfVvI1GaSbDMh
         XxjvEtIX9zpUI2I83eTqScwGlLcOGx4dXpER7Ps0Dmbyke83wKCzM3Jn/9EsU2omw+x9
         OuVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=q827KWEC;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="Ay/GKmIj";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=4450ba6e99=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=4450ba6e99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id b26si193583qtq.3.2020.06.30.13.37.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 13:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=4450ba6e99=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 05UKXfBw004334;
	Tue, 30 Jun 2020 13:37:24 -0700
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 31x3xgxdgx-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 30 Jun 2020 13:37:24 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 30 Jun 2020 13:37:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=maBRSOf5hOB+cjWfez/gWPAPR9Nxrd4fbp0Nom1Ylfq5BbmqIisVLQq6w4s/Lqs3l0omDYSBKG4rStso8KZhO/JH4fvGihTuEw94afhYRKTBkEUmHQWVAM7NHdBNBr/mdAulF+H8bL0NnK4zxGwPOBkrBxPK3XsfIZuST7twBGPoc081DhudRqq88mko1853JEED/ROSs8fEriOOc3MHfR2V95V3SPDwswuPhrMC7aLCwEfg/l9EUGkCyGEidy/5Xv7U3BARgKQ5XZsN0HFO4Rpg1l1AuamTZ9Ia3Esdsou824LRC2d9fx9Wnmx+ed6tWvgRWzpIJcVzlYG4vy+lwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L6lbj+8ZVRfUhgjnLEyZjTBKJEt8lULKwnRK53ecsDE=;
 b=WP/ZL3Aamnm2e5lf4xdZPCI0pNlL9gX44KEfXoj6tVtMHnjtYBK8IIQ9dJWbr44QHxqLDke2eZNjOqYvDNsMc4F/XK61GOk1iGFp+XdJHc0dkU6EqP9KyG7DKjqRwS4Vz08M5pOa8tKksdoEK5RVu5Z7ofChb4g7KU52Zk5rNsgD+vzXEDpjIYvO8Uy2Ch9suW6VbUn8nfesergMzq5pRF+ATJSrr4Oea9+wELBezF3708wH5KTFVcfT99JgmRVZKEQ+TW8hdSlo+nqzqTFNLfTgVrGWpqUaXeEtMH8ch+Za6FVxY/+12NdDgqiZ/Ku/oELhn3dTLPLWg7fNVsWFcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2455.namprd15.prod.outlook.com (2603:10b6:a02:90::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.26; Tue, 30 Jun
 2020 20:37:00 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301%7]) with mapi id 15.20.3131.027; Tue, 30 Jun 2020
 20:37:00 +0000
Subject: Re: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use
 hrtimer_range_start_ns.
To: Hao Luo <haoluo@google.com>, <netdev@vger.kernel.org>,
        <bpf@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <clang-built-linux@googlegroups.com>,
        <linux-kselftest@vger.kernel.org>
CC: <sdf@google.com>, Shuah Khan <shuah@kernel.org>,
        Alexei Starovoitov
	<ast@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
        Daniel Borkmann
	<daniel@iogearbox.net>,
        Martin KaFai Lau <kafai@fb.com>, Song Liu
	<songliubraving@fb.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh
	<kpsingh@chromium.org>
References: <20200630184922.455439-1-haoluo@google.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <49df8306-ecc7-b979-d887-b023275e4842@fb.com>
Date: Tue, 30 Jun 2020 13:36:57 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
In-Reply-To: <20200630184922.455439-1-haoluo@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: BYAPR07CA0066.namprd07.prod.outlook.com
 (2603:10b6:a03:60::43) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e8::15c2] (2620:10d:c090:400::5:d269) by BYAPR07CA0066.namprd07.prod.outlook.com (2603:10b6:a03:60::43) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21 via Frontend Transport; Tue, 30 Jun 2020 20:36:59 +0000
X-Originating-IP: [2620:10d:c090:400::5:d269]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 71922cea-7fcb-486e-dc9b-08d81d355704
X-MS-TrafficTypeDiagnostic: BYAPR15MB2455:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB24559D25935EE71F2C2B898FD36F0@BYAPR15MB2455.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0450A714CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oAC4+qBqMttmidb+b9HXxqsZIngJo1KJNYrtzsfarh5c2z4/gb/lnB4CTxjWlyCqehpbIRmfTVy3ET8aLp1pk1hkdH+IAcW/CygQiUIsVJ3dj1mv+cbjJRzysdrUeCkQQxnwGjeyrZ57miSky8vo/5yWWmu/C1IGBxV9cbXSwUROoyr1/U0LsAPGOjUPD+veSxycoN+052bxR8a/HugO323SD0yPKkZDj0tTTUEv04l8Nfd6v0y1OcZlcGo8qzjVEK+ySwEFUkSvVaSMODBugyq2eTUVMr2PTQA3zu/qoEe48g0hIXwQpPzoJywIGpntoqASnHGJtA+Mn9R2NeIlOE3RO1PXFenWNTyLziv0I19NgH3wYHbno413oe1gKr85
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(346002)(366004)(39860400002)(396003)(136003)(6486002)(478600001)(7416002)(8936002)(186003)(4326008)(2616005)(16526019)(2906002)(31696002)(316002)(86362001)(83380400001)(36756003)(66556008)(66476007)(8676002)(66946007)(54906003)(31686004)(53546011)(52116002)(5660300002)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 0BUA+l+tirTZaBZh1gbEz0auJQBkDrh1N1OtFPXnOtMeN1PkpbgSU33fS1QH/703bmbUuo6jdToBqoKrzRiQ8ks6IlinRf5RGncG8HD1cyvUUFWrI4ArpCj8/sWmXCP18I8xkl6Bm22V/2fd5buzT2ba+vc8H4KWzVAdQ7/BOng0HpsBBxoIUK6QcaUoIG2XCqvvJZka/Pg27vBhGdCk3AEfDBwMZ3Yp/ojNtj2wj4/9wUhaVpyOy6nSolYsdIeRBs3ozPRDxQCqZikwKOofFWVQOrwjydd+8a3Rg129W9atqYG3fG8fFkGj04Z1Ea5GQBTMmKkbPPwN/y/TCiE0uuaXF+566DYvVU3BQSVomLFoMn2sCUkvlCTXOILqWLEGtd8BSwJKox9Na3OXr3Pxnyg+i6K4q/xhoxrW6JcdT2qoJy2qIspXNZ6R2UUpAvORw8rrBcqAUQ9U7kqChWxpFLIXGdv5401RSwEbL22C/69l5qYw53nHZclzJX4mFXY+fgz1/Bv2UnwV6Msh/XAjsA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 71922cea-7fcb-486e-dc9b-08d81d355704
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2020 20:37:00.5392
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a7adu5mtmCX9KfqLp8Yci/YO7fN1EgCNeuKWWj13aU3OsjhdOvozjWuGESfXRpRD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2455
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-06-30_06:2020-06-30,2020-06-30 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxlogscore=999
 bulkscore=0 priorityscore=1501 mlxscore=0 impostorscore=0 spamscore=0
 clxscore=1011 cotscore=-2147483648 phishscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006300141
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=q827KWEC;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b="Ay/GKmIj";       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=4450ba6e99=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=4450ba6e99=yhs@fb.com";       dmarc=pass
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



On 6/30/20 11:49 AM, Hao Luo wrote:
> The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
> programs. But it seems Clang may have done an aggressive optimization,
> causing fentry and kprobe to not hook on this function properly on a
> Clang build kernel.

Could you explain why it does not on clang built kernel? How did you
build the kernel? Did you use [thin]lto?

hrtimer_nanosleep is a global function who is called in several
different files. I am curious how clang optimization can make
function disappear, or make its function signature change, or
rename the function?

> 
> A possible fix is switching to use a more reliable function, e.g. the
> ones exported to kernel modules such as hrtimer_range_start_ns. After
> we switch to using hrtimer_range_start_ns, the test passes again even
> on a clang build kernel.
> 
> Tested:
>   In a clang build kernel, the test fail even when the flags
>   {fentry, kprobe}_called are set unconditionally in handle__kprobe()
>   and handle__fentry(), which implies the programs do not hook on
>   hrtimer_nanosleep() properly. This could be because clang's code
>   transformation is too aggressive.
> 
>   test_vmlinux:PASS:skel_open 0 nsec
>   test_vmlinux:PASS:skel_attach 0 nsec
>   test_vmlinux:PASS:tp 0 nsec
>   test_vmlinux:PASS:raw_tp 0 nsec
>   test_vmlinux:PASS:tp_btf 0 nsec
>   test_vmlinux:FAIL:kprobe not called
>   test_vmlinux:FAIL:fentry not called
> 
>   After we switch to hrtimer_range_start_ns, the test passes.
> 
>   test_vmlinux:PASS:skel_open 0 nsec
>   test_vmlinux:PASS:skel_attach 0 nsec
>   test_vmlinux:PASS:tp 0 nsec
>   test_vmlinux:PASS:raw_tp 0 nsec
>   test_vmlinux:PASS:tp_btf 0 nsec
>   test_vmlinux:PASS:kprobe 0 nsec
>   test_vmlinux:PASS:fentry 0 nsec
> 
> Signed-off-by: Hao Luo <haoluo@google.com>
> ---
>   tools/testing/selftests/bpf/progs/test_vmlinux.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/tools/testing/selftests/bpf/progs/test_vmlinux.c b/tools/testing/selftests/bpf/progs/test_vmlinux.c
> index 5611b564d3b1..29fa09d6a6c6 100644
> --- a/tools/testing/selftests/bpf/progs/test_vmlinux.c
> +++ b/tools/testing/selftests/bpf/progs/test_vmlinux.c
> @@ -63,20 +63,20 @@ int BPF_PROG(handle__tp_btf, struct pt_regs *regs, long id)
>   	return 0;
>   }
>   
> -SEC("kprobe/hrtimer_nanosleep")
> -int BPF_KPROBE(handle__kprobe,
> -	       ktime_t rqtp, enum hrtimer_mode mode, clockid_t clockid)
> +SEC("kprobe/hrtimer_start_range_ns")
> +int BPF_KPROBE(handle__kprobe, struct hrtimer *timer, ktime_t tim, u64 delta_ns,
> +	       const enum hrtimer_mode mode)
>   {
> -	if (rqtp == MY_TV_NSEC)
> +	if (tim == MY_TV_NSEC)
>   		kprobe_called = true;
>   	return 0;
>   }
>   
> -SEC("fentry/hrtimer_nanosleep")
> -int BPF_PROG(handle__fentry,
> -	     ktime_t rqtp, enum hrtimer_mode mode, clockid_t clockid)
> +SEC("fentry/hrtimer_start_range_ns")
> +int BPF_PROG(handle__fentry, struct hrtimer *timer, ktime_t tim, u64 delta_ns,
> +	     const enum hrtimer_mode mode)
>   {
> -	if (rqtp == MY_TV_NSEC)
> +	if (tim == MY_TV_NSEC)
>   		fentry_called = true;
>   	return 0;
>   }
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/49df8306-ecc7-b979-d887-b023275e4842%40fb.com.
