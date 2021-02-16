Return-Path: <clang-built-linux+bncBAABB6EKWGAQMGQEWNJQARA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F1731D28C
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 23:21:46 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id x60sf5655539ota.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 14:21:45 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1613514104; cv=pass;
        d=google.com; s=arc-20160816;
        b=naEO2MUt46juzYVgbkTOKd3izETSGjZ4Gu9ui+NWfrz3KbCrXC4Vtk4VeMk23MWtJD
         tCpdHB1VpltKFeEO+UME+uYYFy5hekRDzXOBQknKzptzj3anGcINpoXzfHCRi1SCwqn8
         cxjUGkpAt5x/BSXopUJwkDTnnviVRq/1aYvh7FA30MIyXOSEHn5sOvM0zOFXZbPVc0zc
         Tg05LVNGGG3/oS9vdvOH511hT7qDGLi5/GzUcxrw9oBAfUaP3Ad7TmDfShamkuoSp4E8
         ZAMmu7nNPajy4rvxnV2jL0SdQje+P+K5An+h+814kbhVPwBtaCloS13m5DcpdwJ9HI53
         pFPw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=MUVytxNFpWi9CmzZhUV63zhryGjbkPc9s9vcXpSgbn4=;
        b=OuYlSPi8ZbSVfoTtZgTugR9wZSbd6rQTzvNzb9kemz14/OCna8CT9hn09Mnh0CsT/4
         5ed7M7G9a9+fs3hu8GvIcKhQOXOfJbsrOWR7ozRClDMKXYNSuqOTmVehruyR5H3OoVKP
         SkkWR3MhZoFPw9odPmOf0TfyzZSz0uO3tUQaNEBgepComYXl7UzU7UepVdXtGaclnJBx
         bHelktNZv5xI97NoERRU1+YeYFLFARHlKrzzv09LULXLNG597CeyULJzJEGi6y/zGG3T
         xG43KqtLfyzDn7aOV1Brobk5Tgew6aLfOaWdHtCTGq9UHgF0+py+bV/W0AdOCiZvey8V
         T3fw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=sD0hCbjH;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of namit@vmware.com designates 40.107.93.47 as permitted sender) smtp.mailfrom=namit@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MUVytxNFpWi9CmzZhUV63zhryGjbkPc9s9vcXpSgbn4=;
        b=BbwbHk24u1X0MdGCWwBlnAnW+aMluOXSh6puXi7Csj6vxdrzDyQ62wkPpZ2smbUCeP
         gYXutZ2oQEJsn6wRq7VpPLnA1Ro7/LaYDnMYAoj8eLto3Q4Zv8JemqpdRe5P4oC6OS5j
         AGqbiMC7k37LxECE2oo552hh28QhYEzqI8//8S/E0+F5E2wtiLilLY75+hZKbv6mQ+xO
         rEVBZKQ5T41CiSkOEhgJgBQ6rnKimzQpeauunpENUT1S8DcpQfzaLPPwmWtpdUntAKZg
         22HUBX8oDOSlBSxETb8DS0y7RQI4VsH23sBCcUasB2BhC9guVAZYizOnY67zxBJf8N1t
         IqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MUVytxNFpWi9CmzZhUV63zhryGjbkPc9s9vcXpSgbn4=;
        b=VXnbHhbdjT63/297w5MoV5AqSeJzpVYSKaBbj8LbtWdJ5fJr7y7E0jRDSFlT4aZdTU
         R52PB3MaINR929vsxzNvl0Ggnrsw52nZreHqSUld+A4OO7vxaRSy1fN8px6WmDTTAYWK
         vC7BRfiSqObpSWW6CTumIILVepnl+80K81j34tg0fw5n89luyBO3gQJdgGgeKs/6+3sk
         6o6GvQIqrTtRax+8rbSfcWOlKlU/Tp4lTTXmPdP0W2Oig+Hmp4SqXlhEHbSz4bGojUjg
         9ofkTvhBN8k7Ws7i2Y5Ot+Ur0ybk2kex18nfFzIJLB1cQ7+IHekLgQenrGYh0g3muMUa
         Mjgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tBHaSjzOR1YL9anIFsFhiAOzdicZiI1XEiwiWqUFFrD/iuCIb
	aS7iQg72eKt/YzxsU9zs+p8=
X-Google-Smtp-Source: ABdhPJyR3AFoyIb4A3GeTGzb/wFXdujS6bq7Sj/QrJ1S5q+b4BI80z486nOLPDXNNkBY0zSJE+Nb4Q==
X-Received: by 2002:aca:1c17:: with SMTP id c23mr3979760oic.132.1613514104578;
        Tue, 16 Feb 2021 14:21:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d755:: with SMTP id o82ls21692oig.2.gmail; Tue, 16 Feb
 2021 14:21:44 -0800 (PST)
X-Received: by 2002:aca:3d85:: with SMTP id k127mr4019169oia.157.1613514104299;
        Tue, 16 Feb 2021 14:21:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613514104; cv=pass;
        d=google.com; s=arc-20160816;
        b=01ag67J92rSXS139udsJWYDJkA+PAF112SVpSVpUpsVZ5P+cdVo0VvO7Sd16bwfjNg
         CppoJmzfNFbXE/EKSHegwsjr1EdUp3+m2osKsZW6H+VHDGoF1X0OghehotLEc2pE2IPE
         On8+r8mZi7npD/tXiYXBrAPUJaSSkzyX33NpGCNB6XxxosnlB60ge7+lhYx6Crln+/ur
         cer4XqdQAw2yp5MA1xAi/NnQ8kL2+zoKxAS+5A+lbKF3ovEddWAlnUa1a1fOedZ9djEz
         emzoJAzyD9hyXi/t+l2ZeD7PZqm2OlinLO5qFzzc9n12upUqB/D20PnO50qVJBox4Kau
         gGEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=E+ULOCJ35ucohaIGHVdIbtOTnwr8jMoX0dj+FAFafng=;
        b=glyJnv23mv8x98lITwzAAlrG06EF3h0CcYP0GtqIMhHLf8h8mk0rgFPQosHst7o93a
         hEix87fACFehcvcxcEYzjGIMaJrhy4yHRRHer7p6EPk4Du8YR2l3cJeDenqCy7OM3+cn
         v7LoduDoiqSl9OZqwOelFcnxaAHD6Yudv6Ph3HK2dNv6LG9pBSf8TzmhmJ7aH3G4Xlkk
         MEUgteiHojlYqMefJDRiPup9MfoA34De5wS7pdJPzJcNsR0swyNBuf4MSH4RNqSOZOk+
         JOj7rMXyf9k45rO+LIxC+w8+ocfDsQ91bSP7Ht7+CGyEO8MKfTvIj72iK8GlA/ZVaXbV
         cTkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=sD0hCbjH;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of namit@vmware.com designates 40.107.93.47 as permitted sender) smtp.mailfrom=namit@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2047.outbound.protection.outlook.com. [40.107.93.47])
        by gmr-mx.google.com with ESMTPS id b11si16401otq.0.2021.02.16.14.21.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 14:21:44 -0800 (PST)
Received-SPF: pass (google.com: domain of namit@vmware.com designates 40.107.93.47 as permitted sender) client-ip=40.107.93.47;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eYxWbkVNjr3aFHQjE9bByyjx1gsfjpg7GxZCgXJF9+Qz7jEtWjJs0QUXCyQzCENChBv0RJ+c7jAQcApUygTEBBqCW35kapoOqFz7iHFPRCzKFU7OpcNAgI7ljG0JqKW/JxWo4WHN5m3zjWaNHpy/koHy1a2dXyQiYnfLBKWIAt/jb50gqgatQLLBrV+0uFhuUeRoUR17WHfWEoZFG8oRdcWn2VW6xElumtXtU6hJ2ccLB+YSx4hYI8JxKXXLmScoLb/jCEdWvd4H7K493MW/5yzle81xT6u2qHF5n7yhBBZ8upVLvxHzh1tXpltSedogr9jmwe76Vc4awH6lJko7lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E+ULOCJ35ucohaIGHVdIbtOTnwr8jMoX0dj+FAFafng=;
 b=HGN4JuO3tc1/9XMm3iurknJEgcuEJ42m5Tj0/0jv5L35xMHcS8O2UkKNwUg5DvlfBv08djukgb4HZFGrS6CSXNAKzqxIB5SoaDtaFHJBmoNz+GVNt32TcITg0f0HEMWnwya1tphxCCSHs7di/vxCl/r5i0zlYkdYw3KYQ80QB1jTa4lYYDHBegj6yTNUAa9fDWcCj8SzXJji6gVzgUqUQ8m9hvgrilUh8J6Yu3r9f9wjc81SQenAYzWrrQvLpPzma9EJTSRGz/nGK+egOxVmw8KOaN+CglumTAJ4ptjaJmEQNEOhoEeVaZbCS/PnJXSAAnzsi36u/Li9ASvhxWlqTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from BYAPR05MB4776.namprd05.prod.outlook.com (2603:10b6:a03:4a::18)
 by BYAPR05MB6037.namprd05.prod.outlook.com (2603:10b6:a03:d9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.11; Tue, 16 Feb
 2021 22:21:41 +0000
Received: from BYAPR05MB4776.namprd05.prod.outlook.com
 ([fe80::ddba:e1e9:fde7:3b31]) by BYAPR05MB4776.namprd05.prod.outlook.com
 ([fe80::ddba:e1e9:fde7:3b31%3]) with mapi id 15.20.3846.039; Tue, 16 Feb 2021
 22:21:40 +0000
From: Nadav Amit <namit@vmware.com>
To: Peter Zijlstra <peterz@infradead.org>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Juergen Gross <jgross@suse.com>, Michael Kelley <mikelley@microsoft.com>,
	Dave Hansen <dave.hansen@linux.intel.com>, kernel test robot <lkp@intel.com>
Subject: Re: [peterz-queue:master 387/476] arch/x86/mm/tlb.c:1172:18: warning:
 variable 'info' is uninitialized when used here
Thread-Topic: [peterz-queue:master 387/476] arch/x86/mm/tlb.c:1172:18:
 warning: variable 'info' is uninitialized when used here
Thread-Index: AQHXBKqIw45VyB/7kUie1M2X8+4YPKpbWtwA
Date: Tue, 16 Feb 2021 22:21:40 +0000
Message-ID: <BD716CFD-B416-4E91-AD80-00A3D48C327D@vmware.com>
References: <202102170535.jLJDFNhR-lkp@intel.com>
In-Reply-To: <202102170535.jLJDFNhR-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [24.6.216.183]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49cb32ad-889e-4b70-4d36-08d8d2c93bf3
x-ms-traffictypediagnostic: BYAPR05MB6037:
x-microsoft-antispam-prvs: <BYAPR05MB6037A3D3C53617C59F2EA12DD0879@BYAPR05MB6037.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:216;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WzDGYWRPChKZv6QgH7h4HIYKuNE1uYvbRu37r8L4pGH299RjmAQHDtwZf8VR33XqOoWQ1ERvkAabxGl4/hkEmRcneTx3zWiS4Kn1vFE+h5Kys7Tb2DdjY2Zv4zKMfLqhG2Y/0I3j+0E3fp+NEXyqeAE2/Y1R2eN3sOsLGCfLHecsT+Uy4pirYjADQRt6lJF9Gcav8V0OpasUleIz/2KQJE5w9g7UsmG6rIvj26bY/6gH/v8vJf56X7XOkNli5dNsj3bnCOwbRfJc1n8O8LlQCYcMSTvxjP0mC5qODeZC++aVQawiI5vxZ2/qkR6htOkBX97g96PaIKvGbqmpw31oOCbwQsB/18p7RVFAwkWzgC+rP8v8VoEJaCFmWZoDKGhNmIxDWXn1g2zyZISqZ3UFqXL8/hPMpYg0F8PS16tkzUna5/uaFomzuKNWARyxx3EMlPFXn0Zq7H1pKrUEp+2ADuDYuWx4nNv63ZXne22x4KEgShX3sK30ZJ9pdzFTJ1hPoPYfIh3JBd7PD+bTu1wvTpEIdhwo+xjsF1fVX/7G1Rmt+a8M6OU6XdB2DCWuet4UoSzVCkegiuo0iP+tJw2rig==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR05MB4776.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(136003)(366004)(376002)(396003)(36756003)(6506007)(66556008)(2906002)(316002)(4326008)(26005)(76116006)(53546011)(478600001)(66946007)(8936002)(4744005)(8676002)(64756008)(186003)(6916009)(86362001)(66476007)(66446008)(6512007)(54906003)(5660300002)(71200400001)(6486002)(83380400001)(33656002)(2616005)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?gC5lLpdV3KYZ4UNsvyrkHO2/oFwpqJxKFEWnsJRLH7mFZBIIEGpowip2NNQ8?=
 =?us-ascii?Q?FzJN336kg4cOR43EFe9bhEB48ka4gsbYjqkzuEZX2PSGBqN1mrBTkVAA9wYk?=
 =?us-ascii?Q?mz+3cWnGIBHdV5b/8xchiKFHjIJD5wXyeZmDFYLs0PM83YVkHxiLqz1bnk6w?=
 =?us-ascii?Q?qVDsQhn9sm2UDwpcLT1N0VGsi8IvAHIV4XxlLAHv7ITx/+/PloZqfBEa2o0e?=
 =?us-ascii?Q?X8ORwlySxn7DGjXO0odNdKpgtT4lCOVk6UvWjWP+V2Hovrr2/Rmbs+QEWwRC?=
 =?us-ascii?Q?r/ZcLzVUcEfrWNsGpuXDbQalzrngsSsK0ydLLfOeQTKDEcVvhyoH0HdhIhdz?=
 =?us-ascii?Q?+t6Zhs3+ebMjrEwxnNcs9IdbI5BvVkZI7YgvuVUPc5wm6M3LRm9Rsf1JxYpZ?=
 =?us-ascii?Q?1Jx3VksPwYky2qH369cqM1eSpXR1EbwaTQEqXCVFgf502bjWbtCrs6sZNu7d?=
 =?us-ascii?Q?UlIqP85ydjoLyYCt1uKWYDmM3crWiwnxfcibmUlM4HMQyExFB8Syz6ORRb73?=
 =?us-ascii?Q?XaGi2n3uYSXtdHp6EBNDhJodt8y5j2PAoFM8+WPIuaMB2hO7o3+QgcD4tQZ8?=
 =?us-ascii?Q?OZ8xInVDG8cHFvpajCBmoRt0hFMaKcCM3peAns198cdW4LyL5T73xh+TuZ7K?=
 =?us-ascii?Q?ljmpXURchAqe0xgBGjR9cPJsHC29YR3txC71xrtn/glKGPUN9tGrscpnyt4Z?=
 =?us-ascii?Q?L2KEKq1f9cQw/rP1V44RQYH8wwV4rlzB+bzpRkKLup/KmDGiG4Xu3x9DX8ng?=
 =?us-ascii?Q?/qV4oZu+NG82xewf2s2lig4+ZryKP71eHLvjl7IMt9+piZyXjsnQ7u+/4BC+?=
 =?us-ascii?Q?neLGm/tXa6sX7aKBo4/1SZ8Rgf3U/1m+x2lvQvqPYDLMZNaqmlFyoLZl9KRs?=
 =?us-ascii?Q?2xm3dM4pjBLL29HrwxhsLeJcaXYYXWYjZorXOw2lOgVq9wx9izhG5/5lGzPX?=
 =?us-ascii?Q?k9kcExRwfm8fbPFLj14arvcRVZ0KOPN1+xNMarUV5L2Yesax8AZ1mrOdgp5W?=
 =?us-ascii?Q?TE3zKrHvXkUceDu86ZGd0SseUQYCZ6BoTNWweDV968UmqgS0Ztj5HDFrkKCX?=
 =?us-ascii?Q?hX5LzO/5RKFH938AGGsHmMZKARu1IZ3noDA3w4poVCf4Hyb12D5EMd1Cu7Vj?=
 =?us-ascii?Q?HKGhTFF6MHj5ODFz1Egr9Cr0gr4yYQDGhi1seMndXxBQGpwwMC/nc/r9EOTP?=
 =?us-ascii?Q?23qV5rMUb8wKhzVm0BKZA6USKcPovY9nNIQYNo+hzBGqg8xtRGqmw8NfKIiW?=
 =?us-ascii?Q?J/BZoxNujloCaP0Oo1WBktihAyaIlrR8OcLXQ4ylGjde7HhKkayFadFJYHKv?=
 =?us-ascii?Q?+awKDbM7ZQuJtEJLptUwoSsh?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A1B83067CBE46C489FB2CB42B4D21627@namprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR05MB4776.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49cb32ad-889e-4b70-4d36-08d8d2c93bf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2021 22:21:40.7483
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NGxjI/Qj7Q1i62Nl0sIxnWAqWtYHKz5s/0gJWyjzm+TZHEFQEyQ8/w39UrsBvb3XHa8bZIa8j7lFK4QDPauS9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB6037
X-Original-Sender: namit@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=sD0hCbjH;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 namit@vmware.com designates 40.107.93.47 as permitted sender)
 smtp.mailfrom=namit@vmware.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
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

> On Feb 16, 2021, at 1:26 PM, kernel test robot <lkp@intel.com> wrote:
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> arch/x86/mm/tlb.c:1172:18: warning: variable 'info' is uninitialized when used here [-Wuninitialized]
>                   flush_tlb_func(info);
>                                  ^~~~
>   arch/x86/mm/tlb.c:1158:29: note: initialize the variable 'info' to silence this warning
>           struct flush_tlb_info *info;
>                                      ^
>                                       = NULL
>   1 warning generated.

The call to get_flush_tlb_info() got lost in the rebase. I will restore it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BD716CFD-B416-4E91-AD80-00A3D48C327D%40vmware.com.
