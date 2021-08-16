Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQUK5OEAMGQE7KQZFHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6673EDE65
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:06:26 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id m2-20020a0560000082b0290154f6e2e51fsf5808303wrx.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:06:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629144386; cv=pass;
        d=google.com; s=arc-20160816;
        b=0GN4qHDooV13dxpKqh6YWy3YAfTiDNAovHWWnI7aIhvC0W0RndY0Vcsw4panApwJYm
         JPY83L+SCwLl3SE1Ad7nixfMqAkGNpCNVXrx0TxvdcOCn8lutfjpwCnwem+99JtJs7Ia
         G6HnFWLt7/J1yu7+xc2ZlliPG2iUymR34mYvcEzRtoYcBOBodFdw64NWX+tT0bg65n97
         jLfjFXr+zmUqisPzbA2kdF4vrZwLK5t94VJ1GhiuQaWjNXDJUcurbriJV2iNt4oYbDj0
         Rx6fiZBIwuj5IH7qCBdNDMMd7GxhjIOgMsxBCFUXS9cCL/x8qVtb/riITlV4vBkAUDLG
         NCBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k6vWMoLBVqtaV2zUnayeOw/ujnoDNwXhBP8DHJJkHjc=;
        b=kNpGfDYDJIjBhB8sNQsM0nsECcUUZK1omMm2wDMXw8SpuX+FiWqwG1yL49DNPCcQIw
         2FUzMK29b8fx/O1kyTq/1DVshkFlGITn/fGHez+ziYAnGvTCC83e19mzfaPhSnjMESKS
         gis6Lw99nXbyxNTGuqxfQAezyuYKjLZ4AYUp91hR7dti0BGAo/ib/SmBtdZZ2xOgwPsm
         N/UDiTcKWBqqoWtxaZKqxiZdG6xjAJ7SBkjn30RjhFYzLSXlLLytU/q80b208foSiC5R
         sa4Raf54fNTVhg+Nn63C0cxQmwAZZFbMCgE7TIbPJW5tfF146eQrKwOmjyRurCDO51mj
         vxwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MPmTA2z8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6vWMoLBVqtaV2zUnayeOw/ujnoDNwXhBP8DHJJkHjc=;
        b=F5wR1P6pluTz26suii7iavGCY4lG3XjAgDKfQMsA5X7WPTWWjnS7g/tqiarbt7+2z5
         03DunYJI8a90RcQcWPC0DK/2nnhh4ER1dEOum5RSDgVCzNf2ASLdd2dIN1lbVLsqAGJo
         PH9Uc5LF844UMOhMfUhDDX6aTaFOCmSDL4o5/lBZS7q5/5ZeEao48Bw6LuGb58Al2MZD
         mtSP1EJbgNRHLW98xLxs/ey3JcEf7Y2ikf0HgkRMjUNGEkXX6oCgR5nmm/i9cofuO5fY
         GMzJlyIxxvlKqANiBzKML6WuMKATYkFcfnqmCKT+80eiPf8OkDfMW4c9t/KZ5IFH336R
         cP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6vWMoLBVqtaV2zUnayeOw/ujnoDNwXhBP8DHJJkHjc=;
        b=AhMXq9/AWS778VC6dbNqzvTcsHdlmN3JgPMH2OXPGfy4q9g13cwMj9GbR3XvHbtLH0
         uzx3Hw3RMM2yqMvwljtgsF900TSzjsEeVwsOxbKl+5br7lJmrMz35qrUasgK0I3nPhi+
         nWbsOoZft1yOfQc6gVdA/ZOPmWdLvhIZ6BMf3TIGKG3a8T0ML9WfIU+GZgPlc3Dd20PP
         iUueGjQSBNHWbWxMNj/9rCPwjTmm6MhITe1GnYwhPrFuCh026NI4z5y/ZyIS0rMYKFE6
         eeRb/BI8lmqmUpclJNAV5en7auMQkuNb25anxwiHNXbWbXsr4Zvo1H9DyxMxV5+0sxKZ
         /pCg==
X-Gm-Message-State: AOAM532jb6mW0Uo1Xwp2/xQ1aCimlr7wJklp7OQgQVH0egjw/r7CBJ8e
	OtMxqck3kEpOLw+VvJZ2xFA=
X-Google-Smtp-Source: ABdhPJwpy9WaDyC7wSCcmeIdQ7Vjckfvpqtg5XtnilKwtZf99SUkmEuevKZe6b44cHP9/1fthMFDiQ==
X-Received: by 2002:adf:eb0f:: with SMTP id s15mr213342wrn.308.1629144386470;
        Mon, 16 Aug 2021 13:06:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5383:: with SMTP id d3ls150989wrv.2.gmail; Mon, 16 Aug
 2021 13:06:25 -0700 (PDT)
X-Received: by 2002:adf:c044:: with SMTP id c4mr164255wrf.275.1629144385642;
        Mon, 16 Aug 2021 13:06:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629144385; cv=none;
        d=google.com; s=arc-20160816;
        b=yTveq6u3dl+FZp9SRvdQEwoOjDCFvgq8cmy58KHEGGN6ZpQ1N4pVSyxgg3Zv6aPSYw
         rGvQEaIIj+1/H1hIIyXaTHRjTJ4L0V1NqNG6YNX2qDYPtDqy0yKVKHS34tkTwGNRsiG+
         z764B1M0/26qTX4RGSR6aAeDM/vz6uyW3n0DmolPGPoN5MnLkhduZaVg70xzDwStWAvV
         NGBIn2LcN8qajaAP+MMHPk2sXqshV0R7ZBf0/bTxNw2Ww1sCimrNvSJC4h8lG1dDsdaQ
         tEypWe/K+qollhnDSg4HoOrjIRpFX8B4DqJErXwgnj5Ji5TgG9fQnwW6LJsGwpCt+Kaf
         Ck2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MCHefUYIGF0rDVJ88x82+J6avfifkq1IRlnZNezfBi0=;
        b=YTbo3NOT6+08Ri92/ry5jfKzYw82MfTHLNCs18Zit22nJbJpqd14+1prdkODcO2GBr
         uE5oZ1UjehJiBAipoRrbmDcQM5zkmSeCFchFu5ZCuAzYIjY6tDOGy99ftG0uVXvbsUdl
         Atb8Bu55MMClHBiChkfpeBhHkwYdUo3AInE13fXo5qboSziaDVtCHF9yM5qfajq7wjHN
         nyIpZEcqKn5NeEFO9FBkeHUsf97nQHD7l7+WyEgI3hGvyCFSLWmJseHDOT1D6T3+NWlw
         Ugp8hRj4TpSwpqr9tqZduGlr4myMYzxgAGSzlPyHYcN2uCv4RMqSECtTx1V2OBfI05LP
         GpWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MPmTA2z8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id u2si29014wro.0.2021.08.16.13.06.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:06:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id t9so36827870lfc.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 13:06:25 -0700 (PDT)
X-Received: by 2002:a19:f017:: with SMTP id p23mr55541lfc.547.1629144384999;
 Mon, 16 Aug 2021 13:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com> <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com>
In-Reply-To: <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 13:06:13 -0700
Message-ID: <CAKwvOdnc-GAHOQtjrjFzc6GzCLR35rQ6uVAenLLKBkEqws9Tbw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, Vitor Massaru Iha <vitor@massaru.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Daniel Latypov <dlatypov@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MPmTA2z8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Fri, Aug 13, 2021 at 6:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Aug 11, 2021 at 5:42 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > diff --git a/Makefile b/Makefile
> > index 027fdf2a14fe..3e3fb4affba1 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -798,7 +801,7 @@ include/config/auto.conf:
> >  endif # may-sync-config
> >  endif # need-config
> >
> > -KBUILD_CFLAGS  += $(call cc-option,-fno-delete-null-pointer-checks,)
> > +KBUILD_CFLAGS  += -fno-delete-null-pointer-checks
> >  KBUILD_CFLAGS  += $(call cc-disable-warning,frame-address,)
> >  KBUILD_CFLAGS  += $(call cc-disable-warning, format-truncation)
> >  KBUILD_CFLAGS  += $(call cc-disable-warning, format-overflow)
> > @@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z
> >  endif
> >
> >  # Tell gcc to never replace conditional load with a non-conditional one
> > -KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
> > +ifdef CONFIG_CC_IS_GCC
>
>
> Can you insert a comment here?
>
> # GCC 10 renamed --param=allow-store-data-races=0 to --allow-store-data-races
>
>
> It will remind us of dropping this conditional
> in the (long long distant) future.
>
>
>
>
> > +KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
> >  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
> > +endif

So it looks like `-fallow-store-data-races` was also supported. Reading through
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97309
https://gcc.gnu.org/wiki/Atomic/GCCMM/ExecutiveSummary
it seems that the default is not to allow "store data races." So I
should not be adding `--allow-store-data-races` or
`-fallow-store-data-races`; so this just should be the existing test,
with a comment that it can be removed once gcc-10+ is the minimum.
Will update that in v2.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnc-GAHOQtjrjFzc6GzCLR35rQ6uVAenLLKBkEqws9Tbw%40mail.gmail.com.
