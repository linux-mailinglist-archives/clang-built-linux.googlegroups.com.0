Return-Path: <clang-built-linux+bncBCN77QHK3UIBBK6YSCAQMGQEW35JC5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id D1107316F4E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 19:55:40 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id m16sf485177vsq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 10:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BINvwvEiyIGfG6lEir9e5NOPR5/NsYP9/vwpGnHUwD8=;
        b=XJvx5fqe4TNSfmxUmQL6DzluKC6V87rdPbrO5QVkHjA2n1LAIzDzqDfBBYPr7JWbJm
         jn9QxnMhRCYSvDivUIZ3iqg+yHuFUCHHtyfWx6ckPps3147SoaBIynRGKTaDYLJ33rA/
         PHGESlcPMUjTxgKfDqyQokDj9z5pEIFzbWk3W1xL+jHdcEEAQp7WaygeLqTNi90YQCFH
         IgJhT5a6gCOLJKvZIk8eMRsZ4C6lLkT7FrIre+jMkD18E2bGWRRmreQUrqWZbJO9eZnF
         lo0vAjiyFDPiWRGsR2LIuvJ1VF+YUiY77/kKQmduaPe1piYU0puAyFQfyUw+YCDOYwBS
         vYiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BINvwvEiyIGfG6lEir9e5NOPR5/NsYP9/vwpGnHUwD8=;
        b=taZJAkR1PrVpbwUUVBiEZhd5cLbXISzaJbm/xiIPlZ24UhjndkeIWukMreOVN/zsKH
         vu22/k/gSfxcXNh8PcTuxk86dO0/eJiwkYxrkd5vOg0GNOpgEtLwhth1Na4YjXzPdsW/
         uhJf+5oheAlSWHMANH6CleIJGg0DxvSpFU6psd0E10tgubzYwj6pBON8+DlvKVautXHG
         I3zs0G3gu4JRUJzXQJ0fs2QJQQE+OjQ4Y53aXj6lK44nrXwaEPMaPK2i/eFtF3yRc/HH
         uKKb69hD2t18+iRKpddRxvDkuu3TRCxc/MlqgnW1dPqCdEkTxXUt9a8KxpHeP6QkI0gW
         brbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530s0J5Fbnx4doKdY6BH41zUetULM+MIMw6i9YwJYjFLrtZgLawf
	JbH3NyHwHiYW4R2Bh2dTXGY=
X-Google-Smtp-Source: ABdhPJzk5g+ihVkU8pgzupFdh6oIh/0HWB5RMfDj4PutfyRhCYd0HtzJirVI1K4jH7MyqCyNbE95Ug==
X-Received: by 2002:a67:b42:: with SMTP id 63mr3204547vsl.50.1612983339936;
        Wed, 10 Feb 2021 10:55:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22d2:: with SMTP id z18ls219333uam.5.gmail; Wed, 10 Feb
 2021 10:55:39 -0800 (PST)
X-Received: by 2002:a9f:2828:: with SMTP id c37mr2782792uac.130.1612983339451;
        Wed, 10 Feb 2021 10:55:39 -0800 (PST)
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id e11si193896vkp.4.2021.02.10.10.55.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 10:55:39 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B60242c2a0000>; Wed, 10 Feb 2021 10:55:38 -0800
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Feb
 2021 18:55:37 +0000
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 10 Feb 2021 18:55:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E8bOV4Ueq91K0CbsOYnPHz8D9+XUKPR0I1LoeYqUkP5jtclHQEaRWBDSyYjd8sc2n1rTFHVAwf7mZvEzrmPPly2tK4NBN7WpXC/m/PtE9Msj02d34wrS530Cl0TBclS0JSKXXWIIrXPiifRcS3P+j2OGelJV5xa0VPiW85anEoZBRNFlicu/cU+d8Ki70fbvKIr6d56UYX6cd0c7loWNaLgbROtKljU3Fng2Pg48pDs7H+z68uw9EkYjWVB0lv/Y2M4uf+Psjlv51h8O3oHHJwlVfxymxD7FIIUeTXglVOmo0zuPfGFeZr9YinOX9cyovh7iqTAuPghVrud/crXPtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rYgPlsnyvQtj7YL3GZ4IO1yLvnODq9d0qB/LeIoo8x0=;
 b=ardn2IPjbnPXxWvvcN4BgMp33U6ECWB5kUOAml3LKFSdUJW/64hdNh1YUG1mlKQ1VHmHCd9LnxLYlqd0Fr4NL4/Y9m3r36FRqXoqFx5pumxMy249R6SetmOyatv3vOn5S31VLzm3LJZydUIglcyikonMykgaRFa89g5B1Vvnj0djhmOVRHDZ+bmMOo+E/+EzGygRvs2+wnBU5PGfy2l5HziDx6+2qcAjIsJ08RzT+WiTJFTJTCiWy99lsfjA/FnLA1n2KdMisz6DP3BVRvDA2ZmPo7sRPdMQd5NJRNHJo81UEPdBbfynfyb1aLgm/2T0TyUxRRC/KoUtpxqsEo48nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM5PR1201MB2489.namprd12.prod.outlook.com (2603:10b6:3:e2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.30; Wed, 10 Feb
 2021 18:55:36 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::d6b:736:fa28:5e4]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::d6b:736:fa28:5e4%7]) with mapi id 15.20.3846.027; Wed, 10 Feb 2021
 18:55:36 +0000
Date: Wed, 10 Feb 2021 14:55:34 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: Andrew Lunn <andrew@lunn.ch>, Nathan Chancellor <nathan@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>, netdev <netdev@vger.kernel.org>,
	David Miller <davem@davemloft.net>, Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH RFC/RFT 0/2] W=1 by default for Ethernet PHY subsystem
Message-ID: <20210210185534.GF4247@nvidia.com>
References: <20200919190258.3673246-1-andrew@lunn.ch>
 <CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
 <20200920145351.GB3689762@lunn.ch> <20210210183917.GA1471624@nvidia.com>
 <20210210104329.3ecf3dd5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210210104329.3ecf3dd5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-ClientProxiedBy: MN2PR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:208:fc::42) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (142.162.115.133) by MN2PR02CA0029.namprd02.prod.outlook.com (2603:10b6:208:fc::42) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27 via Frontend Transport; Wed, 10 Feb 2021 18:55:36 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1l9ueE-006BGe-Uk; Wed, 10 Feb 2021 14:55:34 -0400
X-Header: ProcessedBy-CMR-outbound
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=Q8ewS7KG;       arc=fail (signature
 failed);       spf=pass (google.com: domain of jgg@nvidia.com designates
 216.228.121.65 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Wed, Feb 10, 2021 at 10:43:29AM -0800, Jakub Kicinski wrote:
> On Wed, 10 Feb 2021 14:39:17 -0400 Jason Gunthorpe wrote:
> > On Sun, Sep 20, 2020 at 04:53:51PM +0200, Andrew Lunn wrote:
> > 
> > > How often are new W=1 flags added? My patch exported
> > > KBUILD_CFLAGS_WARN1. How about instead we export
> > > KBUILD_CFLAGS_WARN1_20200920. A subsystem can then sign up to being
> > > W=1 clean as for the 20200920 definition of W=1.  
> > 
> > I think this is a reasonable idea.
> > 
> > I'm hitting exactly the issue this series is trying to solve, Lee
> > invested a lot of effort to make drivers/infiniband/ W=1 clean, but
> > as maintainer I can't sustain this since there is no easy way to have
> > a warning free compile and get all extra warnings.  Also all my
> > submitters are not running with W=1
> > 
> > I need kbuild to get everyone on the same page to be able to sustain
> > the warning clean up. We've already had a regression and it has only
> > been a few weeks :(
> 
> Do you use patchwork? A little bit of automation is all you need,
> really. kbuild bot is too slow, anyway.

Yes, I bookmarked your automation scripts, but getting it all setup
for the first time seems like a big mountain to climb..

I already do compile almost every patch, the problem is there is no
easy way to get W=1 set for just a subset of files and still compile
each file only once.

If this makefile change was done then my submitters would see the
warning even before posting a patch. It is already quite rare I see
patches with compile warnings by the time they get to me. Even
unlikable checkpatch warnings have been fairly low..

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210185534.GF4247%40nvidia.com.
