Return-Path: <clang-built-linux+bncBDI3PMUQ2YMRB3PHWKDAMGQEROZTNDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBBF3ACE0E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:55:43 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z17-20020a9d46910000b02903fb81caa138sf6041685ote.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 07:55:43 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1624028142; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bg5vJJznqPsLkJmb9mfI6gonqApPu+GGBVc043ePp0qf7vCGBhKTTcyi6Kyi4JtYI8
         4n79D3+zO0vwxspVo9jEU+15ukaLj3asYT6StNP1CjJbK97h8LC/roro+u6KsIzaoMFT
         MagMBvCl7nLI4VSi/6UUBjKjzUNk9wm3aByr2CY3WPdBFyEuPlaE44xXmPbXUeKecFUn
         bCyt0907zuej++krT748tCox0af/jo6sws4OoDmxPteKqRKZ6LbcrDRTAkpLTZlxxL4H
         r0t43K+cPA2ZIvvDmmGuO6xMsbANX+kJqOg5hb3cy5qdMpT+BwJlBGHBxZ08eSFaMxzb
         EJQQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DTJIy4gWqCBqROVndbSQx+GbJLyGfXhxDD+OVGx9B4k=;
        b=Fso5AroCeSeg9Ab5gOmN4CVeF8UuqAiTnpb9ueY2CKxletqgovapVm3eEuN+kmYZWI
         r8xdQd9ybx728fWcnd+h6phG0T+/vjVsvJ2bZur7zSKpd1R8QHLma7qF/Gf3Guosy0Lc
         N5HudGrNxuUm1vfXfLiuBwqXtztYAg5yydFc4EasetfAbFc4iXHegFjPlRqJyZ9MKgGO
         ajrBg+xnWxiM/snMTZ+E/ALRC8GJsX0HVDYInOGVmfhrZaxexDs5G6kXOM7vtIkoPgbz
         hwnJY3+ktHt3gOT+19G+lCJtq2a70SBv/JRy/oKGZL5jbkCFmBTZckDIUSp3IClGQaRF
         6Ocg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=f3bUDaFt;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates 40.107.236.56 as permitted sender) smtp.mailfrom=treding@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DTJIy4gWqCBqROVndbSQx+GbJLyGfXhxDD+OVGx9B4k=;
        b=MWl8jm0X4sBtLqUtELBpOH6iR9XMMRrMgKOy2V1VfYR4nPOZLHcMlHn9IgR+28b2+A
         74AhCbwpeg7AKpBFAz3wpnmSWVZTqu7EtZpr9u3fFq2Kns1asUaFQ+hrPqLtECZa5l27
         FE7ZgK1dnfPlhuDb/M7S2+XD7A8oNGaTDzal5jOUfjWraGO3OHt5FjYaBJdEe8qrw28a
         Aca4CCxRSxlg++8ByRfShu7NXL7RVatL2keDwHjkfH+zkMrPnQNnMauVwdQ8nu8XDjXk
         iOH7oxy8nM1n/w+nIxiI/OzNuqBRsgG7pu7LuCiKncpjslp0qsuySLXh7zCNmbRBtFbN
         IC/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DTJIy4gWqCBqROVndbSQx+GbJLyGfXhxDD+OVGx9B4k=;
        b=puBBtkEORT4MXAc6yjJpJXh5o9IV7k6dlUH9LIYKytX7eN0khdSGso5y20klVVvPqx
         2nOR+RHj2uTVKcwFHF41HbA8DHP0uAAt2GefB8QNOHuZMirwhutWxmWIrOgJn152XHH1
         SSb18JP+pOUrYoD1U/idcw6MBy8Gg0DSab3PTV7vsUy04HTzGX9kqZTaEAXSnp8Zk9S9
         chzrAN6eOHbuQZDn+G75Nk+0yh/GG7jRQ+Jgxy44+D7DcjaQNr1pPxfinviftbMOB7KX
         p5t04NQY1RArracy7scKzn/mxCvBVwBhZnskvFaxJQAxXI4E8Kpqk1U2FQwqm/5VnTWs
         zg4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TPjw32uz1Ule5j3my1Yc68N7+F045A23V1xxCJUA8CAU0OpF/
	MYqxPwgHphvTS3kbSD8SYeM=
X-Google-Smtp-Source: ABdhPJxdyEw6J2m6O4s4vfj1kCFj8YPNXK/g3ugdHLgxd/zEwYk1mZok8C4tK6DbEXOKJ0M5rEEctg==
X-Received: by 2002:a9d:a74:: with SMTP id 107mr9689521otg.4.1624028142094;
        Fri, 18 Jun 2021 07:55:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5a83:: with SMTP id o125ls3061824oib.7.gmail; Fri, 18
 Jun 2021 07:55:40 -0700 (PDT)
X-Received: by 2002:a54:4503:: with SMTP id l3mr6141021oil.156.1624028140232;
        Fri, 18 Jun 2021 07:55:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624028140; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZtzB1jTIwksTSRQ6i3g7XVe2QlHnjvyolTUtQN4UgdCIGtkMDjhDqvN0Pn8GPV9EV4
         KzxG+s65TcZc6MubLwBHjv5umt1G3x/xknzzlre7JmUWv/XO4EKoUzfGWOIxV1+oV2kX
         S7bEGdonQLW4jkHOA3t/eNJhFSGSsgF/wZBPDPXEbjx+qphQ5m36Y7KSEkeE1nUhL1Od
         KvwauSBK1EINJdCEaA9OUGjS49VzQf2xjqh4Ls44dkhiFxGGmZ8I5/Jqn5A+OD+iW7Bs
         spZnqLrbktzERIlmFIC1szoIse3Yd0ozUAcoJLSF0GS2H6F/nJnNks8k3DC6fBkYqi2e
         b/Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uKhShMVuv3LgMV+GVLcMRdr8xz2ym4CyNx/F1pQeQBc=;
        b=XvqKGOr1AznpfkepNqEKj6vRgPoGHLPC0K6aenxyUCF3JynvRUaVeE9tY22knuIf78
         DG2u0fEsKMhKEguASb2NK50fw+d4sTd6l1nKj921Kl0AsV76AoqH5yph1HLTYPhlXdGq
         dD0MD9/eQ+RaWT31NHehADy2x1kb6atXNqExUWAtobliK/F/ihoXTNWfCFdbIOH1YW/T
         B91D7PqdV9qvcgDHMBio8sH6zfyM7UO7rYHafSPh7z/VPu2f5BMneHprCCoQ594dJhiW
         c1R4FxruZaT8Rh1ymcgF2iGk4u/88zQMdrJy1vG2oqMP0YlTzBCierumGSPkr3Zg463a
         SePg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=f3bUDaFt;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates 40.107.236.56 as permitted sender) smtp.mailfrom=treding@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2056.outbound.protection.outlook.com. [40.107.236.56])
        by gmr-mx.google.com with ESMTPS id u128si925362oif.2.2021.06.18.07.55.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 07:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of treding@nvidia.com designates 40.107.236.56 as permitted sender) client-ip=40.107.236.56;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6Wi50HEcszgt3Qsby8tZFB3DzG6robSk127erc4yvVKldv364SD9SBajG8MCqPAC2LF9WGnGbKu2NxKm2rdha297fgHoXK20QPuZtDF5jfCkE5L4mivpyf2goEciAXZHekBMUSFG0pC0B2Z/QZK8gVRl2pC/rgRU3lYsDOnFWUtxEBvTT880v4tXaYIDB5XmszXSigBtd+3/qcDSvD/j9LIoufWrjX1u8hUs75LdZhEjl0rhl1GO3smhUAuAE4YLADGZYmJmG+YY//vqqVS9+n/FLYgNPip1bCrx0WwbHaED4l4sW04yL5aE6ED99jIMn0C640/+D00BM9vjkIlXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uKhShMVuv3LgMV+GVLcMRdr8xz2ym4CyNx/F1pQeQBc=;
 b=P2qUWhUrIgRqQgj75jI8L0Qa+amG3iBpqigydEGqN2pszj08my/UANHun+hfaT22/Lin7POV6DF3OWtRmRy2BB1FTnzISj/QZXcbBjNy8j8VY1r3bvjpF1He9xG9YiZFs0HYUpH0Mmh/FgbwrEB7mi/kL3thU6Lohuzvj9de5CbzlTjQv7K8DzByHyIMRPhUWKOJZM5p5WMnFUceasPaWi8Wkdfn1cblrcnZDQw5cATma8tTrKWB3wJg0M7SpLajj34ilYolvWLOj43qSHWQ3LZrurEApsR2NUt7i5tgGmjOHa+0JUhyc2eHRQBUXwBDhMN8XMO6OdijMBbE7LB3SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=googlegroups.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from DM5PR20CA0020.namprd20.prod.outlook.com (2603:10b6:3:93::30) by
 BY5PR12MB3713.namprd12.prod.outlook.com (2603:10b6:a03:1a6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Fri, 18 Jun
 2021 14:55:38 +0000
Received: from DM6NAM11FT026.eop-nam11.prod.protection.outlook.com
 (2603:10b6:3:93:cafe::2f) by DM5PR20CA0020.outlook.office365.com
 (2603:10b6:3:93::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.16 via Frontend
 Transport; Fri, 18 Jun 2021 14:55:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; googlegroups.com; dkim=none (message not signed)
 header.d=none;googlegroups.com; dmarc=pass action=none
 header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT026.mail.protection.outlook.com (10.13.172.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4242.16 via Frontend Transport; Fri, 18 Jun 2021 14:55:38 +0000
Received: from localhost (172.20.187.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 18 Jun
 2021 14:55:37 +0000
Date: Fri, 18 Jun 2021 16:57:26 +0200
From: Thierry Reding <treding@nvidia.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
CC: kernel test robot <lkp@intel.com>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>, <linux-arm-kernel@lists.infradead.org>,
	<arm@kernel.org>
Subject: Re: [soc:tegra/memory 19/20] aarch64-linux-gnu-ld: Unexpected
 GOT/PLT entries detected!
Message-ID: <YMy0VgmIff5Nfscc@orome.fritz.box>
References: <202106171927.ZsjdP41F-lkp@intel.com>
 <bb8a27bc-5eef-7702-5e3f-1e9fa69f76ec@canonical.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0NM/NfvWKH58bweC"
Content-Disposition: inline
In-Reply-To: <bb8a27bc-5eef-7702-5e3f-1e9fa69f76ec@canonical.com>
X-NVConfidentiality: public
User-Agent: Mutt/2.0.7 (481f3800) (2021-05-04)
X-Originating-IP: [172.20.187.6]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 14ccb46b-1b0f-46c8-1208-08d932692290
X-MS-TrafficTypeDiagnostic: BY5PR12MB3713:
X-Microsoft-Antispam-PRVS: <BY5PR12MB3713F20E9E5F411CFADE2C54CF0D9@BY5PR12MB3713.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4MCbYpzbRm/tmELYQevCa3CWP+WiPeI6yvMG5CNHnd6wTgkmIbivIklvwnk7dcI0aRWUy70m3HMzpTEk+aO/JO1iGkufQd/XZ7ESlIDXU6XprnBEIuLIII9eRmkuMdBbSzm276CiIKUOIcl4kKRcu5DnaHXHWciS7EepRv0B6bVSmX8vzYyw+XQjr2KIq6gu5qwdPTdMEa8zyvhz2Yy+KLLBd5gzAV9HkYKh1MShdixY7VhI3Mm/kBzk4ElTcU68NjcCbHa4B65MoJLl5ZTcIe7Z77nQqU9qoEh8xB9HHjJOaRhGAZd5LJsWPTJ02b5qO2o5Q8i/SOkNweMH78h0dF3GtHvE8Zou10/v4Iem6k+zZM14kTMQzj5NFopPHA/blSsKIpg/+R/yz86Bdu20EhGMwjGj5+sKBHzusSgLygMaNw3t/xKdQ6sfckzSyBz7TZwRg3YpD8Y/kl69lgZE6SkoywkIU5c1q5nI/tQ6f8nCgV7j0vdilPL3J+swzRqYLulbiBigbtk4UoNb01rpj9GPfCHIMeN6nrIWFmieXZTsU6Na7T9cvkfPQOl4Vyyj6sPsSPBPK7tXMfaoFaCTErS5Tu2C9rMH3X6bo/gQq+/Klli6rg6s4Ssfzh7MiDI6nfzGoODg85Tko6NgKCz+1e53C3jM+eqJdkw/gS3il9sC/I8NmEcp8yLXdTpzzhbasLx5sN3/3ZSpYAaijgxc+VAqHNR7fwbRZigLIziPgI46IXmlRrNmEW42CLZVDcRqCp020eL+vFR3EVitXkCbvZobs2mlbxCVQGd4kbYcF2q6484KMBljYew8Ae3lCddiR/8/8BYBi0Kb1SHa7jmYUbntZ2TNT7D80xvdN8EuA+c=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(136003)(39860400002)(376002)(396003)(346002)(46966006)(36840700001)(36860700001)(53546011)(5660300002)(70206006)(86362001)(966005)(82310400003)(8676002)(2906002)(336012)(6916009)(8936002)(16526019)(426003)(70586007)(82740400003)(478600001)(7636003)(316002)(6666004)(26005)(47076005)(356005)(44144004)(4326008)(9686003)(21480400003)(83380400001)(54906003)(186003)(2700100001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 14:55:38.1238
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ccb46b-1b0f-46c8-1208-08d932692290
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT026.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB3713
X-Original-Sender: treding@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=f3bUDaFt;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates
 40.107.236.56 as permitted sender) smtp.mailfrom=treding@nvidia.com;
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

--0NM/NfvWKH58bweC
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Jun 17, 2021 at 04:22:56PM +0200, Krzysztof Kozlowski wrote:
> On 17/06/2021 13:54, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tegra/memory
> > head:   2c1bc371268862a991a6498e1dddc8971b9076b8
> > commit: 8eb68595475ac5fcaaa3718a173283df48cb4ef1 [19/20] iommu/arm-smmu: tegra: Implement SID override programming
> > config: arm64-randconfig-r016-20210617 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?id=8eb68595475ac5fcaaa3718a173283df48cb4ef1
> >         git remote add soc https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
> >         git fetch --no-tags soc tegra/memory
> >         git checkout 8eb68595475ac5fcaaa3718a173283df48cb4ef1
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> >>> aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> >>> aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> >    aarch64-linux-gnu-ld: drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.o: in function `nvidia_smmu_probe_finalize':
> >    arm-smmu-nvidia.c:(.text+0xe0): undefined reference to `tegra_mc_probe_device'
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> Hi Thierry,
> 
> Will you take a look at this failure and prepare a follow-up patch? This
> came already from soc tree.

I thought I had sent out a reply earlier, but that doesn't seem to have
made it through.

I sent out a patch earlier that fixes this by adding a stub for
tegra_mc_probe_device() if TEGRA_MC is not set. I think that's a bit
better than adding a dependency on TEGRA_MC from the ARM_SMMU driver
because somebody may want to build the ARM_SMMU driver on non-Tegra
configurations.

Another alternative would've been to add another Kconfig symbol for the
Tegra ARM SMMU implementation, but that would've been more intrusive and
would've prevented the Tegra code from getting broader build coverage.

Let me know what you think about the fix and if you want a different
solution than the stub.

Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMy0VgmIff5Nfscc%40orome.fritz.box.

--0NM/NfvWKH58bweC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmDMtFYACgkQ3SOs138+
s6FZQg//YG9I8kicN/cMqsDhbV7nf9LEk7jlNp/jTI+yejnwaPdGoNh17pnl9eMW
gHPNckQLpkBIW3SadWbd+l0xeJfpZjFUa0fwZuOCoojnuL9i9t1Bx4hhTRP0QCbh
IY9rs6w/1GOCTRivUPWMXpS1NI41CfFV13Z99uOMT1/fj1JSzQfi8TdFl1pwBp7y
l2LgVb+7ViblnvFsOilQrMB3vwGc5ytUwsacyzTz015KIS2X2fwVR9SeQDVrv0Bz
5P6oXlhQ/Xyyrrf/6saHfYYBbYZ9Qt4bXiqCNDdje4Hb5kxiKZELGmQrFwexc/u1
vFHGNUF7NxIZWW8z14d09G587X0TGA36PF5jCQ/7Bdiud495S6Et7Z9fSDxQHmf9
UvcRLtk/uH2vED/o8fnfj2qmjYtdYo/8VQYl3GsddCelXL2j7fg6aGfqjKS4O8aF
5kq60ZIX+TjfgB4/YTDzNq5paSDOXVRPzD1QAXuxsb4g9xE63bEZZ0qpxxUiL3P9
sTbs/C74zCLYsfD6IoJdJxU4yDgRDsbbNtYtdHJye7eoJ2NnUGUAQUBZdj6sqjKY
9z/deyJjisN4M3OZpyQJ9uaF62/lR6fz+DnDrTmkqz6UEE7HB1yfWC42l7Yfl02z
Z7Zj6OHe7qTbBM3HAbFk+tUgKTctiHsc38Z9VwaeigQVgyXdfTY=
=cxaz
-----END PGP SIGNATURE-----

--0NM/NfvWKH58bweC--
