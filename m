Return-Path: <clang-built-linux+bncBCN77QHK3UIBBF65673QKGQEHIUXKIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B08821263B
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 16:26:33 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id gp8sf20136912pjb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 07:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iFDc5xWyGpBf0AwCjzZ+JBDvp6oJXAWn/kjKhDv75f4=;
        b=LBVmuWfMAYTN3RN7oActI+YAEesHdMQpv8PgYecIeTHoQN6NrXSpEC+dO7GlClGeS4
         raywa9hYXRNZAb/VHq8kq13TjFqxsdtZPQLhQF77VY8d+JblG8TuCshIFBoqQUBMO2aD
         5uljac32dMtSxAj+cmaOHVAcIwABdm6ZooF0Xe6j9PG0qRaOQkks5cDtllf9eJgbG6+e
         rY43aPKQMjGDWXx0odPggJ9hRWq4gJas5Z//p5VBEROqJ7RyiwIIn6TfVrVvt58akfeK
         fggfmhf+jCP6yfYq+YO7GcfSPlA7AqmXkCrr0eevrFjCC4U76OPy7aklyExcRShQSlmY
         1GnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iFDc5xWyGpBf0AwCjzZ+JBDvp6oJXAWn/kjKhDv75f4=;
        b=GwbzPkv5iU4xU/vZ5W41tCX2hP6vSyAFRMhdYqkOOt434s7c5J/jyMgI2AVJtoOxT3
         TbmKn2KQK1MWcI9FxNhTWo60PDA/YUOn7hwvZl71Ftm/Gel1Jcdb3aR147QqdIovR25j
         Yr9RV1duPiYdV3DWvAcxFFKEKjpaMZjVma/D62Y9gJnPPoRMXLFKNQ7d0bcIP9MQima2
         rmPa2ZkRf48+xvSIkfEEs4neL5+nyPJypJ48LmHNZHPbpShpe+lBJ3h3faikAob120rx
         RzL8lvXr8pxUM9ypM3NmMSjTc38gjbFpekhcVDTaFXj5oPLTko+i41xD04Z7tJOG8y4R
         T+6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324qWtA2CoALSjtyG00E+vT/GHcK7skEIxIdaJv3813MbMrrLus
	LUJjJw+f8XwcVXaNfyVKR6k=
X-Google-Smtp-Source: ABdhPJyL71eGMlEPfjyOJGyG4xH643zQ1pucVRG1aq9cf1rT0fdb5q/gJVRXEMoa9EkK2LYfxWDrVw==
X-Received: by 2002:a17:90b:247:: with SMTP id fz7mr32958616pjb.17.1593699991804;
        Thu, 02 Jul 2020 07:26:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:525b:: with SMTP id s27ls187679pgl.11.gmail; Thu, 02 Jul
 2020 07:26:31 -0700 (PDT)
X-Received: by 2002:a63:4d3:: with SMTP id 202mr24830223pge.14.1593699991303;
        Thu, 02 Jul 2020 07:26:31 -0700 (PDT)
Received: from nat-hk.nvidia.com (nat-hk.nvidia.com. [203.18.50.4])
        by gmr-mx.google.com with ESMTPS id i6si238311pgj.5.2020.07.02.07.26.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 07:26:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 203.18.50.4 as permitted sender) client-ip=203.18.50.4;
Received: from hkpgpgate101.nvidia.com (Not Verified[10.18.92.100]) by nat-hk.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5efdee940000>; Thu, 02 Jul 2020 22:26:29 +0800
Received: from HKMAIL103.nvidia.com ([10.18.16.12])
  by hkpgpgate101.nvidia.com (PGP Universal service);
  Thu, 02 Jul 2020 07:26:29 -0700
X-PGP-Universal: processed;
	by hkpgpgate101.nvidia.com on Thu, 02 Jul 2020 07:26:29 -0700
Received: from HKMAIL103.nvidia.com (10.18.16.12) by HKMAIL103.nvidia.com
 (10.18.16.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 2 Jul
 2020 14:26:24 +0000
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by HKMAIL103.nvidia.com (10.18.16.12) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 2 Jul 2020 14:26:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nbZ/oPY088Sw3QZVl5fj8oPoDOJp5bp1u9RHDEdLs9yYhzWFEcGB1JhvSarSbFkeJuTSlKaBtmsa/djWhtg6z0jHLJ0+lrehf9GnojbPE/lhJ0br/Oa1BB1zeLqif20jYM0jv//oCQ69hNuQK5rA0a5GxYSVmCNyH2Qv07Tlf1cO52yny9XC+z+fdZZ1AwsnYm/3eVdTd8gL3qxKVMVR7STAu+1qIeGJ6dPUh+pH6E8+Es+/7QymVM9mng3zBJRgmTzK/qYnfJrtXrowFyfwQSU6QWGRVJIt3945zb/qLRXsWm65xkbXdSurLv1BrFaVt10ibL1OyrN0th6X7ZytnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hs0z+lIOV4W67PKp+DKJ6IAOz914FX8jb8f/nDgCt7w=;
 b=U2Q+vuaGC/r4tSSGoRvvKtai4YWRl7b45gtRdyAmK31CP5HJSEmy5KwcTpuQWV7RFkzfC7posZGenUD75NO/UxHwyDt0L+sKzaCK/YFpxC1wfWrzv98AOheNoi73sP3Qfm3KIUCD/+k7AyscTtScM6kWiasZ+4XiZsJh1p+lVjOvCQswzwQWVnN0yPifEt+mgR9NBjDK1ZP/O4UbfA1lUgcnR31KlmUGDj1nRq+uwwZ3QzFMMADggn1/y7gcayMAoC4uzQVXjWWYlTZ0tVtQ5oVUehIGh0VRNwlxv+8Ool7OSOciTOJyaikBAoyliwN3X6PR7/PdfuBVDFfl5r6Z0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM6PR12MB4578.namprd12.prod.outlook.com (2603:10b6:5:2a9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Thu, 2 Jul
 2020 14:26:21 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::1d53:7cb4:c3d7:2b54]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::1d53:7cb4:c3d7:2b54%6]) with mapi id 15.20.3153.027; Thu, 2 Jul 2020
 14:26:21 +0000
Date: Thu, 2 Jul 2020 11:26:16 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Mike Marciniszyn <mike.marciniszyn@intel.com>, Dennis Dalessandro
	<dennis.dalessandro@intel.com>, Doug Ledford <dledford@redhat.com>,
	<linux-rdma@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] IB/hfi1: Add explicit cast OPA_MTU_8192 to 'enum ib_mtu'
Message-ID: <20200702142616.GA702824@nvidia.com>
References: <20200623005224.492239-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200623005224.492239-1-natechancellor@gmail.com>
X-ClientProxiedBy: MN2PR15CA0026.namprd15.prod.outlook.com
 (2603:10b6:208:1b4::39) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (193.47.165.251) by MN2PR15CA0026.namprd15.prod.outlook.com (2603:10b6:208:1b4::39) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.23 via Frontend Transport; Thu, 2 Jul 2020 14:26:21 +0000
Received: from jgg by mlx with local (Exim 4.93)	(envelope-from <jgg@nvidia.com>)	id 1jr0AK-002wqR-IN; Thu, 02 Jul 2020 11:26:16 -0300
X-Originating-IP: [193.47.165.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8487fbd1-d99d-4f71-3995-08d81e93e47a
X-MS-TrafficTypeDiagnostic: DM6PR12MB4578:
X-Microsoft-Antispam-PRVS: <DM6PR12MB4578A049607C198DF6244CBDC26D0@DM6PR12MB4578.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0452022BE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GOnr1QEwCsSdE3WMie5JE6/YLVcnXx3ofGJqyULlYAxL5funEg1sVkmVKbdfK9IB+b1l6yUiRII/L40gIRP4JgDA2Dt/0Q4N04u+SwoDzLUsXnMjNVTjY9ylZEDxlBKoTSP5lgpE9RaM8ez2x5+qSGxpkdM6PJ4lbNIVwAjqLecnY2ap9WJhzfZ40x3X5xGeaOZORNW06uckDErau3bbwlNfbriAwh1JUscGsvInl7NMH4qj+eo39aUB+O+a0q8dcBtKPxCt+lPmbqgvnFKUEa/qXcuujg7ShZ9eecaF38FIuq4PaLDFFEPnP43E5YGbsjUIaPN5OIEgo/NKkuMGjgWnA5IeuiaeGeB4zpGm52HwQMYD+tQljQCnE3Y/pq7BhbUx1iqMltJyFnpvVdbcOyVeBJoa0jg8I7YxtZDq3Eq0HsCaJNjnKNa6SUO6LGCb3M4QRvgV2pqymu8QxkzXgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3834.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(26005)(966005)(9746002)(4326008)(9786002)(2906002)(316002)(33656002)(478600001)(1076003)(2616005)(426003)(8676002)(8936002)(86362001)(66946007)(83380400001)(54906003)(66476007)(186003)(66556008)(5660300002)(6916009)(36756003)(27376004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: A+bSCtAyQGsu2CjCuCLuxYxs4Iu8wFXkCNzTRn/yOKWk2omMW05pZrlodrZtB6YrRXb+m7rhARoXojfy2yQPyYRbC0/i0FTcHVYtGX67g6FqpPwPolq5BTuBCQNi5jEjzt1BhaohxQKdG4AktgsQ3DlezWuvoG8FlQxMW90FfIUoDrhXSmnSQPvR13xelgDj9ywKWXTsQoNG+NazlZZCrxGAEDMPCwID7OzxUTXzWblptz7WQnzrbO5YqXsvo/fRIb78JhnGOejc3TRzVX/4KvUSWlK8UUbuTBT0yw+6e3NwT8McsY6FrDnYD41Meaxm6Ro8znFemVMYq8Yer47S95zzgDJ+ZQjqHfQi5w1U++D3nXeMTN2gFXrQhlCaXa7ZtLIRTU1dRbnd7k4gkuqbi7Iw2F4X16zRfBIq/u09wMFTcfEt4n/KWTDPpSr3Cg/42gArWIAcEm/w18iePh6ibyxoTxZETJIcDp2S/SK4qWRGV0h7DFWeVXPWbVo/If99
X-MS-Exchange-CrossTenant-Network-Message-Id: 8487fbd1-d99d-4f71-3995-08d81e93e47a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3834.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2020 14:26:21.7195
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DLbz1d7qgV4XryQrDebhtxhzyGyn40RBfxBFfz9XUeK7CJ7yMThMRBWu7QbGVke1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4578
X-OriginatorOrg: Nvidia.com
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=p4CLfPqa;       arc=fail (signature
 failed);       spf=pass (google.com: domain of jgg@nvidia.com designates
 203.18.50.4 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Jun 22, 2020 at 05:52:24PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversion from
> enumeration type 'enum opa_mtu' to different enumeration type 'enum
> ib_mtu' [-Wenum-conversion]
>                 mtu = OPA_MTU_8192;
>                     ~ ^~~~~~~~~~~~
> 1 warning generated.
> 
> enum opa_mtu extends enum ib_mtu. There are typically two ways to deal
> with this:
> 
> * Remove the expected types and just use 'int' for all parameters and
>   types.
> 
> * Explicitly cast the enums between each other.
> 
> This driver chooses to do the later so do the same thing here.
> 
> Fixes: 6d72344cf6c4 ("IB/ipoib: Increase ipoib Datagram mode MTU's upper limit")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1062
> Link: https://lore.kernel.org/linux-rdma/20200527040350.GA3118979@ubuntu-s3-xlarge-x86/
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Dennis Dalessandro <dennis.dalessandro@intel.com>
> ---
>  drivers/infiniband/hw/hfi1/qp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-rc, thanks

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702142616.GA702824%40nvidia.com.
