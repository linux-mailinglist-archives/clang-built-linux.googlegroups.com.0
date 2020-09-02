Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTOZX75AKGQE3RARY6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 5525C25B439
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 21:04:47 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id j12sf193902otn.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 12:04:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599073486; cv=pass;
        d=google.com; s=arc-20160816;
        b=irNUinP/DtQxcQwEfRsaA+B4in5k6wkzmr+Kn2cxk+OkXpRRxhrwj1LrQLewJHcNOt
         QMr2bqjB/goHLYHYOV9n6+KyVWuQkwODQRw9FhCit4WKjcEqGeZZhRgb7wRMVUjZDh0J
         U+n6gIzI4o6Lv7CsN+8kEnreVMnORF/VGLxVvIpRExACHD5seSNCzcxnaDv9Kx2N9kb1
         a8XKb0DRm9zBhWzpb6lNweBByACRcFIinZOeTE7pHPcqpVHPHfeDkX4AJv1hpyd/Y/dH
         gsSuEehMP63ZdNDjgroicz6IsR758gXxZ48ZUWP66HpHvQqsEm3uBwP+bLMIFMHutubJ
         EU0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e20pW3aBrc/o1/Src+EISL3DX3kVShFZWBjuAAkxLZg=;
        b=Wkej1V7j0Jds9OH8oJVuLgdsqg1pdAoy3d1Jgwk8EsF41EmFKXTgqrBCGaVS//kCRD
         fw9bQe3sJZ4EF/D7EkB4xlVpiA4mddcf91Wuiem2Pujd2XlgiVPxr7qfe5xunrekj+GV
         6PZbfVakMrRBbkWxoUlnJUYZ7dk81kVZL+0tpZkZdcY1L0WEvOV4Goe32JQAbYObuplf
         3uXxS9xHGqwhdiJ5nO/yd2H2mfg9oVyzRW6FvkxvGXQLwE5gvzwQUU9h94Bc3INSNdd4
         RwYsFulDY0SHdt4olrghdLz6wZ0oBwRhIJI1a4j1td5ogZsPNiyKk9XMCn1z0YdpxtEj
         U1hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iRP4fz5N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e20pW3aBrc/o1/Src+EISL3DX3kVShFZWBjuAAkxLZg=;
        b=eafL8EuPCfrIwhavgsZoifPb7poHUG4KDOAsHOamPB+2tEamXVolhpn1yiABy7xyCj
         aj92H9c21yYf1ePD7dmoWBP9n4VuuMmbId0Uyb0CfI2GpQux1xFTPSLrunfsc8Uhoye0
         /mtC5z7KA/OwL8LNjT2hqAwyhyf5Fe6BfB9U7/H3tFcSuKiWoxjxHauEFC5K22MxoYHz
         JugW7EvHCYSSkbZu4jDPWkWjR7y9zmSZWFLSx7NUTzbSpMteLdCJywaJ5lCXXDdx68L/
         8T848xXkvqFIZt4Qz7XWyQGsiFNCnnIIj4MKbdHn2H5ckAvuq0aYyn+RGNnFydU4V/d3
         SxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e20pW3aBrc/o1/Src+EISL3DX3kVShFZWBjuAAkxLZg=;
        b=IQh+uqlXsgO46ru7AxgUIKtZ4m4Vb1LiquUCQNxKTvEou8/HvDsKPFxUM7Y2U9byHs
         jJgZmeF+cHY7DEh8Lq1b1We5kRKOcCe7l+zaEy9CmNbY4x2wp4ag+891jj7tNt1cg7oh
         /cm7i2pFtHrIpzi7tQrJEqjF9D/+NWYRSpmDmUCpbfHxJTU7UckXlpxOBIquIQ/jczE6
         vlJcnsbUzmgunCkLYle4jiukofmQHUnl7Z0RZhT7Wx/JG7UN4Cx9dIk56qAgI70/Qupk
         pKJeijipSNVUJpt9w/yB7qN0xrdh2dN2c3bkLrIlmirIFztCKIDoYuQG/Nce6Ye21xW4
         J+wg==
X-Gm-Message-State: AOAM533VNkwF8jRrq7+xWxRy6W+u37tukjp4+oVc6euiQ2YUg4Q7a6My
	nukWweZaV+6YXRINWYZUiCo=
X-Google-Smtp-Source: ABdhPJyZ/F7KHXEPQBpJ3D5BDdyCIUT1eotTxF+AIUaZ/1hfNhSkZ5FJX0bbvJdHEfbGuurslQ8D0A==
X-Received: by 2002:aca:2109:: with SMTP id 9mr2809583oiz.25.1599073485877;
        Wed, 02 Sep 2020 12:04:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:308b:: with SMTP id f11ls814172ots.9.gmail; Wed, 02
 Sep 2020 12:04:45 -0700 (PDT)
X-Received: by 2002:a05:6830:230a:: with SMTP id u10mr6723742ote.48.1599073485568;
        Wed, 02 Sep 2020 12:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599073485; cv=none;
        d=google.com; s=arc-20160816;
        b=WaupuF1lvRiM8XgqjAWvkvJY+SvW69lrUozg4vyVEZ7/whyvAK3p1QKwVAqOTPddOq
         XO6QM3WOJhnG0q/P7Fwfb9lEnQriULTG/B7XDMROxagk3TsxzwdMKUfU8DWmh63mSUab
         FWSgMYHdS9XAk1X5PkZih9rvqqI3scRbMHvrlw0moZZFYZUIWHZwLc8yydGvl9ohn+NM
         xMENpXluYLM2JEZwi1m5GIgDmk/Y2rOegbQnf5zo9MNKhv1EH49r3BYc/nYMqgXdhfWG
         lZNRXV9FevUnooMtj+8rQuJtWu9ge7X3nilE7TTYigyfbalYzlJ7LrFPeJrpFflSfZCg
         7CYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mbvYxT8uYxty8dNjUEj6f2xpfkVHdqq7oce2X4nNcd0=;
        b=PX+/dSxz/GunoWmEdpDkIe4bcLpjM1EHrhrfLiDkdhq87CDBDZ5ARrS4DMti3hxije
         ihoYM5RnRdaLlEwjkwpxQUyqDxnHA6wZkinbxTZT53T5fA0r0BRt3SqnnlfeuCjdnhEm
         PqbW5Qes/jLjzgM7Ih4O3Q+xk5msyliiIIEFj0ZyKBf9OG4B31yy8lQgi5FFRRQz7w3f
         CGfNvcqA/kLCJxCnjzBweJIUblbheGl8klh+A7Cli+V8GYnjHZpz2k58PoLP5DnQGuuG
         IWAX4mz089v2PVFpdIkdMjGt5p9zPtDxDpT/kKvsZ1zxyPesrJUbiV4oCjC3YyRE2Vo7
         hvXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iRP4fz5N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m19si35062otn.1.2020.09.02.12.04.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 12:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id k15so143147pfc.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 12:04:45 -0700 (PDT)
X-Received: by 2002:a62:1896:: with SMTP id 144mr3540419pfy.143.1599073484594;
 Wed, 02 Sep 2020 12:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200902025347.2504702-1-keescook@chromium.org>
In-Reply-To: <20200902025347.2504702-1-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Sep 2020 12:04:33 -0700
Message-ID: <CAKwvOd=r8X1UeBRgYMcjUoQX_nbOEbXCQYGX6n7kMnJhGXis=Q@mail.gmail.com>
Subject: Re: [PATCH v7 0/5] Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@suse.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iRP4fz5N;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Sep 1, 2020 at 7:53 PM Kees Cook <keescook@chromium.org> wrote:
>
> Hi Ingo,
>
> The ever-shortening series. ;) Here is "v7", which is just the remaining
> Makefile changes to enable orphan section warnings, now updated to
> include ld-option calls.
>
> Thanks for getting this all into -tip!

For the series,
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

As the recent ppc vdso boogaloo exposed, what about the vdsos?
* arch/x86/entry/vdso/Makefile
* arch/arm/vdso/Makefile
* arch/arm64/kernel/vdso/Makefile
* arch/arm64/kernel/vdso32/Makefile

>
> -Kees
>
> v6: https://lore.kernel.org/lkml/20200821194310.3089815-1-keescook@chromium.org/
> v5: https://lore.kernel.org/lkml/20200731230820.1742553-1-keescook@chromium.org/
> v4: https://lore.kernel.org/lkml/20200629061840.4065483-1-keescook@chromium.org/
> v3: https://lore.kernel.org/lkml/20200624014940.1204448-1-keescook@chromium.org/
> v2: https://lore.kernel.org/lkml/20200622205815.2988115-1-keescook@chromium.org/
> v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/
>
> Kees Cook (5):
>   arm64/build: Warn on orphan section placement
>   arm/build: Warn on orphan section placement
>   arm/boot: Warn on orphan section placement
>   x86/build: Warn on orphan section placement
>   x86/boot/compressed: Warn on orphan section placement
>
>  arch/arm/Makefile                 | 4 ++++
>  arch/arm/boot/compressed/Makefile | 2 ++
>  arch/arm64/Makefile               | 4 ++++
>  arch/x86/Makefile                 | 4 ++++
>  arch/x86/boot/compressed/Makefile | 1 +
>  5 files changed, 15 insertions(+)
>
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dr8X1UeBRgYMcjUoQX_nbOEbXCQYGX6n7kMnJhGXis%3DQ%40mail.gmail.com.
