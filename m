Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYN4ZT6AKGQELAVTJXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 3305A2976B9
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 20:18:10 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id g1sf2017554iln.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 11:18:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603477089; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z2p/u81ynj2/zi/6hULoSiO1zqEiEyR1uFaqKht2xgpTM7d/JjKL1MNoCxQOabjHgx
         D9mnx0Zy/pWP8Y+DRW0gSo+IK1sqkGSvOlnvJ7zxKI6Y2Cluim+BxZFgoT1UgIPwhghL
         2G+2lBILnoKbnfkm/3Oc4oVZoi7MXkFSomtYP9gAkl8BkvQlaAiq+3tP6nr1+yKndF2T
         SZpQIU0nv4xkGP6n9AUpXaN/BDFaFGjLTUQC/xeoTW5Nd3P2fGVJerruvZFQeSTgMCah
         nJdVSK7XQN7VS0witK4bY/HSVK+lpNw4d4S7KEY+gbdyCNvBp6MXe4EUfAZ2jV9Ofarq
         NfBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=kXfZ4GZl9utn7iNwRxtn6dB3VvewFgUPSelHNoni638=;
        b=hiPmH5TL0z2ClHbrcIJ/x2Aoh2BaAzD0TgPYHfFFh1SFlt73f72d/UqGHn4O/SoWoQ
         Lqi/QWXsA1l5W2KGaEP6gazKVaUy8tW2+M1XpmI46jPH8NAIVX8YX0CSYlF8Bp3CZu/q
         MziBUXuxKzz8W5v4iVAsS5XfzceQKYMGILWW1a0L3PAzlNc0fB22lxFUuVS1isvG5T1p
         kiCMyp2o0EzHyn3CHByNpY8DZz1kqn9qmqZP03h3g0rOuVIMcL/w4bLm7LU6ELq13NSL
         cV1XAfyHrZn2YhodeYlJG04khVabIJpnSkewzg3F+tM3WhK3kgkzoduKZfE1PPxO/GrB
         3K4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M74xl8cY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kXfZ4GZl9utn7iNwRxtn6dB3VvewFgUPSelHNoni638=;
        b=br0YwLjtjw37GTdmYJsKM6cncYhVBtLDQCEF2k/FT0/aVxgQspQKbLYN7cBZY4Jyb8
         Ce6udWkRa8HH2UaJaPg0nr2HR5YGoF6EQz0DAmOwLuB71XBMqIz3WQfPq1ZmM7DliD5W
         U61UXtmT0BNbftLFUtGoPs6vHVaATRKJu5+f2ivxNbAbhCFA3oFsYKTvn8j1jZE3KNuk
         CEWiPyK3hTPCv4k93Bz/y3yNp93lx1afxfswFwNVrt7rJSobld9QEeD13CvWIbnS48tE
         jvoH4R+1qLGHKDKA1gHjILzfdSt9i2JLnmZS6gvkC4Ytji4H4az37NiMDh4G5VJ0CQ2H
         QpJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kXfZ4GZl9utn7iNwRxtn6dB3VvewFgUPSelHNoni638=;
        b=NBqdzl1jxE5fZG6XQ/s/RHSC1RJLzLzZjzM4o/51g4ugnt8kTusL8PeYCLHTUqfMKj
         Edu6ioUjT3phitmQCO14c6EqYiisVmoN9yQrNSUoXR5CFfbPyk4veTmH4OMoz4O8LkcS
         DOhDRFvjFW97ehbmgsuxvFqVniKlvFT7gtvct3jxLWTsn+1MiSfcWyZjxRkWPtk66t26
         Md7NE2xzFcDA6E/T+9ZUeZIxHtjxtRS0PtMbKCvq+L0ZHZEXYgwE389lSF/J1TPLQS2p
         8GuGzq8yhIeXiBXH3NyEHeneKsy9n3dEsPwUJiIk08lEyTMbT2eUEMpm9sv1bz8FbRIh
         a+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kXfZ4GZl9utn7iNwRxtn6dB3VvewFgUPSelHNoni638=;
        b=s3kR2j+cWDw1SxeCLGodzrcSJ5jO5EhASkdZy5f40aElamuSOS0TZrfp51Oj24FPji
         k1Gnv93eLzdkNIE07OzRUZ6uyMlbc7TVRK8RfnfdQXyPs7LbAHU2/UGBfT+9Yi01dTOl
         7MZ3tL1XpH498ZMSP5nDzfXhjLHIMbjPCqem/2WjUrtFKYzN3mYGJW+/e/O5wGSFqsYk
         8vg02QNaG5M9C7uG6efg41Og1OhDW0xHtt7wJf2iVLMaxTxhtVynlZ4XThTdtz319R1a
         /2dQyVyKW50SD6OnoDezp2e9VXGtqnrS6tLJeWDQNTZQedCmr/f5kZrwaCmwtCYuDOJV
         ZyeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532grS96X+9c6Q/Fl2CaNx21DxZJni1+8ZroJNA+P05Nd0r3cduU
	snTxT5lSRob3oABT8yIcrC8=
X-Google-Smtp-Source: ABdhPJyOo2+ViNlvepGPKwPh1gAFBDsbJtx3io27ZxN1b88R5SN89chkExp9Xgtdg3mGvWaAM9atjw==
X-Received: by 2002:a05:6e02:541:: with SMTP id i1mr2441801ils.156.1603477089129;
        Fri, 23 Oct 2020 11:18:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9a87:: with SMTP id c7ls367227iom.6.gmail; Fri, 23 Oct
 2020 11:18:08 -0700 (PDT)
X-Received: by 2002:a5e:930d:: with SMTP id k13mr2598210iom.33.1603477088774;
        Fri, 23 Oct 2020 11:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603477088; cv=none;
        d=google.com; s=arc-20160816;
        b=hILiocKCha3An+lSCFXL4Zn3OUFHBKXbfkOmGNf59mx/3wSTPznycQ7dlBnAW1mDzk
         oYOXOZIth1jwsUloKKT4x3X+xNvSj3b0EJWZKJAIK/CFaqkroi5DrvmcILMMgBuIgQY2
         TnPttGTxqN8VOqPQaZC0gPyUjl6MLMU18CcK5CN2SxTztJIAGqsmMCDWLP+eliyWYcp9
         s1PrwCPDeArKXJD2QPi7YcALY+HT0LTgXcnVyrh+Zn1Pn7c2Geew6zVHGg4izch3yIS3
         G5XPLIFtN4ZnIH9MfdBesELxtDdkIKbMJApush54eI4RtIgsyXQC/mjiUMPQThuaxE7J
         +tzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ApmfhOk09K1c2h42K2OFIKlhksWgTdh0h8R2DYpKkGg=;
        b=0Wb1ZKPDDIM8in5AZF092PkboHR2VjkYF1llS64+TyZI5oDK0mvUyX5+3W1/MRtQLr
         Uan3yXrMchEoSAC/GYXfAJR/+acusEh9/abQjCnamLA74MpWpZBW3phiMFQm5hKBTgwQ
         iMEszU9iPBEiyRKfWwZv7ZzqkkFgK/Eum2aI/vCasmTLeoI1V0fwuW3oXfqr0rrnU/rL
         ItAB4kfDY99ZorxJjlKBtRslzKaPfo6gq2YLze4snK9YihsLTM3HvIfStZ9av46XMw82
         spbviQ9Zm4z44gQonzcdxWomB19f/BL2U+hMlchvaR/qVpLqZ5U6s3PqdqUhgpQudLfb
         5ssg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M74xl8cY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id d25si140106ioz.2.2020.10.23.11.18.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id 188so2017221qkk.12
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 11:18:08 -0700 (PDT)
X-Received: by 2002:a37:2c07:: with SMTP id s7mr3521015qkh.297.1603477088197;
        Fri, 23 Oct 2020 11:18:08 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id z13sm1280146qkl.2.2020.10.23.11.18.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 11:18:07 -0700 (PDT)
Date: Fri, 23 Oct 2020 11:18:05 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vasily Gorbik <gor@linux.ibm.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: remove unused OBJSIZE
Message-ID: <20201023181805.GA3852821@ubuntu-m3-large-x86>
References: <patch.git-ef02981ce9bc.your-ad-here.call-01603453662-ext-3714@work.hours>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <patch.git-ef02981ce9bc.your-ad-here.call-01603453662-ext-3714@work.hours>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M74xl8cY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 23, 2020 at 01:57:32PM +0200, Vasily Gorbik wrote:
> The "size" tool has been solely used by s390 to enforce .bss section usage
> restrictions in early startup code. Since commit 980d5f9ab36b ("s390/boot:
> enable .bss section for compressed kernel") and commit 2e83e0eb85ca
> ("s390: clean .bss before running uncompressed kernel") these restrictions
> have been lifted for the decompressor and uncompressed kernel and the
> size tool is now unused.
> 
> Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!

> ---
>  Documentation/kbuild/llvm.rst | 5 ++---
>  Makefile                      | 4 +---
>  2 files changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index cf3ca236d2cc..21c847890d03 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -57,9 +57,8 @@ to enable them. ::
>  They can be enabled individually. The full list of the parameters: ::
>  
>  	make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> -	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \
> -	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
> -	  HOSTLD=ld.lld
> +	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
> +	  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
>  
>  Currently, the integrated assembler is disabled by default. You can pass
>  ``LLVM_IAS=1`` to enable it.
> diff --git a/Makefile b/Makefile
> index d35a59f98e83..d2123c2c829a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -433,7 +433,6 @@ NM		= llvm-nm
>  OBJCOPY		= llvm-objcopy
>  OBJDUMP		= llvm-objdump
>  READELF		= llvm-readelf
> -OBJSIZE		= llvm-size
>  STRIP		= llvm-strip
>  else
>  CC		= $(CROSS_COMPILE)gcc
> @@ -443,7 +442,6 @@ NM		= $(CROSS_COMPILE)nm
>  OBJCOPY		= $(CROSS_COMPILE)objcopy
>  OBJDUMP		= $(CROSS_COMPILE)objdump
>  READELF		= $(CROSS_COMPILE)readelf
> -OBJSIZE		= $(CROSS_COMPILE)size
>  STRIP		= $(CROSS_COMPILE)strip
>  endif
>  PAHOLE		= pahole
> @@ -509,7 +507,7 @@ KBUILD_LDFLAGS :=
>  CLANG_FLAGS :=
>  
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
> -export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> +export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
>  export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
>  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
> -- 
> 2.25.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201023181805.GA3852821%40ubuntu-m3-large-x86.
