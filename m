Return-Path: <clang-built-linux+bncBDVIJONZ3YDRB5GDRCEAMGQEHLLJOFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id CED713D9C2F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 05:35:17 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id lx12-20020a17090b4b0cb0290176d6de7ddbsf4935120pjb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:35:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627529716; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkaiW6p9ztFH8ta510LrIRtubg4v0RHr0r7+jS0JX7j3ksfVQ57iKmizDQUztTvQ6s
         w2LjDjRCsN53AjvF2dfDNDLFektOvoF+wKD5zv//Q1MF2Gy271ZHLPJEcyzqWBdveIiM
         hDDLXWNLO4VzckLzYcb4MY6RlxYjUh8k9f6JDhBuZ5dk8qJIh5/TrcMFOhnKvQzn1K+j
         icX8cPdySh3a+cXxSJbUMHW4eDEMOqDRjQfVpBIMz8mwNYv95Nw97p9R1MhnRB+l4Qje
         QhpKXFB8dBWH2R4Qp/cFyDg7LM7EcKAOHvH/CcTRIXH8PKuKg7Syg8l+QfGYomLG/Ub0
         NZag==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=fMHPciWhiYoQSd0mir/+J1BIzrtZXaLHGc2mA3LUl1c=;
        b=ygF0+STgeXa0VuUD872bbJ8evsp6DcDa+sSwhHyowz6Xp9rDIOHGSOB3GHKTWzEuK1
         r2gCqMRxLFbHI/mEaCadr3aCbp9KuZY+Yo+aZSC7QxpbH3MgHDtiQ3j8b826Exue8dP5
         it/X0CwT4+6tqAGd3ymXXbIzHdl9DXheYalOW5uE1ZqjXQHVBDxb9NLjru6IFu3yf7X+
         EKRysu9y3w82xyERhD2XC0NfkE1vFMqmX5g1J+C4TssZFfWfI9b9ScFFdCggSWL2njgZ
         2bnWDUotjheR7cuV+GqaGAF36jyXgyqC2Zr4wOLhuNMQjBtliHlecZOsvNQuirE23F3s
         37Yw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=kQrPOLsp;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=coRPA0gM;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=bs5H12FY;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fMHPciWhiYoQSd0mir/+J1BIzrtZXaLHGc2mA3LUl1c=;
        b=sGdS7yqFAwxBJY16lVXc7K5yyr7dd06Hok+n21OtfyDg1rIb/Re9sg6jX2nbaq1X8M
         0QERm60hMku8+p/wLeuqx4JnlfXPGKG0zqmBwKq+M71wV0Bye+is4uSn6ZD1IG2MqYWz
         8YSxCFI2F9wEvsg0EfoDjJcSK1tZPp3u/MD8NVleUpWpc5qeMd3o2hb4qePfRjFdxUlw
         ggcEU6BjkpP1JZIElyZjUXTT/0XgpXHA20sdBs207XKxPxFZg5kBjoqyez57K9eoY27J
         ucheTL5zR214OkkaTlmbKNwKxBFTEPmk/9oNc4j/pGUQkulQEcAfmWS38xq/4haCVT4T
         La8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fMHPciWhiYoQSd0mir/+J1BIzrtZXaLHGc2mA3LUl1c=;
        b=A/bARPbBTr/hs8f59pxA0aRA2k/6nXeF8SedLjln7urk6l156Jj5ucIpHUHNlJfW/u
         t8EIy19tdt8N4W+EOPAsE4LqLhgo/Uma+lUPjYfyayZZy11kuaPRMnatdpjFRmI4mmw/
         naHAJb+KZizaFSda/KGTiycVdAohy2aKMU2ZMsCg+UVLhowJ17og75fXZqQcoq1fTVYj
         yyyAhliUZ2PzcOpMAXGpo66imdg4V8i2MnSu4pgsg4rBEF6CSD44S3Q7LcWkkYic7tzp
         yy3Tmi1LiQ/JE6dwEwtykJBllqse6Yjlf6fA9PvpzQZj5D+VjRtKKfh4oVH9OTO7DYRJ
         li4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531w843ASUWSw0fpQqh4QLuPK7V2Xhfhyo5QVUJhHp/H+7absCyB
	Wdy+dQs2KlryuCxaCQIAqq8=
X-Google-Smtp-Source: ABdhPJy+7DQs7wXevvoYC3pBdWCyNG8e7wEaWj+r6zwIoB4MmD3ND7gVf+Ekt/+1k/3qw15ITIdHnw==
X-Received: by 2002:a17:90a:8403:: with SMTP id j3mr12289913pjn.112.1627529716465;
        Wed, 28 Jul 2021 20:35:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:139e:: with SMTP id t30ls1757567pfg.6.gmail; Wed,
 28 Jul 2021 20:35:15 -0700 (PDT)
X-Received: by 2002:a65:52c2:: with SMTP id z2mr2013253pgp.225.1627529715816;
        Wed, 28 Jul 2021 20:35:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627529715; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8vyeQPhJ+/O9bYC+gJUtO0PcfR27VhME0rfM8AI/D0fOLQOs+EpZg/uiGjFpWPfvv
         kYZ7GjGG3/lJqgRCLtHXVgyXNT5WIBI5uD2+K6W05aqz8eIOVQb/Xb/RI1n9NwGC2row
         tzhsl2/ujJoOr+MuBe1PEj4ie2obPWAmr2N58xKLO+KH09xbGRWYcIgAbEFQQj4oCXwF
         b1JTM25fT6shD6HGZ10GU79037aiD9rDqfb11FXvgFb/m97AKpblk2HgORRkBWAsP1BD
         QrZMjfY5VGzsxBp9r2K4TsXbtb27PsVX6QAauMMkbkO8fvRlfiHjlUFo4jzkU+nFDIKA
         y2XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature:dkim-signature;
        bh=ZWdpV0hGJFnHE6FcvFZBpbKRd/JbjP4cJdSc0LMx3hY=;
        b=DCRfgRQ73fmcF5T5EHNNFePmEx8cEBoNCTzV+GoC0LCf99RQ5kKL51lvm/lgnjOKtu
         Ijcn8IAfQMWpAbC3SC+wl54/nrxvk9W3l+zjyWva7et4mftCbhVol7c1VOHdpBvw5H6V
         OhmGUyQYbyBawWERDYq71JsH//MKVCAgByhqxM6iVE9S0ZN9lcVja9Q2ioJ9/rsPfV8/
         0dtuw4Le9lFkv7jiX7PwhV3Qjyu/e85BECS9C19iJ9bu/L6JB2CaRTL++v03mXRcpoKd
         4LTNpCozvCk66uNEIE6upgF1Ec3C1b6kFuADZEMI7DzYchRX/xwheB8n/xyeytmODj3J
         jGvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=kQrPOLsp;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=coRPA0gM;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=bs5H12FY;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id c9si126201pfr.5.2021.07.28.20.35.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 20:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16T3WveC001968;
	Thu, 29 Jul 2021 03:35:13 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a3cdprta3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 29 Jul 2021 03:35:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16T3VeRH182116;
	Thu, 29 Jul 2021 03:35:12 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by aserp3020.oracle.com with ESMTP id 3a234bet3r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 29 Jul 2021 03:35:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I82tDSPztnwrQB8rRa6u0eDWs6ACp5ezDjvJz/eS7uD/jxHn9274zHiO5YMBOJCyWQ3mhkH1EZpEPS8T77EwtO5bGUovQxqyR2L/cFQ2IsMmyxAyVoAqOrbdE9fxiRxSCbLOgMnByzCzAzjU5yAyGZBaqebG1pqxJWpd69HExkmWJpUTOGBDfmaa8X6Dk6txUE85vkZwwhq51xRnE6bwV/WWzEUok5kGdmxRcwRdQcGnIBDDJzls/WY3KbBjjA/AL+V0OVTzr/TpeAKm1DoqaIn7KYRKS7FhnFV5mgK9jdObSMTQ9nsvPkrGvISnxtuMaIfI9IjgIiI9QCWqtTP/rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZWdpV0hGJFnHE6FcvFZBpbKRd/JbjP4cJdSc0LMx3hY=;
 b=D5hZYL1Dmy3qvFP/DiELgJsTNHRlvWDMKAK9/PAwDvMBLeYMR/yasBDE+Hx91l82dNPC5A1jeL+0Ipp+4pgk+B7Sh16nP7wrLbg8U+Ad9ZFNO7pgr7jKze+WWzTnj60TbJqthsnXrIVMpOg5T/qq9wZfZbmDV6UsSFmJBRPEDWqUGXYKTE7cL3e5mqLC7yXmOPnQ8CgZyf9XUW47AK242l4ZC5SMDIkZAV4gHL//kptKqhlsQpR59gJ8j7by8urWfTXFuqGgH1kVWpn5KgH92NEI355N65k+2t6dcTK/DWiGsNk3RPhctzCi3ShgIk1TbB75NoIjxwOyZvitkUaXEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB4600.namprd10.prod.outlook.com (2603:10b6:510:36::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Thu, 29 Jul
 2021 03:35:10 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::153e:22d1:d177:d4f1]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::153e:22d1:d177:d4f1%8]) with mapi id 15.20.4352.031; Thu, 29 Jul 2021
 03:35:10 +0000
To: Kees Cook <keescook@chromium.org>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
        linux-hardening@vger.kernel.org,
        "Gustavo A. R. Silva"
 <gustavoars@kernel.org>,
        Keith Packard <keithpac@amazon.com>,
        Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Morton
 <akpm@linux-foundation.org>,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
        linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
        Brian King
 <brking@linux.vnet.ibm.com>,
        Tyrel Datwyler <tyreld@linux.ibm.com>
Subject: Re: [PATCH 36/64] scsi: ibmvscsi: Avoid multi-field memset()
 overflow by aiming at srp
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1k0l9oktw.fsf@ca-mkp.ca.oracle.com>
References: <20210727205855.411487-1-keescook@chromium.org>
	<20210727205855.411487-37-keescook@chromium.org>
	<yq135rzp79c.fsf@ca-mkp.ca.oracle.com> <202107281152.515A3BA@keescook>
Date: Wed, 28 Jul 2021 23:35:05 -0400
In-Reply-To: <202107281152.515A3BA@keescook> (Kees Cook's message of "Wed, 28
	Jul 2021 11:57:15 -0700")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SN4PR0801CA0015.namprd08.prod.outlook.com
 (2603:10b6:803:29::25) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.ca.oracle.com (138.3.200.58) by SN4PR0801CA0015.namprd08.prod.outlook.com (2603:10b6:803:29::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend Transport; Thu, 29 Jul 2021 03:35:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33b209e8-5a5e-4d3d-75b5-08d95241ddf1
X-MS-TrafficTypeDiagnostic: PH0PR10MB4600:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB46007BEC737F5569DE1983268EEB9@PH0PR10MB4600.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AwHw1BUVq84EQ7mpN30wv+L5ZrfjjgX9jykcUtHn7cOLmbFOXdQAoE1irMevKtI0kwTI4xIoOplGxwdrUKETOuG2wSRB4yg6/CI8I5Rvx30wZ8craw24bWd5htycYMOLmJIQ6scm2hoqOFm/xvbBhregNkza65fOtwIVF6HUfa3SKAvf0777/q0VxxLHReFKmdaIp5Y+DaFz5YEPs2xBY3r42uU8h0qsvg6QWglo+KF/hYSHySbWYPtMyzfWaEglbD8n9F7jOyXhSWV0M+8Fc4DWX+ZJZ8AkVEJ/60n3boQ7Wslsb4pof8zbi2FgbaodXCZRlTQaJjaCj+ep1re9fvAA/CtjkZZ8d7CdN//VBHHxieBAvNY3Lanm9axvrhYyGJnewVjkloHlleZEJIcsuaisolR001JbHB7XqjV4Vf8SMYNtsv6zg38VP+rjWZl6B9jliTpPCExqjYUsxVan+Zz19DpBQXcFVkUAEueY7N36LsAWMsM3SgSeP3lt1snRDlmrqmNpCsSOKv2Z2SF3iHA2a2cdr628IZhgsOAvTMYVdXsqI+aMXlN5Q/ReTJjoEScvkY1VbYIEK/6IQI5tfrZNsxBqvghka4+6d9vfVde3qlROcQaHewd2pyd09KB81mvPMYrWOGDglQuV7tt5MF2QyD3/sv9F1823nAD8QzD+LR8x1xUUMkFuAYn7XjVQO9SFLSpusZHUV+Yslj84PA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(366004)(376002)(136003)(346002)(396003)(5660300002)(54906003)(66946007)(316002)(66556008)(7696005)(8936002)(36916002)(52116002)(7416002)(186003)(66476007)(26005)(6666004)(2906002)(478600001)(4744005)(956004)(86362001)(55016002)(8676002)(4326008)(38350700002)(6916009)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EoPQpRe0GsHhqTSyPnxNojzVvYcTj1xnoQivKMmj7uBrAoLeoB/JyJQH+1vo?=
 =?us-ascii?Q?Hl9+H7fwHJ8sa9k3mRUw/QgwUZZ/WcMs3PdGwdVpNsZIMfdc2Kt6/tqU4NS6?=
 =?us-ascii?Q?9WJ5SOtfyjW7YVoaRsoqQkq6q8E7Ycj6+ZFyVu4LpuIf9LnV5GiKS45S2iY5?=
 =?us-ascii?Q?naV90aVBWY2uujWxy3YTNfmapCPGozqi7eVED0dvIzhaEmJgN6fjXII+JHJ9?=
 =?us-ascii?Q?9BNzZpMhsI2OMA6pvEksA9ifEx4rtY+7XI13qcNyUJbivD4WYbBcy2saPCgS?=
 =?us-ascii?Q?FC2vUG2LrJOeM0uOBCsMeM2hJG0sRoLSugP9+sjSoUGHrNJn7pf0MgyBvWJ4?=
 =?us-ascii?Q?9PrmHpvwPGWJCxJ+TtHpey85wuUJj1d2LgW/YmLqRWyL0ZeJsgrXe3tjCOmQ?=
 =?us-ascii?Q?ygqGILsSR1GOpSfjEPJRtqoC636rFPXkm0OxsdpVOrD2oI+kZOvRmozdY+9I?=
 =?us-ascii?Q?xBB6RSGbT07RIKs3kCNl2jGZKRQTCDg34+4Zcp+gIC0LoDVGeNzwRI3ytMAn?=
 =?us-ascii?Q?77yk1w94UBWq3zcW3Q2aHKAQWYKNf78m4V05qlozKpwn+bgWLL0jA7nvIdGK?=
 =?us-ascii?Q?Uzy8DqucnXVFVityggFs/LSvjsm8dEdOQb73JiyI6q3jkxe18PK33pwtOe7J?=
 =?us-ascii?Q?0bFoD8BqHlIKNK9giiynJuB2M3xVF0ES+v6mnWiIiJOcfx8Z08nPO1p4yvuy?=
 =?us-ascii?Q?TdneBTc/ITkHH1vaEdoXvfXcMhae9vlPjWVpiGWOpJZGmDMiUN7bhX0G1QnS?=
 =?us-ascii?Q?XFk/z0TncMswUeWI5XEv+BrJUoGVmEUU0IdN/nQAsIioAZKgPRZh9Uunior+?=
 =?us-ascii?Q?ECYuYkK4PfqB8jmyNdzd/cUOFuJyAM4tSnQAJhaRqSdRFesjgLZsfZ9vmDkU?=
 =?us-ascii?Q?Dchy++pHzInqNbjz2zvgBYRgxRFnuLQOKW7DHHvvPJYaIX6A/yUMn/f+ju3/?=
 =?us-ascii?Q?841835qa5irMsyOSncUOHPTufnuImdMWPxreiCB5ZaVTCvqcQsT8uY981CuS?=
 =?us-ascii?Q?igt6fcTWnpq5MsnKZSNk2odKTNFv9fgBJy7612Tg7fhsHRNjZoKE8uS4LXEh?=
 =?us-ascii?Q?lgHyukzI4edJ4AIXoSh/o2l94qYJ84LLBZBvb6vg8LY6XWQ4PArcGdy4Mynr?=
 =?us-ascii?Q?DUv8f9xVwZ42UV6Z6KEU3+VSqFvRbEaJChdUmTXK+UgN4WtLRyZOoEBA+nOT?=
 =?us-ascii?Q?HldkCtqsWwQAEvmUN+0due//2Q5JxGPA+TrSZKiPQXi+66ndtzus72LrOs/1?=
 =?us-ascii?Q?q45fEEzxNnzU9NKns8QZDCqu8XujINNBEqPR5XZ6N2HOY2gwo2FkWbuJQc9Z?=
 =?us-ascii?Q?X5Q3/tSf/yC29zR4XbB4QXzl?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33b209e8-5a5e-4d3d-75b5-08d95241ddf1
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 03:35:10.1179
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6iwHCXh/syKbT1Ntaus3JUlqmCXyLHIUt0B1cbTXS5W5T9wbW9VhwRDW0fVgDfTn7v+s/o56hGNXZyygleLtLp5kLdV7fMV2ikoxfiIcPCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4600
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10059 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 suspectscore=0
 malwarescore=0 spamscore=0 mlxlogscore=969 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2107290020
X-Proofpoint-GUID: lHN6bFWtzTTbm3Z03lQMRzkSeRDUEh85
X-Proofpoint-ORIG-GUID: lHN6bFWtzTTbm3Z03lQMRzkSeRDUEh85
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=kQrPOLsp;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=coRPA0gM;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=bs5H12FY;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 martin.petersen@oracle.com designates 205.220.177.32 as permitted sender)
 smtp.mailfrom=martin.petersen@oracle.com;       dmarc=pass (p=NONE sp=NONE
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


Kees,

> For example, change it to:
>
> +	BUILD_BUG_ON(sizeof(evt_struct->iu.srp) != SRP_MAX_IU_LEN);
> +	memset(&evt_struct->iu.srp, 0x00, sizeof(evt_struct->iu.srp));
>  	srp_cmd = &evt_struct->iu.srp.cmd;
> -	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);

> For the moment, I'll leave the patch as-is unless you prefer having
> the BUILD_BUG_ON(). :)

I'm OK with the BUILD_BUG_ON(). Hopefully Tyrel or Brian will chime in.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1k0l9oktw.fsf%40ca-mkp.ca.oracle.com.
