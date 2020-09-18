Return-Path: <clang-built-linux+bncBC2ORX645YPRBCF3ST5QKGQENHD6P4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC65270767
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:50:16 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id s13sf2435910ljc.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:50:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600462216; cv=pass;
        d=google.com; s=arc-20160816;
        b=z4GgsT38QVG9EPcVON0NYmJ4WsnvTDOZepI2lNhJ3qhZsBQYp74rGnA4iIzoOnVa1U
         NYIyHuVzg9WiMvk+qJl7OcL+rEGpqH1xZKLysb3fBOb3Sbn3GYdBUQfcMjmOO+0xoXKE
         QirFCi8ZM6vwm9kFUAJwQxsAqmz1hrDczxD9ZPZhevGKZHg3N4ulvm3w6fwHcD4F+g+R
         C/qKQ3ldwev35B7Rtb6gaiomnIy5kmDqQZOX7heJxiAfQJhiuA2VGKpMz/0481WEJijn
         Wa5NW21DlshbZ7/L5qc5G8vjlo7hqy/ubONeIbuqTz9qthxq0BCZz37nvxqCA3h7oepX
         YEdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jcrevu+uxZKTrbV0Z7kP7of0GHfEmqu+OjhKil9ozUI=;
        b=zYecNK3nY2jHC8p2JGBSo2XhCCNCNJK2DBImjMdA9aHEw3B5+cgjsMsfosFIxo122V
         Xpx4cMsp+TUopwoDPVCMmgK460z6phVhGC950CVV4ihhAhv74mGPHthFc/MXnwLzaXKX
         LAQ3tRIijcdJU3xPaT8qJnk6M7DtVWWRPNeCzeIj0z0DH9MPjDZ7z6uZaWiSBk2eqt6p
         vr6/R73nQ6tx7T0erYg6MgL5l7OHspQKC7JHCorFCLQHjXquAY/xjL6EeZlSal5MDqyM
         g7HeyEkjAVwMKq6VrQO6YFyKMFx3qam/DK5cLBQPXlJpipU76B59pPv7780xGkATmFPw
         7GKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TxBH8Ayv;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jcrevu+uxZKTrbV0Z7kP7of0GHfEmqu+OjhKil9ozUI=;
        b=ajFVJqRsRLotuSMnBO5KSKhIZABZJLLZo2YZa/T/H3phYknLwd2j2TTKlPLOJof5St
         ldE2VuBxI23A9PE96ayHxJZK3Syz2R5Ma3LmzEYfqaWscbeUeOh/yAvrx0+FFxwolnt3
         +luVy/tSqIeW/+QjzoPk5wZ9SbI7IQuXG2hpPb0yDmOgq3Yu6tYzbg1SNBaTYTiJ62g0
         q24ePK1pOtlZtIvBjzl74AdylsfX29ari0Ww1G1gPVmiBHEVnnowMjdMezGFemntLgiB
         +TTcPf+5dxu68F5Fcb+uPRR6xDWg/VjPfANifa4k+KadlE6nVp6s1yU4YbeFuCqK87mB
         Y2ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jcrevu+uxZKTrbV0Z7kP7of0GHfEmqu+OjhKil9ozUI=;
        b=O+wnNz4ncXsk2pYbENUZ8+DIrN9rsWH+A0BlbrJ+yqb6rZzHp50GNaSJ+qpD2A9XDK
         LyCW+tY4keolBV3vynZJXNRnreY20BtaFcFN4FkCQ3tAlNzFslaWAMxwqyHsW5RDFZ/t
         PL4dmSNgjq38pWqhlppSKp1hNAwNSskHlU1GKgtuJIkIvlMkV9XH/R2GA/Li954gTfHr
         xTayEXYN+ZbePpIqC7zWtk8ZMCsTgUpXvxd2SNMvv0jU852TEA+bzxFaltwXYkLholMp
         exSgRuGy2QM+k2Kwe5tNUUUp0KFgm2jpq2b/0cdNMTqXJPGOr5/kj6oFp7ITK8i/GYYm
         jIzQ==
X-Gm-Message-State: AOAM533f1yfI0V32Q84r+wuYNfPFYJpffT6ojxQ3SMJJtB6LXyOe/45a
	MjRY7K/7RMCBzvWN4rTCOHo=
X-Google-Smtp-Source: ABdhPJwru2m+elzwiWjq7aWS2WYTLjn+aaaT/v8If0oiutKcO6AxSGsMN81j9e4Q8ed+DqjJL0A+Ag==
X-Received: by 2002:a2e:b169:: with SMTP id a9mr13253039ljm.42.1600462216347;
        Fri, 18 Sep 2020 13:50:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls1112325lfn.2.gmail; Fri, 18 Sep
 2020 13:50:15 -0700 (PDT)
X-Received: by 2002:a19:a408:: with SMTP id q8mr11251728lfc.419.1600462215146;
        Fri, 18 Sep 2020 13:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600462215; cv=none;
        d=google.com; s=arc-20160816;
        b=rE49MopgJfuFANaoMCONEqhVBGjekuQxgaLi/aOyGySAprZlG7kntdT1ocrltN4HRI
         YjCUIzcPssOymV/4d+w2Xb4uHUzJW7NI2/Px6UJOtVtArVUwNGY1pB4tYqcKbp1dDg3S
         AF12OgTToDDsPQaK7u+R5uen14SWbxfNaJ7QrAgjcM856f2deKG3vj19lD7fHfc/Kif3
         +jiDbvAyI6zD73jAqPakcaDvsgzTv1lf9rnD01MIsRpHr8JU3YtWgE/Iewv0bYNyLvvf
         yrdqgq9UFjfLQQf28IiJOAQ8qiQj2YreNZfItTRqB2f+9nPpsJwfm+4lGeBzncKqeIb1
         14oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f4okZ/7bct4uSKwZ6O3z2m5KyitVLtU4XG9WgtUAxwc=;
        b=orA1IchmvNo+04PwFWNtk/WClq566u4QzlVqJ/tW8VwCmUZ5eHos+Doo8hMgm+cImI
         bY+ZHEcR08Vu+LVxg4cW935xZVOfuzIJlEuFPGk4XN15HiVH/NwQvZehVyQ0ptZANmOH
         xs2bRN/POixwFcwU/SvjYqtpj0tKJsSkr/rtfWJ0F3rh8V5wApoghUfr1MKIkv8m//fh
         M5HCrqzM9dSu3Fe8pL73WbuN/eMSfvnujiHIUWjGFv2cHs8x6vZD9fblCNYb6GOuAiW9
         P4vr4InxXjHfyEL4CD+c+c9jyAZYwRcFXCod2RlYzPYk5LGKHYsCcKDh8WRw04hnPOfB
         P3ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TxBH8Ayv;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h22si124798ljh.7.2020.09.18.13.50.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:50:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id q13so9795730ejo.9
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:50:15 -0700 (PDT)
X-Received: by 2002:a17:906:454e:: with SMTP id s14mr38862035ejq.137.1600462214260;
 Fri, 18 Sep 2020 13:50:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com> <CA+icZUW1MYSUz8jwOaVpi6ib1dyCv1VmG5priw6TTzXGSh_8Gg@mail.gmail.com>
In-Reply-To: <CA+icZUW1MYSUz8jwOaVpi6ib1dyCv1VmG5priw6TTzXGSh_8Gg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Sep 2020 13:50:03 -0700
Message-ID: <CABCJKueyWvNB2MQw_PCLtZb8F1+sA1QOLJi_5qMKwdFCcwSMGg@mail.gmail.com>
Subject: Re: [PATCH v3 00/30] Add support for Clang LTO
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TxBH8Ayv;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643
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

On Fri, Sep 18, 2020 at 1:22 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Sep 18, 2020 at 10:14 PM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> >
> > In addition to performance, the primary motivation for LTO is
> > to allow Clang's Control-Flow Integrity (CFI) to be used in the
> > kernel. Google has shipped millions of Pixel devices running three
> > major kernel versions with LTO+CFI since 2018.
> >
> > Most of the patches are build system changes for handling LLVM
> > bitcode, which Clang produces with LTO instead of ELF object files,
> > postponing ELF processing until a later stage, and ensuring initcall
> > ordering.
> >
> > Note that patches 1-5 are not directly related to LTO, but are
> > needed to compile LTO kernels with ToT Clang, so I'm including them
> > in the series for your convenience:
> >
> >  - Patches 1-3 fix build issues with LLVM and they are already in
> >    linux-next.
> >
> >  - Patch 4 fixes x86 builds with LLVM IAS, but it hasn't yet been
> >    picked up by maintainers.
> >
> >  - Patch 5 is from Masahiro's kbuild tree and makes the LTO linker
> >    script changes much cleaner.
> >
>
> Hi Sami,
>
> might be good to point to your GitHub tree and corresponding
> release-tag for easy fetching.

Ah, true. You can also pull this series from

  https://github.com/samitolvanen/linux.git lto-v3

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueyWvNB2MQw_PCLtZb8F1%2BsA1QOLJi_5qMKwdFCcwSMGg%40mail.gmail.com.
