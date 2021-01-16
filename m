Return-Path: <clang-built-linux+bncBDYJPJO25UGBB66ZRCAAMGQES2XUPLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9052F89B6
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 01:02:05 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id e28sf7057228pfl.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 16:02:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610755323; cv=pass;
        d=google.com; s=arc-20160816;
        b=tekPIV8iQwUpTPiQXCZMO8Oc9hC9rNPIoqNsT+C4ruaJM0wEkyie7SQmM4S3xKU7yg
         kGnxOxcTOggm5De08CA5QPozO3ughBHfM1/f1hdU6JPwjiOv5B6bl5JEkQW5WVlZoG1o
         7zQsF6Kpp0IupAkyfhDO11oEmdoQeD9eU0hy27mE3F6aR7vobfn8+0HEzo12ZGGfJwt4
         aR/ESOh2Kri+Y5XY5Eb2o3mwDXXZpAS+OmweYfag1IPgKbI/hO5gJmSvsIZvAprjZ1D+
         iJT7hK0YrG7LyFWLWWJ7jhITMuyztHhYtlQ0WAu0a7xCMU40XftJNpiARCpB1OK5hSvc
         rgtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WkNs3MMevzV2hMJiqZk46mYp8Dxi0k0tYdFNryaKPB8=;
        b=aFFr1s/dUUxjVaVZ3fojJWrvGJ2cRb9RFF9VBKkaFnlOyi98LUmsdeVJr+5iAXgV3V
         ExOcLxomvsQwzyNnQCXV0WfqyWuIpB5gCXFE/3enB8dO/irhZcMBW3nYtxymOgfDIIwI
         JVjyuoAsFucU2YkoXB7IPaqh6WvvWAeKjdAsqZ4L0ROGmdwDnUsdcXxHx20RXbxUZSIC
         lnfUe5ULNNiNlbMm/q/OdJ7zW27pJkXbEM/MTm/OGxZn7mWYG9mgjyCABAW9ZDSgTDeO
         vyQqk19fBqlTyN0uhTBDRo/qMHD26qUlmiV2Lmga9ox9cN9oB5op7V5T8THgXsyuEUoU
         s8fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=luKEj3Uo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WkNs3MMevzV2hMJiqZk46mYp8Dxi0k0tYdFNryaKPB8=;
        b=RxOhd8acAQJgkwzBRePRuJuDEw3HzCM/h2yK844s5Q3hF5OrfGz2ZlmaNwuiCPVw6m
         lrknk0Gr+35E/cEsSW1E1u+RfPfE7IQIEgOpCGI9C4yBjBlYAMmO5954sCkR4IpVlGtV
         ilxmDb/crgMl33nUIZsC0ZBZwi1iQ6WsapV6fxLMuHIO+b/T6uVG+ymRpDq4slYjsskW
         QOK/fn+/3nGas54rBWc4jHgw87i8hc6zFKMuF0fxgZ1A5lRggydjG5syQ0IbMFNPHzpq
         fmWEVdxOiCou4WYf5obS6sSfxSpKI1sNW8HJYCCTsR1Ol8Bz62CvaB7PSH8FiZuQtBCp
         GiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WkNs3MMevzV2hMJiqZk46mYp8Dxi0k0tYdFNryaKPB8=;
        b=kpQY9MWdDXY82gnTv8Wd6ReuTRfPv0gYE/DmxkRhcI5BHD5Yki4+Mb9c9a60BVyssF
         YxfS4MZt4EuszAa8oRSZxBEpElHOqdFmMClw+jwTocY8wnkyNK3CChSIWafYP6Wc4EIu
         zdSoX4Px4hcKcwF6tG7cbBJfl56ycXqUZ8JbCsmNYtUHQgpO6KpvmqEUSUcvMJOML7wx
         tJjUGLPDLESbJ/zvdt9rX3HII7ZEI2E+qS4K+nznHchAVGPxVKgbhbQzxDt7wdB16/hw
         ECg21YZ7AMdh+6UegceTNhSXz+CxVPhQ72JQoGfn+RbeAG2QyTzyFhmK33fqPxLhD9WR
         h5rQ==
X-Gm-Message-State: AOAM5321LqqRsrz9t/wTYyoWoHWTJEbEyZmuvmSu4b7Z5qU8bdF8YkHw
	XXlQCE12GU/SLFswJfw4oR8=
X-Google-Smtp-Source: ABdhPJw14AbVxdPl+wv0klR1aJBVg6SjWi/fhSSXSAtkPRIrtr5OlIElpAwfrR8ZW5H2T7BUwSBhmQ==
X-Received: by 2002:a63:1965:: with SMTP id 37mr15073226pgz.349.1610755323658;
        Fri, 15 Jan 2021 16:02:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7310:: with SMTP id o16ls4050051pgc.4.gmail; Fri, 15 Jan
 2021 16:02:03 -0800 (PST)
X-Received: by 2002:a63:6f0d:: with SMTP id k13mr15140652pgc.256.1610755322910;
        Fri, 15 Jan 2021 16:02:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610755322; cv=none;
        d=google.com; s=arc-20160816;
        b=pUjwBcPm+r0GKASVDEnpSaWeBciNRY32KTl9aU8KRlUgN9Ha4JHggc+22PNmM9yAg7
         gSFm1Smok5ghnADJR0/LMXPYW0XSHkgI7EcJJzGWKRMywP5oHEkBOcJZy/2gNzd1RbP4
         sBXpKJsceoq7nkGK4yIQv1ds/KSEfviOCV/U2qVEaVU81Uu75S8koMPuLek456vvAfW4
         DOr7+qe852bBPRclavx7e5CWaZRwVYibYR0AKS45GBG7nsa0Ua+fhImL+lt+IbD/d5MQ
         1jN2PXJBxJByBg8/llgifoHEn7agT4zHBdVCG76FscAeC+p5LydHlIj1fNwAq496fF9B
         lrUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FY8VpQNfhIxBmUN0CCall3v72xLkiHt1IqHsb3quwR4=;
        b=Vrcne2UqMfZJBKt1dVV1clWhq+UYLjjMzoQlPnyMFh1xRVr80wjkIRmJDMd/Nt/LHt
         mgh6ZiMBVpw8r6XNn8UI5RvDKQL6IZfCKI0adrPa+EISC/bCgs0u24c7isdB1QVdf6ol
         jjdcC/j24pihVubMN+m0basOSbXj1lDqqkKeQlTrzN84LgipfeiCvpjGRXctM3f6sQQH
         Bp/GAHpjqspmO1V1bNV7vbtuuti0A/bWJQ9A6CTEOTgOQqKXDbeBKx8tjsaVdfoiNtUy
         h5mXVq8jLx7CRQwm/YupFt3Zb6f5Fi1O3Dg9XmrGZD1PySh8qY9EgRk9L+Rf2P7p0tvQ
         df3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=luKEj3Uo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id ce15si910228pjb.3.2021.01.15.16.02.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 16:02:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id x20so752364pjh.3
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 16:02:02 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr13549703pjj.32.1610755322387;
 Fri, 15 Jan 2021 16:02:02 -0800 (PST)
MIME-Version: 1.0
References: <20210112053113.4180271-1-morbo@google.com> <20210113061958.886723-1-morbo@google.com>
 <20210113205547.GA21653@Ryzen-9-3900X.localdomain> <CAKwvOd=0wWz4o652EoZNvfu1L+fuhuGZusqpxiJ+561DtCh7Eg@mail.gmail.com>
In-Reply-To: <CAKwvOd=0wWz4o652EoZNvfu1L+fuhuGZusqpxiJ+561DtCh7Eg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 16:01:51 -0800
Message-ID: <CAKwvOd=rEngs-8DR6pagynYc5-=a06brTOOx5TT1TC+v7-3m2Q@mail.gmail.com>
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=luKEj3Uo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034
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

On Wed, Jan 13, 2021 at 8:07 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > However, I see an issue with actually using the data:
> >
> > $ sudo -s
> > # mount -t debugfs none /sys/kernel/debug
> > # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > # chown nathan:nathan vmlinux.profraw
> > # exit
> > $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> > error: No profiles could be merged.
> >
> > Am I holding it wrong? :) Note, this is virtualized, I do not have any
> > "real" x86 hardware that I can afford to test on right now.
>
> Same.
>
> I think the magic calculation in this patch may differ from upstream
> llvm: https://github.com/llvm/llvm-project/blob/49142991a685bd427d7e877c29c77371dfb7634c/llvm/include/llvm/ProfileData/SampleProf.h#L96-L101

Err...it looks like it was the padding calculation.  With that fixed
up, we can query the profile data to get insights on the most heavily
called functions.  Here's what my top 20 are (reset, then watch 10
minutes worth of cat videos on youtube while running `find /` and
sleeping at my desk).  Anything curious stand out to anyone?

$ llvm-profdata show -topn=20 /tmp/vmlinux.profraw
Instrumentation level: IR  entry_first = 0
Total functions: 48970
Maximum function count: 62070879
Maximum internal block count: 83221158
Top 20 functions with the largest internal block counts:
  drivers/tty/n_tty.c:n_tty_write, max count = 83221158
  rcu_read_unlock_strict, max count = 62070879
  _cond_resched, max count = 25486882
  rcu_all_qs, max count = 25451477
  drivers/cpuidle/poll_state.c:poll_idle, max count = 23618576
  _raw_spin_unlock_irqrestore, max count = 18874121
  drivers/cpuidle/governors/menu.c:menu_select, max count = 18721624
  _raw_spin_lock_irqsave, max count = 18509161
  memchr, max count = 15525452
  _raw_spin_lock, max count = 15484254
  __mod_memcg_state, max count = 14604619
  __mod_memcg_lruvec_state, max count = 14602783
  fs/ext4/hash.c:str2hashbuf_signed, max count = 14098424
  __mod_lruvec_state, max count = 12527154
  __mod_node_page_state, max count = 12525172
  native_sched_clock, max count = 8904692
  sched_clock_cpu, max count = 8895832
  sched_clock, max count = 8894627
  kernel/entry/common.c:exit_to_user_mode_prepare, max count = 8289031
  fpregs_assert_state_consistent, max count = 8287198

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DrEngs-8DR6pagynYc5-%3Da06brTOOx5TT1TC%2Bv7-3m2Q%40mail.gmail.com.
