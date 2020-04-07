Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBOU2WT2AKGQEVC4RIAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9631A189E
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 01:31:07 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id u33sf516790uah.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 16:31:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586302266; cv=pass;
        d=google.com; s=arc-20160816;
        b=PaS7J2fBqY5dm35c+fj+j5BoWUMhLBGVUY18s0OKFaBfj5n8AdJ0kuQXri4RrctqxL
         5IoyP89aDmAa6lkUrdq3e/lQiZn2AoGn+2V2Yfb0bNCQZV4p2Mf04whSftAxpQnhKDrb
         WY4Vtfh+dLcWXyTawM+rdMKM1qa4sRdBZQHJZg/OJFLoMwiS5BsPSBBDIUxkZeAhaTEh
         ieTEbVlcP1FSmiiVAdBf6Ask64uGXYNKhwkfUUU5rQ6HudvMr95MHW5qFYcqI4U4HV3a
         ltNkWluoiPRPxOpHcArX5TmAJ3lFnzsOCdjHQPXYgbvCi43XiRFiUWAPWFiBFD5SIh+/
         NmbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=MXuMrzFKV57/xbXn5+ZeLMIiPWW619Xy4Kdxh9WTvDM=;
        b=AK4sRUKJZFnSq3P8kX6kstARSoFrZqBRl32nX3bE483D5pXARBLCfY/7b7u4vs404M
         7TuLMurudftOuANhcIzVDn5BRLzZEJFO0wbyCMYj1SESKkUDz3V18tjXMMlb8Lu+PH86
         1zJFeD9Nf5A53ogU/EyH+6PD3lUAq4VZEX/2gVlpF8c8fQpZJ0rbQKxNCB4HC6lsDS7i
         hA1RUns4CCmSBQK1NIIdiMv2uRAxblOUnQWqlu91b07zbfAlowVMdEsPPjHorYcQWtsn
         JVzlaRO6MU5eEBDEf5b+eSKa6OkNx9qm1EhHPlMPqC7dGIWYltvQD2MZ3ixJCb7rNHFs
         lXQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MXuMrzFKV57/xbXn5+ZeLMIiPWW619Xy4Kdxh9WTvDM=;
        b=Nfa6x/IWhTQfCQZ1K3ZJdNeTrC2qJ7rloKDVUmSeqU+U+bGax4B6GLtCZne8uVPKam
         1EqPN+R1PU/diUxaxtvC5++xnwyOAPXNLzz8hGAXgjvbXtDk+4kkQZcOyCFGRKEXsHn7
         mtGCPnPf3km6TXKXsEdMNc+LNhu/SI/pwiSDx+DcLdTjieluuA3/KaR8/2OzbqoQf16E
         jdr4llNxBTu6MB3yZ7SZDGSCDq63GVlc6z6wTkpvhIFGZF3QMFSrzn5ygNwYSq/b6rwP
         rwekcfkUXFKj8IyQoAvfNHBiqM5HQW6xVzqS3hSf6qusfFmIbAKvBbAuhmv2kBW3MjFN
         5gNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MXuMrzFKV57/xbXn5+ZeLMIiPWW619Xy4Kdxh9WTvDM=;
        b=LxjNTxtjAPw/BXUI70fMPJCG2IyL1gz9Kj/sf8TRksvrnxqqQd0ZYSYWa34PzYQys+
         KLOvv6Fi2uVAlfYsQtOy7P/lZqLxVYOuEyru3k/Ww568qN0dW7jUonrk9GVlovQ7e6t7
         pI0hztTJgXtyyMT/FoykCypdtt9cgQOBmbLIiMtyZLrYELY2qfSaGj+ki2nZ91vbDlLa
         EMigbyBRI6pIqp2vU4yJPttQejyI1pGRUiC2vcBPGHgOkTz2iuHwdnfLXYC9nDtFoDDi
         tp8APuI+eafxHOWzQCOHLHd1IVq7N3gAnE3lubYnCShyKL6CkwBkDZ9QxAaXF7Re0KQY
         A3fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubmDri8KOxe8gUWFQT8aScuzMFZjLEqW+BM3Hx9RPbyBJTC766G
	Ubq3iqf1BEsam+Cz2Ew93IE=
X-Google-Smtp-Source: APiQypI3O6gPeAOXrp12py1VmeDmNSs/v0gYUtkmyT5KnU4IgZ/VpoO7/0bBCKjp20334Jlbo02HpA==
X-Received: by 2002:ab0:778d:: with SMTP id x13mr3945948uar.110.1586302266687;
        Tue, 07 Apr 2020 16:31:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:93c6:: with SMTP id v189ls295162vkd.2.gmail; Tue, 07 Apr
 2020 16:31:06 -0700 (PDT)
X-Received: by 2002:a1f:d841:: with SMTP id p62mr3626801vkg.13.1586302266270;
        Tue, 07 Apr 2020 16:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586302266; cv=none;
        d=google.com; s=arc-20160816;
        b=OwDa3TBSzYM+u8+Fi37hV6c4qC3ptk6RHC9tbJzUWkG8moC2RE7EYnOYx3M0TdNY/r
         dqcAb8caU7iyzLC/vgfGbz/GUbWNPnqYv0itLJzugqDwwccTIoY/0hMwpS5ce5/tL6Rk
         GuAMFBD6gHjhSV8FJ3oWKz6neikz5bXRcef2bGgXdgRpygtFZ5DNPSgPIxfP/ieMG5yc
         9E3OTS5IMVFVBTNIxEPksmTxHhlpahomseAhQ9pWNlfMJb4KzTQFE7C7DVrCETzLRNJI
         1+1U8M2MHPEZw3o9xHQ8yuGzD5YXCzqYwF3TY47lMkcB41EYT0b/c5yAuByiMKVc+gGS
         4YxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=qpxzPy6E7078bVzgDqFBYSckuJgeJoWTny+u4FwM90Y=;
        b=FjBpFTdY8PyrjFJV1716IZ/UOxD4td846pJk58ys+kOEFBW9Zs1/SkQQZS2G76T9lh
         1shfi7RJhsU3MAGIplwUZdcCUnqf6vLzSO++TauQIEZt00xrlZSIy8Txp2paom9gtVD3
         i3Eiy2IPNR2pNvfRwJvxAWOWmOQy1ghf6ewWH+YbZnZrF4yw/sX5Vp+qSfpRhCrX/E+h
         MfGRSw0oCHz4xQj5nV+k/rgkzi2UowgcnzUD0uVqXVBeXsrU00hpmP+SiMYne9OYgYUj
         g9ZfZete+TI20e9gvIs/Mc3TuZoR9IE/tqoM+RLLMGo1xMS6h1OJPhgqyPLZME/MHFml
         msKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id t191si278400vkt.0.2020.04.07.16.31.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 16:31:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: QHvlu+eLjyePiBOBhgimefjyan4yk9aodqar+Mh+juCplgpHs9zRxdbecvjM8FfjnX6SO93jme
 QhP20rHvZjog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 16:31:04 -0700
IronPort-SDR: i+MD6CSVNkGrQSSxa+BAwuxLe34J+iIIcQajlfBm4fNc4qoXDynajDiJmn7VSZPEk+ZNfTfKIn
 lHyR+V70uywQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; 
   d="scan'208";a="269584748"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga002.jf.intel.com with ESMTP; 07 Apr 2020 16:31:01 -0700
Date: Wed, 8 Apr 2020 07:30:37 +0800
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
Message-ID: <20200407233037.GC13869@intel.com>
References: <202004080034.5w5XsucF%lkp@intel.com>
 <CAKwvOd=fsR9XE1j6pVi=7Ncb6Mbz9nvdUQxkA=FQHxMNWU3GVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=fsR9XE1j6pVi=7Ncb6Mbz9nvdUQxkA=FQHxMNWU3GVw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
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

On Tue, Apr 07, 2020 at 10:51:38AM -0700, Nick Desaulniers wrote:
> On Tue, Apr 7, 2020 at 9:11 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Dirk,
> >
> > First bad commit (maybe != root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > head:   6e19c6f2d2653aebd7d307ec43293f579e21604f
> > commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9916/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > config: x86_64-randconfig-d003-20200407 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3185881d69022e03b300e189838b0599ed417be5)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x12: unsupported stack pointer realignment
> > >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x0: stack state mismatch: cfa1=7+136 cfa2=7+8
> 
> Apologies that the bot keeps converging on this patch; it's not the
> source of the regression.  The build was red with ToT LLVM before this
> patch landed; after the patch landed this warning seemed new, so the
> bot converged its bisection on this commit.
Sorry for the false positive bisection, we will think of this further.
Hi Nick, do you think the bot need blacklist this or send similar objtool
to clang mailing list only?

> 
> Also, we recently turned on Clang builds for 0day bot, so it's digging
> up interesting bugs via randconfig testing.  This is useful and we
> appreciate the reports, especially ones from objtool frequently find
> compiler bugs.
> 
> I've filed https://github.com/ClangBuiltLinux/linux/issues/977 for me
> to follow up on.
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407233037.GC13869%40intel.com.
