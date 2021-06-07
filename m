Return-Path: <clang-built-linux+bncBCN77QHK3UIBBGE37CCQMGQELWL2U3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EE339DC04
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 14:14:17 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id u129-20020a672e870000b029025ee4624bbbsf1343613vsu.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 05:14:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623068056; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2b9lByNQf0JeO4W1GDUQ/W/tezASd47vYqB02ApvqnDN+Y4hynK3PoE3MaWkcLQld
         wh0Qx+XSB+Fa0f6F4bz0RBHSQQ1C9U+uZgFj1kFVfHtzobuzM0FLevqRmNjki7w5Gjhg
         qBKbt0CVc9iBKJOP8qtUj4opLCUooEFc46YfUwX4UJgFdFqS6+Gf666FjV0P0EZdRk01
         /UDW9T/hkU6mvn73t4VALInScOrVZ2HzTirw0JP1E5L5Gos/3anUyMnMwhTBFplamQal
         u6z6x+oB5kMVxDqi3leqcov/7BRJ+zULs0NiJhZ+RWPpOxwTP0EvQajRQtfaLPcxwGRa
         oZDA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=GRaMt1846GZYS84tdEPb58SoktyyoXXf1wFRiHnTViA=;
        b=YpYThkkDzN/zaONaW7uCSAS1cb8lBirF3y9Gq/8+TMsx8SQC1GWALht+kMqPeUCYG5
         3DWxohbHwYhfnTQf5dJbXesHGPP0nbKR63WFFM/pW+FtMpVrq86yDHXRHxMZsxezpmF1
         gucpNCe7sszigCfEl6khYjUur5+BuZc5TAr0tqu4dS/44WuxPLIPvVz1UXy5DU5E8H5c
         +Qi7Dr28W5/Nsg7oAYkFMGds8GuQ2u+kwqV6IiX8m4Cx7OUDlMLcHQvBZVspwjOpXiVb
         233M7y2uzxyQRsVki4dYQMt2YQ7uDl0axxUcrwvhLPImdpsDVmJhVhwUKxMFHp4jqfOq
         Rr8A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=E2k+UnQV;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.73 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GRaMt1846GZYS84tdEPb58SoktyyoXXf1wFRiHnTViA=;
        b=nleS4anOM1a+8bloiJeJ/Ll2ApQcFGU9wsr+B+e7g59+IBMWtZZG6XIPHcnoEd8oj8
         rTQqzEklBVT1umhbRV1hr5Gwx9/25N0J9lLPzPtY7NR3HuZfo6iNv+Q4jWKCbcAisSYw
         Jh5tXVzS2PkhADmfVLUObyn8ueyYmA7NpqzptioevJNySh68oe0iq7MrD8MKJUvytvt8
         FKcgFmHdWb+TbdIETA+5ER9sIWpfGquVSC8l6Ls3IFKI45qWREMtnUml5yNV+f/85K8e
         PpN11HRftY6OkWAPArOx2dMviphJZCVMRF2UI8TLy035Nz2+3Yh2+G0orjr6IBZ9kyo8
         dPGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GRaMt1846GZYS84tdEPb58SoktyyoXXf1wFRiHnTViA=;
        b=kl9g1Y9AtDOFqc0WvUNZGdZWUOAcF/Ujzw79a4JfDuQ/qbbxehRftwSX+E0HuwR3TW
         4pSdwPwr2ECWmV+uy7NL1PUS4875csSzca9t6SaN/jm601oXF3AgXwIfRkDxfVgyZuqi
         ZRBkSjQu9hM9EUTWFdzY7C30kyv56tXW4wdmphRCiLeaaLnVylxagmHMXmDlR7YU5eCk
         +tvF7Z42OpE+f6j1/VlbZDb3/NGJaIu48DFFjST+BiKUcawYRQsNNN/l2rWsW9SRSSBN
         BbY7iClnzLuIs2vABQo6dtL3o1eifWvSr5P9giwJNyPFvang4rafGY0OXJZAWUwSYX+N
         utNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GBXMdQAqS2SSr9iI2ob2O1uOE3tLUXqohVnr9dOQfk6DArffn
	lMZ+JfykMzN4zg6g0f4Zbow=
X-Google-Smtp-Source: ABdhPJxWRUiYK+2MjUfN647qZYY/QkT/ScgzqD2qgKbGTPuIO9qup+LA4zIZpOE3qjOKzHG+8veszA==
X-Received: by 2002:ab0:4042:: with SMTP id h60mr9058150uad.133.1623068056763;
        Mon, 07 Jun 2021 05:14:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7050:: with SMTP id v16ls1808238ual.10.gmail; Mon, 07
 Jun 2021 05:14:16 -0700 (PDT)
X-Received: by 2002:ab0:7199:: with SMTP id l25mr9246943uao.6.1623068056235;
        Mon, 07 Jun 2021 05:14:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623068056; cv=pass;
        d=google.com; s=arc-20160816;
        b=wFtzVE/lLo1wq3mxUUz9VU1TeiPPL5abCtF3L/59d55aZDepawzvtcII7fF5kVOsQV
         vZvgVJMJC/xQfsubIa7TtKHFn112F7yb2YKYK/po9q1VzxPReqDhrB5RZF+e2OEPNdYs
         y3a2buZb9TQWymVlc364JX/IxK4QLVWBA7Rud4LwZ5gpJ93N8Ml5hofvHUoDwAGNjTUt
         Leskk8fohcDgob2czMadaiZb6ooKjFZQnFcGC3gf4lXjYDm/OTYsLaQUYFydTlcQmoai
         SxgwidoBHK4UsKav7howPjiMFUmUTcEl26CEi7HUt1+Ch4x3GYCX/MWNFjvq9Dxv3ZaM
         R7vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6GlhoFvrBgvEEpTTJB56ttHNxbEle3s9e54BpEp6W+k=;
        b=bMH80CSzEuVcnIa/+Ayyhs6CHWV5XS4gaoNQh0UsvMwq3OOM82gRMXii+gRmGrQXoi
         D6AOavOPH/jiafFIw6n4CQ8kl2JUSEklMU6r8nsHgVG9DiPKRvslxfYvnR2ku9/Jj/fG
         bwSTs6cLjS8NQItOYte8TuhZ+NA11S5lHG/ivW4QMO0iKEOkkTzafYfGf1balJvPmdiC
         poXROmsoHjefsV9kZgmLnkBR65xKxvhEQbqEH3TBU1qZCqcq3KR12nqpOEZElNZefKJp
         9gTd/o9PrRGhx19wPaaMCo0+sDw9LNpTUCEIis6LHHp3kJOxgSbtwbkPGicSEOKGcLD5
         +DCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=E2k+UnQV;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.73 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2073.outbound.protection.outlook.com. [40.107.236.73])
        by gmr-mx.google.com with ESMTPS id f7si1333176vsh.2.2021.06.07.05.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 05:14:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.236.73 as permitted sender) client-ip=40.107.236.73;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVIVNJdM2DUfIZ+ykQsx+qzxdvDlDvwxTQ/AMRkrLI7WqxkdNTGFYRHLMFXq4QK3t3epobedYpYdfl/x8iHNP647KqCYRDtMIeYvgmzx6Ps0cLkXpWc/aANcqNIOh1zHeEy0Q258gWNYf84tolsplVu4lVctpTFWj0U44w69FD6G79TUmASm/3Y73AfhO2HD4ZMaXrJhcrx8Mv6NjSFCypMnoF2H6j8FGkyZUTEB4+WQ4q8AiYyHWRkdbDpV8RX48/Zarjs19B9s+nH7vibmnxbDseSDK0M/p5hgQ7qgBskMrk9Fp9/9e7Q8X8RszIp1wJSkmcy0mGFX/ecfst38Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6GlhoFvrBgvEEpTTJB56ttHNxbEle3s9e54BpEp6W+k=;
 b=Q5rrbBM00SeTrCnmpB1g3qQIXe12EwnaJZVXHSY3Xi6oX7DLVCalX00cxJ05dAfb/hbESuxWu3asyyxlAd0yHMgfp7OGPctCyME+grPoXNELBZ3Hqsrj2cmdcY7F3QH7v7cRXIi4AsYqNRECpRegE3eiY4qmBAFfvfLioDQPjMPSHOBkhGmpjCDfjNHGV7jEXkQ1ceYcHls6y/5IPo1wKfGNzhgrLWnjBChLfZkgUOb5sdvszgS02Sic94qA+80rd5WIcE+U0EIRmLGXV61hZpTqh1Q0mXz1Dcgx7ZSvCdR8LB/XVSCRHLZHuZeIvvk9kdtLVQThkil4yE4sFg0urw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5047.namprd12.prod.outlook.com (2603:10b6:208:31a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Mon, 7 Jun
 2021 12:14:15 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e%6]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 12:14:13 +0000
Date: Mon, 7 Jun 2021 09:14:11 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Leon Romanovsky <leon@kernel.org>, Doug Ledford <dledford@redhat.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Message-ID: <20210607121411.GC1002214@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL3z/xpm5EYHFuZs@kroah.com>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: BLAPR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:208:32e::24) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by BLAPR03CA0139.namprd03.prod.outlook.com (2603:10b6:208:32e::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22 via Frontend Transport; Mon, 7 Jun 2021 12:14:12 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1lqE8x-003GId-TF; Mon, 07 Jun 2021 09:14:11 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a48c6dc1-5813-4368-1ac5-08d929adc318
X-MS-TrafficTypeDiagnostic: BL1PR12MB5047:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL1PR12MB5047DAA0C4C12CA108776FB1C2389@BL1PR12MB5047.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6O7NDsNbqlKiyWmp36wHnBrocCbTvDBpuRcAoKOya/S2R+/8icgLWs6us+tMnkJNqZJ7puxPccSwUrwr1ozs6mg3ALSijGVmG3PK7hk2qc1faDnckmFlGEUDDs16u9+c06siLrfMAstHqd/4BUEPh8UogMVbI+v6PBHib3Hi0RTcPNHgxs6g3IQ42BHUtJkPoaqKhr3ARv4XaVjdUO2bkmtRInopNXfHz0U5t91f/+s/1YyfSDIDXG+FQgovLGcm2csMMAjcXsDx4K8tJiKyNxHlnoh28EugH6WjJskpaJQD7TS3haXM6erkKX0hyXa1eyVe/08AzwPsfc3tU76u5sd99HAn91QJ2iZAM7sk7BUGDTZHekCMxq5JGxx1ZZVuFPBjwHosP6UAErzHSoDXFJES/ypfHeG7FicCHSobHyJceYdydwr+te8+kUQWSobDcgI8hBJhDvkVFS9NaTU8mEkVlRvFJeFpWYJZphIbSuDKwwXPSDTRDA7Ufag9a5nN2tWO5YVoCzTxV6sfpBdVS/vaXW9BrmVgrJc3g8+gisP1ivL7UzQ/Cy7HTm7TfCTS3rGY4XFEgvHdzCrbiuK5eg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(8936002)(8676002)(4744005)(6916009)(478600001)(83380400001)(5660300002)(426003)(38100700002)(2616005)(1076003)(7416002)(26005)(316002)(186003)(66476007)(86362001)(36756003)(33656002)(54906003)(66946007)(66556008)(4326008)(9746002)(9786002)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?u6zhcPsbzJF60/EsNTYg1Ek+HDGsrnolvkHsfxTAu81LvoD0JYsw6r5J5xjq?=
 =?us-ascii?Q?8M6Rd+6vtLGUrVo5d4/flbASLWPjGxL8P50MT2Da8/kB38WQAWAv9xXuOhZN?=
 =?us-ascii?Q?aBW9lplRxtYLCv1ufmAb+Cj7FcJqCIQKaJOrt31/uxvF59QyKLodrpVi57p+?=
 =?us-ascii?Q?Iulf4fUCyB78LNxCoki4AwNy6BVtuPQEGp1nsvds6vwzTcH7W6MCokf8QL8G?=
 =?us-ascii?Q?4JZKOuMhFd9o39D7qmOvSBZOO3pAnkIEwTMts/+Sazkirqck06VsI+EnSCBa?=
 =?us-ascii?Q?u2+4ePnmg4JrvypACPCbAgkzSsCD/uXrDxrRj5uQCwFdKX0TpZdFU63Z3M0N?=
 =?us-ascii?Q?3NQu/8wlpGEyhyCH7fDXPzn0Ma5XtsSZmn7LWhZVNCTQFpJesObQ58hkl+kT?=
 =?us-ascii?Q?Zbef39RwSPqAYUg5Q4hiel2YmkDA1GZFJ1vU2c61uQjlIdX79bEFzXKHI6oX?=
 =?us-ascii?Q?WwZKxqXlTaZGtUPvFxWOna7O2u8759YEiYvSzBMTV3EELgBm2ffSqoV1sy5M?=
 =?us-ascii?Q?MhLziThFuxgw7iQpwhcPgilWHHEHGgUMha1WXXJ+XlgyJPys88qcGqeS30q1?=
 =?us-ascii?Q?CkTtQ6YJEeaN0fRucHwpZotiI4Kj0zrz2gs3DLKBBFkpDho2nYkF61qtKFDN?=
 =?us-ascii?Q?sDBt2UHsyIaZlHWnLiVmhTPshF+PUfLwKu491yYQA+q871hvCuaPU//veG7s?=
 =?us-ascii?Q?dlm6pOS4ZtsM74MmoDOL9/6yBq4vfMQNr1YuvrAKvVbDla3mUUrcZPZMQJwk?=
 =?us-ascii?Q?e211/xDAK1FX3t3ZKxnPz5/dxdWtzi1dOBd6jPfPytFVMNVAD+D/IkNUEVoy?=
 =?us-ascii?Q?XMxppbxuAZhIaUcCQsbE3VDpzNpq569O/NA0jzanb0S20aoC31L0TUQZhxP3?=
 =?us-ascii?Q?8+jaenlopwKUJ9FVeZXQ8OBvENRg5m2Opc4DuFktfAUJG3geUdSr/0cOYjHs?=
 =?us-ascii?Q?YpIYn1bN/ELezvkHz9/ecr9Eb03GUaKE0wuaGB0ly1D1ftgHLQhko1MiwUCy?=
 =?us-ascii?Q?LJ70HPW6bzJ7rDeCLwOeaPQJ/M4JU4T7OP8SGS1TZ90fhD7dz/kSYRQy7joV?=
 =?us-ascii?Q?h5//wcZh/ZjD1LrvkjEZAeKgQKVrItBxl6m9rfobg9URMDgIhqsDwAAtvd9T?=
 =?us-ascii?Q?uq2Ro+KBlLH3MkRTvKft5dAO2j6rw7Ad0vqCG0AiN6kXi/yQtq2MaP8+ACpB?=
 =?us-ascii?Q?+X5DW8vcaxn2Eg9kNnGSC8VD3cFPXYMHnW2jGIUn9Qr4G5zPiacchh8pBLzc?=
 =?us-ascii?Q?IaK3dDwR3iAfX4XD7GiNHreRYF+o4Jfa9OLhj4IegPEZzuwvQ0CLCdUfsEXU?=
 =?us-ascii?Q?oEeSWnOTE0b36iZTXFP/a4Qr?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a48c6dc1-5813-4368-1ac5-08d929adc318
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 12:14:13.1014
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 85v1dMoRgRsG4fTYChQWHxsnjY0VHN1N5zuFX2Kj5VqX5XalML9F05BWE0mKD8t1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5047
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=E2k+UnQV;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.236.73 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > 
> > This code is trying to attach a list of counters grouped into 4 groups to
> > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > everything naturally as an ib_port_attribute and add a single
> > attribute_groups list.
> > 
> > Remove all the naked kobject manipulations.
> 
> Much nicer.
> 
> But why do you need your counters to be atomic in the first place?  What
> are they counting that requires this?  

The write side of the counter is being updated from concurrent kernel
threads without locking, so this is an atomic because the write side
needs atomic_add().

Making them a naked u64 will cause significant corruption on the write
side, and packet counters that are not accurate after quiescence are
not very useful things.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210607121411.GC1002214%40nvidia.com.
