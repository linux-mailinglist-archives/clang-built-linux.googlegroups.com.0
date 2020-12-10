Return-Path: <clang-built-linux+bncBAABBOOMZH7AKGQEQOQXX4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C831B2D64B2
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 19:17:29 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id d27sf1644526ljo.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 10:17:29 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607624249; cv=pass;
        d=google.com; s=arc-20160816;
        b=o0icm4CcdVYbwSTILnDC6XEruP2B4Tf5YzlDBkCZe3ab6Ymzam6I/qBLlGkRcJvLJw
         B5ZJee+7xmu1Q9RRvmjPoDHb2OFemQENJGdXGsNfUM9gp7YZiCaXWiuzT0d+PiEA51Y0
         vIJhO9xwfOTXIQ3qUZzzhMmianurT8PSCe1H4NbZQuWJ6pfROMC4z+DNf0X//mvPxlg2
         QYrBjlT5ESK8sXULAI0COj5/LwWNoqiuqcPMAqlvk/eOnSDM/zztRoCtrg1/gKIib16d
         R1DJHR5m6FuPNyqZrWX7U0dpj/6VILXFcpcxmyi6XqRcHrCf5rz81UKbOInBBe7cy+qu
         X+zw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :document_confidentiality:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=wlVoMb6vdws+FzVOOoEnZlJ6l/A4KzrXuKfev3NOM3o=;
        b=vO8gt4+DfjDOC7Ako9QsFDVSqo+5XCw8zQ4vIUWDsFkwwtNCb1BiSSUVTZPFVB2rC+
         k8GEsmP4sRxN+vXw8XLWlSzBDogwOm4vgLyJRtQctbycM74rKtAprx9CBOvlbo3zTlyn
         DotSuXP3b/Lwk6WaaAOfCqtECRIHAzvQ0m1DmM5aNWS3aMVdcMiyMeX5BaX0l/o/P8g9
         fRGVk5gPIzE+0YnUkMBxMkNZNbd2c1+5NI5CX5dq3asEK2MSpQbnuu5M5xOTXASHQ0vw
         rJrz7gh2iCtEE9V9kgijwrKk1as0LpNbkrObOcu0wQ93YtW7lCFNcoZZLbW7aKZG161Y
         xeRw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@siemens.onmicrosoft.com header.s=selector1-siemens-onmicrosoft-com header.b=CzdzZuwD;
       arc=pass (i=1 spf=pass spfdomain=siemens.com dkim=pass dkdomain=siemens.com dmarc=pass fromdomain=siemens.com);
       spf=pass (google.com: domain of erez.geva.ext@siemens.com designates 40.107.6.52 as permitted sender) smtp.mailfrom=erez.geva.ext@siemens.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=siemens.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :document_confidentiality:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wlVoMb6vdws+FzVOOoEnZlJ6l/A4KzrXuKfev3NOM3o=;
        b=pH0rdIWrXgzWwBXpWy41WgO6qi+dHkSkv9bdQ5E2c/2KHgTIF6Lgd7S+Tf3hc2OJjT
         8LdCmY0HGfO6f94FZ70ytvEQX+XyLJ3uLdKvEinpo5gG2RSAZ7LtoNfFUBtg761wZID5
         QhMqUGtgAzthEqZnIXBMSpC/M2qExHEDiPid++FARUg268qY0Rd41QvvRGK53OIKWDkW
         GgU/c0jhr0GTwjd51thqecqL2SyJY1p3TI400HcYf36tZUyU9aBIdzDy6F5lttQawUdN
         Vbta1e+0xc7KFDD5jvIBKDARMdHflEUkabxdFfDQkUmRdmlrHcFw6ZIQHoxhDTb7236I
         BzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:document_confidentiality:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wlVoMb6vdws+FzVOOoEnZlJ6l/A4KzrXuKfev3NOM3o=;
        b=PAj//HVE0rlONZzYK3cH6m4pIojnhmIUkXzJL1K/PhVSiDs1712OmdnONnm+9i93j+
         xjGievVoI/99NDswo4SSPteaFeipm0eoHbjRbR46/VhqzmNt/QmYJg2+pye5diQvghzJ
         NRcQyrIBG+1mpw+EEo6qFEC6fdl+8EZL2Oh0jcaED4L6t+yq0welXO7gc2hgzeRbBY2T
         2wDlHUiDc7xEU94nwb0BKsc04hcMR4SDECNET2nQF9YM3i8Hm7+kLAEomX7ziGAxEDpQ
         8Kr+nLjYie8h/sgwgewFqYIS6t6dJtIjzhTkRPFaOZHciC3hpIC5tFjaMw5MVVEK2UbD
         5LyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wzgtvMoPh/iMe8ttIIWScDKqwPFs5mtHqYZtKcHMWz6uShGd7
	3y/Geuj10a19hKDMyeMOlts=
X-Google-Smtp-Source: ABdhPJw+4E0NjUdn81TRTGmZ4qmRVKSCCP1nPfXb5k8bbELI3ymGYIc7Ho5Pe4iwxFvxOmgRmX9FbQ==
X-Received: by 2002:a2e:5cc6:: with SMTP id q189mr3644530ljb.316.1607624249361;
        Thu, 10 Dec 2020 10:17:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1386:: with SMTP id k6ls1193424ljb.8.gmail; Thu, 10
 Dec 2020 10:17:28 -0800 (PST)
X-Received: by 2002:a2e:9718:: with SMTP id r24mr3524694lji.20.1607624248543;
        Thu, 10 Dec 2020 10:17:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607624248; cv=pass;
        d=google.com; s=arc-20160816;
        b=NFD3qnOPgwd191A5Nv1DqsAb1rtbce4TfSskiHwVAgFUv4g7rpMJPr/OWkydqh1nnp
         g4ixh/jRAWMl85qxK/PJ+bA88hC26HvN9FvSnWXFZgtgVqM6NVDeAvEjUpW4JIgv2g+w
         am1WPFm2uM1wYcnE/Si0fJXoT6txja4h+1lPxa1aQfK4vE2uog3gRvpTNl7RLLPBTcGg
         cB2GFz8dMJKdsAtMFdEoVciPU5gAw7j/TPt9Jq9b2DQG7d14r+yZB7ta7MwS5gcPEIaS
         bUws7PWRIxt9Z67U/ZK09qbDt3hnO7IwGy8BUqmHwm4ATLkspQgAkNYLoKA/J4NFiI+z
         c6Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id
         :document_confidentiality:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=tCxCdGZnHQYZ1osj0jBr1b8U8pP4ENDfyjrf6dXZjwc=;
        b=nEwFZCdwiVzdWBSwgAwI8RzgxdvM2h/XZVwxy5ag7sHI8oTjbbYZsweG7RlqyRt6rU
         sFYkMXSbNd/zufyf4huaMJ5OOMjtCthKrRe/lJT/O2jxXXrZ7cwl/BSZbtpmg/VxIb5F
         LA8fU7mIn9TWGfFLunBJLnUOsdWO4YEvGlZUH/YhRTSXXrMPAN0l9YxcP8gNvrgAl+nx
         F70yl1A43ZWW70ub7QN8TbJA6D0pqyY+9tuZI7v6wOyqwPvRZim54C1xI93/UIXzmGDf
         +RiFFksvxXPPJiOc5VrgvZ2cEmSlJKtqzdL6uoA+x1q1AlgZJjb67slfVJvNOensiWAZ
         075g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@siemens.onmicrosoft.com header.s=selector1-siemens-onmicrosoft-com header.b=CzdzZuwD;
       arc=pass (i=1 spf=pass spfdomain=siemens.com dkim=pass dkdomain=siemens.com dmarc=pass fromdomain=siemens.com);
       spf=pass (google.com: domain of erez.geva.ext@siemens.com designates 40.107.6.52 as permitted sender) smtp.mailfrom=erez.geva.ext@siemens.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=siemens.com
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60052.outbound.protection.outlook.com. [40.107.6.52])
        by gmr-mx.google.com with ESMTPS id l8si220963ljc.2.2020.12.10.10.17.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 10:17:28 -0800 (PST)
Received-SPF: pass (google.com: domain of erez.geva.ext@siemens.com designates 40.107.6.52 as permitted sender) client-ip=40.107.6.52;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LQMzW8acptK92vQ799oI8zHlSZyZWO1W2RM26rUk0FfCfPJr2nYSCN8V7bEAP3qCcR+ZM6Btl4MrVgmqtHPhhf7U1wbZbGlsqXPUjZeVr8DH1+WvkgExDQN9WC0m5conE5n90WpCGNkGOxOvoqauNUPNA6J2F6GoxTu5iSstNOlXydw1mKabQarrRwS0uo4bkTqLdOcUZCm7S0L3B+zBl8XE77BCYk/wVDvSnrFgB4TzCroTQKeS7fnnsQiKI0cQ/sC9uCCxonSEXOBgR9J7+cC8Sl8lFck60XWwpOKNSzMhSIC42QpLs9VoYh5xNniPA6KfflgzpmHLVpP8m2OcNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCxCdGZnHQYZ1osj0jBr1b8U8pP4ENDfyjrf6dXZjwc=;
 b=O/Ko0iwcVub9X+L5W9H3Nkcp+jFQ4FoSc36cB1g7GIdE3o9xP0qBFPdhjkA74qXpx/2C9lLEg68t389NHh1wW+RdD0kQO8Z4I2XI8LDWAVlCRb97uQfFVpXpqAbm74mpW+jaBh9PqHBFdpUCImUMxSeXpTHTDwiFKDm1E4ERuK68sI+6pJBV/47br2yTNWm6k/zRj6/CDwvg+Ydhl3TH/u4LGWQQEIFIzAB4tgMSZZyLWFTFP20AeWg4zyDwFHg5jx9kNnhjfUME4JFdRz/OX6U39RuHiU5zt87j/heYgP+0TA4cOE+jK7tyEUIAMCujxQ6+3Bn7IA4NKDSnG3QJkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AM6PR10MB2438.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:52::11)
 by AM7PR10MB3496.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:13f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Thu, 10 Dec
 2020 18:17:25 +0000
Received: from AM6PR10MB2438.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7c1c:5b4e:ad40:b4bd]) by AM6PR10MB2438.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7c1c:5b4e:ad40:b4bd%6]) with mapi id 15.20.3654.015; Thu, 10 Dec 2020
 18:17:24 +0000
From: "Geva, Erez" <erez.geva.ext@siemens.com>
To: kernel test robot <lkp@intel.com>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
CC: Jamal Hadi Salim <jhs@mojatatu.com>, Jakub Kicinski <kuba@kernel.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, "David S . Miller"
	<davem@davemloft.net>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "linux-arch@vger.kernel.org"
	<linux-arch@vger.kernel.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Arnd
 Bergmann <arnd@arndb.de>, Cong Wang <xiyou.wangcong@gmail.com>, "Sudler,
 Simon" <simon.sudler@siemens.com>, "Meisinger, Andreas"
	<andreas.meisinger@siemens.com>, "jan.kiszka@siemens.com"
	<jan.kiszka@siemens.com>, "henning.schild@siemens.com"
	<henning.schild@siemens.com>
Subject: Re: [PATCH 1/3] Add TX sending hardware timestamp.
Thread-Topic: [PATCH 1/3] Add TX sending hardware timestamp.
Thread-Index: AQHWzjjS+JtwwiLyJkKEw3ObDmZ1g6nvp7+AgACdOQCAAB/egA==
Date: Thu, 10 Dec 2020 18:17:23 +0000
Message-ID: <AM6PR10MB2438372B8E1E528A359A64E9ABCB0@AM6PR10MB2438.EURPRD10.PROD.OUTLOOK.COM>
References: <20201209143707.13503-2-erez.geva.ext@siemens.com>
 <202012101050.lTUKkbvy-lkp@intel.com>
 <VI1PR10MB244664932EF569D492539DB8ABCB0@VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <VI1PR10MB244664932EF569D492539DB8ABCB0@VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-DE, he-IL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_Enabled=true;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_SetDate=2020-12-10T18:17:21Z;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_Method=Standard;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_Name=restricted-default;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_ActionId=edac9743-7858-4bc8-bfa6-868eef5c53cf;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_ContentBits=0
document_confidentiality: Restricted
x-originating-ip: [165.225.26.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 390151a9-a279-4692-0b9a-08d89d37d7f5
x-ms-traffictypediagnostic: AM7PR10MB3496:
x-ld-processed: 38ae3bcd-9579-4fd4-adda-b42e1495d55a,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR10MB3496D1F470AEE4DF87612D3EABCB0@AM7PR10MB3496.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G6KE0FZ+4OJ5JlHAhtmvRtkE3cu6KVqMKl2B/qwPhCYLBAGjenWu7XyaioeJrqTKYIrRRkG0SezevbWgGgNRwe/p63YqTAVPcEMpxhmZKvnn13VN+67sa1lOPrtO9nBtzi2zEpA3kd/vO11l5uy7oL4pPI44eHESebG7/fmdeNuWnV3lEKv+zgkGyAThaBzh85WTec2MFKm9xWIVpNbsGUNQs1rUvxUCEuR2F+jjFcN2v/3JjhedcD9o5Ea0TBKH7oMgphdLZBHx5TAbpph3Aq0imaOwh1GoqrVJNPvk2yZMFrV6s5tEoQM2FNnCnjs/Eh0w4SIMSd8n/qz0/G8c/321X+HzSM8wM4bjJLlxuymieJQ4SJyA/Ew9mnU+eTrs8XMV+mk2G8wWrPiCpWNukz+lcUJsL4M9Q7gK6NctaH1fV49EKF4kRWBK35/n0HAi
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR10MB2438.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(396003)(366004)(136003)(8676002)(55016002)(7416002)(6506007)(7696005)(9686003)(55236004)(2906002)(76116006)(66946007)(66446008)(316002)(66476007)(966005)(26005)(64756008)(5660300002)(186003)(86362001)(71200400001)(33656002)(4326008)(8936002)(54906003)(66556008)(53546011)(110136005)(52536014)(478600001)(107886003)(83380400001)(2004002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?UXpaeVo1T1lmcW1wczVKOHg2OU5YWnlvVmVFTk1xb1hMZDBNRDdPVU5oZTZ0?=
 =?utf-8?B?U0V0Z0ZUc21PWmwxYmVDbW1NRHc5bHMvWGx2bXZ6YlQvQ0tpMVIwSlo4Wkhx?=
 =?utf-8?B?aWVWUGtBUkR3NTl3bHQzTGVXTXFNeTI1Yk4relRkeWVoNU9ZYVZFZEJ6N3Zp?=
 =?utf-8?B?M3hHUHRmakVtb0JvQXJ3RUdjdDBhQm9HakdlRFhBREhld3JTY3pmN2ZzZ0tX?=
 =?utf-8?B?TkZOellra1hUTUlVL3J5b2U5cVl2UUQyVmlIdW1kTVRaeDJyVm1pUSs0d3FV?=
 =?utf-8?B?Wkt0UUxwOU5wT0NuZThUaDB1VUx0Q2ZZTVp3Mk1NT3M1TmJJZ3ZsaExvbEQr?=
 =?utf-8?B?YWRkekg0MzEyeXN6T0UrM2NhTDVYUm5FQjFJWDBlN1pkT1dmNmZhSm16cnhh?=
 =?utf-8?B?ZHRvaUQ3cWZGaHdYVTFjbGViOGc0cWhRRS9vcFo2MkxWRFU1MDZIQ1JFZlNq?=
 =?utf-8?B?ZzlMb2p3NmhHdDl6WmgxUzZYSXgvc3kzb25QdUkxMys3b3gvejJkRGQ4Tm9j?=
 =?utf-8?B?YjB0MGpyMzRUZFZWYUs3K3Q1dWliUXQzZlZhdS9vZjY5c3RJQ3VteENpS1Mv?=
 =?utf-8?B?L1R4bVNTSmhXamZ6MEU1MTUrT3VZY2pOeTZkQ05Qc3BsSDB3dkV5UHFxZnhJ?=
 =?utf-8?B?OFNhVTk0c01TSCt0T0hUNTVoMFNqdExaN2tZMlRWZyt4ZUZEN2ZseEVnQ0pO?=
 =?utf-8?B?ZzdvS3poQy83bU5WVnB0bGVtQ3RrTW5RNWlkWEFITU9EU1JscXlobC92VERw?=
 =?utf-8?B?ZkJMakRlbEFVZC9UWjB4QU5iOS8zeFNONzRsZEJiaDY2OTByRXJGYklKcFJX?=
 =?utf-8?B?bXBLYTFTRXVVKzNhR2h0S1JwSzlqVkcvZ0dOSWVYVDhtdkVXRXg4eXZTVUZm?=
 =?utf-8?B?Y2Q4SFBEajZDamZkNldYbGNiMVoyU3JUNTFrVXMwUG4yaHRDY2FuNXZaWVk1?=
 =?utf-8?B?Tmtta1FFbU16MFlJN2gvc1RNRVFXYnJmNmR2RzJFaHIzb3JBY0hoNDZScjRV?=
 =?utf-8?B?ZUJ0QkpOcmU5NG1tVEN3NVdqTGs1T1AzWXJLOXZrd0pqM1hMVHY0UlZWZU1x?=
 =?utf-8?B?TEpVREFuNVBHeFJ3QWpFOHhRVW0wazVteE5pNEEycXowNTlna2pJbzZBNFNZ?=
 =?utf-8?B?VEtRQWdZVG5SV3JhQ3RFNkJpcFErWllob1cvY1ZIR1RhekxZMmdzQ3R4M05z?=
 =?utf-8?B?bmYzdVdmZSsyMGgzR2g3czQwS1FlYW5iM0JVT2Q1cjZ1V05mQ2VkVGovN2ts?=
 =?utf-8?B?QkVmdzN2L1IzWFZoUmRjaytXZkFmNklhdGdEUVZZdytuMkJ1SVJydExRMGZx?=
 =?utf-8?Q?3X7yqpA69pXcY=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <195A145459202E44BAC0355BA153A5E4@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR10MB2438.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 390151a9-a279-4692-0b9a-08d89d37d7f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2020 18:17:24.2899
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: St4sk+3twgL4G1sDPC77ttW26jvTzx5cogTQFXaoo+p/Or1w5/0yYciRH2dlmmhfDtmRA/ZXjZvJAolRyTJ4Didnplkk4uSeuRcWVfEYVIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR10MB3496
X-Original-Sender: erez.geva.ext@siemens.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@siemens.onmicrosoft.com header.s=selector1-siemens-onmicrosoft-com
 header.b=CzdzZuwD;       arc=pass (i=1 spf=pass spfdomain=siemens.com
 dkim=pass dkdomain=siemens.com dmarc=pass fromdomain=siemens.com);
       spf=pass (google.com: domain of erez.geva.ext@siemens.com designates
 40.107.6.52 as permitted sender) smtp.mailfrom=erez.geva.ext@siemens.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=siemens.com
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


On 10/12/2020 13:33, Geva, Erez (ext) (DI PA CI R&D 3) wrote:
> 
> On 10/12/2020 04:11, kernel test robot wrote:
>> Hi Erez,
>>
>> Thank you for the patch! Yet something to improve:
>>
> Thanks for the robot,
> as we rarely use clang for kernel. It is very helpful.
> 
>> [auto build test ERROR on b65054597872ce3aefbc6a666385eabdf9e288da]
>>
>> url:    https://github.com/0day-ci/linux/commits/Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
> I can not find this commit
> 
>> base:    b65054597872ce3aefbc6a666385eabdf9e288da
>> config: mips-randconfig-r026-20201209 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
> However the clang in
> https://download.01.org/0day-ci/cross-package/clang-latest/clang.tar.xz  is version 11
> 
>> reproduce (this is a W=1 build):
>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> Your make cross script tries to download the clang every time.
> Please separate the download (which is ~400 MB and 2 GB after open) from the compilation.
> 
> Please use "wget" follow your own instructions in this email.
> 
>>           chmod +x ~/bin/make.cross
>>           # install mips cross compiling tool for clang build
>>           # apt-get install binutils-mips-linux-gnu
>>           # https://github.com/0day-ci/linux/commit/8a8f634bc74db16dc551cfcf3b63c1183f98eaac
>>           git remote add linux-review https://github.com/0day-ci/linux
>>           git fetch --no-tags linux-review Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
> This branch is absent
> 
>>           git checkout 8a8f634bc74db16dc551cfcf3b63c1183f98eaac
> This commit as well
> 
>>           # save the attached .config to linux build tree
>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>>
> I use Debian 10.7.
> I usually compile with GCC. I have not see any errors.
> 
> When I use clang 11 from download.01.org I get a crash right away.
> Please add a proper instructions how to use clang on Debian or provide
> a Docker container with updated clang for testing.
> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> net/core/sock.c:2383:7: error: use of undeclared identifier 'SCM_HW_TXTIME'; did you mean 'SOCK_HW_TXTIME'?
>>              case SCM_HW_TXTIME:
>>                   ^~~~~~~~~~~~~
>>                   SOCK_HW_TXTIME
>>      include/net/sock.h:862:2: note: 'SOCK_HW_TXTIME' declared here
>>              SOCK_HW_TXTIME,
>>              ^
>>      1 error generated.
>>
>> vim +2383 net/core/sock.c
>>
>>     2351	
>>     2352	int __sock_cmsg_send(struct sock *sk, struct msghdr *msg, struct cmsghdr *cmsg,
>>     2353			     struct sockcm_cookie *sockc)
>>     2354	{
>>     2355		u32 tsflags;
>>     2356	
>>     2357		switch (cmsg->cmsg_type) {
>>     2358		case SO_MARK:
>>     2359			if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
>>     2360				return -EPERM;
>>     2361			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
>>     2362				return -EINVAL;
>>     2363			sockc->mark = *(u32 *)CMSG_DATA(cmsg);
>>     2364			break;
>>     2365		case SO_TIMESTAMPING_OLD:
>>     2366			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
>>     2367				return -EINVAL;
>>     2368	
>>     2369			tsflags = *(u32 *)CMSG_DATA(cmsg);
>>     2370			if (tsflags & ~SOF_TIMESTAMPING_TX_RECORD_MASK)
>>     2371				return -EINVAL;
>>     2372	
>>     2373			sockc->tsflags &= ~SOF_TIMESTAMPING_TX_RECORD_MASK;
>>     2374			sockc->tsflags |= tsflags;
>>     2375			break;
>>     2376		case SCM_TXTIME:
>>     2377			if (!sock_flag(sk, SOCK_TXTIME))
>>     2378				return -EINVAL;
>>     2379			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
>>     2380				return -EINVAL;
>>     2381			sockc->transmit_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
>>     2382			break;
>>> 2383		case SCM_HW_TXTIME:
>>     2384			if (!sock_flag(sk, SOCK_HW_TXTIME))
>>     2385				return -EINVAL;
>>     2386			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
>>     2387				return -EINVAL;
>>     2388			sockc->transmit_hw_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
>>     2389			break;
>>     2390		/* SCM_RIGHTS and SCM_CREDENTIALS are semantically in SOL_UNIX. */
>>     2391		case SCM_RIGHTS:
>>     2392		case SCM_CREDENTIALS:
>>     2393			break;
>>     2394		default:
>>     2395			return -EINVAL;
>>     2396		}
>>     2397		return 0;
>>     2398	}
>>     2399	EXPORT_SYMBOL(__sock_cmsg_send);
>>     2400	
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
> 
> Please improve the robot, so we can comply and properly support clang compilation.
> 
> Thanks
>     Erez
> 

Update,

I use the same .config from the Intel robot test.

I was trying to compile v5.10-rc6 with GCC cross compiler for mips.

# apt-get install -t sid gcc-mips-linux-gnu

kernel-test ((v5.10-rc6))$ /usr/bin/mips-linux-gnu-gcc --version
mips-linux-gnu-gcc (Debian 10.2.0-17) 10.2.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

kernel-test ((v5.10-rc6))$ cp ../intel_robot.config .config
kernel-test ((v5.10-rc6))$ make ARCH=mips CROSS_COMPILE=/usr/bin/mips-linux-gnu- olddefconfig
...

kernel-test ((v5.10-rc6))$ make ARCH=mips CROSS_COMPILE=/usr/bin/mips-linux-gnu- all
...
  CC      init/main.o
{standard input}: Assembler messages:
{standard input}:9103: Error: found '(', expected: ')'
{standard input}:9103: Error: found '(', expected: ')'
{standard input}:9103: Error: non-constant expression in ".if" statement
{standard input}:9103: Error: junk at end of line, first unrecognized character is `('
make[1]: *** [scripts/Makefile.build:283: init/main.o] Error 1
make: *** [Makefile:1797: init] Error 2

Erez

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/AM6PR10MB2438372B8E1E528A359A64E9ABCB0%40AM6PR10MB2438.EURPRD10.PROD.OUTLOOK.COM.
