Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4PUTP2AKGQESUZ2SFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D4919D2C9
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 10:57:23 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 60sf5991532otv.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 01:57:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585904242; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqBqU68TZe3fUV5QSeLaX9qwSC8Ox/IuzTs3/D9p0CH0hkcKkFe2Zpi9UQwpj1TA7+
         2rJvWMxLDjNoAucAElxcHJIUvcVcFOJsxyTim5y0Bvv6DBzRauTJTZjccyrEvV0RCC7M
         sSUYUon0WBcHUseWSoXR8j9c0bP3GLN8jTsl5Xtokh7DQmKjhTXL5pbKHq7/8MQtmSYe
         8PVsKmo8RAkfoYF0raVlFQsTTxv4v4IPBz0x47l2mP+0wi9CJlBVpmOtRluC3c0pTyIF
         BubzT0sRp9wZQcCZD9EM7E+qFNdmdxaLgFw/nJ8qNNKC+17WnyG7ZK/RmVsQxtVjiSjO
         LbVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Xv139LcJXXABcL/1OvjPb5poNf694xGcX4PPRCL3SKs=;
        b=MKqOp2UkE5DEvOM5qiAML3grPn1A43XFwnKOF21A3YuzsJh2HM+evieJWQGowwUUTh
         8WL2FyKh97yPY+uW8Uj3edaeUHiZY7Vr0hOND4EP57a9FTRv+2BA2TPH+VLvh4J6JGnt
         LvysY0LGArhlYihJsocNTLnXhePUq7LzdL9d5QO+prUVuRt8mojU1Y/1gijHSoiJV2y3
         AEHd2ZmZR9v6UHMiPkf29or2v6dKc7FrGhGGEsQi0Ji7bf8rjf52yZYL620E5kMNSHCK
         7DIdf8rdFbk71QddOJGbLIAdBK1rjyYLcyuMQN2yuK3awFCAFDuuLLfEFXlysSQ6xkRm
         KEBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XhpBRE/w";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xv139LcJXXABcL/1OvjPb5poNf694xGcX4PPRCL3SKs=;
        b=HOONx0HM9lqlMg7JL74FA4n3u04KBZiCQoEIUWXJl8KTw0R6V3D5pVTriH9TpE2W1Q
         a92OiKCTnqHiHndL44aTLEZBv/QKTIRhSQI7ZLQn9hReqJ8yi1DtZRx/iQMNEP4UFQKW
         wV+ZqpVncQM1CmujJp8oMi3GzdrRJwv2/ph3dKdJi96bKIDR7e20gS7zsHrdzJhSYIq8
         9AbI48R7bPa1D9jGbghQQQSi2Udrzp/jBqoWwLP19OfZdkpirN67v3SsHvTAGrO4SUzf
         qpJDoFxDD8O3wlF63f5Br1lwOsOYsNcGX6i8O0ihib827kCBVAjzSoABIDDW9rB6pHv+
         N/+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xv139LcJXXABcL/1OvjPb5poNf694xGcX4PPRCL3SKs=;
        b=SCmO1886CwHwkhlO0NO3iHdon78iHNOv7vbJwhuXFjR5LZTA2zpwzdZfkWNQ9XDLLD
         K+f3h87Ycp2R2G/fKrBGII2DGYWHtfEaocpE9zd1CU2h03rI8bhcpIlsqMuqy4yfB8Mv
         JBUFJLAOIXxuT4d0UD55CmkHDKO2nG+3NSB6yDZQgZuc8aD7B48ANp3UYdB96mAcRs2i
         DkCN7+Y8K/ajG6rNvYJvljIJ/iGUbRgZ6MOOS1t26y0GS7FIVKcnOZDXlN4VcJ5skqm2
         1n4fzJ2NMbTbnOCdWKzRGUkscbQNLskSxarv0LILB1rntLt63qFr1TCjVXQEoSvfDKZ0
         sGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xv139LcJXXABcL/1OvjPb5poNf694xGcX4PPRCL3SKs=;
        b=UARrtySkeGwmI5rVjcQFbDU1bwLDtY7BozPUELmjt5pU0MuhSOn6hgTypD1UXIKO5+
         pcXZxpH6JUULUUfuzsUe0ISD4/Tmv6mPU6i6XSDk1qqQDwN18n7Bg5zCkJAYAcnPzohm
         wqLtAf+viPQpxlOdqibVmbOtWJWZ2Ugp6siHr+ywRn7Ot30EM4us2p+mb1a69/N1z6Ai
         6hY/4OrVjxWjAhh4CyWrrO9BUUje1Dz4JTZkyCYlGf1yFOxQuTemFha+2CYgRdq00GeO
         uk1JJGh/jAXeYciup3Rd4D/Wb20PXBW7UumEpLCx4DMqsnuGmJYDZrFH7Dp5LpIvlJYy
         Mu5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puban0DVwW/ApMEflhHm5rhReGXUMo1zgXt4wDdQJirxc8qR8kvd
	pgwcpJM0REwc5P4fWaM11Zw=
X-Google-Smtp-Source: APiQypICTus56aQHcl6vWLHxzpKXKxcF5sXidnII0tFC16a3i6YBTUKlrH9AS3vgegSRO3w4+AIwFA==
X-Received: by 2002:a4a:9190:: with SMTP id d16mr5975007ooh.38.1585904241732;
        Fri, 03 Apr 2020 01:57:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls2739091otm.4.gmail; Fri, 03 Apr
 2020 01:57:21 -0700 (PDT)
X-Received: by 2002:a9d:4802:: with SMTP id c2mr5773251otf.78.1585904241338;
        Fri, 03 Apr 2020 01:57:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585904241; cv=none;
        d=google.com; s=arc-20160816;
        b=u8GvvHEdqSq9szGWGwD/KPFTvqQYAWxk5GxC8hwj0vTKTEHaH9l9Ul2m3F7pN9L1Wy
         H0P5/zbweCpVFIKYoQ3KfbREsUb8aqREnocscRhqEz2mONVfd2rcKIfDouiW3Am3HWol
         rv1I3IlYBYakiK61g9poIX7LFa25NdsIDrvkE/p4lM4bm7aLOy06mim1GY6W1aRybLVE
         v8MYZr3i/54+KoGH7jZaF58RXvuP5CTUfFetJ1RnIJUabx0+7GwOm35zfq2pqp5eWVOd
         PN8sRnEHjJCh0fiLMmZMTi5xoxKEPNvMwklmwKNTkFSx2iyTjFGHJj20qmai8dIii92+
         3vew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C4Cc3e3DiPb3eBwNbjf2uE1eQf9O0o8a3T9Uq54vf3c=;
        b=wxKwtr8ZNP8CSNFR6iRpS4lMFhTfpKGphKuXzJe5W4y5Pj+HRFhBoJP0+Mlhw1sI6A
         wY82x2b8ocQP32O54y3T44drvjgwvGp9dtiXBnc38tvbyG1S4LR9oZT3h7hpFCxngouZ
         HIqE2QcgVUNziF2uPFEjKjz1TB2KimXlEKRyZVEEBTq1yeIq04JpMqibyGyzUSbcD1Ps
         xUdM55DC9CO23HQKwmIsVtk5K8oZY/ntNJMVS/6juoIBwXtXeXUZyDLeLEeDE8eaJV7l
         W05rVEXB2FFWDTc2sbtx8DicYqD+TGkJ75XJOhAUy6GbSVbH+r0D9gWhxkp+mgGtAM9C
         1XbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XhpBRE/w";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id d188si622561oig.0.2020.04.03.01.57.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 01:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id v134so5442045oie.11
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 01:57:21 -0700 (PDT)
X-Received: by 2002:aca:4e47:: with SMTP id c68mr2318714oib.16.1585904240942;
        Fri, 03 Apr 2020 01:57:20 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m20sm1966298otj.37.2020.04.03.01.57.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Apr 2020 01:57:20 -0700 (PDT)
Date: Fri, 3 Apr 2020 01:57:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Jonathan Corbet <corbet@lwn.net>,
	Michal Marek <michal.lkml@markovi.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to
 Clang/LLVM
Message-ID: <20200403085719.GA9282@ubuntu-m2-xlarge-x86>
References: <20200403051709.22407-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200403051709.22407-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="XhpBRE/w";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Masahiro,

On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
> As Documentation/kbuild/llvm.rst implies, building the kernel with a
> full set of LLVM tools gets very verbose and unwieldy.
> 
> Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> GCC and Binutils. You can pass LLVM=1 from the command line or as an
> environment variable. Then, Kbuild will use LLVM toolchains in your
> PATH environment.
> 
> Please note LLVM=1 does not turn on the LLVM integrated assembler.
> You need to explicitly pass AS=clang to use it. When the upstream
> kernel is ready for the integrated assembler, I think we can make
> it default.

I agree this should be the default but I think it should probably be
called out somewhere in the documentation as well since users might not
expect to have to have a cross assembler installed.

> We discussed what we need, and we agreed to go with a simple boolean
> switch (https://lkml.org/lkml/2020/3/28/494).
> 
> Some items in the discussion:
> 
> - LLVM_DIR
> 
>   When multiple versions of LLVM are installed, I just thought supporting
>   LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
> 
>   CC      = $(LLVM_DIR)clang
>   LD      = $(LLVM_DIR)ld.lld
>     ...
> 
>   However, we can handle this by modifying PATH. So, we decided to not do
>   this.
> 
> - LLVM_SUFFIX
> 
>   Some distributions (e.g. Debian) package specific versions of LLVM with
>   naming conventions that use the version as a suffix.
> 
>   CC      = clang$(LLVM_SUFFIX)
>   LD      = ld.lld(LLVM_SUFFIX)
>     ...
> 
>   will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
>   but the suffixed versions in /usr/bin/ are symlinks to binaries in
>   /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
> 
> - HOSTCC, HOSTCXX, etc.
> 
>   We can switch the host compilers in the same way:
> 
>   ifneq ($(LLVM),)
>   HOSTCC       = clang
>   HOSTCXX      = clang++
>   else
>   HOSTCC       = gcc
>   HOSTCXX      = g++
>   endif

I would personally like to see this but I do not have the strongest
opinion.

>   This may the right thing to do, but I could not make up my mind.
>   Because we do not frequently switch the host compiler, a counter
>   solution I had in my mind was to leave it to the default of the
>   system.
> 
>   HOSTCC       = cc
>   HOSTCXX      = c++
> 
>   Many distributions support update-alternatives to switch the default
>   to GCC, Clang, or whatever, but reviewers were opposed to this
>   approach. So, this commit does not touch the host tools.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  Documentation/kbuild/kbuild.rst |  5 +++++
>  Documentation/kbuild/llvm.rst   |  5 +++++
>  Makefile                        | 20 ++++++++++++++++----
>  3 files changed, 26 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> index 510f38d7e78a..2d1fc03d346e 100644
> --- a/Documentation/kbuild/kbuild.rst
> +++ b/Documentation/kbuild/kbuild.rst
> @@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
>  These two variables allow to override the user@host string displayed during
>  boot and in /proc/version. The default value is the output of the commands
>  whoami and host, respectively.
> +
> +LLVM
> +----
> +If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
> +of GCC and GNU binutils to build the kernel.
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index d6c79eb4e23e..4602369f6a4f 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -55,6 +55,11 @@ additional parameters to `make`.
>  	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
>  	  HOSTLD=ld.lld
>  
> +You can use a single switch `LLVM=1` to use LLVM utilities by default (except
> +for building host programs).
> +
> +	make LLVM=1 HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> +
>  Getting Help
>  ------------
>  
> diff --git a/Makefile b/Makefile
> index c91342953d9e..6db89ecdd942 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -409,16 +409,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
>  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>  
>  # Make variables (CC, etc...)
> -LD		= $(CROSS_COMPILE)ld
> -CC		= $(CROSS_COMPILE)gcc
>  CPP		= $(CC) -E
> +ifneq ($(LLVM),)
> +CC		= clang
> +LD		= ld.lld
> +AR		= llvm-ar
> +NM		= llvm-nm
> +OBJCOPY		= llvm-objcopy
> +OBJDUMP		= llvm-objdump
> +READELF		= llvm-readelf
> +OBJSIZE		= llvm-size
> +STRIP		= llvm-strip
> +else
> +CC		= $(CROSS_COMPILE)gcc
> +LD		= $(CROSS_COMPILE)ld
>  AR		= $(CROSS_COMPILE)ar
>  NM		= $(CROSS_COMPILE)nm
> -STRIP		= $(CROSS_COMPILE)strip
>  OBJCOPY		= $(CROSS_COMPILE)objcopy
>  OBJDUMP		= $(CROSS_COMPILE)objdump
> -OBJSIZE		= $(CROSS_COMPILE)size
>  READELF		= $(CROSS_COMPILE)readelf
> +OBJSIZE		= $(CROSS_COMPILE)size
> +STRIP		= $(CROSS_COMPILE)strip
> +endif
>  PAHOLE		= pahole
>  LEX		= flex
>  YACC		= bison
> -- 
> 2.17.1
> 

I have verified that the variables get their correct value with LLVM=1
and that they are still overridable.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403085719.GA9282%40ubuntu-m2-xlarge-x86.
