Return-Path: <clang-built-linux+bncBC2ORX645YPRBYV3WKBQMGQEDM3NOZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C89355A99
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 19:44:03 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id s10sf2518068vsi.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 10:44:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617731043; cv=pass;
        d=google.com; s=arc-20160816;
        b=FToMwdY2qZDAJm/0tW7lVQ+tiROegJa2W1jlQydka0yDzDVbxq67rTNsxuDqIF5n9W
         djCcXmHovSzkA174LuAOLFhmyxhQha0e93oPcp+uBpHzLM6lP5WXUKxT9p1fNwLpL92o
         j1reZcjN5a7OyI4QwiYhbMqpssIhXsTZI0URxjw96IfmV+lz8Kh/SxACG8lhADHAuNy1
         +cISVaHqX/7iJKXFHOQQUzkWS3qx+jbvzEy/vXTdjK4gijJ/DjbJ5Gbp07Kh/+UhtIJF
         bDGOwlUiUn8pPdCS0MQZZizJte2bmczEAXQxNN9g9j0Ti5RwQ5fk6iyNrO3Sz9RRjHCz
         qVHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sbznREbTy7ac1I0/tS5wer1X+rQ8TtvXfrgZqvW10qc=;
        b=KxPcotMnE65lAjEUh4VSckBF8YAR2WkIZ+VqBzCnX62Hjc7ASxWYpecpM0WQGQCa90
         NpvdjaBZ8n3tAWkEKqLLqarNuZ+GAnXrgybQT6/jjDnu5EtrVszmoovy6fUaiObF6Hyi
         su8WdXOSfRnQx0VauXby6QFWDIrmKUAkOMYFoVsykUUluYR8ngWI1hh6AIphicE9+Zlq
         0tAeWBBRplxEoHoK/N5iTRFaR9G1An1fdt6c+jQB5NpeHqmWn6/KzVmymIZxvbBG55ah
         x7xhoGpdSw41ZhG7hKsCauM7aVuGsiXMuE996Q7mqKv4cCxDxh3L/xht5UrYKP6OGZd2
         xfGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k44fY36v;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sbznREbTy7ac1I0/tS5wer1X+rQ8TtvXfrgZqvW10qc=;
        b=pOSeg9bIJk25MuUm37zaxgcbQgrM6uvy8xGqjPwbfZZOis2897oDwhvTPU9FLR2vN+
         OV8aDaUWLCYH/6XK5cszwtbbFtFkuLM1NTnrpCvzSeODC2IliYjSIa2UdtwCIIHeNCnu
         Jiw2DkAG2HbxJJfVBtnd6RFrZXwn4dP/afqNM5n+TF8WgDcUrUuW6tysj7m0igHhXbgg
         6iZFlXL07IDCSNxk+cEl0i0IDhA7JcFInJoD6UZ1wzQRbnjrNvwNPiuYnd1AyHIJwcR6
         eSqleMhIBaz2tmYiwrXK4bpD229VIEEg4l2xnCHQuhT1OpX8L5s2r8SgylBc4Jf8GOzM
         i0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sbznREbTy7ac1I0/tS5wer1X+rQ8TtvXfrgZqvW10qc=;
        b=N8jI7RW0Njm5WxUu/RZnvmVaDMQmhtGyT4oak4BG+cF4mU93AlFxrU99lPGtGuNmy1
         x2UrVjNEc9ctiiw1iP2ycVifChaXYNOnLFSwFOGBO/wo+TvBEciMrq4Lc+UzkfcUBwHF
         DBVriZMG4dA8RxWvFvn+RbZKjgP7O9Um5wFbVzZr6ipkxbVO4z62BSVC2gdKJzU6riYF
         l+WKE3feNiWD5nxDAJC1HvX3/MDbHyTxP2aseQ3uNKCJyFe+4e91WbgiiQP6BAXs89yn
         i465KSQPsuYb1PN6HrgRcbft+qd3cWzDKw7UlR81tBh8kpmniCuoKhAfcbVdlyWGKI3w
         hl2Q==
X-Gm-Message-State: AOAM530Hqbo2PDbxcX7Tss4cTT/VMTDSvDAqxBlm6ihs2+gnGX/EcH/M
	MzJDXmg5At7xlk0HchVJRgo=
X-Google-Smtp-Source: ABdhPJytaJGWSMr+mGZdmTEMUlqSknemDJduz5lWcgizEGhSFIawdzl+hW7zggYDaMs8SA3QnKhZWg==
X-Received: by 2002:a67:c214:: with SMTP id i20mr10211739vsj.11.1617731043051;
        Tue, 06 Apr 2021 10:44:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6f05:: with SMTP id r5ls1416748uah.9.gmail; Tue, 06 Apr
 2021 10:44:02 -0700 (PDT)
X-Received: by 2002:ab0:4042:: with SMTP id h60mr17369831uad.133.1617731042467;
        Tue, 06 Apr 2021 10:44:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617731042; cv=none;
        d=google.com; s=arc-20160816;
        b=T1I7F6fTdBiY0XLmbWiHSHxBcmrQT9vbmAbJDZVWy6j5tDu3ZXwfuJ86DQoRKrZnTg
         rfbKBIzzOhQ5DrY2hsONbwtPsp/FK55Ii0iC5t14l4De+yu1UBAi/DKmKbp6CLS4GSxJ
         2HDwEF1LikbUpyL4RQU3aKLZAN525Vb7g8NFrd2r0MbnjcXOeDhhyu/gFfobuDXqepTw
         SVj2wGB6wukWdkgxwy/0M10CfKFlj6WIHmeYHzL7/3dWjavKN3qfGl+Dh4mVhryQLKo6
         BbpIJU2+Ir8ZwoPPTIgujbUHGijEMMluwC/7It/DSUqHwSiNpzpu1taxVHMNSSF9fgyW
         UXsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EtQUUFH1idf1LCKyK4bnY5JsWaSl6wulsAadPAZ7yAY=;
        b=CTKpZ8eosuCf1l0fXa6ra1Lt6awBxzk85/lRw3Q8phUEtYDT08m/JMM4XV2k6oMImu
         AfdLjH6qdDX5ysurDIPFnOaL46+YtZS8FwlCZ/MLX+26xTACqLjeVhN6hFoD2eTXEtjQ
         w4HFHJmFC4ERHIxdpO4i7rYbzygTh3By8ty5kuxwP8lpfU+fj+hETrMZdHLi9ixtnLN8
         nvQoZ8tZnVXPGSRKM85hliPnHBv7kpmc5nuQzm6+xJ+WZsKgOvUHaKfqdCDJKdA4Qjow
         EtqHqMewG9LI18nXywoDUZbukpZ8epKTgJjd1uHMbY5N4c+AdP8MXDFAOg4dhEAk7mnt
         CYuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k44fY36v;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com. [2607:f8b0:4864:20::a35])
        by gmr-mx.google.com with ESMTPS id w10si150932vse.1.2021.04.06.10.44.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 10:44:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a35 as permitted sender) client-ip=2607:f8b0:4864:20::a35;
Received: by mail-vk1-xa35.google.com with SMTP id o4so3367362vka.12
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 10:44:02 -0700 (PDT)
X-Received: by 2002:a1f:9345:: with SMTP id v66mr18088483vkd.22.1617731041913;
 Tue, 06 Apr 2021 10:44:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-15-samitolvanen@google.com> <20210406115357.GE96480@C02TD0UTHF1T.local>
In-Reply-To: <20210406115357.GE96480@C02TD0UTHF1T.local>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Apr 2021 10:43:50 -0700
Message-ID: <CABCJKuchDg74Md_He1nKgXKUf=pVEmiaVr_yJXB_yX+tKNhByA@mail.gmail.com>
Subject: Re: [PATCH v5 14/18] arm64: add __nocfi to functions that jump to a
 physical address
To: Mark Rutland <mark.rutland@arm.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
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
 header.i=@google.com header.s=20161025 header.b=k44fY36v;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a35
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

On Tue, Apr 6, 2021 at 4:54 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> [adding Ard for EFI runtime services bits]
>
> On Thu, Apr 01, 2021 at 04:32:12PM -0700, Sami Tolvanen wrote:
> > Disable CFI checking for functions that switch to linear mapping and
> > make an indirect call to a physical address, since the compiler only
> > understands virtual addresses and the CFI check for such indirect calls
> > would always fail.
>
> What does physical vs virtual have to do with this? Does the address
> actually matter, or is this just a general thing that when calling an
> assembly function we won't have a trampoline that the caller expects?

No, this is about the actual address. The compiler-generated runtime
checks only know about EL1 virtual addresses, so if we switch to a
different address space, all indirect calls will trip CFI.

> I wonder if we need to do something with asmlinkage here, perhaps?
>
> I didn't spot anything in the seriues handling EFI runtime services
> calls, and I strongly suspect we need to do something for those, unless
> they're handled implicitly by something else.
>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/arm64/include/asm/mmu_context.h | 2 +-
> >  arch/arm64/kernel/cpu-reset.h        | 8 ++++----
> >  arch/arm64/kernel/cpufeature.c       | 2 +-
> >  3 files changed, 6 insertions(+), 6 deletions(-)
> >https://www.cnbc.com/2021/04/06/donald-trump-save-america-pac-has-85-million-on-hand-ahead-of-midterms.html
> > diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> > index 386b96400a57..d3cef9133539 100644
> > --- a/arch/arm64/include/asm/mmu_context.h
> > +++ b/arch/arm64/include/asm/mmu_context.h
> > @@ -119,7 +119,7 @@ static inline void cpu_install_idmap(void)
> >   * Atomically replaces the active TTBR1_EL1 PGD with a new VA-compatible PGD,
> >   * avoiding the possibility of conflicting TLB entries being allocated.
> >   */
> > -static inline void cpu_replace_ttbr1(pgd_t *pgdp)
> > +static inline void __nocfi cpu_replace_ttbr1(pgd_t *pgdp)
>
> Given these are inlines, what's the effect when these are inlined into a
> function that would normally use CFI? Does CFI get supressed for the
> whole function, or just the bit that got inlined?

Just for the bit that gets inlined.

> Is there an attribute that we could place on a function pointer to tell
> the compiler to not check calls via that pointer? If that existed we'd
> be able to scope this much more tightly.

There isn't, but I do agree that this would be a useful feature.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuchDg74Md_He1nKgXKUf%3DpVEmiaVr_yJXB_yX%2BtKNhByA%40mail.gmail.com.
