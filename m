Return-Path: <clang-built-linux+bncBDI3PMUQ2YMRBQXFWKDAMGQERK4BEPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB5A3ACDE9
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:50:44 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id jy19-20020a1709077633b02903eb7acdb38csf4066811ejc.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 07:50:44 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1624027842; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xugya6X4ST66Du3K4mAjkFss5KfyLRT9uqLETEWmzSfQnvW84RQmWqoSUAWS0lpGiq
         eo3ixLOK3of7giAa+SE67Aq0H7cewleRoizyWiiFKg7NeWRFmEpo2mUOmkeM5mqUwCk3
         bKzgd8aUrCTJ5jzHPsP97miEL6swDZ3JyiaIApvPO6MjpybLBIYFgEnIxm13F6BFwEEj
         QL/0+XC09n3Zlpg9HM8yUuUoktKb5mHAUrPChYH1090CKN0qHZZHQLXrgv58SiJN1cyd
         IxQtsam3Rir2J7HGVQZbKCMmR2K/vyfm6lAoUFVDxFxeXXR5Iu/v8H7TzVOUtoDPArn7
         8tnA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=F8Q/roor5ii7LVGwyygBztvmkDfAh/fuy05UPMXg688=;
        b=ACwuuVJtjImNeLhgkR5z5JI4uxjax3F9vUZl6+Ig54TkADWWj/+v7aDp4kkHi4ADbs
         A2nAoyuNnRghjx30mmsunQPSSQepJU+A3U4IJFHKyUvM+9zvo5hhDvLDOJFqSBnY/yS+
         ArPtBQ5Ucp7EY9id9cbpTj1cOIaIyOI9jx1DnSzkIIYk/FuxXyjIJFDnsJ49bRXhufK8
         89qVSmHK3Rf9AnfDAgiyvW/0WKBOe+B80l4UA1rCu4SZyUH9XTFtCKyb6dGnLYWTslyE
         hjqEWeupCFRcT3GCBPYCCGxsVySjP3t3gpGtADHt2BL71sn+B0rZsxmKDXnUqg7SzELZ
         Yw2w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=nhuMqTU2;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates 40.107.102.58 as permitted sender) smtp.mailfrom=treding@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F8Q/roor5ii7LVGwyygBztvmkDfAh/fuy05UPMXg688=;
        b=WyCwdOCiQ5ptJ3JqZleaa/UJNMinULRvMlGiDP7TVtPsoxAYxWvxrlKdT4ARtOUWFX
         v18SWzY7w6mpm61pa5qqZk7hAAnoTvO9yKDTRdtaGNcZ0AOlKwyzCsWaSwlMoe14zeWr
         gHBU9bMBtXPEc95EjYGxClJ7/nc9RtoxrqaQGovnG6vJSYUQYEQeIZsXVPLZFVzRHJC/
         T9CqQW9waINdmqg1eOOSpXw40aRFlEcx0zXEBlHkTcjZjvBBaseCOwKij7AShxyIe/EQ
         gvRMJmJTVpLhPv1wUKYgq+gYcjPJ2iV8dL+ZDh8pVCFj4egCn6Ei35vZvRb0qvZQECh2
         aGQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F8Q/roor5ii7LVGwyygBztvmkDfAh/fuy05UPMXg688=;
        b=TJdbyv3wIerOeF4Y5FvW2GeQjW9YXBqY5FVjcdWPSefs/IVGJFd6HU68tyEijlth3H
         saO16+kKxLGMOgqTeTdFwQG6QoMn7rMPZXe/ya2CJFjWpLbO2Wz58sJiGlSkEpKpkgMs
         MaDo64waHcIHovkYEXjaminbwc16MKNBMb3IVUaM06lkPh+JSzjJPN7qgoAEUexabv98
         Z8t87sutKT0oABMbpuCvM/Km6FHx/cpg220/hDJQp5mrKTecan0OjLd6koPclTOy9jYB
         MLKQSX/wCg275KjMYbJ3KdIWUgTuI2rgtgt2HynNVrRThtTD/H/3TSQgGgE1z4QgUy4C
         jZqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532J7AhLKJEMp/yOXzxnz565OTlZfOg0pVC3jdZFV9SbAm2mkolh
	F5Zrlb+kbg2DewL4Jd34wM0=
X-Google-Smtp-Source: ABdhPJw3u8qDobfMjnFgPRcyJp3pXI8NGIj2pAzsu9ErJxLPvNGzm9XtG30LntvnXMHsen0HuBYDGA==
X-Received: by 2002:a17:907:379:: with SMTP id rs25mr3879458ejb.426.1624027842539;
        Fri, 18 Jun 2021 07:50:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:72d3:: with SMTP id du19ls1597360ejc.10.gmail; Fri,
 18 Jun 2021 07:50:41 -0700 (PDT)
X-Received: by 2002:a17:906:dc43:: with SMTP id yz3mr11632069ejb.323.1624027841644;
        Fri, 18 Jun 2021 07:50:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624027841; cv=pass;
        d=google.com; s=arc-20160816;
        b=D50oMge1CLX3oJK14WFIMu9hiRAubqBuvqhJ/JLOIHaEy+yioGyztqg10nqRtFKFra
         JzQbr792A/fpkCJfCIvkld7tSzMN1hXAQopm2CSqsJVN4oUcJW5NiNeVz5Z5bgEi337j
         JO3mbooPOJ9eAOq7r71YRwFmhvVBxO4ajxmP9+DGptW9WYtnXrUhyNXQMF/nkMHGohrF
         AZ+A0WM4KhnYlhjp+59P3XDl0H5Ac7kvjodZCfJ9ho01f1dfRcNmKyOO/IwWcl6buQmj
         nX50tBMhei45QRzREZLU1ucE4ut+nxgreyyT8bky18rUPJB+jMabyLDvknXgHigOSPPY
         PwYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q3lk/aI3F4d7aCioG7iAj7Q1EfhQ9DrajpREQeXdfl8=;
        b=aUbi2t6SmJ5NZ23G4sVP3W/cAHqTLWWugLBA23buYTYbr5zNDGNG9Ba9M1KpEh5jQ6
         16oAUKLrjhD526LAb+yvhQL0mPECeoy3LDv4HxBbjtjvRHyx3ihl/WQ+6G5B0k/Jwu+r
         Qp+OMMtmsLi+dOw6Y+d0DWi85/AcI2Mc0/NsZUd5ZyZe8/U/AC3JvG+t1e9AP8bF06MA
         VdJY2HMz2wKMea11sZrU1mwj5C737gYO1onsIdVIhkWJkSSTUcnS4ub1J6oXvNsmYpi+
         /2q125pmroCjE9YglsYmmYcHUZoONbmkAoK4TRIEEUch3w16xXCsuRZ4E6zsXPfp9rfs
         WX3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=nhuMqTU2;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates 40.107.102.58 as permitted sender) smtp.mailfrom=treding@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08on2058.outbound.protection.outlook.com. [40.107.102.58])
        by gmr-mx.google.com with ESMTPS id s18si59762ejo.1.2021.06.18.07.50.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 07:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of treding@nvidia.com designates 40.107.102.58 as permitted sender) client-ip=40.107.102.58;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Peqi6IH5PCx04aU2c/Np2TZpSc9FDBh7l0OaGTQqcZV0syzSbrXA4CpELbZLyvSgU7ZJK35/mglhl1D4oyx075y026SibDz8gmFT8Cdi2cBLPHmpL3NMbfCe0YVk2210dCzgBf7prsF4DNCC0E6hjIa1dBAsa2yb4qkwXsqP0jL09xbqPi10p0COvFyJ/PgLn5TIXuyIbu9zqxcPwhva8WfYIl8Nyi1AhL6oHx1xDhjkmaiT5RBjs9bS5mNeDCagl5sPI4akSDh3LMa6+XlQprlF9j4EE3Uht27iNgalJYPYjGsRmsgIw8FLDLtTlCMe+NPqrbuPcWMHqFpZufR5Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q3lk/aI3F4d7aCioG7iAj7Q1EfhQ9DrajpREQeXdfl8=;
 b=BXfjAqn+ausZuWsumLsTEma8iuGrY7Si3yy2/Qhz+4Jt9HZUXtseJO/Iv0ICNhN3P4wTdrCT8Hj3mfGthVWI11nolH8yM9yoSwHtEk2tDyuWtNyylJ2PYMjM6WkS8KpW5V//TLouQiEQgQ4CoYSHJDHXL2H6ObFNSQtT57sm2Kz8ReOxk7eGFkwSpEEWblSRZQ3T1iFrvPKwTLT/FyzAO7ZcQoSkfoajoeEAN7X6giuTy0nv3TQJQr/65i5xsdj5iZ2VJTkmdwi0ZSKjH5+1Bo+W9QcfpUND2Tlz27Hq6zcYfvEeZQ0n99xXRfI0J69poWUVgfenB54YeFTVY7IoeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=googlegroups.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from MWHPR15CA0042.namprd15.prod.outlook.com (2603:10b6:300:ad::28)
 by PH0PR12MB5466.namprd12.prod.outlook.com (2603:10b6:510:d7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Fri, 18 Jun
 2021 14:50:38 +0000
Received: from CO1NAM11FT031.eop-nam11.prod.protection.outlook.com
 (2603:10b6:300:ad:cafe::f9) by MWHPR15CA0042.outlook.office365.com
 (2603:10b6:300:ad::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21 via Frontend
 Transport; Fri, 18 Jun 2021 14:50:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; googlegroups.com; dkim=none (message not signed)
 header.d=none;googlegroups.com; dmarc=pass action=none
 header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT031.mail.protection.outlook.com (10.13.174.118) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4242.16 via Frontend Transport; Fri, 18 Jun 2021 14:50:37 +0000
Received: from localhost (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 18 Jun
 2021 14:50:37 +0000
Date: Fri, 18 Jun 2021 16:52:26 +0200
From: Thierry Reding <treding@nvidia.com>
To: kernel test robot <lkp@intel.com>, Philipp Zabel <p.zabel@pengutronix.de>
CC: Dmitry Osipenko <digetx@gmail.com>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Linux Memory Management List
	<linux-mm@kvack.org>, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
Message-ID: <YMyzKmDO+SJt8n4N@orome.fritz.box>
References: <202106182243.KgZxMD9A-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2LtUEF5K4iBgW5qa"
Content-Disposition: inline
In-Reply-To: <202106182243.KgZxMD9A-lkp@intel.com>
X-NVConfidentiality: public
User-Agent: Mutt/2.0.7 (481f3800) (2021-05-04)
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6ff6235-823e-4696-2a07-08d932686fa0
X-MS-TrafficTypeDiagnostic: PH0PR12MB5466:
X-Microsoft-Antispam-PRVS: <PH0PR12MB5466592E7B89D4D07027F5EFCF0D9@PH0PR12MB5466.namprd12.prod.outlook.com>
X-MS-Exchange-Transport-Forked: True
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tM5HD5WuIGonvjzWAeRZhTFQDaJ5CjhcWZUdT3sJYziyFserBRjs+4YAooXJf/BMldjOM4GOir7UtMAUKBsEmyvDNgMIcnQJvjIEu27LPpCObwo4YcnVsRYGoBsjrTvyyVLssNmWAMKB91PpnEuz5LxriAo5Xe6cIKrnf5hUdX/YSWMUdpDDI8rYLlNcgocVidq0nWDdbgSacdbhyKDdm9sgbhUaCdJNf2ketSamIkjlJwvc/rCZErCzMHr/cx2DxTOmVn/obKLueyloL5gXhS7m2CqQ0cQ0NIIxkVmS2xHGRU74yAVEoh7Do54WmeNfyX8Z3Ei6N8IvhSQPggmnsBJ/HsHX71BohbsWI8WF+Z+yasDSnKq7JbiBbxjZnYyPuNbk/CGZczE0/ICTQ+gSkVjgM3MBTAPZJGxVFsBeiZCfrutj0lolsc5L98fVkeEmJ4EqCeXONaiy4TR1q7jJOGJHYEP9RJEZwJHpbgA3pNWB2TCMvA+RJqORo4IwQCDRqX+5bD0AR9c9JFd/4o9pljyVfy+xwXuRZ7ml/TXbpdfxdOLcTG/CZLBJQVNPv0f9NDWwS37BOOn5bwz4OoqzSUB8yfjMLKcc4PuFEKsA/P5EnE6pJ3g6mJP+t4stV8pgQ/X0KUV5ZvIMQhbMBJRI4BpXf5lMFbmy5xfmaJl+Wac82lfLDLnmOT+5Cgz/rtsHK6jVkx5dMgjI2COQ47SWrMW6Z+OyFBbaV1zgFyWp//AMbtvlc6PxFA6Zx3V5XQl15rD3CjtcJe6AOZhKokMkgxrvyzFZ4YDi2P110Gb4XECu9kcX6Lr6ozF911qms8AShK0uWqTiHNwuub7Nf0CBHw7uExQ9RJEWB+TfZ6HWMjd9RvPC1vNLVniWDMYw4XNL
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(396003)(39860400002)(136003)(376002)(346002)(36840700001)(46966006)(86362001)(54906003)(5660300002)(2906002)(356005)(36860700001)(70586007)(82740400003)(110136005)(9686003)(478600001)(8676002)(82310400003)(70206006)(6666004)(4326008)(966005)(7636003)(21480400003)(47076005)(426003)(186003)(44144004)(26005)(16526019)(336012)(8936002)(316002)(67856001)(2700100001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 14:50:37.9391
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6ff6235-823e-4696-2a07-08d932686fa0
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT031.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5466
X-Original-Sender: treding@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=nhuMqTU2;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates
 40.107.102.58 as permitted sender) smtp.mailfrom=treding@nvidia.com;
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

--2LtUEF5K4iBgW5qa
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Jun 18, 2021 at 04:21:45PM +0200, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   e71e3a48a7e89fa71fb70bf4602367528864d2ff
> commit: 56ebc9b0d77e0406aba2d900c82e79204cc7dc32 [5946/11253] memory: tegra: Enable compile testing for all drivers
> config: x86_64-randconfig-a001-20210618 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=56ebc9b0d77e0406aba2d900c82e79204cc7dc32
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 56ebc9b0d77e0406aba2d900c82e79204cc7dc32
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Note: the linux-next/master HEAD e71e3a48a7e89fa71fb70bf4602367528864d2ff builds fine.
>       It may have been fixed somewhere.
> 
> All errors (new ones prefixed by >>):
> 
> >> ld.lld: error: undefined symbol: reset_controller_register
>    >>> referenced by mc.c
>    >>>               memory/tegra/mc.o:(tegra_mc_probe) in archive drivers/built-in.a

Ugh... more fallout from that compile-test enablement. It looks like
that compile-test stubs addition patch for reset hasn't found its way
into linux-next yet.

Philipp, I wonder if it would make sense for Krzysztof to pick up that
patch or, if you prefer, for Krzysztof to pull a stable branch from you
that includes this so that the memory controller tree becomes buildable
again?

Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMyzKmDO%2BSJt8n4N%40orome.fritz.box.

--2LtUEF5K4iBgW5qa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmDMsyoACgkQ3SOs138+
s6HyMhAAoxAL+rTFID2Sk3QtY2T3NIxEkCmF6wA/SjWQTFpYv9RIHVhEYqTTSVN/
wY7iU3SyGdprGefNiMlLH4urCucgRWX0Mxv5VLYjPptTcqluM1GyCVnRerIIguK0
RhAehR/lOnvFZrnqWvN792YoDik9NkQtknmHcR+3LUGCbAU/BN9YwV+uDqsRAVES
8UY93IQfbMgsknzjvhW2KNB4HYXGgyM05sn1VXJRJBSvz5BwqbnkHlHx5o4TdXD6
xRQrgLiLd1zFDaIvHHQ7oj4EwF6sedoxCAKDlNhF9BkSoKxKHSEzZJS8l+1QnlrG
DYou9FHSbNx8pcfbv2GhAI9CVcF/W/WbSfK3VJoJMBFZJ2xdblgrY1/4c48O4n9x
/Fo5lvT5Ase99QyGCq2FtMNKIWnfID/kEaFTYB9BNsgAJUDvQ1BDNoJC+dvbyi7I
ttiJPy0I9W30g+bGfJkbZdZrsloUgUoOzOQBTdn0TDvHQDLUdBmki3DtHCbOLPs9
u5P6RP6jSy2yzFf29P5l87EOCICqUdGh6QyDQBGiRiBeff4FeiksnE19pGYQ42Wj
08XNofDrS+eH4Ud6svM3/VZ0b1yE5AliSmwJ1x//qgIRuCyqJJ14HdNgbCE9LSdA
5dOiwc/08z7t5uvzxXqYYzZfPlWrwpADRlG/TvnvFV7ZSoSAwDA=
=DlJK
-----END PGP SIGNATURE-----

--2LtUEF5K4iBgW5qa--
