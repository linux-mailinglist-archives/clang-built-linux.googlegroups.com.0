Return-Path: <clang-built-linux+bncBCN77QHK3UIBBYGQSCAQMGQECTBVQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCDA316EE4
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 19:39:30 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id c186sf2306410pfa.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 10:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2OmQpH5SXt/iUdYKU0PF/2uEcv7Aw82uJBUS7X+pFOQ=;
        b=qcbxcdn7zRV5qHsPy1MAA3YYjScO7BVmP4abVl/PU7Xpqn0DOhyCZ5BiM8ir6If+GC
         D9q+vsfXTR/8njvsPQo3Fu8vJv1KTt/rQHUlgv+KX9RfTE/JsR2km/mIAIX6dAVaS+jI
         x82SztOMPPAynFtMfzCJm2JhsUycPIB6Axl6bhU+LrbC98ULF5AkApMnqJVBCC9wH8Re
         6sxy7671ABAMUxcMa+JG8RAT8B0B1PGDn3GDQ8KjqcHcmTeXdyydas2idqBj4TrOQRu4
         vr7zY1uGNZ2YHPvWGUYyOkqZ2IQJkhxAgOaOu/ChwgBe3Kaj06LdGfLMCyhJ0M2b/w2n
         QShg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2OmQpH5SXt/iUdYKU0PF/2uEcv7Aw82uJBUS7X+pFOQ=;
        b=qadOow751fJ9E3GMhCIzs3Jgf2uzFQrjOSMJ5hk57Tw8ZfUhs9gz2sF9DSDs7U82S8
         T5xE4BfYsp91pZxzbryFoxdsvlWKG6KodPkeBlYELM4DFDIu6BNladoQlAvFfXEBpJ7f
         S/6z8/Vb/Latt1Ia1o7XG4z78/sCDBcC8DQTsw3UFoMhTrPj1izhQ1rA7uRbeBsNFShD
         NGF5es4BK62mZ5aTJW6uEtp8xyxsUvAU/Bv8MmKQa5LtH0mxPSjEVPog+nzqDl9pI9iq
         fMIS4v6PE5svCW84b+LgRn/qAho4M/JZ0eC99BMVjg6Wacjtb5TpKd8gBoF/OBl+fSOh
         Fedw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dJn9FcmUt0R8RL/FjE1IbMRX7JN7rF2ifvWVwSNy/zGX6dVo7
	9r1yEA3jTn7++zQ/rwhfW4E=
X-Google-Smtp-Source: ABdhPJz6nehPxli4lgw2JweKY+f39/5yUGZC1MwwzLRJx0Vch1zECJWej+Xokz1XTMoluaYlGfY2KA==
X-Received: by 2002:a17:902:d510:b029:de:72a4:ebf1 with SMTP id b16-20020a170902d510b02900de72a4ebf1mr4300374plg.11.1612982368791;
        Wed, 10 Feb 2021 10:39:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c1:: with SMTP id n1ls1390963plc.11.gmail; Wed, 10
 Feb 2021 10:39:28 -0800 (PST)
X-Received: by 2002:a17:90a:8c87:: with SMTP id b7mr260376pjo.158.1612982368177;
        Wed, 10 Feb 2021 10:39:28 -0800 (PST)
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id l8si96420plg.2.2021.02.10.10.39.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 10:39:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B6024285e0000>; Wed, 10 Feb 2021 10:39:26 -0800
Received: from HKMAIL103.nvidia.com (10.18.16.12) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Feb
 2021 18:39:25 +0000
Received: from HKMAIL101.nvidia.com (10.18.16.10) by HKMAIL103.nvidia.com
 (10.18.16.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Feb
 2021 18:39:23 +0000
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by HKMAIL101.nvidia.com (10.18.16.10) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 10 Feb 2021 18:39:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MZf4KpQZey3x47CcADjBrOvgaZAoh7tjdxV9io9aMH0q3Icl0GQENL763XQQ7pjwyF//XqV9b/4+b3Gk7Dhjf5/3f2XI14KYDfwpskZWS6M8+C5jJqbl6noOXkPlKNHrtkFV/922iLY6DCjMTBmAspbthO6Qm4JnOVM5cTsW18n/YJwv8QKU6HxVQfBTboOhlMkznau8nE4gUXv4NjDP+diUMA10bCCrp2GCxZGm3DwbRf0VHRY6G1zdOTgJPGevgBMpR+cMEqX/uc7U+yG45rnJ35P75i6HT7ZvmbidhA94NnfYdV86x9OATWfwPrPIJpPfc1/g/abkfnN1kDoQxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9+1fF3YGvaAwGiuyydZ9vaI+XQmRulIsAF8ttOHCEDs=;
 b=Ma06Wnq9c9tkSX2fGPmHO+Pnt4+fBzRGD2MuvWaZqIlImWNqw3CbhOD/ck+k/DHKQuVhSHkGc6LS8I+gqm9v2ftwTkOeCEJmn78J4mXfphFXGhHvn4FnJdY5iuqy0gkVEXaaEmyRbt4KfF2q/443baYvIgcCbxLB3RzIw/aLmTC+A+GDiWnlO3gWDOiSMI+EfTwGJ00Y2u9wmDSm2yCfMBF+9ZrzVZVQvlrHJxKtVJ8/GAR/epw2vZ8pzzK+4zt57mpZ7kONI+7g0pbGq/qaV10oU4rqxDQWYHJGuEfQQXB3vdMer++CDFRG5RwFHovfBzO67AC/GUVTU8IUQd0KZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM6PR12MB3017.namprd12.prod.outlook.com (2603:10b6:5:3e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Wed, 10 Feb
 2021 18:39:19 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::d6b:736:fa28:5e4]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::d6b:736:fa28:5e4%7]) with mapi id 15.20.3846.027; Wed, 10 Feb 2021
 18:39:19 +0000
Date: Wed, 10 Feb 2021 14:39:17 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Andrew Lunn <andrew@lunn.ch>, Nathan Chancellor <nathan@kernel.org>
CC: Masahiro Yamada <masahiroy@kernel.org>, netdev <netdev@vger.kernel.org>,
	David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Michal
 Marek" <michal.lkml@markovi.net>, Linux Kbuild mailing list
	<linux-kbuild@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH RFC/RFT 0/2] W=1 by default for Ethernet PHY subsystem
Message-ID: <20210210183917.GA1471624@nvidia.com>
References: <20200919190258.3673246-1-andrew@lunn.ch>
 <CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
 <20200920145351.GB3689762@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200920145351.GB3689762@lunn.ch>
X-ClientProxiedBy: BL0PR01CA0028.prod.exchangelabs.com (2603:10b6:208:71::41)
 To DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (142.162.115.133) by BL0PR01CA0028.prod.exchangelabs.com (2603:10b6:208:71::41) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend Transport; Wed, 10 Feb 2021 18:39:19 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1l9uOT-006AsX-UT; Wed, 10 Feb 2021 14:39:17 -0400
X-Header: ProcessedBy-CMR-outbound
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b="OMUBIWj/";       arc=fail
 (signature failed);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 216.228.121.65 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Sun, Sep 20, 2020 at 04:53:51PM +0200, Andrew Lunn wrote:

> How often are new W=1 flags added? My patch exported
> KBUILD_CFLAGS_WARN1. How about instead we export
> KBUILD_CFLAGS_WARN1_20200920. A subsystem can then sign up to being
> W=1 clean as for the 20200920 definition of W=1.

I think this is a reasonable idea.

I'm hitting exactly the issue this series is trying to solve, Lee
invested a lot of effort to make drivers/infiniband/ W=1 clean, but
as maintainer I can't sustain this since there is no easy way to have
a warning free compile and get all extra warnings.  Also all my
submitters are not running with W=1

I need kbuild to get everyone on the same page to be able to sustain
the warning clean up. We've already had a regression and it has only
been a few weeks :(

Andrew, would you consider respinning this series in the above form?

Thanks,
Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210183917.GA1471624%40nvidia.com.
