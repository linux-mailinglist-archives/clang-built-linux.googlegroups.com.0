Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB2M5WSEAMGQEB7R7QSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 692573E288F
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 12:28:59 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id d205-20020aca36d60000b02902241b7398a8sf4053096oia.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 03:28:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628245738; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ar3IQoGXZB4g/Dz9Otsq685x0OD10bBXqx1J3fe2QM6yvW1r7dFzTpaNHZetlNCXe5
         iNgY/Nd1isyeH/JKcf/RdeSnIwk4TjgMUeEwzPHvEJ1aKw/vUqbuboqqtHwqBnERAFV3
         Hdj7lm8UfYAj6TOPw6pOhX1loCaECTxFJiaDvsKW0S/7kGxMno8o5cPLCDu4NEZdE4K2
         TzNZfhpdK0L0idNYWhxpfNKwv15QgJv+sxMMas807uzWbGb2yoI1xwlyVIKmKUD59GHJ
         GVk8EKM/RgfPgFValEtbFc6WIhOrn8NMOZqo7yC42rad0GLEBdpaAuFqna6IwoZnhjMR
         2xjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n5+xZxU4v7F37DFaov9z17nxo5Flirh5MHtBZu3J08c=;
        b=ZX3iEC8hESUAAOABS4gFY+NfVUEM2TaVoWED+xKb995cqWIkES4kXAEKtCCxutLOau
         pE1lZEdXQD6xh9pkaIbyNvLGpiUSz/kStuPseohvecLdeA9nm32e7MWTNAd6kwcveLGr
         StXbClsh+9S9N0VGRigVJAUw6ZB8Rbx4D+bLFhQPYWHwhedTrsYfU1OJmwiElVA1QRoB
         6QiDrOHuvgDrz02MOWXQzkXSykwCYfd2HzdEbic+sy3waR5PRvQYLqsNIKeUKBNnzQ9t
         OYiBUjQfS2zHyPXHf5tl2ok4TtnNtFYGU/sJaeocJFzCcAB+vRWUkoqxZCNej8ggvPFy
         i4/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n5+xZxU4v7F37DFaov9z17nxo5Flirh5MHtBZu3J08c=;
        b=IlUoWfceQ0Esm0seYwDFZAw8j4ecdBmpDvZ9V+3ACyZUL+i2He95Hd9N7PTGE3hcFH
         XUqpsjnEl6V2Y1gE6u6mYvfOufwbVH9/3ubbFYiDaB/8VNTK6XlaRribnveLE7vgbEA6
         YlcSEC5kAw57CIcoBcfyAC1wHSDArlTP2zafFrUnvy4o0bJf/MnZD3jmIIBQlb4DX/mD
         HXTufxZlSuZZG1psj0M8a41w4lby1uP9CnkrsPqoRr1iT7c6cC6e7KXzJeeGGU1Wh0DH
         19WlcmYnhWoY7PV6/oFU7GMbbz2EBbB6gWW+umz2TiWgKXXwa5Unkayujmb43gfWkm4S
         BceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n5+xZxU4v7F37DFaov9z17nxo5Flirh5MHtBZu3J08c=;
        b=mUSyHGK2yoVoaiPUDQ1K4Fpu+Je8Ici5qLaRlH4B86WS4+UUb1eD1/yXi4pEPWXRjs
         tVSiFwZKFRFW7GMt3ADQMnjVAqNfVMdZYf091K/Y/WBzFmy6aFjca0/BFNOwfSJIgdUS
         BVLf8+V8euj20+2E8s4FFmYrrIt8AxmMlTgMbyD/qxgGY8tOVaQ9RsVYWvpjCZW1WhWn
         ZVuUYa5HTOX1yW3e2/Ww2/0UIZxNrqr7raReNEGwFoaKl88iRNaYl2Qel3aIA0yixez3
         xW5AG1E4+kgqbtAB2T5VoYS3WrW0BD2690RcRK0J+qgRz2zMj7qFYzCJ5relHqbc5btN
         b9Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530z3mYCtYT+e1gxORAEZO14uoDHiuzwpZGhh1xwRpw1jR3KHJBT
	JtnMc6NXjMsodd97k90DOqg=
X-Google-Smtp-Source: ABdhPJw0avE+3ewOvoiyv/ZBVZdCqLKU7rfOwn6hi+5axogkX2OYtCo9KwiPfjhitvMDmbcL8HMYLA==
X-Received: by 2002:a05:6830:5:: with SMTP id c5mr6893335otp.237.1628245737879;
        Fri, 06 Aug 2021 03:28:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:19fd:: with SMTP id t29ls200648ott.0.gmail; Fri, 06
 Aug 2021 03:28:57 -0700 (PDT)
X-Received: by 2002:a05:6830:2fa:: with SMTP id r26mr7012295ote.327.1628245737439;
        Fri, 06 Aug 2021 03:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628245737; cv=none;
        d=google.com; s=arc-20160816;
        b=j8+9EhcwwoP1ahbBQoD7HcKSpNQgcIFqOMDbpXE+gZzjwNxs+vrS2rMScrE1G3WySk
         Jqy8tvuPSQ7lKiR+EWLN8WXN1MyCeA9+r8oeAWzKVbW1tgxP9lEWUoOG+Vi7Z3mX/9+i
         O01zM57ui0yegpP7XtIe1cqYU0JqfLb0qpEF8X+R0uMfEaNGVHrsxlEPom//uD6JSTTV
         Iz6U0ihV2Fb7Bsxf/J81YTbFbjS1cFB42jaYSPlOG9JVmgMix3v4XRX45qN89eVOlKRd
         kuFRWLeCzzHGN7MspvnSbZ7po6gsQpMPEnOl9GfdTmu0hg81jkNRex7ytcnk3IjLkhqJ
         yksA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=OMP5LmNO23nNlyzHDXZ4iydtJfwjHRMYjLN7Js2gBM0=;
        b=FYjLGGBcwuws6+eDDhqnrT2lQK3bsMNUZIeZGT0wZ/cdMeWqe64P4kMV5uxYH1DnYl
         UmJ4oJv9zhptK5jLG0IQO98Rl7VfYMKcIvoHJADCL5Cqo0quTLebslfKJDI2SIoflKH2
         fMvyhJv8TU+BHOahNK+ugyfjT5KqafOo+t1hasmcCE7/8g9EeLW6rzjMMnFgPVQVTcbu
         D74U1RCC830X9jAEbz44KM7McvUW/Nh66PCQrPNk3hnq1jG+6vXwyO9eP2xPLHwGTc17
         iraiTm54n9mecbaTlH365uJmTz6cE95HoVY/Y1Fk8UeJgDaYTJYtaTTskvm7FlfZrgYz
         xSLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id b9si567051ooq.1.2021.08.06.03.28.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Aug 2021 03:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="278094032"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; 
   d="scan'208";a="278094032"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2021 03:28:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; 
   d="scan'208";a="459325358"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by orsmga007.jf.intel.com with ESMTP; 06 Aug 2021 03:28:53 -0700
Date: Fri, 6 Aug 2021 18:22:46 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Chen Rong <rong.a.chen@intel.com>,
	Nathan Chancellor <nathan@kernel.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	kernel test robot <lkp@intel.com>
Subject: Re: ERROR: modpost: "__raw_writesl"
 [drivers/i3c/master/i3c-master-cdns.ko] undefined!
Message-ID: <20210806102246.GB1330186@pl-dbox>
References: <202108041936.52T4sUU6-lkp@intel.com>
 <CAKwvOdmOTNTGvGeaRKSp4f6M1PC-HQLjMoaeQU6WM9ygxuU5_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmOTNTGvGeaRKSp4f6M1PC-HQLjMoaeQU6WM9ygxuU5_w@mail.gmail.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.100 as
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

On Wed, Aug 04, 2021 at 10:18:10AM -0700, Nick Desaulniers wrote:
> On Wed, Aug 4, 2021 at 4:39 AM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Nathan,
> >
> > First bad commit (maybe != root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   d5ad8ec3cfb56a017de6a784835666475b4be349
> > commit: 6fef087d0d37ba7dba8f3d75566eb4c256cd6742 hexagon: handle {,SOFT}IRQENTRY_TEXT in linker script
> > date:   4 weeks ago
> > config: hexagon-randconfig-r023-20210804 (attached as .config)
> 
> cool, one of the first reports from 0day bot of hexagon :)
:-) yeah, we just enabled it. BTW: we use one specific version of clang,
does such hexagon support work in latest clang 14.0.0?

Thanks

> 
> > compiler: clang version 12.0.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6fef087d0d37ba7dba8f3d75566eb4c256cd6742
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 6fef087d0d37ba7dba8f3d75566eb4c256cd6742
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> > >> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210806102246.GB1330186%40pl-dbox.
