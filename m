Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBCW4UH5QKGQEAPUGQZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 44226271E96
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 11:10:35 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id 139sf7374520ybe.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 02:10:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600679434; cv=pass;
        d=google.com; s=arc-20160816;
        b=qO1bwOzIEcjjfF4XeKyZM9pOOgnVD1HAEL2RaUXvA3asHTSLvhbdl8TnEpZrWyW0ju
         QR34h1cd5xIdDy3Pn67N/cltFuPRkx8QAw1u0Ll1jOEn2b+8b2I+MkkwXR/5xbF1oSaj
         fv4lE+G+KyboCbddEfkjgCtzQRxL4uyFbE7nSvzwb3Lsxc0lZTXdjFTBoAODQ2PYr01d
         Ye8UguaE5ZHp8rJrJ2B+G8AUBrO8b02hHUVS7xxPKyqaF6jhnhcKK25lFR6ILRKs8DQh
         /kUOypd8j4Nseo1c1IaKBCrCdwrnZYNAaUdSxOxLJHfQvmz3yN7OtVtRU5+aHCr7A41Y
         /GRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qqd2oxzbdE8PRBgG9fwCSSmUjsiLXe6UXQ9eCy9NtpM=;
        b=yl4qk9rZp84enj9HcCmV1oIsrze5Qbhkwz6KK2DH012Ft2NCypcjmJ3ghtplPowlhw
         BaezAIVCPki7bjVNaubiQ5+CsfyYv/OT0hkT9KWbbj1FR+YOrt8MTRVqPTZswWnuWbL+
         l8qmxhmPAzKsl4xeUX+2BGcxhX+wjTQhp6O0d/4TrvrPdSfJHpkXBcxcwwgbm+czy4B3
         Zk30CYx1i6B2B4nCyQnJufqb4b4RL5JLpueGLh24UGbAlkZXvNmaQMjm+wYKNkxK52uO
         jP1Sa6n9vwmSBPTC1t5jda7p5TgnuMSgXI/c6mklMQ+2Xh4S0TGaGpYdmVJFGJzPijCT
         ZT3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Pz6WH6M/";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qqd2oxzbdE8PRBgG9fwCSSmUjsiLXe6UXQ9eCy9NtpM=;
        b=kMsaL7AKgvDuj7a2N65O9wUVaNP0Kbn6O9pq5uyDD2Q+ZLYYEQWbclyUO90JB0uRKi
         ndjIlRbLPtzj/47+mt5vVvFo7OtoOIvbm3NG7Tj00sUhnwV+WhBBDqpP2+a6BOVbCTaB
         C9oKEUcTI5ULEQ/ieSe9GUDMWORgVo7Hm3nwgvoQtQjGisXohtDq+yGalQZnxRhurF4U
         rReJUSBkh0jvdZSsnAowkLLy4Zumq58ZjHWxheXq9HlIhJKkSfTvoOkgKovh1SjzQdIA
         Dx9qMdIuW7cvStntJQN4M0EiLfetBOpf6cX5egz4IOO2nO1QRrnFTdluNmqVotCQpbQi
         fwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qqd2oxzbdE8PRBgG9fwCSSmUjsiLXe6UXQ9eCy9NtpM=;
        b=HbZ4XcVEspIgxE+zDFoxFmMXclIsVgOXxW622ENSDct8xwH24tGCM+8pN0+uOSrGkG
         ax2CdFGLRX0Pj8sVSbwNyhqChQAX4lIitbcAN25z+qp+U3NvHAOwyIusmcMgjPeZy7yK
         vhMSgyw3vhqfpk+GEhd2txY6Knhc1JA5EO9oqBMnLEcwqCDFQC4LQiMFVBh0WdRq4aWw
         FkRqkFgO4YSLizOw9TYWcrhsihMBUlEpMaTYd2hI1Z6qo4dFqweXGVNqvhgTHkY31z8d
         KJJ38R9wA+HKfVYbLf9XjEuUzA4KzTtTudESkepaMwZx+RsXpV50bAI/qWhKnslUVU0X
         EAMA==
X-Gm-Message-State: AOAM530TOQMeW7s01gkrNLUECqxQ3UAD9Pycud1lmY0SIx63wklzhy1v
	a4v9OuRacNpLSBGd8FwMqy8=
X-Google-Smtp-Source: ABdhPJwzkQMZRNzbANCEo8doaDQ6l3WxoL+11icslg2PCn4oawSHg7CdMKNpdaYMWeRnpf2eZs/Zrg==
X-Received: by 2002:a25:c4c5:: with SMTP id u188mr60922302ybf.162.1600679434244;
        Mon, 21 Sep 2020 02:10:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2a11:: with SMTP id q17ls1946686ybq.8.gmail; Mon, 21 Sep
 2020 02:10:33 -0700 (PDT)
X-Received: by 2002:a25:be13:: with SMTP id h19mr69039835ybk.50.1600679433818;
        Mon, 21 Sep 2020 02:10:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600679433; cv=none;
        d=google.com; s=arc-20160816;
        b=qWtTQRIOoia4j8haOJAUKpCM8b5SAIwbxc3AM2d7ILy3dfsc+WN0RMpewuUtkM/kmn
         vYyuXpvH6p3nOtVBJzFvlCrgsdCJGrIdf3Dl7ojWLTBcwfTAGYs6mNlSegDRajjHJUsB
         steVALVZ2UFTDntrkG5ViEQDgh98h3OdmdSmhGnjutHt0UvemY24dMALmqJjD9iaOHiM
         LOYT28yUaUaVY2QTndzMgH5Z7TygsMYWVlcK4A+ruC5dJU/+SNBuyNTcm2EIWeuglfua
         /5J4T9D6lSLRHgKPj64lMRogyjTaPkmbh4BHvWA9CfN66SzwlPKwoMdut+c7qmBpfKXH
         i1uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jy0s2USaK+JhHTs7TrcCHTEta2V5dGsxjsWQWazaFrg=;
        b=VnnWxmrVWy63Md7A+Klk5uOCgVJ0bS2SuTNh336MLKvVg+3GU+tK63ipZyNl7ZLTa8
         UALup/j61/AKoLbWJrmVqyPITSHlQ1JodivRcWpJXkZ1YjRkMCuEx7GIWVoD8uSgINWP
         /eyNxaI6J5fuXZ0WYHT3RRNshsQt+i5ip+70GMEk/89Jw9YwRU5jTKnRFa2dN2P5H6bw
         JkKBz6Nrb+UuBg0kUEC/kSyx23l9gHNHNJ4suKiUdPs2CK7zyoB1u8yBr/MFJqupxh2C
         R82+tE61jxrF7fgGhUgZwrQa7hA/LRFHtujFB72XaIcwlLJgsyHqBFWFZBaSh8r/jTU2
         8CuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Pz6WH6M/";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e17si821188ybp.1.2020.09.21.02.10.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 02:10:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id h17so11706419otr.1
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 02:10:33 -0700 (PDT)
X-Received: by 2002:a9d:66a:: with SMTP id 97mr18596488otn.233.1600679433137;
 Mon, 21 Sep 2020 02:10:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200921075131.1334333-1-georgepope@google.com>
In-Reply-To: <20200921075131.1334333-1-georgepope@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 11:10:21 +0200
Message-ID: <CANpmjNO8YNROJsOj+n=hWj=2-LqebBQdZRks1KKQ3Scd05fLjg@mail.gmail.com>
Subject: Re: [PATCH] ubsan: introducing CONFIG_UBSAN_LOCAL_BOUNDS for Clang
To: George-Aurelian Popescu <georgepope@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Peter Zijlstra <peterz@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	George Popescu <georgepope@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Pz6WH6M/";       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Mon, 21 Sep 2020 at 09:51, George-Aurelian Popescu
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
> Add the UBSAN_LOCAL_BOUNDS config to Kconfig.ubsan to enable the
> 'local-bounds' option by default when UBSAN_TRAP is enabled.
>
> [1] http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
> [2] http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html
>
> Suggested-by: Marco Elver <elver@google.com>
> Reviewed-by: David Brazdil <dbrazdil@google.com>
> Signed-off-by: George Popescu <georgepope@android.com>

Reviewed-by: Marco Elver <elver@google.com>

Thank you!

> ---
> v1: changed the name of the config to UBSAN_LOCAL_BOUNDS in Kconfig

This version is v2, so this should have said "v2: <summary of what
changed>". The subject should have said "PATCH v2" (you can get this
by passing --reroll-count=2 to git).

(I also see you fixed the the Signed-off-by/From inconsistency.)

> ---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNO8YNROJsOj%2Bn%3DhWj%3D2-LqebBQdZRks1KKQ3Scd05fLjg%40mail.gmail.com.
