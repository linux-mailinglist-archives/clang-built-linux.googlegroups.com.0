Return-Path: <clang-built-linux+bncBDIZTUWNWICRBAUOTGEQMGQE5ZWWFIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id F146A3F75EF
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:35:04 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id w2-20020a63fb42000000b00255da18df0csf1092475pgj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:35:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629898498; cv=pass;
        d=google.com; s=arc-20160816;
        b=tc9ctKU1xJXNka5tStDvs+fYlvtnmZfJKmKskKNXIGheUDaMAVvHVO2iYMFTDfGuH7
         2EaO9W84sZhcdtuZQM/OxSVW7EevNipKL4wiUsXeTVbn/S9YxGM6pSupx/e1FeaLgsnE
         KL05loKTw0g2+uJuoXb/NThSt1iVgYeOQz2pePc02PpLXy/WaLTRFRSDIQVZS4N2cO7T
         rEEBeF984mQqucgtN+f2mK3unx+OwkH/aoUh1byWYhdQK/SPqwJiTusQ3uJsUrnnO72C
         V/smlaYOg3Mor80HLnIVcvZHnYLWiMige51Zm5NSpH6WSsycSNw2MG5PLd8wuo6Trtpy
         wdCw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=BKKQwuUaSlJ/JyvAbRaD/Vtbl78Bf15FshsXno2kp8c=;
        b=qcgcjmLPzOND4zAFw/0vL+8Xm4klCIxvhmtT3C//uaSVURQ4aC2HJZPb5rVLkHEpBB
         1Y49m/cCUgJI3O3r7aDv3+EMkpxzWSjnehN2jqpc/rH8B4TH6JSWPYpz1Gl61Jw8LGjD
         hHEUR0mDWlEGLpPgRuPpWpgyPVouJnhEnt0tlU5Smib5bwjXaDzK/3IclQkXAHNjpxAq
         i8lAB0oUcFWT2dGIbum6cyNlsz/aX9/PxEGZeTSiVC3+4DC+CVS5jAnTd5BXanJOhVuj
         CFMNtRlFn/9qE/vqQi9zzlK/k9bQjP8iOwM6yuNr0Wp6yFiiV2Riqnae0+9DCEWLIX6i
         aQVg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=qXcUTSj1;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=g7Aonkl6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=lb0vv56i;
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
        bh=BKKQwuUaSlJ/JyvAbRaD/Vtbl78Bf15FshsXno2kp8c=;
        b=WcJhmDoy75T1TZB6wt2g74EiroLJ9BmtChi6ttYy4m7sumAXTTmkz95xXuCZBMcIrQ
         tXIslQhd5wgXleaTqUlVcv1GRGgiSC4fvTExSSYRMGEOB5quWX9sXKUoWcW5LK+MQsea
         TJsIWtT2nqdOTQGjOKG5V2cwPqufBXPvMaSh9TeGfr9uMBpMna6vRCgLGqytmQy119rM
         deavaNZey5t3yM0V4az5hSEySj0N+HKY6FrTNoPTa98R5tVvymxngacNY8B5Z9/kPeNb
         Zz5QMQUPtnH2ieLdz6iYwjh+Vo/XkFXDiXBC5tRw7XTFvIckN0/vd94pQSiUQ3gEfyXM
         QhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BKKQwuUaSlJ/JyvAbRaD/Vtbl78Bf15FshsXno2kp8c=;
        b=gwR2/Z8HTd17NhGXiWgW7pUZkz2RjNgKS+1F6GItTQHyXOdsOpwf/9Sq4cJ9AnySnB
         4XxI6w74vM1Dumke1JeI753XUOGpRHTtjRpPYx0p0oeb2SbVlOgFLNfR5B5IS9b8r9GJ
         JbUkvavwaBRkY61kh9T902ZoV01T6ls2gBgzeqlOyWZFXI2kfzql6cDymmkLcrGjS70n
         tpRdUyNKgPeGhGs2trYET6gTO6ZVf385zGCfQC38ZVvKWGmbxpivGvai+ImJRIMUbe7F
         K4qklAVCnPIBUn7OoOlDhnGPOt8wJcbNdVo3Z88S/cvsdOTA1NrAv8B1TTUBpN8VyuyC
         uGog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ym+Spf8IBkX9oHJ62Bxsq1iGmruHKGuRT3Mmm/jUbwFt/8/AN
	J8216wUyEsd84/KkeQIhOjM=
X-Google-Smtp-Source: ABdhPJwlzg3Jzq9+6nM6hmccQOjl2tmZocMBMcPZFJzKby3kNBVXVa6GDbznT0I/JipwgzOSMWojxw==
X-Received: by 2002:a17:90a:4417:: with SMTP id s23mr10340581pjg.23.1629898498604;
        Wed, 25 Aug 2021 06:34:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:494e:: with SMTP id q14ls974907pgs.10.gmail; Wed, 25 Aug
 2021 06:34:58 -0700 (PDT)
X-Received: by 2002:a63:5f08:: with SMTP id t8mr6777398pgb.353.1629898497997;
        Wed, 25 Aug 2021 06:34:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629898497; cv=pass;
        d=google.com; s=arc-20160816;
        b=ommVsjcT2uNuUeAWC2aZ7gsgZnZe3OOYSh0dJJHglnRsbZ4Z0v6OCpm2MWo7v9xBkB
         BoDG5EgcggXz6zxOE3DApVPFXvlo7+afNwnbLG7fbeFeMpw6XqXrbnKOgnp1gJmQC2G3
         +KZJv2snqPu/cWC7Rn7WoOxkoeAam0L8p9u4yNIMEHBg3fnMenM7JAffNeFlP5Y24s3z
         CnapUBZPXjloj90RzssN+onyLqWcuObY2saKOfIOurzZzlJOW7NBX4ONOosvZr4X/NDE
         U7o8oAanBxn16NLKllL6grpFT9O9+zyhTR0bSk0KzS1+HE3DF109TeWHM5BUHxYWAdX0
         CFFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature;
        bh=LQN//fStR/z0Jqtk6UQqUJIwSu9PZN8U7Skp83sG06c=;
        b=CG7prJaDIGWdbdQ+I7iaXOVGqIyxOnqCk1zXbcui4OSS04s23SJa3Bj0SOScBLL0N2
         n8jzG4EfQ78TTQRusOOf2vHHNaamdBz9PYOv99pypBM2O6UBDDYOG9wLIWDTsjFepa+9
         zIk3OTA6qr2sv+ScuvCj/xszGWKWcu1U8DtueUrgqU4OLDmVtMVMVTHiKI3IvNNHBA3w
         /AI0iks5I5xpLwayqF4VrXWsGL1YNi3S0jHuvTKUlTOU6RfOrBsuNMgVo3eYoUGVYbNW
         EeqVhNN1qUbYfauk4q6GNhta+n/8STHsPPItS9CS7G3rbon6tRjvA5nvv6yOfrj+HNDC
         IuFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=qXcUTSj1;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=g7Aonkl6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=lb0vv56i;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id g3si358393pjs.2.2021.08.25.06.34.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 06:34:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17PDOMEP009649;
	Wed, 25 Aug 2021 13:34:54 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3amvtvupbb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 25 Aug 2021 13:34:54 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17PDVXkH116000;
	Wed, 25 Aug 2021 13:34:53 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
	by aserp3020.oracle.com with ESMTP id 3ajsa7agg2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 25 Aug 2021 13:34:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EMPPqc9gHNbQs223GnVQCJpxEIth/BWePOT5yH+Y6xrRbp/QapwdIXnCNODp69rkAuM6u2ojaAmOqbCYfppN3b4rk45bJ3cNXFVO7io1YLK1AwdUkdBzBHEHnWg97YHg0sG8bksXrKy6SeLfxQly9eHegMIHhakqbN01+jVkBqF/O1rGlOO/OQkiGiqj0aT5MtOYAR7DSyk6PtSIIvQXoczPGCkE3TdnWtkSwdv8pKk8HKICVQo3qZJzmux/72ufZFTv6PsvuiWRIPtUVKVX9YQctZL1FurACsQMdkevPYzNzbo5Sl8gECSdSNGAiOrJZxMzd2+AN9ggQ9lf0zyt1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LQN//fStR/z0Jqtk6UQqUJIwSu9PZN8U7Skp83sG06c=;
 b=e6tdUm8FHsm2Rf09Aj1VFq2wrXZyPouAJwoiJpETfVKsHI4ALX7zYmm4iSDK8N3Ok53IkcQJ95KDMMLVsTitdoD2bZnJw7jFgdEr3f+UtBGUeS0GVWeOIF2gcjhC/ZKhdUMMIoJWt+c7ne1lpuO+bz6kz+VKH0phM/OGKkDuk98sFr8RE3EZCEBqsOuNFreNEgNrFY+0eIyF0Iw4z8mFgYIv+mQjbL9MuNuntptVkfuAVG+TYJSQsfpFANxCWDZjwp0zbxt4WcY2PSkLGxbfMI6r2lwVBk6PE5e+2ixkymR1LMEUqMl5oyLKkMuHIyUMAVFKzkNlJCH2hEaL6sbqQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO1PR10MB4721.namprd10.prod.outlook.com
 (2603:10b6:303:9b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Wed, 25 Aug
 2021 13:34:51 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4457.019; Wed, 25 Aug 2021
 13:34:51 +0000
Date: Wed, 25 Aug 2021 16:34:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pavel Skripkin <paskripkin@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Larry.Finger@lwfinger.net,
        phil@philpotter.co.uk, gregkh@linuxfoundation.org,
        straube.linux@gmail.com, fmdefrancesco@gmail.com,
        clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
        linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
Message-ID: <20210825133432.GW1931@kadam>
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
 <202108251911.Vwmzl4rI-lkp@intel.com>
 <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
 <20210825125159.GU1931@kadam>
 <bd50c00e-1814-dc32-36cf-73cf58123201@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bd50c00e-1814-dc32-36cf-73cf58123201@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNXP275CA0039.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:18::27)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (62.8.83.99) by JNXP275CA0039.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:18::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.18 via Frontend Transport; Wed, 25 Aug 2021 13:34:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cba8cc5a-bbc8-4a96-8a79-08d967cd1d7b
X-MS-TrafficTypeDiagnostic: CO1PR10MB4721:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR10MB4721F36F290F2F71DF2223B58EC69@CO1PR10MB4721.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:370;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fw2e3d7A7TP9pbZqTVDsKLX3RiGF99uEjVo5muTy7zZSAqMDGNJBwppbSHkEY1w5lsi/A8/CB9ArGnGxBW5LCO5nNU3IZDcHgl1uRjlOvI2q+vh6Rl1gIrosXmyVG+q+1nhN8G5K++QJf0jCbj7prAdBnFmwr0DLNHqTZUoKo+vIBoH2rB1xuRAvLvleqRURuWaiYeQBTeCJ6JcaMZT1Dtzs8KqiH3A0f/rtqS8sYsk3Y5FjDUdPt+P7WbUQ9UoTxsmlxC1mV23/4wkyQnwtdCmnchoZl2wFWahAz1FB7mEnQDmmcF3iVVyeCDmXb6eiMjFNGDBQLWD9FAVCYrzBkrAFbDJDGAFFlpDZL3CzNDw9nV0iyJ/qvKEtd5Lyau3ijieG2FE7eEW/qlFep8w+6Cu638MGx58zEscodyO/JSAkY3H3XOu7bYLiEUSgJD4MQlUwvNYODkJdLEpFO5MwYZG+lsxcQIA/dVYyk3oMcw9JmWEvITmj8qEHGHo060bh2E3uN6qGrmH1rjNVxloVABeJ0BuBfnbjKcVxWsvfZJdWl7YYHmpDktVFp4lRhBZwOGsewe34JjnRBAvUUsaVB1+JtOWOgB3tI/ncqv3Ui/5vRPilHrC2CWyTvrODRfGU9ssGy/hNFNCbQfxnhIqsP+GENzMMNe4O+YaNuJXjAz0f6MNnRgZ1xJg0gWpkM/5oFxjGG+SL4e0SzLM47FnZVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(366004)(39860400002)(376002)(346002)(66946007)(1076003)(6916009)(8676002)(2906002)(6666004)(66476007)(86362001)(316002)(956004)(38100700002)(66556008)(83380400001)(26005)(9686003)(9576002)(5660300002)(186003)(55016002)(7416002)(4326008)(8936002)(33716001)(6496006)(33656002)(478600001)(38350700002)(52116002)(44832011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GK4ltSOpsKpcqmRMT5QIbd75o6cD0rpEJrv4GzEeSI4KWvkbL1T/+kLsTdfE?=
 =?us-ascii?Q?r33Fg5mQZFT4x+S7IlZAE3RiPfF7eiJ3A4Vi+mC1P+kld2ZTa962N1H5jN/m?=
 =?us-ascii?Q?47e26r0ru0+ox+P2OF/HSJmZrDMxGEVDk5XdmEGzYYTz3hoQDZ+1MKn0OW8l?=
 =?us-ascii?Q?JKGljI3xQkFXBH9ylIyF/olMZrqEmb7FGqWpWW95hxbGfFP4uzV7DA0Sm/Hd?=
 =?us-ascii?Q?0tmg0hPk4NL+JGK1d402MugDC5v1y8MTg/2dlN23r2H85wnf8DVl8uy5hf5k?=
 =?us-ascii?Q?+BgYT3OIqmqy8uDZxjizc90n8fJn4smOQyI8CVZO1rV7Sb5PpnJLf/oEHKa6?=
 =?us-ascii?Q?cX9Nf2Y9JhwxvV1bafnEjX1JGc6OX8Y24LBweXRSi+1Wt/joOrLBRD3/NPgL?=
 =?us-ascii?Q?Tw3uGQ3JYs4EzaihJFx5i21F/UqPDbcvffSa/0C29sDfcYDAgLQfphGeT8Jg?=
 =?us-ascii?Q?x/+qAtlN9LW174NgPYYXQDk6taCJ5JrhiBXIjFtB01ncGXUh/tGeeWTz/vxz?=
 =?us-ascii?Q?TUE4uN7MNKvXPSyXihsuFDAT7Ezh58GTtddjpzI/HLiV4r0LnV8Ou0Ds28LM?=
 =?us-ascii?Q?igNTSPYlAmW1XMGwQ4/8+aBiFlGZo80R/1dyYIULz7VLIvuPBMlmwbf7ygJc?=
 =?us-ascii?Q?k1uRHmEl50XQh30y9VsXcswCIRU9gmLMeNquUX/4UiQY7V7snVGWJQO715Q2?=
 =?us-ascii?Q?z7mZeXN+Iwg3RG7+hfneOnx6/KLkXgIgVjNQKXnBGmCKGPa5cMI5QgweAIrM?=
 =?us-ascii?Q?UhkVyqQ/ucnIGn5wNBM0TTnFvcqVZ48lvsTuf+TTL3ZNL68AGrbDlvYGAEqQ?=
 =?us-ascii?Q?2GkXtq1kdAq45gMUuDxy9B/s1Dz7EewSPJP59SAu88/M1icgH4wdnRYSdarc?=
 =?us-ascii?Q?YNkPrCenXF55ZcFSZsPycHR7CasDSEJtZojAnze8lWlnHSSWQLZhN+a4ZsS9?=
 =?us-ascii?Q?2VfKI6yqPO2bDjWHKa2AGj9XIahTGuG3VgVCehpVY3q007zuJ6dYtoURmgAW?=
 =?us-ascii?Q?MUfLYZz0h4WyN1VsJOWu4yOzsf7Hu/uhDdwz2BWLt4MkCAEHvQ03wlruDmXL?=
 =?us-ascii?Q?/3Kt5Osg2KMsQ33u7AqHBljX4+yGclrHeEGCiyIbWtd8ovtxo6qTwVPkn6yb?=
 =?us-ascii?Q?+vOM4tFc2jSrs0T0DzNrbFcUY3JyolZyxiJIZReHsEnfctDYz3RxvAmTtBw/?=
 =?us-ascii?Q?gBUNq7mCxtpnVkw6Lm1PMzzpZRpF1Rg+cj6xb2xT0t0K3ma2cs3avKhgC+In?=
 =?us-ascii?Q?Ry6h9pBPC+knTpAlrOvWFZt2aw/aSAKw7FSVZ+hv2G7wCGDl8qJaN3qE9BRk?=
 =?us-ascii?Q?TZ8pzd4ab1IgbvYY0Gv8BKQ1?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cba8cc5a-bbc8-4a96-8a79-08d967cd1d7b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2021 13:34:51.5054
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SJmetYI4q+k1TI+HUazH8SIbE/VdXedWHUDY8FJZP9IWN8f8lCsTq+htaxM5pKgFlzKiL5aFZLbUDJyuYJPm1U6NXehDpMjBxHroHhzIqFE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4721
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10086 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108250081
X-Proofpoint-ORIG-GUID: c8Pxbh9qBWHgozzwTncyy8g2lfjsSw8O
X-Proofpoint-GUID: c8Pxbh9qBWHgozzwTncyy8g2lfjsSw8O
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=qXcUTSj1;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=g7Aonkl6;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=lb0vv56i;       arc=pass
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

On Wed, Aug 25, 2021 at 04:02:26PM +0300, Pavel Skripkin wrote:
> > This is not related to your patch.  Ignore it.
> > 
> > 
> > > > vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c
> > > >
> > > 
> > > >    2020		case HW_VAR_BCN_VALID:
> > > >    2021			/* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
> > > > > 2022				u8 tmp;
> > > 
> > > Hm, I don't know anything about ARM compilers, so should I wrap this code
> > > block with {}?
> > 
> > Yep.
> > 
> > > 
> > > My local gcc 11.1.1 (x86_64) does not produce any warnings/errors
> > > 
> > 
> > You should figure out whats up with that because it shouldn't compile
> > with the gcc options that the kernel uses.
> > 
> 
> AFAIK, at least 2 guys except me in this CC list compiled my series without
> errors/warnings. Maybe, staging tree is missing some Makefile updates?
> 
> 
> I'll resend series this evening anyway, but this is strange....

Hm...  In my version of GCC the error is:

drivers/staging/r8188eu/hal/usb_halinit.c:1870:3: error: a label can only be part of a statement and a declaration is not a statement

That's a different error from what I was expecting.  It's caused by
having a declaration directly after a case statement.  The warning that
I was expecting was from -Wdeclaration-after-statement and it looks
like this:

warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]

You really should try investigate why this compiles for you because
something is going wrong.  It should not build without a warning.

regards,
dan carpenter


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825133432.GW1931%40kadam.
