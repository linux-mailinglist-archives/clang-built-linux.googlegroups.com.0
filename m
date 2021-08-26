Return-Path: <clang-built-linux+bncBDIZTUWNWICRBMXMTWEQMGQEAEYU2NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 958FF3F861C
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 13:08:35 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id s22-20020a5e98160000b02905afde383110sf1451023ioj.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 04:08:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629976114; cv=pass;
        d=google.com; s=arc-20160816;
        b=dgmq6F9aAsrs+acUOY3ifPtcj4/Cmzv/HTacbwhrU2gkQWSe/BNM0D0kyvruCI9bfh
         T6UfWilMQNi0FBOGU7qdm+kQToZZkRwBATIzCZDYu0zdaAi6+Kj6LGtitrWFQo8LhQ99
         jw9sX6lT912AhinTfOcJPsvXRCKwm8zCniGPHMisCkw5SaAhqe5JGeBdIQaSU4EKtucg
         She4LaT9h32gIOC6zwNwIYUlPB6KC7eJFyHNLFGl+pAyDp3Zzf/42lUsUINBhoWEvbeK
         gmgf1TzHQ3smgdMOJEavE6fMriS2UNpLyJVfBZBzY2QKDT6RJmRVs9508Iqc4XINq8IJ
         xeKA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=DPptzaXkNsGvyZ0IrH7KO8MYK0ScpezlLPq0IohHRKw=;
        b=DqViHhasYiTusqV7Qp3BukxNiucEjg3MuwCm8YCxhdqfb8qnmM7RSZMkqVSnGh0YVx
         GJmy16+wp4ZmkH56OE0eFnXjPEodQA76UZl/UdZefjyDLjOGA3y3Cz/FpPVeFB63xKj4
         Q7P1abBGheiJzUCzE7+2lpJZxPfmKSJ8MMDcR2xzL5gb8ATgYgEOABw2Zyq/P5mgU32F
         0DbQ1Z2lCUp8zL/WiWrdqDPzbViw4QK42AKv2LIjwqU5uwbMZWAIVMaJKs/6e2R6pKOS
         bhnohR4fbIf1cRhoIrE+7T6UWbR/2s49U00X5+4caxIPF/GahcQJuEh/5YVUvizv7of5
         wa9g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=sFKaOBfu;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=iO77ccNc;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=X4ek93HZ;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DPptzaXkNsGvyZ0IrH7KO8MYK0ScpezlLPq0IohHRKw=;
        b=peZFzB+/CaHd0g9YU4+TQY7//ipzv/eiTfp5yZhDlUG8V4FFoxbU6BibPuoY2ncaSz
         xboPML78ylPwWlUmMIKu7tcc35c2nPpZ+JsXj46RIaLy6HEbMIVKFVvS8f6I1en35LoP
         PPrXAWaaINBK3A60LMGiRKIOSe3md23f9DuUY+atzhHd9bG0OwJwQdNHvBT0tkkunIeu
         yhg5XtWO8ChnO/DSAtUhq7eewZuZBVejzpiNQAIYpTjQmLSOnZuj3flRn7xPzi15ivcC
         FsbrDB7yn2sxrCzKhWJ+QzZmE86QWICV43Kp6iZ4m2WO+apm6JaHr3kQy4gDZ1/uBXHn
         V61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DPptzaXkNsGvyZ0IrH7KO8MYK0ScpezlLPq0IohHRKw=;
        b=oFhU9sx+SxnfXb/Ji7DqlFyiirKcDFQvp7yiMYm9g9eW1vkuMp5JLsn+/WgSI83zhx
         j+oYJMxU178JgXyr7xzzOYx0fwn/Y/eWgebbXB5uvG8p4jipEiHkeoaVsudse4nnmGJx
         Raodwa6ClVWWcGwWHI4EnXceUQ6Y9Tj1e1VqlvatJhmLDf9Tuz6Dt/ql/ieEOolab2ty
         y+2V4SXPaQ6XPBB6yET7ptkQSvplHjK5R64vnFjuz3mlQWBR4JMwclh1FzT01HuvoXTY
         6hchm/Ei8I2uGfCe3FYhaESzI410zwfYDeqtz6TN4AUB3w8aNUhhE9yLct9niyUzxLpk
         o55Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532L5q5oTwQKSi9lis+IbB8NdsoTAApMZMHlxXiArBjkejsbPkZy
	vwaEV7cUF6/Y6Et+D+RZWIo=
X-Google-Smtp-Source: ABdhPJyxjx18++2vdF8I4ku+TOYwejXXxvh14NMAkynpSl0w/+x6c3tVHROyvwNghzSBf/l5vzKB3A==
X-Received: by 2002:a6b:b44f:: with SMTP id d76mr2532490iof.189.1629976114579;
        Thu, 26 Aug 2021 04:08:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls737409jag.7.gmail; Thu, 26 Aug
 2021 04:08:34 -0700 (PDT)
X-Received: by 2002:a05:6638:3805:: with SMTP id i5mr3044348jav.72.1629976114161;
        Thu, 26 Aug 2021 04:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629976114; cv=pass;
        d=google.com; s=arc-20160816;
        b=oomyEn5qLSfPXzBw424f1RtzLAl6AYPUkWX3iwcHp4s1RwtUuN2GWEaljq0WaikFRR
         7GEM8w56kznPnMyAL4Ocj6cAUMJjCyuROPRrwqUn1xi8E1bMEkDrG9gd0B6sg875ekjh
         lqxxz3nQCjNmewq92wWmFxxidsTfQKAZ3b795pOEnZXUi/A8mZX1ag4hlgYjWQumUapM
         5RCJXe3rEM2lv1TWCsuptRW68aqjuWSF7x4fbGSt1nk4wWr5WaXpBma4JhKHQmM1i5pt
         LJrmVWPHbNFN7icM1dTP2u0vdnAMSCYgYWtWZSSnSoryYRXs0BlTaIM1g73Wkshi5nWb
         1BNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature;
        bh=KvGN3l5nmXLboGuhujwRBz9V7lFJyBeEUgX2GJbNJ2Q=;
        b=XQqfSe97mhWtmGHUv1JhtoCzmVIr5bPYjgBwG7pZ4is6/bLcXSBNJySxlUjni7fh5K
         zTdFlkjfTu3Q3vNaD0dpWttad/kg+1p3AjZe2U0V1oo2BQB3e14vcNj6eLHQPaNjRCuv
         FuyRRc2MxkypsrEcuU2Kbd5y/RBjEoFv/37fHhZo01GK5bVtwchjyA8c/ACj93V/8xY/
         ViA+wIwMH0bjRx4dPH3FXXUE/O2q88iy7Hkm3jBHs6dhJuMB7CX4k2ROXNM7gl5AqdAa
         vhTA4v1ZDW8aDsnCyf4faneQfP5bhC3UgFJGHG5zd9K8XR8QiSmVaCqhQYuOhK4Tt91b
         3tgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=sFKaOBfu;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=iO77ccNc;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=X4ek93HZ;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id e16si217839ilm.3.2021.08.26.04.08.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Aug 2021 04:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17QAlPkt001951;
	Thu, 26 Aug 2021 11:08:30 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ap0xp90cf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 26 Aug 2021 11:08:30 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17QB5MFR096963;
	Thu, 26 Aug 2021 11:08:29 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by aserp3020.oracle.com with ESMTP id 3ajsa92gyb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 26 Aug 2021 11:08:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XFzvjj/iw0WkJ//s9Xh3vlnWd6LMDcavLb2/qxRvuCdgVJnJjATg6uOWEsiIrOjswtlYmwkkMOC4l1+CW7OlzEUOovJNWX7FgfMIamZ/8jcIPahQoxCHRGRWBpcf7K30Mvez8IKcdeZdM5H4rTQjiFNuABNKCIAddOECmpV737UAQouspLXob1lDQgJK/HcsGisIpB06Dv7BeGKxL00DkNx0AMSc23MSPBDBjOv22oRKig3hBTK6rDn55HLYwzw5K87tzoxejbGsDChTuNz0+xx23eO9Uunlwc7nMxpwejqGsbi2noAKE1R8v9dNIvGsYWiUMNfAwGCAZBHl8Uop1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KvGN3l5nmXLboGuhujwRBz9V7lFJyBeEUgX2GJbNJ2Q=;
 b=bSHGNirJEtIYzC52+Qnw2NtRtJhakBZrGLFQXcBWmOlgq9K0RZt9ccvob7TdXtszK26KBU8Zi5QIuADKezHxfO6pCzVzI1MsKA3lB6csTdqXumai+ki8MZekdQnKYGxgaLuGuLaZ+1AT8edSlQZHV6GeucqdVM07ri5/2Xd8fNR9yPPq36qi6YhKiSbfvpIKgrS4c0c+l3CjhoyT+teF9MrQgLkrAkQYp3dJeHWCIfGzSny2TTufQWKgj6CH+6FWHjdXS7QPDGbJdendLb3L8kIK1krKdgVD5peSKHr8pIIE/1gfuAT9kzjfLQEt8ytoqGXEo9vXdPeTjoJmDLdluA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO1PR10MB4643.namprd10.prod.outlook.com
 (2603:10b6:303:9c::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.23; Thu, 26 Aug
 2021 11:08:27 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4457.019; Thu, 26 Aug 2021
 11:08:27 +0000
Date: Thu, 26 Aug 2021 14:08:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Pavel Skripkin <paskripkin@gmail.com>, kernel test robot <lkp@intel.com>,
        Larry.Finger@lwfinger.net, phil@philpotter.co.uk,
        gregkh@linuxfoundation.org, straube.linux@gmail.com,
        fmdefrancesco@gmail.com, clang-built-linux@googlegroups.com,
        kbuild-all@lists.01.org, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
Message-ID: <20210826110807.GY1931@kadam>
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
 <202108251911.Vwmzl4rI-lkp@intel.com>
 <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
 <20210825125159.GU1931@kadam>
 <bd50c00e-1814-dc32-36cf-73cf58123201@gmail.com>
 <20210825133432.GW1931@kadam>
 <c982eea8-3b16-656b-dcb3-1b6e0d3e995d@gmail.com>
 <CAKwvOdn61==-pLs6oDUjeCD7DQvWjRx+b+04JMpN8w9kY9P-uQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn61==-pLs6oDUjeCD7DQvWjRx+b+04JMpN8w9kY9P-uQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0058.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::6)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (62.8.83.99) by JNAP275CA0058.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 26 Aug 2021 11:08:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7777c731-3361-4f8b-0be3-08d96881d40d
X-MS-TrafficTypeDiagnostic: CO1PR10MB4643:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR10MB4643B552C101422580EB91E48EC79@CO1PR10MB4643.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:195;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W35jYRwGUH+SFq22B1Fc8h8x3yYw1I62lKbCKgZVJEV75/StDuL4Rsdh8F2PfFDIsaeTpmsSXwlsJlvWZGJkkk09+/oaExKha0MsIHCagTL2J4FFWga5wyFBIGVwJSKm4lgl4s8KLCyyWBKlfQPIlsVB+yBQYe1o6zF0VDJTkc+0yAVegY2R1eTqKRucpm6EnQ8yMw+kc1LLIFtUnCRGNOZVQEdkgZiAvajQhmxY0NZAhh0kQKt3KfPETi34FTQ5seonYywLGYqqy/qasUVVC3b87FBwtt5aAznweULNnpO5f1tYn3PjSd0Sp6sJXL6kuyYfV/4j1ukmW3hDn5+a+2juWd70rxI7ltzlxQaq/MNol/vmqDfaxNF3JdygZezascGxWFilVwmieo9shvclQCWIcqgoS+VPmT+DGzSilD6ri0S94u4ytcJOLW7tHfJZbd/L97fW56uUjMdR2gvMJ7tfgVoGKsJK3xz4yMNFycNm+/bLu01RDOb4Q3k+XUzMVYx+EwpikpNGEb6fNgQR8fx919NaN04syfaLqHP5J5Von7gK0VNn7AKgDrivTkk1BiCaL4vgWP/deEMeKBitsH58BLpKyunJHrj2qxY7T4VAGDJZPsC4y02c3/t/WptxZQreaLbvgp5YP6l/T47/LEglKc9pEniOOTSN3DFzDtqZntmIQPoiLUARCkSSvd6IxB4PMKFTxt/CpFFhCNLRYQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(396003)(136003)(366004)(346002)(39860400002)(33716001)(66556008)(5660300002)(66476007)(53546011)(66946007)(316002)(9686003)(6666004)(1076003)(6916009)(4326008)(9576002)(6496006)(2906002)(38350700002)(956004)(33656002)(8936002)(478600001)(83380400001)(186003)(55016002)(86362001)(52116002)(38100700002)(26005)(7416002)(54906003)(8676002)(44832011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jdP+NuLNyvlGidUFH7ItW3ozO2ooEiI619YHceNLjh0+jY/g+irNtuiEd1pE?=
 =?us-ascii?Q?RdibIusnXIomxfSBXajofpJmRPHqEbvtClGMoSzz5nYHeuCkAWRFjttn4nmV?=
 =?us-ascii?Q?iSy/lqgFvFd4dQcX58RuFSNqR4Gl9USsu3OmodeELuFgKcK36eZeFKHymLkW?=
 =?us-ascii?Q?Vp/yy5R68Kqc7xKQLER+2CFmPylCcPsg7kWIKdOMl9iExbFWl6T6QOmGh96b?=
 =?us-ascii?Q?i9/gjHgYWqTgNUiEyfuV8ZrWvHlNMN/MIcPkXobFX3r8sXUfJPsiG5LyV1MY?=
 =?us-ascii?Q?K/CYaJFVtg+wk7Q0u+LYAxFd4w+FE9SCd9Umr1rhx+a4/300vBLEsCU/5X1J?=
 =?us-ascii?Q?Klx6ZxgVyZoKVGfHK3wkecpewcOkbaVJhTM+0hrUX4nY9NvRs9vT/e/RqXEd?=
 =?us-ascii?Q?+7xR271HisZeyJ7xYNW/ykZ9K8TujS7MsLuhl7z0wVsixvf77YFGc075xbrr?=
 =?us-ascii?Q?TSwTmCfcxP9sVzNbT+Kr6e/90IkXgYgQrwuiSnZdVibE+EdyNY5fEmO5ewDu?=
 =?us-ascii?Q?Excqd7JLhWgzOwd2a00TL/3dUyXKeuyxU1SBcxAGA7zHi38eTNYK5bkM5v/h?=
 =?us-ascii?Q?kXotwOF3Bnl3FplVAhRIoWYTt4UkvV/D64w+P8tVte75Rej3saw0TxQm+2rz?=
 =?us-ascii?Q?JC+QECjVoMHs1tw6YDQB3JhnaEiNXjZNGTLPPnBS9ziuC+iGrbzDFbfQG25z?=
 =?us-ascii?Q?W9ndBXzpzae0GpOb+rKRuSjDns9NN1hmZ+kbD5sghebDoJdmV4oAtYIJnXRO?=
 =?us-ascii?Q?0rNa6BFqESkk6xzlK4KrVgWYUPkdfVbO09oS0kqHoyMX5X7l/ygXjb1AWSJb?=
 =?us-ascii?Q?TpW3relVrme/Y0Y6FQ6kdaAiWKfjig95MHC+osFCNLVMydSyq0JduUa9PxR4?=
 =?us-ascii?Q?odzNhZjKEdA3jDHVrfjZwZ7anTh/Hnr7RsfP8xqXA7OmjvWWIwqDZb++F4Mw?=
 =?us-ascii?Q?7NAfJrnhAKjsbvC6CyC/QHQ9CMROI9l77kiB4r4B/mZGrt7aoGFbVQ5G6P6T?=
 =?us-ascii?Q?gD4RcZa2vhAP8eDAx2jR2ee0zPiSe0WVPd2vTenf1JYUWIqTwpQHIz4bIxxB?=
 =?us-ascii?Q?sXbE3PorCTfiqa29w5MiPHDL2nhEi72IxDcVRhy8YrumMq0rld3+3y7r1Qk+?=
 =?us-ascii?Q?Y/NsglCYiuObGbpykHDxPCSVhSgIYLejjo6OW5T0eblIMzidJqwP5HPFYzKY?=
 =?us-ascii?Q?wGRPhWXJ/XTj6ZpZ9JzoIr7GAmqi5AijMe42d//LsOpuByu7zxBFL3S5HKi5?=
 =?us-ascii?Q?DPiUWv0+/N48MAgA5mHoeIYCIBGoWoGuvJEqFCNPeiJjCTotgZWp7hdtOcYN?=
 =?us-ascii?Q?MZBd55SLHGS5qUu3HJKAsUgQ?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7777c731-3361-4f8b-0be3-08d96881d40d
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2021 11:08:26.9566
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TE9kj22euQYbpK0BW5GD+l4KKQGumc6qltdlNJe0KYpAwmZtjtk6E/5GmFti2sAfoCy9+7H10V2DYAr8FV7Mc7HkGR/ofHoyfswuTX0XxpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4643
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10087 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108260068
X-Proofpoint-GUID: Vsc8Dh6Dtr5p8qaoWFNJqCbNYlbnPVqS
X-Proofpoint-ORIG-GUID: Vsc8Dh6Dtr5p8qaoWFNJqCbNYlbnPVqS
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=sFKaOBfu;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=iO77ccNc;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=X4ek93HZ;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender)
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

On Wed, Aug 25, 2021 at 10:11:45AM -0700, Nick Desaulniers wrote:
> On Wed, Aug 25, 2021 at 6:44 AM Pavel Skripkin <paskripkin@gmail.com> wrote:
> >
> > On 8/25/21 4:34 PM, Dan Carpenter wrote:
> > > On Wed, Aug 25, 2021 at 04:02:26PM +0300, Pavel Skripkin wrote:
> > >> > This is not related to your patch.  Ignore it.
> > >> >
> > >> >
> > >> > > > vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c
> > >> > > >
> > >> > >
> > >> > > >    2020                case HW_VAR_BCN_VALID:
> > >> > > >    2021                        /* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
> > >> > > > > 2022                         u8 tmp;
> > >> > >
> > >> > > Hm, I don't know anything about ARM compilers, so should I wrap this code
> > >> > > block with {}?
> > >> >
> > >> > Yep.
> > >> >
> > >> > >
> > >> > > My local gcc 11.1.1 (x86_64) does not produce any warnings/errors
> > >> > >
> > >> >
> > >> > You should figure out whats up with that because it shouldn't compile
> > >> > with the gcc options that the kernel uses.
> > >> >
> > >>
> > >> AFAIK, at least 2 guys except me in this CC list compiled my series without
> > >> errors/warnings. Maybe, staging tree is missing some Makefile updates?
> > >>
> > >>
> > >> I'll resend series this evening anyway, but this is strange....
> > >
> > > Hm...  In my version of GCC the error is:
> > >
> > > drivers/staging/r8188eu/hal/usb_halinit.c:1870:3: error: a label can only be part of a statement and a declaration is not a statement
> > >
> > > That's a different error from what I was expecting.  It's caused by
> > > having a declaration directly after a case statement.  The warning that
> > > I was expecting was from -Wdeclaration-after-statement and it looks
> > > like this:
> > >
> > > warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
> > >
> > > You really should try investigate why this compiles for you because
> > > something is going wrong.  It should not build without a warning.
> > >
> >
> > Looks like it's bug in gcc 11.1.1. I've rebuilt this module with gcc 10
> > (gcc-10 (SUSE Linux) 10.3.1 20210707 [revision
> > 048117e16c77f82598fca9af585500572d46ad73]) and build fails with error
> > described above
> >
> >
> > My default gcc is
> >
> > gcc (SUSE Linux) 11.1.1 20210721 [revision
> > 076930b9690ac3564638636f6b13bbb6bc608aea]
> >
> >
> > Any idea? :)
> 
> The original report said the build was with clang-14, which is near
> top of tree and unreleased. It's possible that that build had a bug
> that hopefully was reverted.

No, Clang is right to refuse to build the code.  It's GCC 11.1.1 which
is wrong because it allows it.  I'm not C language expert but we're
using the -Wdeclaration-after-statement because we don't want this.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826110807.GY1931%40kadam.
