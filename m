Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEMU7WAQMGQEQV2LSDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B5D32B5F5
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 09:34:26 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id i11sf19322635qkn.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 00:34:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614760465; cv=pass;
        d=google.com; s=arc-20160816;
        b=izWYplBziOr7A/gIOV1xnpXYsAcfT3qkb4pD/gYQW4KWCQBsC93f0mQo62/SjqtVbx
         izinA2aPr+ma2KLeFVQFbFskpuGqWR9mJbeob+aoseGEHf08h0LF4PJ1TiCEQVNG/wDV
         ZjlofVs/UIHucMETdjkI0PjHP9fxPtG2nrV4sLtRdeP/k9pIIgkIcVgI2z4Y239FIoRa
         YWdnI+e3NvHQNSys8Ryc59+2MrSRkrsXTnoKzoHbItIxWFVzXIQfvwvSV9k2kUswo/QS
         Q+h6WfKiCj8YazYxfX9PT/6PJAXLAVxV0GfizPUizMEfAHZL0Zfcx89weRSOM3Z5BCZp
         mBVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=2WR8MnuzhswESR2wNfHNRo0gR/gq3N5mWj+o08Umqfs=;
        b=O8CZzqK13zPz/ljTAIIYX1J4PP/Kt1xx9FanZv3ry2JhqZEnSK6fAM4ikod0h6nEB2
         818aEY3yLlpFUNbJCphPq+7jBRRVRlM28zxEucPNIaQHnOXzd+Hou5uoIR7G+eMSc5Rp
         7HIZ2ks3xU6ZnQR4BYwD3gtuJA/9r6lIY+7bkik0bYoP/MLBn01z78p1flynN1WqWzZw
         w4jOFl4tjt6md9UVcL0EedgTQtGboZHPJh1mXBcqyMJUIec+v0kiAsFgwd21EODlKUWF
         We2LEu1kWovzotAUa2aLQ9yoMb2NRQFtjkXeiAHUjvXXUv9dZSRmfICKiul/qoD+2Fuo
         R2EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=W7ciNNT0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2WR8MnuzhswESR2wNfHNRo0gR/gq3N5mWj+o08Umqfs=;
        b=di87RNsqM9H8804+Wm6fUeHNWddSNQyTC06a4f21WOBRXfO/jT0dksB86xXZVCRWsy
         SXD5buxVy4qMGChpqPKcbWE+DuTaUpLEpPvRVeDDq2jfE/A4GlHh1i2f2b2cBFcgU0+I
         yqVYJ2YzeRW49qRbM338pmxCKdnCRCMLlTU1a0S1U4yNgbqdBLMh3TW8zEsvuNeEKMsY
         x/E5LdbDgPwJVEIXdjokDEJpoaIRqFp5POPZqRpPIxbLXh7QpwCUCFscQnl8m++AX2/y
         360q8s04ca1ZWfx9+BLom6zOhUDIPSd5xnwtXeYTBRlAqz+xXYheoF5qJy0gpGkGmMT1
         sNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2WR8MnuzhswESR2wNfHNRo0gR/gq3N5mWj+o08Umqfs=;
        b=dK+fmGbzJ9uKi2KYDQ2Q9ZvFkq5HzOvdVNi/Dof+SrNM/lrWSG3bX3fSKGEKdXs9sB
         EsqWPYMgvbwvuP8otjoHUOvm1ovaNSNRtocDAUZpDzqQEQeaZLMRGF2oRXVi90OcxkjZ
         ZJsQeYG89+ylIqCb8vtgmkdGDoFHaaDyy7A+i9Nrl+ny4q21vAQX0e8KXsXRNx8F54ft
         XLE1nalPcWsDLTyFade2qpPCR63uRmsF1CsgnmB2y0hZYjx7a9dwM5s0KpQDix8Tr3cY
         tIqcsVNUs8EB+QIlFoafq78Vc6uVGZXpbGWyK80CUG5DCe3i8bbNhFVPr8lTpFMGMM89
         jwIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53076HHlI0aKOekkSY+ApV6vPjNTGDQJ/bp5IqhgfHvHJDIwLc6H
	kccWcUUHnKkK8EYEy0TPcp4=
X-Google-Smtp-Source: ABdhPJzUjq5U0zL/HoRI1xz3N0tt6Y9nUIv7MRo/iYoyujlAuUrHg1fncvoX+tifmzxLX6KONJwvJw==
X-Received: by 2002:a05:622a:486:: with SMTP id p6mr13498511qtx.81.1614760465203;
        Wed, 03 Mar 2021 00:34:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls849157qkx.2.gmail; Wed, 03
 Mar 2021 00:34:24 -0800 (PST)
X-Received: by 2002:a37:9f83:: with SMTP id i125mr21982107qke.36.1614760464796;
        Wed, 03 Mar 2021 00:34:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614760464; cv=none;
        d=google.com; s=arc-20160816;
        b=nAsC0jn4lAUsjmm805e/F6j+Bw9W1EKCGuizkqrSyC/mK4ZOpH17aRUMAkg5TKN5ta
         x4OgXYp0UJkIBnbRVX8EvpFd0A1MTIbCC5YRHfapA/xnFmtF/ehMZA96i//izDxAjkb5
         voTpVapnmtZGTacucaWvRwP4OxXab1iK5BXyxfbBj9nTw5qmK7rKY0BWHSEmHuQZzSWa
         zs5sUAtT5kbQjN5ha9x9DHxOwrsz/O0v4fwoxjYoLz5n6vuEWg3IOBrClf9gfYFQDQTT
         4YDNheLDDKP9cV8nB/8w2VSBVNe56tJdC/eCxp+N7Pcv7Kb1BJYqaLJCpLJjY8iV0A/y
         yXgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=t2H8VyH9AVnFDudiJqpplvJKk6BW/2I4as+O7Wq1jKc=;
        b=UV+pHm8vWCvvOJMPuwxJo53YjrZdLouex+dG9IkPOaWsr3f7D74tjRQqtiCp7Jv85h
         3MZhFqh78dE8fUuBRnUMIecaxI0zlEKI6dnOjVqLKRz3/dkOhvlf+5bb9TT6AJvVOWWX
         0QW+ZwiRKvYf4oT+AS2T19L2/GY2VOYxYIYWd6Ek2tPUufG/+2wwp6ciIylNE9Z6edw3
         sA+SRKb2xBhOltqSEPLVKdcRjcoj9Ewb8WN4FKL9SwiXc3nm75SPH/d5ueO46jmZq2Po
         GiLN78ZvEhlvb4K9Bmr1q4r2MNDVmlvuOwjIy96v2xYoY8q88B2MopxA/s2CKJzeEImj
         2I+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=W7ciNNT0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id m10si851349qkn.7.2021.03.03.00.34.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 00:34:24 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 1238Xs9M007278
	for <clang-built-linux@googlegroups.com>; Wed, 3 Mar 2021 17:33:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 1238Xs9M007278
X-Nifty-SrcIP: [209.85.214.175]
Received: by mail-pl1-f175.google.com with SMTP id s16so13623772plr.9
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 00:33:55 -0800 (PST)
X-Received: by 2002:a17:90a:dc08:: with SMTP id i8mr8226925pjv.153.1614760434319;
 Wed, 03 Mar 2021 00:33:54 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210302214358.qr6enl6majzplhij@google.com>
In-Reply-To: <20210302214358.qr6enl6majzplhij@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 3 Mar 2021 17:33:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS4Ri=K6M39hYU+17JVf0Z=hbRgSxuTdX5ZaVYLpmJRtA@mail.gmail.com>
Message-ID: <CAK7LNAS4Ri=K6M39hYU+17JVf0Z=hbRgSxuTdX5ZaVYLpmJRtA@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Fangrui Song <maskray@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=W7ciNNT0;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi.

On Wed, Mar 3, 2021 at 6:44 AM Fangrui Song <maskray@google.com> wrote:
>
> Reviewed-by: Fangrui Song <maskray@google.com>
>
> Thanks for the clean-up!
> --gcc-toolchain= is an obsscure way searching for GCC installation prefixes (--prefix).
> The logic is complex and different for different distributions/architectures.
>
> If we specify --prefix= (-B) explicitly, --gcc-toolchain is not needed.


I tested this, and worked for me too.

Before applying this patch, could you please
help me understand the logic?




I checked the manual
(https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-b-dir)



-B<dir>, --prefix <arg>, --prefix=<arg>
    Add <dir> to search path for binaries and object files used implicitly

--gcc-toolchain=<arg>, -gcc-toolchain <arg>
    Use the gcc toolchain at the given directory


Hmm, this description is too concise
to understand how it works...



I use Ubuntu 20.10.

I use distro's default clang
located in /usr/bin/clang.

I place my aarch64 linaro toolchain in
/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-gcc,
which is not in my PATH environment.




From my some experiments,

clang --target=aarch64-linux-gnu -no-integrated-as \
--prefix=/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-  ...

works almost equivalent to

PATH=/home/masahiro/tools/aarch64-linaro-7.5/bin:$PATH \
clang --target=aarch64-linux-gnu -no-integrated-as ...


Then, clang will pick up aarch64-linux-gnu-as
found in the search path.

Is this correct?


On the other hand, I could not understand
what the purpose of --gcc-toolchain= is.


Even if I add --gcc-toolchain=/home/masahiro/tools/aarch64-linaro-7.5,
it does not make any difference, and it is completely useless.


I read the comment from stephenhines:
https://github.com/ClangBuiltLinux/linux/issues/78

How could --gcc-toolchain be used
in a useful way?









> On 2021-03-02, Nathan Chancellor wrote:
> >This is not necessary anymore now that we specify '--prefix=', which
> >tells clang exactly where to find the GNU cross tools. This has been
> >verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
> >distribution version of LLVM 11.1.0 without binutils in the LLVM
> >toolchain locations.
> >
> >Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> >---
> > Makefile | 4 ----
> > 1 file changed, 4 deletions(-)
> >
> >diff --git a/Makefile b/Makefile
> >index f9b54da2fca0..c20f0ad8be73 100644
> >--- a/Makefile
> >+++ b/Makefile
> >@@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
> > CLANG_FLAGS   += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > CLANG_FLAGS   += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> >-GCC_TOOLCHAIN := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> >-endif
> >-ifneq ($(GCC_TOOLCHAIN),)
> >-CLANG_FLAGS   += --gcc-toolchain=$(GCC_TOOLCHAIN)
> > endif
> > ifneq ($(LLVM_IAS),1)
> > CLANG_FLAGS   += -no-integrated-as
> >
> >base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
> >--
> >2.31.0.rc0.75.gec125d1bc1
> >
> >--
> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-1-nathan%40kernel.org.



--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS4Ri%3DK6M39hYU%2B17JVf0Z%3DhbRgSxuTdX5ZaVYLpmJRtA%40mail.gmail.com.
