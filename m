Return-Path: <clang-built-linux+bncBC2ORX645YPRBTNIWKBQMGQE6HOGE2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEF63559E5
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 19:03:10 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id y10sf8031600plt.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 10:03:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617728589; cv=pass;
        d=google.com; s=arc-20160816;
        b=BRB4LZgqtR2dnuC3K5HvzBBk3PCFl6hZDH5Z7mubgcj3yBaWc8Ap2HnTDBMDDbODXE
         lEzCqnQDgbYQ4/UKwi6a8jbp2Z/TsFvcbaEBCqbqrwGQvU4zwuvMuW9B3nbu+fUUM9Nu
         4UPXGGJ38/8FvyjBoCA3f6UfglwgLXXJI+4t3rtVOYPmCDLnNfCqJkn+oOepEcHa9zs2
         jEQwuAlv3rIjQRsLnB+O1RWyFQtG+LH5NrxEQD+iLNn++KRPs8fYenlxUTJe/lQcPUgj
         vEjfuC8/Bj80ZB5fvsk4B+FTzjHdnUYwj+ESYvPrOAoACAAcS3WiAszO0Dv9uJvRzkOs
         Hbdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gkzDrdFw3vrUHlOo4Rs/p4jlVwR7MGW/u/Ujft5sCQo=;
        b=dfh8R5H1JFWLLy097xDsAU4Zdx85RmvRDhf5poIQ7p/FGpauTM9LN6qcOIT/xduSuV
         WqYkZgQq+AxSP0BvXtuywwFf8zkQvfuKJZgswIZOsvTvOMxqim3R6V/15he7jLe+DKPU
         k0wT3jptlOtaNuZhqGkweC/TWg5ynjbu9ExuuwR6jV75jLAmXSYk3Uenra5vKm3/Cgv7
         9ueZgg51DFIiBSITb5ocKHVMt2xOiEQvMHhdh6Eg1ZHEajQEWEFRM5r56WUQ7xjwCSxO
         /zZBV3nSfrua48+P+IzNkH6CAUSur3AmBD7rOvLLmgBz74kEUMc0YMvaIg0IfdeGVvto
         oUcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NC4Z5tuE;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gkzDrdFw3vrUHlOo4Rs/p4jlVwR7MGW/u/Ujft5sCQo=;
        b=ltrX3U8u7nizwI+szq/NHIdnZ/i78IDXNDx5vkm59n3478PFeGEzzjfG1o8yZATXMv
         wjW5c7ykUzsGL2s7dlzjf9UhGT3+qSD+aNkvLSSKZf/M8Za69PwRPR50syqXU0ZOm8LV
         C9yXe+eIM9zWWFYpzp4dPf1VgghEDgcEkd4Adz9heQT+aYGEu4pAPtx2EQfK+lBz+P3m
         NS+EYdeoDYWWd/244esIb68ME/9hLQuSQ8bZxvSBEW7aqZd7tQ47Boi8WpWxfDAilL0d
         BtlmSnZ4Z4vGVg1NNTCPwJtXFxQk+HXxaIRpaoHykuFyiFjXrSMQnF3uC9uMrRVfM/bu
         nlRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gkzDrdFw3vrUHlOo4Rs/p4jlVwR7MGW/u/Ujft5sCQo=;
        b=a1goTnp6xSIhuCZNNrzEv6c4PO1zxmb6SRfZGCft96j5IRB1OTE+d6sH/9PwKvtYEa
         fQsF7JGQuEdSJxLR0nlyXnty2w4buIdGDvKAtZx9hd7gpb24xH+HLi3+7bDk7Lcya4r0
         aQCbHdt+jnSSU37ViyKhHa4GC/uKLDTUgfnJ4QVSf1rPVVOdYoDVNW4M22WsL3zZ/bPI
         +/cs1mSp0W1Ca7PamW9p5ao3zXIZhPwx8hUx/zhOOPbyBxn0KqwetR2FhBfI86bkYUhm
         rnEvvR81hj1q/yN7lOw/u2cz2d6x0FPKXgvKaVxEoEhv+fiZgaa1z5Rhw50+aIPZqRq+
         t8gw==
X-Gm-Message-State: AOAM531N7Rd2mTe6Zwe2MSyvsBZFV7qnd9As9E5nNkW55JgvcIvCk4mB
	zynycBdmjbPxz2u+Ku3wFXw=
X-Google-Smtp-Source: ABdhPJzIQNjHgYyaRrTLbG+6AHJxVRfh0YDrmrqaU0bE4IEKpEiOR4Hl4jfejtvqfqXe2avHUT0MQg==
X-Received: by 2002:a17:90a:1f49:: with SMTP id y9mr5488126pjy.69.1617728589379;
        Tue, 06 Apr 2021 10:03:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:545b:: with SMTP id e27ls7607157pgm.3.gmail; Tue, 06 Apr
 2021 10:03:08 -0700 (PDT)
X-Received: by 2002:aa7:9f90:0:b029:204:99fa:3374 with SMTP id z16-20020aa79f900000b029020499fa3374mr28547020pfr.11.1617728588766;
        Tue, 06 Apr 2021 10:03:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617728588; cv=none;
        d=google.com; s=arc-20160816;
        b=K2p7MtWhnW3SEyalUND8dCUbMobhEHFhAOV+QZyfruPOPluOXuLvgY68Oo7JtPtg6m
         YG4Z3r9XiIgNl7EqxbjliYpjpMvDh2TP0FAf9IEs1t7C0Oe5oYHJk6U7iccYr4RvoyRK
         457o3UK7J+FrDC7meU5XrI1e1mfu5NsSADpklI0suJY4PO7FNwafbCCryYZZps1HekaH
         4REJ06XYPV7/cSxuYV5PlzTd2uSdZFBD61p3YBIR1wtujvy1dw4AD85s9/uX+KIr1CZK
         ZSQGcGFD5T+yrzhK6TzA4C+QjhrFCkRDcNbZRzlARd2Wv8Ls3gt5TXyffYFqadFkM77N
         VNGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aSGe0bQ5V3W50ybbudz7bPErfQLcHAnbU3s+nR3236o=;
        b=on8i2e8YvMuIcRcUwxUVJA9GevdHGsi3tfmuaZvUEPrS5TQYecJw1JDi95cQWW2AlU
         ZflnWYXk3/9ODwtPUB0ALv2IInWk/0mfns8CbWBMqnG5Lo9EJMUggMxuCX+sNk2aK4oD
         T5K9I1uma66X67QF9rJy1kiXmIFinTOP/IHKhgkx/e/XMpI+nrUfKfHKw7L81LEWy04/
         ybKIjWTAJ4jJYO7bXkxNe/zVjvt3ow7jL8KS1lcfPS+lOmDkw71UAg3ygOdAs+MEuMEq
         lx07W4lWOCF9TaM60AgPmxFk8gVoXs9t68I/oUoBHCblhOZqO3Ynxa9oa9DZIJdUBewP
         tuaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NC4Z5tuE;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com. [2607:f8b0:4864:20::e2f])
        by gmr-mx.google.com with ESMTPS id c3si1377972pls.0.2021.04.06.10.03.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 10:03:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f as permitted sender) client-ip=2607:f8b0:4864:20::e2f;
Received: by mail-vs1-xe2f.google.com with SMTP id k124so2547182vsk.3
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 10:03:08 -0700 (PDT)
X-Received: by 2002:a05:6102:2423:: with SMTP id l3mr16985008vsi.54.1617728587679;
 Tue, 06 Apr 2021 10:03:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-13-samitolvanen@google.com> <20210406113657.GC96480@C02TD0UTHF1T.local>
In-Reply-To: <20210406113657.GC96480@C02TD0UTHF1T.local>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Apr 2021 10:02:56 -0700
Message-ID: <CABCJKueabmkC3OXSGHKMKS9wJEeRGHBd3b1hK6fM=mMKkj3b1A@mail.gmail.com>
Subject: Re: [PATCH v5 12/18] arm64: implement function_nocfi
To: Mark Rutland <mark.rutland@arm.com>
Cc: Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	bpf <bpf@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NC4Z5tuE;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Apr 6, 2021 at 4:37 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Thu, Apr 01, 2021 at 04:32:10PM -0700, Sami Tolvanen wrote:
> > With CONFIG_CFI_CLANG, the compiler replaces function addresses in
> > instrumented C code with jump table addresses. This change implements
> > the function_nocfi() macro, which returns the actual function address
> > instead.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
>
> I think that it's unfortunate that we have to drop to assembly here, but
> given this is infrequent I agree it's not the end of the world, so:
>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
>
> > ---
> >  arch/arm64/include/asm/memory.h | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index 0aabc3be9a75..b55410afd3d1 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -321,6 +321,21 @@ static inline void *phys_to_virt(phys_addr_t x)
> >  #define virt_to_pfn(x)               __phys_to_pfn(__virt_to_phys((unsigned long)(x)))
> >  #define sym_to_pfn(x)                __phys_to_pfn(__pa_symbol(x))
> >
> > +#ifdef CONFIG_CFI_CLANG
> > +/*
> > + * With CONFIG_CFI_CLANG, the compiler replaces function address
> > + * references with the address of the function's CFI jump table
> > + * entry. The function_nocfi macro always returns the address of the
> > + * actual function instead.
> > + */
> > +#define function_nocfi(x) ({                                         \
> > +     void *addr;                                                     \
> > +     asm("adrp %0, " __stringify(x) "\n\t"                           \
> > +         "add  %0, %0, :lo12:" __stringify(x) : "=r" (addr));        \
>
> If it's not too painful, could we please move the asm constrain onto its
> own line? That makes it slightly easier to read, and aligns with what
> we've (mostly) done elsewhere in arm64.

Sure, I'll change this in the next version.

> Not a big deal either way, and the ack stands regardless.
>
> Thanks,
> Mark.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueabmkC3OXSGHKMKS9wJEeRGHBd3b1hK6fM%3DmMKkj3b1A%40mail.gmail.com.
