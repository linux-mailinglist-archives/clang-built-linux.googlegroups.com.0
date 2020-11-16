Return-Path: <clang-built-linux+bncBDNMJTNWWEEBBRGWZP6QKGQEWQEUSWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 882D12B5375
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 22:12:37 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id c19sf2224145uav.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 13:12:37 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605561156; cv=pass;
        d=google.com; s=arc-20160816;
        b=HYagHioUN1RqyyQczHxq+Qks0aFYa4+Jdb49D5oadOI7HUfinLPBV5j5AZHhoaB2/2
         X8N5zLmobKvpA17PB4J150JsqcTbrlRtPAYWhb3Ne3MGnmJNcCt/i5IS1jnpZtzxOslS
         AmDIavd+mshAvBeyWFFEQC2aEvtrWJy1qpqhmIv4Vdh3dcPwrFN/7wJNIhms5OF7x10w
         WqBRVPVkuz1/euYQZLR1IFIiwEnmOqMuRYQVEh1yeUNG73SO6BskpllKyWUojMQIhsui
         Wi4mxbaoZYINKRZAV/AdOuTiDdGKP8erbR6ke7jrRvRXnuMnH+RyP4MU6AvplHmDJMZt
         lUSg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=TCclQZyCcC5jD0IFAIYVYPFEmN6t1BOFeMHn/u6v9hQ=;
        b=XmZLZSz9y1NI7UZbEYJrlCMX5TXSkeBgpaI72poh1Ji1hnRkXt5qLaD+2w0vhDCjRP
         oxp4NGPMLYYRt0kuN80Qp8yD9uvg2GZkHRcXZSQyvjYJezTE6afX5Xryf+MY189gvOmC
         nwxSLVG+hqjOcuMd93RSj8Af+FCIOmSXvII91N6KPLoJyYPQ8T7wMO2TEs/Ft4ZrlU4U
         QubQDRo6g5PEZSAFNU6FJEgIeci/YRJnT3FYA4o1JiIZBDgEsxsyA4kDh48aW5YUXpQG
         EhiizB10EB9pqgroYDCIRFJtw/Dbs0HyvvQN1hkffBVgu7c9vvjsqz731yzyehEv1VMi
         ffSw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=Fgu4ngqZ;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Jris96DE;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=8589ae5622=guro@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=8589ae5622=guro@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TCclQZyCcC5jD0IFAIYVYPFEmN6t1BOFeMHn/u6v9hQ=;
        b=OIez1yAoKijpEIZSRSYc2RF6LZW5eASPiLZvWgjIC4pSaTOolUT6KS6agM7VRNCSYh
         /29cOxnkofp6z826Mic7FcWaBsNIpeIr0tWZ2cOqUWQ1d4wL53wyY0E8GD0wGKxTkLuY
         hcgh3sIRpy+wuCkpR/PjPCfztTolgy6r2gRiYDn7XW8+KxIfRjJEEiFwVBo2WoziRaAJ
         BaqvYvKkfWCiGoAsBom8LhOMXm8ecf6X8sq13o1IGDWysh/X0N9gb/8lwpuAxun2Gzi7
         1j60jvmkmDErifgHYVfB8UlRQYCibGYUM5k5l7wnjaLuQrD0b08fiZR81MqTj1LEZwha
         OY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TCclQZyCcC5jD0IFAIYVYPFEmN6t1BOFeMHn/u6v9hQ=;
        b=bOpFfdhX6sM+yQmnSjaZ2k0dTpUa/+07E9zZwtH6wLxtSQFCnh59EsbLFoEbD44Q6c
         dmgm466aYXppjDUgaHfjKzKcLWAmk5QY0Ot4Fp+hCY0zZvXA8VykvpFiqh3Tls0ECSMf
         0sO9UobagI0MCueWzBFX1okZrnFWF/DaQcjxNHjME6yIC0QPGIg2nGg6m0Aib5c5kHTy
         eZjjJuaKx78IMZS1YtcMuiyt/snUBkc9njRfsjqyZEXT/KJ2/iuAV7174izg1uocf6y7
         NjHunRtEqjL6ggTDXpAEgaPsDqT7Ymleomw7RMQmZHeey6vDQG3CDbiwDeE/U+Q/tdqn
         18GQ==
X-Gm-Message-State: AOAM533MKMG8NLgPgfH7GOYljTCIQTJHI/n7uQh1KH5roWzUPrK9iv3c
	SWT6LySZqVmDxXbENKnBc+8=
X-Google-Smtp-Source: ABdhPJy5oVwSvof43d5Dql4+X6vStrp0bKmtaFwzFVqMv4bbx1B+ILJU4xPnpc+ODcc6fbdyPJazhw==
X-Received: by 2002:a67:f559:: with SMTP id z25mr9634777vsn.60.1605561156248;
        Mon, 16 Nov 2020 13:12:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f905:: with SMTP id t5ls1872703vsq.0.gmail; Mon, 16 Nov
 2020 13:12:35 -0800 (PST)
X-Received: by 2002:a67:e955:: with SMTP id p21mr10201249vso.4.1605561155793;
        Mon, 16 Nov 2020 13:12:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605561155; cv=pass;
        d=google.com; s=arc-20160816;
        b=L9cJVv2s9V+BN6i3SaRRkjPU/PIH0ftKt7B1B7S2WoKpf7ZKjOopBvmhhB2X4AuLd6
         ZoKJ8cfEX8bTf1eTipKiMwl2TVk8UrybOQrFMZRGTDfadHdPL9m33tJPH1gwvl9doAbj
         6picphloeuAX7OiGMtNSIMLM4fqDnN1U/ZusNbKBQmAK9/CbUt6AmgsRBtspUvRvYN3J
         TV9I77tdLekRs/sOwARMocxbKQ9s9GZScPMH7ZVS3gJi3L/dYyUJNJcIl+g7zl4ibU5Z
         0KsZ/RlHwJaJ/CPlTWaj3EypEsC+fHLDqLXMqfWNKiVtA1l1tfMAXzuHbgMjenDegyIv
         BVOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=o1iZuedaHVX9QPpoa8Tlvfg/x2o+U3Mjh57arAG4JDM=;
        b=AkErTx3nkZgzxHmxVrl6qMQhrdMNqc+sFzD5etfPKAuvPOPUL5AAedUhnVYnhVD5qb
         QXnhXDtkUNt8Aoh0waIzuBIOuufVnF2TCeYT6vWZ4pqTkHI/CDALzNSfL+yDAiU7F77r
         gxv76Zw5fqZLmhquKEHTcFb51X7Gzj0kY/M2S0P0AIksPhmdRPyuLFW3yPpaMSIiVvr2
         htt7LY7qVJk6MReRXMVZc4rh42sdp9EO6xi50oxtZa+Jn4m87UtQOOHuBc5brYDmXUlt
         kqJwKr/f/d4ipyoCo6DGncSeJUUq0JFbmFP6E6hL+l5Vy2kV0Y/kxO2CxRtFOyutxe9j
         0QEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=Fgu4ngqZ;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Jris96DE;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=8589ae5622=guro@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=8589ae5622=guro@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id c124si1216055vkb.4.2020.11.16.13.12.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 13:12:35 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=8589ae5622=guro@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0AGL9Vvp022514;
	Mon, 16 Nov 2020 13:12:32 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 34u09gy4nb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 16 Nov 2020 13:12:32 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 16 Nov 2020 13:12:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHeKYWA4zaqivzPgjK/wIzlQDnky+rhoxQOQrW5ancpnFsWL1zIuiBxBqpXMug/rue3N3qvBAgM0NmjZxsvIjjrMpe8VnquH05TLKCNq9lZTYbVenTn8zzMWeeFsCnTGzAjoqcSDmP5jXa/GInGm8+BSK8s2h1o7wP/mes6Y58IXhWhSwS1OCMQO6APNne2XialaKxSYCMN8FVBAt6wYirdxrnvO2TPljjuMjgPkzfNm3w5XFCU3QHY2HWsQwJV7cvkRyH2uCzFXYlLdgAONm1vggGtqQ2+GnX+55ZHKIop2+n7JVvYX0CEJCoN5akramuWaicSmY9BbwM+fmVZ9XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o1iZuedaHVX9QPpoa8Tlvfg/x2o+U3Mjh57arAG4JDM=;
 b=GOZOJFhde+qamoP9yAHZORQNGCaXiXwRydErw9A5E2aKmlBC55EA0j7rTvZVHeYKusInm5o8HNSEhxQEhq6DTseKAiBIHNyVjgap1KulEFpBU6ZxcHohUVW8Kc+61Zz2+wxQ9BXbh1QuUPs56c2y083qbSHm+JYjz6ULr3A4nJYbqRe74/iZG4+3ykiuimYb0JfpuUxaut340u8r61MXKlDE8TcWGe//tN0eFmLAbuL5g0vMdk8MA/CbJciqwHPNBLKs63/rFCaNJqmYpY/yAsj1FQcCU2bloelcpb+2PTy7/C7jSOG2N2XxiGdSK6W1Umnm5H9f6sQbbViGqKjsTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4136.namprd15.prod.outlook.com (2603:10b6:a03:96::24)
 by BYAPR15MB2710.namprd15.prod.outlook.com (2603:10b6:a03:153::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Mon, 16 Nov
 2020 21:12:29 +0000
Received: from BYAPR15MB4136.namprd15.prod.outlook.com
 ([fe80::3925:e1f9:4c6a:9396]) by BYAPR15MB4136.namprd15.prod.outlook.com
 ([fe80::3925:e1f9:4c6a:9396%6]) with mapi id 15.20.3564.025; Mon, 16 Nov 2020
 21:12:29 +0000
Date: Mon, 16 Nov 2020 13:12:24 -0800
From: "'Roman Gushchin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
CC: Johannes Weiner <hannes@cmpxchg.org>,
        Andrew Morton
	<akpm@linux-foundation.org>, <cgroups@vger.kernel.org>,
        <linux-mm@kvack.org>, Michal Hocko <mhocko@kernel.org>,
        Vladimir Davydov <vdavydov.dev@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
        Nathan Chancellor
	<natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        <clang-built-linux@googlegroups.com>,
        <kernel-janitors@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] mm: memcg: remove obsolete memcg_has_children()
Message-ID: <20201116211224.GA45468@carbon.dhcp.thefacebook.com>
References: <20201116055043.20886-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116055043.20886-1-lukas.bulwahn@gmail.com>
X-Originating-IP: [2620:10d:c090:400::5:42f]
X-ClientProxiedBy: CO2PR04CA0202.namprd04.prod.outlook.com
 (2603:10b6:104:5::32) To BYAPR15MB4136.namprd15.prod.outlook.com
 (2603:10b6:a03:96::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carbon.dhcp.thefacebook.com (2620:10d:c090:400::5:42f) by CO2PR04CA0202.namprd04.prod.outlook.com (2603:10b6:104:5::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25 via Frontend Transport; Mon, 16 Nov 2020 21:12:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eff15417-37c9-40df-535c-08d88a74537e
X-MS-TrafficTypeDiagnostic: BYAPR15MB2710:
X-Microsoft-Antispam-PRVS: <BYAPR15MB27100A0B3EB919E2B6061D47BEE30@BYAPR15MB2710.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fJcwVOEEwB6X067BDJkKsdizni1sIhDgG/Rovafz2ZxQI9FwxT6yWr9kAJoYaifB+i/VhiwA8YdovOjzfyOZ6Z02G/uKug6Hnhb9VzdlZzN8SlIEGLia/GNVP6A5GP3xxnopAgjTXq69u1wYGCVwjy6oF6VPobncwO8+zWqJZ9TXao74so9SVMKcyNxYlHESmsYB2Zi3T4fAagXQKsybQwHqr9gx3KgLW6l5xvk/tXh8lt/TseNBygDcqjMkhItlnrSJ5btTC7JdeLhK2svo1MT6FlU1zZ5tW1710+DJ8rIxwd2xAU/53jDuXd4Oydzj
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4136.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(376002)(366004)(346002)(39860400002)(54906003)(316002)(7696005)(52116002)(6506007)(66476007)(66556008)(66946007)(16526019)(186003)(4326008)(478600001)(5660300002)(4744005)(1076003)(83380400001)(8676002)(8936002)(33656002)(9686003)(7416002)(55016002)(86362001)(6916009)(2906002)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: Me7guhPtroKjVxPTKr0uc8prD0LiHFnmhRmO3W8WYh5ZsSwqWL5tbc3oH0z3CzW/ZhNrmns8sFIqvlpnkYtSJ4dWj01VY35S7I9GRxeNujxEe5e35p31zI23ESHh5tTYH8HWvTHS5A1TQGnknK43lZWnRjprxFgBsl/oCdB+Rct06X22tB2gz536hmwbuy38HsbPdSVEr83SEj3sDwjlQuDsO88rk+EliWRQ9frvoueJwTExYJFCQUVNzClYZsg50r87Mh4O3v8r+BrmLuFO26yl3QpQqxjV+Ypfyxz4xVYSrHBJ3760bfmMh6azgpjdVVPG30k7nR/Kt3PK+JAR97JXKUsImaznkuTTHvZDKC5EnaNIdNv5rHfOD6XTPhDJbEBIyLHAVsgTlM9qU5zgpDqIbWppnlc445CKKXL5yJY5IUPSWMhL20H7df3IoJUKzoxdOUIaJD4O642CvW/shuBonGkHctIl/HYTeUAoSVJ0j2MGEdgbPdWjJoF5BCO4iZTQNADkzm8Kq6BlIOuOs6Og6RffF+6eK3RuoWtZGEtaIa7Trdcj8XGzO8quS9ESQX3esKmqNkqGjtGtiFuB7K0DJ6BV/PU/OweQ1PRtJUVWskaCcN++7BtPK7Q9zIDQqN8esLEz0JO8atpzXKLU5kxiWGF8peyJcaM6G0PVdts=
X-MS-Exchange-CrossTenant-Network-Message-Id: eff15417-37c9-40df-535c-08d88a74537e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4136.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2020 21:12:29.5881
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CJ4mKEihpNadE6xtI3JP7PPwhKiKIlKmKpFtUiAVH/Yk7FwEvt9v8kH0WyKIxLp7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2710
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-16_11:2020-11-13,2020-11-16 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 malwarescore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=623 suspectscore=1 mlxscore=0 clxscore=1011
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2011160126
X-FB-Internal: deliver
X-Original-Sender: guro@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=Fgu4ngqZ;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=Jris96DE;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=8589ae5622=guro@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=8589ae5622=guro@fb.com";       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
X-Original-From: Roman Gushchin <guro@fb.com>
Reply-To: Roman Gushchin <guro@fb.com>
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

On Mon, Nov 16, 2020 at 06:50:43AM +0100, Lukas Bulwahn wrote:
> Commit 2ef1bf118c40 ("mm: memcg: deprecate the non-hierarchical mode")
> removed the only use of memcg_has_children() in
> mem_cgroup_hierarchy_write() as part of the feature deprecation.
> 
> Hence, since then, make CC=clang W=1 warns:
> 
>   mm/memcontrol.c:3421:20:
>     warning: unused function 'memcg_has_children' [-Wunused-function]
> 
> Simply remove this obsolete unused function.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on next-20201113, not on current master
> 
> Roman, please ack.

Acked-by: Roman Gushchin <guro@fb.com>

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116211224.GA45468%40carbon.dhcp.thefacebook.com.
