Return-Path: <clang-built-linux+bncBDNMJTNWWEEBB3HWZ3YAKGQE7QLJBAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id CB733131BE6
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:57:49 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id 143sf30240118qkg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:57:49 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1578351469; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+Gxenz8g2MVrPYEhfeYTTGCx0aaA84wPkdydAQkelm+DO1irHdu83wZgX1t/uYx1I
         zSrQIPnfGNT5jXEnPZzWdlstsUq8Esb6lJdy4qOYjsZ0bPQ8Acemd/QfNWIVZLixD7YX
         bB29vePcyxPDGmkw+Q3tBThmACFVm5v9QLbowYXCPM7nTmWHmHCa0L+ujnMGQqRxnYHq
         +vRv1kEnJJ7tFMm6gM/GjcBY2QsbCIJgE0AtpSceGGO6XzTGV/ZS7G1SfIeqLHlJjgb7
         ypfpgAeZt6SoRbmY4d1+C/kjpHWrCTyrsL7+thhBWjVCmzvkrQwVUIi0wTfHB0vVEYqv
         HnIA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=/D4L5KiaPQ90SzJDREbyAo7K35620WbUxdC12GEkIEE=;
        b=w+hT4vDkMMg6yYnrnY/IL7IBW41of9hQS8bQVQ0UiNvQCYbPqduL4y27s1hcNfjrfG
         A/US9Kr+xlABDGcYSK6E/iUb2u3xlMl8IPFXMAlQQu2jV1Kf4rEfbkvsLcSpaaGAXXsu
         DPTXQkHLbSDOeRFgTS/r9ZADlP+8OasS0YAtGdhGcktM2xahpECy4uyqYTfbRx33FOR+
         8wWxt5qOgW64ojce6HVc7q7OOWiYuOwvJXyav5m3Y/GVK6vNtqXr9CtiiRdhemReHl9s
         JmeBRcIWswYRdyii0d3eqQMyQo1M/7IMJsjO0hx9cUunIDaHfDV5riBa8FFYTEJVuizP
         4beA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=AmVFGLkC;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=C01K7EsI;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=827429c2f5=guro@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=827429c2f5=guro@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/D4L5KiaPQ90SzJDREbyAo7K35620WbUxdC12GEkIEE=;
        b=lCtahEYA82m2cXl+8SmSpY4FB9WF1MJ76PEFkbg4KJJfr5u2ZDhe8MUMQHubqJ+/1B
         QmmZnuiJiE4CgLKWaHk6AmHfVzDYIQhY2xWhdrrl7rEoZJ8BLmxpF59wu6zzcqpq7+r8
         QNPZnH+SKqonltFi2lOssULpfSvOj53DSnYBJ+SKRGjUjYUgONobKYJdRPZra8Y2uXNY
         DnyxY0UVTo/2WK9mK0/RmR56lxoCHa0QLNfPRmV+hqzNfF7xckU9VcoZC7xrUFlwNv/c
         eXI45ItorKtVmPVhgtGcHEayppHc1RzMDwWeTgi9e//qe0hLWoTulOKpjuDdDEWAPY2u
         RUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/D4L5KiaPQ90SzJDREbyAo7K35620WbUxdC12GEkIEE=;
        b=nnQjeRdy7blMh0Q3JnrBTPNnVIl/Tib68IT7/EpQV7KlUhowHBg/n4uPtQvG2PMtPV
         Jf6YH+trDSn2Ke/GUpmS0klP1DCsMzUef44XU5EQrgo61fCY5GzpSdoOc3lgrPCe1Noi
         SYOKuvYbnYZfw8nGVPJT2EhKTp2lzzJeryzVaptuE6YkV/7xjbrPJsehCocf7QdYP4F1
         js9OMuW/jN6OXbtyZWROaaIn6kKbuG/RuHhDX83MFgdFLa56Q4Z6XE+CsrTAlbhbctP8
         TxavmvZ3x7wNHCj7Zthw79x3Fp7MOe94s2BwYeeJ1BunJFXYrPHBGLgBwhICUe4JKUqr
         mBmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX6jC0pa0WgRPcHAt7fx3qhue3vFxt5VDDeCq6M+3aXg0gYUGG4
	1QPcjcxBMORhWutU8fOcNAc=
X-Google-Smtp-Source: APXvYqyh1xZJwIIC5A33y9Y+HEyYTmYaGoGG+BKNcZe9kCuXTwIQW0CmCAapG1RGc0DjbeoC2sg8Ig==
X-Received: by 2002:ac8:4616:: with SMTP id p22mr78253549qtn.368.1578351468855;
        Mon, 06 Jan 2020 14:57:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3690:: with SMTP id a16ls6882356qtc.8.gmail; Mon, 06 Jan
 2020 14:57:48 -0800 (PST)
X-Received: by 2002:aed:204d:: with SMTP id 71mr78303277qta.116.1578351468549;
        Mon, 06 Jan 2020 14:57:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578351468; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fv46DmvfMshhCKyUPmscIJrkdXt5H8Tjp5aLoYjZsvM4WI8I5VVsjV2ML7tV+xJszO
         uowTcU5yivxqI39Sl4RJhuA9fYS0ZnOPyH/dqi6BHAny+aZNawZK4KNKWq+e6oCfEFKL
         2+wrn/o+R/Tknp2AUzuWHNluxqnILVxWlU2YDCyvq4xtAw2V+tkJ9KWJMb0FrMKNhesu
         xzH47Qzh2iwbxwYWNF/5Bd7OUVplHx+WYlet+KL276xg0o6JNNiF5KqZRqyx/uDdyMkr
         mI68LBjWtudkb7UQYT25DSCLABIC68aeOZPh8DjbuLLDMhfqaVNF0hUphth+/NiIcdq5
         bp3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=t8yI2ZiE2vxGpbSGuCa8BaFSd21/gp0OJnt9ta6V4gM=;
        b=GDftiWcfJ+csoA2rYiO27ppfSqH1hEAu+RITuaEsyOTHJN/mN7GfG5ZHqo+tjp9M+2
         H2LDJS85KoqMjWgtH/r8Ybqlfi75aNYL4gI5TIRWmrJ7o7kAW8DLETKGRASZQVC/01Xw
         HaS/Sth8n6geCh345CWY584D6NJZvW2aHOdJgB2Hu8WZd+Yk0nL+tQYygSdqmaviqfgj
         FANuWD+U1fR7NOQ0GkVi8jcARpgfEOsg4LE9ZfiQ+WCbpdrtcxO6qyjV+eCgoe51A56o
         9DwpMHL9urOc+P4fOebI/fnSlMdVL5PXoT31Tg8R6GvBviZ2TkNBszzH7jbyVdfV+dXv
         wJQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=AmVFGLkC;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=C01K7EsI;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=827429c2f5=guro@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=827429c2f5=guro@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id w10si2360145qtn.1.2020.01.06.14.57.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:57:48 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=827429c2f5=guro@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.42/8.16.0.42) with SMTP id 006Mrxsg031753;
	Mon, 6 Jan 2020 14:57:47 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by m0001303.ppops.net with ESMTP id 2xbje9f2k9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 06 Jan 2020 14:57:47 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.175) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 14:57:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8tte/1/BB7et1KdM3MuwTf1MCKxb0nEyJIVBYAPphDBQIGI8ExIfYD5/ZqFxFq3Ttx3SCaz8atW+XXHQlZPeiPm7tTOBfkJ47hZxQ4WEFl/T6dGMkgbKjBdOwOcefpbsxlV1RaqxI1mAXX/b4evXXyZMV3gQEiBrOIzMfg5o3HrglyMUmRweOHpvBihGwNCGobpdlX9oahsWJqWoBf1dhEMmItFZ29IBfvdplk+UhTLw7zDF0mVig1usMFkulLjS0r6lbLbVRq+0guPH8h37RPED8h7rsMl47VM0tSX6/HvqPn9s9bmL4dMutVivDle1TYqxHiDG7GdkdGKQk6s6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t8yI2ZiE2vxGpbSGuCa8BaFSd21/gp0OJnt9ta6V4gM=;
 b=QaaoMRkr/ftMi/+KHxUGX0gI7bPiTF2shoZXoB33YSbhnnuD0u2Mk3KPV5ZGVCFq9oarLDYh0I2K4RhhIE2aClu3AMgGUwMl263uhgUQMiFp4RVIKJgpPAnw6TcatIdeJx9avOVXAIq2YTiybnIDANq6cgsv0YWlYyT71QrkXnmBEJIDOJN5eTrxuRnXPm7Kmhe650y0jmMIH8ttBP0GMioXOw+ZlVp0MjrffFJF+YtGFu5RhkfE9hHLvltKrGVux3GJDtvsf+DjEEEsH5Rr4tUQWV9DTbPYPUjSutbxxRnKEutTgeyxZv+afvEaSZT4i+JSawW6WVXNW/1VGeEF+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB2631.namprd15.prod.outlook.com (20.179.155.147) by
 BYAPR15MB3381.namprd15.prod.outlook.com (20.179.59.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Mon, 6 Jan 2020 22:57:44 +0000
Received: from BYAPR15MB2631.namprd15.prod.outlook.com
 ([fe80::ccb6:a331:77d8:d308]) by BYAPR15MB2631.namprd15.prod.outlook.com
 ([fe80::ccb6:a331:77d8:d308%7]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 22:57:44 +0000
Received: from tower.DHCP.thefacebook.com (2620:10d:c090:200::1:3c1) by CO1PR15CA0073.namprd15.prod.outlook.com (2603:10b6:101:20::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.10 via Frontend Transport; Mon, 6 Jan 2020 22:57:44 +0000
From: Roman Gushchin <guro@fb.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "kbuild@lists.01.org" <kbuild@lists.01.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>,
        "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>,
        Philip Li <philip.li@intel.com>, kbuild test robot
	<lkp@intel.com>
Subject: Re: [rgushchin:new_slab.1.1 3/23] kernel/fork.c:400:30: warning:
 implicit conversion from enumeration type 'enum memcg_stat_item' to different
 enumeration type 'enum node_stat_item'
Thread-Topic: [rgushchin:new_slab.1.1 3/23] kernel/fork.c:400:30: warning:
 implicit conversion from enumeration type 'enum memcg_stat_item' to different
 enumeration type 'enum node_stat_item'
Thread-Index: AQHVxOD/6NdJxUaGEUGowPS0WrOA0afeP6OA
Date: Mon, 6 Jan 2020 22:57:44 +0000
Message-ID: <20200106225741.GA23914@tower.DHCP.thefacebook.com>
References: <202001050316.ZKXmkO5U%lkp@intel.com>
 <CAKwvOdm_B+fpPq_-j3Rf=nJBFj0tWY=7sp85dsrUyrxQo82C=A@mail.gmail.com>
In-Reply-To: <CAKwvOdm_B+fpPq_-j3Rf=nJBFj0tWY=7sp85dsrUyrxQo82C=A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO1PR15CA0073.namprd15.prod.outlook.com
 (2603:10b6:101:20::17) To BYAPR15MB2631.namprd15.prod.outlook.com
 (2603:10b6:a03:150::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::1:3c1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df0dfa5d-f21e-4afb-a780-08d792fbd770
x-ms-traffictypediagnostic: BYAPR15MB3381:
x-microsoft-antispam-prvs: <BYAPR15MB33819BBAFF472871CE62DCBDBE3C0@BYAPR15MB3381.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(346002)(376002)(136003)(39860400002)(366004)(199004)(189003)(478600001)(9686003)(2906002)(55016002)(54906003)(66946007)(16526019)(66476007)(316002)(1076003)(86362001)(4326008)(71200400001)(33656002)(4744005)(186003)(66446008)(66556008)(64756008)(81156014)(81166006)(52116002)(8676002)(7696005)(5660300002)(6506007)(8936002)(6916009);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB3381;H:BYAPR15MB2631.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UyPtr7C6k1L7rPuKsyymHgwG82puih7sWrLHv9M5N2lXV0qOtvLE+Yzwff4x2q2Z7WE18KwmqFUGzW3zCAuUE7uwBa3oufVTZxcrNmTHiqppbeOgnq+9y4jIDZUiX5OWgeWCUqHs+VxEhvXcN04UeJek87LO0eA6HzUroqWk9Q+/zUORZdxj9FUBGqPQwGiGQLdxmJcgCepgFHvj52C3tGEIQZxjxa+aAbGtXRLLQtz7ZCFdwzfOlkTPL1JNQzZKX9Hg/smxRRasq46jsPWhXqNmmVVDeW7srcxUIhe5g5aD/jqRStQAXopg8nXshY2SAmCjGgbnDfDvt7B/LEeTjmkQlEutRb+rTReLox5bVgZkK9pf8HLLxjwzoONTuUWyjTTDUUhbxhIZ5/L/KDjwoWiZIhh1mV6BcBIkdk405nX/ItJ4Ky4VQvynA2w4ewyQ
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <3105584C22D78A409CE4E4ECBEC40E5B@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: df0dfa5d-f21e-4afb-a780-08d792fbd770
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 22:57:44.7044
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P2qtaByJOWpbUyd5umHrB2U30fmlcYVlO5Dgk5Dhf8gKTT6R0lund8PAIYZHtQxS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3381
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-06_07:2020-01-06,2020-01-06 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 lowpriorityscore=0
 bulkscore=0 clxscore=1011 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 spamscore=0 impostorscore=0 mlxlogscore=478 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001060186
X-FB-Internal: deliver
X-Original-Sender: guro@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=AmVFGLkC;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=C01K7EsI;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=827429c2f5=guro@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=827429c2f5=guro@fb.com";       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=fb.com
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

On Mon, Jan 06, 2020 at 02:30:46PM -0800, Nick Desaulniers wrote:
> Roman,
> Apologies if it was already reported (working backwards through emails
> missed during the holidays), but this warning looks legit. Can you
> please take a look?

Hello, Nick!

I'll definitely take a look, however it's my private repo, so I really
didn't expect that anyone except me will be noticed. Maybe something
has been changed on the lkp side. Sorry for bothering.

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200106225741.GA23914%40tower.DHCP.thefacebook.com.
