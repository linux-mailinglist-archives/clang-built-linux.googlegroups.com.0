Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFOU2D4QKGQEM2CRN7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 600D3242E2E
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 19:42:47 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id k72sf2257287pjb.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 10:42:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597254166; cv=pass;
        d=google.com; s=arc-20160816;
        b=SMM8Bf9IposNGFakzkZOcF3qOlAmlQFes6dpiYKO7beEZbqPDy37OyCQx21ja+mKlr
         zbwI4BhxUClgXkeevM94k5cV4nG7Rrqcc+eg906XuuucuQrMwBH5NtqhGmARynfL5zqD
         UJ+SNTm/r7cccJuo7i7IG95kyob9SHHdFSOWn1OheUPyuDXWti6a/n28UxYFNRmSt/Kt
         W3Jqtb/qrG+1MoEijiGRk+ncAU08bFJZrpQyq1um6D5oLU7dk8z1Pxz9B/wii3U11Ykm
         F4nEwq6L20EqjHu1bnnT4VZv3L0BufU+nPLrFc01nFlTeWamLELKTHgvEB9JeHIl3pzP
         pq0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kac4AQR1CrFAzYOf0e7GZfnMoCVymEz57fsDLM488UI=;
        b=We/odwEYrEL26dudYu7WQGhZWEIPfVkMsce8C+SIJmnscUHKDYHIe/NTImdIPOiao5
         qvTDQ6ffeJJbeE6GdECDAkqtE2pkg8KasTNjLPZkDS8n6ECnqmLKewL4onra1TuucVhe
         tV3i1P+u9qwLj8bY8lbt88dU7QZN5ipV63L99Ylqul72dXOPZQO11eKYQWwRAyb7HjsB
         7NrLmO0QlZ6TfwMaCDh56nlONftzcb8/I/VxTea40XIYz0J9rQzGjrsFpC/vj6RR9L3x
         NNkktfrTwVZEdY3WBxU6BE9PDZCVEwkDdCwjg1D9S4Nwn4cI0Yy9GyyQ7qjRZD1O1Rrz
         2Tlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jahJjF01;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kac4AQR1CrFAzYOf0e7GZfnMoCVymEz57fsDLM488UI=;
        b=rfANu7kK0xrPfSsOM4MjKKWlr6p1S8an5g1xA/uRsFIZLwLw6T5AwhguE3IK1unxYx
         Aw1X2I9ANfqibUNABR1Ns091ymz9Q43XZgHuH1zh7TtIVGr7pZdNrZ7wAlOqJocWMwCu
         CPtPoSCGviEkIgj0TuMGfxhaU54Hhv81c4trGuPeKy8IPXBPnhw/mfyqCXEyua13Eyxj
         b7wrAXiWAFb/T6LJ56HOUFiX6tqdsjGs62kLsulBbUSyo8+ttEoa8zr0BCrpPkjnJg1C
         58Peb4zs5WMsimKr1x8OCWJm8IZzhcYZCNG+HyNwzDMq8S/6R0Z/C1cUWXH6FOQaHcWl
         cerg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kac4AQR1CrFAzYOf0e7GZfnMoCVymEz57fsDLM488UI=;
        b=dkc5SeHRjI6dy4d1BmBIn2QGEVnBD4fc2QLRWjWmNVk7AoN4nrRSSL3cC/2bDpHFDG
         hzWtU3ls2MkD+57NuyBwbnPcHojNxQ4olSOetSlq2iIf/ZMdYa9Nxti21/aNe8zJkQEn
         AZ8vD+u5a17JdkgwsQkAo6ZYO5vYYNNGtWq9rA0rH2JNdjcuaH1kq1aeJ2UwYjmIrFbo
         b8Arz+JBEBBAc8uxSPsIsYtnfiRViUYCHaALH4yFMwuns4JTZUQnE2ZkDfoa5K7SQVBJ
         CAy3Gwe/ZrA+vGRhUq0e2sXzi0YbjeKgu4mDnp9+xKuLgS6Bhynim/pHE3eHLIg1trAu
         I/VA==
X-Gm-Message-State: AOAM533JIyM51mpbpSCcRMwB1lvc6LqQqGDZsubZoMsvMaLkDvkgdAm1
	q7kqum0YjZXvSht2f4HVApo=
X-Google-Smtp-Source: ABdhPJzvdzyLM0rP8ll9nfDwEX/d58Oz3q0gpWxyuEAjZ80Y122Nzy2QKerVeNKfSLd5EjDOkHPKwQ==
X-Received: by 2002:a17:90a:bb81:: with SMTP id v1mr1100149pjr.168.1597254165927;
        Wed, 12 Aug 2020 10:42:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fa93:: with SMTP id cu19ls1220361pjb.3.canary-gmail;
 Wed, 12 Aug 2020 10:42:45 -0700 (PDT)
X-Received: by 2002:a17:902:a982:: with SMTP id bh2mr502033plb.182.1597254165502;
        Wed, 12 Aug 2020 10:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597254165; cv=none;
        d=google.com; s=arc-20160816;
        b=zqD5l4sLgmTpTF1oEz4qoxt9VsB/ysAPolIuWWQw8vJFB3Nc5/a/agwhqWMywtLqfQ
         qyHVCfvpG5jbdOlCusLCFfqUbhRMfpwdl9wRUzyFGdSINvSvvKUIkJIt2oqBTY66KVWT
         2m+8zB0tljxFTK4K6RmUpK4KmD02ssK5piGqCAoIrQpWTzNzR0IP8tJZUXczm9ziPCwI
         IglwyzWkhqzaNA29saVG5zWck15vzBOb8Ttqp3FO9shdPkOZSf5BKhuAm452S91rckLA
         +LAQtJk2L7tMV8OYkgKo428TSfUaCykOCyBZJhRPXNuDQGQdjJ3vFph59cv5S79Cza3b
         YeoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a7lVOCmkI+O7/barsvdFAonBSJY77xfLcdY4hWtrU8E=;
        b=Xmw6J7WP2AJL67+bclJXFgHh/+HUL+WYuDlwQXQAzzZ1yG2FRE8G67hEUsQJlxlZP9
         CCTJ/bERatmLZXWO2EW5R3a1jmc2zbktjyY5MxRKgjOg4nbwFXA1Be05ewWuS0teu2cU
         Vfi5xB8Oh+fJ/CV7wQImR9a9eygdKx0UJm5UuHWK+Yn7USvKNxjDV9My0ZO6RGoBAW4m
         A4JNyzqLxaS2+5Apbni5jS6CnfBtd5YoLv4ZdgFUZwLtsmhMHQdmIIvY4Ac3u7JjKGFt
         QeFPQIEyTGf9AJ61FDgI7zrDw65XmwlDkVXTWQUoYIqEmlPE4etHx8vH/L6cy2m6SyRQ
         zvNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jahJjF01;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id t75si108198pfc.3.2020.08.12.10.42.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 10:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id r4so1442283pls.2
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 10:42:45 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr1067394pjc.25.1597254165017;
 Wed, 12 Aug 2020 10:42:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200812004158.GA1447296@rani.riverdale.lan> <20200812004308.1448603-1-nivedita@alum.mit.edu>
In-Reply-To: <20200812004308.1448603-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 10:42:34 -0700
Message-ID: <CAKwvOd==e69E82FY937E5cSX5tPGgLGTLenWQR-GUUVFN9=epA@mail.gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jahJjF01;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Tue, Aug 11, 2020 at 5:43 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> The x86-64 psABI [0] specifies special relocation types
> (R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
> Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
> can take advantage of for optimization (relaxation) at link time. This
> is supported by LLD and binutils versions 2.26 onwards.
>
> The compressed kernel is position-independent code, however, when using
> LLD or binutils versions before 2.27, it must be linked without the -pie
> option. In this case, the linker may optimize certain instructions into
> a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.
>
> This potential issue has been present with LLD and binutils-2.26 for a
> long time, but it has never manifested itself before now:
> - LLD and binutils-2.26 only relax
>         movq    foo@GOTPCREL(%rip), %reg
>   to
>         leaq    foo(%rip), %reg
>   which is still position-independent, rather than
>         mov     $foo, %reg
>   which is permitted by the psABI when -pie is not enabled.
> - gcc happens to only generate GOTPCREL relocations on mov instructions.
> - clang does generate GOTPCREL relocations on non-mov instructions, but
>   when building the compressed kernel, it uses its integrated assembler
>   (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
>   which has so far defaulted to not generating the GOTPCRELX
>   relocations.
>
> Nick Desaulniers reports [1,2]:
>   A recent change [3] to a default value of configuration variable
>   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
>   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
>   relocations. LLD will relax instructions with these relocations based
>   on whether the image is being linked as position independent or not.
>   When not, then LLD will relax these instructions to use absolute
>   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
>   Clang and linked with LLD to fail to boot.
>
> Patch series [4] is a solution to allow the compressed kernel to be
> linked with -pie unconditionally, but even if merged is unlikely to be
> backported. As a simple solution that can be applied to stable as well,
> prevent the assembler from generating the relaxed relocation types using
> the -mrelax-relocations=no option. For ease of backporting, do this
> unconditionally.
>
> [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

LGTM

> ---
>  arch/x86/boot/compressed/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 3962f592633d..ff7894f39e0e 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -43,6 +43,8 @@ KBUILD_CFLAGS += -Wno-pointer-sign
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS += -D__DISABLE_EXPORTS
> +# Disable relocation relaxation in case the link is not PIE.
> +KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
>
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  GCOV_PROFILE := n
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3De69E82FY937E5cSX5tPGgLGTLenWQR-GUUVFN9%3DepA%40mail.gmail.com.
