Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYFLT76AKGQEZOGNJWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 9864728EC72
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 06:53:53 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id w189sf1293747qkd.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 21:53:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602737632; cv=pass;
        d=google.com; s=arc-20160816;
        b=1K50/GKLhj1P8HEWziZrq1vFh1N9H6jM/yxFANdzh/9ym3SlFeFuj8Vw3mzTsmrNJl
         EhkyEmQCME/PNGPEUpByOc7U1+/ZWe1C2i8n7Pp16TDl7i9KZ87Wd9Tu0E9OPSRElv14
         31SUINMIofDU4A8u00SKJzejLojhXTWQv3vq8OQ/p6G/pgnWzpRl/aYaZh7TjVlpDDLg
         zqjWnHq/Rbipn5tUtDOS3712HLguN4iVrJiaJWNoV/NGzXbXZ39/hzrgnXubyIm2sX/p
         1s645p4i6ycSf8KdoEalJERxbYlpO0oSHSTA7t792mb33iDroOdBo6jqFZvDFGIwgFxk
         Yi5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WKzrhRkOc1TiVrVoGGRdNqGisEjIU2uDzFy8Lx8Ao9c=;
        b=g1WclP1b6/tizYm2hrIbu4tshTCI0XPfOrBh5j1n0smb+tIMFFehOViGEHWiPR5Xxr
         Ih1+kGk6HqRXlQ2wqGZtAE8vKt5Riu/7hhGkrLKgwwqxCT5h4e1LRO0GbEK7/eSn84mz
         UCvTKSbkq5PdTHZuj4IsWRi/36biJq5axMlTRxYxlVWF9qBhh3WFn6n80FiZF1+6DPYL
         q0qoGuS92vm3Hnm049LRunufTjJAxLL+RHDzauBbp0BP1ofdkKTPfOKg7RsLCLqoaBs1
         O+sFVkuB9+PHz1ue0FZpvzdhFTRa9t+Vi1QqFILJ6Oz0EPhen97aQ2T1Vfhz86BMGcFH
         IkdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ErrZa3fP;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WKzrhRkOc1TiVrVoGGRdNqGisEjIU2uDzFy8Lx8Ao9c=;
        b=c8bPeQRFiKLEfNs7tuuWPyDvH6AwrsatEQIP4u4ADAdECdcw1bYiP7BM+Y64lw2fcf
         k3l/TxoVxru5HyZn9ruK+3TQw3P2rEJNHxEHtu8ugmsgMVoLT+WKIepSE1t7ckKI6f8x
         /wc0RQJHjVh9D9p8MhtKQLOjEh7KivVuVy77omXqlJbl/qGfx/9XmYQBdw5W2N/g4xl7
         ORAR1AuONRMxBej5W8beE64m8kIue6jfQKbnFN013k+PmKPNigv5zIsyspUsUEWWnl5R
         YslFglUhsaqzMR1FUfGZI9O28lAP2otznqs7+S1j6wMVIR+AAzwgmjgKQkZQPlKAJ3B3
         vj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WKzrhRkOc1TiVrVoGGRdNqGisEjIU2uDzFy8Lx8Ao9c=;
        b=QfeVTMCn7H/6AKbs1Y3W+QFVkyKDikIlfEQIjVIrjH1Gjhah+4K22ttOWOlEV+c+17
         Pk6QvclxVrtCf1PEoF/1MXHFPe7diYpeDTiMsJ3JtfeSQz2CrApVSDBlRM8nOCe9UK5J
         cvf6Hz7SIUDmJYJCd/a0W7e9FKu91S6yrS2ZuJGDTgvhh1j+AXD5HAjhIE+ytdBiFiJ8
         ANRIBrqh6UCNTjCqOcGyJFui/2l8OTj/CareiYkaR0Xx/OK4WgQaOw6JuaBYtM81JRZX
         NMSmJL4GpremRNd5rCkq4oGpeff/DLWqI75/x8zr5kQHwOjqO323YJC0hOQ58q3Epvi7
         +JmQ==
X-Gm-Message-State: AOAM532vjKYN5DD3f26g9aCaZdvLc9hpJRP+YxE9Y7G0N3eKWw0hm0Kd
	9AJiycL+HhrsmQU55VSMbP0=
X-Google-Smtp-Source: ABdhPJwt0tnIX9R031NsHKMkKoF2kGrtb0jQqiVz4V1A33VeSrb1f+VEhMLFhbDaOdH7/fib8Xj/rg==
X-Received: by 2002:ac8:27e7:: with SMTP id x36mr2464225qtx.131.1602737632288;
        Wed, 14 Oct 2020 21:53:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f97:: with SMTP id b23ls676649qkn.11.gmail; Wed, 14
 Oct 2020 21:53:51 -0700 (PDT)
X-Received: by 2002:a05:620a:135b:: with SMTP id c27mr2405293qkl.51.1602737631770;
        Wed, 14 Oct 2020 21:53:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602737631; cv=none;
        d=google.com; s=arc-20160816;
        b=vZM0at3Quemwi0G3n8roELcuRDm+hK2P1KoOzoQ6d16zjUs0m4U7RHdphT50lTh6kf
         1hw+12e38VB9awtBNTxqPWxxUcl5W7SGjy0o/6/Fqk745zwOFtgT6WvOGPcOUG+288NV
         cWFCIbyywj11UfVTZhv20ukGsD/i+t7ZTgm2saIpb7N4Qm/sSbFHA2i8FU0umKlEYoWb
         vsSvAS285cAp9bQGpWjeP1gqwJ93rlpRK/6oXFw4An8VOD9d51T1nmCbdPXW0OOhhwUq
         C2jEkAaljQb3uolrdiRJNEGkaXLvXz+k1NxHYlIBnpQUijY/Zyvg6Yt8skQZANaW2u82
         okLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WnT7VxOT22lB70S274n8jv3DY8IooahSVVXzJOT5Npo=;
        b=OJi7Ir6DPZbXlOM5UL113+f6nYcQkrlt9GfUGHXMI6ELBNsxucoNmHW6sfUTwv2j2z
         opJorJj4b4nPgGUwDXLjEqM3lS9rXqaKHZNMHVyLH7nyaEv69szrMQoDfiSvDRYAYaAm
         O6vmAl/yZ15mVF0CS04rRU3xtlqC1E7ljOyAqB2vYDltskhdTYhtEMkxchavIldyfB2m
         5yweFCJIJGvqLGO+E28LL0KImlyLQGJRZMqleLYAPc3KkCvaZ7YjxU6kw9oJoLPtt4MV
         7fVPXKS0vFOEZieWDfhDYRARxXozpML41vIl8u37fGDp8LrShyM2IvtEso3UgKGfFKcJ
         KLvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ErrZa3fP;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s76si84026qka.5.2020.10.14.21.53.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 21:53:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t18so944090plo.1
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 21:53:51 -0700 (PDT)
X-Received: by 2002:a17:90a:8002:: with SMTP id b2mr2638763pjn.47.1602737630777;
 Wed, 14 Oct 2020 21:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <20201005025720.2599682-1-keescook@chromium.org> <202010141603.49EA0CE@keescook>
In-Reply-To: <202010141603.49EA0CE@keescook>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 14 Oct 2020 21:53:39 -0700
Message-ID: <CAFP8O3LvTkqUK3rp9Q17fmyN+xApZXA8Cs=MNvxrZ3SDCDRX3A@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ErrZa3fP;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Wed, Oct 14, 2020 at 4:04 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Sun, Oct 04, 2020 at 07:57:20PM -0700, Kees Cook wrote:
> > Under some circumstances, the compiler generates .ctors.* sections. This
> > is seen doing a cross compile of x86_64 from a powerpc64el host:
> >
> > x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/trace_clock.o' being
> > placed in section `.ctors.65435'
> > x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ftrace.o' being
> > placed in section `.ctors.65435'
> > x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ring_buffer.o' being
> > placed in section `.ctors.65435'
> >
> > Include these orphans along with the regular .ctors section.
> >
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Fixes: 83109d5d5fba ("x86/build: Warn on orphan section placement")
> > Signed-off-by: Kees Cook <keescook@chromium.org>
>
> Ping -- please take this for tip/urgent, otherwise we're drowning sfr in
> warnings. :)
>
> -Kees
>
> > ---
> > v2: brown paper bag version: fix whitespace for proper backslash alignment
> > ---
> >  include/asm-generic/vmlinux.lds.h | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index 5430febd34be..b83c00c63997 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -684,6 +684,7 @@
> >  #ifdef CONFIG_CONSTRUCTORS
> >  #define KERNEL_CTORS()       . = ALIGN(8);                      \
> >                       __ctors_start = .;                 \
> > +                     KEEP(*(SORT(.ctors.*)))            \
> >                       KEEP(*(.ctors))                    \
> >                       KEEP(*(SORT(.init_array.*)))       \
> >                       KEEP(*(.init_array))               \
> > --
> > 2.25.1
> >
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141603.49EA0CE%40keescook.

I think it would be great to figure out why these .ctors.* .dtors.*
are generated.
~GCC 4.7 switched to default to .init_array/.fini_array if libc
supports it. I have some refactoring in this area of Clang as well
(e.g. https://reviews.llvm.org/D71393)

And I am not sure SORT(.init_array.*) or SORT(.ctors.*) will work. The
correct construct is SORT_BY_INIT_PRIORITY(.init_array.*)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3LvTkqUK3rp9Q17fmyN%2BxApZXA8Cs%3DMNvxrZ3SDCDRX3A%40mail.gmail.com.
