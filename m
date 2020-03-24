Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV6D4XZQKGQE7SU6HPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 184A819034C
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 02:26:49 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id 2sf10886962plb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 18:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585013207; cv=pass;
        d=google.com; s=arc-20160816;
        b=gSq8lekSZ/PaFh/RISvSIYR5+TM26YdjAnYND7VyYYJuh3gmblAn4wzV949pwDQhaA
         Rxi7aGjDCDR748EJlKqwHTTTE6Xc1IsSFLuAY/b9lPZwFaHTpt51eFidPK3c25ZVn1GV
         9mw237AOSa3IkoelVmWqtmx+qcjti3PaQqnT9rbB2jemEBHxLS2589bqq6HsF8OyDpLD
         z1jczNNnM8MfamNUj1O+eRC2rQOUEBKBHvsDbxqsFRHQVzPYHJ2e1KEU8rY3X+bu+x9c
         NxUSGMmUT+kofoxoJc0N+Y76xbFljn7DHLaWfr8xaif+IDogzdUgJkq0MlnZ2moFrN+5
         UshQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ymc6ewiaM6EdlKTr+R/VDBX4gAbHS88QEux1Je50BmI=;
        b=NPt42e6bvKX317FdGOooJlF7YfCnwnuSnW8W37Q6bnKlxtXXOlsXt6ScdHWBrXmWKF
         S5+Y3/h1T8wThHbUsvekrQGloVMy6fpka+quvsWt5ZZygyLTOx0dCJhqJSvghj995+pI
         Weo//jnCQueqsp8DoHr4RrhdgUan7U669M2NC3su7csHbp3Fh7BeDM3Sb0b5Wkz497fW
         u9qdfmxZNcLJA9529xQMQVDhAjgUL1NbFvyvhn4cxNlJPKV9mF6SYGvEgMBnzeSvfuD9
         p6QUtHAhxb1SyGmbUQJQGSK/EzugoBX3lEH9j0B2TeWJHkxzBJBJ9rSpgrbHDEWaxG6V
         9PsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JupE4bd7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ymc6ewiaM6EdlKTr+R/VDBX4gAbHS88QEux1Je50BmI=;
        b=j+nFuWtQcgRTNj1QNrYcarPhW8opEGZE3vSzH5+dHXV9Wzh5OfvVMnZ/3DNyzioKlU
         JJ5UMjvccDgCd+GUrGBcQIMgjMTkSf3tNF/Ls6ULtU8KhpDFmqwDKRUwZi2zpk0jyqmg
         Ttgn0ia1tkcXV2BVDWywLsyhLYfJ2sQ+GJsiQ6sc72MsduyRuV3+Z/vUv26rWrmtRPZk
         /uzMCU9bxLQhiYaNnPiLPIlHOAVTHsdNj1rIxnGsfytY5NRjn76pChgePSGKIPMiwheh
         ll0g7+awgU+ncxsGoUwXF/wkNPyDmQ3ZwRiYwhPlZU5qHzsJegWcAEZh5qb8kciPs2Ho
         F5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ymc6ewiaM6EdlKTr+R/VDBX4gAbHS88QEux1Je50BmI=;
        b=Ms9dUDq/RWWoFqf9JmwBBV4Lc9H3HW2eIZ2LHOsc69vCwFhS3+UCMPJL6EX8z4u7VG
         PQzW8AjBrFRd/N3sl2MYaQ7xiSJh55S0SWdxKtNAfy8rDuND0IbFgsq8pkTykYOCeo41
         ptQTIhacXVI4C+pngK+zPORukY8AWuaVcLevk9OuIDh7/HsZ9rFMlsCSFFJdGdIvTd23
         0VeyVZFMQLsxC4km5yhNnHMLT962HND/A8LfIIusmVNMQwYkT537DQNnfmaB1GqvVbh7
         C3ojyBPD/zk2QJXOUJuL5bgLNr4eAHOVUk4kaUIsP/F91j6a1wj8dQH7bD7pvUfDILHp
         +fYQ==
X-Gm-Message-State: ANhLgQ08oXqbpZy1rH5nYxCTk+6k90YZZYZS0qQSGwzhEi/g5UGUtaE6
	NE/sNxTC+mwewakH2D74m0I=
X-Google-Smtp-Source: ADFU+vuU2AXhBDMs9CKH27lLWNHI66Pg8pGugKuyTIl8gV5MPPL5Kh/ZJBscC6tueWsSpJjYL2BrxA==
X-Received: by 2002:aa7:8ec9:: with SMTP id b9mr25839105pfr.118.1585013207766;
        Mon, 23 Mar 2020 18:26:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls8389416pgj.8.gmail; Mon, 23 Mar
 2020 18:26:47 -0700 (PDT)
X-Received: by 2002:a63:9043:: with SMTP id a64mr25160666pge.308.1585013207084;
        Mon, 23 Mar 2020 18:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585013207; cv=none;
        d=google.com; s=arc-20160816;
        b=L2nIiG1kQT3eeLUa3fEGvNSPusX7DmU/iCdMbbkmuEoUAnnZc+g4tWqd+Z6bgNBXel
         2SwYs8Zcl6bYaGEkQ/wzuGVj4FwpxikgJLaDL3XdUxBtcAKmmXsWGuATyE5xt2z8cZMC
         ZnDFyUX8ypA2uVWsOKc6eFw/z1KmzdC2t+g+yoAxIRj11YUF0RXvxz5NI9trB0iuUFcB
         jUydHT6MHb63Y9Z75rUHfJr+CAhsVt7mUgJwAy8Nqfo0t36oUgHEuoL9iL4Mi+qGTMKY
         I+S+nKDB7d/6ymnG17XIIcmsc12Un9EBk5Q9uJL/E6GKyj1flbsCJnMco5VKq1/Nxpta
         9VLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sSGOreqSveTCGsryYuLWLrytzLjguZSVHd8eb2+8qac=;
        b=W7vQqvtr5STNRs/PrmWDSKLN0iAX3cq31EooOwTR9xZ56QDTgZ/gMugRBNXwiVDtQ9
         0bd2rtGCNn/T5l4DwQ69Fj78PEdzsfcuktLRkxwbps4B9c9C3kNLdwO4Tq2RdE3dAcUm
         fb3SPDdDiatjp/XBZLfrbYlW1QrkMDUSRy23B7BfglGoXMIwJhrMQQlJWKe+6OL+vI4X
         dgAj9rE/AbOUJ/QisFsVzF/jskJK3u4+FdpJnAE2fuKOZLYpod/DEOOqEfqTvA4MsPaq
         8lgyDUuuX3vqL5lGzrTn50wrxcYhgMvpnT+NEyqC7DOss7Su93zlcPBl47b0GYEHJpxa
         B8KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JupE4bd7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 185si622143pgh.3.2020.03.23.18.26.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 18:26:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id h8so8148884pgs.9
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 18:26:47 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr27188448pfo.169.1585013206339;
 Mon, 23 Mar 2020 18:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com> <CAKwvOd=p5jkqopHr2ka_9PM345d-hzoqT97Gq6z1ZsmJS1ZQvw@mail.gmail.com>
In-Reply-To: <CAKwvOd=p5jkqopHr2ka_9PM345d-hzoqT97Gq6z1ZsmJS1ZQvw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 18:26:34 -0700
Message-ID: <CAKwvOdnp8qU46SH0yJDrRZBXr+KyH_M8LvsaOatuVP=h9qc1Lw@mail.gmail.com>
Subject: Re: [PATCH] x86: Alias memset to __builtin_memset.
To: Clement Courbet <courbet@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JupE4bd7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Mar 23, 2020 at 6:22 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Mar 23, 2020 at 4:43 AM 'Clement Courbet' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> >     Recent compilers know the meaning of builtins (`memset`,
> >     `memcpy`, ...) and can replace calls by inline code when
> >     deemed better. For example, `memset(p, 0, 4)` will be lowered
> >     to a four-byte zero store.
> >
> >     When using -ffreestanding (this is the case e.g. building on
> >     clang), these optimizations are disabled. This means that **all**
> >     memsets, including those with small, constant sizes, will result
> >     in an actual call to memset.
>
> Isn't this only added for 32b x86 (if I'm reading arch/x86/Makefile
> right)? Who's adding it for 64b?
>
> arch/x86/Makefile has a comment:
>  88         # temporary until string.h is fixed
>  89         KBUILD_CFLAGS += -ffreestanding
> Did you look into fixing that?
>
> >
> >     We have identified several spots where we have high CPU usage
> >     because of this. For example, a single one of these memsets is
> >     responsible for about 0.3% of our total CPU usage in the kernel.
> >
> >     Aliasing `memset` to `__builtin_memset` allows the compiler to
> >     perform this optimization even when -ffreestanding is used.
> >     There is no change when -ffreestanding is not used.
> >
> >     Below is a diff (clang) for `update_sg_lb_stats()`, which
> >     includes the aforementionned hot memset:
> >         memset(sgs, 0, sizeof(*sgs));

Further, `make CC=clang -j71 kernel/sched/fair.o V=1` doesn't show
`-ffreestanding` being used.  Any idea where it's coming from in your
build? Maybe a local modification to be removed?

> >
> >     Diff:
> >         movq %rsi, %rbx        ~~~>  movq $0x0, 0x40(%r8)
> >         movq %rdi, %r15        ~~~>  movq $0x0, 0x38(%r8)
> >         movl $0x48, %edx       ~~~>  movq $0x0, 0x30(%r8)
> >         movq %r8, %rdi         ~~~>  movq $0x0, 0x28(%r8)
> >         xorl %esi, %esi        ~~~>  movq $0x0, 0x20(%r8)
> >         callq <memset>         ~~~>  movq $0x0, 0x18(%r8)
> >                                ~~~>  movq $0x0, 0x10(%r8)
> >                                ~~~>  movq $0x0, 0x8(%r8)
> >                                ~~~>  movq $0x0, (%r8)
> >
> >     In terms of code size, this grows the clang-built kernel a
> >     bit (+0.022%):
> >     440285512 vmlinux.clang.after
> >     440383608 vmlinux.clang.before
>
> The before number looks bigger? Did it shrink in size, or was the
> above mislabeled?
>
> >
> > Signed-off-by: Clement Courbet <courbet@google.com>
> > ---
> >  arch/x86/include/asm/string_64.h | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
> > index 75314c3dbe47..7073c25aa4a3 100644
> > --- a/arch/x86/include/asm/string_64.h
> > +++ b/arch/x86/include/asm/string_64.h
> > @@ -18,6 +18,15 @@ extern void *__memcpy(void *to, const void *from, size_t len);
> >  void *memset(void *s, int c, size_t n);
> >  void *__memset(void *s, int c, size_t n);
> >
> > +/* Recent compilers can generate much better code for known size and/or
> > + * fill values, and will fallback on `memset` if they fail.
> > + * We alias `memset` to `__builtin_memset` explicitly to inform the compiler to
> > + * perform this optimization even when -ffreestanding is used.
> > + */
> > +#if (__GNUC__ >= 4)
> > +#define memset(s, c, count) __builtin_memset(s, c, count)
> > +#endif
> > +
> >  #define __HAVE_ARCH_MEMSET16
> >  static inline void *memset16(uint16_t *s, uint16_t v, size_t n)
> >  {
> > @@ -74,6 +83,7 @@ int strcmp(const char *cs, const char *ct);
> >  #undef memcpy
> >  #define memcpy(dst, src, len) __memcpy(dst, src, len)
> >  #define memmove(dst, src, len) __memmove(dst, src, len)
> > +#undef memset
> >  #define memset(s, c, n) __memset(s, c, n)
> >
> >  #ifndef __NO_FORTIFY
> > --
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnp8qU46SH0yJDrRZBXr%2BKyH_M8LvsaOatuVP%3Dh9qc1Lw%40mail.gmail.com.
