Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT727KAQMGQEQUINGYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7744D32AC7E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 23:33:52 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id q13sf8179498ljp.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 14:33:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614724432; cv=pass;
        d=google.com; s=arc-20160816;
        b=iT2++88/qvfkqH+TeUEJ+Og0AZEnstmvgjfLfy2wyjGif5Gp4F52j0xJCgM5Kv/zeA
         BiITFxmy/crVNpfT8oSCUTC634jbszS9OripKFp1mK2x28oHjPNlZlD0rgiKosUy/U5f
         w/77yOwOvyWepRxQ6r1tO+YRc6/PEgnsLOTSEa7filpRn7XImU1MaywGOY1UVnH6YIBK
         tKGkTHPnjUhQ0fA/6AaB2aW6wVfp71iWwg1VApJzyV2ZQoyNOQg1Og4hhWJY8+6g4G/u
         YDoWB5GKmOu4yn1496Ar4UQZpwN+RqSv1rkfe26ICEBvw00xllF6mylEqULrefyJLEpw
         5PaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HXHHEyN8vRyq44vAMRY96gZcIAAGwrbRYIFjjb2skXk=;
        b=hKKMB0sYu6nIRdvFGQVxATC9LIMHGXUJDCmMlidwVSngZYWih+YVa+2D3aQU8glb1i
         EiFOOnGIJDwjdpdWFv4WWH/M2s3MD7WLtyAJPa6iA7mXUf4ux1KkfjoPly+fhf7G/BS3
         YNKjBeW8KRots3t0LNA4OOSCN9KHUFyumTv5AffO2dXaJ16qM3+M15kWfAApUp3PnLrB
         /6uCDdCHegxjBFaZDvmZq04/pQg1+I/06Ax/nMsk/zsK+Vuqivs2fktVP9MmQCaCm5AO
         JZFLVewDX09h49hMnP558HCzw1UvLT4C+Sc5MLbIjNqRnsM0BZ8DvRSzGlMjNhgsv48/
         6C+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ZS/VhMSd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HXHHEyN8vRyq44vAMRY96gZcIAAGwrbRYIFjjb2skXk=;
        b=mzhneBlbiXgh3Qn21/oPTr9/PIA6lkHtsDS1UZg6suWCHFPh+x/oi6KdXwWX1Fy3Tf
         TVFMxrlWGF/7AC1ebL8AyL/CS1zHlaLUQld54uRbnsGtLUBTerBZAk5uLHBulVNon1x6
         D09/DtLGxfPa9SrNANg95LuZApXGDhWpgMsBsiy24gB8A6dwTEVTxO6QC+x6/LBw1/8Y
         /tXqCg64DJSBTAW4wYxMdCqukDAF1905qFfSskEChV04NoIZzMCdoWGN+ByShVeNdS95
         fqVcnulnVMeuuoIGW7LRE2+nRYqTa8g87xmUTkTg7G9C5kszEWe8NbNQbvN+bBxZ4oj1
         NqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HXHHEyN8vRyq44vAMRY96gZcIAAGwrbRYIFjjb2skXk=;
        b=mXph1H9RIl6HWBQzb7DjMiwoJVdkGmHDVuZXW/fG1ZyJuG/G+kfcvU0Q89rBE6ypD5
         IsZ1GVCU9lt0/HvHNiZaB1dM3nWUwBI3h+n1vjdkIwtVX16y9xz20r30Y0dvM0FtBi7g
         JZTTjqsBDsWPsRC6WvT5vUZb1lOjES86CuaKpuHs++9PxAf0O0BWlLIe+/QzKJUSbON+
         nHPXQYQ9nqGOU4urNwOFZPdzCE64NqJO5ydh/cmMYKwUVKQ1zOBImT+3TzNZ0LRe9TQH
         2V9qrW2ZE2Iq/TBjCasrXqL327iQFqdPZloaZZ74FHOkD8ZhEwc7J4wMFgqNfi3Jd3Iw
         tKfg==
X-Gm-Message-State: AOAM533XbCo1M5wSkjXTfo/NvEPZQUBGgUF+xhbIRhfyGl4fWrWLreNl
	2g8L1F75RwsxYj3ACjh42A4=
X-Google-Smtp-Source: ABdhPJwEFABDgO2d9dkIYnAAYTnni5CKvuclFW3tSHH/hASQo/hvvTLdTpRweBo9ozuU7by7V0QA5g==
X-Received: by 2002:a19:7fc3:: with SMTP id a186mr12940491lfd.626.1614724432025;
        Tue, 02 Mar 2021 14:33:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:391a:: with SMTP id g26ls72243lja.4.gmail; Tue, 02 Mar
 2021 14:33:51 -0800 (PST)
X-Received: by 2002:a05:651c:d0:: with SMTP id 16mr12531594ljr.296.1614724430992;
        Tue, 02 Mar 2021 14:33:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614724430; cv=none;
        d=google.com; s=arc-20160816;
        b=UcXw/L9CCzWPP0uCbbWLGGBLKL5BIrP7LR+krNTo1vY/yRJw8ScdL9SNEC0G7zrQxs
         Q2/lF+kRzMd6M41hX97/FaKSSaTZsmpK/RxvkbWmq/FJiv0Gbn95hrDFY6FubdImyNhF
         8BPpJEQ5J9cTJrxDbZLtSMzZhX8u5hBfEXV/Bh2z+PihKkMIoiGqVgm6GWmTgx1rOCg3
         BN7yNksS9L9n2yZjit5b/1ngn9RAgkDKxDTld+04q5wbixjUAuj5kf3EsaEMKhOoJ8tN
         UPL8WDbfyEmQnNjwEIqV802WbO0j6Jyl0iwcMT7FJEp329ZAJ9QeGQVseHt3EY6t3Rl8
         N4dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aHp3sOBhNVG2z21fEC5nTsyRiHJNdtFKTVUSbILsbhc=;
        b=UmqSiAJiexA62gN9uOYK2KWrTknrrL8nnmXV1kUBVV0eh+TiZPgBZG3/1o4cXvj0v/
         mojYucOUiWC6YEcJniQQr/gEZDu6d5to0lpgVnO/mWHQnpPBOZ1j95puNBXI3u7YBX8z
         CZnU18zSZuT/rTz+mT4UbaFZZ73fDfksnLVJMrYOcWDJ4f1eJDntSdCdq9vFDBzL5TUq
         qSIblScNoNKaDUYGnZifMlggrgf06Y+ML2rJACAWiAOJ+D+BL/ad4XUK2vNVO3jY3CiZ
         qMmp8mzmah9NbAODN4G1h4/lpL5GYNFFm/Hi0eQ9HKfBErmPX2z9htx1w0qxo7lqODQb
         4Spw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ZS/VhMSd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id t21si635930lfe.3.2021.03.02.14.33.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 14:33:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id p15so17165949ljc.13
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 14:33:50 -0800 (PST)
X-Received: by 2002:a2e:b008:: with SMTP id y8mr4382857ljk.233.1614724430576;
 Tue, 02 Mar 2021 14:33:50 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org>
In-Reply-To: <20210302210646.3044738-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Mar 2021 14:33:38 -0800
Message-ID: <CAKwvOdn42+2bFOMvJpJUuvmM1cj3V6uNEJWfwBWCRFMXtvQfcA@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ZS/VhMSd";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Tue, Mar 2, 2021 at 1:07 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> This is not necessary anymore now that we specify '--prefix=', which
> tells clang exactly where to find the GNU cross tools. This has been
> verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
> distribution version of LLVM 11.1.0 without binutils in the LLVM
> toolchain locations.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

I see this pattern still being used in
arch/arm64/kernel/vdso32/Makefile, but that can be separate cleanups.

> ---
>  Makefile | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index f9b54da2fca0..c20f0ad8be73 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> -GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> -endif
> -ifneq ($(GCC_TOOLCHAIN),)
> -CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
>  endif
>  ifneq ($(LLVM_IAS),1)
>  CLANG_FLAGS    += -no-integrated-as
>
> base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
> --
> 2.31.0.rc0.75.gec125d1bc1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn42%2B2bFOMvJpJUuvmM1cj3V6uNEJWfwBWCRFMXtvQfcA%40mail.gmail.com.
