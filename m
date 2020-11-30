Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBMWSX7AKGQEC6LSE2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 113172C8E44
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 20:42:00 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id l13sf3074309vsp.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:42:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606765318; cv=pass;
        d=google.com; s=arc-20160816;
        b=YN8lbo1/bC5luFw+aUilCn4mi9f68UrFNvV/S4HlZOx1jTBpTkBtjPUXv9e9+1E4/H
         YFgoXwmpd88WQ41/+DbUjIWHVpF9WwOZMXP7Es6zIV7GRIIEL/wEIbtYAjcmHPET5qXv
         CoZUeTV2MCKFtmuB3LCodn2D0F9yB++nrzT/fAYA6aEOBQ/87P7eXtP14Wujp70a2SVo
         oxdZ5cT6S9uRvSa6BqGFzlxDMZid0z0lnXhznypm2BV+MxkYjcw6bEqmaq9SnK3K/nIj
         GA0v9yWfpD9v2mn733eoWeA95NvFvcghRhDxXupJbLILMZ8I2RZ1cO0LCTVimxZtZBw6
         oJiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GfZG9cdqVNYdp0FlfRdafDBLZ/WKcCskGMS81GBd84I=;
        b=KnKw8qYROdD0pjAsDt1l9UMf83rBWo75Pb+neeh0hbEE57OTbeV6qqB+GwPaeVWAs0
         q0SJ1FzEYZFEkzFEp11ycCTh5DbmGv/ul7FcZnJDBwxuFpTp8uglK2TjbvcL+sUeupUT
         xETueNSeXAc3opuredoIC6C8o/ucsoXbbvJynvyUs2Gz0GhkHhvFQ8sCthkUxCwUDoyL
         ynqzVUZ8os+fQzf4OVwWIawrjFUJB/1KJGTxZDRIaLkeTuEHWTMLCq/nt2rdz72U/+pL
         Ufi6SeT1P3EpvoOXcD9EzFe/Ix9v9P6BBporGoOG17kwq+hvamLbDic4MNoo5sgPVEUH
         /9tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O/qkP0My";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GfZG9cdqVNYdp0FlfRdafDBLZ/WKcCskGMS81GBd84I=;
        b=AjHlMX93MeGv19oKXdgPUcDC7Ysl/tFNZOwtBDCoV9p9CfSafvcuOtv6DFrWduY/ve
         TJ03uzJvnLNrqSe6tSfuErOx/r9jWqtFzn4mw6u61zdf214FgXs2x4dwTdrnQzruuQ+F
         Wq5UbBdd3W5LPLThFGbbxhgOr3f3OkoEtugiK/yOmZSBXye60oTzmvjKZAR0eaXG+6Y8
         FuHwAgV6D3aB2vtruUHgVvfQheJd+xsscc1MjqV/1NriP06pUE9v4UfDF+fMdgRsgj7t
         hdmWZXsEJ1ZlFN1pZXGZSsGWwprrcvlwIiKYniHsXDX3tAZTscID9DECmrXk0SSCA77A
         2eZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GfZG9cdqVNYdp0FlfRdafDBLZ/WKcCskGMS81GBd84I=;
        b=Xlq1YWy+nvchtU60KU8EH6QZhr/KV9FTT7lnX1FmMxU+LXYgy49xXntD0urA/37D66
         LFJhh/X2FSPuBn1FI3YYDVrOPVwzEEcjBPYJije/mk0002SNdDbXNveGYjcs2cmEcVds
         GGtj+0XtEjEQGbqh+KdMRj5ILBdszPuY1IH6lrhYYkWsNlz9LxQWe4huxGtwC2s/jpHJ
         lbebbnMws1w6/jx2WY3dXuwkSOe3SKLjLfe69Maa6atOVhPe+WNJr6/iLbexZrPaBw8W
         KUSViFvBdn7u0l5f7WZJ5Pz77ncT13vw+pa0c94IDYfitIUKDNCZldo6tJio71oXCyS0
         3jlg==
X-Gm-Message-State: AOAM531iPlMzwiHOUPQlKRZv9hz9iQg0qT95FL1gDnR5b0sclCD22TX8
	5o7QoeHDVawkAVje1QWzYj0=
X-Google-Smtp-Source: ABdhPJxOL5ssDqK6O1p8eVxpKApYbD6ADGF501iTVvuVheyk8zfuNyqDj0aQ659ZRRge7wkX/FRy0g==
X-Received: by 2002:a67:5ec4:: with SMTP id s187mr5046025vsb.3.1606765317435;
        Mon, 30 Nov 2020 11:41:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2d8c:: with SMTP id t134ls1617349vst.0.gmail; Mon, 30
 Nov 2020 11:41:57 -0800 (PST)
X-Received: by 2002:a67:cd18:: with SMTP id u24mr13604940vsl.23.1606765316922;
        Mon, 30 Nov 2020 11:41:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606765316; cv=none;
        d=google.com; s=arc-20160816;
        b=oL3Gp7AidHlUi/jGFuJk17kfPSYQ5nGxIjAVv7+HGbvzXkbi+IW32m5TpRDe35sZxC
         pJcUp0spNqMtQme17EhPy2CCIC0nmYDrFfDZg8oi57yALolz99nvczkq7xJeDlA7ZV06
         AZiDvQwHi/zLzTGEu6HbvvfEJx3LAMXdQH0t6pBlaX+b6MuI7HoWaEUxYWtUI5Ll71iI
         j8hFZU+wdhBPjav1vWBMiymv3aYkhoBhCQDjmR/hsD/DP1+8OOiEDYhGP7akpGVU2Nh7
         yBgPFRh6u4VYWyphg0WH6KN4GnGrWfbiXQgAvfY4Ksbs5lMpl+OoJX2M5hxbfU9qhQ4h
         VbQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/QyiR/Z1eySLQbKTpkarlWFnvYkO7E/g/k3CIchOroA=;
        b=LhNE69cCXw35AAU43caC0iNigKAtARJ17vhD0o0gsaAGnOoh35boChDDWzXygvEtV/
         aw3Yn6RM3JJm4bHEH1Tq5Hhlp0bWGdckv+Y28RR+l3HRs0KcO0ir4Bgqoyb82+ExSWQ8
         IUuZiU00eyHfsw5+8ZOLpNnVYVJEM9NfF2SqBS/6GAS5zXTgat+G0OpFBR8+qjtcq2IY
         eizJvwQE9SdjgCYuXPnjVsUtJnuhf2qqpk/8anpmtNSFa1GQVs3aceT7YZ98iv+qr6GN
         8h/PncmY5+vPbbc+q6aj2C6kNfNFZtC/dON+T83UjOJNGVcP/HTBAzT6hts6MMxfv3oG
         YKYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O/qkP0My";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id p17si1385013vki.0.2020.11.30.11.41.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 11:41:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id v1so227202pjr.2
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 11:41:56 -0800 (PST)
X-Received: by 2002:a17:90a:2e8c:: with SMTP id r12mr436786pjd.101.1606765314138;
 Mon, 30 Nov 2020 11:41:54 -0800 (PST)
MIME-Version: 1.0
References: <5fc5476c.1c69fb81.43fd4.49d0@mx.google.com>
In-Reply-To: <5fc5476c.1c69fb81.43fd4.49d0@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 11:41:42 -0800
Message-ID: <CAKwvOdnuaP6-tpsWiVzGLvNXHOsZxAgnYr+UjUArsU6RGWuLEQ@mail.gmail.com>
Subject: Re: next/master build: 229 builds: 13 failed, 216 passed, 63 errors,
 131 warnings (next-20201130)
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci.org bot" <bot@kernelci.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="O/qkP0My";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036
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

Nice, we got our email reports back!  Looks like we have some cleanup
to do with arm32+lld, though I think those all might be addressed by:
https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9025/1

Nathan's patches for orphan section warnings from lld 10 must have
been merged up by Kees.  Now to fix up the rest of these warnings.

On Mon, Nov 30, 2020 at 11:26 AM kernelci.org bot <bot@kernelci.org> wrote:
>
> next/master build: 229 builds: 13 failed, 216 passed, 63 errors, 131 warn=
ings (next-20201130)
>
> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/=
next-20201130/
>
> Tree: next
> Branch: master
> Git Describe: next-20201130
> Git Commit: c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.=
git
> Built: 7 unique architectures
>
> Build Failures Detected:
>
> arm64:
>     allmodconfig: (clang-10) FAIL
>     defconfig: (clang-10) FAIL
>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy: (clang-10) FAIL
>     allmodconfig: (clang-11) FAIL
>     allmodconfig: (gcc-8) FAIL
>
> arm:
>     allmodconfig: (clang-10) FAIL
>     aspeed_g5_defconfig: (clang-10) FAIL
>     allmodconfig: (clang-11) FAIL
>     allmodconfig: (gcc-8) FAIL
>     milbeaut_m10v_defconfig: (gcc-8) FAIL
>     mini2440_defconfig: (gcc-8) FAIL
>     s3c2410_defconfig: (gcc-8) FAIL
>
> x86_64:
>     allmodconfig: (gcc-8) FAIL
>
> Errors and Warnings Detected:
>
> arc:
>
> arm64:
>     allmodconfig (gcc-8): 1 error, 1 warning
>     allmodconfig (clang-10): 1 error, 11 warnings
>     allmodconfig (clang-11): 1 error, 11 warnings
>     defconfig (gcc-8): 1 warning
>     defconfig (clang-10): 1 error, 5 warnings
>     defconfig (clang-11): 6 warnings
>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 error, 5 warnings
>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 1 warning
>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-11): 6 warnings
>     defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
>     defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 1 warning
>
> arm:
>     allmodconfig (clang-11): 21 errors
>     allmodconfig (gcc-8): 1 error
>     allmodconfig (clang-10): 20 errors, 19 warnings
>     aspeed_g5_defconfig (clang-10): 13 errors
>     axm55xx_defconfig (gcc-8): 1 warning
>     exynos_defconfig (gcc-8): 1 warning
>     keystone_defconfig (gcc-8): 1 warning
>     mini2440_defconfig (gcc-8): 1 error
>     mmp2_defconfig (gcc-8): 3 warnings
>     multi_v7_defconfig (gcc-8): 4 warnings
>     multi_v7_defconfig (clang-11): 5 warnings
>     multi_v7_defconfig (clang-10): 5 warnings
>     multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 4 warnings
>     multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 5 warn=
ings
>     multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 4 warnings
>     mvebu_v7_defconfig (gcc-8): 1 warning
>     omap1_defconfig (gcc-8): 2 warnings
>     pxa168_defconfig (gcc-8): 3 warnings
>     pxa910_defconfig (gcc-8): 3 warnings
>     s3c2410_defconfig (gcc-8): 1 error
>     tegra_defconfig (gcc-8): 1 warning
>
> i386:
>
> mips:
>     loongson3_defconfig (gcc-8): 1 warning
>     malta_qemu_32r6_defconfig (gcc-8): 1 warning
>     maltaup_xpa_defconfig (gcc-8): 1 warning
>     nlm_xlr_defconfig (gcc-8): 1 warning
>     rm200_defconfig (gcc-8): 1 warning
>     xway_defconfig (gcc-8): 2 warnings
>
> riscv:
>     defconfig+CONFIG_EFI=3Dn (clang-11): 1 warning
>     rv32_defconfig (gcc-8): 6 warnings
>
> x86_64:
>     allmodconfig (gcc-8): 1 error, 1 warning
>     tinyconfig (gcc-8): 1 warning
>     x86_64_defconfig (clang-10): 2 warnings
>     x86_64_defconfig (clang-11): 2 warnings
>
> Errors summary:
>
>     3    ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.k=
o] undefined!
>     2    ld.lld: error: unknown argument '--be8'
>     2    ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside t=
he section
>     2    ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outs=
ide the section
>     2    ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outs=
ide the section
>     2    ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset=
 is outside the section
>     2    ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is out=
side the section
>     2    ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is ou=
tside the section
>     2    ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is o=
utside the section
>     2    ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offse=
t is outside the section
>     2    ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset =
is outside the section
>     2    ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset=
 is outside the section
>     2    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] unde=
fined!
>     1    ld.lld: error: init/version.o:(__ksymtab_strings): offset is out=
side the section
>     1    ld.lld: error: init/version.o:(.rodata.str1.1): offset is outsid=
e the section
>     1    ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings):=
 offset is outside the section
>     1    ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): of=
fset is outside the section
>     1    ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): offs=
et is outside the section
>     1    ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offset=
 is outside the section
>     1    ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset is=
 outside the section
>     1    ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset i=
s outside the section
>     1    ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is o=
utside the section
>     1    ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offset=
 is outside the section
>     1    ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings): o=
ffset is outside the section
>     1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings): o=
ffset is outside the section
>     1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): offs=
et is outside the section
>     1    ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offset=
 is outside the section
>     1    ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): offse=
t is outside the section
>     1    ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): offse=
t is outside the section
>     1    ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): of=
fset is outside the section
>     1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab_s=
trings): offset is outside the section
>     1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.str=
1.1): offset is outside the section
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): relo=
cation R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): relo=
cation R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): relo=
cation R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): relo=
cation R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): relo=
cation R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): relo=
cation R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): relo=
cation R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): relo=
cation R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): relo=
cation R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): relo=
cation R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): relo=
cation R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): relo=
cation R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 107374=
1823]
>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): relo=
cation R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 107374=
1823]
>     1    arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mtd/=
nand_ecc.h: No such file or directory
>     1    arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/nand=
_ecc.h: No such file or directory
>     1    ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128.k=
o] undefined!
>     1    ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=98;=
=E2=80=99 before =E2=80=98void=E2=80=99
>
> Warnings summary:
>
>     19   ld.lld: warning: lld uses blx instruction, no object with archit=
ecture supporting feature detected
>     18   1 warning generated.
>     12   drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=
=98ctx=E2=80=99 [-Wunused-variable]
>     9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridg=
e): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridg=
e): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     9    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): =
Failed prerequisite 'spi_bus_bridge'
>     8    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [=
-Wunused-variable]
>     6    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acke=
d' is used uninitialized whenever 'if' condition is false [-Wsometimes-unin=
itialized]
>     6    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the va=
riable 'acked' to silence this warning
>     5    lib/cpumask.c:222:17: warning: cast from pointer to integer of d=
ifferent size [-Wpointer-to-int-cast]
>     2    fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uniniti=
alized whenever 'if' condition is false [-Wsometimes-uninitialized]
>     2    drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is u=
ninitialized when used here [-Wuninitialized]
>     2    drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variabl=
e 'dev' to silence this warning
>     2    drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_poo=
l_type_count=E2=80=99 defined but not used [-Wunused-function]
>     2    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/m=
odules/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented=
 [-Wcpp]
>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented=
 [-Wcpp]
>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemen=
ted [-Wcpp]
>     1    {standard input}:39: Warning: macro instruction expanded into mu=
ltiple instructions
>     1    fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' to=
 silence this warning
>     1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring retu=
rn value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unu=
sed_result [-Wunused-result]
>     1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring retu=
rn value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unu=
sed_result [-Wunused-result]
>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool=
: eb_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=3D-=
1+0
>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool=
: eb_prefault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-=
1+0
>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool=
: eb_copy_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1=
+0
>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool=
: eb_copy_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D-1=
+0
>     1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
>     1    clang: warning: argument unused during compilation: '-no-pie' [-=
Wunused-command-line-argument]
>     1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301=
_gpiod_table=E2=80=99 defined but not used [-Wunused-variable]
>     1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98=
ams_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
>     1    12: note: initialize the variable 'err' to silence this warning
>     1    .config:1181:warning: override: UNWINDER_GUESS changes choice st=
ate
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> Detailed per-defconfig build reports:
>
> -------------------------------------------------------------------------=
-------
> 32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm, clang-11) =E2=80=94 FAIL, 21 errors, 0 warnings, 0 sec=
tion mismatches
>
> Errors:
>     ld.lld: error: unknown argument '--be8'
>     ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.str1.1):=
 offset is outside the section
>     ld.lld: error: init/version.o:(.rodata.str1.1): offset is outside the=
 section
>     ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is o=
utside the section
>     ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is o=
utside the section
>     ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): offset is =
outside the section
>     ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside t=
he section
>     ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): offset is=
 outside the section
>     ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is ou=
tside the section
>     ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offset is o=
utside the section
>     ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outside=
 the section
>     ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the se=
ction
>     ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): offset is =
outside the section
>     ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is outsid=
e the section
>     ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside t=
he section
>     ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): offset =
is outside the section
>     ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset is outs=
ide the section
>     ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outsid=
e the section
>     ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset is =
outside the section
>     ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): offset is=
 outside the section
>     ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outside =
the section
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section =
mismatches
>
> Errors:
>     ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=98;=E2=
=80=99 before =E2=80=98void=E2=80=99
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches
>
> Errors:
>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] un=
defined!
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (x86_64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128.ko] un=
defined!
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm, clang-10) =E2=80=94 FAIL, 20 errors, 19 warnings, 0 se=
ction mismatches
>
> Errors:
>     ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab_string=
s): offset is outside the section
>     ld.lld: error: unknown argument '--be8'
>     ld.lld: error: init/version.o:(__ksymtab_strings): offset is outside =
the section
>     ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is o=
utside the section
>     ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is o=
utside the section
>     ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings): offs=
et is outside the section
>     ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside t=
he section
>     ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): offset =
is outside the section
>     ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings): offset=
 is outside the section
>     ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the se=
ction
>     ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is ou=
tside the section
>     ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset is out=
side the section
>     ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outside=
 the section
>     ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings): offset=
 is outside the section
>     ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside t=
he section
>     ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offset is o=
utside the section
>     ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset is =
outside the section
>     ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outsid=
e the section
>     ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offset is o=
utside the section
>     ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outside =
the section
>
> Warnings:
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>     ld.lld: warning: lld uses blx instruction, no object with architectur=
e supporting feature detected
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 11 warnings, 0 se=
ction mismatches
>
> Errors:
>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] un=
defined!
>
> Warnings:
>     fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitialize=
d whenever 'if' condition is false [-Wsometimes-uninitialized]
>     12: note: initialize the variable 'err' to silence this warning
>     1 warning generated.
>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is=
 used uninitialized whenever 'if' condition is false [-Wsometimes-uninitial=
ized]
>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variabl=
e 'acked' to silence this warning
>     1 warning generated.
>     drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is uninit=
ialized when used here [-Wuninitialized]
>     drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable 'de=
v' to silence this warning
>     1 warning generated.
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, clang-11) =E2=80=94 FAIL, 1 error, 11 warnings, 0 se=
ction mismatches
>
> Errors:
>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] un=
defined!
>
> Warnings:
>     fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitialize=
d whenever 'if' condition is false [-Wsometimes-uninitialized]
>     fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' to sile=
nce this warning
>     1 warning generated.
>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is=
 used uninitialized whenever 'if' condition is false [-Wsometimes-uninitial=
ized]
>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variabl=
e 'acked' to silence this warning
>     1 warning generated.
>     drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is uninit=
ialized when used here [-Wuninitialized]
>     drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable 'de=
v' to silence this warning
>     1 warning generated.
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (riscv, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> aspeed_g5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 13 errors, 0 warnings=
, 0 section mismatches
>
> Errors:
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): relocatio=
n R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): relocatio=
n R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): relocatio=
n R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): relocatio=
n R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): relocatio=
n R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): relocatio=
n R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): relocatio=
n R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): relocatio=
n R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): relocatio=
n R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): relocatio=
n R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): relocatio=
n R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): relocatio=
n R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 1073741823]
>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): relocatio=
n R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 1073741823]
>
> -------------------------------------------------------------------------=
-------
> assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     lib/cpumask.c:222:17: warning: cast from pointer to integer of differ=
ent size [-Wpointer-to-int-cast]
>
> -------------------------------------------------------------------------=
-------
> axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 5 warnings, 0 sectio=
n mismatches
>
> Errors:
>     ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined=
!
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is=
 used uninitialized whenever 'if' condition is false [-Wsometimes-uninitial=
ized]
>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variabl=
e 'acked' to silence this warning
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 6 warnings, 0 secti=
on mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is=
 used uninitialized whenever 'if' condition is false [-Wsometimes-uninitial=
ized]
>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variabl=
e 'acked' to silence this warning
>     1 warning generated.
>     aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/module=
s/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 FAIL, 1 =
error, 5 warnings, 0 section mismatches
>
> Errors:
>     ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined=
!
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is=
 used uninitialized whenever 'if' condition is false [-Wsometimes-uninitial=
ized]
>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variabl=
e 'acked' to silence this warning
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 err=
ors, 1 warning, 0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-11) =E2=80=94 PASS, 0 =
errors, 6 warnings, 0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is=
 used uninitialized whenever 'if' condition is false [-Wsometimes-uninitial=
ized]
>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variabl=
e 'acked' to silence this warning
>     1 warning generated.
>     aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/module=
s/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 1 warning, 0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_EFI=3Dn (riscv, clang-11) =E2=80=94 PASS, 0 errors, 1 wa=
rning, 0 section mismatches
>
> Warnings:
>     clang: warning: argument unused during compilation: '-no-pie' [-Wunus=
ed-command-line-argument]
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 1 warning, 0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     lib/cpumask.c:222:17: warning: cast from pointer to integer of differ=
ent size [-Wpointer-to-int-cast]
>
> -------------------------------------------------------------------------=
-------
> lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_typ=
e_count=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches
>
> Warnings:
>     {standard input}:39: Warning: macro instruction expanded into multipl=
e instructions
>
> -------------------------------------------------------------------------=
-------
> maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>
> Warnings:
>     lib/cpumask.c:222:17: warning: cast from pointer to integer of differ=
ent size [-Wpointer-to-int-cast]
>
> -------------------------------------------------------------------------=
-------
> milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings=
, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> mini2440_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 se=
ction mismatches
>
> Errors:
>     arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mtd/nand_=
ecc.h: No such file or directory
>
> -------------------------------------------------------------------------=
-------
> mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches
>
> Warnings:
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 5 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 5 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunu=
sed-variable]
>     1 warning generated.
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS,=
 0 errors, 4 warnings, 0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 5 warnings, 0 section mismatches
>
> Warnings:
>     lib/cpumask.c:222:17: warning: cast from pointer to integer of differ=
ent size [-Wpointer-to-int-cast]
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, =
4 warnings, 0 section mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     lib/cpumask.c:222:17: warning: cast from pointer to integer of differ=
ent size [-Wpointer-to-int-cast]
>
> -------------------------------------------------------------------------=
-------
> nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gpio=
d_table=E2=80=99 defined but not used [-Wunused-variable]
>     arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams_d=
elta_camera_power=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /=
soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Faile=
d prerequisite 'spi_bus_bridge'
>
> -------------------------------------------------------------------------=
-------
> pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/block/paride/bpck.c:32: warning: "PC" redefined
>
> -------------------------------------------------------------------------=
-------
> rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> s3c2410_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sec=
tion mismatches
>
> Errors:
>     arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/nand_ecc.=
h: No such file or directory
>
> -------------------------------------------------------------------------=
-------
> s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_typ=
e_count=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     .config:1181:warning: override: UNWINDER_GUESS changes choice state
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches
>
> -------------------------------------------------------------------------=
-------
> trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches
>
> Warnings:
>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_=
prefault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_=
copy_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches
>
> Warnings:
>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_=
prefault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_=
copy_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 wa=
rnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return va=
lue of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_r=
esult [-Wunused-result]
>     drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return va=
lue of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_r=
esult [-Wunused-result]
>
> -------------------------------------------------------------------------=
-------
> zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> ---
> For more info write to <info@kernelci.org>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/5fc5476c.1c69fb81.43fd4.49d0%40mx.google.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnuaP6-tpsWiVzGLvNXHOsZxAgnYr%2BUjUArsU6RGWuLEQ%40m=
ail.gmail.com.
