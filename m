Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBHV62AAMGQE44QB6HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F6F3113A1
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:37:09 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id o14sf6264464qtp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:37:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612561028; cv=pass;
        d=google.com; s=arc-20160816;
        b=S08gM+PsX5xx+DZdgyAbWRtBTw282Epbe3NXe6abXbosO6DiJwmcCRXtfitsLagIVv
         5scXz2mKGrxU86IBgaa+hyOUxnr7vLhU0xzA/bZix+rLF2H13K0mWlc9wY6PsMpxgcxm
         7L+zE2TmaM94eIONO6y3h7Is1olqcFKfqHP2yJTg2bjBTblOX9SinDbfFx/zGqV36Pxj
         3e11K+gr8sx4dmKNrWBkw4OKWDRv1ftfLMvqmkjb6LyY+HkGGmtnq7dsV36wwssMchIk
         wQyBTeNNTVeNzzTJ1P45raukeskG5uijYN1oBjrMlDnrd7e2oTwqcD6+vLOhTczjbgdi
         gWdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=urqyQ50vUVoTzYCRTZod+loKN6QJTJ29Q5wGUSZQz70=;
        b=k5BbCUSCDQ7qeAtM23vHmkeotUO98vonxjVp3P1ifQqxpMabKXE863eXOgZqx2Xip4
         9i50ed7EBYo863rDDPWHio/+od49kwFqtMElXEbr8sxnoc0LQEdnFvcXNKybJZnW4rW3
         iwY1gHWAyRFANNLHMx6g7MuwjZJLhHIiDYeoIyuVgWUhAPftuzeOf7W9bjnahXabJnzo
         I068NbBXP8PQoVd8BsFZToLzh7Z1U4qKW2HUXZhlMwQ7M7DYJBT4zgwI2Hd28K2qE3Y5
         C7keLZGMnwu4chNaBoAclPqSNG6I+fBcnPUOTrVQ1hqlIjF9/0YvpoGLW1or7KWbRRcw
         pH9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XmbAcAaE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=urqyQ50vUVoTzYCRTZod+loKN6QJTJ29Q5wGUSZQz70=;
        b=J1XuHMUBUDC69MrkMlEBWvB0LNC5CPZPc+NbYeWCbvi1nXjVlcBX6Ikl1MxISNEL8d
         oK61OrLGNUVOiIGx9wx4VVRN8W53ztQfsAMeMBpQJXAlLY/sk3ohFx5STeFStTwTlBs0
         DvubO/0ifEPHa/+SZnK8onJQM++kW0n002Zg9pFAtIQMWChCxOI1fQTAksNmYkWzb/TM
         NKm5F22L0QAjFCgnTxzzlfwvyNpDidwFgF9wSGcGAHqpHe3a88ehpuieBlIHAaadIadn
         VFmS30Mfnt+mrkp4dZscDrT0/3Zvk6h1ujdhoW/Y5Ak9PwpRNCgG32GPgALo65SMeFV/
         67hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=urqyQ50vUVoTzYCRTZod+loKN6QJTJ29Q5wGUSZQz70=;
        b=BWlSxQAfHEqFLQkzU5+jCulOTwkhdHW3R2oj0Nc8YwmmZEJL9Vh18iDP4pPMFyyrjr
         elxvyZ4OwT3EopZG2W3dw+u9T0V17QrX9yIiB1nFTyip/y9KEPeDBlZI+KG0iI1fan0L
         L/2oF9jRb3aPRUPc2adeX41hhVMfcuH4MZ8IqL0A2Y23RrlfvN3GNOYZ1YKpQIuWhIxf
         PY9jXt/06C233xTXZdWgUcm814ff7HVwHZoszyOowHFeF0lHofKgDDHu+J5wma2pe5Bz
         sSgawvA/1aHAZDSyaFiIJG7C135RGCTnGriiU6Og5fZPzzOpz00y9lqJ3fL6b9K2rUgK
         rjlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XN3og47OM7Y70Md+IFYSpiJJqrNO+hTUqCQHcfJ1oUa3H5i5A
	lC9mCdXMv1ETTtHEo/rsmKU=
X-Google-Smtp-Source: ABdhPJwPvX1lEXHMKLqcj14fJjxo2+9BkUeGquaiDy3GeLzdECzOxjPTa/pCmsT9WbEagOhMQ3ZB0g==
X-Received: by 2002:a37:a10c:: with SMTP id k12mr6560775qke.443.1612561028827;
        Fri, 05 Feb 2021 13:37:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a04:: with SMTP id n4ls3962025qta.5.gmail; Fri, 05 Feb
 2021 13:37:08 -0800 (PST)
X-Received: by 2002:ac8:5cd0:: with SMTP id s16mr6120192qta.333.1612561028450;
        Fri, 05 Feb 2021 13:37:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612561028; cv=none;
        d=google.com; s=arc-20160816;
        b=gdNj5VIHVAdzo3yv1P+jJT/ROQTllomJhTs6cI8BKoB1XL15/W+Rh1SzdA4KMsqxx+
         v+flIe3kdbV6xmEu9ysy0zNsIi2GroH1XYPC8r9M2WWj0QEcyl0boKdL+dRDFCQJiq3p
         +I/oYYHmJcXa2TKqdIaO9Oo5aNxaR0/Csa0af0xzQ9UtyMzDK1XN0ob/8RHTgxTk8zhT
         6VbgN/Ch8VQ2e/7QL/OgXZYoCqvrjNQne9pTR0CRNncrehb+ulaenNzkHJfG6RscWCR/
         lyr+7+zJSeL94AiXHr923N3j65m45CA8LYMuOFCVYtDuX3onMy8zCzQ4vVvYNRH/M6gy
         basw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qjmdEkp2sPREBFeQgKa3cKbrH1p1Frdn6NtuCyXHWvU=;
        b=G8ZBOVcHsv03ljcSF+brlNf1QV2zKFkkQfd22RdjPk8AL4O92NnY8eGieH9T1uOXQC
         n7+isTCvTJuvhlYxWiud+XWFahwfutshpN2JbH+NIOuhYq8bISkWOzpesvS9Va6ZmODJ
         fwNzfw1IJaGrKrwhWVRzkFViukgT3jylJqBewLekjmy2Ul8HRze5VZZk3YeB0NEJPOOh
         0dUHTi73Pwhz7CFv1yTYp5bCv/bzWMJtov3ILmKQduaFaiAkT86Nrgk835Nh1z2paSQ+
         MKXZt1GVYZWTKqXnZqIFz59KogHePaq1K+3JCW316QvcXflw01Kgb2A2fH7HlYa49Ix5
         xs5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XmbAcAaE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q24si664426qtp.5.2021.02.05.13.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:37:08 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E964064FB2;
	Fri,  5 Feb 2021 21:37:06 +0000 (UTC)
Date: Fri, 5 Feb 2021 14:36:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kbuild@vger.kernel.org
Subject: Re: Using GNU AS from a selfmade binutils v2.35.2
Message-ID: <20210205213651.GA16907@Ryzen-5-4500U.localdomain>
References: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XmbAcAaE;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 05, 2021 at 11:56:55AM +0100, Sedat Dilek wrote:
> Hi Masahiro and ClangBuiltLinux folks,
> 
> I am trying to use binaries from GNU/binutils v2.35.2 for my
> Linux-kernel builds.
> 
> Background is I am doing some testing for BTF + pahole with GCC-10 and LLVM-12.

TL;DR: GCC will use the first "as" that is found in your PATH while
clang will:
1. Use the "as" present in the folder that it is installed in.
2. Use the first "as" that is found in your PATH.

To override clang's behavior, you can pass '--prefix=' to it.

GCC:

$ echo | gcc -### -c -x assembler -o /dev/null -
...
 as --64 -o /dev/null -
...

You can prove that this works with a symlink to /bin/false.

$ cd "$(mktemp -d)"

$ ln -s /bin/false as

$ echo | gcc -c -x assembler -o /dev/null -

$ echo ${?}
0

$ echo | PATH=${PWD}:${PATH} gcc -c -x assembler -o /dev/null -

$ echo ${?}
1

As you will notice, PATH has no affect when there is an "as" binary in
the same location as "clang":

$ which clang
/usr/bin/clang

$ which as
/usr/bin/as

$ echo | clang -### -no-integrated-as -c -x assembler -o /dev/null -
...
 "/usr/bin/as" "--64" "-o" "/dev/null" "-"

$ echo | PATH=${PWD}:${PATH} clang -### -no-integrated-as -c -x assembler -o /dev/null -
...
 "/usr/bin/as" "--64" "-o" "/dev/null" "-"

But '--prefix=' does:

$ echo | clang -### --prefix=${PWD} -no-integrated-as -c -x assembler -o /dev/null -
...
 "/tmp/tmp.B8BdCWZJTL/as" "--64" "-o" "/dev/null" "-"

When there is no "as" binary in the same location as "clang", PATH works:

$ echo | /usr/lib/llvm-10/bin/clang -### -no-integrated-as -c -x assembler -o /dev/null -
...
 "/usr/bin/as" "--64" "-o" "/dev/null" "-"

$ echo | PATH=${PWD}:${PATH} /usr/lib/llvm-10/bin/clang -### -no-integrated-as -c -x assembler -o /dev/null -
...
 "/tmp/tmp.B8BdCWZJTL/as" "--64" "-o" "/dev/null" "-"

If you want to use a separate binutils while building the kernel with
clang, you can:

1. Symlink your LLVM and binutils binaries into one folder.
2. Pass '--prefix=' via KCFLAGS:

make KCFLAGS=--prefix=<binutils_bin_folder>

It is entirely possible that '--prefix=' should always be present though:

diff --git a/Makefile b/Makefile
index f5842126e89d..409822f45bfd 100644
--- a/Makefile
+++ b/Makefile
@@ -562,10 +562,10 @@ endif
 ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+endif
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
 GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
-endif
 ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif

Hopefully that helps.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205213651.GA16907%40Ryzen-5-4500U.localdomain.
