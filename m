Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB64H4D4QKGQE3GWA7TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E2F24514F
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 17:49:16 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id h68sf3559654vka.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 08:49:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597506555; cv=pass;
        d=google.com; s=arc-20160816;
        b=QaJQtdwQ+FsxurVwNkM246SGk6JnZEoa2pUV4hfYQqJCFmhchzQtTbSReUdkEUq/HE
         59bqsoDPicWpsxJRY3qDQOo6rB6w1fMHXKZXJQNQ9AWi+V6gSVM5Jj/iLY/zIMjbtXYp
         miiCBLAO2KoH0q0D0fls6whCcoi3tmLZg3oqdqtQPzpUkPMpZPBLVCllRQxTSuKBlNLR
         Xzi1724rpNQ0Tv11xAqQobfcXD9nxplo0Hykhms84gEo4cUFyPRdWsHdx4gRelRi+2uk
         KVq6ga0x72lww4V63vY9AqiHYZcsNFpYSNjSe5Q1HK1zjgmt5LAYdkHk+WGZXhwoC/Hg
         vqSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=2wbN4c/Gmmp8IvciqsQPBL1fglxvO4dKiENjwsW6OPo=;
        b=fIZ/JSXGw74hXhVePPxgEe7jspY4TC3gMSNpBvWnIz4sObSaEeL55TjRYPTsgm2YIp
         Hxdu93ofLOa6p/U+vYRLxtqnC8KJMEteJtdiSVuqRgz94za3M/f59pk1D8m/2IVq24Nf
         VH+AHq9ourZxiOwyxw8eV91HKY2lO3jO6GyyejpWkvd71sPkmfThqtocLN6EfzPff8St
         KVf6Yt0AzxxRrCuib21kJKZ/p13Lk2tFLkdNm+1BlFUZo9WggSYyHda8pw4+hcs8D7Gq
         RQXaZRfUaZOcFglxxswtYfD3N8oBdDxqoy4LtX3ijmuuNUnj40zJIpTQ12OaUHO34Wq1
         tdQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vlkrhu7X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2wbN4c/Gmmp8IvciqsQPBL1fglxvO4dKiENjwsW6OPo=;
        b=opY+HrYb2mxs1dnok3FB+r9wKitZW/8ihybbMhoAMrA78AIWwpLg6IO9F/ty+UTe1X
         dURdeLuyeD9zWKkM8lihQihiROQ74Rf7uxiQEAaaw4wRbBF2R8Vdh5F8Zz6fUKFEBNLa
         kkG8d5CRAMty5p1SEnYxkLqmBcjkaQE41Tfl9No8aRNG7cyBJwkJEPC2oSovqSYR32wu
         WBN57MFUSuylJbwiyOpFdQT2zWYlyNVsJAO2+MmKv9y7jv8q0VnuUECPlqwff/Jx3aS6
         QSYBMXTb5CyFVAsjY+4ZfckV7GGg94XgkHA0WEYn7aTuBrZRxP8uSmnrKLa3wx1cUlMq
         bgHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2wbN4c/Gmmp8IvciqsQPBL1fglxvO4dKiENjwsW6OPo=;
        b=FHVQUfg60lQiBRivgKTPs4bbHkMo2EfOR+entuDOF1dWn61OKEUtToaH/eUrevREEN
         /HgbUY68l/PTEv2F50zGrCpgKCI9AbwUvvRbKtRyVGQWjiWAwfnAVpmz1L2BqTVPIex/
         T6FIEMC9/asy+s/Xn+z36l2viluuuPwthZeI3lZoZVzOVxLfEgPnORF1qspPYHQjC+D0
         HcJF+jDTia+4e+zaPJ5acP5e1asYK3IA/QgR5/bAVe7uFePKA25xJs4mcKxLyqQa9/2j
         q+XX+MUoTgqTeYKPoKQ8A2Fp2puam/WDr9/GWfMyBZfxFf7MsdJZ8YyenCUFurYUeHRD
         Y9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2wbN4c/Gmmp8IvciqsQPBL1fglxvO4dKiENjwsW6OPo=;
        b=j3Qn8q2oXo1hCgsve415a2CHUG1IAsCdkzteGQw3Qj5/+iqwpC/Yu+TPL3QfZL8qZz
         U86ARZKy4poQ7mEwLBaEahjyU9aQ48nyuR3cTepjRd4ud8JEDbbYijd0qTARUw68FuRg
         8mR8o5keOhejgnWTffOCkGEmxzaDA1kxY03cqxlj3TUG8eh/ZSwhnilCjvs36AzIFYdR
         JDrqRU4J3WfdFKLjb573TsuBqijG2xakkoDE8HDbHkZ5VYGcfQvK5zkYasiMadx0dEzd
         v01PNLRrZAx9k8HLI4+2TE1tSNmxPNODnkqh5PUpdj5appyUMvfOFYa8LG3qupJOKSQW
         EZaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uOOkO2Gj9HW42OMMAPxcCb6PBzgC1GSl6VrvYloQOlDHjDsgZ
	LMvLY0YW4S+ovdDdr+RvYf8=
X-Google-Smtp-Source: ABdhPJzg8J5wOqKvxN5eCIQMkYx4EKcKEGCNilycOZKeDSXG5NDqtxxHk2m4JCx4ydf8hap1yo0UMw==
X-Received: by 2002:a1f:3045:: with SMTP id w66mr4394806vkw.35.1597506555615;
        Sat, 15 Aug 2020 08:49:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf4a:: with SMTP id f10ls1411372vsm.3.gmail; Sat, 15 Aug
 2020 08:49:15 -0700 (PDT)
X-Received: by 2002:a67:985:: with SMTP id 127mr4576375vsj.17.1597506555160;
        Sat, 15 Aug 2020 08:49:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597506555; cv=none;
        d=google.com; s=arc-20160816;
        b=n6WpMzRFeMVP2+sNOYl2QbZ5IO+T4PN3VmJ7OYlP30cAiSTBK4VTiRIOBn2tnmy4BD
         wql1GxsUreCHOmEGP1wATQkTlbHZhFbxs0dnbvJKdZceFPAladib2FlMrjODGn7gtZ0U
         9cM4GjXUyozg4cnwizT0Y6Dv7hW40xJeVFxrwxMhDTpcak0cvRZZ2IB4zWGxW1s7/v47
         x8MyDPdPnd7utVxkIgrOeGZtPtcWwuIoSMMB/lSVMWI40Ud0qEqZsUoRiOrdxDUK7VVF
         KNnl11WMMu/d2uJOWWRcTeQET33wdtiZyzwUn4ogE7Fh4snnePoRoJTdEpbx3e6k/Hr2
         Nc9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CcdQzl9In/9cdITxocrz0vM3bfLjK73C35i7BkxY8gM=;
        b=QmUDP5PSxXNNCA+V3Ci1QH4WBp2Ez1d/9NGQA/4bbnA1j1hE3bTXYsylVJre4Ml1o4
         terDT2fT1d3ne1KsrKurNygcXBjS3M7ihw6b5HlZGjx9GNbWmn8XkPscwEcuR051D1nX
         bB1EsjuO2Sge+/EdadCjYRrkIksVI0HtF72mx4La87I4yQM5j2BWFjjH1rWMNFOdMnAf
         Ijy9VjfjcB0zE9eXswqVS+Lqcft5UOFq65bDzcJi5K23jWjQnDAoy3Up/dvaZG88QvqS
         fZD3ad2XDREo1+h8ukRKL6AydBY34ctUtHrFSVcwbS2NZtBfCOMa+/Z5x5pUCGMWvt4E
         AEHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vlkrhu7X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id p19si853531vsn.2.2020.08.15.08.49.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 08:49:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-oo1-xc42.google.com with SMTP id g1so2541932oop.11
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 08:49:15 -0700 (PDT)
X-Received: by 2002:a4a:7b4b:: with SMTP id l72mr5516085ooc.74.1597506554603;
 Sat, 15 Aug 2020 08:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200812004158.GA1447296@rani.riverdale.lan> <20200812004308.1448603-1-nivedita@alum.mit.edu>
In-Reply-To: <20200812004308.1448603-1-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 15 Aug 2020 17:49:03 +0200
Message-ID: <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vlkrhu7X;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 12, 2020 at 2:43 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
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

Thanks for the patch.

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674409705

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
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812004308.1448603-1-nivedita%40alum.mit.edu.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVdTT1Vz8ACckj-SQyKi%2BHxJyttM52s6HUtCDLFCKbFgQ%40mail.gmail.com.
