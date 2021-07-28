Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBZHKQKEAMGQEZZYIZVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D8A3D857E
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 03:39:49 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id r11-20020a17090a2e8bb029017382031497sf1291261pjd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 18:39:49 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627436388; cv=pass;
        d=google.com; s=arc-20160816;
        b=RSPwMJvL2QwSlVAlcHuA7docRzmiDL2Xp7VTz3T9/oDKoTPrGXaqtrdQTMQ7xqDRDi
         U4nLg82tj/pvy8fKpd1jZlEU3w1lZqm8Jcp+MmiS600FBYNZRKvsxAPYKuhyS9kVhdHb
         vYPFWV6U2mJzP/PTv8uaJHR1atD9A5HBczTiuQYaBmkTAxUCjmAUccFUG16CsMv8OMYh
         alEbeJY+pSKckiP6G+DNqHZbj/TxR/irtgGFAw64ZmeoD8ujmMkYed4OwyAv+t5IRQSP
         lfvzs4Re8GZ+pISz5U2gWRBAg5o0JjHE1sU6aDtk1+xPP5KeTohkce1BLzQdXB8HzSqM
         2dUA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=GIYG8eIdFmAxk+/Pd9dVkI1989ktZKwj/03vlCtTMq0=;
        b=A5zLaAzq12wmFUOK+Mm7ZjRbPZBlQmROFgxnHt8iw11U/xNZ0jlvbxQBFaDiUSfMws
         xmhcDR3RZomex9jnhPB1LI6Si2nfLBGW6MRZh6PgLKtMbryKpentTuaMoKTGyPMlS1t1
         OU9ufh6eAzMO9yku41eJty+Xcj1c6rZTt38br2q1OYHIM96n0uj93i8W85oOoTIwCFW9
         ungk114gxJ+En1jc2NNMRVSNN6y2PXnuR8D0fZppvv78EWa1vBenJconBUWL5QSDBcsg
         JcPSJ5L9Ra3J1KCOt3VKo3SvRZXnD8L4qsvSymcxjeysDVV4Iw+N7FjKXcsLAoEDIPWL
         76lA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=POkUB1F3;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=TaIM3z+T;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=nhFIzZ9r;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GIYG8eIdFmAxk+/Pd9dVkI1989ktZKwj/03vlCtTMq0=;
        b=cvAkIPZYvLDLE6VHEearFHuc0wMyFfED4ze1ke2etiqNSgVWQSdYZyelrnzIb8wlTY
         S59YB+37lrgK53YRpsMEJxKVzJJ3hLIiGj1tyzpUQIHDuUoYguiA/b/8MXkXWtAO46BM
         BE2d+3r9Oo6ALBwk4Iowsyej16u1f1fx5Lvgs0YewtnnNIBYavHvqMmZRlPJGFAYz5nC
         B/a44hmkXE/A95pszao655SOcukmYNTb93t145Gg5XkOkb94eq+dT74TzayNoOrP888N
         9aa29RB9liSkaUVdliCZKTaaIwLKtwuPugMyorXEEEs58L8010QF4WhV1CcMjNhTAFFB
         B8zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GIYG8eIdFmAxk+/Pd9dVkI1989ktZKwj/03vlCtTMq0=;
        b=kSEzoVm5kI8DxD0vqgIIZvVNd2pse/9+Isxo+JDElIO0C8cGVA2mPZwU/uE2KOMB5o
         U/WjoWmRMarjvwv4Z6EYLj5t8tfriHyA++Ar3xMC5FcsAT6scxSGoUsXQjuyWj6EC+zK
         pwl+nn16PiwQd1u3dBpZoGomaCEgItUWxRZFc7VcI2lNuCctEgykOvL4ZXDHvW67ta3v
         19CigrgSaiRUbQ21NqiGUXMFewFy3buN4vfwm6rzo5LOUUrXK27tJvE8H36Ry302qyy/
         3GHsz/zJw9p/6vRIjb7TgPoi1Jq3LZ1fENcSFJt7IUscgpU06DNZliodv5gWLJpxXXdC
         F6fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xII+4VR38X8P7F50/4xcL6Y1EAK/TM01+KWWv7Rfhg5g+r3CQ
	WJJicG+ZQNNAvOa/H/wc6Vo=
X-Google-Smtp-Source: ABdhPJzLwamQq4iPMWDYVlKr5rXO2/OmjAreHtPK751uNYoAfhUnwYXfiqsh6XUHRrtqweL0d8D95Q==
X-Received: by 2002:a63:4c26:: with SMTP id z38mr26279914pga.376.1627436388619;
        Tue, 27 Jul 2021 18:39:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:aa18:: with SMTP id e24ls219096pff.5.gmail; Tue, 27 Jul
 2021 18:39:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:bd3:b029:329:3e4f:eadb with SMTP id x19-20020a056a000bd3b02903293e4feadbmr25770413pfu.44.1627436388035;
        Tue, 27 Jul 2021 18:39:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627436388; cv=pass;
        d=google.com; s=arc-20160816;
        b=kW+uVYP87cVZKpacUAWR2BSt8kg/m3XmHrU0iplRl0ZCT9t0xSOLV5pffxa5YGzrD4
         6zeLJcHKJLi/y1/qfFXU/TrUTfwYyN1IWo9joTT2QgHHxLhxUb9vnJPxSsB0edsgr4u1
         FxSzOaEynludOGV4xd4PSK1EWs7NxTR8v2pmKafH9s6VybEjVf3lRN9mFLKHxAwrRgqw
         LDgT5dNtzuo3Ne0SxUIFWiyvzdpXvyPUmXZ+tTSEd5CTInjO/6joLqG3mZFSZnkO2K9e
         NDOYm+VsgQu81PiBBi6M7NIcXCE/+/ycY1qY5MXXm+0gYDkqVu5mDLvEaPd3W9PpGkhi
         npqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature:dkim-signature;
        bh=1b/ToWLe5ZsKDcrVfg9Wv0lpkAnXoV/Mh/ARa967ohI=;
        b=JCkp5fBILBh1yKYTIAMX0B3/4MqL7cymtpC04z4iCOYczTgxrSJkRoadvHF2dJ9AUX
         R+KvJbV7jOAcGPJ8OelCHect1Cyp9HCdheODYU3bWLI7q503Iswq4l08quQW6N/rHHUg
         tHpRvcenntk2lZI54oY1QbWEodBcVQMtMn/xf01vFTJTFy9nAyMxRhQU0v1oDSw6Q/ln
         ktE+/BrTCCdIqmnOf+4fzwrf9FTz2ddQA3nlzzXu0oLZpa2gotmlL0T4XKg2CWYsKxr6
         ZhWU/TB8evhTJKfGsGeukG1E/DzQlY4Dq3HYX+LgcRZvSmzoqhKadHHJX1BykvhO0ghb
         ymOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=POkUB1F3;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=TaIM3z+T;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=nhFIzZ9r;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id o20si402777pgv.1.2021.07.27.18.39.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 18:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16S1bPtP024744;
	Wed, 28 Jul 2021 01:39:45 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a234w39xu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 28 Jul 2021 01:39:45 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16S1Zcnq119937;
	Wed, 28 Jul 2021 01:39:44 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2047.outbound.protection.outlook.com [104.47.51.47])
	by aserp3020.oracle.com with ESMTP id 3a234973ef-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 28 Jul 2021 01:39:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AusEwc7yLH/RdwwRFhwnaqDpfsOMj09n72AH56UmGUV9RaH8i70TAaFexWc/pCOOHdOPQqY4Zu5R2wc9bTA9e+pMtD2rqZ5uuV5itVNsU3jcEXTYZHG7EEeOTSjQG5gQrGYyplTNvcM7aBytAOkqDJYTsNWU/4L2UU4hWxyi0RWRzpQfnyrhsYDhCLLAuDV/RW2eIhYpqslPx0TCKq63TDb+dCPMDO1zGWymweCXcISoiFENLwsm7kS+IVwZ2Hu1wU5c/7tgUrNbe7MOx4ka2RzIWIyw4WCD6PKcfkfNWBbDvh9qAodVvO+sO2699yHL1pWwTlCQngtNb9Ajdyfe/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1b/ToWLe5ZsKDcrVfg9Wv0lpkAnXoV/Mh/ARa967ohI=;
 b=kSbkCOVIDNXwfZCzjOuIyMazFsP/SNMvhLQRtf2Llsjzr0QlMgIcRTHeyYp5SOCA7PYbAoRwwu3DFWLS/3Uy3CK35hG079A0pUjW6orLci80Q00eqpt8tpibtWTJwlozk9Ai+4Qxz+cYO9SIquGA1gP38o4cezIesFKpXMoXNELuO6XWKWBxmv+1p8BMNWxLP8iHAshm0bXf0Da2kNDUu+C9jAkA9CiYsFL8pIyc1SLOHECYnR4pQOhH9rQW+MeFP9LnoydcMMEAsvuaVVv04hooZrtM0QY/2NBufnxG6KOPyCxT/4LMSPW18EIWcI/AOQF3yMPKTS1j0dsseOJ1BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB5611.namprd10.prod.outlook.com (2603:10b6:510:f9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Wed, 28 Jul
 2021 01:39:42 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::153e:22d1:d177:d4f1]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::153e:22d1:d177:d4f1%8]) with mapi id 15.20.4352.031; Wed, 28 Jul 2021
 01:39:42 +0000
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
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
Message-ID: <yq135rzp79c.fsf@ca-mkp.ca.oracle.com>
References: <20210727205855.411487-1-keescook@chromium.org>
	<20210727205855.411487-37-keescook@chromium.org>
Date: Tue, 27 Jul 2021 21:39:39 -0400
In-Reply-To: <20210727205855.411487-37-keescook@chromium.org> (Kees Cook's
	message of "Tue, 27 Jul 2021 13:58:27 -0700")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR05CA0156.namprd05.prod.outlook.com
 (2603:10b6:a03:339::11) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.ca.oracle.com (138.3.200.58) by SJ0PR05CA0156.namprd05.prod.outlook.com (2603:10b6:a03:339::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.7 via Frontend Transport; Wed, 28 Jul 2021 01:39:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b4b84a94-9b90-4af0-ea4e-08d95168924f
X-MS-TrafficTypeDiagnostic: PH0PR10MB5611:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB5611B31E113F35653BEE041F8EEA9@PH0PR10MB5611.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mwSZWSPXbj6YMtjU0A4PM4G5u9VxGHrY8ajQ4HLZ00DyB/iDLveE2JFDYpjChGfg3bMNKlLCwRdEM6g/CpMOn/k3hjo8jzU/X22YiZBV/whIw3Gh285LkDuzDKj0gQT8ZXi53fXukBKkb/bxpQUFIfSd0oWbG8VznvcpmKkR/Mu6MLdn93I9q39QeX2Mkq6S7pk56/6ysu84qa9FSB/0LrLkM1uL1LySz1hnNdzFfKrsxNgCf5yVqALDcSchB09oOttc5PWAhr8ge4QRsqMRMQShFPTi500lXp+qJp3IJQu/IGFo70bNVDROeit/0yWyNdLpcY/3eqQ8nScqcohjxnmFSem0BPsKvDqogIqW520Z4yWeVFAL/oXC8EOIqPr5dShWgzdDYRaMAdboHPnSRtw3N0z3Ha9hq46+TGO+vXXXmB2s/t2wLZR2SOLrHTrXJzBhvfD/finHE/oWddM10DlxNVGC/iNWZeuZ/Jahh3rUY710WBPRCrBpkuknqSSD0ELaaMN6dn1LH8GG9k0w0AsGZcUxgLB/hMqV+9XBv2SOArqGug2xpmxTGJzjMW90UUWoKeFLGjFeBkAqsDa1Lk7GIb1FWUb3HZRnCvTo5TvPEiywLXV5IUoXEDugLivVvsYleBNPsNtibJtsUhQr7qWq3YEIef5BnKKvrkRAgTgORdmk6Igf7GU4Z6hDMBH0U+Hb4TV8dZkHdQhyWq6GHQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(346002)(39860400002)(136003)(366004)(376002)(956004)(26005)(66476007)(8936002)(478600001)(54906003)(316002)(83380400001)(7416002)(52116002)(8676002)(86362001)(38100700002)(5660300002)(7696005)(38350700002)(36916002)(66946007)(55016002)(6916009)(2906002)(66556008)(186003)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?apY1BskIjLovv0TgaJ+cvE3prbMQWW0iC956EErx57YlD+FyQz6VGAbASD3e?=
 =?us-ascii?Q?f9Dc8GQ73Enz5PB8GFn79oL9qIjTBluc5ahAIlZ4+x34g8+ghdvUrPETioDP?=
 =?us-ascii?Q?2YDtTz+XcsY4yzynKrS0ZkswZy1hyd+1QIQd57+r1w9v0wwpLRNyLCia4IDT?=
 =?us-ascii?Q?xx12zhcToDA675trTWwOM6g7jEkyT5hdDE9F677BJH8MiY9iG/I3OuCg7JUY?=
 =?us-ascii?Q?CzYQMuGSUhJdZxEfSEA4kGR9UZzGD4b2MZ5uCCPVci/IdK3qnuLS/e7+knrS?=
 =?us-ascii?Q?jXSzfS83SQ8/eR+Eg/pRYiwopmE7L32jd8vlO8VQtVgo/sbchRAbs2ZifyUg?=
 =?us-ascii?Q?PgyAoWvwK7EE6vHbwAy7xqjpWMqs7KSNPnjmrkpKAU9nfK7WimqQD9XbniJq?=
 =?us-ascii?Q?ViK3hXDaF5tGyDiPpZx1N7x+IkU1ORNz6jQlzVmTlAtzofjNM1Q4o1JwjANd?=
 =?us-ascii?Q?gClM/hVWuTsFGwsmIL4cqozJmN/8WcaOk4blZS0KWvwgIOCFtXLlZ0xMlRuK?=
 =?us-ascii?Q?CjU5aedOqYJlHQXrpKmy/ltJqOXvS99dLas8RM9ux7AAWEvrWEA+mnTD2bQB?=
 =?us-ascii?Q?MHxnErGLd96XXC63ZGC+QJHwaEsaWmBMrYtrmZtI1jTEAu0yMc1rNYqcbz3G?=
 =?us-ascii?Q?7fO6JM7W0zpMz0q9bAmPVIQq5HuvZ54cTWCRMs29AbGj7kze91ecjR39XIIL?=
 =?us-ascii?Q?67CmY0NMtquVa0X/wjLtNoKiYDARWRguVayd7+P80NF5fnj275alTG8mPu/r?=
 =?us-ascii?Q?YlYs+pAKYTaTXMJum/cPnQ3ckHV7T0WCkaxzzFXGcQTQprKkT3opLTovFnKD?=
 =?us-ascii?Q?m/fTvxRPhVXbaVx2iuyMII1F/61aYrMvPKxyZ5AiJEfzs5rQcCUuo9TJ7diL?=
 =?us-ascii?Q?yYXZEuy8ffpcKewovxGnqJL+1H2CPSJ2q2PyQkdzJEeTzqa68J9CTItjmVR2?=
 =?us-ascii?Q?g9cP3f7IH6gPrvCLQo59damPiosbPeh/Tm926tvocwvPqk/xsVcjmGYOnXBk?=
 =?us-ascii?Q?pzit0tWVBezw8Kjo2dZJMkD0aLoOr5bCVrmIZ2lobhs3VM0cSsHAKY5YJUyP?=
 =?us-ascii?Q?huFnSb94WOe7T+POAPU/mWwatTW/JHNQcTsCvskqENM6cCJY/E8P1tGQ5e1x?=
 =?us-ascii?Q?6YVv7ABfx7GUMrTGw77TzP1ke64lLx16pkTVBb0c6kJQcNEXwtGS+EvZF4pV?=
 =?us-ascii?Q?AvDpBWg6ASrGjXzUVZVXv3pfiXF9cRW0Rtt1S8cMZUoHcMH24FrHeTaUi0GH?=
 =?us-ascii?Q?xt/Lob5BvlgdjaSuTyzjfx2PNKglAu6Engp4bNqrisAXkM4mNk+yFYaNDN+K?=
 =?us-ascii?Q?hG4shKS+fQ911xf2IqeCCVWM?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4b84a94-9b90-4af0-ea4e-08d95168924f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 01:39:42.3960
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H71AKo+72HNmaCrINLqrH8MWQAE/oHYGydeil08fJErqiDL0rVgxtOzFSATD7olP+/yyWJv6TC9GuMCbATv2FyQmrqwm04vA2pgIe7wKfSc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5611
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10058 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 suspectscore=0
 malwarescore=0 spamscore=0 mlxlogscore=999 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2107280006
X-Proofpoint-ORIG-GUID: PzoC1ZvBRGce1AdH7qMT0gv5us209nv5
X-Proofpoint-GUID: PzoC1ZvBRGce1AdH7qMT0gv5us209nv5
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=POkUB1F3;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=TaIM3z+T;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=nhFIzZ9r;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 martin.petersen@oracle.com designates 205.220.165.32 as permitted sender)
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

> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
>
> Instead of writing beyond the end of evt_struct->iu.srp.cmd, target the
> upper union (evt_struct->iu.srp) instead, as that's what is being wiped.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Orthogonal to your change, it wasn't immediately obvious to me that
SRP_MAX_IU_LEN was the correct length to use for an srp_cmd. However, I
traversed the nested unions and it does look OK.

For good measure I copied Tyrel and Brian.

Acked-by: Martin K. Petersen <martin.petersen@oracle.com>

> ---
>  drivers/scsi/ibmvscsi/ibmvscsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/scsi/ibmvscsi/ibmvscsi.c b/drivers/scsi/ibmvscsi/ibmvscsi.c
> index e6a3eaaa57d9..7e8beb42d2d3 100644
> --- a/drivers/scsi/ibmvscsi/ibmvscsi.c
> +++ b/drivers/scsi/ibmvscsi/ibmvscsi.c
> @@ -1055,8 +1055,8 @@ static int ibmvscsi_queuecommand_lck(struct scsi_cmnd *cmnd,
>  		return SCSI_MLQUEUE_HOST_BUSY;
>  
>  	/* Set up the actual SRP IU */
> +	memset(&evt_struct->iu.srp, 0x00, SRP_MAX_IU_LEN);
>  	srp_cmd = &evt_struct->iu.srp.cmd;
> -	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);
>  	srp_cmd->opcode = SRP_CMD;
>  	memcpy(srp_cmd->cdb, cmnd->cmnd, sizeof(srp_cmd->cdb));
>  	int_to_scsilun(lun, &srp_cmd->lun);

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq135rzp79c.fsf%40ca-mkp.ca.oracle.com.
