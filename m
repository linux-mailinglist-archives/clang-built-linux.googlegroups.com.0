Return-Path: <clang-built-linux+bncBCN77QHK3UIBB7NZ5OCAMGQETZSNMNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC2837AF6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 21:37:34 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id b7-20020a056e020487b02901bb31b56af8sf670209ils.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 12:37:34 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1620761853; cv=pass;
        d=google.com; s=arc-20160816;
        b=IEzrut65S1T5IZ61oljPxRXOZv6oMm9Amg2c7lTgd8fUxW6kFDBlwKWrNSGCJCX99Q
         i7Wu6VT5DHTNyW70/DXuIDhtz1DrhsMUYe1XjSQJNx5LJUa5u//wDUkgrlsbeUxVLDkG
         1Ho7qpBtV4IUddsHKQ9FBKUlQRD8Th2Mh/GmsQibQL3Sj+2Ho8dk4hJcnserzYI7UP1g
         QsuqXXHLrOYR5ub5vHkPt4PYUQUCLJ6l9DSFSw9dhZMHI9F7IzFuAjlwU6YyiguMy8Cd
         GQEBnHdLm2q6o0tX3c3tkwc0RjeS55J5z7DIj2ZN3m6oSMi7cWw7CR3cNqxlsr6EL5F2
         la9g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=l3thE4uTUQ6znUp+pScXKH4ha4YRoVeEak4CwaO+bVI=;
        b=KoFKuPFRrEV5srrv8RDWCWVMxHLqEwHbwobWnx91N2jwgPd4G2u1eY6tHmrtmg1iCC
         nbT/CRMirU+32YAyu6A7EE8nmXLplSFl7MjOVAAYknMvhQPoWycxoRHPfObpT0v/aL0I
         6eE2HlmEGGw/A8TILq68LvL2jmwRdp2se693Y6prnEPFFnNzjc1gpEqapgdK9lpLiUfJ
         nr/aw/5pSYq9M3c9MX6LkBFILKgWMXHmj4HeYWe+PPf+PqoWfEnVuBQOqWj8NXzYe03V
         hHBYUuLK3kpIa06X7Jd6cVsK3H0mXf4sd70hcnIzyUIbuU5sQh8JsxwhPKZmgFuhJJoU
         zd3Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BT2fEmWH;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.49 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l3thE4uTUQ6znUp+pScXKH4ha4YRoVeEak4CwaO+bVI=;
        b=HhVD+m5S1/rtLdLGXqRxgS4jHD//x1Blp0dflHsqb7vo//V+lQg2rov8+ATGjODlzG
         ejlc+5uwhGWQ/sd3mu5pWDoCoOvfrp4vzrmLWo8WgGNyJnWU6pEEVxkKvhoOIw/ztJNi
         a3mkCvm+EuOLcjjHHmkp0wIiafh9ZsrkmPstMQRsfwvSe5d4N03RO2HhczVlOhYDeASi
         ry8Cp0k5KlJv6crUUJ2BSCDCKMriQ1+moWKDU+zcElFDM73+xu4EDYU2WFVu0eK+bp+O
         j167+aIzEsaiGayoMpyyNw8eIArp8yUtJigzjNCMQZ5bs+vDAG8TKGuLO6uEOcQkRHCo
         4l1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l3thE4uTUQ6znUp+pScXKH4ha4YRoVeEak4CwaO+bVI=;
        b=oTHnKYEJRS4uO5RRaBC5wdT2CgZrrAvOSdUyjNHI8ZVtDivTjco7RnoXtIfHNCsVzb
         48s8gffyI5QFwazDM3FD3ZpbJPHGL+8zS82iQRkP4OrD7bXlGZV0vGz13hKi7XhWlWGr
         1/mWnV39jCQtMFY/Bubtd06iXtSixrkVNhP1ojvSQZcPQ+MCzlFGFW9Vbp42z074QRgv
         MP+d1jqlkEQSYaevj98IvsIVsMWLML5S3DGtb/Ad8kC4uy7K05K5vRFk3x4wW6/2j1UQ
         WtkTc9X89PBmGsq/D2QZR60rrajjhQ+f9oxKXZqDQSG9CwlURSng31pl2ADbKgG8NOLU
         hjIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331J/xF82CmkIfjXma01ft+0gp9v8ib1D+azg6whjSEOOHrq8Pk
	Yo8q7/8w5QMvcZT9vaC7sXE=
X-Google-Smtp-Source: ABdhPJxblHjWN3NzvYT/hbETDoB4NJrMIpw4waoZVUlEHuyyl9DOHeaROdTk5IfaWXKH4EShTJuDvA==
X-Received: by 2002:a92:d9c2:: with SMTP id n2mr27631415ilq.284.1620761853382;
        Tue, 11 May 2021 12:37:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:240c:: with SMTP id z12ls2463231jat.0.gmail; Tue,
 11 May 2021 12:37:32 -0700 (PDT)
X-Received: by 2002:a02:a182:: with SMTP id n2mr27986727jah.29.1620761852704;
        Tue, 11 May 2021 12:37:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620761852; cv=pass;
        d=google.com; s=arc-20160816;
        b=XlMKOgaMt9SIUgg5zI/dXEWBxYIaeHiSse1QNvj2s1a8qGO1GHms8THJfeyfmf56QC
         wEzCmdUGIFSflWblGA/juhChpbV6l3WzVfIP3r888Kwp/RZfjzw8H+fIXXfaFzl9V2FI
         xe6rzU4sc8AW/hCxiUIuvPWgdEzM18+oil5vcKal0OtkMQBy4kPH4AmvFpBYvalTcfq5
         5sVvrnov/LkUFnuGpfzKLggZMEvEY/KujaBbQzqUVILG3acaW2kKjTx4rEgQArEAqExZ
         fHTqEz6dscTXXcxHLu9u4Q6mXcP8ZmJoq8N/ygNw8WUV/5UHiB3QbXI2BV0E1PxmF9jP
         p2vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pSYTnI5VXjj9O5i2LWPulRcWKH+pF0BuHQzI+xVQ27s=;
        b=OgSSEuVH6BtHGjKXZ1KTLtkKUCoQ6RAg7T+aVZPrcCJUlAwy1R3Wc2MiTULHsllE8a
         K8q98gEG8PJL8q9k+T8hK5K0Dc5Jvq6X+JtjrZ8wuECtgVgtdAKwPwmMLY3lNkiWnPSU
         bCh8koSW3UVqK4QEGik5dFv1Ztiw0x4l9z5wRNQ4v2KZR6znH1bQM5qfmgehOiCij47Q
         JVuTx3J3pfMF9wooy9ZMD+6D3sOeOOKdPtJp66qajhYn8pZto/ZWh+weXMhsG1+s1k8g
         667k8BO2rCf0BsqRqIrJ60THUpRdIqiCrwrIBS0pyFeukt2xejH858ouNyk93RXyQMjW
         uSyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BT2fEmWH;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.49 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2049.outbound.protection.outlook.com. [40.107.94.49])
        by gmr-mx.google.com with ESMTPS id h2si269699ila.4.2021.05.11.12.37.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 12:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.94.49 as permitted sender) client-ip=40.107.94.49;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hkXaL+2haK44/Axz+4vWAGlvUliDEWDiWRaBXq0De0cFDkeuSU5j6B29EjcNX0vSqhwf8RQ2NR5CmDyUNHkW4mdo3CFwDZG92V/zHtF5WnRG8aZAC7h7O9CpGtaDbvqrgiDbjXJu/Eq7y7JVQS52AS3aay3+fFGoPuoi3E27Q+tZGsOrUMINFASLkh176xrvngjYwvRNUh0ZKVm48TJdUZkl7H7h0p23IYPvd7wIUfA2mB852Jfwo4l+pJZ4ULYQ6yMg6QemMSx0fEa/vwx+IHGRGli3PHivKpXWkYTfbe0zunZOXOZXO4V4fmE81Nl0kqdFeGU12v/4laA0tlOHWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pSYTnI5VXjj9O5i2LWPulRcWKH+pF0BuHQzI+xVQ27s=;
 b=EkGEJ+MvWPOO+kdDE1EVi4ggNTkRjLNE8oSuDUKTWmvzNkztfX3Y1s/OwEmnfzT6ix7Z5njwI1l/XqKbIcO79CHE+Dm1mlZEglrpRzftxSeT7eJDwbgRmww7tWI2xrZhAftJ8wB1tESWXUpL77rHxiFd6iWa+OvwOGU1ZA2tnR8OEPHktTn4i6SwpNYNqz5ui+dAwwU7oss0VxOA40ltpv4oiUmkKnqXXignvZlpPFWaJsEyNI5+B0hf7+FO3RSB0YFBuAuQoY0KQISdSNmeuCroJrH7pIu7A5ja6HdadlsLDaczDyrNxdl5UcNyi2/PZgVjenQ6b6VUKwzW4735pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM6PR12MB3835.namprd12.prod.outlook.com (2603:10b6:5:1c7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.24; Tue, 11 May
 2021 19:37:31 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::ddb4:2cbb:4589:f039]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::ddb4:2cbb:4589:f039%4]) with mapi id 15.20.4108.031; Tue, 11 May 2021
 19:37:31 +0000
Date: Tue, 11 May 2021 16:37:29 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: leon@kernel.org, dledford@redhat.com, nathan@kernel.org,
	ndesaulniers@google.com, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] RDMA/mlx5: Remove redundant assignment to ret
Message-ID: <20210511193729.GC1316147@nvidia.com>
References: <1620296001-120406-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1620296001-120406-1-git-send-email-yang.lee@linux.alibaba.com>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: MN2PR16CA0002.namprd16.prod.outlook.com
 (2603:10b6:208:134::15) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by MN2PR16CA0002.namprd16.prod.outlook.com (2603:10b6:208:134::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend Transport; Tue, 11 May 2021 19:37:30 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1lgYC9-005WPt-It; Tue, 11 May 2021 16:37:29 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c3e0664-2a02-4e91-8b46-08d914b4377f
X-MS-TrafficTypeDiagnostic: DM6PR12MB3835:
X-Microsoft-Antispam-PRVS: <DM6PR12MB383589A28ECACB0B9E19A2F4C2539@DM6PR12MB3835.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PZ2pIurdfGUdwCpuXZE8b8lHDR+TryQIkaDUI5BFK2x8Vk41umhnU9oAYK7w/1VHi+WEHC8soPIAqbplPVcbyTN5Z2fkIFI7EfRWjvxWR7TOTxI5XY+br+AXKvQOesrz3roi/fYtF8SnzYkfMJlzzMBBUB+sBU9FWys6gywOtEqDujWXs9aXjH5LpU29EbQu1Q/7lbk9ytak6pQ+MNwWag7+OpRR/H/snKNy4OPLqJ7WYZGvG1ykJ7jCrFi9H7CudNgLiBFEZHhTbg8tpnDyQAYZC1eNQBIrIVvVj5AJgd4eldSaxj6ZWe/lktYmT60vgnYfkFzNifL2q71zXW7yoNWiF+Zkq15gAeMMwlnzZ27euNOjcbzvhXwgv+HMH+KdFa9rcD4p/vb/p/j5RJGmeRqP4zFTYqIf0+UCRdZBayiZWWpYwSPqaqXaJTKVviy/5nq+fDwio9Jm/pVn4GWClYnV7jxaU1TOub4zJiTRuv9+4jYkOYaqbTM5aIyuj2kk7H2vPCPrTFCdmeHAr9FhVYF/QJH2TWwJ0ZFZZ/alotdr4IFFzrQ2Z4wWT/kKjtai4gJxsg+MceGYXklJwsPybgVFBLxeXmH79n4oIN30q9g=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3834.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(9746002)(9786002)(4326008)(66476007)(5660300002)(4744005)(86362001)(66556008)(66946007)(33656002)(8936002)(83380400001)(316002)(426003)(1076003)(6916009)(2906002)(8676002)(38100700002)(36756003)(186003)(26005)(478600001)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?80A8bmkmoMs6VuTXCbKw5yRec4clVeRuDCWPBMR9/2hWM4Gr+upmysy1k2ck?=
 =?us-ascii?Q?cr9oQnGRD8+OgRnf+EjSIqBgNwPmzYaGsxd91b/kp3nPA9VgSkNZuni6JlIO?=
 =?us-ascii?Q?DJyAA1q3KucSrJQhP+HXBLaL4iq1rMztikaafbPWwjRL8buFKjk0viIX5AN6?=
 =?us-ascii?Q?FePbRNQ4In6a6w/TirL3FXjJgqUqO5piY5TN1MUy7GDuR2ytCkviGFzqnIv4?=
 =?us-ascii?Q?dLnudggCZvrGWy4fscppE66TWscSaidFUle3nXT/3P8Gw2qqWXeCOKJ+w5U0?=
 =?us-ascii?Q?gb55QPqiLJxpStcRpU4HrKYI1UzwaNRE5JFVUqxHN1ku9cvKHsn32s4bk6ey?=
 =?us-ascii?Q?j5airZQjKqARXlxQd77NN3YtobodMT5zz4W1pZxeVXxfeaHWY7ihCoborj04?=
 =?us-ascii?Q?aMfaY33KeyLisbk0Exw7bHRavhbt2CYc6KpxD2oHdfgvWc1taO6o4k1xikbo?=
 =?us-ascii?Q?AQ0yJwzZvriA6VoRgWrqMlb4UbXhvg56f8uyqkOWfW2TPg7OmWyft5NlJQ/6?=
 =?us-ascii?Q?HKdGuHStvOx3uB2u6lB7U5YPEqP0WlQMSHG3ZIreTFkns4wGXUWSW2+jMcAO?=
 =?us-ascii?Q?K9nRQOwAZpZ6jMfHmXU40vvE+Oy2kEfACu/dQSHGAxgQawZZj5yFPU05xEvt?=
 =?us-ascii?Q?I0PvpKpRIvxiY4pA9DJwwRMOsljssKAlsq3XL8pi/8nrx1kOLBcxwswSKHVJ?=
 =?us-ascii?Q?QVXhs9hsRkwKnkdiDPd4GcX9o5y8ilaPlyhWBPSJ0VkzZN+PQNW7BulHpMYo?=
 =?us-ascii?Q?BFefpVA1fYTh+D6R+G74h8LPSSrKy5OJwpqk1L/Gea/0iVY2FIxz4UfQGXay?=
 =?us-ascii?Q?EjEwHVCC59wUJ60JRyTAr9StS/4GpkUZxWcePG+yHJayYk+MZRx6RiYWNRb2?=
 =?us-ascii?Q?mRu7uED6YmRu4NfLfFSNn+m2nvmmn13tsCKopHrJSjFwUa/Rm/0g+9QN9Spy?=
 =?us-ascii?Q?rtvrEKLEfsQdmoyHy+M0IMmU6maum0PRvCYfb1h4yd/3PNhQYx4lrl9Ydc08?=
 =?us-ascii?Q?n0BwPfAimEk4ZDmbZazcaINAuMZx6ZZBrvP5Mv2xMCgWk03VBX81VJOdf2A1?=
 =?us-ascii?Q?uxtknG7tmSz9n9f3USgVo+lnyh96gzMHYFXLFQ88yq2KmQN5RXBHBIvccy6j?=
 =?us-ascii?Q?jS8fDOKGxETkGvog5qLIzyvRNAMoCZzOid/FJCapcU5ZOvOM1O0Q833A98PI?=
 =?us-ascii?Q?sR0V9XSn1Ri+8nsjAfr9fuc5E7MA9PAfroJ0N4X1SFB5UCPzhc4xfZxYaaIJ?=
 =?us-ascii?Q?KlgxHqyxxvrHsw+HmoOMLtE/48SxXbyaqlb8a6oqq9FKM12onwnIuZiv19Nl?=
 =?us-ascii?Q?UFZkSUPpN9Y4zaMCr5nhtqWS?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c3e0664-2a02-4e91-8b46-08d914b4377f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3834.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2021 19:37:30.9159
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g7RJvd1KtQxPmThzDkgi6VXunZbZhkplRRQOXRlKH35BbrVkswYOULB/jdJsPJHg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3835
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=BT2fEmWH;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.94.49 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Thu, May 06, 2021 at 06:13:21PM +0800, Yang Li wrote:
> Variable 'ret' is set to the rerurn value of function
> mlx5_mr_cache_alloc() but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed
> 
> Clean up the following clang-analyzer warning:
> 
> drivers/infiniband/hw/mlx5/odp.c:421:2: warning: Value stored to 'ret'
> is never read [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/infiniband/hw/mlx5/odp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-next, thanks

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511193729.GC1316147%40nvidia.com.
