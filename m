Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGNQSP6QKGQE52NBZ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CECDF2A8E84
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 05:59:06 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id e7sf28719vsc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 20:59:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604638745; cv=pass;
        d=google.com; s=arc-20160816;
        b=wDZy+AwhZK46PAJ1W+vXwEi5BXKsFfe8vQ2YdPPVQHWPgVaEGWXn5yiy2mPtb4GrYu
         0EH3ImNR6aAGgFpth7TkJ4ImpzII8SBSCA95xzIwQvIYrB6Sw3tRbTwLXLgCrVun2F0E
         SA7P1zszimgGcCKjWlvpq/BNQQBvaSs3KB/giF7xLEcgImaIAuD/IxjWZZR0jMxIVJeE
         IxWlETy6Fv/BETFVRTGOWF0U1Ek2fw+YrSOhdCQ9aEVH7iw50Xaxnmx6U2mVjJTRo4Rl
         DHWgDZJcxTfY5JLREf5PnXXPL2S0r7nMZ8ukpr63pfyvt1uvOWBWF7KWgsvxZNU5pvXB
         KMTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=kQbOnebCy/zqMvDTlEGmtKxeT9WfeMFM2L2baf2mup8=;
        b=nq2fxo6/PgoSJM/IROM0q1kYrt65ymUatnCI/EmM54g6LyCFmEur6i2cTMWVCczy8y
         mv3jR9QlU5aYIPGwhBh6HqKFxlidHLBfQxmNYxfRsxETQFV89Wc49gYnUCLANG61kPgo
         xnVthJJm+kfueQFIhImFO1tF9PVVIPlHVjvMWCK5rouYdbc+3cV0zbilnaPPj6aH1yuy
         BiHOCsCByaMpLzuVlSMsTK2H4z2Zuros3yve1RzTljiFAAgw1bLjcWJ887YcDbqFxI0c
         34r+99mj3kRFNBEgIsH6HBR6Wd2dhNHAF7+1SdKeTuhBiyUXvjodhM+6GSojH5ICRlaW
         ur8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eaemJZsp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kQbOnebCy/zqMvDTlEGmtKxeT9WfeMFM2L2baf2mup8=;
        b=b0iCkQ2FOwO2XRad9dbTW2hYakuDRIeeJHJd3l/mzMabkaOJCsN3w4pyy0fmMBiDDL
         YUJ/Fk5g6noxbELEH3nnvnMdiAsWzc5nX8Ya7h/8ffB6M8BsIbKz6+1n+bnePbXnTHlI
         LGqPamXfqlJuVloclY4rctqlFpZPwb+jq9QQ5dlfRZK1LFSZEyYeN2nyJ6HRk2ZK1r0A
         XBgT2XYEYqdiTDLusK7O7+L7dbAzmMwgKxIcnOXtpDlFITPzCXaZ0lpjCw16pDbLjvYw
         HsGG6TCcXT/VJkPcAKuByyRPnU5QrBWwp/jHyYRyx6pGl2b/QCjILSdgIO9DxuiZCSZh
         Ow7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kQbOnebCy/zqMvDTlEGmtKxeT9WfeMFM2L2baf2mup8=;
        b=WQl4HjrDo2WPEnjzeBN5WM6x1Hnq5yjPbtbaI86kNt3IOiuf/dyx/a5gthZTh4U6vu
         1gaHFRUmmhimPjXrlTJ7VIcnMBuTIdfx7IjVGU2FTeMESL4WthoMDSPqd6OkSXo/8j0J
         478c06dIl6GfutPI9bbh43mcCbhuKVa3Pgp9X+lovneSyPIXrySrAPF4matSjJgKVCkl
         ILoe7/W8eo74EQK+pyKMDAIzSDkbrJIz7pxJ9KfowUC9SM2PEnXs9DYFNhExzzKrfRbd
         rIkIGISvQqqKhCaa06FIZjm5z+g6b5KBR4NtkKGGc8TY4EGiqc/Izlg3UqEaCGM6rjUw
         V0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kQbOnebCy/zqMvDTlEGmtKxeT9WfeMFM2L2baf2mup8=;
        b=RIiVDOdvABdFDpUB3M179R3bQ1T/0IFJXI95vhCTpeiNk0e5PvsS2Vh5S+mxdA449G
         I21lN44o4oYjQL5VOO1wPc9v9ExPz8CLTcMJpZUnMlsKbYDGlaLRYpP3s1e7KnTtCuza
         ZuG/7+/9fWLuKdKIHzhu0+C71QAajZAxgwiInxfvG5IxDx139h5nXSdMDU7Jl00aBSjT
         1HnfX1HSiQm+cMNVC5JUW2olFbDUO8GyvYMZL0+XGHDBCoRlwHcQWv6uK7nkeBigcwk/
         nkYiSyakLmcAcYZJc9PXOT8y+wOT+lwAvM7EUXR3FFKnjmnAsYkF0Xk6hKCbrEpgpp+I
         IqpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533K7pW8Ti/P3cGS+wjweoCx1or1Dx4f4UyzoeVMZXhkjuW1lnjD
	DeR5AoiLNd2Z8O3I04E1P1g=
X-Google-Smtp-Source: ABdhPJzljsXSmK6ClDNsMaNz2ogWR4Wtf9BEjEa2wOJaAzMTGVrSfJbQOBccZ+C/MveJPtt7EVL2bQ==
X-Received: by 2002:ab0:186a:: with SMTP id j42mr49225uag.52.1604638745707;
        Thu, 05 Nov 2020 20:59:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3b19:: with SMTP id i25ls6731uah.5.gmail; Thu, 05 Nov
 2020 20:59:05 -0800 (PST)
X-Received: by 2002:a9f:21f4:: with SMTP id 107mr40584uac.53.1604638745170;
        Thu, 05 Nov 2020 20:59:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604638745; cv=none;
        d=google.com; s=arc-20160816;
        b=UQom8WQ7geqmw156S+lc9005Rbuo6BdqQy7VeETMQ6xkWkm4WtexHY8Mf6NGiUJ/ly
         VlwzyRlGiOFsdm/OXyow3y7hRssyL47szBJm5OvOrqU/MMirUiqlr8z2f5X7hdazITFy
         x++bAmQoomBDO3joWyP/If6YmHTygM+YpJQik+aIyjOE7tr2B2yR4m709rx6Ov14EaCv
         CBmSt/WzEVjKy/2QmwJODRthFBi7eXc/5bDUxx29N2sHYLTCWO+594NmHHFgo0Tkgz0J
         5y7DbyyYxb6efyO4Do/0QULdsz2s/7A05G/mZzo78/TB9qzIAwo4t+75YSSb1y8yESx5
         A1hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AUTEF32bF9kjuo/eDBOdV11pkCJfqfx6fmnPbKlY8U8=;
        b=O2sy0T7mKg74ZnIVeat6JhEgPIXHiOIgPtEhICp33qqjrzowXBz7nmNBHQoCqR6iuC
         9F8U1c9ozw82SdXRGUxXhG6iR/81lT8hr8paIyglWp3oprmm9jHhD1HqAYWZKpGsiYhe
         XK1JhS4iOA2NYaU5JdxZZOI9COdO9KwJzkyn6QkYBAAZL1cpf/AFRgyXmGKL9FF0DvTt
         cMtXTws1pXPk+FtEiXmGEISL86c0dXMBaBZ5Y/XB8llAEQy11q3aquZ3linhZPRUdQSv
         nQQ0BIQ81gwBsX/z/ppELPrR64wI3/LReEVNSEn+mZheLARrCIoJme24SmuKSKXNA2S0
         t2NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eaemJZsp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id s4si23773vsm.1.2020.11.05.20.59.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 20:59:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id r9so195004ioo.7
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 20:59:05 -0800 (PST)
X-Received: by 2002:a02:cc84:: with SMTP id s4mr245120jap.126.1604638744568;
        Thu, 05 Nov 2020 20:59:04 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id u18sm53474iob.53.2020.11.05.20.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 20:59:03 -0800 (PST)
Date: Thu, 5 Nov 2020 21:59:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-riscv@lists.infradead.org, kernel-team@android.com,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH v3] RISC-V: Fix the VDSO symbol generaton for
 binutils-2.35+
Message-ID: <20201106045902.GA2585953@ubuntu-m3-large-x86>
References: <CAKwvOdn5ib_WHpTg8YpHtqeOMLs+QDxVkzb8fuyDUL_N9BA_xw@mail.gmail.com>
 <mhng-dba8756e-d51b-4ce0-8987-51fcf9674c24@palmerdabbelt-glaptop1>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <mhng-dba8756e-d51b-4ce0-8987-51fcf9674c24@palmerdabbelt-glaptop1>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eaemJZsp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Nov 05, 2020 at 08:42:22PM -0800, 'Palmer Dabbelt' via Clang Built Linux wrote:
> On Mon, 26 Oct 2020 12:48:08 PDT (-0700), Nick Desaulniers wrote:
> > On Fri, Oct 23, 2020 at 10:03 PM 'Palmer Dabbelt' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > 
> > > We were relying on GNU ld's ability to re-link executable files in order
> > > to extract our VDSO symbols.  This behavior was deemed a bug as of
> > > binutils-2.35 (specifically the binutils-gdb commit a87e1817a4 ("Have
> > > the linker fail if any attempt to link in an executable is made."), but as that
> > > has been backported to at least Debian's binutils-2.34 in may manifest in other
> > > places.
> > > 
> > > The previous version of this was a bit of a mess: we were linking a
> > > static executable version of the VDSO, containing only a subset of the
> > > input symbols, which we then linked into the kernel.  This worked, but
> > > certainly wasn't a supported path through the toolchain.  Instead this
> > > new version parses the textual output of nm to produce a symbol table.
> > > Both rely on near-zero addresses being linkable, but as we rely on weak
> > > undefined symbols being linkable elsewhere I don't view this as a major
> > > issue.
> > > 
> > > Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
> > > Cc: clang-built-linux@googlegroups.com
> > > Cc: stable@vger.kernel.org
> > > Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > 
> > Any way to improve the error message if/when this fails?
> > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/407165683
> 
> Probably, but I can't get that command to actually run this stuff.  I tried
> pulling the commands, but I'm getting some weirdness
> 
> $ rm -f arch/riscv/kernel/vdso/vdso-syms.S
> $ make ARCH=riscv defconfig
> $ make -j2 AR=llvm-ar 'CC=clang' 'HOSTCC=clang' HOSTLD=ld KCFLAGS=-Wno-implicit-fallthrough LD=riscv64-linux-gnu-ld LLVM_IAS=1 NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size READELF=llvm-readelf STRIP=llvm-strip ARCH=riscv Image

This command is simpler and reproduces it for me locally on next-20201105.

$ make -skj"$(nproc)" ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- LD=riscv64-linux-gnu-ld LLVM=1 distclean defconfig Image
clang-12: warning: argument unused during compilation: '-no-pie' [-Wunused-command-line-argument]
make[4]: *** [arch/riscv/kernel/vdso/Makefile:53: arch/riscv/kernel/vdso/vdso-syms.S] Error 1
make[4]: *** Deleting file 'arch/riscv/kernel/vdso/vdso-syms.S'
make[4]: Target '__build' not remade because of errors.
make[3]: *** [scripts/Makefile.build:500: arch/riscv/kernel/vdso] Error 2
make[3]: Target '__build' not remade because of errors.
make[2]: *** [scripts/Makefile.build:500: arch/riscv/kernel] Error 2
make[2]: Target '__build' not remade because of errors.
make[1]: *** [Makefile:1797: arch/riscv] Error 2
make[1]: Target 'Image' not remade because of errors.
make: *** [Makefile:335: __build_one_by_one] Error 2
make: Target 'distclean' not remade because of errors.
make: Target 'defconfig' not remade because of errors.
make: Target 'Image' not remade because of errors.

<snip>

> diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
> index 3a19def868ec..88206dd8b472 100644
> --- a/arch/riscv/kernel/vdso/.gitignore
> +++ b/arch/riscv/kernel/vdso/.gitignore
> @@ -2,3 +2,4 @@
> vdso.lds
> *.tmp
> vdso-syms.S
> +vdso-syms.nm
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index a8ecf102e09b..fe5c969a6bf4 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -49,8 +49,11 @@ SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> # We also create a special relocatable object that should mirror the symbol
> # table and layout of the linked DSO. With ld --just-symbols we can then
> # refer to these symbols in the kernel code rather than hand-coded addresses.
> -$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> -	$(call if_changed,so2s)
> +$(obj)/vdso-syms.nm: $(obj)/vdso.so
> +	$(call if_changed,nm_d)
> +
> +$(obj)/vdso-syms.S: $(obj)/vdso-syms.nm
> +	$(call if_changed,nm2s)
> 
> # strip rule for the .so file
> $(obj)/%.so: OBJCOPYFLAGS := -S
> @@ -68,9 +71,13 @@ quiet_cmd_vdsold = VDSOLD  $@
>                            $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>                    rm $@.tmp
> 
> -# Extracts
> -quiet_cmd_so2s = SO2S    $@
> -      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
> +# Extracts symbol offsets from the VDSO, converting them into an assembly file
> +# that contains the same symbols at the same offsets.
> +quiet_cmd_nm_d = NM -D   $@
> +      cmd_nm_d = $(NM) -D $< > $@
> +
> +quiet_cmd_nm2s = SYMS2S  $@
> +      cmd_nm2s = cat $< | $(srctree)/$(src)/so2s.sh > $@
> 
> # install commands for the unstripped file
> quiet_cmd_vdso_install = INSTALL $@
> 
> For reference, here's the output of nmo for me:
> 
> $ cat arch/riscv/kernel/vdso/vdso-syms.nm 0000000000000000 A LINUX_4.15
> 00000000000009e0 T __vdso_clock_getres@@LINUX_4.15
> 000000000000080a T __vdso_clock_gettime@@LINUX_4.15
> 0000000000000a48 T __vdso_flush_icache@@LINUX_4.15
> 0000000000000a3c T __vdso_getcpu@@LINUX_4.15
> 0000000000000916 T __vdso_gettimeofday@@LINUX_4.15
> 0000000000000800 T __vdso_rt_sigreturn@@LINUX_4.15

This diff does not solve the issue for me with the above command.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106045902.GA2585953%40ubuntu-m3-large-x86.
