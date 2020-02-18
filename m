Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS6ZWDZAKGQEQNCG5NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EFA162E7D
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 19:28:28 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id v19sf9527314qvk.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 10:28:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582050507; cv=pass;
        d=google.com; s=arc-20160816;
        b=qLSxipd7AvhecGD3FSQI/2KnXXZNbFByPcvy8DRqKPY5rJXUvqjaLay+h+aqd1QglI
         MKzAGkrOaR+GVy6spRC8PVlthRuk4lUYuh2qE92+qc1/Dj/AV62Hk4IWSsY/q8jtVu+u
         yjVzjAbOnrzIpbpqDg+C8gIeRE+i8zHqNtkVDmesJQ+w06MAjJkB+Gw+oFjC2xrh5aTE
         kUAVOw8YYsNE8by/XE+XZo0TU2xrWQgH5nxwIm0slJncm9qlufTYFPXVTTTjq96G+tA4
         1aBcTlE5GFFW7C/y9ORZOSTEmuOn5oldPxNyaKNpYbFAy/UFJMtHema6TjMmQv070uXD
         sB1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sfiF04sB8km0uFOBwpC1rEkv5sTYZ8hl16OgYTMW0Cg=;
        b=zqq97x/dZPh5onIsJuSHwsZtWuFOrhPDUe6b7BRUhxrMRKEQo+F/LSRbkZwdRg5Bhb
         SgkGIGP8rmhWdcCH1gq/t9Pq5bD/sy569+ILGDjWYHxVsMMZ38emrIfncX3WiM0vpmsz
         BdWP7pIoR+QHeNeMNg6oz2dFyjxN4o7r0Y0MziFjj7Pr3LLowEMlKoUdsX3mJljOaxo7
         7RXbizgPY3zEaVW0TcAOZ4o5kPtSZRYwf1egtGptndWS2xVXM2aAwLFJJqBCKCWEgqC+
         9UTP9uCGe6tww9QnoZzYjA59AnAjbXTrPNBxuPHgr8UDtZG5paujQB7fOIz94qE84VaV
         mELw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IaQVxnR3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sfiF04sB8km0uFOBwpC1rEkv5sTYZ8hl16OgYTMW0Cg=;
        b=mSLbtSleqdD4PUYoIeuVla851LehrHsZY4tNQOrJWWdRuNRBdmWcVUcf9vKEwRuvq5
         Xfa4rnyt570a3haydOpw2ptlr6kj1ftOslTDpVBY3m4YLOF9fepVMgLMc6fg78SiPZsW
         mfxAqtcaY76Zs9wRqGgBRDLyz3cwkI+IW/ImK93WTFRjkO1OZEevIG2O8D9Q5IqSaJ0H
         pTT/+Y7lxJlawfIF2AkS+8J3Q/pPlFVPlChT5Y3YUTv2ZSb0MT686wg0XETHiHYiPgba
         EEBXEinkwVysulqwE4ax7IV6L/K/B1Jgyibkbr9l1vUXrshwB61CDI1jYPnnA1L74LGO
         bfJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sfiF04sB8km0uFOBwpC1rEkv5sTYZ8hl16OgYTMW0Cg=;
        b=UQoaZC2EFI/oLZW1LSGQzisLcoNu4GVg2VgM6Zq763Cs8XevW2akSvlAQoxt4rFQoV
         gX3YwEW4+hw2H2B0CJDDBOXO/opgGFyVfYM6O1JrG1yUSLr06+cCrZ6Q++iUAfY3eTPo
         j0XQlYAyCn+capfYZJFU/8QZL0WTL92Vmmg9m14d5yker1ZwA+Gm5eJHF4XW9ktwp1zT
         rli1Cf9t3S2/nNCeHPOTqZ2vGxWDlkGILbQz6bi124uO1tO7/kpf39hUaqYH/7BBpvDE
         h0XqzTJu/ukBMLxu2cW9YOBjIJcOu5eU8QmKQMRNCm3xDhHcwjKiZlOPIAhn02oEmBwA
         09/w==
X-Gm-Message-State: APjAAAVqGhr+m6bh/8gVdI4GCEw7UWBRm8B2cjisvRNumJOuiVsMNPlH
	+a9IAgVeM9PXTuI99bGrz14=
X-Google-Smtp-Source: APXvYqyjoimXwkfdtvNQvjYHf/kK+VR8xzGuJnYBaPL4pfNql32Awo/ctztCyUb+fVdzPNNtT2x20Q==
X-Received: by 2002:ad4:446b:: with SMTP id s11mr17736213qvt.148.1582050507517;
        Tue, 18 Feb 2020 10:28:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:70c4:: with SMTP id l187ls1918439qkc.7.gmail; Tue, 18
 Feb 2020 10:28:27 -0800 (PST)
X-Received: by 2002:a37:b09:: with SMTP id 9mr16104850qkl.327.1582050507250;
        Tue, 18 Feb 2020 10:28:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582050507; cv=none;
        d=google.com; s=arc-20160816;
        b=SPZ9N9lfQje2jKVGIvdP5M3fHQozR3BAZzjAulFQ6mEE9umtDuWvBH6JJgcMK9RhX3
         qFTt3l0haB/6Hlb+bArXAMBG/DiCBxjcliI+h95tcSqZDiJQLM2v4Kj3+oCfLZjpUjeo
         aAqF1gdVCZCmVlaiGcwuVJPMyk95xVyhR6Ri5w3ccSFmW5Uq7Ycc9DclgA3zYOnRt9Pi
         ghVUsvolyjCgfHNZpIogeY6RsOMtqwehbOhVEkT0Hpk67xbymI5TCyd+UziwvXMDGVTC
         N7hrdXYGR7jHLu1lhNF1IWgpIqOEAOg1az2J5p/6VGv4uHeE7ILYj0D3cT4t0SXpA9tq
         GRXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d3KSdYVbADc8vhuPRBnMJ0Olj+WzBHR91Wg/nozFRYA=;
        b=EXQwWPsuKE6I53BTIb/EzCF4nPAVbB/KULFE6nnkYf2lY2Fwb8scIQubSRrnnSld6u
         XcHFGG0x68RoEFUfDqFTHkapebSmk/oJMXK45hU8ELYQVW8JXRfNndphat+DyoFZfLaN
         Ovsbptng04Ws2Z0qZD0gMgDXkPI/ErQ8ncD3w7Hn3uHnWd1YLruM4hS+fONu/2ykrC7y
         wlomoRzl31RuPG9dr+vnBKO1rPDKY7oTPbagC7ygLXQJ9wYxk9NGqsX/ir08ArueMDom
         i5BhDBmXXrPsYDPH/0FAT046MaPfFbJi9F5rjTjYPLNjzg2NsXyPrLP2NnENxMquZVpQ
         MRJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IaQVxnR3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u18si237662qtk.2.2020.02.18.10.28.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 10:28:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id i6so11085641pfc.1
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 10:28:27 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr23652916pgb.10.1582050506059;
 Tue, 18 Feb 2020 10:28:26 -0800 (PST)
MIME-Version: 1.0
References: <20200217211149.44132-1-natechancellor@gmail.com>
In-Reply-To: <20200217211149.44132-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Feb 2020 10:28:15 -0800
Message-ID: <CAKwvOdnRbMrXNSMAA20UnoAUKBu5X7JO+DvNTb9pebuzQbRVcw@mail.gmail.com>
Subject: Re: [PATCH] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>, 
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IaQVxnR3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Feb 17, 2020 at 1:11 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang does not support this option and errors out:
>
> clang-11: error: unknown argument: '-mexplicit-relocs'
>
> Clang does not appear to need this flag like GCC does because the jalr
> check that was added in commit 976c23af3ee5 ("mips: vdso: add build
> time check that no 'jalr t9' calls left") passes just fine with
>
> $ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/
>
> even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
> vdso code").
>
> -mrelax-pic-calls has been supported since clang 9, which is the
> earliest version that could build a working MIPS kernel, and it is the
> default for clang so just leave it be.
>
> Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
> Link: https://github.com/ClangBuiltLinux/linux/issues/890
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch, and detailed context.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

With this patch applied:
$ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu-
malta_defconfig arch/mips/vdso/
$ lvm-objdump --disassemble arch/mips/vdso/vdso.so.dbg.raw | egrep -h "jarl.*t9"
$ llvm-objdump --disassemble arch/mips/vdso/vdso.so.dbg.raw | grep jarl
So jarl instructions aren't emitted.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/mips/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> index 77374c1f0c77..d7fe8408603e 100644
> --- a/arch/mips/vdso/Makefile
> +++ b/arch/mips/vdso/Makefile
> @@ -33,7 +33,7 @@ endif
>  cflags-vdso := $(ccflags-vdso) \
>         $(filter -W%,$(filter-out -Wa$(comma)%,$(KBUILD_CFLAGS))) \
>         -O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
> -       -mrelax-pic-calls -mexplicit-relocs \
> +       -mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
>         -fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
>         $(call cc-option, -fno-asynchronous-unwind-tables) \
>         $(call cc-option, -fno-stack-protector)
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnRbMrXNSMAA20UnoAUKBu5X7JO%2BDvNTb9pebuzQbRVcw%40mail.gmail.com.
