Return-Path: <clang-built-linux+bncBC44327IZILBBL432GCAMGQEKV2ULXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9DD375C1C
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 22:12:33 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a4-20020a056a000c84b029025d788a548fsf4365370pfv.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 13:12:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620331952; cv=pass;
        d=google.com; s=arc-20160816;
        b=ICFtpaRmGCgoxTbVVv79Y4EJIGDdk9YIW0wHvCl3wd+VeuU1gAcuzmYWq+WnrM2E6Y
         cEeP0xxzMVW30JVsKVTCO5p2Hb96LrdZ9gxoK1QJo+Gn8b3y0lVbgcVe9U0FkweVigiS
         cjCP0g4WmAUzDrZy3MAGYFFdVfyFk5mT40s9p4xin1TWXcaudSwt5LfApVgIUksGqf7M
         AeVhaemTnurEQZQ2E5jGOnSg9PoBLGGJJRUT0CcJtNjZptVeMngTMx7YrtpgZaOTs2h2
         noO3bhXtedr69tMnig41xvaI6yqLIu/RXKcfavL52i3Z83ek0rIlBAzzKykdlm2FkHnJ
         Lvcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1v5MNbNzH7Wy+JHCOZK24zhwB/Q3Z9UoLqecq1sH69g=;
        b=iHtQJolIw1wiLaZWh8ig9poMC/1X/qbeaKi9SzUOoE0JbB0Gy9I44KqW5kL8y3Ythe
         r7svmdShL9Y3Er01DjM6pct2qCm5I2gD0ELFtBufbMnKIHG+ZYM4tPgaDpfUniE0uSFA
         EORhXA3tA7EKB/m6KvWjUs35GszTTRPhTsjC2JaCBm+OTOJdqC/K7UDZIPwoOwPyBqza
         N0sJ0JOjjC+y3Ku9Qvc/7ubr/Bkqe6IwxsS/mog8BJw4CdPZRCYjdRjygbDDqOJOyLs8
         TogoJSMvgW5sG1kk78xKe5SRHVvSworV2Vsip90p1j/tkOQflzPfB4+W2CmKrRnll3In
         eHHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=H6lGzNva;
       spf=pass (google.com: domain of alex.williamson@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1v5MNbNzH7Wy+JHCOZK24zhwB/Q3Z9UoLqecq1sH69g=;
        b=YnYrLV20D69A8DQ3mDxNAG6VEjrCnBcdnIT4DXW805fbyfINLBzgqY0XsUMIPsnTRq
         hklK4t2cH8AYV8ndbQq7CpAL6VnZaQSBXB/y3tfr8fYQLXk7+OJymooJmUnOGFhqTMZB
         zOj2YeurT6NB/KVY5RWgmWJcECBaGTYQpwkUFSUYX50WsjdQdlDnvN8bd/n8o8rwWCpx
         xFbxANxjenissdmOKZaCoKKlIqAMaryGqlu3CRKR0jNgsOwl/NxWasabsQNiDit517R+
         DNzeSarDv2cW5Ht0t1Tnty7lyttiGYf7F44fYXxfHdjP+X8QbgvtmOjIkPphTQIjZIMT
         nVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1v5MNbNzH7Wy+JHCOZK24zhwB/Q3Z9UoLqecq1sH69g=;
        b=kV5+Uwb2FZIkdDtazb6+kilVQeRPTVgYnmulLoPYYeOQEiqkSs6ZGyWgVlUDa4ZXRs
         ZomDpfvaVR/Miv5YaHasn8BvA1kn5cjWBs5nT5nXwEMd8zVO5SDw18muxVR8v0ZErRu5
         cJ5xgw2B+LkdPeEorOWcRPeZkeBkyZl71sgi13Cdy+4F+p08vadsNv0MyTY5J/nFjuF/
         SWQ1XYhGW5G05gx6WSEaZzzwe0EKmVkkm0FKBOnN1Ih/m5JS1A7Y4Wp+g+I5J53392cw
         0VK7uvK9AKdDMSvoeZi08flFJ4UzGmuyrzx0qH1ecE92kR3Jjtsm/1o8Jza6zwpMCXn5
         I9lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319tgs1i+ZpF0fDoy9X7iFcl4025Ycq8HIw2NTT687q1tP6saM6
	rTza42ILF8aUCpRCsyj+S6I=
X-Google-Smtp-Source: ABdhPJxy4b7QkWGSarhaOoWdI2HS3ZMZVqV9tER0SzQhrYIbOlGcCiRg1o579o0UZzWjkJRDpXtOhg==
X-Received: by 2002:a62:585:0:b029:2a2:3976:60a9 with SMTP id 127-20020a6205850000b02902a2397660a9mr2296098pff.47.1620331952114;
        Thu, 06 May 2021 13:12:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8c:: with SMTP id t12ls2039252plo.1.gmail; Thu, 06
 May 2021 13:12:31 -0700 (PDT)
X-Received: by 2002:a17:90a:c3:: with SMTP id v3mr20434618pjd.55.1620331951474;
        Thu, 06 May 2021 13:12:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620331951; cv=none;
        d=google.com; s=arc-20160816;
        b=IWfufvFkfHK5SYm6gU0W7YtMZgVBXiydZcomY6z/+jO7OGpfrHaceyLFa+cn0WwnFR
         MLp4wJBMVCKvMHWndvQ49YsqmUHKykqK1L7T7CxMPPu0y7W33xCIT1JXwNil4gpuSext
         fecXaRSo81hDCnOHc5UNEYn/+63MCe3iYOMGZx0M33YloRCn1eMugzwcSlSZvM22YeZT
         dl+XeMwK7s8G0rkL6tbXoscS0xT0QEwd033/MHnq+NfrIlVqMM4avmhv4S/NHSzg7MoH
         6MLLm9xYwiFifqOXnNZA6jwZ2atq63X26eUSxxdoU4Q/FbjZXvn8S/uO5UwPCP7Jcp4R
         aHjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zAMNWPgXYR6jH149+S4M0nRFxFmHcfUBdJE0V3gEAh0=;
        b=qVWlCwgN7Za/Hih3F4FoYKYTQdY7Ycd3wKEZSDOGmaj5o1yePmTYzBW5jro2jYIWZm
         RHlPTAJI/90XEVvFCvIlxfiIJnNcK8sxdUgCHJeas4j72l86Z+LghZmlCJETlD7kogeq
         D//euR1ctVz6Oqb67jjSy0OhfnTJ+Djtu16HCAqrvb4bgGUc0LWAeewjLfVkWzyhIxjm
         ZxV30lvE62bNtpUYoEiVOpg2zrPB3Enmp2aLobeLl8UwNKPd+Fy3rXthd5/bxQyIDDnZ
         a2Q9uyUJ8oQc6xhTNVSa+R4JrRJ9qzn6voDaCT8dFEoMpW6/nxik1s6gtPgWWQSvXmIG
         IMyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=H6lGzNva;
       spf=pass (google.com: domain of alex.williamson@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e20si331633pjp.0.2021.05.06.13.12.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 13:12:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.williamson@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-aKTwtIHmNquiDSxsDzyUMA-1; Thu, 06 May 2021 16:12:26 -0400
X-MC-Unique: aKTwtIHmNquiDSxsDzyUMA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 404EE79EC5;
	Thu,  6 May 2021 20:12:25 +0000 (UTC)
Received: from redhat.com (ovpn-113-225.phx2.redhat.com [10.3.113.225])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8AFC859453;
	Thu,  6 May 2021 20:12:21 +0000 (UTC)
Date: Thu, 6 May 2021 14:12:21 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Eric Auger <eric.auger@redhat.com>
Subject: Re: [linux-stable-rc:linux-5.4.y 5600/6105]
 drivers/vfio/vfio_iommu_type1.c:366:22: error: implicit declaration of
 function 'pte_write'
Message-ID: <20210506141221.75f293de@redhat.com>
In-Reply-To: <202105062336.5KCPcg2D-lkp@intel.com>
References: <202105062336.5KCPcg2D-lkp@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alex.williamson@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=H6lGzNva;
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

On Thu, 6 May 2021 23:51:51 +0800
kernel test robot <lkp@intel.com> wrote:

> Hi Jason,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> head:   73e74400c797af9bc645d41cfd350b15e3e52d2c
> commit: 3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d [5600/6105] vfio: IOMMU_API should be selected
> config: arm-randconfig-r014-20210506 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-5.4.y
>         git checkout 3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/vfio/vfio_iommu_type1.c:366:22: error: implicit declaration of function 'pte_write' [-Werror,-Wimplicit-function-declaration]  
>            if (write_fault && !pte_write(*ptep))
>                                ^
> >> drivers/vfio/vfio_iommu_type1.c:369:10: error: implicit declaration of function 'pte_pfn' [-Werror,-Wimplicit-function-declaration]  
>                    *pfn = pte_pfn(*ptep);
>                           ^
>    drivers/vfio/vfio_iommu_type1.c:369:10: note: did you mean 'put_pfn'?
>    drivers/vfio/vfio_iommu_type1.c:327:12: note: 'put_pfn' declared here
>    static int put_pfn(unsigned long pfn, int prot)
>               ^
> >> drivers/vfio/vfio_iommu_type1.c:371:2: error: implicit declaration of function 'pte_unmap' [-Werror,-Wimplicit-function-declaration]  
>            pte_unmap_unlock(ptep, ptl);
>            ^
>    include/linux/mm.h:1988:2: note: expanded from macro 'pte_unmap_unlock'
>            pte_unmap(pte);                                 \
>            ^
>    3 errors generated.


We need to fit in an MMU dependency for VFIO_IOMMU_TYPE1.  The IOMMU_API
dependency for vfio itself is real.  We could just turn everything off
for MMU (who really cares?) but theoretically VFIO_NOIOMMU support
could be used in some weird way with !MMU.  If VFIO tries to select
something whose dependency isn't met we get Kconfig errors, so I think
the right answer is:

diff --git a/drivers/vfio/Kconfig b/drivers/vfio/Kconfig
index 9dc95024afae..2c3baeabf094 100644
--- a/drivers/vfio/Kconfig
+++ b/drivers/vfio/Kconfig
@@ -1,8 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config VFIO_IOMMU_TYPE1
 	tristate
-	depends on VFIO
-	default n
+	depends on VFIO && MMU
+	default VFIO if (X86 || S390 || ARM || ARM64)
 
 config VFIO_IOMMU_SPAPR_TCE
 	tristate
@@ -22,7 +22,6 @@ config VFIO_VIRQFD
 menuconfig VFIO
 	tristate "VFIO Non-Privileged userspace driver framework"
 	select IOMMU_API
-	select VFIO_IOMMU_TYPE1 if (X86 || S390 || ARM || ARM64)
 	help
 	  VFIO provides a framework for secure userspace device drivers.
 	  See Documentation/driver-api/vfio.rst for more details.

Better options?  Thanks,

Alex

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210506141221.75f293de%40redhat.com.
