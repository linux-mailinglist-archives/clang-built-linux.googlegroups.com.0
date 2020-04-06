Return-Path: <clang-built-linux+bncBDMYPB44VAFRB35BVT2AKGQEATY5VEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE5E19F47D
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 13:22:23 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l5sf5133015lfg.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 04:22:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586172143; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwIQ1x+MFK9rIDNe6CoyaX3tQYFkKZFczV4qLUvnpt17Lbtu7BxXTiLpXI8uUMzc2f
         OplwuuPnLg+QNT78RjRPtfdrRxlUtSleWqcPxmw1Vl+vvtk74by6qQOby1pTfhACFZcE
         i+oKcUx+o9WK+cxNoSoIVrm/zFKDRmBiuG5db5uc0gVgsaIXmVgw64EI3I9AVNqD+EtR
         FNm+j6OGRAXB6EucA/zZJhbtzFjVGx2tsPQOFwGPsqHd2U4avwQKnq7hSx9hyjmosk/G
         PWpk2/RdwfZj79RjiUvxCvDC8UIwLIGr3iFNJSs3qRXtfoyoeWvHBG+yn00rZ4txCG8N
         +ktA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qwT5jIeUaERwTL2Lnv+8AJCRk9rQq3c63g51p38f8rQ=;
        b=Y994569nnfN5DZ/AQapv655snKnfRAHpUWnkPqKKg1IICckCOXL7iXDClZcgtDlwFk
         wrgL1Z1Dnm/RYkd//OaYWOWVZuBuhSYDpnuMKVlZ9PqTDdvTh28zFMurzS2aia96Im6/
         mCSgXQH13cp7X/QyCbfwhnuz/4lhH7ogy5s3TNwwH3yYsDcLuWPjbGjrVJvY3Hd+93gt
         Py3EUoxHmfNTFxZ9IsPjH426k4mCWrPC8Ebs1i+k94sQF8z2IBZzoydUscXYxF/0PKe/
         EXqU32jtctBpXgE3giRX70dXgxHDnsKh8HZzaxjnJuvbT7908Hlny4VcHf/0Idx41jDz
         px0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J0IJ9s9Z;
       spf=pass (google.com: domain of maennich@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qwT5jIeUaERwTL2Lnv+8AJCRk9rQq3c63g51p38f8rQ=;
        b=AAbtMXBK1W+o6LcmDAuJetyKQYCHg+2PxfeGQ30YCGsSO6nmJvqfxsnsH+UkcmVAex
         zDdo/cetjHdprbfm6OSJ5uW4ykRV1YslV3mZwhf8HKC73OEjcocbQOrwg+rBhDED4Pjy
         ZwkGG0s4kQuZMP98JPVPelEwCsmnWQiV71NPMTJbNWcHOfEsCLg/ceKarBi4gEXXKUoK
         y3s1q0wzb/qMwL95IssbMKHjJiRnuuA3ufcQR5Rvj5Pg8pRiV/G7GblZh+uv+/jR/5Ek
         KWByg6caZ0wBrHVYcGqToI4//JydWWBvM4a33MNfOPGLg1Owj407J1mKE1JGdjJZ+1Ev
         Rqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qwT5jIeUaERwTL2Lnv+8AJCRk9rQq3c63g51p38f8rQ=;
        b=JiRXENRukcCoBKG0toz+OpQhJJOC2v4pf8VeQnxLkh2FFVSkiXz/QuTVy/QhTC8QSk
         2dmvlH6saqEjvA8gsOgVjbiVHrI6vfXlUo9wDemT9o8xdns7vo8txpIwTNAwsji7In1U
         Wu4FWOfFzo07RVt06tHQM7WrOZmk+cDMQrRTNBvCT60gc6ylHZ1cRZwAEk3w5IPBSvDV
         A8rgBu2O5HitLju3Hz4WO8PrgHPU7d6V7r0vNv82NVdZOPkT9vgAHWA1IhFqjoLPfjah
         qxTX6102Ntlgsd5cR64Yqoo+XDefLOH9QWUYS+C2Q0YUd9t+buybc+QwuCizGDhSGWYL
         6RWg==
X-Gm-Message-State: AGi0PubpYls3MBcm+kF/yiatXVlDH7yufriIG3ny+PKk1aNZLKe7C2Va
	HkPOlEcxFDubcXRoEkGy65g=
X-Google-Smtp-Source: APiQypLL6p4o6A+6NIibAd5b2/NTeN6D9LJNnLh+KSEQCxtFI/wTnVRIH3CiZYBveVE9tA/xwdW1xg==
X-Received: by 2002:a19:f518:: with SMTP id j24mr13206385lfb.205.1586172143161;
        Mon, 06 Apr 2020 04:22:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b706:: with SMTP id j6ls2342518ljo.11.gmail; Mon, 06 Apr
 2020 04:22:22 -0700 (PDT)
X-Received: by 2002:a2e:8e83:: with SMTP id z3mr11875951ljk.239.1586172142566;
        Mon, 06 Apr 2020 04:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586172142; cv=none;
        d=google.com; s=arc-20160816;
        b=iEqWT14X/FoXBy4BZvdmNZxuVSKaqlW6utmc79ecXyTCV7CGMCaMXd3YKL/taHuzDW
         NrJdYkQR+DWUy6c6LuJbZRGzfRmtknxR7ipYt/WCo0b1xcCST4rYUFJ+boRastG2qNRA
         OH6QFrvVwC9O7jYHdkEvPEjHNTvR5DGvCAp9Q9d6LQX8mLccx0q8DRaFjB1BXjJZYB39
         imd1RXWcVhSGTWUm5ylXV+rwJ2nGIrjuK98bYn1Ixn7MgXO/xCyNQDXs7r31WVG3dhR9
         G/P3fm4gFxrulPnP5fdNiM2B3mMKeY0i88tZJQmadAb/bgfh6RwLXrDDl4TrGiYnj02c
         blhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qDK5+uBeH6pLDnaoKYduIBBNRFpH/vDYlc7eibTIZjE=;
        b=Pm7xuCMJjewYQ6o7BWgnb5mNP5BfBR3i7vlGavJ0C8P4nSfOKDjkDqYJKtfID36SAl
         X00Gf3nXCR3r4+7K5zgA1BVfrh/Zx4d4ycqCOgiXPOzhVGeZu9pZs77B0XBN5WLw1/fs
         Vgfn7rtW03HSBpYXmjspkhGUADjGkgNdymMFuvEMCL1ie6BjrhDbLIe7Q898WEnIfSQn
         N7p8B+t52Yzb2A2geWB5nI5zz4rInhrPQHrENxJcip+3pizyQnrj7B239qQpFCocFzJa
         8W1Z+rx4zm87PPSeOz/4fcqHa1j1O8ljLA2Z64e2nIdW3cdgr8qleNVBKi4hErFB0/2L
         KJKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J0IJ9s9Z;
       spf=pass (google.com: domain of maennich@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id s4si1238670ljj.2.2020.04.06.04.22.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 04:22:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id z7so14213667wmk.1
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 04:22:22 -0700 (PDT)
X-Received: by 2002:a1c:2d95:: with SMTP id t143mr22457582wmt.89.1586172141483;
        Mon, 06 Apr 2020 04:22:21 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id y80sm25959365wmc.45.2020.04.06.04.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 04:22:20 -0700 (PDT)
Date: Mon, 6 Apr 2020 13:22:20 +0200
From: "'Matthias Maennich' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Jonathan Corbet <corbet@lwn.net>,
	Michal Marek <michal.lkml@markovi.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to
 Clang/LLVM
Message-ID: <20200406112220.GB126804@google.com>
References: <20200403051709.22407-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200403051709.22407-1-masahiroy@kernel.org>
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J0IJ9s9Z;       spf=pass
 (google.com: domain of maennich@google.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
>As Documentation/kbuild/llvm.rst implies, building the kernel with a
>full set of LLVM tools gets very verbose and unwieldy.
>
>Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
>GCC and Binutils. You can pass LLVM=1 from the command line or as an
>environment variable. Then, Kbuild will use LLVM toolchains in your
>PATH environment.
>
>Please note LLVM=1 does not turn on the LLVM integrated assembler.
>You need to explicitly pass AS=clang to use it. When the upstream
>kernel is ready for the integrated assembler, I think we can make
>it default.
>
>We discussed what we need, and we agreed to go with a simple boolean
>switch (https://lkml.org/lkml/2020/3/28/494).
>
>Some items in the discussion:
>
>- LLVM_DIR
>
>  When multiple versions of LLVM are installed, I just thought supporting
>  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
>
>  CC      = $(LLVM_DIR)clang
>  LD      = $(LLVM_DIR)ld.lld
>    ...
>
>  However, we can handle this by modifying PATH. So, we decided to not do
>  this.
>
>- LLVM_SUFFIX
>
>  Some distributions (e.g. Debian) package specific versions of LLVM with
>  naming conventions that use the version as a suffix.
>
>  CC      = clang$(LLVM_SUFFIX)
>  LD      = ld.lld(LLVM_SUFFIX)
>    ...
>
>  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
>  but the suffixed versions in /usr/bin/ are symlinks to binaries in
>  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
>
>- HOSTCC, HOSTCXX, etc.
>
>  We can switch the host compilers in the same way:
>
>  ifneq ($(LLVM),)
>  HOSTCC       = clang
>  HOSTCXX      = clang++
>  else
>  HOSTCC       = gcc
>  HOSTCXX      = g++
>  endif
>
>  This may the right thing to do, but I could not make up my mind.
>  Because we do not frequently switch the host compiler, a counter
>  solution I had in my mind was to leave it to the default of the
>  system.
>
>  HOSTCC       = cc
>  HOSTCXX      = c++

What about HOSTLD ? I saw recently, that setting HOSTLD=ld.lld is not
yielding the expected result (some tools, like e.g. fixdep still require
an `ld` to be in PATH to be built). I did not find the time to look into
that yet, but I would like to consistently switch to the llvm toolchain
(including linker and possibly more) also for hostprogs.

Cheers,
Matthias

>
>  Many distributions support update-alternatives to switch the default
>  to GCC, Clang, or whatever, but reviewers were opposed to this
>  approach. So, this commit does not touch the host tools.
>
>Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>---
>
> Documentation/kbuild/kbuild.rst |  5 +++++
> Documentation/kbuild/llvm.rst   |  5 +++++
> Makefile                        | 20 ++++++++++++++++----
> 3 files changed, 26 insertions(+), 4 deletions(-)
>
>diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
>index 510f38d7e78a..2d1fc03d346e 100644
>--- a/Documentation/kbuild/kbuild.rst
>+++ b/Documentation/kbuild/kbuild.rst
>@@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
> These two variables allow to override the user@host string displayed during
> boot and in /proc/version. The default value is the output of the commands
> whoami and host, respectively.
>+
>+LLVM
>+----
>+If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
>+of GCC and GNU binutils to build the kernel.
>diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
>index d6c79eb4e23e..4602369f6a4f 100644
>--- a/Documentation/kbuild/llvm.rst
>+++ b/Documentation/kbuild/llvm.rst
>@@ -55,6 +55,11 @@ additional parameters to `make`.
> 	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> 	  HOSTLD=ld.lld
>
>+You can use a single switch `LLVM=1` to use LLVM utilities by default (except
>+for building host programs).
>+
>+	make LLVM=1 HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
>+
> Getting Help
> ------------
>
>diff --git a/Makefile b/Makefile
>index c91342953d9e..6db89ecdd942 100644
>--- a/Makefile
>+++ b/Makefile
>@@ -409,16 +409,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
> KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>
> # Make variables (CC, etc...)
>-LD		= $(CROSS_COMPILE)ld
>-CC		= $(CROSS_COMPILE)gcc
> CPP		= $(CC) -E
>+ifneq ($(LLVM),)
>+CC		= clang
>+LD		= ld.lld
>+AR		= llvm-ar
>+NM		= llvm-nm
>+OBJCOPY		= llvm-objcopy
>+OBJDUMP		= llvm-objdump
>+READELF		= llvm-readelf
>+OBJSIZE		= llvm-size
>+STRIP		= llvm-strip
>+else
>+CC		= $(CROSS_COMPILE)gcc
>+LD		= $(CROSS_COMPILE)ld
> AR		= $(CROSS_COMPILE)ar
> NM		= $(CROSS_COMPILE)nm
>-STRIP		= $(CROSS_COMPILE)strip
> OBJCOPY		= $(CROSS_COMPILE)objcopy
> OBJDUMP		= $(CROSS_COMPILE)objdump
>-OBJSIZE		= $(CROSS_COMPILE)size
> READELF		= $(CROSS_COMPILE)readelf
>+OBJSIZE		= $(CROSS_COMPILE)size
>+STRIP		= $(CROSS_COMPILE)strip
>+endif
> PAHOLE		= pahole
> LEX		= flex
> YACC		= bison
>-- 
>2.17.1
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403051709.22407-1-masahiroy%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406112220.GB126804%40google.com.
