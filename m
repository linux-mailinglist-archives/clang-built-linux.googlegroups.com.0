Return-Path: <clang-built-linux+bncBCN77QHK3UIBB76BQOBQMGQEYQKYEEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A40B334BEB1
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Mar 2021 22:03:12 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id b3sf7353994ooj.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Mar 2021 13:03:12 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616961791; cv=pass;
        d=google.com; s=arc-20160816;
        b=XXCGxAoaVJaEptYShK//1rrqnKjFtl0SQkn8nnWYRBZW4zRZ7r1eoB24UcsNRHtEz6
         yT2wKI4ZsJwuDi9v0YdB5V3UJ7pnV7jTEkXAtFtYVbKiX4ju2A7wk00umGIHSqHB2TbI
         oR2LvraIVuUerSyMhmqROT4zh7KqRfirUEIm5rki6K302t83abuyAH3Q4iaWz4Zg2Oa7
         PwTw3R2VznXJdzw7IIqwg6uaEnhNW3dG5v0O3piRl46JxaVu8ZenG6Ua5MnwxuwWl/X2
         7joAhVyMDoN4P0l6ghNrDM+vtNwRh2KRYwGDMnZcXF6b5Ed+Y556Bmgt8T6hCLGtSk8z
         Pszw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=Wgl6rQd2ZTBmnTFDBQVX3PgkgpFq+2pUl/odnBhcon0=;
        b=QU7637540BeoilbYThcs/Yz+3jdMG6be7cWfu46WytkxtpqYWhl0hnqntoT97kX45J
         FqqLJF7KIF8qf/ipBRWY8Xzcr05OJV0EfQZ90H04UeHh+KlSVeU8XOepvtrpwHWmujQh
         vwtkTg5d5pCUE8s/cou+feQK4WXihLv+2hIWxpEwJqYu2qYecvTBFs2IvAentAbUQESk
         +Zb04Acf+wA/fiH391joXgWeL13hiB+MdUyxWpFCZ1O+ml/kMqCurQ75t5JizeWaWkIj
         PJZai9HF96KogZNlmBq+9qjdL5gF6uhmV5GL40nPE3fucod10YzPt9DCCNKSgpsXVmZt
         qwbQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=NemvfLR4;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.244.66 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wgl6rQd2ZTBmnTFDBQVX3PgkgpFq+2pUl/odnBhcon0=;
        b=kL7wsGWxv4Ngno/ngItFAXJReqr48/MNDA2vC8z9dekBuq0ARu5LsmTPcjhiOgJkb9
         FsZzJ/SgYz6sX8mFg/1g4oY45MiyPa+tkf5+FoAEWr9rVyJqwmXyfAq2+AqrJCLIYIhN
         96UF+ue2pSGflfdjhysY5ihqaPhpjjlmii0PI8MnCF90EygYjhx5K/g/Bmk/xKzU/ZDh
         uu4eNWoiOH9FgW7k4uOWHqsYPXyFitQomJdR9MFXi41PMlf+hbq1B3EMTMEVcV4iY4Dw
         L68+mImGQw9zbOLkPIBi48ZfJLHEtf4CY/KzqiIOJG+BMCYKQDkSapgVilbhG38GI3n3
         tndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wgl6rQd2ZTBmnTFDBQVX3PgkgpFq+2pUl/odnBhcon0=;
        b=mrkIXdyhjv9dABZ+0QwM8T8JR9i5I833WdXqJptHigb9nC6LIztu/7JHKAeuPNkBfV
         cKjd92ZqGkqnoqke5a295m9JqBfp2Iuhv2cmZFgHLtcnecWmhwCq4TVo3OP61/954YAU
         eh6VGkt9qOgKRCj8A4QWtWEYGGzae8gVyrVUiMgkA/TSqJatQfE5TUVqvW5TK7WS5DT4
         ODEVVpLJfv8d7bjipqDj0dO9z00rSFqHMArjm3FeDhqTz8Ba1cHIG8rLummnF/gzIC9a
         nwLv8BFEDZqBG4qagkjVz0qpMlx7317Xk6QwXO6/2YThivOpCNj7mCNxK9zLQV8hZ9kC
         y21A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AEL5/g94HFS21hi5t05uEziTnWYfmuHJIkTisYb2h71ASLT27
	DfuySOIIrwtGZ4sIRQnfRSU=
X-Google-Smtp-Source: ABdhPJxg2gNfsVmj1e9gKIEFkF3BboVSqH0zq7wbVBCBihQXQ0Z4BX2F0gBiaWPtkq9ohvUoWffl8g==
X-Received: by 2002:aca:2416:: with SMTP id n22mr17017748oic.161.1616961791263;
        Sun, 28 Mar 2021 13:03:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls3350448oiw.4.gmail; Sun, 28
 Mar 2021 13:03:10 -0700 (PDT)
X-Received: by 2002:aca:1b01:: with SMTP id b1mr16062170oib.177.1616961790919;
        Sun, 28 Mar 2021 13:03:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616961790; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1WJiGYr9e+8/bvjngqaNMf0LZ2s7qpSAFAn3AGoenqDgIjTI0uQct4Qwl0R7kZzYh
         CmfYv8wBO64CRkGSzPdhf7n9Zl+OkNV7g4d2hCiPCHgIrkF3w6hT1QXZG3vsLXAI3XbS
         C7VBlt5eUvYDo5gFyd2bMwVinScfOvl4wHj+1JZpBIizOnP78xgfrygwfHl/0zkJ/UK+
         ASBHTlptxX9Y3PXWgi7mUlwTz3BWIFFBeMs4Auwot34S6p7LOtbU76ml8yk7ig3nckUG
         4oVQJiqnAEGH1IGiPYxGZhcKcEHUKnm3ZvsNFd8/0da02/4fO5cAnZW9WsNYVlL7zI3I
         fbEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XBSvbeO87KkJDBfgfUbGPAMpdJZUOX6r5iS42KM8ZEc=;
        b=Y+tRaSS3bLFIPBEiB7LjkV1NDNKwkWSbEGOnU4ApHRV6Lnpmgt7Edrcv7BdyzCXSQL
         DowDXmn3Whgr2dnT2DDsBq1KYhz1NyQypmq7d+mRvI4HT5JcgDleXccLfX+ICnx6qR0g
         4nNoXD0uYPIfkV0dbg6E4Y8/MmMP3NcFivW8FCu1HccO0gF0ApdS0TOzh88AkMGqIWJl
         XKtrRa2GN7EY4icS5Jt762Jj4WPNJFoVvlORYvblmGKYI4y4t5P5FLHgTqx3a3XNkBVa
         bjl7slzI+f9mOvW5+rzczrQ/knNUpL6W6XdGuAKZJYELxWQr0ErdFmNTfXw1eIQQ0MW6
         xXeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=NemvfLR4;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.244.66 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2066.outbound.protection.outlook.com. [40.107.244.66])
        by gmr-mx.google.com with ESMTPS id y26si1040790ooy.1.2021.03.28.13.03.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Mar 2021 13:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.244.66 as permitted sender) client-ip=40.107.244.66;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3yRUFfxwKslS3Z3Gqx/YUOh9xy0TMXnnK42FKOHpwLRND2oOwTVIzAUUM+0pUb3/8UyejVJ9STwgQYG3W8x2bqROUz0jY6ZybjmH8kP6HqDllWvyp7Vm/3q8o+Y0CDmzrDa7wjgDQGp22f5QkkrlGhXfN4NAW91dwWjC3MWSrgeCY3DNNOwGwQLWUWE8FPFsLMXbdRNktHP+Dj4hARrwDQG4rfH780UfPGydwcaRU6JB+9pbafjtrc7dHaH49piGAztIOF0rHT1yfn4YMTeATO6KHlinIho2Ltr7iIr3Ne4QBMxMQMLXDpgIKluUL6GmxEyTGSdDco0298l5QRyxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XBSvbeO87KkJDBfgfUbGPAMpdJZUOX6r5iS42KM8ZEc=;
 b=WlL5o2A6G1WKlBp+dwFN4PBz1tmQ32+4fQO0nahF7tgVGh9G/55ogoXIfUqmGMnS2Qcni9u8GxSQ6hqqNXh9uVNSwq0zSgyZr1FnsiPzW7OUqSOy7GraD7FYutmd4jEhR98GP/FOvl4vU/bhYCSFT60H6AlG7jCV67PYPa3xWPN663c/ARuTq19T31Nqc0lBMVodxnygQTNHio1Ivwn3vY0m/4Fn77s4Wrmh2FsGWGg+OrOp0t76BkFXfLgrH8Zou4Mb6ofU4nk7f6G7B2uUZw/jEQNh89Ph8UrKmh7i56wZeNQyLJb5FPbsN+pR1Ooi+WMviD7o5LrQKC6qPT3gwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM5PR12MB1884.namprd12.prod.outlook.com (2603:10b6:3:10d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Sun, 28 Mar
 2021 20:03:09 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::1c62:7fa3:617b:ab87]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::1c62:7fa3:617b:ab87%6]) with mapi id 15.20.3977.033; Sun, 28 Mar 2021
 20:03:09 +0000
Date: Sun, 28 Mar 2021 16:57:18 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Alex Williamson <alex.williamson@redhat.com>,
	Eric Auger <eric.auger@redhat.com>
Subject: Re: drivers/vfio/pci/vfio_pci_nvlink2.c:101:10: error: implicit
 declaration of function 'mm_iommu_put'
Message-ID: <20210328195718.GX2356281@nvidia.com>
References: <202103280335.BK1WDXLW-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103280335.BK1WDXLW-lkp@intel.com>
X-Originating-IP: [142.162.115.133]
X-ClientProxiedBy: BL0PR02CA0080.namprd02.prod.outlook.com
 (2603:10b6:208:51::21) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (142.162.115.133) by BL0PR02CA0080.namprd02.prod.outlook.com (2603:10b6:208:51::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24 via Frontend Transport; Sun, 28 Mar 2021 20:03:09 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1lQbXC-004fyN-JG; Sun, 28 Mar 2021 16:57:18 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3255a74b-f322-45b3-a76f-08d8f2248241
X-MS-TrafficTypeDiagnostic: DM5PR12MB1884:
X-Microsoft-Antispam-PRVS: <DM5PR12MB18846191458B1BE3F56F02E7C27F9@DM5PR12MB1884.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:411;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qUA5ontXEkNLxrYLv0d7YVvOTRdtS0DMErhEyzNBBZWJSeeywUhEDaJXUI/wtMpo9dgZWDjiFdnmoQ8Y2h/2V/l6rI7iGfiu7TGZkPi0F3pOCoXbDbZjsexGXLklmZH5ixi2MZVsgmB6ZtoTKxTaOVlPVCFf/zfdf/bYiSD/vxW7Vs9UOVh+Gj9WzmySlm6zJHvraciL+hhaKjsUTVq6hqth3j5DnJO4gUcXhY9Qwm0JBmIGEYX4Gyqo48kvqWycIENOu5HjuUUig17Vg3Z7X0WCvDHy/Q+tieR69+Gagi+zJ8AytXSgXIyAPu4aH/G+zFnNLL+/boD76laoHWfpDLs1iSzLH7xBvxGs5wIUDszizqfSzQwHQ7MMEnEb708svpqSsvK6wTQsxnXcx8y76ILjsDTKXLCxN9r+jPa+xQQ2XswibYyAvLyu/v6iwltzSLfG2nPONRTVpk1H71T30UKj23ArmlS43Bu43y8RntaJmoXaubw1pUVTzsILPimGdy0P9atfGM4juiGSaPr0TIDmunUOBaLc/jYcESYjzRDUgn9jYLm2UD/pYiRFRb5FMqyh16/bxFf4InTaqzHXHIOYftFUtGJI0xk/feAxNzLo4XuVsia0SzX8mEUYWQbAZTwy1qR9PYbtQo57IE5R3uNBmjcV2h2y91k+7FxpC+KsGiL5MJ8v8PdHVc6W9rS2ZiMew+sUPC26zfrDEXBMONVahm6YBXgBaVDXx4fUE65U2hQdTUOF+3mhaGiHL60j
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3834.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(316002)(54906003)(1076003)(5660300002)(26005)(36756003)(8676002)(66476007)(33656002)(66946007)(38100700001)(86362001)(66556008)(4326008)(966005)(2906002)(186003)(6916009)(9746002)(9786002)(2616005)(478600001)(8936002)(426003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?MUdK1z3M2/DiUT5rFOFAFwRcaLOZ+6Onp3HXr58ivyQ7SWY7tCuSiKPmksY0?=
 =?us-ascii?Q?36+8yt+AHMlTdmwsAs69qm/Bb12tobrUoVodWRHwTJ6rzyd0+p8BCCyysixt?=
 =?us-ascii?Q?eBMBUXFItAeDuI+OvUhK0J5jBz3aClyPGcmvPTPT97pqE72mclcd/jc8t9WB?=
 =?us-ascii?Q?OBOyv1qhbaOKDGtlOxjgBJJ3YrBnoeszBdMinWvH6XHr518T34BbM2ZjQMVM?=
 =?us-ascii?Q?t/eoUtu6d2dfB8lrcM2Wm9ltmDK3s1wOwS9psWvYtxv3mO/PCtLzgtjBV8Z+?=
 =?us-ascii?Q?EXce5jeijoLIEh7v4zYt2aLp9VrxRf6sF8crBXkd1hdUWElaOYTrefcF0tkV?=
 =?us-ascii?Q?v0I3E6kt2t/aM80hdHFRnHO9BuHmqnClkkXuIJkvCAcuFrXnmA0Nk5WWZEVb?=
 =?us-ascii?Q?/TmWxH+YfxzY96o/0z/cO9wYPrp76ZTbuyJU4KyNCr0sl/8Qqm14axTiBLKP?=
 =?us-ascii?Q?/cQHVteaPR/FJwBh2iT8q1GTjmeCWFUYrdLLGIWeryk9HhwGEnTXNcBapmW4?=
 =?us-ascii?Q?kujo3NhQPndSnbLi8Srmu83BAZ6w156xlfYxkNPS70feOSKi7K3Ee0yDavBx?=
 =?us-ascii?Q?IyARCRlOAmvWo22eT5K8PEJQpQUCIrSZxVQqNDve55ftilXaofaBtQSOB/26?=
 =?us-ascii?Q?4gkQNQcP/nqnvs0T7bECyROsDwWYfdpEHV8e/gPrvKljYKPeWyAVOU162Tri?=
 =?us-ascii?Q?lDC/omRUlfo1qpiyhzGxK0OGV+N11sUIlY0STEnXeh6sdgWC4wLPFPb4+TEQ?=
 =?us-ascii?Q?YAS4sdmw7Oigyz+yp8SBVDyJsyEtuHnMcHBgqGGv1lU2TEcT92yh3O0B0G2y?=
 =?us-ascii?Q?zOKpkp6t3CnjX+CH/PXS0basoSYp9RUr2ABv5rXVKNoPAx3KYNaNaYv6M5fE?=
 =?us-ascii?Q?NhlrkdT2x1PZEWsYMpv2XQEQ02FLdzkfvpzpeyuzjolR2zQhnoQ7Fta6GIFI?=
 =?us-ascii?Q?L0VO/yn9KyCiVdDA1fS8I7TJlGzyyFaWuePMu49zZl1wEmTha7rDEah29jvk?=
 =?us-ascii?Q?Ty+SRNf9JuTfK5LmshuA3VvvUwMkuwbqDZcgek8m8Qu8Y2dkMmx5zBKt1ThE?=
 =?us-ascii?Q?UCjFC1H1lw+It78ZNwUbFErxPPlKz8bpoM2ukRy0dXngCeIAsgZfAzMNcFXc?=
 =?us-ascii?Q?2nR+wO42yT/MiU9qoAJXWr17UMoBR5Uc0tqEIkifsXceJlh56XHgCG2F9Wdo?=
 =?us-ascii?Q?6EetkwdrMS2383GeTKuYe0bMxEWqO1iNPhOFWasTFC6HqmEAc0Qw9UO7NCjf?=
 =?us-ascii?Q?S+DlE5lmy+VoGU0eXiRrPJqh0XJoE9fYK5pDVvfof7ndcsVAtXL9/7u2iqgU?=
 =?us-ascii?Q?OalC0Yqdyx9x6gq26uLPq+y0?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3255a74b-f322-45b3-a76f-08d8f2248241
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3834.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2021 20:03:09.2249
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /2RaL+f8rzlZ4Gib8RKPbmN99G7w8vXeJCUk4wj3NkGzHy0SZOc5YZqzVqxz/Yug
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1884
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=NemvfLR4;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.244.66 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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

On Sun, Mar 28, 2021 at 03:06:40AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   0f4498cef9f5cd18d7c6639a2a902ec1edc5be4e
> commit: 179209fa12709a3df8888c323b37315da2683c24 vfio: IOMMU_API should be selected
> date:   11 days ago
> config: powerpc64-randconfig-r031-20210328 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=179209fa12709a3df8888c323b37315da2683c24
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 179209fa12709a3df8888c323b37315da2683c24
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/vfio/pci/vfio_pci_nvlink2.c:101:10: error: implicit declaration of function 'mm_iommu_put' [-Werror,-Wimplicit-function-declaration]
>                            ret = mm_iommu_put(data->mm, data->mem);
>                                  ^
>    drivers/vfio/pci/vfio_pci_nvlink2.c:101:10: note: did you mean 'mm_iommu_init'?
>    arch/powerpc/include/asm/mmu_context.h:57:20: note: 'mm_iommu_init' declared here
>    static inline void mm_iommu_init(struct mm_struct *mm) { }
>                       ^
> >> drivers/vfio/pci/vfio_pci_nvlink2.c:165:14: error: implicit declaration of function 'mm_iommu_newdev' [-Werror,-Wimplicit-function-declaration]
>            ret = (int) mm_iommu_newdev(data->mm, data->useraddr,
>                        ^
>    2 errors generated.

This is because of a missing CONFIG_SPAPR_TCE_IOMMU combined
incomplete function stubbing in arch/powerpc/include/asm/mmu_context.h

I'll send a patch to 'add && SPAPR_TCE_IOMMU' to 'config VFIO_PCI_NVLINK2'

(it is interesting we are seeing these now as these patches sat on my
github which is linked to 0-day too for quite a long time)

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210328195718.GX2356281%40nvidia.com.
