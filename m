Return-Path: <clang-built-linux+bncBDIZTUWNWICRB2P7R2EAMGQELAV3AFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 505B23DB596
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 11:01:30 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id n192-20020a25dac90000b029054c59edf217sf9684654ybf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 02:01:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627635689; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkDV9OlEWe3/ruIczztG9ZjtI+fnDvc/G8Br2qG8CH/y7XOBYDFYsienHXk7lyzPDU
         Hm2h1axOR1YJb/UxJFP/TNk8yt4r2wpEf0uX3jW5K3CUPUrrRNXQfxcwW2Vt7PBHsK0d
         LnBb+kK4+zzu8tB9aMopAszUAzdboc7oFz4q12S+9N9JYeI7xT784QElTGU+ec3Xy6x8
         pxs2pscRwPwAsW3hwwMRZ3gaz8QaPxUWKrGjgVwubJQlwmbm6PDPepjkuuvH7bICKQvw
         2RL2UgWuvyIi0Q+YMGIXw0m09O8yhqfLsaYAaReISmckepigzeiIlKKO38KbJuLQpY3c
         q+ZA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:to:from:date
         :sender:dkim-signature;
        bh=Q0hMmTM2IH16qhRSIVmvHp9+hG7yOfrQDwgYF2q723s=;
        b=hfmr0zWDt5WWuMy8oWZy7/bZZiOhdaDqyrffW2yIorZjMe6zDK6lIvUhQYG8j/5t4K
         rc1mMLS52PrBorQbVkGBrU06xm+KoOlm5gmCwjQRMoW7nTnYRzHuSXnzYSr5K5VY9rcI
         3wUoDsWGBAOwK6qSQkX3HW5NAvzM0A2fA4Chila5ic0rGp7cGY5KIxtJtKEKE4YL38Kv
         SWKibU4ITJEm+4O9rwnBnn5kidyce21WWnxS66gctrLct5p+bAAqp3gO3VyFSpJIAWlY
         gE6qI1WteQYcnLVQjd6kZjIQh2//Kx/mOie90FriTBSmZ4nSYkY28EAlPGdNVRpjwQZu
         +RUw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=YJGvWVHx;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=mOUy3wHP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=B1zIBYgr;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q0hMmTM2IH16qhRSIVmvHp9+hG7yOfrQDwgYF2q723s=;
        b=bUI+TlhPFMPv1f9zC2pqy3hq1vVWk3aax+UQZhMb4R5xGjyIY2XKmR7I+vP8A577mU
         kJESu8LtQqyzFKcSvAvjVvA/FOpEKpdYtXsaPiuu43CugyZHI0chr71LZVhso2NMVdbe
         kFzAmBO4lJKBoUYHyhJzlRZh7DCwS+e8v8Oi4tkUlDy/QUtYnZMfjPaErp9g5Jnlnqxu
         jZd2dZgmsMO+4V9lZf1DzLVvfTZda6u3UcTrVT1YwbCN4JGumtlDkhpMOQSUFeLCJg44
         /V8IJzU/uqQCCIrWBHzjRkVg5CETszrMTPs5trHaINrtHpk78sIzNm2slH7wmvAgyDDz
         bayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q0hMmTM2IH16qhRSIVmvHp9+hG7yOfrQDwgYF2q723s=;
        b=Lg5R7DcU1022VO3e73GdK3VWE2dtzzTxLCodqOb1mn+G1jwaqC89hX9j2As10XqKMo
         s8bTrJq0q4w+pZYQtQ+D1TDc7QrL6lx4e6hYstax6N2Kt/oeP6SjkUQ3x7Azca0My6ze
         z5Xtc6egXOG/H/QwuOXnsqAkIfMHdk/0LCDYu/kH61mBexmLm4Df2+kL65VOwiASjtE9
         wDjFg9pjoL/TZzTfloVzM2UI9Vlce5Z+dEIIsa8h8+s2wuGO00fW5ir3FrrJf+z/4OVH
         3EIv3sc/U9wtiJUAh+rI4/RJzJpbZB/f0JCrANYZFjY7Kjbe23qzg42JF01KwAG1p7OU
         e6JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZIiy6wZxashU9iUvfPnnOeoirYuOHMn7zFMEFCxJhWf8Pq3tN
	zeBP/r+Vyw/ke4XDs9+ob+8=
X-Google-Smtp-Source: ABdhPJydD0UCTqPi5WTnfWZbJ3L6Xuq7KaTSFwOHl6UXO9rwWHAxg6MQ1WVUk/hJOuq9/mfaa5K4Vw==
X-Received: by 2002:a25:61d1:: with SMTP id v200mr1994751ybb.219.1627635689371;
        Fri, 30 Jul 2021 02:01:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c70c:: with SMTP id w12ls451672ybe.4.gmail; Fri, 30 Jul
 2021 02:01:28 -0700 (PDT)
X-Received: by 2002:a25:5086:: with SMTP id e128mr1884658ybb.223.1627635688899;
        Fri, 30 Jul 2021 02:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627635688; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQMLkr5XHnOY5oALj98Mwx1Mk0F5if1g2yfc99dgZ9QxnnQxhBKGGn86g/REz0lMlR
         2B0C7yIuGRSTg88fS8968um9GMs2YaaU2pPXv/kBzbYVasDxmxkb179tIEvUp8Stxi7u
         0VYH5xpukNflB3w8+lK4U8Se4ltwkYKwYAbhRajBdnA/oMbRAk13/RbSFm0STpEvNQEF
         VZw50B5lMecojEg7MWqQnBU0P4jkZfJC31iQoz/gNMVVPlYzjTx6dz8jYWzKKXDAAFZh
         j+tzZfFrDNZRYWOVBEMH+/GuucK4eYaUwHlJfhH9BGM3s2w+780nx39dVUEVbmNTSOOL
         6kjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:to:from:date:dkim-signature:dkim-signature
         :dkim-signature;
        bh=nW/RBoDYU/F4d5MdZ4Q40k7+uZ3USdML/ZcFZDUO4Rc=;
        b=R4tGmADxY7Spm1mPIpVUJXwgH7XuO/wxhyKU6eih68i7s4SpUp/dMUMdrxuLlr9CME
         PplkbF8LPE6dsB/2W5TIb+Qt5akk22rgFSLMayWq/sWO9LeE128Ogzy0p+YZ+VAVS0uw
         AaMKmN36oQ+e33HRmlqeSD4d+XZU1OmlbQQOE+23i/f45zKCgNeeUSg4RIB5roR3atYp
         ZTV4nAVtJ5Vqr6nRs8WXsC+DuFEbNp803oaZWRaBuNjvtvHNie5rG3PUSwmL4RKzMrSV
         +FM87QdqblYF991pS+ipqAajvaB+nZdMpk6YtW6CQE3DnSFbE1ogmvKLXVmNY5QXj/lS
         nSwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=YJGvWVHx;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=mOUy3wHP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=B1zIBYgr;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id z205si92280ybb.0.2021.07.30.02.01.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 02:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16U8vCqH019001;
	Fri, 30 Jul 2021 09:01:24 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a3cdpuwag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Jul 2021 09:01:23 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16U8tfEK108797;
	Fri, 30 Jul 2021 09:01:23 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by aserp3020.oracle.com with ESMTP id 3a234dw9tp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Jul 2021 09:01:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8KnduMs/OcDHelqu0SOg5UeOla/KOZFP/UiyvFs3ZAKysmU/hzEu3EA7zy9Me6tc+RFFj1jtT7tni1R5ZtMsMsP0MYIDR3pKjXJrZsNjGDRQpoPh9z5toXu9yK3NNCqihjfSrL04HTjgCJH13hn1JKggTopL+cINtw+e3WEsBpRRkxz4xTEX+ULOYrYR7zT5a8SiLAJBzey9qhu+APMw2HM3bn4/uMQ2bBhNhc91QmI4jBWq8Exhy9IldedjuGDWC10EacVwyXwjrIL2flMAJVXe4BaskPGMG94CBv3nY6V0aUeMSWBpgH0vXCCMUbdOzcX16G9tat1J9gJoCfR6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nW/RBoDYU/F4d5MdZ4Q40k7+uZ3USdML/ZcFZDUO4Rc=;
 b=ZeuziZY6ooN/X1Vx/pKp2c9i/0ispIca3qzVzu3TtVnNAytH/zzWzHHZPdDaY3343loEsiOar0Dm0L+RQNF4HKEkeYiJORZ1cn2fS9PvoBl41BZ59LmIRAId8DXENMaPIRxPaFiItw6MXOf9F8sJN+eQ5cM9lG6tPv9ESvi4QgXwkW85x3XhuJ+/W0eu7Sy/wVmsQ/cJ+6W4cZndW6ZY3z+O4FjarfE5O1Kx/7XbSyOW+1bsO2mJAjkA1tg6Z+AZ0wnxpyAmkk8BX8wj6qELgmAOmGkm7Zbp+3/6eTzhj0NkIYZctlw3aguAdFFPt4VgOFLyBVXBsUfWJ50YJ3I/4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1485.namprd10.prod.outlook.com
 (2603:10b6:300:25::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Fri, 30 Jul
 2021 09:01:20 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4352.035; Fri, 30 Jul 2021
 09:01:20 +0000
Date: Fri, 30 Jul 2021 12:00:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bart Van Assche <bvanassche@acm.org>, linux-hardening@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Keith Packard <keithpac@amazon.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
        linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
        nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <20210730090054.GX1931@kadam>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz>
 <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
 <20210728213730.GR5047@suse.cz>
 <YQJDCw01gSp1d1/M@kroah.com>
 <20210729082039.GX25548@kadam>
 <202107291952.C08EAE039B@keescook>
 <20210730083845.GD5047@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210730083845.GD5047@suse.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0041.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::16)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (102.222.70.252) by JNAP275CA0041.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend Transport; Fri, 30 Jul 2021 09:01:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a4b4b54d-4c7c-41a9-d81d-08d953389905
X-MS-TrafficTypeDiagnostic: MWHPR10MB1485:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB1485312BF32F4F8957AB023F8EEC9@MWHPR10MB1485.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1751;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: umad6nrrY6Y8XU4TP3KXFC1b6wtc9yyV8/jJKXFvurLfH5AM4QdCa0AnTcJ/mGXw+e1wT6oNEpbKMpmdB2pTCnqomxwyU3XyUDL9ygZodv6oT+bTRIgwAoae0OCxvxFa0cIzEIfffXfIdOtfSOU0xII+MAg21GOTCUzdLtE8OZ0ylmJ/5EKyLBXbRAsWi/63iwgj/auqsF+d125wHAgA7J9Zqoj7bEWg4p9i+NZLSpT67s09h4BHWbffmhdjlBcgMmNPNw+tNaStVDvzKK6eELPoSyfuu2gorVm79KKASYJSTEbBBFYKmTdmpy4kcwi2w5f7SFuppuAJU/NVbHzqKN9iJVlCjcLGMFgXM5zTK19bQ1EX+lFV2YLbNnnuQnjLMcbaFmlxruCUmW8ARnn65MhEBGWUeldvAI2G9infU2FXvCtAPz+FsRPzb0ohD3ERHBZitP7994/DXAE+NfhASH59yutDYNUA7ihOZvEHQvIituPZ209ukyuGfUhpLXbLzJSIM57ZBjusW1eZZguS4xKQ+gftjoGVuW1q4HURMvSTE+2pvToizalOBM3bOTmCR70Iztel3kCrD1/31qKtxUtyhLRmhCWYn7W5AEstEa0eawmi4MsxuCvKCUAWL+ZPqNyTZYafT3rRelr6S8lZk6Q34gIkKru/v1NA0jrdth0dmKkqMnLKQCZ4uufIemagetHKQhpej+/tGpMPlVaH2cQ6gMumBBeYNreuDcgEEcrxq/R1mccc3n1sFGt7rews
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(396003)(39860400002)(136003)(376002)(366004)(8936002)(2906002)(8676002)(86362001)(66476007)(4744005)(1076003)(66946007)(26005)(33716001)(9686003)(316002)(66556008)(956004)(921005)(6666004)(9576002)(7416002)(33656002)(6496006)(38350700002)(110136005)(55016002)(38100700002)(478600001)(186003)(5660300002)(44832011)(52116002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XJa9lMV0XzODWcWsaDd+HH8pCjY9RtVyO0YHpcGRxwnWCH4h9UQV501gVsGm?=
 =?us-ascii?Q?GE5psZ8EF5VhbUqy3/VHR8ZfK24mnBBXV7c5XETtKnLexSsA4B7ugXg0g5C1?=
 =?us-ascii?Q?r9uH3I7MEpNT2WRbXUwTeP2N8XZfgQrokEA6tj2U5jQLxGpHU08jwtYe2HaF?=
 =?us-ascii?Q?anNaGQfTRa2/ZJWg+//Ri11+RxqORi/03kFgfpkhSbXRG1KRPFxY5Aqk2E6y?=
 =?us-ascii?Q?nAh5dd1/kdOy88baleKv8NccBdMF452TM+YDA7V9yNoUG2xhKwdkmgH6ATma?=
 =?us-ascii?Q?lXSTjUiEc+xpoO/MW4EzGWjeIyoMmp5CwNpTzdiCfLVwdxUI6gU/rW5Q+QSD?=
 =?us-ascii?Q?lKpOw4vjju3rFvSqXf3SXeUh/LhilN01/d+qkAfUx0EvKHeGe15w1SuWIjxv?=
 =?us-ascii?Q?QajTZYnpe64n20v04IbhTMDS/LMcWIGX5TxrtcCUmxAHzmnTV8Maow/1VQ+h?=
 =?us-ascii?Q?MNTAgffpWImuf3ETybYkjWam4k7dhH/iWt9QpO+wH8WG7JzfkjPl7cZdZaI0?=
 =?us-ascii?Q?L1LBJhP2Xy83vFsnnBWrNw8KeVozAfq4H4CqGpa0jUxkqjnH6W/w2zCsgyn5?=
 =?us-ascii?Q?es0Ij21jOIyqlipN/ETgHIktNpXPzAWJVSXtdqwfksfmoiUQKh3SEbOL4/N0?=
 =?us-ascii?Q?3KK08hs57zU5hCWAdN+efuDmMs/722QY4/YtEfGPM3amvYYoIzA5ICtL0Yit?=
 =?us-ascii?Q?fuvfMOUiKmkST4HtmSD+zg3yO4PZvwNc4j8+hcYw23RlRUANByvPbI6RyDFx?=
 =?us-ascii?Q?aldt+uDDcBvCpV7RexCCkWkTHS3UfkoX2rqaMXC/5poBh6S3C+NCk7K/o43y?=
 =?us-ascii?Q?W3KzTuXxMbqdR0jn6F8iGABjyt6nL9uGbYDJ3zLxj7w9kisMhWiqiFcmKYK5?=
 =?us-ascii?Q?n6rHIzQaDoZzWaDQqqvi/Xh+l4+rVwL7EDctoGXR/PcAm9MBzrpf6JTpWH21?=
 =?us-ascii?Q?sTdke6wQsa0DTfaMdIg11W+pgTq+m7w/Ni59pP4O4XrLVxPIME/qlwWvsk7W?=
 =?us-ascii?Q?q8rq0a7lqDLlgjbwv7l5Q8vU9IlP/y+waetBAe5lEk09pOHxa9Cqd5AtHBr2?=
 =?us-ascii?Q?kmOIFEthVv+sIbCoQRHsZdxkLUjWsmUuAuTdi3k5Ct63WvBQyMSWj43TB/5p?=
 =?us-ascii?Q?Byb/b2DsRCCK5Lvmh8s2tVqMl6HKx3RP7u3AQmvaGnBccURavHK6HTXUzAeP?=
 =?us-ascii?Q?DzYC2zwl0VVo9QH030bl/ppckx6Md0Y2X7ZGqRQkt/eH3js9ioXkFdj7dOxr?=
 =?us-ascii?Q?oyBJ78jDSmpALa5+UR7qHb5S25Q4PgmpAjDNVnmUPFwJ1OXTw6sLSVwWqV7t?=
 =?us-ascii?Q?nde11VyJXs3xxoKoV2nZRMzs?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4b4b54d-4c7c-41a9-d81d-08d953389905
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2021 09:01:20.2525
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RXN0rPyfpfP2X2+6zRQ3ToTSkY++E0+7Vn/TrPiX9+k/Xjd8cnRuN8aOwF99ZcmRzO63Y3Oy1wvCjjOuo8TZSl9+/KTQ+PSkoIEraIH5tn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1485
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10060 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 suspectscore=0
 malwarescore=0 spamscore=0 mlxlogscore=793 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2107300054
X-Proofpoint-GUID: 8yhbn7ynu11gXeAqSK2Nzbi57_Wl-bMa
X-Proofpoint-ORIG-GUID: 8yhbn7ynu11gXeAqSK2Nzbi57_Wl-bMa
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=YJGvWVHx;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=mOUy3wHP;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=B1zIBYgr;       arc=pass
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

On Fri, Jul 30, 2021 at 10:38:45AM +0200, David Sterba wrote:
> Then is explicit memset the only reliable way accross all compiler
> flavors and supported versions?
> 

The = { } initializer works.  It's only when you start partially
initializing the struct that it doesn't initialize holes.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730090054.GX1931%40kadam.
