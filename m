Return-Path: <clang-built-linux+bncBC44327IZILBBVU52GCAMGQEBL2KQPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 080D1375C23
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 22:17:28 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id r2-20020a5e95020000b0290435b891bacbsf4387717ioj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 13:17:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620332247; cv=pass;
        d=google.com; s=arc-20160816;
        b=LgRJDL9IiBwlQ6kKCc4RdKxm2WFWakUN9RTvVR6c9LPvBkMTpYrpCvvPYGSz2aYc12
         ml21LCVKMOdE6v49aBsdo2pCfOtKjQjdlJ5No+2a1e+XtZ05uUzdiKyNusladUrVWKSE
         ey1DoG2ovBJhQPNa9Z2x7d+SBP+cWpfKa7kECHp1OO4bT3Mcds4YS6NUokyXSTLBpC5t
         xyeLZLLMQfbTMQKSmy5ivcOr1akJttrv8bYfnfIxIVkX2K9YwQGrV7zFgb//yOWNLQei
         4POCF3ZamMtoCJH3DytnvfWVzPibTwVDEVRykihaEVUH9HzWNIbXBZu+yLWvem3iUHDu
         NM4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=WHLcSRneuoG1MLmyXOc349Qv8/qu5ZIklfbeUv9/YSc=;
        b=eIqAczWuQLJQ//Qa9DY5eDqVPFXZoKyjb0WThVSqomeewt9uBiqb792AHEXpw1d5tw
         o5aJdrP8coJQhpfU7LJWbBi1fRDe58COCTQ6uXSgKd4UXdISSrFu3pCBdPESLCbZwlLO
         qsi1oRT1cpVizXS0FN/Rm7D2LwR6KyAV3vZgTzuNJMQ/VN6EiX7JTnxilr5/LOTAUSLb
         A+bxYtsw6vOYiUgNEADvFTUWWKGjlKQh0/W9np4RT9sN2gqasy/r+fYbx15YWUJRA8sq
         cM7nsezygLbxfmG7CjfdeU/OVH5gawgzutXuN0nWNm/MD3RweCbN5OgKOl+1Wj9dcOXD
         o0fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TPWVXYT1;
       spf=pass (google.com: domain of alex.williamson@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WHLcSRneuoG1MLmyXOc349Qv8/qu5ZIklfbeUv9/YSc=;
        b=jUUaDjE9qWPkAUDMTpEc+tt814gx78DsZ/QiEvhuOAJRBMaV8PqpGUTbOSgppmygq+
         pnWFG5vp8mUtdm8fUCvAzvc9dLcU8VWtNiMw4uLoawTbZSWYlqHukkCLiGdoS7CpRBo7
         +4xzGBsmPG/7itNSSC/1HCyTMLwfMRF2biTGDzWPBuXcEZD4DIjvVaeNV2XcPHNCdVo5
         KNsfs9q0sxWlduu+LP14dNPzNtyTvyAel1je4mf/k9iV5NTfGamxaCGWLwK+7UkC8UF1
         vtPXW1+4EmwdaBRaNoRh63hxHbBbj2c/7pSlUbUNNQM0/wgx0D0hkIW6OW9TI9zsvaRv
         9V1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WHLcSRneuoG1MLmyXOc349Qv8/qu5ZIklfbeUv9/YSc=;
        b=bHncehgMZpUJu95WyWnsGZY5D09CZ1rPGoqJZW+1gzQwaw6vgEoUok7OE8zKSetLoL
         armwWgo3HGkB9KXaQ6l6NjA5xA0jPsff1Jez5bunPYIS8EJcE1WG4biIhlIyF6ku7e27
         qxG/nJ0mL1PiWthXMpcm0hFYcKG9pMQMddRwAp1yJxldNkzLRfFUpbjIaDi4IeaA5V0+
         YZYs8z5mWOXK9zvNboUr1D5BqjhKwCtzc9YTcHtktsmnixDDF8gRJiisKgW33Gpx9KEr
         EEW0+DJc00l2dMLRb4ltAwhfEEaKYmasJaRHNgfg8Yo2TE3mN/trM5KAF59nlnFFD6mW
         KvXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aquq7q6AUwJiXYrKkv03MfTmOqHwuW79jHI4xAR25mkwbhKUK
	LOc5V+KGAAIdh+MFqzhaNjk=
X-Google-Smtp-Source: ABdhPJwJIBVHzEdUrco9jsG6wa4ja/KgL9KKno0L93qlMaQn6YUQM2oN0bfazBzR/qhBytE5UFx8eA==
X-Received: by 2002:a05:6e02:190a:: with SMTP id w10mr6055947ilu.1.1620332247005;
        Thu, 06 May 2021 13:17:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:6aa:: with SMTP id d10ls515601jad.10.gmail; Thu, 06
 May 2021 13:17:26 -0700 (PDT)
X-Received: by 2002:a05:6638:3013:: with SMTP id r19mr5877677jak.36.1620332246470;
        Thu, 06 May 2021 13:17:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620332246; cv=none;
        d=google.com; s=arc-20160816;
        b=FjIqLMAIRrL7Rhhk211tcEG3nWrkl/tby0fJvDePItj3WA6A32TNh/vMHF5Mnpv3pQ
         ZePED4iwc9oxa2/BbWCZ49kb0ZL4TJ/PSGzlxuqku4xCP/fhOKyLxb7EA72f10FIoaeo
         BAPuWdnpnLYlDZAq2CvAkv7+LShN+KSl2G5ZAbdKGStlQGfhLMVxNgx3X2G/teNuBOYE
         ahpjwM/PAa9j0LSVDm3PXxPYzLdypPfZhJa6/L8+39RJ1zsvXXMQNTVOK4M/E6F46Hqz
         YHR4R+tX0/i0tj/NQwBnYHboWtr40Y/VPotQ+BsrwkrajAi6a/X2sBSfubdA02CWfcqe
         N0wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=W1DrEgswWZRra4LUAMtJQy5Bi5IeUECsvIiOwal/tnQ=;
        b=KQfpDT/jv6Z/fLWCWZgtcSa3OUGtNXbdgUB8tqLhSHMwcA09sW0yOni75clu6koAzg
         3pClnJwi4KbhTWdPHZai6jDaIFChKHes3KslWu4wTx/BRS7Hv8KN//Qpka6Nbf3aajLH
         nLK8At90YTPTRtmChqTdedLe1bstQp7pDM7lJeaJoSylV5U3XnfCXAzUZ43kWLd5L03/
         Ou1KLC/DSWE6qOnijQA0UbPXCCAAdiQrl08qdxmv58Q2cC2nKjGeCPkvEpNzQSljmhWz
         5/KJN8BukRwtr7Qif7/NrHBmrDTLUfdPZ9TzsUCDqeBOSj698Zp41uUb6zTqf+PN4vkn
         9Y0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TPWVXYT1;
       spf=pass (google.com: domain of alex.williamson@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id z2si406292ilo.2.2021.05.06.13.17.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 13:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.williamson@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-88Xlh3W2Mfy3coFvht2IGQ-1; Thu, 06 May 2021 16:17:23 -0400
X-MC-Unique: 88Xlh3W2Mfy3coFvht2IGQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85770107ACE4;
	Thu,  6 May 2021 20:17:22 +0000 (UTC)
Received: from redhat.com (ovpn-113-225.phx2.redhat.com [10.3.113.225])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BB4095D9DE;
	Thu,  6 May 2021 20:17:18 +0000 (UTC)
Date: Thu, 6 May 2021 14:17:18 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Eric Auger <eric.auger@redhat.com>
Subject: Re: [linux-stable-rc:linux-5.4.y 5600/6105]
 drivers/vfio/vfio_iommu_type1.c:366:22: error: implicit declaration of
 function 'pte_write'
Message-ID: <20210506141718.705147be@redhat.com>
In-Reply-To: <20210506141221.75f293de@redhat.com>
References: <202105062336.5KCPcg2D-lkp@intel.com>
	<20210506141221.75f293de@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alex.williamson@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TPWVXYT1;
       spf=pass (google.com: domain of alex.williamson@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, 6 May 2021 14:12:21 -0600
Alex Williamson <alex.williamson@redhat.com> wrote:

> On Thu, 6 May 2021 23:51:51 +0800
> kernel test robot <lkp@intel.com> wrote:
> 
> > Hi Jason,
> > 
> > First bad commit (maybe != root cause):
> > 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> > head:   73e74400c797af9bc645d41cfd350b15e3e52d2c
> > commit: 3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d [5600/6105] vfio: IOMMU_API should be selected
> > config: arm-randconfig-r014-20210506 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d
> >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> >         git fetch --no-tags linux-stable-rc linux-5.4.y
> >         git checkout 3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> >   
> > >> drivers/vfio/vfio_iommu_type1.c:366:22: error: implicit declaration of function 'pte_write' [-Werror,-Wimplicit-function-declaration]    
> >            if (write_fault && !pte_write(*ptep))
> >                                ^  
> > >> drivers/vfio/vfio_iommu_type1.c:369:10: error: implicit declaration of function 'pte_pfn' [-Werror,-Wimplicit-function-declaration]    
> >                    *pfn = pte_pfn(*ptep);
> >                           ^
> >    drivers/vfio/vfio_iommu_type1.c:369:10: note: did you mean 'put_pfn'?
> >    drivers/vfio/vfio_iommu_type1.c:327:12: note: 'put_pfn' declared here
> >    static int put_pfn(unsigned long pfn, int prot)
> >               ^  
> > >> drivers/vfio/vfio_iommu_type1.c:371:2: error: implicit declaration of function 'pte_unmap' [-Werror,-Wimplicit-function-declaration]    
> >            pte_unmap_unlock(ptep, ptl);
> >            ^
> >    include/linux/mm.h:1988:2: note: expanded from macro 'pte_unmap_unlock'
> >            pte_unmap(pte);                                 \
> >            ^
> >    3 errors generated.  
> 
> 
> We need to fit in an MMU dependency for VFIO_IOMMU_TYPE1.  The IOMMU_API
> dependency for vfio itself is real.  We could just turn everything off
> for MMU (who really cares?) but theoretically VFIO_NOIOMMU support
> could be used in some weird way with !MMU.  If VFIO tries to select
> something whose dependency isn't met we get Kconfig errors, so I think
> the right answer is:
> 
> diff --git a/drivers/vfio/Kconfig b/drivers/vfio/Kconfig
> index 9dc95024afae..2c3baeabf094 100644
> --- a/drivers/vfio/Kconfig
> +++ b/drivers/vfio/Kconfig
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config VFIO_IOMMU_TYPE1
>  	tristate
> -	depends on VFIO
> -	default n
> +	depends on VFIO && MMU
> +	default VFIO if (X86 || S390 || ARM || ARM64)
>  
>  config VFIO_IOMMU_SPAPR_TCE
>  	tristate
> @@ -22,7 +22,6 @@ config VFIO_VIRQFD
>  menuconfig VFIO
>  	tristate "VFIO Non-Privileged userspace driver framework"
>  	select IOMMU_API
> -	select VFIO_IOMMU_TYPE1 if (X86 || S390 || ARM || ARM64)
>  	help
>  	  VFIO provides a framework for secure userspace device drivers.
>  	  See Documentation/driver-api/vfio.rst for more details.
> 
> Better options?  Thanks,

D'oh, we already fixed this in b2b12db53507 ("vfio: Depend on MMU").  I
sort of like the above better, but I'll forward the existing commit to
stable.  Thanks,

Alex

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210506141718.705147be%40redhat.com.
