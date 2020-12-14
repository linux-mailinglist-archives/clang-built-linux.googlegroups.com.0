Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM5Z377AKGQEZZMWSMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB272DA2AA
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 22:44:20 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id l138sf7220133qke.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 13:44:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607982259; cv=pass;
        d=google.com; s=arc-20160816;
        b=CVTNSd1A3LLOUNWFI1KGZoM1XTdfqjOhVgNAK2F3G9e+maWXup21ieCZ5oGrp9rkx7
         7jNdcToSSSnOqxfhFuXmTm/U0C6vQDRgLs53fSb58kVJyuBGeCCXARQOD8ARHYQrPZw5
         prItRWRSEPWoiSLyZxg7IKcLhaWe5A9BLrA9XzO0UFxypNr1skpTgXwAZ9d6vPbxS3mA
         O1tr9QoUtMuOUtoIVHIgqQephm/gsspBedm+Iy3vpZNnUOdAsJapxqLB93N6JcjuV4K0
         iOX+Q50P5jyQSMfJDlMLMXEeXTKh8i5rUTAbGK1AgANlG/ASIhS3hDUANd67/v/Fblyl
         0RVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=elxpm4OcVtK02TuJrEihcMbqrWfVB2aMsRyrvBE7IQc=;
        b=WOqhNZWQhtSAm/4LDkG2ZSlpxay9QgsXQ58Xkz7b2q+TJrAN9iczsLKqmlbCE9VCen
         Q3g285v4YJExxhcJs6xnS4uCxoa0rYWBe5R5FWX13oaTwlVK7Z6yDWWuzdZdZbHM1j5r
         FJBWimXDpx67m2RFO4kHmVj8iLxWq/FJV5fEJ20E+GfM347kEK+bJHaRkOuFf92oA5mv
         GuCIKFGjylpMv2Ku379sdqWNAzmtwEitWPxJ4zWcD6RasbUL5EOqGJ8GowW88C5E4Vx9
         Aw/C/GhGlTapMUGC5KMY6cdAsSwR3j4KRMI9PPZjhmsJBe3sHIcriS1jb5n9Pp/R5pBO
         Z2oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mlBDwaeR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elxpm4OcVtK02TuJrEihcMbqrWfVB2aMsRyrvBE7IQc=;
        b=J+e0mGbo/eGbWUvpL358VpfGs5iwglpsfPx4ddu5oHqNC3pWlBL78yF2qOXH9efbmy
         XvKvOktA9pf3apZultVeByt0+wYScVdWMKWPkzA1qI/4DlvA82Wq2p4uSL79VKK7Nwp+
         Llk4RnvIWv4mkA8jq+MCbngB1SdiKMCmMC0iT6Pjw7moJ3QKCcH6pGpxS/6n5JEaY8Si
         2JrvbX8RaUrBQ+viC9ATc/7MCb4AWp687hIJAvvKxIKNfDFoxS1ZQJnALdXSJXn1irNg
         JAhALMS9b4BkzyY0B/E8bCPfHvBzjO/3V1XO+c8phrTJs3D9T8ZyFbll+AYoq2hsjIqG
         vniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elxpm4OcVtK02TuJrEihcMbqrWfVB2aMsRyrvBE7IQc=;
        b=DROvsf6Oi1pmS7rFmci5o9B95YoFSJz1L9AbGS8XG3yiyCxtbI1XYs5zKyQcJ0PGQU
         7rR2RgkIQ7JzA/WZkMaRg6jKh8NENXeHGdWk4rnSA/Kv4dTDMDEga/ztxIyBKrlH/Q/m
         0s55XyurrjuHPKSfzYGfo9hg35X9LHQzJgLmnKHt7vldvZ+gPr5h7UodzdmCHnl5yuG5
         Fl07eHbBg8QPqKe22Kh24ue1jeP+grjYeUiLp5jnJLGmysBTFWDiX8d7T4yw68tlR1y2
         BA2rF6VfjaCAKFqMCzV90HUE2lbfmEL4+FoyzhcO6HD2Pz1pORcMsd6zRWmVwq9k+JRp
         sa4w==
X-Gm-Message-State: AOAM5307lWNpwRlFjO1t4bcJz2mwVQtVTL51rG8s7qFl7L0L+mvZ9Wm0
	oKlO6e3zSMPEqxfsRUrBZow=
X-Google-Smtp-Source: ABdhPJwqL6gMlX3qrxtCAo4AjGFCsAPjQquEHUVNLzSYF5D+O/1lGpiXOTF1MLeNc8rbmkcnNkWeqg==
X-Received: by 2002:ac8:4c8c:: with SMTP id j12mr33680176qtv.133.1607982259362;
        Mon, 14 Dec 2020 13:44:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:702:: with SMTP id 2ls1460003qkc.11.gmail; Mon, 14
 Dec 2020 13:44:19 -0800 (PST)
X-Received: by 2002:a37:9d14:: with SMTP id g20mr25060048qke.260.1607982259008;
        Mon, 14 Dec 2020 13:44:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607982259; cv=none;
        d=google.com; s=arc-20160816;
        b=TE7fEHn1gZQ+Xo022HBFF8AtsdnYsaqhh7BRUnz5+kuGJ3vUJ9ETcILHPVPvPA3xCM
         7XXjjhPNUhm5vBQ+zyXnniaLZ5VuAN2oFK5HJo5jsduoRnuMfD6GlF26BvLhCNRm5o9e
         HDEzLiZR1VHD947BVRgH7h03+8RAxXgq6aVSZHn0iZPflOAs++VIAFS83LL6KGrtTBTS
         nkCpkIFxFKgF8uGMFGrLIcfzYHegoumOsLGrQ5SMvWfjNg9kEwF+FY1V9Tcjtdjy4n3L
         C0OQSOkj4OWRfrlzFST/u2aVtNtgm8XO1yyrvTPhz5NdDEvZdP5j537k8zHzqajG2D1M
         G1cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6EWmrppepC6CHcBZOqhjNztvHasoofk8FBuQ7CK72Yo=;
        b=UqY93XvGBsX9+vKSJYgkNgg53KV3K8c/pY9R6F6Cp3Q712yF3RYTDXuynQkFowTnbv
         mv+42usp3+mIDp8ZZseZ1mV+6UZgGk1iz7rojTqTfOyB3aYfuHPpa1N5gDDnj0mmJcXA
         scZ96XQWursWCefxTAYm2cUcXjjZRp5WB6bqD9s3lITmEzTRVh49WmQTl1iIPxfA2TzG
         w8nGMZo4tmPcg8tLGsEm7abkFVVgta5ZnVhgE8dBteMBZ3VKbWNz6wFQTRkAIIJPP0q4
         XOFOEQE6Nz5HXMRPB9Ja5TY1LP8Fr/GzJ9DMV2fBaCreKv4kdqWkbh0FhNSlNA6RiZlw
         Gl7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mlBDwaeR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s190si1500900qkf.4.2020.12.14.13.44.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 13:44:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id c79so13050135pfc.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 13:44:18 -0800 (PST)
X-Received: by 2002:a62:7c4a:0:b029:19d:b7bc:2c51 with SMTP id
 x71-20020a627c4a0000b029019db7bc2c51mr26329699pfc.30.1607982257943; Mon, 14
 Dec 2020 13:44:17 -0800 (PST)
MIME-Version: 1.0
References: <20201016175339.2429280-1-ndesaulniers@google.com> <160319373854.2175971.17968938488121846972.b4-ty@kernel.org>
In-Reply-To: <160319373854.2175971.17968938488121846972.b4-ty@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Dec 2020 13:44:06 -0800
Message-ID: <CAKwvOdnYcff_bcWZYkUC5qKso6EPRWrDgMAdn1KE1_YMCTy__A@mail.gmail.com>
Subject: Re: [PATCH] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
To: Alan Modra <amodra@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team <kernel-team@android.com>, 
	Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Quentin Perret <qperret@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mlBDwaeR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Oct 20, 2020 at 10:57 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, 16 Oct 2020 10:53:39 -0700, Nick Desaulniers wrote:
> > With CONFIG_EXPERT=y, CONFIG_KASAN=y, CONFIG_RANDOMIZE_BASE=n,
> > CONFIG_RELOCATABLE=n, we observe the following failure when trying to
> > link the kernel image with LD=ld.lld:
> >
> > error: section: .exit.data is not contiguous with other relro sections
> >
> > ld.lld defaults to -z relro while ld.bfd defaults to -z norelro. This
> > was previously fixed, but only for CONFIG_RELOCATABLE=y.
>
> Applied to arm64 (for-next/core), thanks!
>
> [1/1] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
>       https://git.kernel.org/arm64/c/3b92fa7485eb

It looks like this is now producing warnings when linking with BFD.
$ make ...
...
  LD      .tmp_vmlinux.kallsyms1
aarch64-linux-gnu-ld: warning: -z norelro ignored
  KSYMS   .tmp_vmlinux.kallsyms1.S
  AS      .tmp_vmlinux.kallsyms1.S
  LD      .tmp_vmlinux.kallsyms2
aarch64-linux-gnu-ld: warning: -z norelro ignored
  KSYMS   .tmp_vmlinux.kallsyms2.S
  AS      .tmp_vmlinux.kallsyms2.S
  LD      vmlinux
aarch64-linux-gnu-ld: warning: -z norelro ignored

Alan, looking at binutils-gdb commit 5fd104addfddb ("Emit a warning
when -z relro is unsupported") mentions targets lacking relro support
will produce this warning.  I thought aarch64 supports relro
though...?
Looks like we're invoking:
+ aarch64-linux-gnu-ld -EL -maarch64elf --no-undefined -X -z norelro
-shared -Bsymbolic -z notext --no-apply-dynamic-relocs
--fix-cortex-a53-843419 --build-id=sha1 --orphan-handling=warn
--strip-debug -o .tmp_vmlinux.kallsyms1 -T
./arch/arm64/kernel/vmlinux.lds --whole-archive
arch/arm64/kernel/head.o init/built-in.a usr/built-in.a
arch/arm64/built-in.a kernel/built-in.a certs/built-in.a mm/built-in.a
fs/built-in.a ipc/built-in.a security/built-in.a crypto/built-in.a
block/built-in.a arch/arm64/lib/built-in.a lib/built-in.a
arch/arm64/lib/lib.a lib/lib.a drivers/built-in.a sound/built-in.a
net/built-in.a virt/built-in.a --no-whole-archive --start-group
./drivers/firmware/efi/libstub/lib.a --end-group
aarch64-linux-gnu-ld: warning: -z norelro ignored

So we set the emulation mode via -maarch64elf, and our preprocessed
linker script has `OUTPUT_ARCH(aarch64)`. From that commit, there's a
linked mailing list discussion:
https://sourceware.org/legacy-ml/binutils/2017-01/msg00441.html

Is there something more we need to do to our linker script
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/kernel/vmlinux.lds.S)
for BFD not to warn when passing `-z norelro`?  It looks like common
page size might need to be specified?  I tried:

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 1bda604f4c70..ae8cce140fdf 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -121,7 +121,7 @@ SECTIONS
                _text = .;
                HEAD_TEXT
        }
-       .text : {                       /* Real text segment            */
+       .text ALIGN (CONSTANT (COMMONPAGESIZE)): {      /* Real text
segment    */

and passing `-z common-page-size=4096` but neither seemed to do the
trick. (https://docs.adacore.com/live/wave/binutils-stable/html/ld/ld.html#index-COMMONPAGESIZE-553

Worst case, we add `-z norelro` just for LLD:

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 6a87d592bd00..6a6235e1e8a9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -10,7 +10,7 @@
 #
 # Copyright (C) 1995-2001 by Russell King

-LDFLAGS_vmlinux        :=--no-undefined -X -z norelro
+LDFLAGS_vmlinux        :=--no-undefined -X

 ifeq ($(CONFIG_RELOCATABLE), y)
 # Pass --no-apply-dynamic-relocs to restore pre-binutils-2.27 behaviour
@@ -28,6 +28,10 @@ LDFLAGS_vmlinux      += --fix-cortex-a53-843419
   endif
 endif

+ifeq ($(CONFIG_LD_IS_LLD), y)
+LDFLAGS_vmlinux        += -z norelro
+endif
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnYcff_bcWZYkUC5qKso6EPRWrDgMAdn1KE1_YMCTy__A%40mail.gmail.com.
