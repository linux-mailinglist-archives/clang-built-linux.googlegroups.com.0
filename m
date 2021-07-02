Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF5W7WDAMGQEXAS7KOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB673BA3EC
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 20:29:43 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id p4-20020a5d63840000b0290126f2836a61sf4199964wru.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 11:29:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625250583; cv=pass;
        d=google.com; s=arc-20160816;
        b=UdOM+fb53pyEL/svd34B0pAj4DpD4uyMMZh2wtheQp7O7IfpDaM6pRUTQPZ8FgDC+Z
         IN6nvojcx3oEj3fZ0AS8Ez7MlA4yPRsOLQ1/co1Umz4ecBfXXMUWiB0SutGJXjOkwbLZ
         2wF1Ly/nkMbU1PTjoEdulFFEr1+wjayOU8LzWcFXTu2RJz8q4t1eHUpTwiQk3wlLoJPC
         aGPreyH/HGxsMqYbVwg0u6Fm28RRTaGlmP0CuNiLeCnFms3H/arT5xxCLwOGtdLM8fG+
         mnQWwypI+I6ifP+hChVli/BqReYxHXvv1zBRP14qZZZ4/Ec+M3GLHY7w1+Xia6IUHSKE
         Qjeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=y9FwWBVVfFD+kFjh0yfcd2ldrg/DMw9v2s5xAxUZDxo=;
        b=cdKaQvw+iRAhM7y+zvpwE82AmPaIWnoaIGxECpYnPqNtBmq5S+AKsGSaFebIFY2P9+
         XH6EiKehjem84i1jZOHtCgIJJTxbILDBNVxtmO/U7HhcSOO4pPPUnIladwOtMRjdHrSg
         5l5n+c+1zypYDwsuEtY+RSiOVrWntdfROOFL4nzkYRWKwdc5ywGIpQkpy6L7UfHRMZo8
         ziJ38qcCdM9kCIMFFaAmyVnDVjTSCFBeOWrWIQb5GumSclM48yx4K+1XQ9+lDBZUxaev
         ZikEj9EMK+NR+9Zglt36DwrEzIyrXC7LAyKH9EiP2PFW1tst9u9KzfqbpEgZL50hswlV
         bULw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Go8dlU4p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y9FwWBVVfFD+kFjh0yfcd2ldrg/DMw9v2s5xAxUZDxo=;
        b=I6zsK8ZIzwoRvdroMm7UKPbYj72yLLA5FX0gTsGSUR8ri38rODHVxn1begRAKdw4oN
         xozKlfHHkxspW9JcQJb3vkjZdY04Xx5RnXeqrrBAzStvU3JOVEQUV7jl2++BrkdxllzD
         jNPfCSCccH0havDvyUVoHcfIgXSaZf4BZygchvNWU24geYPMbNwuWtVOMhcEDciyhgAe
         5JRZIbkrJJ9wiBKtLp30jfna9GVcwhbsduOYMZg5H7AF29hL4XFxDKhsOtgj22QpIiCX
         lf0UcOS5qluS4HG3q7jSOBQ4UCKpDhOBZ6FtLyoTBjFsBF59MRUEpg7TsE/031+HrTr2
         sD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y9FwWBVVfFD+kFjh0yfcd2ldrg/DMw9v2s5xAxUZDxo=;
        b=Ly3NP0mZ+wJqBVtlEqEGb+UM125xlw63Zp3n6lL+7OuyrmF0CYD7XtBDm5aJz8c6N/
         1lq9mkai6nBqzULqGT62rrmhqCiiaXlC6Yu0Qa6hPycu7Og8asCHFx2lHImq8qfLLrOr
         2WlKcqt+zflpD+7cbgZIG/gd3wtbkfT4gmovQN/wkp2TxX3gDZiYYwLQsP1JLb7eGfmV
         eeTeJvQjW5jQZm7MKcwRn+S9MMyiqeBwrVzzYuMTk+INSRrikg3gxr2GqBgrusz1ISjE
         3DMK04AwOYGHjC+UWSIVhS9ICBNghcE6OqzkysNhv63qIiyQf0cecmgF1Lt6oM7/KCzq
         fJJA==
X-Gm-Message-State: AOAM532jTKpjqiJP0B9myI+Ob69FhJW/NE0ITbX0x+8ps6RwNETS+JxT
	OSn+4UN7/3jA2B42dTR03U0=
X-Google-Smtp-Source: ABdhPJyRKh6Ulm16FpkWKaXY/UHL5hdg4O7Hr8mJ/Xpk9krSSYK4pDItMYMLVL+IndNxEZyOJ+65IQ==
X-Received: by 2002:a05:6000:1361:: with SMTP id q1mr1055941wrz.179.1625250583570;
        Fri, 02 Jul 2021 11:29:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls6974135wrt.2.gmail; Fri, 02 Jul
 2021 11:29:42 -0700 (PDT)
X-Received: by 2002:adf:dd82:: with SMTP id x2mr1043582wrl.303.1625250582789;
        Fri, 02 Jul 2021 11:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625250582; cv=none;
        d=google.com; s=arc-20160816;
        b=TbvMSdFoNQHJVcmQMUihjie/4tR9gjvsau3sdW8aETtBgl59YRpuYDoSqeSeHdfeC4
         KNntbRUq3jhpYoaVziyXp1wSMRlbhNmb1emftO46tMHjxvXToPlkhCO+4zhvLjU5Hldf
         ImelBW1T9cWDGFai/tvqmhHmz5f14ovKL2mw9ilZjz0tDahcP4DeRN2/0XmgRFNmtEKX
         kXJDQ+gVu3607A53Byjot41JwvayhaJHoq+dJHtGWQfEQFAw/VfZIF2leqkXDl6pI1D+
         wOGXCUVLBLlipd4ql+0kVspJNwaBpDssZXGQaNJgZFDZ14Xw3USTKuJh8+3HhX2ys9ts
         zZCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Uke8QP8jDT0ISFCLZ021BNSpKYLqzZN1MQPfd1lmORs=;
        b=e2UqtPL/PXrqvf2C5kmHTwFbhMOHmzZMoRW2+/DOR+jbwb97YgmPd+ZCowNW+kDYAK
         FdGOHhzUPBjq/h2+hwma7cmMGbUiLEUFuY2n92GuuEMgW9CBYMKC7HcPk8WxWiHEbRze
         e0kUk5pIbsbWDXR0K1kwxAq4wA9/T/KvJDaCs/Eggv1BLzq0xxF3RACnVIhRZu8y3nWN
         KNruaTcwK3Pc0DhRi2I56TZAQasvRav+bnerAv8PzVru3ZDpz91J+vU+zH9PwRagfD0b
         1yktzmaXPPFpKm14xWed2f+xPTHiRM5Y84Q+SKywO6XEXVVKpOUNavKQQg/YJTg0P6sF
         jxCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Go8dlU4p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id k18si850633wmj.0.2021.07.02.11.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 11:29:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id h6so14499149ljl.8
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 11:29:42 -0700 (PDT)
X-Received: by 2002:a2e:5c03:: with SMTP id q3mr574881ljb.233.1625250582245;
 Fri, 02 Jul 2021 11:29:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210701235505.1792711-1-ndesaulniers@google.com> <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
In-Reply-To: <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Jul 2021 11:29:31 -0700
Message-ID: <CAKwvOdkgEeQktLgEN7CAh7bTjTN+TQNE27aETgvbXep9=xb1DQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Fangrui Song <maskray@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Go8dlU4p;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Fri, Jul 2, 2021 at 4:59 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Fri, Jul 2, 2021 at 1:55 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > +ifneq ($(LLVM),)
> > +ifneq ($(LLVM_IAS),)
> > +ifeq ($(CROSS_COMPILE),)
> > +CLANG_TARGET   :=--target=aarch64-linux
> > +CLANG_FLAGS    += $(CLANG_TARGET)
> > +KBUILD_CFLAGS  += $(CLANG_TARGET)
> > +KBUILD_AFLAGS  += $(CLANG_TARGET)
> > +endif
> > +endif
> > +endif
>
> I think only the "CLANG_TARGET   :=--target=aarch64-linux" line should
> go into the
> per-architecture Makefile. It doesn't hurt to just set that
> unconditionally here,
> and then change the CLANG_FLAGS logic in the top-level Makefile to use this
> in place of $(notdir $(CROSS_COMPILE:%-=%)).

I don't think we can do that. Based on the order the arch/ specific
Makefiles are included, if we don't eagerly add --target to the
KBUILD_{C|A}FLAGS, then cc-option, as-option, and as-instr macros
(defined in scripts/Makefile.compiler) checks in per arch/ Makefiles
may fail erroneously because --target was not set for
KBUILD_{C|A}FLAGS yet.

Another issue is the order of operations between the top level
Makefile and the per arch/ Makefiles.  The `notdir` block you
reference occurs earlier than the per-arch includes:

 609 TENTATIVE_CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
...
 648 include $(srctree)/arch/$(SRCARCH)/Makefile

We would need the opposite order to do what you describe. Reordering
these would effectively be a revert of
commit ae6b289a3789 ("kbuild: Set KBUILD_CFLAGS before incl. arch Makefile")
which I'm not sure we want to do.  But maybe there's another way I'm
not seeing yet?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkgEeQktLgEN7CAh7bTjTN%2BTQNE27aETgvbXep9%3Dxb1DQ%40mail.gmail.com.
