Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB643L3AKGQEP5ZZ5DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B79611EC330
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:52:41 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id p14sf9101533pff.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:52:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591127560; cv=pass;
        d=google.com; s=arc-20160816;
        b=bYTuUUPJXGv1An6xTJpNvKVaX8HoPjtPALVpo4gtybuhprtsOYjzZl0TzRnXoT8vEx
         u0vN3CyQrYqKR4nBVa1B6NyyT8kIw0rzzoE/fco1iWfoi3tw3ZFHx6Xmzt/7eI9TCyhW
         jOfs09fhDlokDvkETiLGO/hF6l7J9iBbPz9cqeI3a1rROlcat9HR9fkSOkfe49uIKmA8
         1G3J+NsS0X5lPHwPZHm+qp8FNTKD1l+z3hf8c69QvtT3EasdL2GlDAm2r0OlG4L4rtMa
         bhfpjhEpgeXlPpuz4QChi+U2YDZ84emO0N6yptwI5tYTfU1o14Qe+eeJxKyEmpJ4fYcX
         eviQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Zt0955OFEehS/SsvDmj4cTwAFgXvHT20ypkYBhv7IMk=;
        b=Fsb7tSc+KH2OykRaO5EyTEFX1QQn3LDH/OkCIZnqeYkIFdgfKW5B1ygr5D/qKo9R97
         V/N3lbMRJvBZ1Lyj4023KnTDJ2Gr7UA3KeCug5mxoS39tsy/AJQq5z2wm2/ZWzyEJ2KS
         BZjT6DK+SPrloWgQ/gkM+LcdP+n+FP5TReu8Tzz8eGRYHqCr+9XjasJwse0FyvSQftur
         oEyiDPLM4fYYx6mRB9WkERcM2p1ZnmZNu8yDzxxUQpnqxvPHXfrd3u8WUccjOeAf1Yvl
         qtom7oib7o3DjI5zTr/ia9U6ySqoikbfIOHUfNL0X0axeHLc0Ts6vBT5VfXY0/6XuUbZ
         E70Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cXB+4FqN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zt0955OFEehS/SsvDmj4cTwAFgXvHT20ypkYBhv7IMk=;
        b=CdtDA1z1Ojzpv1A/o7Bk5u631rV6dJsGFjhBUf1wRvQ6Abxt0egCvjBHi+VUMEZsnS
         UwGfdS/SMtNQvvcGoAspgYA6TezUqF6d7e/khHG0gR9Gj1Aj7wgqg2ArFkPcqySNFq1k
         fL77WCXchuehHAW2GoRTr3w9lifMITnRfbBiuAfgJS7RFvWfwGvfpNjalLDK4z1jOZ0A
         4Vk6GxrJHeC/nSD0/b8prxLEvuvfZCmbOqiDkp25rvafgEuL03RtG2gkXMs7gvbKI0Sk
         3xgFab4rlk1BhfjIvV0jnDmHWycQKE+bMq+Qb8UN3rVcTs2rOWQIGQPrpXTnii1zQZS8
         lkYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zt0955OFEehS/SsvDmj4cTwAFgXvHT20ypkYBhv7IMk=;
        b=a1CqvPoV7rHBhsVjYmlyBtS1TXcO9sFeAt82BvcSM3rDV0BzBbXnLN0n+HfEQw2LIe
         oHPJ38d+4lc1PH9aKBOCUSKcYB8H39yYfbksJFmgM1VJAco7ftDPRGtvTOLRnuMiHO3t
         iB45RJ9eT7RSxDqWL40Sen4GW+loJ14tIef2zL9xPfLnObnN/X5xECc9umZrseByHF5U
         L/LysGWaBxFkkgQ0PvitjX5y7Kx8KHBeVe+JTR+G350Y1xpt++0LM6YpvMuBztKKyX5S
         4B8vKejzV4uR4zPpBXgLpvGnbOXVW2h8v5DeOqolnf+yMsLmH1834Y+Xt3nit2LZBdjI
         V6yg==
X-Gm-Message-State: AOAM533eXtc+51s7FR4cmcLio/OCr9qGY/+wYhrEDPDkMmjY2w5Iw9Kk
	aPzBHajYf7tmPrw62Bztgro=
X-Google-Smtp-Source: ABdhPJxQPObSUO4bojBLGymfoiDzaM0+QPuotPInOOVZD7nd35LkvEufzKJ21+gpmy9mxmWsKTzpGA==
X-Received: by 2002:a17:90a:bb97:: with SMTP id v23mr898257pjr.228.1591127559955;
        Tue, 02 Jun 2020 12:52:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f8f:: with SMTP id z15ls7313874plo.8.gmail; Tue, 02
 Jun 2020 12:52:39 -0700 (PDT)
X-Received: by 2002:a17:90a:a515:: with SMTP id a21mr922170pjq.158.1591127559551;
        Tue, 02 Jun 2020 12:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591127559; cv=none;
        d=google.com; s=arc-20160816;
        b=xhw797JPQbiIV4QTcKtSWdfxCqvxb8pFPA5wp/VcgTig0kmpDV6GFcoO2ihoPdgB7c
         x1Dgh5C5RIP6GbbxhtyWg+S8QInJeaQU9w4I8NMsFv7TYeDtZqOPVbkZrpqta9/shRgF
         +G8Vfd+2f7lYLb2eAU9YwIjbKfC4gyCLVa85DPREUZwnpcqzxuDeyody6hP4FriaeXWP
         z132Sw00OEplrs+DiBrx2xkbBf76yBB4U3E8oSIHpM5BNxswrY9yfHWCLDWBjx6l16ez
         IONtZizdclx/34Rjk9LAHH3oEa0JHNyGlPO/tsD9OJ9CrvcAvQ3aRPN+IkM3izh7Tqdv
         PMNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jBlQ0H5npGZVX47FUALQU/dmYxL2gnelxfg7MyVgbp0=;
        b=mLic0DEjnKbciIIprbwMyIGjM1r9WxxmUSaku639hnyB3WW9ZA5a5niaHciLW4LCgS
         N216kUJyaRuZb5USc1htXmAaNFLk5i4YNlr3Ro5F5EPolQQ2DVkOGel2uTGkU5gGtTYP
         OSsohyTWOnbQwSs2dVoyLaz09lEio21EDucq3TgeNXwQSiFMsYNhWqZNzLxLea4Q9ZHl
         TJo6ulTfCyHtgSR311S0yynTW+GJjH4ZzbzwGb6a/e1OgXzjiG3+nwGqK2frg3tFp4M5
         7fy4jduPJuMksLNpqAV42KJ9C8d3FpyVqfDHyCMsOZufw66d0XzoDa0s0qvpFbKKRpPm
         cl6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cXB+4FqN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r17si223602pgu.4.2020.06.02.12.52.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:52:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id n23so361856pgb.12
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:52:39 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr893785pjb.101.1591127558983;
 Tue, 02 Jun 2020 12:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmCrM0eUZHR12OBgyRhNPFDzZKjrpZ0DW8Cg=wqTfzDFw@mail.gmail.com>
 <20200602192523.32758-1-natechancellor@gmail.com>
In-Reply-To: <20200602192523.32758-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 12:52:26 -0700
Message-ID: <CAKwvOdnH8rxT7y1U0d=pyD19K38KwarrwA2s+Ji7ctgg+ks_kg@mail.gmail.com>
Subject: Re: [PATCH v2] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cXB+4FqN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Jun 2, 2020 at 12:25 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, the VDSO is being linked through $(CC). This does not match
> how the rest of the kernel links objects, which is through the $(LD)
> variable.
>
> When clang is built in a default configuration, it first attempts to use
> the target triple's default linker, which is just ld. However, the user
> can override this through the CLANG_DEFAULT_LINKER cmake define so that
> clang uses another linker by default, such as LLVM's own linker, ld.lld.
> This can be useful to get more optimized links across various different
> projects.
>
> However, this is problematic for the s390 vDSO because ld.lld does not
> have any s390 emulatiom support:
>
> https://github.com/llvm/llvm-project/blob/llvmorg-10.0.1-rc1/lld/ELF/Driver.cpp#L132-L150
>
> Thus, if a user is using a toolchain with ld.lld as the default, they
> will see an error, even if they have specified ld.bfd through the LD
> make variable:
>
> $ make -j"$(nproc)" -s ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- LLVM=1 \
>                        LD=s390x-linux-gnu-ld \
>                        defconfig arch/s390/kernel/vdso64/
> ld.lld: error: unknown emulation: elf64_s390
> clang-11: error: linker command failed with exit code 1 (use -v to see invocation)
>
> Normally, '-fuse-ld=bfd' could be used to get around this; however, this
> can be fragile, depending on paths and variable naming. The cleaner
> solution for the kernel is to take advantage of the fact that $(LD) can
> be invoked directly, which bypasses the heuristics of $(CC) and respects
> the user's choice. Similar changes have been done for ARM, ARM64, and
> MIPS.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1041
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks, with this, I'm more confident that the linker flags don't change.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> v1 -> v2:
>
> * Add -fPIC per GCC's documentation, as pointed out by Nick.
>
>  arch/s390/kernel/vdso64/Makefile | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
> index bec19e7e6e1c..67c14732c304 100644
> --- a/arch/s390/kernel/vdso64/Makefile
> +++ b/arch/s390/kernel/vdso64/Makefile
> @@ -18,8 +18,8 @@ KBUILD_AFLAGS_64 += -m64 -s
>
>  KBUILD_CFLAGS_64 := $(filter-out -m64,$(KBUILD_CFLAGS))
>  KBUILD_CFLAGS_64 += -m64 -fPIC -shared -fno-common -fno-builtin
> -KBUILD_CFLAGS_64 += -nostdlib -Wl,-soname=linux-vdso64.so.1 \
> -                   -Wl,--hash-style=both
> +ldflags-y := -fPIC -shared -nostdlib -soname=linux-vdso64.so.1 \
> +            --hash-style=both -T
>
>  $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_64)
>  $(targets:%=$(obj)/%.dbg): KBUILD_AFLAGS = $(KBUILD_AFLAGS_64)
> @@ -37,8 +37,8 @@ KASAN_SANITIZE := n
>  $(obj)/vdso64_wrapper.o : $(obj)/vdso64.so
>
>  # link rule for the .so file, .lds has to be first
> -$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) FORCE
> -       $(call if_changed,vdso64ld)
> +$(obj)/vdso64.so.dbg: $(obj)/vdso64.lds $(obj-vdso64) FORCE
> +       $(call if_changed,ld)
>
>  # strip rule for the .so file
>  $(obj)/%.so: OBJCOPYFLAGS := -S
> @@ -50,8 +50,6 @@ $(obj-vdso64): %.o: %.S FORCE
>         $(call if_changed_dep,vdso64as)
>
>  # actual build commands
> -quiet_cmd_vdso64ld = VDSO64L $@
> -      cmd_vdso64ld = $(CC) $(c_flags) -Wl,-T $(filter %.lds %.o,$^) -o $@
>  quiet_cmd_vdso64as = VDSO64A $@
>        cmd_vdso64as = $(CC) $(a_flags) -c -o $@ $<
>
>
> base-commit: e1750a3d9abbea2ece29cac8dc5a6f5bc19c1492
> --
> 2.27.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnH8rxT7y1U0d%3DpyD19K38KwarrwA2s%2BJi7ctgg%2Bks_kg%40mail.gmail.com.
