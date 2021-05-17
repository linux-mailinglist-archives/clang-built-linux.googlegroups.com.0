Return-Path: <clang-built-linux+bncBCN77QHK3UIBBMF4RKCQMGQEHUF7H3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 516A8383A5A
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 18:47:46 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 1-20020a6306010000b0290215c617f0f8sf4757005pgg.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 09:47:46 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1621270065; cv=pass;
        d=google.com; s=arc-20160816;
        b=zI1/9rfPaFkIdpBrIJl87jyNUb50zK19afucsDBNa0vdNyhDM2No5JJP7RcAZCvw1K
         wEuYz4KRDn5tPDYaXbs8bQYruw/m7LiVLqQ/t41ydOIKsKFMQZEagZ4JG01sia+KU6Pz
         u4o8YVH0CVTf8l6wTOlHsR4RdJPs1W3yQyI8/smakaCs8RRzew98opXf3IezBxDdS2eZ
         4fSFlLmWq8AeoF+kLwnfSM/o+veHlUOV2E5vKvDsJLwjsTwwLXbPoATSjDWZ8j7qSmXM
         4Cf+DYULt2R7lRWYn7GnypjrQI+NiyEaMVM8w4BZKE5E4x7W7yYXlcBrx3twigx4JhU2
         5Gqg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=fRQnCcG+eajIN3mV55k70lT7U3wTevnhj+ELbqYC5bM=;
        b=CYP5brXyxA1F/CXg6ssgNbcbFAbKElbRV4E0xbThcTotuNc1fXjKalV6iH6ExTpLu/
         z3itWMM4LgeBoeMoZKJGjuiZudCap/2FxsHOd1OZM9xLZ8SE3GxhnAFOrtLuzZUZYvxc
         eI6v+TsBlQqYHEKwzKxCsXqqFP8KGH6B8hQggdzu2rTKMyZ+7or3jSpQ765oSjIa5D7b
         ajZYPkHkhZgmCZJdqxFxpgQNZKALZCkOCIjbzrwRYE3XCupeCfU+kQwtx4eX0xiTS0nM
         jurNbC8my6RdCOJJk2++lxGduOL1RE8J5R94cWmNC6WJm5FB1bt60XtNEJvUSP3YV2cS
         WBZA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=o4j4mM1V;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.72 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fRQnCcG+eajIN3mV55k70lT7U3wTevnhj+ELbqYC5bM=;
        b=GeRyvWm0yu35JuuFJk4eMUgmTcptV0FiBhPEDB0JtPiNHAdRlZx58xX5KY+GIiGxtP
         owDBEAzrYpFNGKw/NdaG5jIYLzkLqeykvW/kPasFyNhIWoVnmC4LdOEt68wPZeOk1Thv
         7y2yMvnatyAttpWsdyi2w9n0mlOP3JJthK9G/L2bQmFvOPzv/SBmWebjUgwRzGeMrhWi
         uHPTXdw5on+mQUGY+F2aQnu79Ou8Wz4RXwvBccNuY0+c7FSpgIfc7Jc1VyTZ2L7QamsL
         wnbMj7U4zQnbpu64yoL0L790La/IrLPyRHnZDkc8T6QfZvI4zmRuoRCrkcRhEr6tj7cL
         na1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fRQnCcG+eajIN3mV55k70lT7U3wTevnhj+ELbqYC5bM=;
        b=s9h2V8SoxBa5Tv/1E+AAYsGEiOBoAGRpY6F/8uRIpnVVlIKoFpg7W87o5Q0V9o2TVh
         c8vqOVW84AKoK2CRbrtU/nm8uiUg5Sfyak2jodjJXKHfPMSwsHkEY6lvrfAmDisq+Z+4
         l6SuTexO6HZwYlDr6BfRz2Az6ZRvk25TXfF37To3H4nbFc4W2JKyRwOoaZ33WjbN8UJs
         w7q/pV5ySPyf33DVklLNqsFY38EcER6XwjPIw0tsgr9b1a1n/wvZ4T6So/vfong1x+Su
         C6HSqMV8YWxwtTkMECGalHHyVGF2MaCVA40Wkp0AWKIQczzTx5T7KmMFilkyn5a0FRH4
         Fjzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s8hwRPHGQ9jlvQhfPQRJ+RZ/AQuoONGDTCcwr6M8SDVXBX006
	3YR9D9+srlDip6PN+J5HUVM=
X-Google-Smtp-Source: ABdhPJznIOJ4Xr0KHj6AonPYpxGrX7U4RTftAF1WLyXInsWAm3ODd0Kw2UeWXZPvq2mTjpTqZlINiA==
X-Received: by 2002:a17:90b:1902:: with SMTP id mp2mr391626pjb.176.1621270065081;
        Mon, 17 May 2021 09:47:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6e04:: with SMTP id j4ls4879559pgc.10.gmail; Mon, 17 May
 2021 09:47:44 -0700 (PDT)
X-Received: by 2002:a05:6a00:1487:b029:2d8:d602:c4 with SMTP id v7-20020a056a001487b02902d8d60200c4mr611838pfu.23.1621270064535;
        Mon, 17 May 2021 09:47:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621270064; cv=pass;
        d=google.com; s=arc-20160816;
        b=yn6ViY6jPiuPckKcN74mUzgQ9iv6Taz3Db5paVmTpCzbJ+a1+zIP3Em4WHaPullgXn
         Ft58tD1634eHP/rFO9ZzrAgMAOq6fLePJohdJjxuUo1bgxZ3oiIo5DOxDdoPH+mi0x1f
         bS4CQ/g6M1kOgmVi7bAtY4L8MRMshrzDsHzDCQ7f8YUovGMwSDnifyanO2M72baFhU8K
         q72JIhdup2YgtzNxsm5TotlgjqvGlZHGvO143bnp9VGOS0PJy+vui5r4GvXMpwprbxRT
         TwPGD+uSskZ81IFqsAnTVImlqltQMfkBpoptdQiCT+RWywkniOOQrDyvggcslRaJIRDy
         UtSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=H6rzA5y13psG7KIiHqAZSAemd3R2/Pdx6ItyHgw236s=;
        b=HObe19vns30Dzp2kcYazjbcJUy2CIf48XsuSoumLTtiQw3jN4cf9D9090YgK+MtL3+
         d8i9kRcXNlZA8n9DdqSmOmzJ2l8UpMp1B6UXnxv2yidL+KWj3MI3ph3YqSUufo3Lhb+c
         ffRT3P3O/2nv1tWwgso2BvL6mc46nK8ZaiE+MkQZebxdHKGNze3d/WRwz+tLV3YBf7T5
         xOx1OESRVtIZY1WKf5cjqsy1u326RmxJ/8dgIFDfd0itbY5NLn5PvzI6Oj6W8a6+u0zO
         IIA5j0LQE0V0Edih7rPBINqfrkFSCSmitBGH6La1ctcszrwQxkWsQkBbXywn3vDUPwPM
         ASMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=o4j4mM1V;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.72 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2072.outbound.protection.outlook.com. [40.107.94.72])
        by gmr-mx.google.com with ESMTPS id a29si1084832pgd.2.2021.05.17.09.47.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 09:47:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.94.72 as permitted sender) client-ip=40.107.94.72;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOn5a//vwQ74PS12GpcTT9xFHqfF45hPwhNfXRTg0IXCvOniqZwkJ90TNThJugSCo8dDrOtJoPAzAsEXQx+pFX33Q0Ui3I/tmzCY4KJbWarCNMVn7DokQp5XU5vJMXEYvzNs7AmSIqaVO8M0QQMnHJLGVF2Qb3lRmgWmb9Ce/z/Vl00bVFHuRL75Q/uZ2kJLVXR2x3yVJBKIpewiHUjX/eHl9KpPzQx4kUI7jMcfKrnY1qnE+/6906lN6kBxrKy+w9/E0iaHNgN5iORjcdbI3yKSfC0hb1uHdHrlO68r/VqLA5VShUkBucQ8iJIdgbK2IBqcV1IdV9+Y6McMy+55eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H6rzA5y13psG7KIiHqAZSAemd3R2/Pdx6ItyHgw236s=;
 b=kGotHTLwIksGr/mmdWTf+0rTXBHRNTpOR0+PvMFgtL7HBwShSnZ0GF5wrvKl8iQmX2vW2MHn3NM65CGMq1FD3GsSPaW4mKaRII6FKjhDXCuhfwiULqkHKLsqBP8Oy22cLwy5ekPCLyLN09j3A6betr175f1Wv1Q8YOcca2mV3YG1dVjpvyaklsv7eVz3XmuiuceXGyI8A8C/FTeda4VyhXTvBOghc8Vzl03UURo327ZZMbqddJNJ3YSskESHdzvH2yRj2tv3cJA08ZABdgVXGIxdZfM+j0/u2liuazra04SeXO0iW4oWgwtVW8Ukt37NpntKAOwsxxAp3FtUPF8iOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM6PR12MB2858.namprd12.prod.outlook.com (2603:10b6:5:182::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Mon, 17 May
 2021 16:47:43 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::ddb4:2cbb:4589:f039]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::ddb4:2cbb:4589:f039%4]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 16:47:43 +0000
From: Jason Gunthorpe <jgg@nvidia.com>
To: Potnuri Bharat Teja <bharat@chelsio.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Doug Ledford <dledford@redhat.com>,
	Faisal Latif <faisal.latif@intel.com>,
	Gal Pressman <galpress@amazon.com>,
	Leon Romanovsky <leon@kernel.org>,
	linux-rdma@vger.kernel.org,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	Yossi Leybovich <sleybo@amazon.com>,
	Somnath Kotur <somnath.kotur@broadcom.com>,
	Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 00/13] Reorganize sysfs file creation for struct ib_devices
Date: Mon, 17 May 2021 13:47:28 -0300
Message-Id: <0-v1-34c90fa45f1c+3c7b0-port_sysfs_jgg@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: MN2PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:208:23a::10) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by MN2PR03CA0005.namprd03.prod.outlook.com (2603:10b6:208:23a::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend Transport; Mon, 17 May 2021 16:47:42 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1ligP7-009LYI-O8; Mon, 17 May 2021 13:47:41 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b438945-88b2-432d-057e-08d919537d79
X-MS-TrafficTypeDiagnostic: DM6PR12MB2858:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB2858131CF5519377F7B04A72C22D9@DM6PR12MB2858.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7vmIL8jmVLhKoAg15bRpk/3dWmIs/l7wCAH1y/FrEdsmJRI9r4XXwN1MbTkaWSPbhIB3W81jYw+HzjdpJhv4BK6/dpqoT/Q9eK3BFO1JHFy/tzvrBp5ykSyWKqJQ72qsSCh9unSjaDA1KBIqYUjrhGimVtLbjp3iz6I/qvu5dC3jAHtI7j+cOBSjAJQ0nUOAhJf08Js7nvcOxwIthtCU+Qwe3HweqebNqvHxNOWR6S3A/LCJHY9xtLSL+wnkgCFWIlFNF9B8lF5es39WSddALV20glSc4WUJrMcmeEkjn5NGnlBnQPO/+SmXSPT7vqKAXy1/S6zgPckbgafqT3m5ACfkVD2zV4HcRxeYpISrrzFIoyMPE4XlnU9TqUWXMN2cWXlMYzJvGTY6UmFgBNRJ6wadXR17OSqaPZrpPMAb+0zMsZT6K1FDh6LmKcLmqLK52ra5fVKAmTQbSzsNQpOfg7l0wyMZPQEAQD9N7d3hx1o03ysMgwU8ys9CKFoTsbkfz03ruqihdPD+jRPgKFcAoCLSpZtilWfbpXr/FMLSN2sv2EAD2Q3R7rnAN+Fc+dEzSvfX2Bbig4x2vBytSx5Wi6QhCq2+wFEB0l4v/UbQPgVpc9qltkgzmyTtLLm0P8nqU5q7UTCGCEQ1EewsbvclHM53sc7a8+z1g2HN5RYRvDw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3834.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(396003)(366004)(39860400002)(376002)(921005)(54906003)(6666004)(110136005)(7416002)(9746002)(8676002)(66556008)(426003)(83380400001)(36756003)(9786002)(26005)(66946007)(38100700002)(316002)(66476007)(4326008)(478600001)(86362001)(5660300002)(186003)(8936002)(2616005)(2906002)(4216001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?C0oknKCqeQSP1o/oRE1V0k1vP74VzswwQ64octJmRG8Qbw5Zra+leSH46vd5?=
 =?us-ascii?Q?fBcV0KPNuDoredCLtUO/D5H8xSJ3UYzDfbSLm8s3X563sKWBPxL7Ny8DEsKE?=
 =?us-ascii?Q?hFfU2Utx3JVHCGHaTjWeNOCrvi3U6HGRUyYYvN1GvEoRmv61tjaATrTujkvQ?=
 =?us-ascii?Q?JcQVL/BPIOlNV/XScch9BEHs/aq4wck3I63NdkTvA9I4UkZ9DgKi/MAtw4S0?=
 =?us-ascii?Q?TK1o9zo40dVly4lQPdSoPQnApjpXEVuq0N42GURHbpdmIzCQtqbhAtCS6wq8?=
 =?us-ascii?Q?UOCthoqIwurcc3113MocSHRhC8+I40ZHgrJpKx9KvXN88VTortYNYcc9wJ+l?=
 =?us-ascii?Q?qm6uzmekne25so/2DOEWNUBuJPOYH2Rp4/b3CtvpW8wzYSfKygpm/NUSUOcV?=
 =?us-ascii?Q?NcbkkBXS45pJAPRvnlOFwssNKe5hEEl+eA2/4Tn539KmUrxC44XweGVCal55?=
 =?us-ascii?Q?B3lG7uVQNuz9bTCdJseBMATh1f3ALRIEz+LLVY3Y1Tax9bfMSUtkiFzwvBED?=
 =?us-ascii?Q?YmGdWp5IHUjenQqFgjZE2hgBbl4xNzcr7U26kyw3CKttIuHwy30leHIEgXzs?=
 =?us-ascii?Q?7AdRfpH0M4mfACLWzNVfvvkRR3ynNvLIjtCTjOjee+695HRkIhljMaEo1ABw?=
 =?us-ascii?Q?9Rt/Ac0R19SQkdvK78+rEu36/qRTgO8tfU0BO1VF1yYWgzwMBGx7Rd3cfFny?=
 =?us-ascii?Q?mxx9mr7Jy9Kd7f7W/xLyxY4DG60rO6Bz5LF7jT1k0VNOwhnGxMuYa/1AFEBD?=
 =?us-ascii?Q?RTC6PggZppjmSm78YVXyzW4SZEE341GmwVDOIP0CuWZ7wdj+/XY5EI7bFCN8?=
 =?us-ascii?Q?uSLuJRLuclZszH1/OIxZUnygVnNrAyvkKoUnGGqPml9VJxfU2TwMUVLeM4E9?=
 =?us-ascii?Q?0ku50HVWBdFOyZkug9UjWCYDLbuFDpGqfNpJcFR8tr7gJv1wgSUH5JGH/xJQ?=
 =?us-ascii?Q?xG2ro5HmKF4XcBRAq5YNIjRVl/XRuC14nH4i7qeB8HmZMkLgELEEzjcifbTx?=
 =?us-ascii?Q?7KqlxKZDvSvBdcMIRQwSHYd9LuuBt6BvFsBYoW3Z8x3BpXdArNcyv6m+Enc9?=
 =?us-ascii?Q?xJDSESsONB6fx8YbQZQh2qu79cJp4SxhWoxz4/6gRS1s2SNfagK8ASwcvP88?=
 =?us-ascii?Q?QB4OLZRHP5Y5VoGa6Wev8Q0WxI2cuYRyCVGuJ+lr8zQDGcym5VJ8PON7iNDG?=
 =?us-ascii?Q?YNkbNTRSwP3obXUvykLljWgZMM/JZaqHFL5moM+63VY4fDm9m/jRv3lFSFzm?=
 =?us-ascii?Q?JYJXGA1cPGWCZzHSmVUvYH6LcAnMJ7tvCS15WX9qmhyp+4G2Ra4mSeosLWyq?=
 =?us-ascii?Q?x1stiyqjzt5QQGlPd3r+Dtsd?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b438945-88b2-432d-057e-08d919537d79
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3834.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2021 16:47:43.0007
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j5C2Tc1VnYKi/Zk5Ft+i0j8BAzJ5WYELQkz+kgOyAXboRiinw1RkEW8jVpSznzhu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2858
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=o4j4mM1V;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.94.72 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

IB has a complex sysfs with a deep nesting of attributes. Nathan and Kees
recently noticed this was not even slightly sane with how it was handling
attributes and a deeper inspection shows the whole thing is a pretty
"ick" coding style.

Further review shows the ick extends outward from the ib_port sysfs and
basically everything is pretty crazy.

Simplify all of it:

 - Organize the ib_port and gid_attr's kobj's to have clear setup/destroy
   function pairings that work only on their own kobjs.

 - All memory allocated in service of a kobject's attributes is freed as
   part of the kobj release function. Thus all the error handling defers
   the memory frees to a put.

 - Build up lists of groups for every kobject and add the entire group
   list as a one-shot operation as the last thing in setup function.

 - Remove essentially all the error cleanup. The final kobject_put() will
   always free any memory allocated or do an internal kobject_del() if
   required. The new ordering eliminates all the other cleanup cases.

 - Make all attributes use proper typing for the kobj they are attached
   to. Split device and port hw_stats handling.

 - Create a ib_port_attribute type and change hfi1, qib and the CM code to
   work with attribute lists of ib_port_attribute type instead of building
   their own kobject madness

This is sort of RFCy in that I qib and hfi1 stuff is complex enough it needs
Dennis to look at it, and the core stuff has only passed basic testing at this
moment. Nathan confirmed an earlier version solves the CFI warning.

Jason Gunthorpe (13):
  RDMA: Split the alloc_hw_stats() ops to port and device variants
  RDMA/core: Replace the ib_port_data hw_stats pointers with a ib_port
    pointer
  RDMA/core: Split port and device counter sysfs attributes
  RDMA/core: Split gid_attrs related sysfs from add_port()
  RDMA/core: Simplify how the gid_attrs sysfs is created
  RDMA/core: Simplify how the port sysfs is created
  RDMA/core: Create the device hw_counters through the normal groups
    mechanism
  RDMA/core: Remove the kobject_uevent() NOP
  RDMA/core: Expose the ib port sysfs attribute machinery
  RDMA/cm: Use an attribute_group on the ib_port_attribute intead of
    kobj's
  RDMA/qib: Use attributes for the port sysfs
  RDMA/hfi1: Use attributes for the port sysfs
  RDMA: Change ops->init_port to ops->get_port_groups

 drivers/infiniband/core/cm.c                |  227 ++--
 drivers/infiniband/core/core_priv.h         |   13 +-
 drivers/infiniband/core/counters.c          |    4 +-
 drivers/infiniband/core/device.c            |   18 +-
 drivers/infiniband/core/nldev.c             |   10 +-
 drivers/infiniband/core/sysfs.c             | 1100 +++++++++----------
 drivers/infiniband/hw/bnxt_re/hw_counters.c |    7 +-
 drivers/infiniband/hw/bnxt_re/hw_counters.h |    4 +-
 drivers/infiniband/hw/bnxt_re/main.c        |    2 +-
 drivers/infiniband/hw/cxgb4/provider.c      |    9 +-
 drivers/infiniband/hw/efa/efa.h             |    3 +-
 drivers/infiniband/hw/efa/efa_main.c        |    3 +-
 drivers/infiniband/hw/efa/efa_verbs.c       |   11 +-
 drivers/infiniband/hw/hfi1/hfi.h            |    8 +-
 drivers/infiniband/hw/hfi1/sysfs.c          |  531 ++++-----
 drivers/infiniband/hw/hfi1/verbs.c          |   88 +-
 drivers/infiniband/hw/i40iw/i40iw_verbs.c   |   19 +-
 drivers/infiniband/hw/mlx4/main.c           |   25 +-
 drivers/infiniband/hw/mlx5/counters.c       |   42 +-
 drivers/infiniband/hw/qib/qib.h             |   10 +-
 drivers/infiniband/hw/qib/qib_sysfs.c       |  608 +++++-----
 drivers/infiniband/hw/qib/qib_verbs.c       |    4 +-
 drivers/infiniband/sw/rdmavt/vt.c           |    2 +-
 drivers/infiniband/sw/rxe/rxe_hw_counters.c |    7 +-
 drivers/infiniband/sw/rxe/rxe_hw_counters.h |    4 +-
 drivers/infiniband/sw/rxe/rxe_verbs.c       |    2 +-
 include/rdma/ib_sysfs.h                     |   37 +
 include/rdma/ib_verbs.h                     |   34 +-
 28 files changed, 1307 insertions(+), 1525 deletions(-)
 create mode 100644 include/rdma/ib_sysfs.h

-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0-v1-34c90fa45f1c%2B3c7b0-port_sysfs_jgg%40nvidia.com.
