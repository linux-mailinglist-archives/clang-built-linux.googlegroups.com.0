Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUOATD2AKGQELPV6MEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B45319C7F0
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:26:42 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id n18sf4005502ilp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:26:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585848401; cv=pass;
        d=google.com; s=arc-20160816;
        b=zSFQDp22GlIx6fwvNo1sFJvcBxQYGcxmzql3yfM7jAfIMp03uhqGl8ufib1I0zh+NB
         A4lv07tXaEaDX1ufXgzpBcWkrNxghL8lWL21NmvudsGBFOkACD5oLMLKx9ghb0LZVh2Q
         QEkuNU01rPqUgkiQ9+vyO2+yAuNmGwhJZTuMkC5PxJncho3hWV3v6IABrmMaCBhT82Sp
         bvv6HEVTJCVoAJ3Cav7bNs1ORSsskEeoMADqjZ3rb3a98M3TPGTuTNt1q+WY7Jrm+bD5
         KekIv/Db3DhoHSi/v1HDeEWUUYoKsBrFPhVDNvkzkqHYI1ul160KUqDHo2WhT0cy4eUi
         +0ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GZwqzwL6eJ0CURR0tdBmvmeepGnnSLMJ3Z+f+DhtF4I=;
        b=WqwISRfp3wRFtmIjOhZpaczBGkoSuMViIZzzLdEEA41FZtMgAVwQaMQwJBQiBrNNnQ
         XGOnXcDaMNlEhcFmZsZCK3at4aXVvwiVDJ8CJEi0kAhE4ZDhgM8R2pOMHOSs6jFzBdm9
         W5bbJKvdBhSkqlRyOz90Z9PY1PxVkBIB9oOzd7fFF9jftP0gmJIf+5G0OMTzUyDXdKcy
         5QDK7eOLY8sxU6nJvXly8lWLNtwlvF0dyCFrSdcZKBZosPBWR9CXhwSkS+VhJfBrRFtb
         IJ9UM1vCux0ZIlyn3ipZEIAZTzPu+mLjo0dyCOT0MAxb+FNuLfc9Z3efOtrmILX30aP9
         VAKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gKNvgOy8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GZwqzwL6eJ0CURR0tdBmvmeepGnnSLMJ3Z+f+DhtF4I=;
        b=FqnXRv3B1HuH5pUN5EK9pA/KUXQDncm0/3VxIkd6bDxn8jHzmsHc6q2d/fmqQq4I69
         XHWNt/63H9rpZweA5RD0m5L3rGHMmSB0e7aERdSqBYvx9L/ieDwtrcas98LJDWD6Lczh
         +eLHr3cUZp+I4ve5l2GtKZ/P1DQpD8mmjC+dUBepphR45f1g1SQmV91h6sdVZYhSevyi
         /3ZYiw77pL3hb3DWT6ZyS3S+zn9Rb94HeMn9Pbc6imZ368/cLHh3LmryJNBHsa8wVLHr
         rO6cdCOu6hX+w/tpFctU+4ILY6S2Oy665aKEtDGyrSSlhZtsFK77R+0aR5VoE2xjbiGJ
         AqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GZwqzwL6eJ0CURR0tdBmvmeepGnnSLMJ3Z+f+DhtF4I=;
        b=d9dhEuXjdFPFWHv/gxtuDeCXQnKElXXdUWCr8kxF0E7rhETlfFcKm6lWLQ9Bhk2aX2
         0RbMJB72EXK5f6PQONX7mcHs2z/GeC8PrOAm+f4/lc34ZTVUiRTnUVNFo9apt2vjetdW
         Au7FjF/Cl3a2sDdwb3se+8ZYnp+ztVgMBqlkJdTzBEK807zved0ipitIz5+8qIPFyGP1
         RRbyBJ0HbVB1qbE+GW7poFGIAqtezwCENUHuT2t9F7kyUAyx4ZNEOJBH5ffLZwAECOrq
         3rhRMm+dMQ8aCnX/+2stWPe44apQyIZFba4iazVTzo3KO3Ok2ucavSIDnBUAniEZW8jG
         dKQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubz6QL5pYsb01ZZjD70u9b/iHM6dLizhAANd2AUb/ZxyIR2IHpp
	mefNyWUB2k4G5WbF8jGblPg=
X-Google-Smtp-Source: APiQypJlRuE8IajkDqoAdfKg3q8lnTO9Pfz3iUaxof68JM6jkfb2O0VrR0ml7ZkkJBGSJy2fEwJtcA==
X-Received: by 2002:a02:b891:: with SMTP id p17mr4200873jam.124.1585848401177;
        Thu, 02 Apr 2020 10:26:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls1318574ioa.9.gmail; Thu, 02
 Apr 2020 10:26:40 -0700 (PDT)
X-Received: by 2002:a6b:c408:: with SMTP id y8mr3806428ioa.12.1585848400734;
        Thu, 02 Apr 2020 10:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585848400; cv=none;
        d=google.com; s=arc-20160816;
        b=L9BDffKymdn1SjLblol4WbJdIXpr0iju3tafP3AIdAAwSaQI6JizKIMP9IpV4p+aNK
         04haisl3mt4gbZCv3PIm7UvpZ5krsuR+vzlMT9tXm4jlJSGmuAR9va5aM+p/YSBkTC/S
         5W2XlypDenAP/NWc0suoaX0jVaV8IYuHC82Tib9abZaOKGl8qcGE1Xdyf1rUGbTfGoHA
         MzztDqLoSDy3zONXKy3qRKye2UpQCRCceF0xrw6DPGgBKsQMayBTbbgzltMMS6l7odNN
         eKzPffu+tpHFue2Zb74xgaflIEZTvi5WPUcR9ZWb+2Or/c/kHDKVMIKFUzDLCCXlNDz2
         +fmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H5lB7pAvXIGYlFSVzFQn+Y4Z8wDMSG1ZSww0VcSBoT8=;
        b=jbiRkjMOnpnQQkKiYy2IF5ewSjQtuYi5a9e+oeUJfWU5ir91vVyaoJ6hNOckDMIjF0
         L6dj2rgq3yI92n9YCny7zxlsthDFZLz49R8fkqy4y/cV2wvGBjLp7ZOzGfat48wuY6Nx
         JL83FBQOsbOadrhpsVRLa4ahEMbzvOgJY80s3je4Z97ehidF5yuTeLAIBnHx/Ad+bXM/
         +crNei7gB2nG4zmAwXs/n9cggeNwDRuePE3ek+imXiMMTefkZkj9xi5/dIwBeKqgAvcF
         2X+uMtW7y6yc58sShWQOXjojhF2vGvC2DPV8N1bAGfjLViNFkdLGC+M1hEzCS7ycNWFL
         1czg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gKNvgOy8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t125si470982iof.4.2020.04.02.10.26.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id g32so2149325pgb.6
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:26:40 -0700 (PDT)
X-Received: by 2002:a05:6a00:2cf:: with SMTP id b15mr4105568pft.174.1585848400117;
        Thu, 02 Apr 2020 10:26:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p1sm4171243pjr.40.2020.04.02.10.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 10:26:39 -0700 (PDT)
Date: Thu, 2 Apr 2020 10:26:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/9] Enable orphan section warning
Message-ID: <202004021023.D3D8AA3BE@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gKNvgOy8;       spf=pass
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

On Thu, Apr 02, 2020 at 06:20:57PM +0200, Sedat Dilek wrote:
> On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Hi!
> >
> > A recent bug was solved for builds linked with ld.lld, and tracking
> > it down took way longer than it needed to (a year). Ultimately, it
> > boiled down to differences between ld.bfd and ld.lld's handling of
> > orphan sections. Similarly, the recent FGKASLR series brough up orphan
> > section handling too[2]. In both cases, it would have been nice if the
> > linker was running with --orphan-handling=warn so that surprise sections
> > wouldn't silently get mapped into the kernel image at locations up to
> > the whim of the linker's orphan handling logic. Instead, all desired
> > sections should be explicitly identified in the linker script (to be
> > either kept or discarded) with any orphans throwing a warning. The
> > powerpc architecture actually already does this, so this series seeks
> > to extend this coverage to x86, arm64, and arm.
> >
> > This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> > landed), and has a minor conflict[4] with the ARM tree (related to
> > the earlier mentioned bug). As it uses refactorings in the asm-generic
> > linker script, and makes changes to kbuild, I think the cleanest place
> > for this series to land would also be through -tip. Once again (like
> > my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> > this can go all together with the least disruption. Splitting it up by
> > architecture seems needlessly difficult.
> >
> > Thanks!
> >
> 
> Hi Kees,
> 
> what is the status of this patchset?
> Looks like it is not in tip or linux-next Git.

Based on the feedback, I have 3 TODO items:

- track down and eliminate (or explain) the source of the .got.plt on arm64
- enable orphan warnings for _all_ architectures
- refactor final link logic to perform the orphan warning in a clean way

I'm working through these (and other work) still. I'm hoping to have
another version up some time next week.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004021023.D3D8AA3BE%40keescook.
