Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBB4W22AQMGQE7GI5WKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F3432340A
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 00:08:56 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id m11sf139918ote.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 15:08:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614121735; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vhhxaas1YWBV2omlomepnPXN+muQriIsa+gEDJrtnkhqrosgJGnw2e3HpKtEmzLl1m
         rtnuwg9KNyFzWraxfJhgBlMNRZlIcM2CkOL4cSuiOWAO1NAfDkXxKWYmaxg/83MmxAZk
         czC+4nheVwpTo9kAxW9MOzByLd61ZK3iSBlvsPZjI/wvth3fuZa0k4oG0zWlbEjXd2I3
         WX/hX6bjPbr4Mn9Z9K5iVAN1sLoUQ7DK1531n5/wztTBMvFSsdghMzZ7U9/3UFKhU469
         bzIZTf7aV7drJYtikzFSmEhb9ts/Q6TeZAq5ZPlk/WzQPckucQ174LFHSBTp1u0eZHem
         LT6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=QDOT+p2CH40tqN0XjdQ1FuOX7sI3GSR/at1ABpRWjxQ=;
        b=pRH1KRNgAJxL+JMk7HvexfL6CHY41PAMh6Jl48/ttOHdDfs1LcIo0Od7w9ezXk4+5V
         HcghPsDJrVrzsjVEcVtuHegSRvroR4qlI6TJNEmXZldLC6vrHPFAhEPKIL6CrrUj1qoM
         RnMBqs1KRMa6r9uISFSpMwwz32U34dgZwrd3zWV7MpeAG4g3KL9RHzxPqyQQHcLyNyp0
         s4H1UzuXprMgz02VGLfEARNQEWkXM8bLDzAtShBWQNnoVCpPBEI8as5WRFBa9jP7vpHg
         ZU0LhtfQNzIyIG3vv/LeP1/f2NAkEO9KgD25VHJgIssbEjCDi2Ly8DCf5H8Pn3yyPl0S
         tfhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QDOT+p2CH40tqN0XjdQ1FuOX7sI3GSR/at1ABpRWjxQ=;
        b=ebYhDqsUmLvDbJxRpw0iIeqhoYmhs5nTsH8uW09rvsOageeGn9f+MKAYJWPlayLG48
         MKNpW8wwTM9LItPFODQxL801woPCbGU4dNA9gyVCaV/p6y5ltTbeBFQWIbFVZeTqA6nT
         QsdT8K5EqDh0MBBTAFFWD8JcP2ZpBCmsXt2ZtB8KSdzAcJj3swNsf1fqEKOEFI+vGjwt
         MWAlz5NfzTAnxYYHFAa0S8D0Mb2ygwFErN7KMSh3p0uuQNAuRLJOdejWrKEQPbI899iB
         kdT0iC8r+GXEsoLFlKrGdJx+esCA7wcFl+FTGmJMj4S4yeW3HjiZjuZibLN11JwJ+yAu
         pEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QDOT+p2CH40tqN0XjdQ1FuOX7sI3GSR/at1ABpRWjxQ=;
        b=GnPXNkRDsx5VUvNr95xvGFaeHzxJakIqAP60sM5OHF1ELwOPxG7fJzEs5gkxpPIqPv
         mPPn1hRYCDJr5heyTogfGCaiWdaP3EWaCwh0nzdCAikuMpXoTIcuhB5jJ+gy33sLDloR
         JGac1UE5u7f+qKvyWT5Ih87uSilcv6NsTAb6UjUFF5rtEnjBfX+XaVt+mYGifSAUcaWH
         zr2245GC9Yz0z8SY1UMBLjts04G9B0g2gJPQ8qJgWIXzlsJFZOpZ13lPXqG0FGrQO6DN
         vIfnmUgWK/4KTf8KKXUKB4KMGCLy9jjMgI9hbP8Zy60aG8n8NExWa5CztksQQITvnoXL
         vpLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306UIJxwiEC/LkAYhAWfthbwRygv8m9o2i3gVrKKksOVOvFGzGV
	GaznPZ7Gcivle3iLV2BLALg=
X-Google-Smtp-Source: ABdhPJzdpIj8BFhEdD50HBKnoVXCzXt8up0hqAPIfaIc+bJL90HtyIg95OsOWi/tqeLy8M7Zd5PKQg==
X-Received: by 2002:a9d:4595:: with SMTP id x21mr22195819ote.32.1614121735550;
        Tue, 23 Feb 2021 15:08:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2048:: with SMTP id f8ls84450otp.2.gmail; Tue, 23
 Feb 2021 15:08:54 -0800 (PST)
X-Received: by 2002:a05:6830:3482:: with SMTP id c2mr22151126otu.59.1614121734385;
        Tue, 23 Feb 2021 15:08:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614121734; cv=none;
        d=google.com; s=arc-20160816;
        b=v+6kSmhs2jPnNEm9oWkhNNWc+u0+4CAq1bn63oXAkBJug8OmtQNNvb59Fz7YLK9e9S
         +2wR7F9Q3P0Sg+SUgu8WvbCDeLB7O6Inh3ftBb+KzHV5m4tHxfS58FGRkM2wKmYB4X7K
         V+pdTLkUdchgSwKeCoVb+bZmr7xC8nnE6J2eWuva7nUlb7G2TDyDYVwGPgs3/YN1sXtP
         wq+msjtoHqEQFSSuvzP8M1B77EHS6GM/A2jTYcJJvMBpDNxotLX5hErph5DKuFo21rB3
         NBScHB46Xl7dHIWqFqyjKMLNvcqxwsI9XtNlnLfrBrKGhUjwF/4SfKejrG8qJwStvlo+
         sTnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=3sWYNbsMnrovkhw9dug3vJ+SNEtgpxa6HIU1OkfYXuc=;
        b=lMj84W3IEprkQLIXSHJ0GQPpoQH2NrqGwgblWp+kchkEC1nXBw6+aPecd4jKc4ZijV
         FhTX7Yy7MOxsvSfozd36NF4xv+GFCFHGiscLfu+g9piMlcQbDcCNmRR8ciGf+Or2I35j
         iEegkLKbp6D/fumzg7/Nh4566hx//n82roALNvQL9kPwG6BCvSQ+KccgbAQoKUTrI7xM
         OKFubGXKaWwatFg/qC9zkMFzqEoOCnGD7P2XVmq+C/Oi5cQ7px/JXSke5h27e9U7DeqJ
         n5vT4ci/l579gLEktqNqBkrH1duCpnuW46z2MCgGgjxb9tjU4G1MJhdYwH4KlY+TB6ae
         l0sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id j20si19710otn.0.2021.02.23.15.08.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 15:08:54 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: jKhqLNgeKX14pthaaJjMMRvA0bSEGQlw3Xt+2A/MIcFRVGmxVHpsEDTP7yFL4UgRCZ79fOpsOK
 LMLb5H64LZTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="172633531"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="scan'208";a="172633531"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 15:08:42 -0800
IronPort-SDR: ojbF2AWOMNDJvg688L6GHrWUhchJDEiJ/2dDZzSc9Y6zxSo5GwSQenSqdd0ss7eqUh+V/OuRRF
 XAK4Pl4b5xgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="scan'208";a="391285372"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga008.fm.intel.com with ESMTP; 23 Feb 2021 15:08:40 -0800
Date: Wed, 24 Feb 2021 07:02:46 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Chen Rong <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Tom Stellard <tstellar@redhat.com>
Subject: Re: [linux-next:master 8545/12022] ld.lld: error:
 arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2576): unknown
 relocation (110) against symbol interrupt_base_book3e
Message-ID: <20210223230246.GA132276@pl-dbox>
References: <202102222003.q8ZqV9Xy-lkp@intel.com>
 <20210223215104.etyo2intapqy2t4n@google.com>
 <CAKwvOd=whAkJDYAe_t53hGHdjFRm3a61rrh2WrpN-TB4s+F7YQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=whAkJDYAe_t53hGHdjFRm3a61rrh2WrpN-TB4s+F7YQ@mail.gmail.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Feb 23, 2021 at 02:09:53PM -0800, Nick Desaulniers wrote:
> On Tue, Feb 23, 2021 at 1:51 PM 'Fangrui Song' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On 2021-02-22, kernel test robot wrote:
> > >CC: Linux Memory Management List <linux-mm@kvack.org>
> > >TO: Nicholas Piggin <npiggin@gmail.com>
> > >CC: Michael Ellerman <mpe@ellerman.id.au>
> > >
> > >Hi Nicholas,
> > >
> > >First bad commit (maybe != root cause):
> > >
> > >tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > >head:   37dfbfbdca66834bc0f64ec9b35e09ac6c8898da
> > >commit: 755d664174463791489dddf34c33308b61de68c3 [8545/12022] powerpc: DebugException remove args
> > >config: powerpc-randconfig-r026-20210222 (attached as .config)
> > >compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> > >reproduce (this is a W=1 build):
> > >        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >        chmod +x ~/bin/make.cross
> > >        # install powerpc cross compiling tool for clang build
> > >        # apt-get install binutils-powerpc-linux-gnu
> > >        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=755d664174463791489dddf34c33308b61de68c3
> > >        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >        git fetch --no-tags linux-next master
> > >        git checkout 755d664174463791489dddf34c33308b61de68c3
> > >        # save the attached .config to linux build tree
> > >        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
> > >
> > >If you fix the issue, kindly add following tag as appropriate
> > >Reported-by: kernel test robot <lkp@intel.com>
> > >
> > >All errors (new ones prefixed by >>):
> > >
> > >   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x23EE): unknown relocation (110) against symbol interrupt_base_book3e
> > >   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2406): unknown relocation (110) against symbol __end_interrupts
> > >>> ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2576): unknown relocation (110) against symbol interrupt_base_book3e
> > >>> ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x258E): unknown relocation (110) against symbol __end_interrupts
> > >   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x37F2): unknown relocation (110) against symbol
> > >   ld.lld: error: undefined symbol: .early_setup
> > >   >>> referenced by arch/powerpc/kernel/head_64.o:(.ref.text+0x5A)
> > >   >>> did you mean: early_setup
> > >   >>> defined in: arch/powerpc/built-in.a(kernel/setup_64.o)
> > >
> > >Kconfig warnings: (for reference only)
> > >   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
> > >   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
> > >   Selected by
> > >   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP
> >
> > 110 is R_PPC64_ADDR16_HIGH.
> > This is https://github.com/ClangBuiltLinux/linux/issues/1260
> >
> > A newer LLD 12.0.0 (llvmorg-12-init-17087-g5fcb412ed083) supports R_PPC64_ADDR16_HIGH.
> > llvmorg-12-init-17023-gc9439ca36342 used by the bot does not have R_PPC64_ADDR16_HIGH support.
> 
> Thanks Fangrui for verifying.  Philip, clang-12 is not yet released
> and is still landing fixes.  Can the version used by 0day bot be
> upgraded? Top of Tree LLVM will be clang-13, so both branches are
got it, we will upgrade the clang compiler asap.

> actively landing patches.  When clang-12 is officially released, there
> will be a point release 6 months later, clang-13 will branch, and
> clang-14 will eventually ship as what's ToT.
> 
> >
> > >---
> > >0-DAY CI Kernel Test Service, Intel Corporation
> > >https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > >--
> > >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102222003.q8ZqV9Xy-lkp%40intel.com.
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210223215104.etyo2intapqy2t4n%40google.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210223230246.GA132276%40pl-dbox.
