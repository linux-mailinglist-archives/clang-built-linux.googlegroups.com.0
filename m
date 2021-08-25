Return-Path: <clang-built-linux+bncBDIZTUWNWICRBCH2TCEQMGQEXQMYGSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5B03F7568
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:52:25 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id d4-20020a923604000000b0022a2b065b0asf1099744ila.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 05:52:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629895944; cv=pass;
        d=google.com; s=arc-20160816;
        b=n02Ue3IcYhJ2JRd/fbqPU87TW0xeHrfRAoDrnD72aeAO9GfWv+g05qdzAOGfDBV6hB
         CTWaEPgsbGV31QXpZUdJua7m449frU5FRGvEHztNw2HUhLuu7w6mpvZ4Jf9KvsQoTWPU
         nmiJIi6+5JSxc7nxg3nWs5DQtT1IjrMK4sq8JFinynbNBv7FkmwWbmTtf/YBYdKxJ7uC
         aH97N/f2UVpIRGX1jmhRziaEH2Sq9jj/xr9qv7ngg+OEEx++MXuxVu7n3vic6qZhQAO9
         GSNN0F28I+IE6K4/eZeHBk/AQvCvHI7a8ZRO0eGr7/YjXxwaZu3FzYIy+QP9zYXZt2PJ
         0+Bw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=IQ4R4zA2q6IIR6PYd55YDpnT/wxmaiRPm9npnqVm8lk=;
        b=hfLlpvSOpMCBTakwS1hLen/0TtiADFiNJ/JnGKHWzKNEN7nRCTogTxO0c1TysnzjXm
         Ji6GGf0Es45Nbp1XXiodgi7u4toPRUqrSaOzm1od3XyJ7+VuFOjxILAmOn0bXQNcUkwm
         d/F2FmW+dy1by1iJMg5OQrV/QGpUzagazbUu8m64GI/Pl4nIvWeyzN9yZHKCw0p/T65F
         7xmu0G68uv8VG4ona4NG6Tq1LF52IeexpTFd2Kuj4+kkpWoNTK5On9LiXiOyk1kUD+6m
         8uCIfxiEulE9JUtadfLVFWtSNf+ZuRhmZFcre8/5C9jtRD2tIghf7esRZ/lIq1ahK4FX
         LByQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Tc8Y1Rt+;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=QDOv79lv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=zLa4JNJq;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IQ4R4zA2q6IIR6PYd55YDpnT/wxmaiRPm9npnqVm8lk=;
        b=qUaak7eCRUA/VM6pIwapcse1H1akl1k92/WQsvfckHccta8o6olOHkDyaxUDbKSfsp
         brrsLJfmTX+GE04xz1jGmsFqoCRE6w//Ng52f8tfy1WoJLjbzDLTlshyLrlj6QruZRgr
         N6nJmgjy2+PqICPLmC23l1Ys5bJknGM5gcN7jIT08TCZAiTLVBy7yWmwz+5HrtaIQDGO
         XUR2ehDvbxrVDTDeNYSn++wW7PJC7mzIJ/HorxLB0y3Dyx4DImP+chjcDC45cvRW6VAD
         UCuTs8mexGYtTz0cBJHs9vIkoafwd/oGomX5SP4KWr/yKIguqDAAAEoQtV+Kdwys2XdC
         gn8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IQ4R4zA2q6IIR6PYd55YDpnT/wxmaiRPm9npnqVm8lk=;
        b=WeSDm9UqrbEooT4ka+iooV5UIDslbAAghu211wQhWJ6/fuy4XT8lQOwqd580m41Qy5
         VWlK6A+MalqA4TePrd5hTYoj3rKePt97Qj+wsp9mcmxh6xT+HSPvGt6tOcIUQ3ykovhP
         HRewc8vuJzQuQJvaT3/oDOyKViv69j38JFPy04FPuJaSZjpnCOa3VNMe4F7fzzrPDsjK
         CH5DvfnU+ZxNk11DNizoPc2DTh0BJkMUI6wtUgkhQuApPPprP8PLQFOLSOcYRGDOGa+4
         QAudrZPn+bQ3fux4g4rXLoRHah4S537guK0w5wTgWQjpGMQ3zbSqKn8PnD0MEVRLHZ3E
         Zsig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530K01S8JgEISO+PooTtdRjiLRj944cyVh4bjy4S+VMkd3Kn2fpH
	mSmsH+JQDK6PbilEnd9OCb0=
X-Google-Smtp-Source: ABdhPJy0G4ULXO4/6bXmrElTgOjNGNBFCwxrHfrmu4vYaB/ifep8+s63RfNr+NzUnYQ415EsDbWcQA==
X-Received: by 2002:a05:6e02:134e:: with SMTP id k14mr32317464ilr.31.1629895944521;
        Wed, 25 Aug 2021 05:52:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:6c7:: with SMTP id p7ls470036ils.0.gmail; Wed, 25
 Aug 2021 05:52:24 -0700 (PDT)
X-Received: by 2002:a92:c264:: with SMTP id h4mr11817478ild.26.1629895944167;
        Wed, 25 Aug 2021 05:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629895944; cv=pass;
        d=google.com; s=arc-20160816;
        b=pAKRU21dyghTyOpZouNd5ANErI7Hf4Wv+yDc/yoSzXiC3xseVq+I4gw+ek9iAUJVrw
         Lp6kJdp0zXN1xOwhKP3coR36D1OJkA92OGPtIQV94CCzfGWGSNXQiQocxVHTcBUqbSlQ
         ysVOJxzH2C74aGVZczgyo7C8zvg8fWSE39WGCH3ZjgygoxbZPf1nd8yhQewvCGm5xUQ3
         Onix0FU8Wq4OhLEP0qOkGlQpdMx6S0fMF7WnKWRrcdzZOMYB5f6vyn9r3oruolTlpZOi
         NlyCA4D+bi/EUjn1DDRQdggwosDrMH2dN6oVg4dnab1YlhJLveJTvYSXGiBmc9KnLU27
         KOtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature;
        bh=Om5is2k2B8ElS/CyR00CzZe71ElrvS0Sw0NLCStdbd4=;
        b=0VsXbklAWVdHGIveJ8rvn921bE0B26dV+Z+kAsN9LaDt43fzamuI073PjSLr58WzGX
         T2U2YFVyXeqM8uEta+r4oTn0qZYbc67iZtdcRq9zGWlfFVMUR4OM4GGT25rrdmeyA8gX
         W2jgyvmEINRfAuvRtxLiz1lXuYUYHZMdCMnZ+Q+GgRAyCUCU4drygnB9qXUY59hpP8vd
         tbKj/0ATxnw0ZQnWrxOJu09LC+mMbvlBYC4B4LxrWY2cX5LOfMNeiuwFxTMvQM1ZU9T3
         IJBy1elgrcEvpqCaR6aWT7QtZvcYLxYgMPLEebiom0ZcrK1gH8PWDORZHHO10pDeShFq
         el3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Tc8Y1Rt+;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=QDOv79lv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=zLa4JNJq;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id e16si1156956ilm.3.2021.08.25.05.52.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 05:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17PCb0DH000895;
	Wed, 25 Aug 2021 12:52:23 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3amwpdbag7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 25 Aug 2021 12:52:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17PCpIjm134999;
	Wed, 25 Aug 2021 12:52:22 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by aserp3020.oracle.com with ESMTP id 3ajsa78ger-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 25 Aug 2021 12:52:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZdDu6SjkVBbzDB1pyXyk6aL8vsCgb1TBztg6uJW+p6y9OU80KIgJPdLze2UKGsBr69SIRHWRpbzOUdNfjbYEg5lLG2MmFxvuu0gwJc0OV08G5eWUq2p/ddE1jXAKldGr46Povdl+3xpXFY4gxnOc32eryvJ++sf9lamZQcPSlmHGOp2Qfs9kdQ2aXhZWtlGPDQkrfv0nTdSaVeb2ymVZR5Ndt+RduwYDKfCGf0a+4wSrGaX+Eq+B36bvrDz/B0mIoAiVLL6vOME0Yld5waH0R+DBZjnRMWHTBs7cRYITd5W6/+jVg2tsFYwB/OvOel0ShEd8dAjupsVXwXMyR4x+UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Om5is2k2B8ElS/CyR00CzZe71ElrvS0Sw0NLCStdbd4=;
 b=h2b2Ece7vYcpN+xvOI0Qork60F0e825tg5qCAVOpmtmisG614cI/wWhSqCi+r/HwkJbWk/DAOJazKUpFo7i3xXAOcdSz35H3y5jkDzVmR+y4x6oE9kngkqipcD4L0WRuy1+IrJ1jWMYYxQEeGBnt6J1HQpourVJk7xpTs2rGFXvoOCM4rvxJJNQa8JJABytVany/QkM/r2qvIYoKX9BGg8XLAd89XwpyMLc3jHMPMP9MSYdW1S5boIhY8iVFphB58GAToXqZo1MTIcrl55CM5YIFbyDvKiOILs/kQFYNL8ev1ja7a+EYFrs4WP9wTpBTOfyQSIo0do4tDX/Y/L7TDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1903.namprd10.prod.outlook.com
 (2603:10b6:300:10b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17; Wed, 25 Aug
 2021 12:52:18 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4457.019; Wed, 25 Aug 2021
 12:52:18 +0000
Date: Wed, 25 Aug 2021 15:51:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pavel Skripkin <paskripkin@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Larry.Finger@lwfinger.net,
        phil@philpotter.co.uk, gregkh@linuxfoundation.org,
        straube.linux@gmail.com, fmdefrancesco@gmail.com,
        clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
        linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
Message-ID: <20210825125159.GU1931@kadam>
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
 <202108251911.Vwmzl4rI-lkp@intel.com>
 <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0047.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::8)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (62.8.83.99) by JNAP275CA0047.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::8) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend Transport; Wed, 25 Aug 2021 12:52:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc3be84a-e92a-43e4-e8e6-08d967c72b77
X-MS-TrafficTypeDiagnostic: MWHPR10MB1903:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB1903A2AE48B3007A78F0BF568EC69@MWHPR10MB1903.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F4NkzW3FdMljpK8+VgUuYnhhEW5Afs14Hjz6dQZ+15QXEfIZowe3k9z1RZ3gfoD9dwAuUWqfz6ORk9y8SC9F9/K00iTH/3/VGqrK5WaLD8vFXxbCvJ2pJLnZC4yD2HjNS7wwzuLB8/3KdQSum0AVjRytBvc4iBZdOinK0cXsxkX66/Gm2fDzheHE/3pPeBEKITog4WD8a7wyni8h53vqvBAWXdcVrF2IuIMfi6FZByPE63NfwPypy20Eb6kx+I/wSovutAD76MqvydKKt2YP8M4jyscooIJOgbx0+sF+w0O632ndZAte1lYJav2p6IjmETHpuhHSrxCAuansjGBRA1HuVIDuxXM17sWIQc+W8nkE5EI72aRQgrMTuRTbAN1qr9TTL8HKqMEDFnfmi6yGd8x/LdYIEFnsV9tBtdox0VvOxLtff9lIotBO3y5lNWEeYo44QERJylVmX0hzNazotJ1snXwz1yXHbfKexyfFGdz8u1z3KcjehQimyPN/h/4tlgV+zD6epkcXEJDjskE34lndRY5DfNU/4lzTc2LE+TEEFj6t0BI52BIQmxFg6hb7doGMPnoj3ptu/+QPph3CIetnerCGWS1VETG67YJdkxD6483yGLnGZq7ZlJoMV3hIuuTF9P4WZea0QDjkI4BWvMByDgPJZGvwYxYibR/sC37X7uAdvhhPseCcVJaCuTaw2gP8TL5aqMZhB4tJLe42rNGBmdHwe5ncZh/rO5/het8koKXxcJ5P8MaSUk6cbWcfZ21fifGGxUUo9U6GAKEtH9rN6Ld1ERueOJHDyZUXoQToILC0ELt2Rx3CZ7r2hwUqbryOosFWdKLxsNHb+SLzVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(376002)(136003)(366004)(396003)(346002)(966005)(478600001)(55016002)(5660300002)(2906002)(44832011)(9686003)(83380400001)(33656002)(956004)(66946007)(66476007)(66556008)(53546011)(7416002)(316002)(8676002)(6666004)(1076003)(52116002)(6496006)(8936002)(9576002)(86362001)(6916009)(4326008)(186003)(38100700002)(38350700002)(26005)(33716001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B7KlDnRi+ywNZGu6cgoKEekQQ76dzot+YnHZN/L2k1GgeIPABnYHqNUg4EYg?=
 =?us-ascii?Q?fMT5RgHgITxBAw0ZXEhoEms7mlNdmMm46bh52QffKOOv7wrppvowo/42ni+A?=
 =?us-ascii?Q?0wWNRY56dzVA292ZS2CmjqyvpW6MKLwhQMwfskUEeRoB4qoKGJ12yQijZebv?=
 =?us-ascii?Q?LToFzXwtASoUhNZBbwUJgHq8bpWgUKjxWs6Ku29eE0kL+qxehXtx5T2A/2Ej?=
 =?us-ascii?Q?yp9S4snENMnnfWO9D/FVWSuz4Ey8Wf+X7ooHPaFfsBv3t8X+QznOsnUt9LUd?=
 =?us-ascii?Q?8tC4Ntv9wr4DiBLAxSE3ubBCWldEDXxZ+YYYbW1/rBMbUM8G5H9E+PFvDIwo?=
 =?us-ascii?Q?/+8VrYdpdgZ8LlM8A5TjqB2MsBZ4oLEwLmo52wXm3uMA/eMwGQto83kOfMMU?=
 =?us-ascii?Q?e7Xy3b7OS1LMaLfHfwhC3GRQOxa94g6IVMuKcg6xCQn7AR/qVTA6bmi0kdaG?=
 =?us-ascii?Q?wCpzE6OulzuF/osHFWOdLnAQ+00e8NxhZG4fs5FesQBbUHGhLZd1ZJigShl+?=
 =?us-ascii?Q?QZZCID7GEaaHQjNRD0k8TC3HTTF5JkStmXaEwxyw2H3E9CHersBp6oaSQmzO?=
 =?us-ascii?Q?TgqFMUAVii3qf+4X2WIvI7PIEY4ZHAvJVo6a9oxtzc1YDtfly9t9dtv5hbSm?=
 =?us-ascii?Q?RWmZEJA4r1M9s8/3Hq3VE2lX9xn/opvP3/Gdh37AsBg86WqcSbS87S5Y1YBI?=
 =?us-ascii?Q?gCsxqIZ0klcNAlIq22JzdSc7nTxz8DPxjQULGizYvNe8EEC9248HTsilwei/?=
 =?us-ascii?Q?I/rKxQJFqfnLrY9QPGVPmgTlVVUfCsxtP9WtwXnpef78nQxfh7tOYrY+Wea4?=
 =?us-ascii?Q?51P7klGeQQ9CrC6jA/d8F89b6RBVrzkeimi2wdyMaG5rvuSxJ86EKLX4MXPb?=
 =?us-ascii?Q?q8Wo/pSFCwxMx/VEv9YoctFbVBAPM1xE7jcawaXh4jETi9iaxTXZmdrbHUEw?=
 =?us-ascii?Q?cXKQF4vWMl8vemY+uEMCGLNLm/1HcnrOOXpPrf31Aju9jO//fJ+PuLrCZqlw?=
 =?us-ascii?Q?boayhht/qtBEXfix6pP1cITXez3prdjAB7avmfkBNJDOrD34YNx7Cu8ycnkT?=
 =?us-ascii?Q?HH/mku5izYtbTLKqhpbiGP7072gusATMVXm7NfGPXEnUfbhvjn8kgH4aWmtk?=
 =?us-ascii?Q?XV5oo0DjxwsvCpp0dbG/Ke2KAUcqVX6Hf3nLRQBzp6Um6NK8OvdgQfrZ6XLk?=
 =?us-ascii?Q?MJMIReKf6IV2gergvSYdxVVtRiAUzVNMSXsxun9X7SNh0BYisnHBly8ZaJVk?=
 =?us-ascii?Q?meSz+c8ngVAZbLiYWr7QEoE4z+qUOxjLrUDVSvbpl70v5pHvUr66y2FbHliA?=
 =?us-ascii?Q?gPlRjJEv02ZZ/JLVa28sDmO/?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc3be84a-e92a-43e4-e8e6-08d967c72b77
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2021 12:52:17.9573
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdL+JWcXQzcFy6AHCKJUWewQRhrcEXs1J4qAjC0PSwQcxbldOOL5g0TwfMT/fbywyUwxKL1Reo8BzVXxRiVLAUbjHZblIj4ti0USGmK9FjY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1903
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10086 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108250077
X-Proofpoint-ORIG-GUID: wG3t9nL-3LS_3D1BR1puCyovgWsEaK_U
X-Proofpoint-GUID: wG3t9nL-3LS_3D1BR1puCyovgWsEaK_U
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=Tc8Y1Rt+;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=QDOv79lv;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=zLa4JNJq;       arc=pass
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

On Wed, Aug 25, 2021 at 03:17:06PM +0300, Pavel Skripkin wrote:
> On 8/25/21 3:05 PM, kernel test robot wrote:
> > Hi Pavel,
> > 
> > Thank you for the patch! Yet something to improve:
> > 
> > [auto build test ERROR on staging/staging-testing]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 093991aaadf0fbb34184fa37a46e7a157da3f386
> > config: arm-buildonly-randconfig-r001-20210825 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project ea08c4cd1c0869ec5024a8bb3f5cdf06ab03ae83)
> > reproduce (this is a W=1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # install arm cross compiling tool for clang build
> >          # apt-get install 11.1.1
> >          # https://github.com/0day-ci/linux/commit/d4e4bbed4e59df37967086f60fe92cb1b4504d37
> >          git remote add linux-review https://github.com/0day-ci/linux
> >          git fetch --no-tags linux-review Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
> >          git checkout d4e4bbed4e59df37967086f60fe92cb1b4504d37
> >          # save the attached .config to linux build tree
> >          mkdir build_dir
> >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/staging/r8188eu/
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > > > drivers/staging/r8188eu/hal/usb_halinit.c:2022:3: error: expected expression
> >                     u8 tmp;
> >                     ^
> >     1 error generated.
> > 
> > Kconfig warnings: (for reference only)
> >     WARNING: unmet direct dependencies detected for QCOM_SCM
> >     Depends on (ARM || ARM64) && HAVE_ARM_SMCCC
> >     Selected by
> >     - ARM_QCOM_SPM_CPUIDLE && CPU_IDLE && (ARM || ARM64) && (ARCH_QCOM || COMPILE_TEST && !ARM64 && MMU
> > 
> > 
> 
> We need to fix Kconfig, ok, I will take a look at it later
> 

This is not related to your patch.  Ignore it.


> > vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c
> > 
> 
> >    2020		case HW_VAR_BCN_VALID:
> >    2021			/* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
> > > 2022				u8 tmp;
> 
> Hm, I don't know anything about ARM compilers, so should I wrap this code
> block with {}?

Yep.

> 
> My local gcc 11.1.1 (x86_64) does not produce any warnings/errors
> 

You should figure out whats up with that because it shouldn't compile
with the gcc options that the kernel uses.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825125159.GU1931%40kadam.
