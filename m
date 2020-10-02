Return-Path: <clang-built-linux+bncBD6K324WS4FBBDPZ3T5QKGQEAIJPWIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B0728158D
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 16:43:27 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id d10sf723096otf.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 07:43:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601649806; cv=pass;
        d=google.com; s=arc-20160816;
        b=T0Xx4r6/A479j7O7RpwC93BZ+9mur3NmisaUr7lXasvdiDpVXJA4pR0uHTtWoZ2LSF
         79K6uHluu9eQZ3Gw4iaWaiIRTK39GZgORJZwFALWfpM7GGti4PeEs28Vu1LEBRfQyOPs
         Lc+pllZSxsfS1BbPWFjjH3TtYxe39aGmXSYfiD2zx2Jhno7RTE7v1a0fHowlKsqH060f
         6tXbYb9hZrOt0WmvzlkIL8gZkNJUJ7dBLJazm2nGEr0nt15WZE0EZNjsJO+W3Bm8BNeC
         mnRcEnvwL589IEu3/uvzcYaRdIJ7c2tKy4FTk+RXyynxzcZ3C9GnDSOABo98hS1wi/w2
         rKkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zSHdL0L+M77ST135EsT0E8yNbuYYWrw4utbpvVUqhHg=;
        b=Y4EGdTYYFeRiOKXKzjHKaIDX7iQ0Vi5n4ISOiMUyquDZrXJforf9rGEfV5g+4ZjXIZ
         emcCzCelro4b/zTJ+17kbV8ZqbFW6Wz5DrB/Dx1JDqU7RM/H0gPkfFT3c0SyriVN/5NK
         HRBt6kX9vnn88K1QL8wtgeBoZBQheQLj9jYb9z4YUZbqo11fd/nrPdEvzC8z6Jl/eh33
         sdgz5kfLdPSPasYijP6n/OEsyUngQ7cUMhaV4aO2/M+pszUhXad+tf4fgOE+GDVkYg1g
         4KFSDidra2U+AKeDpRm1NWffUoTpn+gxb+ilPo/Ok9xO4cxaFNgLnGM5fvzIrMiOPGDu
         06cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l82Mo41O;
       spf=pass (google.com: domain of georgepope@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zSHdL0L+M77ST135EsT0E8yNbuYYWrw4utbpvVUqhHg=;
        b=I/ytiD4311ygJ7CASU/ySY/8COIuwRYkVJdvb5WlXkj9bSZYrb9rf/jKT+31wmtjsT
         O29aMAP1EIvf5C3gyNwVIdVoQ9VDo3Sq5wJDBJxGcXYMHAjELC3hHJ5zAqBZdQkRDVTv
         qd+rdycs3OVUJxaTVPTaG55qaEGMbvCcnsyYtJeG7j6/RaISJE9BHyggiLvBxa/5Zzrh
         2tOFgp34VTvuNKHUPYFr6dkq++bH76o0Qrz3ij/ykRHh2AF+POmcugxJx0l8XflI+eAi
         6l84+EMT47zPwty+SJuCpsa2AmaICBW6ePSNJqJSmjbQ+DFaQJTWSs7OV60DYZJvFvNn
         LqRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zSHdL0L+M77ST135EsT0E8yNbuYYWrw4utbpvVUqhHg=;
        b=ZXjziIKbYxPUuranKW0HSDjqx5MBVD4yXiwJxxFuBAo29fN1dfuxtaiilOkPUPXzKu
         JT83tNlSTxxfL1QrYSmL+lkrGS5qHQFmONg84vLCL+fHHslL1f/GERMjly+SmJS96z7n
         L+z9Nc+xQ6NQB3962/aEeRnJPJ9hM5qwSiRPT6EyLg8pK7ZafIP2B81VBmNxqbp73U8o
         THmhfRrACMutyn9xawV2pJCb5UPeArPNb/cJ5HiRpDZ3IrkSTemfoxGI3EymesUP036H
         JDuaPEy8oYhHo1Nn1Tss/Iz9dN8spHI1g09wrn7up6h+dOPAZACbxlhPm4cRMC7JreuC
         mO/A==
X-Gm-Message-State: AOAM532j1/sbUY7XWccSnozIRblZO5gcX8EHO77s1qAPf4Gx4PueeBwA
	dCcZjimnUogY4qmcUuoJI90=
X-Google-Smtp-Source: ABdhPJxgNlDKxISRROiGzbyK1Jj7wOVl0BHDkCd9OvG2l6kQKY6AAMpFfgkaKOrje5v3K73OZFsHNA==
X-Received: by 2002:a05:6808:aa7:: with SMTP id r7mr1471234oij.174.1601649805982;
        Fri, 02 Oct 2020 07:43:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4d2:: with SMTP id s18ls440969otd.0.gmail; Fri, 02
 Oct 2020 07:43:25 -0700 (PDT)
X-Received: by 2002:a9d:241:: with SMTP id 59mr2065993otb.151.1601649805510;
        Fri, 02 Oct 2020 07:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601649805; cv=none;
        d=google.com; s=arc-20160816;
        b=ZxV6Ubzg60/cf8VCi5HWZ7xtYnjqqZM3rdDrnctI6Zosqj8vENMix74DIn+GSqIz8A
         GE1Cufq4k3Wa2cBKgCdRNi0fMRQk27HJOwo/AkssYah/Oa5yOjf9IB23mh6jLI1vQwnQ
         wp6ZpaNqZjvhjeCq36kveIbyxAKZLZ6yHx2wcYsyl70Jrq7nnwLdJEDgMUgVCrs47hCD
         4BRsNNv1om20tTkT+KkHs0fvV1fEQaB3IHL+UkMnSQAPS1OIPHWFeJFTwFKIYDfqyyM2
         IS0mlEnGeGj+pg/UMI6zaRrnj8Xxtyh020qQ+TpaKtun5+p3E4rm7r/IM4jhkPD1TdAk
         3n0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XQ8K/rKC3UZmS+HPw3fqqFhEn9BpnVrMLbEfvCkaaxQ=;
        b=XHQgVc7QseJp3JwqbKeyhD65upmi0eaZ8ZmrfXrUMQn4nRIHoMQQULaA4VcOdXAo9t
         arCTGWdanAm11UuL6c0kexlygNXLez0O7kr0kpLsvaoOiED5VygHADkJhYF/ddl3xLoh
         3WFP1jYYlgMjXfMYtHqGQjVZWKVMQsmScsVtojujLtkMPMrPuVlsOQrtR/D06zE2W2p8
         0/9nBeXKTiNTDYeSLenysSGiSIUynuz9zJf+pTd25iNC2es1g3JMgHPd6/H1H1XIxaOP
         Sx9leWGK0o5FpxUb9nVFKRBRqCPvGrsJIsNy8VZDDkcyfII+b5/NQpE2r/y/btrp4Dwz
         bW+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l82Mo41O;
       spf=pass (google.com: domain of georgepope@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id b12si39487ots.3.2020.10.02.07.43.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 07:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id x20so1327871ybs.8
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 07:43:25 -0700 (PDT)
X-Received: by 2002:a25:9c87:: with SMTP id y7mr3357608ybo.18.1601649804901;
 Fri, 02 Oct 2020 07:43:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200922074330.2549523-1-georgepope@google.com>
In-Reply-To: <20200922074330.2549523-1-georgepope@google.com>
From: "'George Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Oct 2020 17:43:14 +0300
Message-ID: <CA+DmFKDMZPef9+f4xPWMQ2mgdHPSUBmYZ3X=bS6s8XudetmW5g@mail.gmail.com>
Subject: Re: [PATCH v3] ubsan: introducing CONFIG_UBSAN_LOCAL_BOUNDS for Clang
To: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>
Cc: peterz@infradead.org, Arnd Bergmann <arnd@arndb.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	George Popescu <georgepope@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l82Mo41O;       spf=pass
 (google.com: domain of georgepope@google.com designates 2607:f8b0:4864:20::b42
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George Popescu <georgepope@google.com>
Reply-To: George Popescu <georgepope@google.com>
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

Is this patch ready to be merged?

Best regards,
George


On Tue, Sep 22, 2020 at 10:43 AM George-Aurelian Popescu
<georgepope@google.com> wrote:
>
> From: George Popescu <georgepope@android.com>
>
> When the kernel is compiled with Clang, -fsanitize=bounds expands to
> -fsanitize=array-bounds and -fsanitize=local-bounds.
>
> Enabling -fsanitize=local-bounds with Clang has the unfortunate
> side-effect of inserting traps; this goes back to its original intent,
> which was as a hardening and not a debugging feature [1]. The same feature
> made its way into -fsanitize=bounds, but the traps remained. For that
> reason, -fsanitize=bounds was split into 'array-bounds' and
> 'local-bounds' [2].
>
> Since 'local-bounds' doesn't behave like a normal sanitizer, enable
> it with Clang only if trapping behaviour was requested by
> CONFIG_UBSAN_TRAP=y.
>
> Add the UBSAN_BOUNDS_LOCAL config to Kconfig.ubsan to enable the
> 'local-bounds' option by default when UBSAN_TRAP is enabled.
>
> [1] http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
> [2] http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html
>
> Suggested-by: Marco Elver <elver@google.com>
> Reviewed-by: David Brazdil <dbrazdil@google.com>
> Reviewed-by: Marco Elver <elver@google.com>
> Signed-off-by: George Popescu <georgepope@android.com>
>
> ---
> v2: changed the name of the config, in Kconfig, to UBSAN_LOCAL_BOUNDS
> ---
> v3: added Reviewed-by tag
> ---
>  lib/Kconfig.ubsan      | 14 ++++++++++++++
>  scripts/Makefile.ubsan | 10 +++++++++-
>  2 files changed, 23 insertions(+), 1 deletion(-)
>
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 774315de555a..58f8d03d037b 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -47,6 +47,20 @@ config UBSAN_BOUNDS
>           to the {str,mem}*cpy() family of functions (that is addressed
>           by CONFIG_FORTIFY_SOURCE).
>
> +config UBSAN_LOCAL_BOUNDS
> +       bool "Perform array local bounds checking"
> +       depends on UBSAN_TRAP
> +       depends on CC_IS_CLANG
> +       depends on !UBSAN_KCOV_BROKEN
> +       help
> +         This option enables -fsanitize=local-bounds which traps when an
> +         exception/error is detected. Therefore, it should be enabled only
> +         if trapping is expected.
> +         Enabling this option detects errors due to accesses through a
> +         pointer that is derived from an object of a statically-known size,
> +         where an added offset (which may not be known statically) is
> +         out-of-bounds.
> +
>  config UBSAN_MISC
>         bool "Enable all other Undefined Behavior sanity checks"
>         default UBSAN
> diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> index 27348029b2b8..4e3fff0745e8 100644
> --- a/scripts/Makefile.ubsan
> +++ b/scripts/Makefile.ubsan
> @@ -4,7 +4,15 @@ ifdef CONFIG_UBSAN_ALIGNMENT
>  endif
>
>  ifdef CONFIG_UBSAN_BOUNDS
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      ifdef CONFIG_CC_IS_CLANG
> +            CFLAGS_UBSAN += -fsanitize=array-bounds
> +      else
> +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      endif
> +endif
> +
> +ifdef CONFIG_UBSAN_LOCAL_BOUNDS
> +      CFLAGS_UBSAN += -fsanitize=local-bounds
>  endif
>
>  ifdef CONFIG_UBSAN_MISC
> --
> 2.28.0.681.g6f77f65b4e-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BDmFKDMZPef9%2Bf4xPWMQ2mgdHPSUBmYZ3X%3DbS6s8XudetmW5g%40mail.gmail.com.
