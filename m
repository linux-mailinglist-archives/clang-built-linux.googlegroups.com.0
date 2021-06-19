Return-Path: <clang-built-linux+bncBDVIJONZ3YDRB5VNWWDAMGQELAZNNVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAAF3AD6B3
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 04:31:20 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id gp23-20020a17090adf17b029016f3623a819sf4637282pjb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 19:31:20 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1624069878; cv=pass;
        d=google.com; s=arc-20160816;
        b=u34rOiasitZ10aKLKhT78SBANg9sOBmQ/K1919Ch3eumOGWyy46kGRN6Klp2I3NmPX
         rw/XPGRuQOReiaXNy111ksWH+BFEAK4qOGvRM5IxxNF6pT460HS/Y0wIW0x0Kxt73iRC
         hknN3IDj0YFGdAW2lEXLLCCEz1LAxrVHCoBJ4BV2PbUINcEhzfxd5tA8HwG5ELycBTBU
         dR1Ya+mdHB74JdmnZQ95KkdLrxdaxFGrBH+fPYRbeUGHy7mNXROncVA7c0O1BxvcmVlS
         hgUPciFaetlt7ryxP36Q93NEvxCgtSx1T0gPLh7wrTt2T5BRlpW/XI5c+y/nY69bsmbv
         yahQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=pw6bgm3O98P+naX1ZUil7rINUBnXr8TfBOj6zGmiKFc=;
        b=X3d2INwrZFr9L5zAEkc+TfzF+KWdnAVk3z6ME7SoyEhM7Q2aEGbQr4m/16Q816exLb
         k5KyeYj7+P6MO/WQJ1QqhX13wof2P3WMZJXb0WdkI2/FIIk+IwJv3N77pNjUv2f65OAr
         T2Qymm4CrjuwjAH2Og4ZeLbOfOdVxRacbRmIs91WB1DB6J7CE5NFLxd7LJJua3bG14cf
         sMFAJnjaTGfTxkrrHtYosnJfAk2UwP5liruI8BAUbqtkeQ7JZXyyhW/eA24m/TK/aCY0
         Uz37TJjBYLwgP7A56CcArOAsrrK+/IgahmtmwpELSeY5+ECzAsTfZWgaiBbJiKj3z4FD
         A+sw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Ueu+Ag8f;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xdC4xq9Q;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pw6bgm3O98P+naX1ZUil7rINUBnXr8TfBOj6zGmiKFc=;
        b=oWFv6bS5JN7mEIGZajGcSWVeSszXgTOgVTtDHuFzPjfXEaSbIQJHVP6+5z5lFbgy4r
         eWiNhBWFCxmCkmKnHqg2hVFrj1vBkOUzdAq4NJdjbU3+v4S0qmOm0u2Qa1iCceH7vIle
         NNf6ZEzUezoIc9cdvQCjNKNbg0TKEjHC/zbBsgQE2HeIhUa+QU4cWlckTJBM8gQnPGpz
         1IOV6lMhBlBX5rWN8Y6buSf9ShlU1wbReg96LVEKxQy6lMn2iQ5MnaY75KBT4Noac0k1
         dc7h3Ws9kzRhXxdOlT2Te5GU/H+vielQXroGdu8meaoXBBfok3PqKcLr2A4Q/TgSEj+m
         M/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pw6bgm3O98P+naX1ZUil7rINUBnXr8TfBOj6zGmiKFc=;
        b=k4isPQPP4HU6AqDjnoGwlnwQBvGKx7PDXDEHcwxcOIHBnHe2UB8XkARZZBHB259Hva
         0aCLysWE5VR5NzsYK86RZNhEsbzaYMbMaC2AfDajelud+l6DeaRJqxEySWT2eMCPhcvY
         PzWzwe71vz7Y5r1tUGQBeqdsYmsiqWfnt/z9k0P2U7y+rkUiSXrpeuXigZAPG08JIa7m
         ZCQFYw8h17C1v77OEq3+CEMOF75cVJ9wfDuWnlPKORXjXdu5LejiggH9WB4nMEiqfYXg
         Z870sUx/cKGJjvI5lFxQeGdRGfXMP6xksjXtgZpS8XtMnvbRiW15mF4YEsNaRAVDreL5
         7xjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xWeTBm3TU3mq1N+NCk4VA7YJRXGc/PgFHoQfIH7t5DQdnalwY
	p6kAxsgF6wBA6fY5yj4yJ3g=
X-Google-Smtp-Source: ABdhPJyC8/lo1bDWK/DItK8ukibH4r/1upuL1MUgV8UoPv7v7cTijUTdRrwVTfczsO/LrUGQ1mKhWw==
X-Received: by 2002:a63:f256:: with SMTP id d22mr12849336pgk.399.1624069878740;
        Fri, 18 Jun 2021 19:31:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1a88:: with SMTP id ng8ls9635791pjb.3.canary-gmail;
 Fri, 18 Jun 2021 19:31:18 -0700 (PDT)
X-Received: by 2002:a17:90b:603:: with SMTP id gb3mr14507429pjb.230.1624069878202;
        Fri, 18 Jun 2021 19:31:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624069878; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWuCaJUfDBqUNDZH8PKqxw53nC9CzTvhjm+zhkyjoaV3IdAfTXlTTVPMHosTyDzl3g
         bm8v9wZSmjPYFvzcjKg8oCbJxwvJkGSP2FV/OZz2rBTwxQFfEW0BHsOzQtKSRmt7KKVI
         WMPJxwF5WJYiPvfHDdoMIB7p/rvl+GSpMdoV8Fz9UsJFVkNLcunu6P3ihu/Yh+7f4L7e
         h4a7kQSQR2/XcRiPIX0WKYMAgP19bEc13CrtRWCzwb3zi2CF4fXGxPAhytXrGRByOVWH
         /WbYjjJ5VIjJ83bUnTe8CcGrVGSaPFp/9WQoMcc6HCBfrTIf2QPC3rDeHqGMi2NEZ6Jj
         vKRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=/oTwWFfX51XLmaOxfGG+86Gow/z281XkZWthgblE0zw=;
        b=iYseQj77tz7N2btWthtgsnj2FkdcW8hXAmJ/N9Rc+V4RdhGNGKq1nmRdY+7hNPcfFP
         G+H6vb2x39MXBlmbjSzdnWwW5SmDXjGq50vit15a9vfQDtb898L5JdFcJYea7kLLLJkj
         ijTyCbVNMcyfLC1g/Dk5ls1gzZhMXnQCBLC3zr36q7sZaPzhMBtFX63wmaxzjgLKZDGK
         G2N22/li6XGCbPP58hTRDu/7l7/xEDsqrBLzTxJ0eG4A6mDrpaylF94pEhARfKle8rvh
         eeQHJg+C+PssaSbR6zIrVClh9rg8v8ybDTP9FmOXBHKMZniRROUVrlQ71PzU13BRoMgX
         rOPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Ueu+Ag8f;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xdC4xq9Q;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id b3si1928080pjz.1.2021.06.18.19.31.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 19:31:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15J2Cd9L006396;
	Sat, 19 Jun 2021 02:31:13 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 398xmp0qam-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Jun 2021 02:31:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 15J2FFZd148584;
	Sat, 19 Jun 2021 02:31:12 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam08lp2173.outbound.protection.outlook.com [104.47.73.173])
	by aserp3020.oracle.com with ESMTP id 396wb02qd1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Jun 2021 02:31:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RqB2O3F6QYFCTQPZi3SW8GsG4l+xWcOfnUBSq8VHwm3xsBsfImX2n1MNjWAbqqXuIBdTiCNUz3psybaPTiMzOOArmPc+J8RZZA8lUgndNhcH+tbe+Ju1tEezc8I22Li6RGBtPO1L1vpfEJttuHgqHV4QsCBNk6WRabREfBTdHkKVEAvHzRNqHrO699Tb6QUso6hjGhokqLKNoWn0vaGytNLRdR+iSqtpSy2uSSvTTaE/ArCLqTLLT+yzIrjEee5nuzBG7itD01FMfeYY0lBstXyyAbVzqoxLhWvUdUJDUsCHmD+PvnTIWbiR9K3Jv/VP15JHYJlHX/N/KbvCV7tmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/oTwWFfX51XLmaOxfGG+86Gow/z281XkZWthgblE0zw=;
 b=NAOWBcq7t8EtM6XinmKsoyWrbK/Qq8H3Em2lmX4iZQaNeJDI8NYqbHVlDxpkHBjCdkt1jQQQoxvQQKO2KF+ZWdg0suCwgh9yD4noWdnksjad4mIrm3s/vTD5+dqlIYEDKMyWKQ4Qhw+ThUdLCMN1oDXs1RElv7VPgLO/2ujPIKGFU0ECIkH4HWXwJY4V2Ec3vVKSo4BXtgCGNOmiBCqTu4kBo07RC+9qXjE9o076NSc8+dErd5q2QVVbQwgyfIp+QBFcGvHPId+9skd1V35A9eksu66zy0OGP327v/fMFPiOk+WBT1GKrOfrCTiv+Dca6kFiTzlvdCrMnmpvDbkGkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB4533.namprd10.prod.outlook.com (2603:10b6:510:39::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Sat, 19 Jun
 2021 02:31:10 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796%7]) with mapi id 15.20.4242.022; Sat, 19 Jun 2021
 02:31:09 +0000
To: Nathan Chancellor <nathan@kernel.org>
Cc: James Smart <james.smart@broadcom.com>,
        Ram Vegesna
 <ram.vegesna@broadcom.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: elx: efct: Do not use id uninitialized in
 efct_lio_setup_session()
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq135teziu4.fsf@ca-mkp.ca.oracle.com>
References: <20210617061721.2405511-1-nathan@kernel.org>
Date: Fri, 18 Jun 2021 22:31:05 -0400
In-Reply-To: <20210617061721.2405511-1-nathan@kernel.org> (Nathan Chancellor's
	message of "Wed, 16 Jun 2021 23:17:21 -0700")
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [138.3.200.58]
X-ClientProxiedBy: SN4PR0501CA0115.namprd05.prod.outlook.com
 (2603:10b6:803:42::32) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.ca.oracle.com (138.3.200.58) by SN4PR0501CA0115.namprd05.prod.outlook.com (2603:10b6:803:42::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.7 via Frontend Transport; Sat, 19 Jun 2021 02:31:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6d39442c-4bfe-4b8d-9d10-08d932ca4c72
X-MS-TrafficTypeDiagnostic: PH0PR10MB4533:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB453341B0E062AF1C3248CDA48E0C9@PH0PR10MB4533.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qFb4J7+ZNdnfnt7SEkwdbsI4evi+ekAVo5pkIvm9b2m8O5Iqz0uLj5PJvfzZW5aruwgoVT3DnrdSgbe0tQBDnsXN9lffJbbTcq75Q8CpZ31rzWfFpGKZAnkwWKwRTkIn4NTNojRAtK94cI6OoxbVHItuUH7Qc3CZbj3sCV+UKirXCtPePsjWu4QQ1NNUvy0bwpaWmyTQCF04Z1cQ0ec7Yorw0ie9PDNerMMkmjDvOtbjNxk07bgLJBIFZZZTB+vWYmLfxO0FRka+gGodqWwiIGBwj+bAHglcFlo3HspnVtIFWRttfddILvh9KfBKCqou1shFdzGho48U1vX68pB/p22S8tP4HMfoTPgNMYaAJ0EykJkMwQYtsDKS6O8FlnToxzrg7cDeX+QWQEBou7U9NooGwi9cASxDpBxMDvjxnaS3Q7QAHC6VX/1QsAz9eTHh6iCH2xR8sxxycFIYegGMvYJHlnQX9SNTH15PBQpU3Zh0zW263bhUuOv6WwAsjJhRZpPqZu4CgqqouAxH56zEqJYM5Alzu2L4/93nLkONzp/TLoakQNl9l9w34WBJd0+ClDEj9AcbpmJ34QXUZgD01+0AJl6FBAOWny3ndjlZE9w0qLZFfja6L/5na2vWHVzPx6qM6m1khUMh4rwaySBXgg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(136003)(376002)(39860400002)(396003)(366004)(6916009)(8936002)(86362001)(478600001)(5660300002)(8676002)(54906003)(4744005)(52116002)(6666004)(36916002)(38100700002)(55016002)(26005)(38350700002)(4326008)(2906002)(316002)(956004)(83380400001)(186003)(66556008)(7696005)(66946007)(16526019)(66476007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bcLd3ChoQ8NFLQuFFRS5pk0ZGQA5N+267HaaUM3aFTeksuYob3rCXlBTcDRR?=
 =?us-ascii?Q?O1CajGY/Npt1+Bv2l4RiCGsWWU9VXMLDgeL3F3wpxNK5krIs4AiBXDdBv5yz?=
 =?us-ascii?Q?uaSyiULSquARGJhQuYcb42SzK2rFoVJhCBe3+54NOoZ9dLGuMmPX3jC9MIcn?=
 =?us-ascii?Q?QT01FBHq2Zqw5L7lVa2Y6+BX6+QD3aHrynjGjhDmKIUkWZ3x/6DJM6pAq6aC?=
 =?us-ascii?Q?LrWJv/7RAppN99tQeNJPsjMZtqGliqESHuvQ5xyM0wOQa/v51pMrK8m/z+tc?=
 =?us-ascii?Q?Z6vcICQqJOPJPfGEXScIJ7KHX64QkxdwYaHF4Wu5Y8koA60qQuapxL/tKmaL?=
 =?us-ascii?Q?76k1NlFmndpq0w5wM1BQ27F2pZ8pE2CxdEcl8JhxoayGqwIvTwDccgAd1E00?=
 =?us-ascii?Q?5hRl4+VGelA0AherIy9VEOiBiyMhrUa76iaUXzrJTDhEga4lJEKWoE12nj09?=
 =?us-ascii?Q?19vbqQESaeYyaEKlVqB59QCto1IFOHCoBscfZveWv9slbJGvrrwsbiaSj8Wx?=
 =?us-ascii?Q?uyHpWT/N+s7QGMP3G+0g8PUwm9/ClZ0QtZZbEXSj5N6+ip5v44OhFeDWB3XC?=
 =?us-ascii?Q?dy4UMOl2p3m/dUek5sGKNrAqf+y0DxMHDLSlT3cJzzytZ/QyYqonTIUfaV4j?=
 =?us-ascii?Q?+OFH4ZkDfm0//4NK6P5+nChxJB8vM3PYZVuv6h6pRmDWWdLE4GC2sWQFs8Xn?=
 =?us-ascii?Q?4Fcz5tdeeUyT7J51+Bhu55Ssn4V2HcqIEiIeV6udK44Gji6cPr4XcAlGa84v?=
 =?us-ascii?Q?AFrblMlgO3k0AXD631DzsZ3iiUbZ4d4SITh1jiwhs72I2jspnmB1UbbuG40G?=
 =?us-ascii?Q?FIAJJV/W7CinUI0NVoqRMz7TiRhTpfl3vJi6NRQeWwUqqTvEhVFK26D4zh8z?=
 =?us-ascii?Q?q/e127E1bFhFR9K0DXO7oprLEV1j0alzHV6aeO3Db2KyOOzXgT2FiRh+p+nE?=
 =?us-ascii?Q?cS24NjuYM3si31NfM5vgXzu157p4JjmKxzTBaVc6LJlc05zgKQod951zW6X4?=
 =?us-ascii?Q?Ht4CxgRzDOHpHnG3FWeUdFxBH9yMtZ2FzMFIaZzgP4/T2wzo4U/zpx2HlGlC?=
 =?us-ascii?Q?DAT80QgiwLVzYMKZ0YFyMadjnIeGVmpZmovk20obTXiq8ONGhOMyDmqLV8r/?=
 =?us-ascii?Q?1pLrT/ZIRz8KQJvknUgHM/1j2+FcDlJgbzBBWEQ3eJK39KKwE8kw28rrsXBd?=
 =?us-ascii?Q?aP/G0rqaZqgeqOmfGNflqDrh2+EMlcwB2n0ET8xIf2/Yl1xUexWnkKr37wC6?=
 =?us-ascii?Q?zfX4CZ1/MYdYqUVOpcWSilaW17qS8LLD3G/3KIMjOhb+pQyAqb+dpbcdoN5K?=
 =?us-ascii?Q?9Ut+9gq704s1ZAMYK1We0jqV?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d39442c-4bfe-4b8d-9d10-08d932ca4c72
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2021 02:31:09.8043
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MsbLfKRMyN0gAxAc/mQZ0sRCTC7haCvqWa3f5c3MPjegSvWmjMqrHUrPRmz8eujnNPSD9eLPPfgcugkVLdSNwQyRDAKbL3Ef66Jhoo5gowU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4533
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10019 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0
 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0 mlxscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106190010
X-Proofpoint-ORIG-GUID: MzRfG5uIABFLUH1ghSCk78ohhFYlPPev
X-Proofpoint-GUID: MzRfG5uIABFLUH1ghSCk78ohhFYlPPev
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=Ueu+Ag8f;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=xdC4xq9Q;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


Nathan,

> clang warns:
>
> drivers/scsi/elx/efct/efct_lio.c:1216:24: warning: variable 'id' is
> uninitialized when used here [-Wuninitialized]
>                       se_sess, node, id);
>                                      ^~
>
> Shuffle the debug print after id's initialization so that the actual
> value is printed.

Applied to 5.14/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq135teziu4.fsf%40ca-mkp.ca.oracle.com.
