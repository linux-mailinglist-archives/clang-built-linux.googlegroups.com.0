Return-Path: <clang-built-linux+bncBCS7XUWOUULBBZEJ334AKGQE4DTNJZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 266A8228CFF
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 02:14:30 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id b11sf344169plx.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 17:14:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595376868; cv=pass;
        d=google.com; s=arc-20160816;
        b=u69LMBvr3JC6GvRfeshPk4mDt5INT1nBYZHNjb8K/WZ2NWvsNw+gWu45jKTu/ZxES6
         oeyn7VvCuP+PSmTeTOSWQOS+OWA8NB6csu6NqAdUHCGaF7OQJd0+DegetpTPFKDFNJEE
         nriTw223dwTO6+S+M+O/DjX3eluF0kzyVXNCTcxsrVUcVrqFB+Pup1YJPT4lmeqeqx2S
         42UHeCOQAkCFsOmQAJdPj9QnaKPt54Y7fJzLJZP/v9PVrOL6vuc63aQk+36SnFvn/OTN
         EHRthol7IZ7RqtEg+pbJoDOtRsPyB6rTLNMAoDWgQ2BOuTjK15gZ/fZ3PGwRoE3DxV7f
         URHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=3dd9+GtMvUwm2xgoXRgxg15hlyMRXgryEZUN5ECDHbw=;
        b=BFBzGJVkGM7D5K2nI36ZzRHemZXsjYtk4arlib3kxMdf6WM5TMhjT0dVQUgaywUUM4
         eAtpJxeMFlA5/bjTQuetL0s5NDwN60v+PHArRzOib6umd9k6KU0BN+l6E/N1hiljLgMa
         cujXiCqxwH1eTxkyHCihd0R0xS48g+m1I4G9HEcF1M9bK7R2fqtmzHU6QAEJpBJNo5OS
         A+MXs+F2KLrkNQ7nsqUOZYhnrZ4z27Mba7332XjRyIUSRMEWH4IX98PEts1GvAYYHXgP
         z1Drhp9scV5WeIbqVNW8E9PpKvbq0vAyy8wnPh8JtPGI3NF4I+fU9dosVtePLZs6YdVt
         ekLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rBfa1OHr;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3dd9+GtMvUwm2xgoXRgxg15hlyMRXgryEZUN5ECDHbw=;
        b=mG+Ua239SUQojYuKzbWU+EAKE4Q1x3r08Lsarm56C2a3vikgNZrBVYP/U8gplpmrWr
         ZLPYMYHfhYKfq/8rdSnwLnxFyF/ZaZMPqOlaKVSE+1gSFiI7fnThr/0n9WHZy1qxguyY
         GN6wOArkOFd7djTmjCExw4MKhai0AoTgbqDKzL03ZjTCLkyLp7hYAEi2BdBXn2rwt7VM
         xzCwKEQaov8NdJj4nZDmRuNNIY0WAh/u0S/9MnSofOxqx2onil4/qRfC4ynG8xVL35Gr
         APVKItjKBVKIvFCZfe8Jc2oTj5fLljBBmJUNaFfmUBd8LJj/jtdU4EEA+sxqUnQJ4sib
         sZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3dd9+GtMvUwm2xgoXRgxg15hlyMRXgryEZUN5ECDHbw=;
        b=b0F+s81s0xTk3xidZXmfhFY2tX1mXm5s3mwpY+s6iJSW04JSYoK5rQ2GOnLDzTUk+P
         WPNorHD+rgC5iWG/Qb9PC4aPinsr9ap63vQa+Hd5/h1JF55YLW1tFOwXYMXMLa/ZJ9Aj
         PfJ3U0dL2L2srcaVr20gqkRPBhqaU6xP9mXFDWpXg2ATHgD2yDJNhYhUa2dvCRDWhIYy
         FHbt1VjrXkhhOETDiZeiT5c+7PPe+XcIssyMUEKqbdpRGpvaqOwx2N63qoZEgCojb5p+
         sN+85dVgaZS+MBrC/gFB1R5Qv1EOT1Rv7SOu5d1xSxRul8Ngf4WnHvp7RlNZYowMw0sb
         O+og==
X-Gm-Message-State: AOAM532Onh6+/lYum13c/0ylzKz5tqw40tPYFVIg1knso0lQk/rJNgko
	oiUer03QC1K4yWzFuee5lxA=
X-Google-Smtp-Source: ABdhPJwEQZtIwlAPxttbTAFZ+tv8Y3Z1CVa9srFxs4jLs9R7QxHrMS2Mbk2e8l7dFxKatfeJ+7Di6g==
X-Received: by 2002:a17:902:aa84:: with SMTP id d4mr23975191plr.208.1595376868533;
        Tue, 21 Jul 2020 17:14:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3785:: with SMTP id mz5ls64854pjb.1.gmail; Tue, 21
 Jul 2020 17:14:28 -0700 (PDT)
X-Received: by 2002:a17:90a:df8f:: with SMTP id p15mr7778771pjv.164.1595376868126;
        Tue, 21 Jul 2020 17:14:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595376868; cv=none;
        d=google.com; s=arc-20160816;
        b=mv85Hbrvqk+rAuRguZ0bn8citoDeLJhrV/G6cjX1q31SoHLruWtdobOcJdrwY7Xavn
         ukDuiJc0eVnwgnBz6nPOtKIVGVbspgg94S3pWA7vzaUNdlWg2YGb2yh3YG12zSzmN0Jy
         sLM4AoJoj6xfo/rY/3AF6Z5HWC0pL/vclF7PYKn5CFVWTg1pxqXQAkdas+/buRvZ5aAh
         +u3l1jcqzv1G0VzHNFuvY74gznCBzivJ0Q0LjuYtw9Exgc5qcdjUWOko82r6HonpYu5U
         KcqtDk1/27QWd5HZjulpRcKaB/jeNrvLWP/jym2ybKNNXU+SeBp14mDQJBVDao6py7M0
         5/8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9qebLmGY/4gEoVD5iagvEbtSEoeLp/rn7yyW5dBLp+g=;
        b=MnCF5S2IqldbRhemjF9rKE6iMGY0s6AdB1MXXlQNeYwGlUldkVsnHAPrMH6icDd3tY
         tU4k6zJACbcDEr3YWipKB3iBQhxhaazLTEoD6jb/i4Ewah6PgTNt4RpgtNtSuJeRPDE5
         8Y/HSsavaF8vMOx8YEwUZxksheHwyarNZTpLbZYZgixF+77629C7O7aD+Tmv7jxAu5PC
         yZLqPCcuu1MKV7Y29UnzOGZuflzx8+4mbMsBxIYuflwkwd31ym3QeES4xcedfeRdXim6
         xJRWFGaxG4IC/DHJf0o+Xkx6ugV+eMpnN/CqtoKYs69S/cCAp8PeTYf5YKAaHvPWEwlB
         Zotg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rBfa1OHr;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id y9si1401909pgv.0.2020.07.21.17.14.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 17:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id j19so232283pgm.11
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 17:14:28 -0700 (PDT)
X-Received: by 2002:a62:f241:: with SMTP id y1mr26305365pfl.136.1595376867468;
        Tue, 21 Jul 2020 17:14:27 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id t1sm4438981pje.55.2020.07.21.17.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 17:14:26 -0700 (PDT)
Date: Tue, 21 Jul 2020 17:14:24 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	stable <stable@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
 cross compilation
Message-ID: <20200722001424.qor3up6357jjsbia@google.com>
References: <20200721173125.1273884-1-maskray@google.com>
 <CAK7LNARjOjr2wSD_iM6yNSZpSGEWrkZZuWKCgCqOrYcA29+LBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK7LNARjOjr2wSD_iM6yNSZpSGEWrkZZuWKCgCqOrYcA29+LBA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rBfa1OHr;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-07-22, Masahiro Yamada wrote:
>On Wed, Jul 22, 2020 at 2:31 AM 'Fangrui Song' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>>
>> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
>> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
>> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
>> /usr/bin/ and Clang as of 11 will search for both
>> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>>
>> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
>> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
>> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>>
>> To better model how GCC's -B/--prefix takes in effect in practice, newer
>> Clang (since
>> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
>> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
>> instead of /usr/bin/aarch64-linux-gnu-as.
>>
>> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
>> appropriate cross compiling GNU as (when -no-integrated-as is in
>> effect).
>>
>> Cc: stable@vger.kernel.org
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
>> ---
>> Changes in v2:
>> * Updated description to add tags and the llvm-project commit link.
>> * Fixed a typo.
>>
>> Changes in v3:
>> * Add Cc: stable@vger.kernel.org
>> ---
>>  Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 0b5f8538bde5..3ac83e375b61 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>>  ifneq ($(CROSS_COMPILE),)
>>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)
>> +CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>
>
>
>CROSS_COMPILE may contain the directory path
>to the cross toolchains.
>
>
>For example, I use aarch64-linux-gnu-*
>installed in
>/home/masahiro/tools/aarch64-linaro-7.5/bin
>
>
>
>Basically, there are two ways to use it.
>
>[1]
>PATH=$PATH:/home/masahiro/tools/aarch64-linaro-7.5/bin
>CROSS_COMPILE=aarch64-linux-gnu-
>
>
>[2]
>Without setting PATH,
>CROSS_COMPILE=~/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
>
>
>
>I usually do [2] (and so does intel's 0day bot).
>
>
>
>This patch works for the use-case [1]
>but if I do [2], --prefix is set to a strange path:
>
>--prefix=/home/masahiro/tools/aarch64-linaro-7.5/bin//home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-

Thanks. I did not know the use-case [2].
This explains why there is a `$(notdir ...)` in
`CLANG_FLAGS     += --target=$(notdir $(CROSS_COMPILE:%-=%))`


>
>
>Interestingly, the build is still successful.
>Presumably Clang searches for more paths
>when $(prefix)$needle is not found ?

The priority order is:

-B(--prefix), COMPILER_PATH, detected gcc-cross paths

(In GCC, -B paths get prepended to the COMPILER_PATH list. Clang<=11 incorrectly
adds -B to the COMPILER_PATH list. I have fixed it for 12.0.0)

If -B fails, the detected gcc-cross paths may still be able to find 
/usr/bin/aarch64-linux-gnu-

For example, on my machine (a variant of Debian testing), Clang finds
$(realpath
/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/bin/as),
which is /usr/bin/aarch64-linux-gnu-as

>
>I applied your patch and added -v option
>to see which assembler was internally invoked:
>
> "/home/masahiro/tools/aarch64-linaro-7.5/lib/gcc/aarch64-linux-gnu/7.5.0/../../../../aarch64-linux-gnu/bin/as"
>-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
>./include -I ./arch/arm64/include/uapi -I
>./arch/arm64/include/generated/uapi -I ./include/uapi -I
>./include/generated/uapi -o kernel/smp.o /tmp/smp-2ec2c7.s
>
>
>Ok, it looks like Clang found an alternative path
>to the correct 'as'.
>
>
>
>
>But, to keep the original behavior for both [1] and [2],
>how about this?
>
>CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>
>
>
>Then, I can get this:
>
> "/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-as"
>-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
>./include -I ./arch/arm64/include/uapi -I
>./arch/arm64/include/generated/uapi -I ./include/uapi -I
>./include/generated/uapi -o kernel/smp.o /tmp/smp-16d76f.s

This looks good.

Agreed that `--prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))` should work for both [1] and [2].

Shall I send a v4? Or you are kind enough that you'll just add your Signed-off-by: tag
and fix that for me? :)

>
>
>>  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>>  endif
>>  ifneq ($(GCC_TOOLCHAIN),)
>> --
>> 2.28.0.rc0.105.gf9edc3c819-goog
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721173125.1273884-1-maskray%40google.com.
>
>
>
>--
>Best Regards
>Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722001424.qor3up6357jjsbia%40google.com.
