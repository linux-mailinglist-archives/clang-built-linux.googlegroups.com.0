Return-Path: <clang-built-linux+bncBCT4XGV33UIBBRF32WCQMGQEEUA5MFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 804DA396988
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 00:05:57 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id k9-20020a63d1090000b029021091ebb84csf7727898pgg.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 15:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622498756; cv=pass;
        d=google.com; s=arc-20160816;
        b=HBkulKE1aM3G7O6g/Jd0tmt6TxHy8eCBtsovqegKWs7rL0IaLzJNDTKeaoQ2KMUI7u
         78oAGlNzaR+TVOQUFKfQfTft8P74Cd/MtvNnzm1aDwtkpN9K/gzF0ZsRYbbAtKEE5Unq
         o62qAi0mh6CgBvHWUwnYP8YRdxHGmVzZsAcS9+4bzA9dzJI95G/GhEbojphYdM/g4j9m
         TRknzNd5CuYDRgJgjRbFKvZrsQNAODjM7lojwgZvEec9WoX3MZ5g6pj7jX16/Um7YRcG
         5PdLTHG8++cTQCzRGZN/7wz1MnW3tcO1+f0xx5ngqqskIhT8mpSlTp53Wx2hpdvVswQM
         7s8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=e34hEgx2n9u2/KWjTKeGMH8ieD9vdymJu2ug1HcPPaU=;
        b=hsi+8fS3ESASPOPFubOnofsFHeXsZziaLicNTqe1Ji5zpi7q49VuohYsnBjU7/RTeY
         xu5CYjkf/ofhgvzoJxg/lZFoW3ACUZPPvhtKq+rHNq9zX4kJw8RnXDxF7xy7ZhYoUb3b
         dECnKGMC42P2oKJl1qrNTAWbU+Taa7mbPFGB72TZxcTpN6z7cI0OlieEJF0L6XRbtNfg
         HSeBS8P6FFvXV7q/HO3HEym2fmg0ru/hPQOvTb5Jw6s6jwHNT7fWIhxThfKOdjCfx5gq
         YE/jp8hz9jY1P1CPHIJvTmqXLhtOvNpNjY1LFuHQLKXjroAYiisCqfeSesFyLDcjsAws
         E1Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=jkxTNo3a;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e34hEgx2n9u2/KWjTKeGMH8ieD9vdymJu2ug1HcPPaU=;
        b=CuG1BDuDHHHSNz/gq6q47oPgTNRAmI/K21Ab6FazONJi8cB+RpN1it8uYTPgE4P9DX
         mnJZzrSytEGFcgLg8SrhxgvFOKLDIra1QaXD2dVgp4UYgKZnJG131Kz+pbKlAQxoZInO
         KMO30d37XUVLx0XUkYjax0dxHKb9K+MMn+uO6LXVSEI6FClQZCzBYPZE5KuT2GzSn/wS
         2Poxq2g+Q4ShgU/rPY67lmD62z/UI6+GgXgzlCh1bVNQuhJL1SdR8ZDEHGMSQhgQ4n9H
         RCRlgqqHgPfW7bolBZ2mn6JTFvzqBHpyaAS9W7qRcvclLfWehYcm2TWcY/sGXTzgd0JB
         Knhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e34hEgx2n9u2/KWjTKeGMH8ieD9vdymJu2ug1HcPPaU=;
        b=neSRVzmB+SBF6OyyGZjKsKEVHfc9DYfvEUNc8nz+Zwcvuvq6O5SE7+Y0aHDXzIgkfk
         5NnDWRytCPIwSlOvan/FHAcyZYZOFbM8eq8coczvI7hdes1CuRE3YgKbIuhF55Kne5xT
         kzQTYYKQCkT8idMajyYfSue46mmRIhMq8fY5dbqTer+Lt20r2Vj9RLuLS1U4O1XK6fOv
         EcmuBBKzJphE/r0Zzm2snjTjHsgtxYNf6K6BcBV6umyekkS2HkExR7PtfH0hGgPiisJ3
         ra8hPeNh9mhaZq9K7HpAy1M2r7oevxUZxCNWQDz+zbzeZ73eQIjI2GIewAmt/1Qsx2vC
         bFAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pf9M4LO0fmwZ+xhbdny7VNQw6b7fYP5unu7daDJfcTPaeAgpP
	fDM+OaNuHbCeWuUOm3CKsKI=
X-Google-Smtp-Source: ABdhPJyZl6qZ+esOHiE4jy+OLsfcIuCXYzgnEeicz7IwI0zGExpBAAVpLP8zBq1QVQqkJWMkbziyqw==
X-Received: by 2002:a17:90a:6e03:: with SMTP id b3mr1225415pjk.12.1622498756230;
        Mon, 31 May 2021 15:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:92cc:: with SMTP id k12ls6819715pfa.11.gmail; Mon, 31
 May 2021 15:05:55 -0700 (PDT)
X-Received: by 2002:a62:60c4:0:b029:2ca:ebf7:cd0d with SMTP id u187-20020a6260c40000b02902caebf7cd0dmr18626416pfb.71.1622498755651;
        Mon, 31 May 2021 15:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622498755; cv=none;
        d=google.com; s=arc-20160816;
        b=JbED3ye4vPkxDmydBCnc2an8ZpACyhLdZ8GWUaCmjvylvhvMWoqYFIoYXhczpP8MgB
         EjzmdARL8cE5RNm5OXnk2Bk5mwrmuVT7HNKz9Ie94oWbk0dD6MYPcoE1PAGtBlI+reUt
         LXuCUUJCr0km93zGmoXtnc1AcAazAXVacSMrc8QRu/CsOsXvc2E18VC41jo1xdkKe8Us
         QGrhfpBP44xSSQ0L4iNtUo47rghbaNTNVuZ7PKm58P9IKc9NXHKIkXwtTwO0FnzPKHnx
         BvlxzpPqTC+PESJ848bAobTf87LazcvnbgDvw0kvvEGBmoESzqNITb2XJgdpInqi2Kye
         ui1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tk64iC6ZDE4gQc981rjgfE6oeU98eBvr/10EoH9op4w=;
        b=x21aGJHc/3TeTZXVR4gZx4P4XjwEbHDgMYkiOOV/GKdLaK3RfL9thEQ4Tt96tHw9m0
         mhl3Rrbs72n73n9HgW4rFG6GbCGt/sgR6VgyoslDOOnEPVLufhLdDi+mH1QMRqw2T1i5
         i+umDmokUICyYUvxr2vdBfWw1MKOlxttW1r7/5vGDc5sVCx4t498oKr7NVwPW6DS8fST
         mwKBTfzQSIDnJvRfLjw9kI6YjHfOyjMTBl6ESHE+QaHz+NRaufeS5eh3YYhkW5EjqFht
         U85JeUmvFT+IjPd3tAiadfLXGbeHcUGF5bvNo+t5JKKNpKpUT5MAVzvLNsWtFbcPVYnH
         bt3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=jkxTNo3a;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si1251340pgk.0.2021.05.31.15.05.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 15:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 294A361287;
	Mon, 31 May 2021 22:05:55 +0000 (UTC)
Date: Mon, 31 May 2021 15:05:54 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Mel Gorman <mgorman@suse.de>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Linux Memory Management List
 <linux-mm@kvack.org>, Yang Shi <shy828301@gmail.com>
Subject: Re: [linux-next:master 5596/5886]
 arch/x86/include/asm/fixmap.h:103:48: error: use of undeclared identifier
 'NR_CPUS'
Message-Id: <20210531150554.bb7769cdedb4fd9bf471b891@linux-foundation.org>
In-Reply-To: <20210531093917.GL3672@suse.de>
References: <202105301909.iEwOXNWt-lkp@intel.com>
	<20210531093917.GL3672@suse.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=jkxTNo3a;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Mon, 31 May 2021 10:39:17 +0100 Mel Gorman <mgorman@suse.de> wrote:

> On Sun, May 30, 2021 at 07:58:14PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   3e029760e6f8ce90c122c267a039ae73b3f1f5a4
> > commit: 366e9aec4a22d77b869f1b7641a74fdd96f02b4c [5596/5886] mm/early_ioremap: add prototype for early_memremap_pgprot_adjust
> > config: x86_64-randconfig-a006-20210530 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=366e9aec4a22d77b869f1b7641a74fdd96f02b4c
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 366e9aec4a22d77b869f1b7641a74fdd96f02b4c
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> 
> Hi Andrew,
> 
> Can you please drop the patch
> mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust.patch?

Didn't I fix this with
mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust-fix.patch?

This fix is lame - x86's fixmap.h should be standalone.  But this gets us
moving ahead with the MM changes for now.



From: Andrew Morton <akpm@linux-foundation.org>
Subject: mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust-fix

x86_64 asm/fixmap.h needs linux/threads.h for NR_CPUS

Cc: Dan Streetman <ddstreet@ieee.org>
Cc: David Hildenbrand <david@redhat.com>
Cc: Mel Gorman <mgorman@techsingularity.net>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Yang Shi <shy828301@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 include/asm-generic/early_ioremap.h |    1 +
 1 file changed, 1 insertion(+)

--- a/include/asm-generic/early_ioremap.h~mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust-fix
+++ a/include/asm-generic/early_ioremap.h
@@ -3,6 +3,7 @@
 #define _ASM_EARLY_IOREMAP_H_
 
 #include <linux/types.h>
+#include <linux/threads.h>	/* x86 fixmap.h needs NR_CPUS */
 #include <asm/fixmap.h>
 
 /*
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210531150554.bb7769cdedb4fd9bf471b891%40linux-foundation.org.
