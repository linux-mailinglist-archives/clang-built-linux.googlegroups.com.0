Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAU4WT2AKGQEBWZKZAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id B81A91A189F
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 01:34:27 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 5sf6072587ybx.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 16:34:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586302466; cv=pass;
        d=google.com; s=arc-20160816;
        b=dXfYGzGc18bql64L5fklSluMAmk7GkQCvPEdORm60Jquxm+6FjLDaBfVLM+nQJQinR
         cc/VDqQufs/8XLOtIjjT6Z2xz3e8KC7CPXphRDCeWa363XpsGUucOva9l5HLRRDsXnLd
         SyuIyDwH9OFTIp9FL1qruQ7y9+kl7QN+4MyVqkvhoU9KkjYRJGBFrNlMAJY0fqD9rFds
         YTBNp1wgoA8SXGG/7MFjD1DQi7q6vNDGc9PdsiN2mCDbP0qNpBcUEuyRHlNtIXrCAhbo
         2d8sS60hi4KNkKYVMZlGTsYdc+xh8EKcM5llDomNT5/ZH1P5TS9Q3R3f0zFeXAgGAyVj
         JWAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fugeI8AYA1HUZQsJod1TuePu48fYrCrW/59aJ9ixWcY=;
        b=mYCjqieIjuN8K+QKZIiQNZ3oAiV8hJsvSU+abgUszEouEk+tObJu2zmwj/NQhOaI6D
         z5+qzFG4oFv8jDk/j0TxRWyihHTpXPforKKhc4AQQeOhfqIBWrbv8TdiPPTu3DnDSxpk
         FSyt2jWm9wDQ65nJ2nGAVVQbU+Pg6Aw/juihmXJSrby3OF2VsNCzscENJlQNgoTHmx6V
         6QS4KauHaRHXAoa+3EeUmE2AeBIxmFODVzRZEPW0RlV3zw4/tD1QcK3ckPWbZK5QA6mx
         2dXuCwYF4W9NEJ96+ewkEsY2PgK+/DV2YxhgfP6eTLGDTmEmGr5IPCZp2Q5P8AU5JItc
         ecZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CTYEQyk1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fugeI8AYA1HUZQsJod1TuePu48fYrCrW/59aJ9ixWcY=;
        b=PucaCOqcF74ZRzpoN+PXYgA2IPnih0H9qsarkGSClPG3H/1MPpCPWCYczjZon/vzWG
         tUa5Tz/6iPZrr4N8MLNcKBq2C6EkK9XH9DOP6qR07h5lRU3sZyvhhy/EiydNoK4OVpX3
         oVGmd+/unShaNxY1yusJycbmmffVQiaMoAdwlQ5RVSbl6zqNtw/TeB95m2yTvf1Y4AbC
         1xwL3O2f+qaE86ie+zGLof03AiLIUeN+yODxdCR+L1se1L6zXkjQ8no8dla6QpsbwP1w
         BO9Rp2lkyEJ/+uYpwcL55T6d5QC19I4ufcLYAxIkG7nCOmXZ4zfDYm4D7aIlupYdunjc
         pOcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fugeI8AYA1HUZQsJod1TuePu48fYrCrW/59aJ9ixWcY=;
        b=TYcPbKjgA6Ot/c2u1nU1jU+1ma0oaGd2n/RUpqGEKx08iG5eON88WP+vWrDKeNaUFq
         gqT1kRy5dc6lX5MsOwfdVdm9jExzb+j+PnJ79tgH1uknGApqtKm1YLy4DTZpTfF/cnDV
         ulYhzMh0EAZ5hWvsLQ8tNCLI5GtoU7QehxHIyOzVoUh/J3yMBQlDJC3/mIpOQb08l04i
         1xPwqA0v68vJpt+91B5PDKcFEMI7RRJwPFVvSuvCVeqoW336yC0jncEAUR2vXeA4qwgl
         wnl2XQ63KQnRFIe4M0ZXwSWzBUTGbDZ3CWQTECyKdgo62LHY5F6vSt5t43uQtFn96fPZ
         Lrbw==
X-Gm-Message-State: AGi0PuZ53BbqY1LWK1+lAdt9yeyugJg68lRDgj5CT3XRcmVdMDsp/hT8
	/diqdHdbfvehMwJzLaLX0s0=
X-Google-Smtp-Source: APiQypJ9oDGxN9Og8xGkUsTEyfKTCbq08D+Eq+62zEp548PhXsK1rCB/CJZv7EZjY2F43UitmqBKGg==
X-Received: by 2002:a25:b90b:: with SMTP id x11mr7842021ybj.123.1586302466760;
        Tue, 07 Apr 2020 16:34:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e00d:: with SMTP id x13ls1905196ybg.7.gmail; Tue, 07 Apr
 2020 16:34:26 -0700 (PDT)
X-Received: by 2002:a25:a281:: with SMTP id c1mr8336873ybi.234.1586302466401;
        Tue, 07 Apr 2020 16:34:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586302466; cv=none;
        d=google.com; s=arc-20160816;
        b=v6sLp+QxUK+axPzGFrcXnUsqBJ9eV/gtIlRY0c89FTwcEPV2Ph6lUuA4/TL8sZ2PfB
         ew0nyf6KMW5UeFTTGVQrhzyhViKjNoaOxgYR88YXxGHG0h4Qfz1IYlEbhAXr1w880ccB
         EtPoSNeZuW7nfCB4aN5iz98q88+5BExRPtgWGbwm2/bZuPNCLY7/z9WIor764KNqF5eM
         hO1P4XAc0TYy38g4efb11NsCMJ8kT63ew/MOEjX7FhOwbm0dcKk2tcd3o7BblEgZLv89
         /PumYP+o2rWs780Q/0t4yTXukTvOVPkaxw/r0h8jDYGJNOjLOUHNcIECVlVv49JwU1z/
         GVtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dk+QNAqCQiODaOlLuyV/S86NGmMJCLk51EJKsh/LtEo=;
        b=FvJbgtj+X68HF16PuNNLgqzDeOjuQTYhJuTu7Den8ZIdtigH80ocetsmf+Xtphy4nV
         Mr/BsBE16uQLTk45DNmRRhAM0MFNLgMP5RXDGJwWoYfeRmtuKneJgljQU9bHNVyZ2tL3
         kHwQqVXI9EAEXb+vDczgjWo/Wa8gRLNjiAeIictzEsayTeyuVf8BiEAyxIud3xERoT0E
         LnoACNG9TuFbvQxnaD0Uq1vxrPrVjA/KKm7+xASCcojFjpoWf5kiV3pOVGGaH3H8OQnb
         30n6ZikwsvOgjtJXlZjbFEwKdrh/ytZwpRQJG9/DLynD+ImwkEcWY45DVaoaUfPnSM4P
         /YtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CTYEQyk1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y140si366228ybe.1.2020.04.07.16.34.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 16:34:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id h11so1811135plr.11
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 16:34:26 -0700 (PDT)
X-Received: by 2002:a17:90a:8085:: with SMTP id c5mr1750718pjn.186.1586302465073;
 Tue, 07 Apr 2020 16:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <202004080034.5w5XsucF%lkp@intel.com> <CAKwvOd=fsR9XE1j6pVi=7Ncb6Mbz9nvdUQxkA=FQHxMNWU3GVw@mail.gmail.com>
 <20200407233037.GC13869@intel.com>
In-Reply-To: <20200407233037.GC13869@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 16:34:12 -0700
Message-ID: <CAKwvOd=QOPN5uMbOedLRyb-KvuGFEWp_iEewgtxSyroiqY7_JA@mail.gmail.com>
Subject: Re: [kbuild-all] Re: [linux-stable-rc:linux-4.19.y 9916/9999]
 drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x12:
 unsupported stack pointer realignment
To: Philip Li <philip.li@intel.com>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, David Gibson <david@gibson.dropbear.id.au>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CTYEQyk1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Apr 7, 2020 at 4:31 PM Philip Li <philip.li@intel.com> wrote:
>
> On Tue, Apr 07, 2020 at 10:51:38AM -0700, Nick Desaulniers wrote:
> > On Tue, Apr 7, 2020 at 9:11 AM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > Hi Dirk,
> > >
> > > First bad commit (maybe != root cause):
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > > head:   6e19c6f2d2653aebd7d307ec43293f579e21604f
> > > commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9916/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > > config: x86_64-randconfig-d003-20200407 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3185881d69022e03b300e189838b0599ed417be5)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
> > >         # save the attached .config to linux build tree
> > >         COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x12: unsupported stack pointer realignment
> > > >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x0: stack state mismatch: cfa1=7+136 cfa2=7+8
> >
> > Apologies that the bot keeps converging on this patch; it's not the
> > source of the regression.  The build was red with ToT LLVM before this
> > patch landed; after the patch landed this warning seemed new, so the
> > bot converged its bisection on this commit.
> Sorry for the false positive bisection, we will think of this further.

> Hi Nick, do you think the bot need blacklist this or send similar objtool
> to clang mailing list only?

Maybe for now with the goal to eventually revert, if it's easy for you
to do so, it might be a good idea.  In general, developers should pay
attention to new objtool warnings they introduce, but so far all
reports from objtool with clang builds have been clang bugs in my
experience.  Once we're in better shape, then maybe we can remove the
diversion of the failure reports?

>
> >
> > Also, we recently turned on Clang builds for 0day bot, so it's digging
> > up interesting bugs via randconfig testing.  This is useful and we
> > appreciate the reports, especially ones from objtool frequently find
> > compiler bugs.
> >
> > I've filed https://github.com/ClangBuiltLinux/linux/issues/977 for me
> > to follow up on.
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DQOPN5uMbOedLRyb-KvuGFEWp_iEewgtxSyroiqY7_JA%40mail.gmail.com.
