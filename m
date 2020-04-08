Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBY7SWT2AKGQEHEDV6XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D72511A1A04
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 04:39:33 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id y84sf4187063pfb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 19:39:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586313572; cv=pass;
        d=google.com; s=arc-20160816;
        b=ra0+n64F1NrNSzIbYCXB6RFq9mqqk/3R1P6TmSvVWbv1Np1ARAUQKaL7LuJGgQ+i15
         mE8QufmlXtJNu3nRKlJHT2SnQP/hjhcJkCYnkFyfDqhRd1rToT600ERU958zWieyvsh3
         VALgFcjWY/l8zttcG2mruO65dkeuW+VNoCLjzNjvfbyAsUhv9kk0tvvaOTvwxdpOkEhO
         h5MyYgHT4yJsAtnzHjp9quiIaBYBPYWYuJVlUHIarcqgWzGz+F8VlwHUmgOCGfKiVGRF
         RSxauJnP0z4tZg5R+cYk2AlpZoFmL1+n4Mmh8blHaMJ+AtE6K7iqguOIlJYwDdEZr3Gi
         g11w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=hk0B9fFCUWOzbVQskw5dMOlP25dBLO3YPvenTqWuUgo=;
        b=lHQCNyyV0s0MTYZHC6zCT02UDTn62VRyobvuKVfwWo5MvXqN+rbHgZyvhhN/ttf4Uw
         35l9Ocn7hFDbtlzYPNr1nkA3SqzSGeThZQ7bdUAt4ZGN9Bc9gDVEBQPZJ8mlzGJnsZLZ
         snQ38NQ3OdEZATA6+2qQbKwzmmp+0nphb1CgV1gR9F68PvftbHdi7wzCFass4Dd5Luzo
         /jr+jvdR8yyn/R1wMznGzFUfnxlg5vzLnZtSdjDTWnOSrlP7tr7Vw7rriU6v4V57po3q
         CYYHjbUihT3PaEuR5WRm4J9Ik1tf8mkAhQVRpowWIOp4kZICiP4QawYrRBoBxpIDvuQk
         a8bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hk0B9fFCUWOzbVQskw5dMOlP25dBLO3YPvenTqWuUgo=;
        b=JabMV/z9Ahw84eXNzuDFkWni+WdESxvVjEzWRfWsJ6mLkeMGDDINTKF5Kbwyz74inB
         IvsNSG96NAVdmVTHL6/hQNKTGmZ0pQzMNFD6IHVLASglFZt5LfbIEmLn75AFDewgHsr4
         o5fWlDJ/33RIJjsBTTp4Gf6LAKZg+OUaqQNkclw2DRhC430ycRpI3Em2MC+ckXZv193g
         Ub58zP/MW079L9J7qbrczDCwuKKBmjeGSsbCxHIn90Qvswevcmg1bId3gTqdfqeSVQl+
         SDKJ0jM0TH+jsrqDx5Olm5BzDn3dhJ79/QcTVHX4XB6pXPJ9n6vuydmRq2MWlo8MJki6
         3J2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hk0B9fFCUWOzbVQskw5dMOlP25dBLO3YPvenTqWuUgo=;
        b=tGGzMMPg40QfilXq8zsKTJPiFgI10zyUASRR4HlErnDQ0PC1B7Xjc39rrLgowQUKUe
         2E90ah3PTmeudFuYPNotM3G5YTObG6hBkn1DWiyBNiP9mEZFGKybBnwB6JqTEY4fdtD/
         rk4byGzB1jU8E56NxMX98yJM8KGXxNuhHWksbAmmIGAGf8H2ZkLVx7Dn7cfRPH4lQaqp
         m0rq52dJFG8mrxP43EzkE9L2N+wSmpsC+zWWY3YiEAuSnoDMG1ZdM+HLuyhH8RzUaEcv
         AS6tiOT+a1B9zcInqwNtUXXD9UttyDD2t3jrcvumtxHhMnjtnxhs/IvkKVaO7n6CK1ru
         FtMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZGXHd1HspfZNV8d4sksHYvOnXuXYGm6yeM88jd7WJ5trKpW1gc
	0lMRAEHvmBbIHhne0kLjcyo=
X-Google-Smtp-Source: APiQypI4qOmim9n3VVdSoYaQVY0wZhHnSlltef7WN/jDgwi8b0I/Ua9Kw1xd6mntuLjhQN9XPG2GQA==
X-Received: by 2002:a17:902:aa09:: with SMTP id be9mr4035398plb.341.1586313571935;
        Tue, 07 Apr 2020 19:39:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls3564482pfw.1.gmail; Tue, 07
 Apr 2020 19:39:31 -0700 (PDT)
X-Received: by 2002:a05:6a00:48:: with SMTP id i8mr5687809pfk.20.1586313571401;
        Tue, 07 Apr 2020 19:39:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586313571; cv=none;
        d=google.com; s=arc-20160816;
        b=C88533JyfbOynCWZxREZlthlt1Zc5fuCMfhbzKW0UcdNCXNn2c9PRgrp0eLxvyyXpQ
         pqLjtNsBPtxQ6HfX4WI/+RpcJKXpAy2neLa6JhYTm9nGL243GuOuvH+JjiLahY4j4YnM
         VAlNxcj58J8KYN7SsE9/kNgqPKKmuYZECsTdiV6Ty0EhqpiRFT9wp+wOL+Onp+9aSwWs
         /ksIS7jvaatDEopgR3KzcKy8T752II5avQU6/hIAe3aruC3eQGWwQknRAPGIdfvseu6K
         zXsLWM8bbKCowgRzs9+ll6TpggUH5NqfR+wgesLL53b2aRzoP3Br/l4DYkl3X/ydUh/i
         Sdpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=UeS309lakvavMxxAxiWk/CwF1iH5KtA7AS/hnrK3Bj4=;
        b=N9GY25nA+EnK+2kwsWtpgLxjwWUCrbQZgPHpl/Kdu9zYsFk1Citag1Pb+aQBULUGQm
         IOcD2nkbCtA/3/iz6TDR76d8evcpJZn1ZZIKomuHU60tkONISHIIUX7FwrRHVnTbQKw9
         68auOpyTDPWDEYXKP1FxoqqJLVpeVpHyTjA+YoKODhLeQb5pZMd9O4ywoDOGdf5k4Ylf
         2WdPSxlDQQgU+Ev1p6LzWNLCF4izNJuE9IkGw0LyVG+Vp4uDBsTM9BTdTVr+LGMnxwtO
         uCgGUnjlhtw5ovxG1xi4e1R5wfcGKmRefLE4hWFsKD+vhWIR2c5DNBX6+3dEP2Vj+Hbg
         N+jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id ne6si287485pjb.1.2020.04.07.19.39.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 19:39:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 6YrBCQqD5A+mBNJww7Of9Oki8vsMo7id5CqnoF4dmS9DjvL4gQImY7jfvI+RGWB4BAxltj+cG0
 iK6gJnOAGieQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 19:39:31 -0700
IronPort-SDR: QDxzSALCzaJK3+mQ2I3+sP0287SO17GULI6cgKZAIF+objoySZn9dvTmBV7y78Bgr6ewxH46i9
 +3M2AxJ3skew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; 
   d="scan'208";a="424978213"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga005.jf.intel.com with ESMTP; 07 Apr 2020 19:39:28 -0700
Date: Wed, 8 Apr 2020 10:39:05 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [kbuild-all] Re: [linux-stable-rc:linux-4.19.y 9916/9999]
 drivers/pinctrl/pinctrl-ingenic.o: warning: objtool:
 ingenic_pinconf_group_get()+0x12: unsupported stack pointer realignment
Message-ID: <20200408023905.GA3664@intel.com>
References: <202004080034.5w5XsucF%lkp@intel.com>
 <CAKwvOd=fsR9XE1j6pVi=7Ncb6Mbz9nvdUQxkA=FQHxMNWU3GVw@mail.gmail.com>
 <20200407233037.GC13869@intel.com>
 <CAKwvOd=QOPN5uMbOedLRyb-KvuGFEWp_iEewgtxSyroiqY7_JA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=QOPN5uMbOedLRyb-KvuGFEWp_iEewgtxSyroiqY7_JA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.31 as
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

On Tue, Apr 07, 2020 at 04:34:12PM -0700, Nick Desaulniers wrote:
> On Tue, Apr 7, 2020 at 4:31 PM Philip Li <philip.li@intel.com> wrote:
> >
> > On Tue, Apr 07, 2020 at 10:51:38AM -0700, Nick Desaulniers wrote:
> > > On Tue, Apr 7, 2020 at 9:11 AM kbuild test robot <lkp@intel.com> wrote:
> > > >
> > > > Hi Dirk,
> > > >
> > > > First bad commit (maybe != root cause):
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > > > head:   6e19c6f2d2653aebd7d307ec43293f579e21604f
> > > > commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9916/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > > > config: x86_64-randconfig-d003-20200407 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3185881d69022e03b300e189838b0599ed417be5)
> > > > reproduce:
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER=clang make.cross ARCH=x86_64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x12: unsupported stack pointer realignment
> > > > >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x0: stack state mismatch: cfa1=7+136 cfa2=7+8
> > >
> > > Apologies that the bot keeps converging on this patch; it's not the
> > > source of the regression.  The build was red with ToT LLVM before this
> > > patch landed; after the patch landed this warning seemed new, so the
> > > bot converged its bisection on this commit.
> > Sorry for the false positive bisection, we will think of this further.
> 
> > Hi Nick, do you think the bot need blacklist this or send similar objtool
> > to clang mailing list only?
> 
> Maybe for now with the goal to eventually revert, if it's easy for you
> to do so, it might be a good idea.  In general, developers should pay
> attention to new objtool warnings they introduce, but so far all
> reports from objtool with clang builds have been clang bugs in my
> experience.  Once we're in better shape, then maybe we can remove the
> diversion of the failure reports?
got it, thanks for advice, we will update bot logic to send objtool
related report to clang list only.

> 
> >
> > >
> > > Also, we recently turned on Clang builds for 0day bot, so it's digging
> > > up interesting bugs via randconfig testing.  This is useful and we
> > > appreciate the reports, especially ones from objtool frequently find
> > > compiler bugs.
> > >
> > > I've filed https://github.com/ClangBuiltLinux/linux/issues/977 for me
> > > to follow up on.
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> > > _______________________________________________
> > > kbuild-all mailing list -- kbuild-all@lists.01.org
> > > To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200408023905.GA3664%40intel.com.
