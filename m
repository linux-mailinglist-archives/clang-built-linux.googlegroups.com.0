Return-Path: <clang-built-linux+bncBCLOB5FNZUMRBSOCVHVAKGQERRDLODQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E93D843A9
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 07:27:39 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id d6sf49735435pls.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 22:27:39 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1565155658; cv=pass;
        d=google.com; s=arc-20160816;
        b=WvduxwnphN9ekhF+YPWswHKLHti2GaCJzMBmVuHuuSxMYGrcZPbUoyRwxcmYCoCXhh
         vvN6W7UEV/o1RL2AYy0btIw+H03Gw2ODgD7gR0wBBgFZOIWNPNiqbkTle3hsh4DOMVW2
         kEsTpkNfe/kPXz/Wxj7xVMRzabyEfdj0jTWRtuJOIf0J2AyOwpQyr6iLFUev7Ax+UaqY
         d7EFqwLStcGqmCm3tbpbhcoqNwUT631i7Wa/5r75aYXi9xdimk+jQS2u7B1fWvdnI/BV
         +/goDzPv3AitZCNxRhfD6MnC3SWQ/ivzTS9aWHQMuM7CmSKvWe3uX4z+Taxn8TmKra8c
         9Nmw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=OsdmLUTfXiKXp3eq0E9lCrwI1BTv9+1V8MI99UUxmJ0=;
        b=pJRwEQl2MVXv7fWE5Kg641yPQdHBXUy31bwgzdVPJlmSJrYRVI+Lc42Rmi6wn/w79O
         uA7DPqY+ZY22WLWWTG4hdHM871xKPvTriLduipG64qC6kmOCisIETW7xU/BSt+5QVWf/
         KstqW6+MZgAuC5VkdzFlWB3azadUxOKPGIgFFN8CXMhUyvyFg+67IKoP3JZ/yJyl7RAS
         cBJe/juY39vHkdubP5IMAJhO2dSjXYLrdQUjAIVps6n+Tz3h18vHLCMe8VbSWG9tU8qg
         F94UsqafGJOPp8U1ZTz3QwwvT2G5Ug7QPoydC7wROvvYqyb9JKUbiyalWek77S9xS70S
         sSmg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=pJllOJXN;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=NdeLa4FX;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=31225916b7=songliubraving@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsdmLUTfXiKXp3eq0E9lCrwI1BTv9+1V8MI99UUxmJ0=;
        b=Q97ygeiK2S7DtkklbzdUqDwT+ZwoQQcThpsOHLMeD1QmahOez2GI0hZaq++PiRdr0D
         GsBZYxPwaUpmMisfTs2SL5mM4wapmelEn4E/Ju8b+roRX4NqOjDr9RBGepQLihZJFB7/
         zwCbOyB2ZnWJmG29RqQ3AvFuT7Hpec4o6sWfg9teOiktnVulezEQai4hhGVyfk466+t2
         vVQH/wCwTyoubCYLMe3EwDjcQ6kPsV5o6WnE0ZDQXtaxMcnyOay8gIOwPGw/ZnLys6vI
         WYqKBBYW2oSVF5QfnFVtuC/yUUanGezoLS3IGrrjx0gvsVB86K+S9pwFX+cAvkTxgkbE
         6DgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsdmLUTfXiKXp3eq0E9lCrwI1BTv9+1V8MI99UUxmJ0=;
        b=XZb25RbnLxw8xtxyNDT2rogG3pkszck4wFG6qOD1/kaocw+WcHLfiEeel8GI5yfnxe
         JwHpdP0s6vfaFZDWFjTuWA23POteQDFibr5iABuMUh8KE4fMGQU19kXqi1q6L2ETDJg6
         Lb1Id/t7gKtAwDtBYZcOYohlwv9HqkJL6scJ61+0U+4K0c+FWMR17Yl0geltu9uD2lwv
         JOuWDvlNYYticq9jqoR+WusVw9IStNaXe84jkMGdr5R6/a8JCfnI7kBPmx7xLvRdUrWq
         xlf0ST0qjMiglZ5VjEadz5bJqygNL2zo7e+lEcVx7TLc9pBHgHVSnP2/wOlt2xrd1aOV
         ZaPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPSVRAD86sSocg4B47Nh+GIUaGB2nVSwSALhsw8+RdWPkr7qXw
	JvyiHx/SvQbVK7/88nh2mpM=
X-Google-Smtp-Source: APXvYqzZR89K6rqvE7VTMMu3gBC9YZHascyCkLgcFURz6LTji3yqOtQd+RaIUvKh8iO6kVCoUGqLBw==
X-Received: by 2002:a17:902:9349:: with SMTP id g9mr6476558plp.262.1565155657816;
        Tue, 06 Aug 2019 22:27:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab8f:: with SMTP id f15ls25042438plr.15.gmail; Tue,
 06 Aug 2019 22:27:37 -0700 (PDT)
X-Received: by 2002:a17:902:24b:: with SMTP id 69mr6287148plc.250.1565155657486;
        Tue, 06 Aug 2019 22:27:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565155657; cv=pass;
        d=google.com; s=arc-20160816;
        b=TgUATDMUjGsR+N2+y2CHgULJ1KXHBV7t/opYNlGnTnMgAn7JG6V36GKCoCrC/KKBXE
         hmx50IKV+iAPKqY4+/oy9S0XRX3X7Ax11kTGUnK7Hh+rVA9Vd20BBkr5VDTPdHqCT84e
         HevHLiBZRYD7UJeXbu8f1iiYi8Ijl+WeFseCPQ9KHscCSil7m95ynlnUg2bA4YWcLVoQ
         a4mN2lzuq9fXsGnlQpDO56LhdS5ADpsR+C/A9igon4IdolvrzhA2ud7heeosRK0Bah9N
         IKzHVGmTu/EaNLMUXW94Wx8ZjMthui1/d+gYVOpEzqaCFutdkfN0kmZIKCahIXtq6S0L
         FV1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=Auz2SyhBIdNgmHLpPu2Nk5RQ1B9/BcNLeiOOg+cprTA=;
        b=naP4KRKVsxOSYHxgkz+VCgLLBidEutfapDH/yN9bWR8ZOHHFzpklqhK3JPgW1H185I
         KzYchT2GejNPaRydEpk84S7OAdAdsq/AG29LXHF2uB8M5hRPEeuuMnuo9ioGDZ2e31gs
         6Mg80yHj6DiDhfYGKGbJ6LIroy7n0D4KLQRwegY7LNngc7j/JP6ImLcXwMEUazQgJuzi
         VaO1G6mTssjvmnkkqC5F57iAvAtZGJmZ4LIRn3C+38p0LhjsXHNOCKgU/1s7sB4rrNu0
         A4H0OtA/ichHzvEWdxWStJZ2j66IfZCYovn5AaB//G1tqcpUIaJfcrVNbUFOTsiy4sCa
         egPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=pJllOJXN;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=NdeLa4FX;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=31225916b7=songliubraving@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id m23si3324022pls.5.2019.08.06.22.27.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 22:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x775OeZ1026264;
	Tue, 6 Aug 2019 22:27:33 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2u7kcu0t3n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 06 Aug 2019 22:27:33 -0700
Received: from prn-hub01.TheFacebook.com (2620:10d:c081:35::125) by
 prn-hub03.TheFacebook.com (2620:10d:c081:35::127) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Tue, 6 Aug 2019 22:27:31 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Tue, 6 Aug 2019 22:27:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S40i6QLVxMLC5gKwkl1malY+2MswvIocY3Gh1z9k6HKK8Nm4segzhjpTL04h62HDkr0+pBSSsJqvmGvGS3VAo3bn19E36eUWlukz5dyt1qtDEOXdKy9JH8JYwEDZhwHvWxJ9w1GBkOdBhwyInHwxKmxIuVv+HINEaeOu/LCCOAhHW7BnxrVo3VNHoJ4cnO8GYpbZ4OIzg2TUFoobWt9x6mRWWx8DhQolUoC+LjPikBZlCpMz25ot2DB060qVZWPlc/2wJ2mQFv2i1+deJvWXIAF+oJvKdq7VINp2nCSio5H9CAeXjZfmF2PiWrdMLuNolTbw61kABnzccrBMAt9iRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Auz2SyhBIdNgmHLpPu2Nk5RQ1B9/BcNLeiOOg+cprTA=;
 b=DRuU/tbnRQ8iX1ilRDjqBfK9nhskb0GjMliY6Af/mhgVYtujV6OHd6Y7xW23WFktIxtNZg5RPvgLE8/9PkhWG/oWHdFdtoIa0aYIKqFmKzm16u2gV8/HoVc3cUFOtUY5CKBvqSD8W1NWMhZ6hOtqKMU5ydTS4Eziin7rtnsQJbxRF3XrVgyFHh4x0RhDqCwfmA/oRWeWf6y2+frGEVt0KXWsjxlhKza/qMgX5cfM3MNHk4lv8vobD50ijhZK7cTKCcRBtlUrnJnuW7ctHmQrLqNtehKHnSaWMfLUKdgeIAO6USWmSkmfRcB/s04aZsEz+KR+xe4rbNNAbJEQetevsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
Received: from MWHPR15MB1165.namprd15.prod.outlook.com (10.175.3.22) by
 MWHPR15MB1472.namprd15.prod.outlook.com (10.173.235.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 05:27:31 +0000
Received: from MWHPR15MB1165.namprd15.prod.outlook.com
 ([fe80::79c8:442d:b528:802d]) by MWHPR15MB1165.namprd15.prod.outlook.com
 ([fe80::79c8:442d:b528:802d%9]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 05:27:31 +0000
From: Song Liu <songliubraving@fb.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: kbuild test robot <lkp@intel.com>, "kbuild@01.org" <kbuild@01.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [liu-song6-linux:uprobe-thp 7/15] uprobes.c:undefined reference
 to `__compiletime_assert_557'
Thread-Topic: [liu-song6-linux:uprobe-thp 7/15] uprobes.c:undefined reference
 to `__compiletime_assert_557'
Thread-Index: AQHVTKx5knBgmEeOg067kDBK2NB1kqbvKEQA
Date: Wed, 7 Aug 2019 05:27:30 +0000
Message-ID: <BBA76F9F-5B41-4C5D-A008-23F678EE6311@fb.com>
References: <201908021026.gxOYoxJj%lkp@intel.com>
 <CAKwvOdmQh3WJAYq9RKw3ihbL22RXJFcF84jMXh93ceTFdJwNNA@mail.gmail.com>
In-Reply-To: <CAKwvOdmQh3WJAYq9RKw3ihbL22RXJFcF84jMXh93ceTFdJwNNA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3445.104.11)
x-originating-ip: [2620:10d:c090:180::bf89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad11a8f6-2926-4839-f3b4-08d71af7f1ab
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR15MB1472;
x-ms-traffictypediagnostic: MWHPR15MB1472:
x-microsoft-antispam-prvs: <MWHPR15MB1472E93DF91A27D581275D83B3D40@MWHPR15MB1472.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(39860400002)(376002)(136003)(346002)(396003)(366004)(189003)(199004)(8936002)(14454004)(2906002)(50226002)(66556008)(68736007)(186003)(66946007)(71200400001)(81156014)(46003)(6436002)(8676002)(99286004)(54906003)(229853002)(81166006)(6116002)(66476007)(86362001)(66446008)(71190400001)(64756008)(33656002)(76116006)(25786009)(316002)(6512007)(53936002)(305945005)(7736002)(478600001)(6506007)(6916009)(102836004)(57306001)(446003)(53546011)(558084003)(36756003)(486006)(6246003)(5660300002)(4326008)(76176011)(2616005)(476003)(256004)(6486002)(11346002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR15MB1472;H:MWHPR15MB1165.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x/JNLJ2K0uzoCqxGnEJn2h896I+pr9gEUUEqamjIenRmOJSRhhfUfud2IWDAUkYbsO6n15Xo6ZfnrMETFaQfS3vamow6qVbPTLAG7HLWgBlV3O+eiSGS8n8+hcK5URjnrNTirhF5yIokg7RJl9x5f0EYmWiD7CEIR70YCcuVCnKZImWZ3dC587OvrxQ77YTUM3029TS7/vWwLICsvWCRlYLZsN1LiMfFim4XZyBVY6IzKkYF3tEcMPbVWSKXVaPS4igwKJYfPN8P8CeQkkv6yHIb4KD3HIy4ihaadJQSCxWCQbcATVCQecHNfSsFu/U5uV8NZUUl83uyQhtqdA5CVDYiiiuR4IH2UiERsY2loq/+Xhmq7KaMWv/iL/17DU+pk6tpnZWK6rpTT+hMIPRkki/PZMkHFKKmrPhwbDA91W8=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <EB7A53F7FA258B40AC92CF74032D11CF@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ad11a8f6-2926-4839-f3b4-08d71af7f1ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 05:27:30.8387
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: songliubraving@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1472
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-07_01:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=757 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908070057
X-FB-Internal: deliver
X-Original-Sender: songliubraving@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=pJllOJXN;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=NdeLa4FX;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as
 permitted sender) smtp.mailfrom="prvs=31225916b7=songliubraving@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
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

Hi, 

> On Aug 6, 2019, at 4:12 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> + Song
> 
> Hi Song, has this issue been previously reported or fixed?

This one points to some changes that I don't plan to upstream. So I haven't
fixed it. 

Would this be a problem?

Thanks,
Song

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BBA76F9F-5B41-4C5D-A008-23F678EE6311%40fb.com.
