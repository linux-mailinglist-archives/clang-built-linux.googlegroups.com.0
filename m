Return-Path: <clang-built-linux+bncBDI3PMUQ2YMRBEXPWKDAMGQEVPCQD4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9533ACE5A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:11:17 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id b3-20020a0568303103b02903ed1990d4c1sf6059173ots.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 08:11:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1624029075; cv=pass;
        d=google.com; s=arc-20160816;
        b=jNpfg2piGmIUrnb1MgzE7Dn18MEaFkuu0e6WjyvFNfVPDIhlgswW5LpVB9ylYrKlE0
         oxzzysz8AndJ6bWiva7EDjKun87X9FUhv+YLxCDkTSomQWMXWecx93E9G4cj5tVew/O9
         KfBz8WxPULSF9GJgZKnj4uhggY1qw22YQ/pHsgGDlMMPomRsnNRUNBkGOuFTQ6gAfn3q
         XExqnktV9huxLrcJYLDp3O4o96nM3oFGB+AJ4MOvCeHOOm9IFGfXc6zH+WCz5aTQ9UCX
         G6BUIlfhaHShFqRTICeYmUoNs7tYPpcj3NC6fJV75eGRsZjBgNVkSPiNYsW485IBI9d6
         M4aQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nD4o5gR9JVea3LjaqgOobA70NfhXEMrE6TAfp8GCxPs=;
        b=FJVQFZ76q0dlrO11pXTRNRDvfVt357/Bqmum4nO4LiWAGHMMKbJOWU3MKnmpXtYIkb
         10f4z+u7TTmLbBFJvlfBHL5Dvj69+YivwHLfO1LdWAJBysdy3/MIgWHR4CBEiPHHHp11
         l7Y75CDm62VlUkiv9B+btzYQU7mVJ//ANnijakGu5Okl9aIiJv9gWr5EHD3sKlCamnqt
         kmxfvL5V+wUkKnYgpbW/st/+rnY70VD52sk4+9wsGthdAbWuQE7FCbMZLmJpXfWWSxeP
         QVgtb+yMJt/cx1IpHfZQ8Qi034LmzXr22P38gwkJfsWBDNIyxU5eqvOQ52JsqRqlh5x+
         2b5g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=TumxaM6d;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates 40.107.220.62 as permitted sender) smtp.mailfrom=treding@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nD4o5gR9JVea3LjaqgOobA70NfhXEMrE6TAfp8GCxPs=;
        b=qBb4RH/EI0CkN+/OGDH13b5llyRIWhk6BwfaxQyebUukKL0+6kYVe3Esi6d7KT1mMx
         maWd62t8UXQcfYWAO/ITnNZ3hJEcEqc7IH8B9mLKM8/BjcG5b7961OD5ckHThG68A6ja
         sgK/en0vYQHt+q2R3diwGRIw3eLDFo5EB7mXLbJlB4V5W0OJVrMPvNjf6EYp1DfWnRYd
         bAxdnKwObJFG9GZBe5EubbJ2din5jAonkX4zz1nqy0tTxoX2VsDU6a7co765IpExtXlm
         8JYNhPbi1Uegjxu5wljX/dhV8lScu2oOSFjZgKbVIDEU6Z2NsZbSWp4MMH+OoTTAX/kU
         aVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nD4o5gR9JVea3LjaqgOobA70NfhXEMrE6TAfp8GCxPs=;
        b=LJCVYds4CEm7mFwT65XkTuq+fNfNoAimNbHQ6OzGjH0ToBPJLBZ14B/Y7oTratTRJu
         z/gJquuwggD8Bla+lLE4oh63JYLTMma4TF8phN0h39TSVDrq9+Ac7N/Qw5dqmigkbZhg
         4q5AcSSBG/IoSmHZABV7mINRkO08h/fgH9wofxq3YNiiqONrqa3iuPyAD8GGFWoTJF4X
         ILRaKs9odV4kA+A/G2Fz2SI6Ygf9pj62hK4nJ+Wf7mNZDG1xFYOdrgdQaRhNDTPYc7mF
         TJ8WOW/epWg6Pxs4iGcIlVXM4ThRzZyg4nwMErfASAfwQxoxCVcrf3QOt0bGLhpUpWdb
         /ntw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vIlMugxoQhz3mTKOV7zT1Y66D302I4rBFaDpezTCXdRjIVjjx
	ZkRUe1aIytAYDSi0PiTF64o=
X-Google-Smtp-Source: ABdhPJwykSI/Wl/liuUv4uPQNo84n78YFk79Hzpnwrz1NWEiZyWd92GP7AsT0OC/pxiHTzgY/3+VrA==
X-Received: by 2002:a9d:6757:: with SMTP id w23mr9791360otm.277.1624029074957;
        Fri, 18 Jun 2021 08:11:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:bd6:: with SMTP id o22ls3079015oik.1.gmail; Fri, 18
 Jun 2021 08:11:14 -0700 (PDT)
X-Received: by 2002:aca:d5cd:: with SMTP id m196mr14900556oig.138.1624029074581;
        Fri, 18 Jun 2021 08:11:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624029074; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGqVqd9RvBHvFUlthSQkHwN4NITlUCfVNQfRY9RkeQ0U/OX3vGFvygBoZ/h1IVnJQK
         ms011QO6HySylAoIiRhx62q0VK91acxXWGyKXU07HBkvf0hH0qBnlHhjUAYmqwIt1Mez
         5JnNPqYyUvnBYOsrjgQxdQl5nsF1RgBuqrWwcd174vxGyTwDp4t0ahe+bBD25ubWL8ZY
         qr8bGxXgZ3T0kl/dbC147+4FQSFbJqJ0PpO8CJgyKH9TJQPfyykEbpneKZjEliQvrAj1
         jLHS1JSawctA3WKaqysfqqe4SzJEscGh8S/CAZS3Vxa2bTmQvvYJ2wb7wCqgrT6PD1wR
         kNKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lq8b6lu52RBv38ICh0f7cbU8dbRkKb3DBfkA3K9CkHQ=;
        b=ePdG0ZWWxA54szCx/JflW1DfZ44OP/jdx0d00fmY+04g0geA83DunBeGMdoay+Lr66
         H4uTIWbVF26zC1shwCH9Ai/n7XQeJXM8gKS4TZK+yBn2PI2BvruNgA/6CdHb5BShWwDF
         XO+Mih70k5MdqmWPZBHBd1K8iHIsr8Ko25BmTXvEkLaI63gzhu8N1oKdZ8cLZqSaiw/S
         kFlFY+Pv7tDQ/wIT7Zqy6B7ra6qNE3K9j86jpEadMlXuUNkNiEY0Qn6o4Pu7QgQ4k+nA
         Gg+22j2b8vdweNPUoQwK35N6SeK14FNLZ/OAizLCXXwNPZvfovQSYk8scp7BoICh5XzO
         L+GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=TumxaM6d;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates 40.107.220.62 as permitted sender) smtp.mailfrom=treding@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2062.outbound.protection.outlook.com. [40.107.220.62])
        by gmr-mx.google.com with ESMTPS id d13si1220242oti.0.2021.06.18.08.11.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 08:11:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of treding@nvidia.com designates 40.107.220.62 as permitted sender) client-ip=40.107.220.62;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eUAwZdeNC3NPvz0cnR5O7YVi9OgJIc0PjoGlQAiEHOt7SeWkyfiiLKujM51cBwGBNWV3wxEFKn8BGsK3WVxDsrg5rhSqyHgOLYyl7uab06O7IUfGO/CHdMdtmiNUPZ/kuf2xoJr40jZLU17VQOm7euzifWMp9pOxq4/tD0VnRidLvYiif77R95w115ZdmCCr4XrABikE1rwRtyWKjlrcLWYDm/pZ5oDLp+qe3fCHyfjlty6MaB7VKspeAisaE3SuFlJqsGUOGCewZ8Zs3CwKQmcZFg/vB3AZB3VaVVhV6K1vgsXxLTNSgVDXHfkXLtiNd+9lnxfxsKCGwqjDjlrNsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lq8b6lu52RBv38ICh0f7cbU8dbRkKb3DBfkA3K9CkHQ=;
 b=eNzIwqiCDb25TPq1bNH4OpcVDhMezWF6g3ipgos2fMKgcUp7xFf/NesfTZQ9JMaKIRKK9W2aLP1JoCErVDovLMaemjYqFsVsKo8wH9+wUSy+MqNSemDNoaziPzNcdUExjRwnMqaSMeFDmWWTnzPHEeGKKLzZvvg3CC7GtdT16VgL0q4AmBUr7q4okdA5hkRrxvxI5+arKY/JzZvrl/0GRpXeFrEI5lJM7Ut26BgAY/mgiBcknoemGmAzwguPjy1q5fAyMAddGoH9NZAJPQ0qrAYgpz2BV6+IZGk41Q3z7yb/VqH5fwDcAiIaKNFt+Rwy/DoPLC90pgQ20ZwHiaBO4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=lists.01.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from DM5PR1401CA0014.namprd14.prod.outlook.com (2603:10b6:4:4a::24)
 by DM5PR12MB2405.namprd12.prod.outlook.com (2603:10b6:4:b2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Fri, 18 Jun
 2021 15:11:12 +0000
Received: from DM6NAM11FT025.eop-nam11.prod.protection.outlook.com
 (2603:10b6:4:4a:cafe::fc) by DM5PR1401CA0014.outlook.office365.com
 (2603:10b6:4:4a::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend
 Transport; Fri, 18 Jun 2021 15:11:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; lists.01.org; dkim=none (message not signed)
 header.d=none;lists.01.org; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT025.mail.protection.outlook.com (10.13.172.197) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4242.16 via Frontend Transport; Fri, 18 Jun 2021 15:11:12 +0000
Received: from localhost (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 18 Jun
 2021 15:10:10 +0000
Date: Fri, 18 Jun 2021 17:11:59 +0200
From: Thierry Reding <treding@nvidia.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Matthew Wilcox <willy@infradead.org>, kernel test robot <lkp@intel.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, Dmitry Osipenko <digetx@gmail.com>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
Message-ID: <YMy3vzoCASjYSzFL@orome.fritz.box>
References: <202106182243.KgZxMD9A-lkp@intel.com>
 <YMyzKmDO+SJt8n4N@orome.fritz.box>
 <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
 <YMy1DpeyrYm/pwYF@casper.infradead.org>
 <6188a28e-8184-fbb0-6e49-1c674dbf84a7@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yzQbRlx3kZ3lEUXs"
Content-Disposition: inline
In-Reply-To: <6188a28e-8184-fbb0-6e49-1c674dbf84a7@kernel.org>
X-NVConfidentiality: public
User-Agent: Mutt/2.0.7 (481f3800) (2021-05-04)
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dcf326a3-7c42-4900-c052-08d9326b4f3e
X-MS-TrafficTypeDiagnostic: DM5PR12MB2405:
X-Microsoft-Antispam-PRVS: <DM5PR12MB2405C54E8E6C40200C2B1813CF0D9@DM5PR12MB2405.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /g6QB3e4wFe6v9HUP6INPqck7kQG+RSf0TvNLzTgxzN9zl7+81fk4SRaBB/2Is0tQccLw+MK2GMUriPXPfdszkYsvyNjDXt3V7UtV/phtn8pKsuO/5GuDO914Bv/hNIvZJJCeONMNCdtXutDImNdpOwctOYkXAcXsAuDevBeZEBzvkfizHU6PVQYgsbYBgsf//qLcT8dSkBtfuKwfOOKomHvS4vmwfMApcfmlYzJfj40q/L0VbkaeZ35kDh4itKReUJLAJM9jvcWAj5CZRe7/ZYuRkncdfBMP5rxk2u6Hnbo3n1FmXoWU2UWE9WPYMHbpClXLB7sEneO9z4Tm+0+rxB99kWPGUPl5XFtuN8LoXyT2cEzVypF75aPHpvH4gW3UCll9PpxqDXR5QS/P2F+wC1CqHyjMpn+VzPhjJbrc9ObB5vdi2W77mfnGM2e0Lr0ZSGKoQusvbmkNEpZXVpGsBxhd9uT3H5Nl5nxrteLn8mUPXVfFqndg4dc7x69sKQTnZZhvRqJ2k7Qjam7qG8Okfzxz37f/L53x1F/liWYFEo6FTn1fz968pPQ6fw6d5VLSj/LeBdQzw15eRhKhxFHnaaTUsIQ4wzPbyiF/SIJvW/kZTfq8spckR7oIUrx8CuMEJ0PoxcCPGNKg37N08tE2sRmdIWwXgnapd7hgPwj+KIXX4ATCLsKIStIDM8F/TeJ
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(376002)(136003)(396003)(39860400002)(346002)(46966006)(36840700001)(47076005)(86362001)(336012)(82740400003)(70586007)(426003)(6666004)(36860700001)(316002)(478600001)(70206006)(6916009)(9686003)(21480400003)(53546011)(186003)(8936002)(83380400001)(26005)(16526019)(54906003)(7636003)(2906002)(82310400003)(8676002)(44144004)(5660300002)(356005)(4326008)(2700100001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 15:11:12.0878
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dcf326a3-7c42-4900-c052-08d9326b4f3e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT025.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2405
X-Original-Sender: treding@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=TumxaM6d;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of treding@nvidia.com designates
 40.107.220.62 as permitted sender) smtp.mailfrom=treding@nvidia.com;
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

--yzQbRlx3kZ3lEUXs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Jun 18, 2021 at 05:05:30PM +0200, Krzysztof Kozlowski wrote:
> On 18/06/2021 17:00, Matthew Wilcox wrote:
> > On Fri, Jun 18, 2021 at 04:55:23PM +0200, Krzysztof Kozlowski wrote:
> >> These are randconfigs, so I don't think Linus will hit them when
> >> merging. Therefore assuming the reset-stubs are applied (and tree is in
> >> next), we should be fine, shouldn't we?
> > 
> > It's a bisection hazard.  Please fix it before the merge.  This is
> > exactly the kind of thing that linux-next is designed to detect.
> 
> Still hazard for a compile testing configuration, not a real bisection
> for troubleshooting bugs. You cannot hit the bug in any real case (so
> !COMPILE_TEST).

I think you could hit this in legit configurations where people want to
build ARM_SMMU but not TEGRA_MC. So it's either a dependency that we
need or the stubs. But I think you could squash the stub patch that I
sent into your tree if you can rebase that. The patch that the stub
should go into is this:

	393d66fd2cac ("memory: tegra: Implement SID override programming")

Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMy3vzoCASjYSzFL%40orome.fritz.box.

--yzQbRlx3kZ3lEUXs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmDMt7wACgkQ3SOs138+
s6H4Kg//Z1W7l0wPu7YKXjQpPoGcjPVYG7p/1+yFHoRdVlwPyLbIZkR/TMJRMIlv
13ZwcNLRWwC2hVWvzroc4a3wuM178muJq9hnQ/IeZKaXhxQ7WKapDSRWJhSl82/8
cDcH+4/10JDSp4KrfKttigzU6iHgYlIbD+Vry2rU3eP9I2mB4fjAzkKL+g8b1jrn
E1s1v5ASUGBROffPL3+klwzjrGp4W/98TQOyCw3CL/GpviN+pGWJrCQzRXnu9CdB
f87ggUc2bnoSf7iirVKRXh8eSjasyDoS93Vm3mVN02YseIvCF7WbKAN//q63edOe
ogbk75QxjlYBOgwPBKfTt95SL7GGvv3Bku0tplH0GwuDlBvpi8wbi09JRysexoIe
eKjCfLjUTKcxnn31ZUbTbH6jh/mDgetr6p0ZCTY69uMP4bzX5L98ti+e7udX0uSq
S5BmxsKsOBhMiOOAU1IQQ4aqXWeXOd6cwceacD4WNvckJG0KXjAgxVBOs//YgLS3
FD7dzKvBEPX1bc22CJtbDUbUx6kT0TtW7BGPeJL8Di7cLrWNgu7CGL1ZMuF7eX/r
gDiAWt6ZHrjHtvszm9u8v1lOOmRUmPKmQgOAU8ETTAxneG/J8UqzmY/vPyvYl5rv
XuO+M6FiuYsFQPbdmfwiPjUZMMMpzo8hAX0zDdRREvDYjZYfqEc=
=ta1d
-----END PGP SIGNATURE-----

--yzQbRlx3kZ3lEUXs--
