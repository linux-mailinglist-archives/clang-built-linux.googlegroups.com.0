Return-Path: <clang-built-linux+bncBDIZTUWNWICRBNGMRGEAMGQEJIP7SUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EE93D9F86
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 10:26:29 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id i16-20020a0568080310b029025cd3c0e2bdsf2708952oie.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 01:26:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627547188; cv=pass;
        d=google.com; s=arc-20160816;
        b=T0YPV0nd673K4evstjaPon3rSOsyuOy9eXwQ1xp0G1niRuTfYQYyqtAcaa5jp+BrlT
         BBnlt8RNyirOcfxQ4nxysVUilyqfiFB/yarKSTv3wOcBfHBRB0VlVn6mb2E//97F8aKR
         iWxQWiA2zOXFE+lYxbTbd68WaU/VgbUxdBJiLCZTaIrDgRpoyuGMz5apr2ITJzfUB2Ds
         26r1CioIM/te8BxgAQxr+JSzh0FLKy2WNU9WWNK368O8V4RyH61Kb9WrmSaA3OkcuaNv
         0QKfbHqVN44lKOb4oXZiVq9VuAYIybsHKVpnb2LtqWcYJzpfMw3OnHkWgk2it506pEpW
         hmYA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=PIlz9CGG/fcel6CFtK6QaAaU0kSpiHIvqeOTKESt36U=;
        b=h4VZEKJEBuZT8GEjrmFHaj7Z3+ZYDbtVzMtjPJIXtezWhmBJsrLj06xb45rRcvz0Y6
         jr3eEYohmslhcfeAA19plC1xgp7wIejq1CTdE9HF0RuzIWwI5KV759Ie4S5fdxsDtX4M
         xIhuTA2UXPEQasmEKQmMmYkQ2ErzegUflwhazEAjbCmDWMVchfqBorGfa4aX02i0v0oc
         wX8lkchxQzIm34e4VjOIXxoTGt8iEorfg3W9gigqJ9fek/df+1iWUvGtmv9SQVzmkB4O
         cztGz9n2xk1zhFDJFpCZ/kItFS+aRkw3CYsbvFbuPRoXSOxZyUiSvkNkXODLaiebXMhY
         wwVg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=e7fIvJof;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=t6dOYKYf;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=O7ftGf+R;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PIlz9CGG/fcel6CFtK6QaAaU0kSpiHIvqeOTKESt36U=;
        b=YrfPREXoC/H9KNNYDR+korgEioW5X4C59XS2lvVbVRSEjMEAzKrQIIdUsLOo2MlVPl
         hq/5W7s+kVyo/2HmD98Rex+WDycdG9aaDtJclUlNpy4+DQjdqjWUcHg9Z76ZAVNqLSxR
         IUSvm51c3GsSpqZkh4MK4Q6wgko9FBZYNS0rgIEFGOq4GBEgQpewBuIU4y8sNUE1GQFn
         kk+ckETX6Wjb8vWJS30sg7slbsyaBSg6fVgEhm5dB3Bkxz+zKb9Z75KmG0US2dxKKE+w
         bygP3RoId0poFFkVD9Y1ff8p5Y5MAizLNgB/+rrUyqGsilCdwJTrWUJp/o4sJFDQSmaf
         nhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PIlz9CGG/fcel6CFtK6QaAaU0kSpiHIvqeOTKESt36U=;
        b=PUt9c9inwOA20VQ+0pWq9Ke4SSteZA5odAzyXmw4rPRtWFqk52oIY5saZomD1wZ7e/
         Ozusrl5KxTid9BhKHOGzu9y8qri3jt9p38kaTPkjBwQy2wiwICU1EeeSqyU199Hs6yVQ
         xUgnrOhSTKo/MgMdh52P3rIrRPWs/j36s39cbWcUHa56oSnaXAoDEmX6Zhwpk5+SSmNn
         EapXP3jdzX5+L662hVsCmjYyd4oyfMKk8fFZZzJbqtTxw6/3uUnJC/LEP31BWDvoLqeC
         oKjv+l6cC8LZkny3K+UVO4H0IrIz/9WGy4bs/v6Xy9rbjqEdL0FVznPyv3yY1R46hpht
         t6YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b9oWeu7u97RQXh8FfaareEGC4jUtJM9IskfTnOzeZF9bvXBA7
	eloDNqnBebzHbxJ6b5oCn3k=
X-Google-Smtp-Source: ABdhPJxEe2krP0eogVikFsYz0fOpz+reCPoYTyWEFlDuK7jVp6jRO0U6CSUEgwv0m2FEIb65nHKAVQ==
X-Received: by 2002:a05:6820:228:: with SMTP id j8mr2239773oob.3.1627547188562;
        Thu, 29 Jul 2021 01:26:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb5:: with SMTP id 50ls1239129oth.6.gmail; Thu, 29 Jul
 2021 01:26:28 -0700 (PDT)
X-Received: by 2002:a05:6830:b:: with SMTP id c11mr2731131otp.149.1627547188214;
        Thu, 29 Jul 2021 01:26:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627547188; cv=pass;
        d=google.com; s=arc-20160816;
        b=HExFUpdCkLj7gAeQl7wckuDdL+iHUpjOkC/YJIhhpv795NQZGYhZ1B3FGDzmgSdfF8
         swpaafveHchIvT6KEiFJBR4YV4N03ntTjSs5T+8CFZOtvWUaUz8exuX3RdC5u+ag7Gpm
         PnGeFmblGzqQOQuwu+C30s2jeczgXh/NMktdAVqS3iNgFaFqXBRWlXfZ+ifpKuwiXMaK
         2fH2B2Reme+4hYDueSdLlMiIcE36Txr1dY2Ak/bApMAKgwJjW9Hwv90BElM12CVOt0w5
         NrRKj8fGNBorO2Tc/zsrFez1Y/r8Fs3qiWmKAlqK+Dw1CbgMKMdrTi5PyXAi3EqXZrjO
         caaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature;
        bh=kyM+opt8INuvqnS6uFUM+1Zh9Cw45KythbT+VDLvPp4=;
        b=it8I+/k0mEqNX+0b572OwWtKa4rt6VnOToyaesh1Jih4jENFm4fgHdJUTMiPmTvmUN
         D0m+ZJa2xL5lGcM0S4a7Q9Il8YfX8l5cHJPzFoMyC6oXLM9CJbEG0IRqOpukRHBW/Z8f
         DZRwTutoYvTanQkCzvwPoyBBPJCP2IGRrYffG1fpM3oMEySjucYMNuloFNXNws0ygeRf
         FeUW0suyq2mf5R1U2WNg6BwmvVrRH76EOOQXflIJjFdpPadJTIo5Ith28ke11mE+wDrT
         Fc7ZX5XkfViwNC7dmHMOplTGHXCdrgD61fvpRGq1a/E72OmLubYkWFfrHwTGlnRmBIWN
         OsgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=e7fIvJof;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=t6dOYKYf;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=O7ftGf+R;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id u9si125200oiw.4.2021.07.29.01.26.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jul 2021 01:26:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16T8D4Wm018537;
	Thu, 29 Jul 2021 08:26:27 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a3cdps9du-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 29 Jul 2021 08:26:26 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16T8Pcx1038516;
	Thu, 29 Jul 2021 08:26:26 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2176.outbound.protection.outlook.com [104.47.58.176])
	by aserp3020.oracle.com with ESMTP id 3a234btr5w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 29 Jul 2021 08:26:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nrto59E0Wq8/vJU2jmLvGYQvn5M9nGrj1DoEN5PNGnTQa4C1x/mVCdNFRAz4J6Z8M4PyFgpmpSYv0iYgZVfHFH5G2SvxAIF0zbIYVT+2NvBkLmfptrN3ss3rbCc7AAn07u9mcPLAJmKd9CxYUlkBrJ7BJcMz53hmFv7Qsh7k/vKmmNfcvOWshFS9pEvOWRRr8jo+Ysowr4txYyquBftLvacreEOPWW6Fumb91KzZPlBPcINobGSEl00yGOp5OsDZ1PO9vLAZOwJizjpLy39WxWv1wpbQExug3Cm8w1E0XQZI2lrzhEmQwD/1mhk500dxMy69KjCLcNg5FrZVg3qKkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kyM+opt8INuvqnS6uFUM+1Zh9Cw45KythbT+VDLvPp4=;
 b=ZiH6Db8W/6ofzbWV8iX0YKR1PxNk1w/S8SR3os9TtUsfxeARTzs1JkqsQgMz5b/aFi54vUmf8uMEyNEYX/8SAhvzcIXaFLCKJBr8CpUebRamaRRYvMKe8XJ2D7h0lnHGZl6t+6nWCqzwWtPt/EpASXed6dAE5LEv44D6bzm8WRkNpWw4uAtxh6ulPQkCnNq0Os7iodG7ARBgPe9ElIobsTroIaiUl4zXa+j9+qY9nulg9/NMiVQNinekLAODeMbcZLtE034yHbOWlusfdgBNxkwEnOOOfboSc0DONc+GjVQ7R984OES3LnJ8EX/OrnKTzJfzRVmzZnI3td7VTvnepg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1552.namprd10.prod.outlook.com
 (2603:10b6:300:24::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.20; Thu, 29 Jul
 2021 08:26:24 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4352.032; Thu, 29 Jul 2021
 08:26:24 +0000
Date: Thu, 29 Jul 2021 11:25:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Keith Packard <keithpac@amazon.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
        linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Message-ID: <20210729082546.GY25548@kadam>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-3-keescook@chromium.org>
 <20210728073556.GP1931@kadam>
 <202107281630.B0519DA@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107281630.B0519DA@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0026.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::14)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (102.222.70.252) by JN2P275CA0026.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend Transport; Thu, 29 Jul 2021 08:26:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87684f9c-81ad-4b85-2b60-08d9526a8d3b
X-MS-TrafficTypeDiagnostic: MWHPR10MB1552:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB15526299AF160B228C50B7198EEB9@MWHPR10MB1552.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ziPfKNc1tVZELjg8XUks0dI5k0ZBLCvgFP1DLBdX4FGCEJmZWeqOcLvYvII/b5PdggMWnpIO0jXLTpDlpujZ+UPBR1yCujeZM94ypDqWIsPmJforK6JopsEniNIDG48guiEkju/dExlBMoRwzK/9xqsutRozkfJZTcXVHYf7aux0Jd9lv3fQMHBwK3U5q8qHFUX3nSU+TcjUPX16znZeVlFjHo8t5u/5lzXgmHHXZQosNHF2NXgf35xPssExEy68mOYgPjMBC+7sIgoMGHv1w/hQIkqNE+ePTU+DdJ0fS32V5S4k1aceDSp6JIGJrpbLpWENo2jEViyZ0MwkM+fJSxjemAO15Xt7gIx+Q9pqk7QVcw8TxkcH9rML2V/wnhyZHE3mZrdt9Kxbn2XbI7pc1UcVM+RG6GrNNTDS891uYudoLJnKQGAgo5cgS51TrWC9VrRz8tQkU8x4zq1IEu5chdiqIFbZKSYE1SoH1jaLrEkGYHJAHs88dgkAJPJEdP4D30vwDrBwt3RQdEnJWHkj/ajSY6DIenqvuyhUoIz0uYfKPKPoxuCT3kQH703Mmx68BrN36zwMwpkIiRmODjxiLZ4u3C6tAXCfvud91ctcViMTOnt5Cl7/0iAm9XrTzD5O6nmVnw3WiylGFvR/Zq2n77A3kUzUoHBsO7Peun7m3JEIfwPN50ySKGvJBnJk5ykHAXox/4K8/tg5TYNm7tp+5A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(39860400002)(376002)(346002)(396003)(33716001)(9686003)(55016002)(478600001)(33656002)(6666004)(66946007)(7416002)(6496006)(52116002)(44832011)(26005)(4326008)(956004)(6916009)(186003)(54906003)(316002)(66476007)(86362001)(38350700002)(558084003)(38100700002)(8676002)(9576002)(1076003)(8936002)(5660300002)(66556008)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RwA9D+eMh1VTnsHWOu6l+/ddd98Jib2pN0mqIMjIDQwJyP5VT9370/oFchfC?=
 =?us-ascii?Q?qRZjrmHh/JylOjEoP26Av+ohi0oXTc/WZ0LJ1rLNZUU5EBXTssM2UMIQm/hW?=
 =?us-ascii?Q?YzGpAVfnhua6DINEBIx9KtrhA3770ua21rrbmHtrGUn9dTtBWbOyyVaQR56U?=
 =?us-ascii?Q?NYpZ7dtbxv6VrWsTKFwoWBrXYa1krgtc3jt/X+Cs+qhBexkoT5uJD9B9WzC4?=
 =?us-ascii?Q?bLdPKNt5+ajegMGbfQwdlGJzQA3232dqr3miT86pobqAzvbtrJ07mW2ROY2s?=
 =?us-ascii?Q?nW7YtHpuLTvujAkc/N4Msu5s4dsjsXwt5GG7UJFWYaZKNYDsXLI5c/PvyYrw?=
 =?us-ascii?Q?0VjSvHhCqNAZ+M/ZIwWwmhZw6AnuizkuNAw9Q/oe4/wBVy+SVxPK/1UkNhMu?=
 =?us-ascii?Q?mdeHm+FUe6oG2t4fzVbrvMsRjUQCD5GchofYRNb6rgxJfHEm9EeMJtlAVRhX?=
 =?us-ascii?Q?Z7mSQVg6GyQRlkbT/9QslvdbjPdLUH2/F6lv6eXhezqelIevMLf5YMH/9CyQ?=
 =?us-ascii?Q?fqOduhWrwTbyJ1KxqMa683fGRpYnbR90S0EFb1YnWEXKT4kGlFD6gjQPe19z?=
 =?us-ascii?Q?OVRmFu7FORxV8FRH/k/PwD6Dl8KSlOcY//eqZwtu7n587ZXuyW+Qb5SFN/Bx?=
 =?us-ascii?Q?Txmr52Y2JC+VCFryD/wp64ShAUgPfFlouCmQh6FdEX5ZognyyRG/YKu4FxdN?=
 =?us-ascii?Q?lQQ/rE4ptJWNRSpnJikjWP165q+K7lJPtMTfIsNKFjGuA3Ne4ow9Tm9qR6XV?=
 =?us-ascii?Q?I2yEEWlx2q4PtgePBv+pzuh5Ufbujl8BEwbRYXUUayN5Oz04uAjc0yw4Gt3z?=
 =?us-ascii?Q?/Ga5XCBvwV4qUgKuQBVQdx08fg09JIy5K4BOFLWIyMEydsbRl6cXKD35siA5?=
 =?us-ascii?Q?gbnkn/dw7tynsBCaepKZtH6te+WFBBKZgnWZDwlcWZUKDZ7yNopF47QrQbin?=
 =?us-ascii?Q?Qvk8y0McjD6mHx8mV2NIyvcuPNlYANub14g3wAnxokG8D1pd2HgO2caxDNHC?=
 =?us-ascii?Q?YfuRL0EPjvvzu6teKeW9StX/ZHq+vhVcHnqbhXlX0+iPcqFeqLYa59v7OB+8?=
 =?us-ascii?Q?F4T6RTl/65Hg5Iyi/oDQtpqikL3bGsYh87KDcyvfPCkvIrI05mdAhT/Y8a42?=
 =?us-ascii?Q?4flvtL3RrGqDnvneH6q2ipZBeWwGz0K7F5p5eRVlOBMW4f2lV4xsMMH6TIch?=
 =?us-ascii?Q?bucwUgJarEFOalbEWVAwL8XE8Rjf7nJHmfe+Nf/UA96CLXCnbp+frGw1Pa+k?=
 =?us-ascii?Q?fG5c+iVWg8eb1BNoW4G+i2D45cBIcsEwXecrpRcqDxKa+FF1HhIzrj27Rv18?=
 =?us-ascii?Q?jTPoPwkD3PtPFqbmuIq2nuH1?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87684f9c-81ad-4b85-2b60-08d9526a8d3b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 08:26:24.0920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZoHloAbdKBp2wkdrt7HOY59ADdAXVfzDIbp9uJMZ0pcmKpRPXB9zcjsewO2Wjoo7I0b2WwvI7QyJDZ6Ls6iyaqfsLfQCU6RbrWuwH7BwbIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1552
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10059 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 suspectscore=0
 malwarescore=0 spamscore=0 mlxlogscore=858 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2107290055
X-Proofpoint-GUID: UkpOdzQxQknQB1rmAJsPty-M5JC4D9u9
X-Proofpoint-ORIG-GUID: UkpOdzQxQknQB1rmAJsPty-M5JC4D9u9
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=e7fIvJof;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=t6dOYKYf;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=O7ftGf+R;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender)
 smtp.mailfrom=dan.carpenter@oracle.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=oracle.com
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

On Wed, Jul 28, 2021 at 04:33:18PM -0700, Kees Cook wrote:
> 
> Ah-ha, got it:
> 

Thanks, Kees!  Nice!

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729082546.GY25548%40kadam.
