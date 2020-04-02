Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3GDTD2AKGQECYW6MBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2C319C80F
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:33:33 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id t193sf1690647vkb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:33:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585848812; cv=pass;
        d=google.com; s=arc-20160816;
        b=kSsIRHJu8S3OFQAx3Rn1ubuK+kknUC6tL0zmcS1mPQtT7LmumdhJhWT5uArxkdfEHa
         B1PxrKShjYOxxLKI7z2RxDisH7PEeZlmvZx7TrgsyakqKg+gK3akVm1YKS3Mztlyo9bL
         niSyRpOEFvxLCSBV+vb84DNIPH0m2T5vfr7BHoLAnopkP14lRBO64Nykk7yrIi6L//88
         AP+T5srL8EpvAohPApeYGO3O4JQ+AEE2rf/aUUuUq866FIshn41bkJK8M82lfM6/1CuB
         f8edTJ75cpDfHsayOugkfBhqpaf/Uy2bcs+yR1CD91AIqCsXpgVFP5Fky1o1UIpzAWiW
         S2/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=c5UUeEIYSRSVOa2Ycun3oJ/yUCxzS8cz6mATBU3GBOs=;
        b=fAYwxX8/qyfZjE1ueVkFymwQXjLt6zWeYaJl2WomqP3Xq9uSC03S/NIR2pUn0mItGg
         rWNIoa+ttM/5wvi5Dz1RpYGp/M5q+fxy1/667KnfaiReGKhsz2S2vMvjCN4o5V+KIqje
         SoHw2W3h/0qeVCV0RFMCSdDBNqPT/YOQ9pVxhY1sSV416ncxWaucdG0frafZkd127U2V
         UueVTZ5oFrrFygqLN4c8sbQpnkDdQmTuSihcRxAvcHVTvMZui+DMlzuZu7wgKU0FyGLt
         zVCR1l7Tul/av3ojUeky/3+xlluMaIp1TOFih2G+Dxl73Kiox13PKdRL+QMqGxmvi35h
         gBiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VHJ5LUdW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c5UUeEIYSRSVOa2Ycun3oJ/yUCxzS8cz6mATBU3GBOs=;
        b=QHP1xmjdh4FzzfPzFZ89D5xqC22Ykoq4pvfBvaAu/XM5edHMpxw7NNLzQQofYt9fOJ
         HGJTz98gJ0QDPleB2xeD0zqGjNJPj5mXG3BLFLm2UQ3+V7sB6F3ENVFb1N5sN457d2Ht
         n0GYWEGUwTBCU6pv1YOQ+yIThK6Ep4jwc1er0cvmynLlBfVdJM2DeJQWDp7ItdXGBb76
         j72OiiKiDXhWiTANI8ntEWhrgGn//iXjD2BGQGMkZTm552djPK9AnE/rnEz9Z5IkoMcR
         WnpRsVN0EKQSq5HTouDLgX4/QbbJZ513gKS6z/z1TufR51hBBcOOjhYUUFVnJtPbqCHd
         cxIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c5UUeEIYSRSVOa2Ycun3oJ/yUCxzS8cz6mATBU3GBOs=;
        b=KB/ecH18MihAOSRmlJrVZg7e6QCj4dldyU47THpvuSyYlHs2q2k3tjl2kXniaDQ8U7
         9sx6h4Dt5oHZwCW39uT0Oi/tcu/WTO+ifxSgPLYHfe0zg0lbWib0VokI28nYaeK1ZSUd
         nS6Gmsx5h3Y11Z+LL4VSK3cpvvwljfOp4VTFnxOXy3kLqp1OSwBzpoLs2jtE8fWmxM6V
         tRbgv/PhSm3STnUpg6S6TcXu/v4/2orn+5fSFbG4xvnUa2a2o5ZFyq3qN8WpgAHnGeVt
         yTzh5GS1LybTdkbV2hO3jtqodq+qvOjmRU2xVDS1Zed2lEJQQfTHBjnp6aQQK7yCs85o
         tIgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY+p3I/+K0+dtUzfvMXxBcN/o0F0AWt32hXL3LICEVRkB7Kr49D
	w7rBlMlylLH64iwzVBhS1fk=
X-Google-Smtp-Source: APiQypKrYF+JS2IHnMQLiuOckfGrT946wZeu7kSN8hUOUQ5suKnStxoYiJnwlbiM+u5o7Z/cumhmiA==
X-Received: by 2002:a9f:2434:: with SMTP id 49mr3491502uaq.138.1585848812599;
        Thu, 02 Apr 2020 10:33:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a989:: with SMTP id s131ls266266vke.4.gmail; Thu, 02 Apr
 2020 10:33:32 -0700 (PDT)
X-Received: by 2002:a1f:7f1d:: with SMTP id o29mr3231235vki.101.1585848812091;
        Thu, 02 Apr 2020 10:33:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585848812; cv=none;
        d=google.com; s=arc-20160816;
        b=CzWhrpa0sZXwp6UQuASFLhtzFPDMyqY94W/O25OK/oE+KBQDVZxUjrccUmrORbGXfm
         UhSYseXglSyi5koDA12wTnoln1YQJ5T8I0VysG2CjRNG9uEBg2gmHLsXbRJdm9jp1zPR
         2o4N8QckQocpUazv6A1cvPTQkmFxs1ACmrtkmoSyIlAMmMMkZjZMv/NI/VdoGwRRA73w
         4UeXYGdtQIyhvmu7QNdnOKe5jIi2xCxmFn1iKbxWz4JFsRCWPpulgAITitkdx+vGqZ9l
         wTb7brrBV3I3y41iVu2s3V3qe0lHiTLPrWWG5dfJ0WE+1dGIKFTAzj1iMILi0bAK8FPU
         /MGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2Yk5kZzRfldGKF/5/inhs23oSA0DsXNr92E4/iY/l88=;
        b=q737HNOQP1O2zHmwYJDwI28mXWBS0GCQHH2If3WvCRYAFHeDQepzWDLXf0Ck+XMLnQ
         VNg1uJ+om0GtpnUPeqEg0jwvwQyxtbmSjbouC1q/Y1SgR0KZ0irQATFGMam4v+ORloBw
         SgnnRRaw8PdCxhhP0FwgxnRAjbmSg3aZ5FH6L7ncIFHKndnZbceM6Dzzo80nZIsHMHYE
         095JUr/th0Q4V6d0UtHp509RsaOK4oFYkY5rjf4kxp85b0JzGBEXivbS6Ut8a+tew1Sg
         ty/L7zcN3YKvLyt/b61ZPCu6wCXtwAJDbQIckIAfCqStAe+m05z1ki++zOOQhUJwd1NG
         EWlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VHJ5LUdW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h6si491476vko.4.2020.04.02.10.33.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:33:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id c23so2165514pgj.3
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:33:32 -0700 (PDT)
X-Received: by 2002:a62:2cc3:: with SMTP id s186mr4180269pfs.236.1585848810547;
        Thu, 02 Apr 2020 10:33:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f9sm3006548pgj.2.2020.04.02.10.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 10:33:29 -0700 (PDT)
Date: Thu, 2 Apr 2020 10:33:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
Message-ID: <202004021031.511103E30D@keescook>
References: <202004020117.6E434C035@keescook>
 <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VHJ5LUdW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Apr 03, 2020 at 02:00:52AM +0900, Masahiro Yamada wrote:
> Hi Kees,
> 
> On Thu, Apr 2, 2020 at 5:18 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > When doing Clang builds of the kernel, it is possible to link with
> > either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> > discover this from a running kernel. Add the "$LD -v" output to
> > /proc/version.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  init/Makefile       | 2 +-
> >  scripts/mkcompile_h | 8 ++++++--
> >  2 files changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/init/Makefile b/init/Makefile
> > index 6246a06364d0..82c15bdb42d7 100644
> > --- a/init/Makefile
> > +++ b/init/Makefile
> > @@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
> >         @$($(quiet)chk_compile.h)
> >         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@   \
> >         "$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"    \
> > -       "$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)"
> > +       "$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
> > diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> > index 3a5a4b210c86..f98c07709370 100755
> > --- a/scripts/mkcompile_h
> > +++ b/scripts/mkcompile_h
> > @@ -6,7 +6,8 @@ ARCH=$2
> >  SMP=$3
> >  PREEMPT=$4
> >  PREEMPT_RT=$5
> > -CC=$6
> > +LD=$6
> > +CC=$7
> 
> 
> Just a nit.
> 
> If you just append 'LD',
> you do not need to touch the 'CC=$6' line.

Oh! Yes, good point. I had convinced myself that the "CC=$6" was dropping
all the passed-in KBUILD_CFLAGS, but I failed to notice the double quotes.

> If you do not mind, I will fold the following
> on top of your patch.

Yes, that would be great; thanks!

-Kees

> 
> 
> 
> 
> --- a/init/Makefile
> +++ b/init/Makefile
> @@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
>         @$($(quiet)chk_compile.h)
>         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@   \
>         "$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"    \
> -       "$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
> +       "$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)" "$(LD)"
> diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> index 8b38a96163e2..5b80a4699740 100755
> --- a/scripts/mkcompile_h
> +++ b/scripts/mkcompile_h
> @@ -6,8 +6,8 @@ ARCH=$2
>  SMP=$3
>  PREEMPT=$4
>  PREEMPT_RT=$5
> -LD=$6
> -CC=$7
> +CC=$6
> +LD=$7
> 
> 
> 
> 
> 
> 
> --
> Best Regards
> Masahiro Yamada

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004021031.511103E30D%40keescook.
