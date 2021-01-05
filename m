Return-Path: <clang-built-linux+bncBDJPLKN2S4CRBQEG2P7QKGQEJTOTPDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A312EB3A8
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 20:51:29 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id f139sf406369vke.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 11:51:29 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1609876288; cv=pass;
        d=google.com; s=arc-20160816;
        b=iMozykxZyD0DXbLctmVVX6OPYbKwws2Elq5FY5WYkZQrnzV3WiAlv488w4GhuVT+eD
         QkyM4p/F0fCD6WtWPCUmv8jTueVrv9eG5UKU9sQP9kFSKkt2XoPsbqiOYyp3VpZDrVNB
         +OL7QCQMiRVAfNZD76O1IgOrgqG6doP+wXxrJQTqvXZIdyXXpT7/JQIIgD4mTWMwZjVV
         ouPO+afQjlU8Oa+fbjtfQb8Fg7jEVfpKTVEdEYSFNNJ6AT5wNqdd3JxTzF1UyjSX+BAa
         +SybdI6mwc48xSV8DlVT6nXrbtXPndpH0QN9cMFx+wZMLqqvxPlcRdWogN4TJvON/PYy
         rW3g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/gO+RFBpHyrn+iHwjEyrQ5VHPWQjmcGW5xnP4H6fxus=;
        b=rTkIuweM8Xl2zOkLE0UV8ub2iBbBxaFEmrUeaScblQghMqIW0iFvj12GFrwgfreUIk
         ILOPdyLR6I+TWGEO2A4beoDb/hHeqyvhDrPwL7Rk9NaB7+0/463rD41366IivvyYRWrI
         35egE5mKQ8P9lE0UhE1SLGenEnBd5U2COnIR9O5Fe7nqh2Z83wqy2nhb3JDpqqwaNHsj
         XPmoM38m0x3RDSi17vf6Do3/T2f4d5MURHqrzNRKFB/meFFNMu+cbR0jHzrJBW5CvxC5
         Gt39h6uzjG/9orKu2Ue2C37hIRjQgqdBcPgou3lLqqqbu40uVT4TuEKGHebls4KyBYU3
         WYAg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=b+mUAIgi;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=UWzDo5tZ;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=0639b3512d=kafai@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=0639b3512d=kafai@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/gO+RFBpHyrn+iHwjEyrQ5VHPWQjmcGW5xnP4H6fxus=;
        b=OQxY2lcZ07U2ruGkLUwYzvWiWDaIZrMgj8OIcIkzELdzdN1x1Uk/mCBd43Ggef+JHc
         F27vvHnuW/UADfylUmBb2+eU3umT6lwYZ1c6T3M9HsR0aMVqCpkOFzvrLaKXyIz/no1X
         LgPbUj8gmy1y/Brl8dt+dbpCa81of976rvXGXUcGBTjfWAuyUWN+MnQJqTDKq+8IGKot
         9BcPUOcsWCo3MoQFqz3a24RTbccqDfVOqk5ZEwOkKCwL1JY8Cv2+vClPVOC/3fGZHG9Q
         x5n/Jgkzv4Q0CGDgu3Y7uYCFCDsjACvfWGccIytTxCEsTGYSh+RbToKUZF0HDnPpmi3w
         OEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/gO+RFBpHyrn+iHwjEyrQ5VHPWQjmcGW5xnP4H6fxus=;
        b=G7Ok3QtOcWlrU6BELe0ruiClPqGHLIagrWdOjhvdq0ZF9R2+KIVDquiUM50/jGG1Df
         Do9mRHZmRnsotIjnTOCe2fRj/HZ/2HNReL/ra75t80k/TzG3ZaVy4lD2eOJ8QO6kEDAu
         u//MmTmraSEPscHOkpXq1NKcZ8i10wRV599twWnEcouQi4bsPDu37IUvrkugAyPqm+4y
         kWWQxM1Pkw9rx3HMUEQ6ycXJQ2RlgvdABO0xUpVOqu403dP2FIVnLuvMFpdep6xq/QoV
         gdGsWfsAQRHo135NiWSpKKAt/QJXMgH1iJWBdJkxQv/pxsxXoiGGH18k/gLDafIvCEOD
         1++A==
X-Gm-Message-State: AOAM533aU+zoikhWJVYV5WoQ1h2N8ALLXahcxNNwrf4+q7InNbM8hq5n
	PQBw3Xqbr5sHr4fUzHvqlw4=
X-Google-Smtp-Source: ABdhPJypt5x/NY3OPdvyDrrlnf04MVsH6J+6uDyAxoIzt+ntPETcdKbT4aW5UrgtbSc9in4q9WI73A==
X-Received: by 2002:ab0:238e:: with SMTP id b14mr1159401uan.105.1609876288536;
        Tue, 05 Jan 2021 11:51:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:760f:: with SMTP id o15ls84269uap.7.gmail; Tue, 05 Jan
 2021 11:51:28 -0800 (PST)
X-Received: by 2002:ab0:725:: with SMTP id h34mr1091042uah.91.1609876288123;
        Tue, 05 Jan 2021 11:51:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609876288; cv=pass;
        d=google.com; s=arc-20160816;
        b=1G2WULEYI9FhvadPVJzrOQBV61O6kGyS/i3vn+8K9EgWYtplfdwvWuofcVJ0tUZ4MW
         34TlNoePzaXKK/M7WTYfb9ugou5zP/bGr9nETYZ9G8x9vbfCjTxhLL924hLqrA0MAvwm
         8J6mGTVA9kNi+cG2GoxYqO/AFpJH76+lHlUlAFfmnBpCbfXHxmonqkw0UWZy+LnQGyOp
         8UlVpG5nDfqkLLYPFewp7nrufYpV2Aj6mcMyCTr9k7VFWgud7D0f3p6GhL/prZFqOdna
         jEv9Ypi97Y7g5Ok+6Fm2gQBGTvNY4XxT9PHtTTRCA4mGMooP9KTBew77+UL6GH4YTvtN
         4oeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=z51xaWa67o+04YiVXH7Hd7iRkePzGilKXzEdFDkjZr8=;
        b=el4qd0Fu2RpKlr7mcv0JOqbx1GDBjbIHwiZtqSbXxnVyhtpBRd+ksFmUEX8KNkOHEg
         5MYWRtnwhjf9YpdKl/X8Ra7dJo0noWjmGjpIO2s9HSI2hN6xWFHHHDsrtIf3LFQUxQNs
         coCsa7rj92DPgqm7vMTq+U1/3yq4wi2necfNZchmfeuePt1+dVJH45lzgbnDutQRKYeN
         UyMNJeXyeLIHjZd8yBgzY6rPy3aw8fyF9hKkMpbbVv7cczt/cZ72hpSfVYcBxbbcxHfJ
         e7werFpa3gGAbyAo0LD0WSxT3jnFwjXY++MWx/VC5GhB9q/0T8PcnY1U1uHQ4zwDTp4v
         EH+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=b+mUAIgi;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=UWzDo5tZ;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=0639b3512d=kafai@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=0639b3512d=kafai@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id g17si22590vso.1.2021.01.05.11.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 11:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=0639b3512d=kafai@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 105JiqMH031307;
	Tue, 5 Jan 2021 11:51:23 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 35u9cpb3ny-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 05 Jan 2021 11:51:23 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.173) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 5 Jan 2021 11:51:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PNdBhxWpgj+vbeHbjTuhBf2E5+RULAMhhE2usBVN8c8axvMATGaMMnZ728/5T0l0UO/1FJMlgMBSOXH8ID8E1yA5XU0gOqRAb8jvVnT9UsEHlXgCTQ7+f/V1CEK9kPx0wxu4Bvqj7LGrVNiyCakHpNvXgt02/qRBh7d49Ox3ABGE/8ICPFvW3ZtHYjIs+yuiFb0hU9w9Oy607SftTK4Kop1WZn6w0h9sAGfoVtAFjHI99nRYKfZsbgloRkr0SzsV4/MxVCfXE2tAuah2Pu+I5/ZyrnsbBeB3pEy/VA8cGJyTz5KLGm4pPDBF01aSyyMszwBTF7dvCSaIjf/9FGTX/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z51xaWa67o+04YiVXH7Hd7iRkePzGilKXzEdFDkjZr8=;
 b=OD4GYExpPCkejf2mYe9fVjZks/JA9OOQLh+B2NXJxL363w7dnyhrY+TJtXcTE2wa4QuDU1lHJsiXLVK3oMznNgoGnsgnVK3VQ01S0IId1JZGfUOzMXfXm4BWXKWjOQN4vY1vnwvtNpSn3Bl8JJ3D6gEVh0YR+Zq7dJVk8XCk3fvW+SxegnVPb7F8P4a8AF8PON1bSXWyYGwmawTnX+4AFcr2a8FDYJ+Ffbf0Iab6W7ssMwXPUsEiE1MnXFkFCX/xMpS2bRX3pjyWP7Bxb3iJlbo4I7IKXLNiXCBBDi4ky5p2xCD+W5XhBKwbthfCP45+dChkH7FLSkTa3/Dj5f9usQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BY5PR15MB3571.namprd15.prod.outlook.com (2603:10b6:a03:1f6::32)
 by BYAPR15MB2373.namprd15.prod.outlook.com (2603:10b6:a02:92::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.22; Tue, 5 Jan
 2021 19:51:21 +0000
Received: from BY5PR15MB3571.namprd15.prod.outlook.com
 ([fe80::217e:885b:1cef:e1f7]) by BY5PR15MB3571.namprd15.prod.outlook.com
 ([fe80::217e:885b:1cef:e1f7%7]) with mapi id 15.20.3721.024; Tue, 5 Jan 2021
 19:51:20 +0000
Date: Tue, 5 Jan 2021 11:51:13 -0800
From: "'Martin KaFai Lau' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sean Young <sean@mess.org>
CC: Yonghong Song <yhs@fb.com>, Alexei Starovoitov <ast@kernel.org>,
        Daniel
 Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Song
 Liu <songliubraving@fb.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP
 Singh <kpsingh@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Quentin Monnet
	<quentin@isovalent.com>,
        Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?=
	<toke@redhat.com>,
        <linux-doc@vger.kernel.org>, <netdev@vger.kernel.org>,
        <bpf@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3 0/4] btf: support ints larger than 128 bits
Message-ID: <20210105195113.lr3mc5ma2rvej4r6@kafai-mbp>
References: <cover.1609855479.git.sean@mess.org>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cover.1609855479.git.sean@mess.org>
X-Originating-IP: [2620:10d:c090:400::5:66db]
X-ClientProxiedBy: MWHPR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:300:117::31) To BY5PR15MB3571.namprd15.prod.outlook.com
 (2603:10b6:a03:1f6::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kafai-mbp (2620:10d:c090:400::5:66db) by MWHPR03CA0021.namprd03.prod.outlook.com (2603:10b6:300:117::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20 via Frontend Transport; Tue, 5 Jan 2021 19:51:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d8c5befb-b06b-4f15-62ba-08d8b1b34646
X-MS-TrafficTypeDiagnostic: BYAPR15MB2373:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB2373952EBF06EA6B29D173A5D5D10@BYAPR15MB2373.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kNTO2rizg3HHeKXulrHl+5ZfzNXVmkjDpv3ufTyBV0+4d6SQBSD+3ZnszPs5dV8xdIEydJztTI1QY+OrdJONq1f5FMg2mZq1IX7x9t2lptz7gPXXTXve2Eypdxdt+Tgx1kKRbZkXexlECc8BqbOpvdT0CBdkYNNZOD7torvLud9hQGm5wpvsJE8UmAyB93+UnTnW4qlq6pn0+hjdTAi2ogGHwKw6xN9ewdoXiwYlCkm402KfdgXYxzDjdddLisB2JOyhXcNFI3IBGNjBhdtJWY/F9DEu0/rRQjBmJuYhpucIXydQ5F7GEg0prrIvx15iVCoA96fN7QXhAhRBSKgwBlHNJ0MKn4EvH/w06If5TgVZgQ0Du4B563Jvw4wqd9izegXY541dCCsg43thpBgceg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR15MB3571.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(39860400002)(396003)(136003)(346002)(366004)(83380400001)(8676002)(55016002)(5660300002)(6916009)(4326008)(478600001)(7416002)(86362001)(4744005)(8936002)(316002)(6666004)(1076003)(54906003)(66556008)(6496006)(9686003)(52116002)(186003)(16526019)(2906002)(33716001)(66476007)(66946007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?nyfcAHzN4apikCppiyPSgKRUqFEbIy14uErZwH4fdnq6nugDZJ/X1S/FQ4Io?=
 =?us-ascii?Q?a+CSrzd2V1InLgZ7f2cgOsTtPcQGU3FHrHO7ZWYxVaCQnDlJxV/w9jUPoZ9z?=
 =?us-ascii?Q?eq7P2ikOj9M/oBzscmPC9qkpnVkQg/Uq+CWcsQlSc0/l91tEbaB0aZbqxXKe?=
 =?us-ascii?Q?hQdR1zyHshslO/havXEwtD0LDc+9CoxzP1HijbQOBXS0goeVZY+ylR7ukNh0?=
 =?us-ascii?Q?t6RRZF/eOkidQ0A9uzUYix6aUv9N86oxODLaogXm4R9nKPHJaFXS8Y0vV8JS?=
 =?us-ascii?Q?v68h24AHoexS6amMWt+IQBxgKmNoRUYYTqIkDtcGrP2sqRM0sA3rvPVI0shz?=
 =?us-ascii?Q?YgCCkK2hiuGvDjm/qAgt3g+W0Jez9pjF8ZDqnLegtmEEtfEoYg76qyT0FkjS?=
 =?us-ascii?Q?Xqe1CvIbujcYcuT6855Q932vk967grXrBd0KqGsZFTOjqcI6XmjnMO8GA8CT?=
 =?us-ascii?Q?NU0AchA2gmSyg/lfJ5XdO40RI4/RTjp/SAneukRgxocaeignD49Sy4XefCje?=
 =?us-ascii?Q?YcH59kpJMJ+Cmd1jqmvoeyn+Lbbwevq4RaGK527jsHI3bxQASl7vQLoTRMdE?=
 =?us-ascii?Q?yoH5+QhMA84xhgvtE+a/8IfDwFuSSp2lVwougWr+95A0joXCkbH0MLj6ogHN?=
 =?us-ascii?Q?BQ9gO7eRdgGPBIETYqmNVcXFY1abKxvzro1b1JegvVsKjJ6g3k5/AfJ+JE8I?=
 =?us-ascii?Q?9Jc5cNXD6YbqopcI7OEkVc/0/KZVmqfhnRjNGIzs32yTmPD3/dHUclb5cTbj?=
 =?us-ascii?Q?oDyICTPgolFMhZqCP+lpCQC/A0/DBXqleSH9rKphnSHzGiF4pimstTIZbyXj?=
 =?us-ascii?Q?rTVbWNQFZ7ZU14k5DdndU0nxUc8S0jZGWPm/NJkDTgDUnnrhuwIE6RJo4Prr?=
 =?us-ascii?Q?YIpPNLlJ07Yjg01BKFpdY9+UKJ7YC/0qi6CXwQG95QAwKsjfgNB1jOVRYTkd?=
 =?us-ascii?Q?Gu+mY0XEX4SixB9prXpsCb8yEPHl05oTqGs0/fv7cCcBsf6DDqwDGy2OJ7MW?=
 =?us-ascii?Q?p5QADfODudIv0ug8GBUhjQlpxw=3D=3D?=
X-MS-Exchange-CrossTenant-AuthSource: BY5PR15MB3571.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2021 19:51:20.8375
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-Network-Message-Id: d8c5befb-b06b-4f15-62ba-08d8b1b34646
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2xeWM0Rk8fMcSnBeuIrh5XhFva4dGOMcSHgVk7fmpYBQ20XZAExRJlpRp0sjfeqx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2373
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-05_06:2021-01-05,2021-01-05 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 adultscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 mlxlogscore=832 mlxscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1011 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101050114
X-FB-Internal: deliver
X-Original-Sender: kafai@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=b+mUAIgi;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=UWzDo5tZ;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=0639b3512d=kafai@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=0639b3512d=kafai@fb.com";       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
X-Original-From: Martin KaFai Lau <kafai@fb.com>
Reply-To: Martin KaFai Lau <kafai@fb.com>
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

On Tue, Jan 05, 2021 at 02:45:30PM +0000, Sean Young wrote:
> clang supports arbitrary length ints using the _ExtInt extension. This
> can be useful to hold very large values, e.g. 256 bit or 512 bit types.
> 
> Larger types (e.g. 1024 bits) are possible but I am unaware of a use
> case for these.
> 
> This requires the _ExtInt extension enabled in clang, which is under
> review.
1. Please explain the use case.
2. All patches have the same commit message which is not useful.
   Please spend some time in the commit message to explain what each
   individual patch does.
3. The test_extint.py is mostly a copy-and-paste from the existing
   test_offload.py?  Does it need most of the test_offload.py
   to test the BTF 256/512 bit int?  Please create a minimal
   test and use the test_progs.c infra-structure.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105195113.lr3mc5ma2rvej4r6%40kafai-mbp.
