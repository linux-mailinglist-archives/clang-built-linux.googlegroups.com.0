Return-Path: <clang-built-linux+bncBAABBIGXZX7AKGQEEALZ44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 827172D7609
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 13:52:49 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id n205sf8708351ybf.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 04:52:49 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607691168; cv=pass;
        d=google.com; s=arc-20160816;
        b=CpDIjX9PDtHAkxgSOoKXMwERVq/VlwnVtyGD8P/PvRBhTYtvrVjreB+d5ufEI2PlHi
         yRw5mnZFvyTM7cd7Noa6KVNC3nn9kyLY1rtcxYmGLvVEMXdZjV7wRGb4HhTvaxZ/Jcws
         YKVHoYdQJwVUe20Elke7FcozY3QJsui8BDsaXqJrH70+1bCkI7phXazURMe057CVozCu
         87DRvnVk+INWC8+H6ABcYmnLif3dLwZm9wWcBhAijGdolfiCBmyx5sIgStQagg6/twmN
         7iyoep74LCLM9wRlfqpN/D/AWtEpiTBVqIK1kWe4Xxs3G9W/uYGGa6aNsFm49I6IkcvC
         bpeQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=gufVEeH5efToU1R4EDLYUuqGIe3NqjkgcGk1bM0I8OU=;
        b=BC1UD79FIg98E2vSMgicQYlLdR10I1mpJtX/9Q0j6Qfm+REuQFOIHh/ryoi7UCHLXw
         K4YnXhOv65CQRW78eEDbxx+Yw2fGAGCr9mdk0+J9jz4mGiOXsFU16Q+j+XIDIu2XY5Rp
         JGMZtaeyr8kLqgBVk9R1xqyWArfk6H/a2P60g+naH8jpSZ0WidIxjBid2pUY0kVDWrpg
         0QUgvMHXxJwhK9WJNoy7WpghLhYcDXDywA8ObJ6k90elkiJiBqS2tC6iw47DqxJ0s3n0
         fuRcjJYEFWjt1KHwGfgySu97aoruC3toQUm6A9j8UE7B7L+yun6w3uIkWIPL5IybIC1S
         1R7g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=CAQ7wdMq;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gufVEeH5efToU1R4EDLYUuqGIe3NqjkgcGk1bM0I8OU=;
        b=qFpDrEfMZE+PXIS+2jLkUK8qjfkraCvDif5vw844nqWRWMj5IIfP5aCMWyZWNl9VdR
         Bcb0DLPUUtdEPb7LRbT643c1Dy2hyI0dK3Pl7Pc5qx39jKPOfAwIZeBNfocSa55Geutb
         11hrVGY6bTPrnUA8Zqcgb/9BPjGmVE8rVsvQDqfYXbvo2dVLvoyyKaVee4iyMInrQkXn
         qs+TOdY6KHWDvvJ+JntmXcaP9+mAV0Hs1G89+7COoTc8iWEeL2BcKhCvMfks+T1fgByd
         p5t0Xb2pQvgLDDukOH8pbqJvERB5dDMWs7bkIzdYJAWOPw85jou/yn+HU8UZcTl6d+x0
         vrow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gufVEeH5efToU1R4EDLYUuqGIe3NqjkgcGk1bM0I8OU=;
        b=eKV4sSwKO1t8TO5wwNJfNle0Ozj4eQKMw/qrrH7mSXKtYwCEHhPuKloYB9Ld3aiMFo
         JMM72LD1+qH5Voxp2ObX9uxNyMyhElfOWgDMUuhYuxlKFr6o2UidHwE9oIToT4RIzSPr
         Z5z01lmK8m6dzCsoS1wVaduDqtJqBqMRh9Ztol5ls0VwIEKh79AQoaTmkgq9yk/Nmw5/
         3bAoXXxbS29KpXUHorM7gHxdKaQ6vCNi9uGZDVxPgQga2UO0GOgp9usndZn71QQ/PrNO
         FXk2iLxtwJHzTfqyEmilypcHhQO0CSGkApyPvyp+IVPz4EAUjjcDFuKIOQIZGb9nmksh
         6lbg==
X-Gm-Message-State: AOAM533skyDoZQKSXkxT4NdePfF2E+SNce1pVEPxpusyClyt+CO8DsIx
	f1KBcPYTig4111JnqKDcW94=
X-Google-Smtp-Source: ABdhPJxfkvRXoqSU0RB6+FNLD4b5xenH9bZyQk0ufgso0+FDBhGpgMvMlCmwLGEcXE2Fs+NbV16vGQ==
X-Received: by 2002:a5b:812:: with SMTP id x18mr20207029ybp.334.1607691168571;
        Fri, 11 Dec 2020 04:52:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ce49:: with SMTP id x70ls4118452ybe.4.gmail; Fri, 11 Dec
 2020 04:52:48 -0800 (PST)
X-Received: by 2002:a25:ec5:: with SMTP id 188mr20235714ybo.387.1607691168125;
        Fri, 11 Dec 2020 04:52:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607691168; cv=pass;
        d=google.com; s=arc-20160816;
        b=tu8f3d6d3RpdmR8ddon079D0SZnu7y5fezUwa9F/05ccyjTLToewPJd+1033I0Tige
         idkMLJ9Ept2lFGrVVZVqYcbCb1j/PFsTnOKUS3GegH/WuM4MT/iXmYRJSYT9Rgv2/vWe
         dQynvePhjp0HQ6EtG3yX/98553TBE77nOBSqDOzqvOW8qf1oJ8lCThvtnfz9MvtjKLaS
         ZmYpkvtZAexh5JWlebR9ptnJSiQc79LedU4DZFspwnTMet2xcdcJNkycsB3S0j/xmf8c
         85nhV7sbVXi2l2VHwqoU/qk7kKk8r7GjxjjPmc6kbosoiUY3+1R9cT2gUOitivHnDkKW
         PUbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=xXgPT1OBb3jht91gDEzLRilzOcl/5xInX4qoMvb06oo=;
        b=HwtB4Fw147psgWIXi3zgqsSmjeO2Lqbft49C+RXcs1aHJzEo9i4eI1edGSZ1UrXFlC
         1c1WXFr6//lOZA/9Day4f8qkOuO0oNAPnPDolzzaL5hfnzxcDjRFzXOUhjerdg5EUOta
         g9a81CBJLO/jjcQ+sSFesqRONfILatXHlRDNgC5Sd1QlGxK43xK4HwhBx66lHJsVfH34
         qR+9sIUNLFwJsrnFcVex6/tgy8+2JZpT0/7S+hLpKFLwt4hVPn+PGhSUYWlu4B8watRz
         xJ7LtBOyP42zssdNZf26obaW1edq44793bSaHhYOpKBAyCbnTp+1YZmr2r2KzQkXGDTu
         /6Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=CAQ7wdMq;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip23b.ess.barracuda.com (outbound-ip23b.ess.barracuda.com. [209.222.82.220])
        by gmr-mx.google.com with ESMTPS id r12si617263ybc.3.2020.12.11.04.52.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 04:52:48 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) client-ip=209.222.82.220;
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108]) by mx11.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 11 Dec 2020 12:50:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hvBKHZJ2ddB3V+mGBoFwVao3Ix5FtU4WECiue7QWeRK5bcUzwFxrgXospkHbU3PtNsfhaLi3DHoXlOwMBzTm1iCHzQhofqeGkTFhYzne9aSt5dyRvcRzOU1utWqmUQ13kBRY29Q6ykI40IyGU5MrfoX1yKOcwqoGenzkF7UbT5Ww4Ns7mKwWoisodhB8kXI56gMS0o1VTMMkVIdjyPsVYx8aeOCQW/qF1lKVVVZE8KQlm7v+1aPAzOIwnpsPSpN04BzmFRv/C2CIH+RTmv2LvcpghyVizyCTmtf6TMMSTD1VBO3V1CzgJou4Cx8E2YxYzqexIYJniIYRqvVlWUjztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXgPT1OBb3jht91gDEzLRilzOcl/5xInX4qoMvb06oo=;
 b=A3w4y6mmdzTwg76KPaPKOQDdJ//O2kvm/x7jLa5CPtRH+Q50NDplXTPqkC6WNUWRhUOTPHE2rvaIg9+t3Aw9jDF5uxwq9L+LZz8oeKtq24T7xxCgMv2wgkQ6SQaFt202j/2ZZdmveP78h/3ORSCpUT1aAj5RPsPWq9jRzLtPjzRxTdebFXwOB2fnBuF8y5nZ4AMQhJWJByf5tnYrta8O1OCjHcTbnl3yCl6k3NJlTwaEYz7bYmB5NEEPrI/F8q76SM8cgoIFHhJttmKSRFSz5sa2NErZMsW62UesuLHg7ToVCJL641KunFiY0UJ7NNBgNu5vFpQ0OlfICWUVQU2ZMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
 by MN2PR10MB4176.namprd10.prod.outlook.com (2603:10b6:208:1da::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Fri, 11 Dec
 2020 12:50:20 +0000
Received: from MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365]) by MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365%9]) with mapi id 15.20.3654.019; Fri, 11 Dec 2020
 12:50:20 +0000
From: "'Pavana Sharma' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kuba@kernel.org
Cc: andrew@lunn.ch,
	ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	f.fainelli@gmail.com,
	gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	lkp@intel.com,
	marek.behun@nic.cz,
	netdev@vger.kernel.org,
	pavana.sharma@digi.com,
	robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: [net-next PATCH v12 3/4] net: dsa: mv88e6xxx: Change serdes lane parameter type  from u8 type to int
Date: Fri, 11 Dec 2020 22:49:02 +1000
Message-Id: <53d2aa3f1195545b6daaf5fbd42c98d5903f0617.1607685097.git.pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1607685096.git.pavana.sharma@digi.com>
References: <cover.1607685096.git.pavana.sharma@digi.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [220.244.12.163]
X-ClientProxiedBy: SY6PR01CA0044.ausprd01.prod.outlook.com
 (2603:10c6:10:e9::13) To MN2PR10MB4174.namprd10.prod.outlook.com
 (2603:10b6:208:1dd::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (220.244.12.163) by SY6PR01CA0044.ausprd01.prod.outlook.com (2603:10c6:10:e9::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 12:50:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea90ee7e-4469-457c-064f-08d89dd351c3
X-MS-TrafficTypeDiagnostic: MN2PR10MB4176:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR10MB4176BE91036563CEF6C28C2895CA0@MN2PR10MB4176.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zO5jfKaIZq3M5O807WZJANluI0Qpa3HkxdM81kOWPDBF+Ad6ve2TlYQb0nVphdXS0Q+bAQi8fuKWf/dniqErzVCSwgJYOOYJv3q6ezha/YZB6RGKsYNuccE1PJR4kkLerq61ejEZxCb9ikJQYgy6zFxUNQRRoprX+rnQnIH0rBmxBjIY2e0twliyvQ2lmcoQCAZCsOtaKFJwWmfVLL12PkT2kWJ871wec0n3HakRp2XNF3/VbHqPxXY6F5QlLvm6hgdYsg51UFKD19m80D/KbVNrNk9sYUGx5UjGrv9m0jMDqAO8tCgnLuSiBn9on+zM4DQ+kQMYiB6sDadjQL8ysvKVFr4cUolpvNVAGXBfxGNWNOW9kP8vNIZE2CUQEfk2k0y67wbiW1VoSse2mdba12LOGXGvE2DlcOhRZOewzW0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4174.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(346002)(6506007)(36756003)(8676002)(4326008)(5660300002)(6916009)(52116002)(66556008)(7416002)(66946007)(66476007)(30864003)(6486002)(34490700003)(86362001)(69590400008)(83380400001)(16526019)(26005)(2906002)(6666004)(956004)(186003)(508600001)(8936002)(6512007)(44832011)(2616005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?p7HSQhSjWPz05FIiKIrrqZio4bl9bJBrAVSXjNoLrRHDgBeICMelgjErMvUG?=
 =?us-ascii?Q?lsGAQ9MBOU50Z5rl6i179t4Nl8CJe56z6EYjbZOJ3TXRiGxVm3/RBW/YFKDG?=
 =?us-ascii?Q?4xDbRClP8Op13dCfXH4IosRCYbCigTsbqxJ++2zpX6Fem2CzHaG8rg2k0Yr3?=
 =?us-ascii?Q?VDHAA3mw+PxJBdOezBxx2zvF5dfGdvFfRCJpctGI1ZepoNSFEU0aSzqrWK6l?=
 =?us-ascii?Q?sfl9hC9lE2naK6owCWky4cg71Xxhj9SXT8hMqscoGNzaXLYIgYEHo7YtM75o?=
 =?us-ascii?Q?wrMXBWqEd1SbvOncRcK3ut3qfAORff5GZyeqMCI0YRsOpgNpJnt2m6jxxI5y?=
 =?us-ascii?Q?7awIZBE8P5baUl37kbhJeq5RObsBsGvetisAV+yV3EmFsiP36onUinwIJeh7?=
 =?us-ascii?Q?pP+esPkcno6g93pNVBpLQ02sGSuRWwwUTr/UyHhij1cfPSgaUDdncmZ3xkY9?=
 =?us-ascii?Q?Yzzm9o2qqb2XjgJkiyPVP4tqFkHDmJVwfBUzSVVTimAtgzykEmvDb3jCXHKK?=
 =?us-ascii?Q?q4WhwUl8QHIXOQNv29CHDc8AzMN3JUyhIaw3CxX9vVmgGUQTKAWkpF+9Tim8?=
 =?us-ascii?Q?1Qr0GOMZtBrgYyRCepf6NSHQnAHeG540V9WUO81E41sxCEVx4Ou6s/Hwnffu?=
 =?us-ascii?Q?/UNCMqmGvDcxwldUMSMQd76y4eY+mNn63Vs+051ElzSidBip3UG7CSTmPUET?=
 =?us-ascii?Q?wiHWFY1E5b5LkZtplMqMDkSWDYHfTgxWOQBNsE+Mo/tTt9W8MR4zQFLttxOG?=
 =?us-ascii?Q?601PsKePB97a7VXlmir6mLrwEbAUISkJ3DB7lt54Rn/18efrd4ZxgU5O6eaR?=
 =?us-ascii?Q?9vGqDjaG5WNfr5Qeu4pZCLRJNPpDFeZc4ElklVFIm9dlHYSGJp0EDOruU/9P?=
 =?us-ascii?Q?d7z97YAtGdcOX3qP98e+s7TiLFzrvZE0T2b4sMc0lCOLydLpYDxqWm6NBEeC?=
 =?us-ascii?Q?aDUeUHepO1Y4TXNFHlqWmSAMB7JigR2QK80wdGX7uw2xGqfU6DNsBRwIpsjW?=
 =?us-ascii?Q?b6Zr?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4174.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 12:50:20.7046
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: ea90ee7e-4469-457c-064f-08d89dd351c3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UOyXOraj8i4BL+g5qJjYMiahbZLDpqFadcF3Z9XCWOtS5faH8LAX8esta0R8ZIOiCYWO9phdp7ouDKAawfhfTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4176
X-BESS-ID: 1607691022-893021-7355-2994-1
X-BESS-VER: 2019.1_20201210.2155
X-BESS-Apparent-Source-IP: 104.47.70.108
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.228760 [from 
	cloudscan11-206.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay 
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=MSGID_FROM_MTA_HEADER, BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=CAQ7wdMq;       arc=pass (i=1
 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass
 fromdomain=digi.com);       spf=pass (google.com: domain of
 pavana.sharma@digi.com designates 209.222.82.220 as permitted sender)
 smtp.mailfrom=Pavana.Sharma@digi.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=digi.com
X-Original-From: Pavana Sharma <pavana.sharma@digi.com>
Reply-To: Pavana Sharma <pavana.sharma@digi.com>
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

Returning 0 is no more an error case with MV88E6393 family
which has serdes lane numbers 0, 9 or 10.
So with this change .serdes_get_lane will return lane number
or -errno (-ENODEV or -EOPNOTSUPP).

Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/dsa/mv88e6xxx/chip.c   | 28 +++++-----
 drivers/net/dsa/mv88e6xxx/chip.h   | 16 +++---
 drivers/net/dsa/mv88e6xxx/port.c   |  8 +--
 drivers/net/dsa/mv88e6xxx/serdes.c | 82 +++++++++++++++---------------
 drivers/net/dsa/mv88e6xxx/serdes.h | 64 +++++++++++------------
 5 files changed, 99 insertions(+), 99 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index e7f68ac0c7e3..038bae71648d 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -485,12 +485,12 @@ static int mv88e6xxx_serdes_pcs_get_state(struct dsa_switch *ds, int port,
 					  struct phylink_link_state *state)
 {
 	struct mv88e6xxx_chip *chip = ds->priv;
-	u8 lane;
+	int lane;
 	int err;
 
 	mv88e6xxx_reg_lock(chip);
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane && chip->info->ops->serdes_pcs_get_state)
+	if (lane >= 0 && chip->info->ops->serdes_pcs_get_state)
 		err = chip->info->ops->serdes_pcs_get_state(chip, port, lane,
 							    state);
 	else
@@ -506,11 +506,11 @@ static int mv88e6xxx_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
 				       const unsigned long *advertise)
 {
 	const struct mv88e6xxx_ops *ops = chip->info->ops;
-	u8 lane;
+	int lane;
 
 	if (ops->serdes_pcs_config) {
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (lane)
+		if (lane >= 0)
 			return ops->serdes_pcs_config(chip, port, lane, mode,
 						      interface, advertise);
 	}
@@ -523,14 +523,14 @@ static void mv88e6xxx_serdes_pcs_an_restart(struct dsa_switch *ds, int port)
 	struct mv88e6xxx_chip *chip = ds->priv;
 	const struct mv88e6xxx_ops *ops;
 	int err = 0;
-	u8 lane;
+	int lane;
 
 	ops = chip->info->ops;
 
 	if (ops->serdes_pcs_an_restart) {
 		mv88e6xxx_reg_lock(chip);
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (lane)
+		if (lane >= 0)
 			err = ops->serdes_pcs_an_restart(chip, port, lane);
 		mv88e6xxx_reg_unlock(chip);
 
@@ -544,11 +544,11 @@ static int mv88e6xxx_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
 					int speed, int duplex)
 {
 	const struct mv88e6xxx_ops *ops = chip->info->ops;
-	u8 lane;
+	int lane;
 
 	if (!phylink_autoneg_inband(mode) && ops->serdes_pcs_link_up) {
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (lane)
+		if (lane >= 0)
 			return ops->serdes_pcs_link_up(chip, port, lane,
 						       speed, duplex);
 	}
@@ -2424,11 +2424,11 @@ static irqreturn_t mv88e6xxx_serdes_irq_thread_fn(int irq, void *dev_id)
 	struct mv88e6xxx_chip *chip = mvp->chip;
 	irqreturn_t ret = IRQ_NONE;
 	int port = mvp->port;
-	u8 lane;
+	int lane;
 
 	mv88e6xxx_reg_lock(chip);
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane)
+	if (lane >= 0)
 		ret = mv88e6xxx_serdes_irq_status(chip, port, lane);
 	mv88e6xxx_reg_unlock(chip);
 
@@ -2436,7 +2436,7 @@ static irqreturn_t mv88e6xxx_serdes_irq_thread_fn(int irq, void *dev_id)
 }
 
 static int mv88e6xxx_serdes_irq_request(struct mv88e6xxx_chip *chip, int port,
-					u8 lane)
+					int lane)
 {
 	struct mv88e6xxx_port *dev_id = &chip->ports[port];
 	unsigned int irq;
@@ -2465,7 +2465,7 @@ static int mv88e6xxx_serdes_irq_request(struct mv88e6xxx_chip *chip, int port,
 }
 
 static int mv88e6xxx_serdes_irq_free(struct mv88e6xxx_chip *chip, int port,
-				     u8 lane)
+				     int lane)
 {
 	struct mv88e6xxx_port *dev_id = &chip->ports[port];
 	unsigned int irq = dev_id->serdes_irq;
@@ -2490,11 +2490,11 @@ static int mv88e6xxx_serdes_irq_free(struct mv88e6xxx_chip *chip, int port,
 static int mv88e6xxx_serdes_power(struct mv88e6xxx_chip *chip, int port,
 				  bool on)
 {
-	u8 lane;
+	int lane;
 	int err;
 
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (!lane)
+	if (lane < 0)
 		return 0;
 
 	if (on) {
diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index 3543055bcb51..1ac8338d2256 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.h
+++ b/drivers/net/dsa/mv88e6xxx/chip.h
@@ -511,30 +511,30 @@ struct mv88e6xxx_ops {
 	int (*mgmt_rsvd2cpu)(struct mv88e6xxx_chip *chip);
 
 	/* Power on/off a SERDES interface */
-	int (*serdes_power)(struct mv88e6xxx_chip *chip, int port, u8 lane,
+	int (*serdes_power)(struct mv88e6xxx_chip *chip, int port, int lane,
 			    bool up);
 
 	/* SERDES lane mapping */
-	u8 (*serdes_get_lane)(struct mv88e6xxx_chip *chip, int port);
+	int (*serdes_get_lane)(struct mv88e6xxx_chip *chip, int port);
 
 	int (*serdes_pcs_get_state)(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane, struct phylink_link_state *state);
+				    int lane, struct phylink_link_state *state);
 	int (*serdes_pcs_config)(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, unsigned int mode,
+				 int lane, unsigned int mode,
 				 phy_interface_t interface,
 				 const unsigned long *advertise);
 	int (*serdes_pcs_an_restart)(struct mv88e6xxx_chip *chip, int port,
-				     u8 lane);
+				     int lane);
 	int (*serdes_pcs_link_up)(struct mv88e6xxx_chip *chip, int port,
-				  u8 lane, int speed, int duplex);
+				  int lane, int speed, int duplex);
 
 	/* SERDES interrupt handling */
 	unsigned int (*serdes_irq_mapping)(struct mv88e6xxx_chip *chip,
 					   int port);
-	int (*serdes_irq_enable)(struct mv88e6xxx_chip *chip, int port, u8 lane,
+	int (*serdes_irq_enable)(struct mv88e6xxx_chip *chip, int port, int lane,
 				 bool enable);
 	irqreturn_t (*serdes_irq_status)(struct mv88e6xxx_chip *chip, int port,
-					 u8 lane);
+					 int lane);
 
 	/* Statistics from the SERDES interface */
 	int (*serdes_get_sset_count)(struct mv88e6xxx_chip *chip, int port);
diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
index 77a5fd1798cd..0af596957b97 100644
--- a/drivers/net/dsa/mv88e6xxx/port.c
+++ b/drivers/net/dsa/mv88e6xxx/port.c
@@ -429,8 +429,8 @@ phy_interface_t mv88e6390x_port_max_speed_mode(int port)
 static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
 				    phy_interface_t mode, bool force)
 {
-	u8 lane;
 	u16 cmode;
+	int lane;
 	u16 reg;
 	int err;
 
@@ -466,7 +466,7 @@ static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
 		return 0;
 
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane) {
+	if (lane >= 0) {
 		if (chip->ports[port].serdes_irq) {
 			err = mv88e6xxx_serdes_irq_disable(chip, port, lane);
 			if (err)
@@ -495,8 +495,8 @@ static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
 		chip->ports[port].cmode = cmode;
 
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (!lane)
-			return -ENODEV;
+		if (lane < 0)
+			return lane;
 
 		err = mv88e6xxx_serdes_power_up(chip, port, lane);
 		if (err)
diff --git a/drivers/net/dsa/mv88e6xxx/serdes.c b/drivers/net/dsa/mv88e6xxx/serdes.c
index 3195936dc5be..e48260c5c6ba 100644
--- a/drivers/net/dsa/mv88e6xxx/serdes.c
+++ b/drivers/net/dsa/mv88e6xxx/serdes.c
@@ -95,7 +95,7 @@ static int mv88e6xxx_serdes_pcs_get_state(struct mv88e6xxx_chip *chip,
 	return 0;
 }
 
-int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool up)
 {
 	u16 val, new_val;
@@ -117,7 +117,7 @@ int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
 }
 
 int mv88e6352_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise)
 {
@@ -166,7 +166,7 @@ int mv88e6352_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6352_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state)
+				   int lane, struct phylink_link_state *state)
 {
 	u16 lpa, status;
 	int err;
@@ -187,7 +187,7 @@ int mv88e6352_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6352_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane)
+				    int lane)
 {
 	u16 bmcr;
 	int err;
@@ -200,7 +200,7 @@ int mv88e6352_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6352_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex)
+				 int lane, int speed, int duplex)
 {
 	u16 val, bmcr;
 	int err;
@@ -230,10 +230,10 @@ int mv88e6352_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
 	return mv88e6352_serdes_write(chip, MII_BMCR, bmcr);
 }
 
-u8 mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode = chip->ports[port].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	if ((cmode == MV88E6XXX_PORT_STS_CMODE_100BASEX) ||
 	    (cmode == MV88E6XXX_PORT_STS_CMODE_1000BASEX) ||
@@ -245,7 +245,7 @@ u8 mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 
 static bool mv88e6352_port_has_serdes(struct mv88e6xxx_chip *chip, int port)
 {
-	if (mv88e6xxx_serdes_get_lane(chip, port))
+	if (mv88e6xxx_serdes_get_lane(chip, port) >= 0)
 		return true;
 
 	return false;
@@ -354,7 +354,7 @@ static void mv88e6352_serdes_irq_link(struct mv88e6xxx_chip *chip, int port)
 }
 
 irqreturn_t mv88e6352_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane)
+					int lane)
 {
 	irqreturn_t ret = IRQ_NONE;
 	u16 status;
@@ -372,7 +372,7 @@ irqreturn_t mv88e6352_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
 	return ret;
 }
 
-int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable)
 {
 	u16 val = 0;
@@ -413,10 +413,10 @@ void mv88e6352_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p)
 	}
 }
 
-u8 mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode = chip->ports[port].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	switch (port) {
 	case 5:
@@ -430,7 +430,7 @@ u8 mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 	return lane;
 }
 
-int mv88e6185_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6185_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool up)
 {
 	/* The serdes power can't be controlled on this switch chip but we need
@@ -440,7 +440,7 @@ int mv88e6185_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
 	return 0;
 }
 
-u8 mv88e6185_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6185_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	/* There are no configurable serdes lanes on this switch chip but we
 	 * need to return non-zero so that callers of
@@ -456,7 +456,7 @@ u8 mv88e6185_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 }
 
 int mv88e6185_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state)
+				   int lane, struct phylink_link_state *state)
 {
 	int err;
 	u16 status;
@@ -492,7 +492,7 @@ int mv88e6185_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
 	return 0;
 }
 
-int mv88e6097_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6097_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable)
 {
 	u8 cmode = chip->ports[port].cmode;
@@ -525,7 +525,7 @@ static void mv88e6097_serdes_irq_link(struct mv88e6xxx_chip *chip, int port)
 }
 
 irqreturn_t mv88e6097_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane)
+					int lane)
 {
 	u8 cmode = chip->ports[port].cmode;
 
@@ -539,10 +539,10 @@ irqreturn_t mv88e6097_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
 	return IRQ_NONE;
 }
 
-u8 mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode = chip->ports[port].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	switch (port) {
 	case 9:
@@ -562,12 +562,12 @@ u8 mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 	return lane;
 }
 
-u8 mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode_port = chip->ports[port].cmode;
 	u8 cmode_port10 = chip->ports[10].cmode;
 	u8 cmode_port9 = chip->ports[9].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	switch (port) {
 	case 2:
@@ -638,7 +638,7 @@ u8 mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 }
 
 /* Set power up/down for 10GBASE-R and 10GBASE-X4/X2 */
-static int mv88e6390_serdes_power_10g(struct mv88e6xxx_chip *chip, u8 lane,
+static int mv88e6390_serdes_power_10g(struct mv88e6xxx_chip *chip, int lane,
 				      bool up)
 {
 	u16 val, new_val;
@@ -665,7 +665,7 @@ static int mv88e6390_serdes_power_10g(struct mv88e6xxx_chip *chip, u8 lane,
 }
 
 /* Set power up/down for SGMII and 1000Base-X */
-static int mv88e6390_serdes_power_sgmii(struct mv88e6xxx_chip *chip, u8 lane,
+static int mv88e6390_serdes_power_sgmii(struct mv88e6xxx_chip *chip, int lane,
 					bool up)
 {
 	u16 val, new_val;
@@ -701,7 +701,7 @@ static struct mv88e6390_serdes_hw_stat mv88e6390_serdes_hw_stats[] = {
 
 int mv88e6390_serdes_get_sset_count(struct mv88e6xxx_chip *chip, int port)
 {
-	if (mv88e6390_serdes_get_lane(chip, port) == 0)
+	if (mv88e6390_serdes_get_lane(chip, port) < 0)
 		return 0;
 
 	return ARRAY_SIZE(mv88e6390_serdes_hw_stats);
@@ -713,7 +713,7 @@ int mv88e6390_serdes_get_strings(struct mv88e6xxx_chip *chip,
 	struct mv88e6390_serdes_hw_stat *stat;
 	int i;
 
-	if (mv88e6390_serdes_get_lane(chip, port) == 0)
+	if (mv88e6390_serdes_get_lane(chip, port) < 0)
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(mv88e6390_serdes_hw_stats); i++) {
@@ -750,7 +750,7 @@ int mv88e6390_serdes_get_stats(struct mv88e6xxx_chip *chip, int port,
 	int i;
 
 	lane = mv88e6390_serdes_get_lane(chip, port);
-	if (lane == 0)
+	if (lane < 0)
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(mv88e6390_serdes_hw_stats); i++) {
@@ -761,7 +761,7 @@ int mv88e6390_serdes_get_stats(struct mv88e6xxx_chip *chip, int port,
 	return ARRAY_SIZE(mv88e6390_serdes_hw_stats);
 }
 
-static int mv88e6390_serdes_enable_checker(struct mv88e6xxx_chip *chip, u8 lane)
+static int mv88e6390_serdes_enable_checker(struct mv88e6xxx_chip *chip, int lane)
 {
 	u16 reg;
 	int err;
@@ -776,7 +776,7 @@ static int mv88e6390_serdes_enable_checker(struct mv88e6xxx_chip *chip, u8 lane)
 				      MV88E6390_PG_CONTROL, reg);
 }
 
-int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool up)
 {
 	u8 cmode = chip->ports[port].cmode;
@@ -801,7 +801,7 @@ int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
 }
 
 int mv88e6390_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise)
 {
@@ -860,7 +860,7 @@ int mv88e6390_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
 }
 
 static int mv88e6390_serdes_pcs_get_state_sgmii(struct mv88e6xxx_chip *chip,
-	int port, u8 lane, struct phylink_link_state *state)
+	int port, int lane, struct phylink_link_state *state)
 {
 	u16 lpa, status;
 	int err;
@@ -883,7 +883,7 @@ static int mv88e6390_serdes_pcs_get_state_sgmii(struct mv88e6xxx_chip *chip,
 }
 
 static int mv88e6390_serdes_pcs_get_state_10g(struct mv88e6xxx_chip *chip,
-	int port, u8 lane, struct phylink_link_state *state)
+	int port, int lane, struct phylink_link_state *state)
 {
 	u16 status;
 	int err;
@@ -903,7 +903,7 @@ static int mv88e6390_serdes_pcs_get_state_10g(struct mv88e6xxx_chip *chip,
 }
 
 int mv88e6390_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state)
+				   int lane, struct phylink_link_state *state)
 {
 	switch (state->interface) {
 	case PHY_INTERFACE_MODE_SGMII:
@@ -922,7 +922,7 @@ int mv88e6390_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6390_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane)
+				    int lane)
 {
 	u16 bmcr;
 	int err;
@@ -938,7 +938,7 @@ int mv88e6390_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6390_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex)
+				 int lane, int speed, int duplex)
 {
 	u16 val, bmcr;
 	int err;
@@ -972,7 +972,7 @@ int mv88e6390_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
 }
 
 static void mv88e6390_serdes_irq_link_sgmii(struct mv88e6xxx_chip *chip,
-					    int port, u8 lane)
+					    int port, int lane)
 {
 	u16 bmsr;
 	int err;
@@ -989,7 +989,7 @@ static void mv88e6390_serdes_irq_link_sgmii(struct mv88e6xxx_chip *chip,
 }
 
 static int mv88e6390_serdes_irq_enable_sgmii(struct mv88e6xxx_chip *chip,
-					     u8 lane, bool enable)
+					     int lane, bool enable)
 {
 	u16 val = 0;
 
@@ -1001,7 +1001,7 @@ static int mv88e6390_serdes_irq_enable_sgmii(struct mv88e6xxx_chip *chip,
 				      MV88E6390_SGMII_INT_ENABLE, val);
 }
 
-int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable)
 {
 	u8 cmode = chip->ports[port].cmode;
@@ -1017,7 +1017,7 @@ int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
 }
 
 static int mv88e6390_serdes_irq_status_sgmii(struct mv88e6xxx_chip *chip,
-					     u8 lane, u16 *status)
+					     int lane, u16 *status)
 {
 	int err;
 
@@ -1028,7 +1028,7 @@ static int mv88e6390_serdes_irq_status_sgmii(struct mv88e6xxx_chip *chip,
 }
 
 irqreturn_t mv88e6390_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane)
+					int lane)
 {
 	u8 cmode = chip->ports[port].cmode;
 	irqreturn_t ret = IRQ_NONE;
@@ -1087,7 +1087,7 @@ static const u16 mv88e6390_serdes_regs[] = {
 
 int mv88e6390_serdes_get_regs_len(struct mv88e6xxx_chip *chip, int port)
 {
-	if (mv88e6xxx_serdes_get_lane(chip, port) == 0)
+	if (mv88e6xxx_serdes_get_lane(chip, port) < 0)
 		return 0;
 
 	return ARRAY_SIZE(mv88e6390_serdes_regs) * sizeof(u16);
@@ -1102,7 +1102,7 @@ void mv88e6390_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p)
 	int i;
 
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane == 0)
+	if (lane < 0)
 		return;
 
 	for (i = 0 ; i < ARRAY_SIZE(mv88e6390_serdes_regs); i++) {
diff --git a/drivers/net/dsa/mv88e6xxx/serdes.h b/drivers/net/dsa/mv88e6xxx/serdes.h
index 93822ef9bab8..a1a51a6d6c1f 100644
--- a/drivers/net/dsa/mv88e6xxx/serdes.h
+++ b/drivers/net/dsa/mv88e6xxx/serdes.h
@@ -73,55 +73,55 @@
 #define MV88E6390_PG_CONTROL		0xf010
 #define MV88E6390_PG_CONTROL_ENABLE_PC		BIT(0)
 
-u8 mv88e6185_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
-u8 mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
-u8 mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
-u8 mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
-u8 mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6185_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
 int mv88e6352_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise);
 int mv88e6390_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise);
 int mv88e6185_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state);
+				   int lane, struct phylink_link_state *state);
 int mv88e6352_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state);
+				   int lane, struct phylink_link_state *state);
 int mv88e6390_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state);
+				   int lane, struct phylink_link_state *state);
 int mv88e6352_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane);
+				    int lane);
 int mv88e6390_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane);
+				    int lane);
 int mv88e6352_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex);
+				 int lane, int speed, int duplex);
 int mv88e6390_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex);
+				 int lane, int speed, int duplex);
 unsigned int mv88e6352_serdes_irq_mapping(struct mv88e6xxx_chip *chip,
 					  int port);
 unsigned int mv88e6390_serdes_irq_mapping(struct mv88e6xxx_chip *chip,
 					  int port);
-int mv88e6185_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6185_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool up);
-int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool on);
-int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool on);
-int mv88e6097_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6097_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable);
-int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable);
-int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable);
 irqreturn_t mv88e6097_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane);
+					int lane);
 irqreturn_t mv88e6352_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane);
+					int lane);
 irqreturn_t mv88e6390_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane);
+					int lane);
 int mv88e6352_serdes_get_sset_count(struct mv88e6xxx_chip *chip, int port);
 int mv88e6352_serdes_get_strings(struct mv88e6xxx_chip *chip,
 				 int port, uint8_t *data);
@@ -138,18 +138,18 @@ void mv88e6352_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p);
 int mv88e6390_serdes_get_regs_len(struct mv88e6xxx_chip *chip, int port);
 void mv88e6390_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p);
 
-/* Return the (first) SERDES lane address a port is using, 0 otherwise. */
-static inline u8 mv88e6xxx_serdes_get_lane(struct mv88e6xxx_chip *chip,
-					   int port)
+/* Return the (first) SERDES lane address a port is using, -errno otherwise. */
+static inline int mv88e6xxx_serdes_get_lane(struct mv88e6xxx_chip *chip,
+						int port)
 {
 	if (!chip->info->ops->serdes_get_lane)
-		return 0;
+		return -EOPNOTSUPP;
 
 	return chip->info->ops->serdes_get_lane(chip, port);
 }
 
 static inline int mv88e6xxx_serdes_power_up(struct mv88e6xxx_chip *chip,
-					    int port, u8 lane)
+					    int port, int lane)
 {
 	if (!chip->info->ops->serdes_power)
 		return -EOPNOTSUPP;
@@ -158,7 +158,7 @@ static inline int mv88e6xxx_serdes_power_up(struct mv88e6xxx_chip *chip,
 }
 
 static inline int mv88e6xxx_serdes_power_down(struct mv88e6xxx_chip *chip,
-					      int port, u8 lane)
+					      int port, int lane)
 {
 	if (!chip->info->ops->serdes_power)
 		return -EOPNOTSUPP;
@@ -176,7 +176,7 @@ mv88e6xxx_serdes_irq_mapping(struct mv88e6xxx_chip *chip, int port)
 }
 
 static inline int mv88e6xxx_serdes_irq_enable(struct mv88e6xxx_chip *chip,
-					      int port, u8 lane)
+					      int port, int lane)
 {
 	if (!chip->info->ops->serdes_irq_enable)
 		return -EOPNOTSUPP;
@@ -185,7 +185,7 @@ static inline int mv88e6xxx_serdes_irq_enable(struct mv88e6xxx_chip *chip,
 }
 
 static inline int mv88e6xxx_serdes_irq_disable(struct mv88e6xxx_chip *chip,
-					       int port, u8 lane)
+					       int port, int lane)
 {
 	if (!chip->info->ops->serdes_irq_enable)
 		return -EOPNOTSUPP;
@@ -194,7 +194,7 @@ static inline int mv88e6xxx_serdes_irq_disable(struct mv88e6xxx_chip *chip,
 }
 
 static inline irqreturn_t
-mv88e6xxx_serdes_irq_status(struct mv88e6xxx_chip *chip, int port, u8 lane)
+mv88e6xxx_serdes_irq_status(struct mv88e6xxx_chip *chip, int port, int lane)
 {
 	if (!chip->info->ops->serdes_irq_status)
 		return IRQ_NONE;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/53d2aa3f1195545b6daaf5fbd42c98d5903f0617.1607685097.git.pavana.sharma%40digi.com.
