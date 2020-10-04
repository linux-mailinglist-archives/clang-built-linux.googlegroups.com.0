Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBPK4X5QKGQEZXEXZHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3EE282950
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 09:08:54 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id y7sf481772ooa.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 00:08:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601795333; cv=pass;
        d=google.com; s=arc-20160816;
        b=TSjJSj4H4Kw6nyIRcnwDyosxM0VcEQ2KaZgMZcCg9EBb+lJt0PD13Rl9sLuIkfRRKv
         MMDx51kgqofR5HqjISK9c5wjBwCf8bpz8gTnLiJqzE5JGfg4AUVb/8F3avg/6qHxJO9q
         DYImV+eJQAmwRK93dnmeNsO5l2szmpYfMulTlOshU2Aq8QDtGi+UPZgBD8rSFW2ljVuL
         OWhoom21szWA7J+e3EBARahAm89G2+YUENSp9nDQG0yBESEx8t4yjKv0s+neGghkQCom
         uGnl8OMvbyW2qhdCGbOdGCDKEY7O1tZuH8Dspe3lrTyY4uXd6BKSKnBn+QLJX/QA2j8B
         0e6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=JViJM0XmEubM53DGFoQqFLdFDMzIQydpFOBA+EW4+zE=;
        b=fn1e4rK1bnR+q/PHt6sukfyKya4xOdq1PEGu2PmD2K0FMH6nPRauDgmfh79zXIKTFU
         mV1sjxMEak1zJliQOUKVxmVjBH3vP2TBA5/e/9agvCbmRdO0t9kJH7Okml2OKPqxNJb9
         QZs/96T1sOQ+/871FP30MnYZO6kHWHE7Hhw3LVpPWUWpUf/3jiXZSaEPUyjIu8FNc1Cr
         E/BU8Pf71R0iKEPgV4QXl5j0AlrHlrslA1audeMD0+ca+CtFZqC2d7eXb7zCFrvs27Bo
         Rp+OYWv9/0s+KEKOVBEFJUrlLjHO9wBP6bK9LMCg90VS3ZtlI3+XFXsr2AqehcZ/kqV0
         BDtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="P/4cnQXY";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JViJM0XmEubM53DGFoQqFLdFDMzIQydpFOBA+EW4+zE=;
        b=K1kTPinMliT8EJLp+ZmLv+eYvXLltSmUoNIOytzA9J59SPfQl8NuEUZfLUn6zAye6P
         9BP2pGGdf7bA2bcsttmDJOBaEPGXoE82ut12ShnAzVlbPvWcCRQSdCBGWlXB9oQ/Ocz7
         MqQ//PHY/QbdOAHx7YuFqdZ0uxBRGYCtvA8TINhzZhCx+npVGbQ9biCJjxI4JOMFvvpH
         kSOZN22OxIjn7LynSOuGsQBJ+teipIGxQfoqpFDNhWJEo3nbvZZ3l223e6phLR1mnfyL
         OMlDfNMt7LbWClIhb71YINCbFuK5YUxUIk6wZyuGhgX8ndpAqHS777LnTfCJRBLXzAhS
         Dybw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JViJM0XmEubM53DGFoQqFLdFDMzIQydpFOBA+EW4+zE=;
        b=Aqmsk+pfUPRjjs2uuKxI0biGgn5m8I6sagDHqAWEQmTMo8W90gZ2eliBkb4z1NU2W1
         C4IdmD2FTl8cqLF/Nj9iF5U1FCay0dPUz7SB+qBXE9jifiJBGodAG69Jq/Lxu5KPIFmb
         vcEzyhdk3BwUurGSvjTVfmMEPx5SrtZ7ZfOrW5knQXKKu3OLvwjUoJHmR/tAgTdmAANv
         /losHoAazspepLVtuB7XsxUNG5XfJ3z/uFUKPFuqES1ZsRoCVp6UTz6DwsxXqN0sNyhx
         n/k0OFlLDPeypI3zckXk4lJPmMPEHnu55IU6vfgV+0lK6KuMo120+YgZVbzF8tw5ktYq
         vgrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JViJM0XmEubM53DGFoQqFLdFDMzIQydpFOBA+EW4+zE=;
        b=arPwTHbAdsvfN0o16QB5YhE4ZUAfh2X6bIIOLsuKhx8UgTaTyewhODcI1xBLLvnivw
         fzI1x/lhANbxWORKE/UT71cWnkSWUkFjBypuC9vpq09vdI6fXN03nDL1ZOkdA8+gHCqt
         MNe66hBeRaU89cuIWlcs4P6ua6A582RH0Tp6eom0peTKlB0Vmeen/wLi9C6tH1sPrXm/
         VrVGiL5z/2v0BBYZeO/a2X6XZgOS0iljbYWYtXrnqu1t2OpQL0Uo0rkaDq+dPBeiL8VJ
         5Bhg5WqgCamXOsqXnzKU/9VaSuRep5mUHljvDoJQiUdUzXJiwQXhFs41TkY8IscdkSM/
         7/GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530skoa5aoySgCyr/ORlanMaW2icVrzs3Mlz8an89acWz6Hz+wS4
	m+c9GMqpLzMp970zqGH0C+M=
X-Google-Smtp-Source: ABdhPJw131dTxc/ZQqZ/bpS8ORg5ps0+7rLFk+XKYxogB+mI6FPGlxnQPpGZOUMlJRx8lsTZXRTUrA==
X-Received: by 2002:a9d:7554:: with SMTP id b20mr3543127otl.152.1601795333127;
        Sun, 04 Oct 2020 00:08:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls1290202oic.3.gmail; Sun, 04
 Oct 2020 00:08:52 -0700 (PDT)
X-Received: by 2002:a05:6808:686:: with SMTP id k6mr5667186oig.57.1601795332711;
        Sun, 04 Oct 2020 00:08:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601795332; cv=none;
        d=google.com; s=arc-20160816;
        b=GF4InoFl74BC3H7rKbNbwncvz/N70j0wxyltuRe83qF4xmx36k2bxtTCYwxvtQtY1G
         wDHHRdduabHFR/Ge4zGdnnhqDzOnBZTyreA8DTkocWZjvGQ5XU4oMibBEnvRNaOiwb1n
         itswrgVLrEJ63NgcqRqSvijhw3zCoKj59ohhJV2VfAVon7ta7NOvKM0WSiV1c83S/1mf
         UWIK510ecvWPUO8qM0daPj6PUf9vOJ3kZuZPDHIFZ8Xu+m2jN0UEWRXQ2B/7PgIv/br7
         Qpv5Ge2utvOF2D11v2+aDBeSboC1+zHmaeqa7s8uiySnAF5DJuPlLeuvlZC9AUSNyfS5
         nSpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=a995q0geAJRx5CQ3HidLlyV8bk3RpRdiLEvrfSZbfME=;
        b=vEJLqwCJTZdb2Z0HB5B883Edm258FDmctGcoCmhV2yXrlKchaH5Lr6FhVW4pCAkkfi
         yXUOhkRrQWfUrJbyKlb8cCn6fvfJ9NcZnwKCN28XCXzsWSYeS5HAuxF48wK1Vfv1jRJT
         ewEf6Few3Y8vC5l0OVIvoNQVoGuzAzLEaLkKtt9rbNZHyB+EYn1U4EOeWvVy4MpcJcNE
         Qmp0puE+GPhPIGEkKaiHbApLwFD4fnV+Q7RxpIeMjHPhELrf+Mk+scSqRBc5PlrD06if
         qFZ8HDT8ALDsRMohp7mnEK+syxw45Mjqd+kEgdOrwL5lpUSIpiv6lYyABNKNtCqU9hNy
         0nBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="P/4cnQXY";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id w8si173419oig.2.2020.10.04.00.08.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 00:08:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id o25so3715517pgm.0
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 00:08:52 -0700 (PDT)
X-Received: by 2002:a05:6a00:170a:b029:152:6881:5e2d with SMTP id h10-20020a056a00170ab029015268815e2dmr729153pfc.20.1601795331892;
        Sun, 04 Oct 2020 00:08:51 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-3-136-221.ph.ph.cox.net. [68.3.136.221])
        by smtp.gmail.com with ESMTPSA id a1sm6464335pjh.2.2020.10.04.00.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 00:08:50 -0700 (PDT)
Date: Sun, 4 Oct 2020 00:08:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] ubsan: Move cc-option tests into Kconfig
Message-ID: <20201004070847.GA1650@Ryzen-9-3900X.localdomain>
References: <20201002221527.177500-1-keescook@chromium.org>
 <20201002221527.177500-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201002221527.177500-2-keescook@chromium.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="P/4cnQXY";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 02, 2020 at 03:15:24PM -0700, Kees Cook wrote:
> Instead of doing if/endif blocks with cc-option calls in the UBSAN
> Makefile, move all the tests into Kconfig and use the Makefile to
> collect the results.
> 
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Link: https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/

I tested menuconfig to make sure all the flags when CONFIG_UBSAN_MISC is
flipped.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

One comment below.

> ---
>  lib/Kconfig.ubsan      | 48 +++++++++++++++++++++++++++++++++++++++-
>  scripts/Makefile.ubsan | 50 ++++++++++++++----------------------------
>  2 files changed, 64 insertions(+), 34 deletions(-)
> 
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 58f8d03d037b..c0b801871e0b 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -36,10 +36,17 @@ config UBSAN_KCOV_BROKEN
>  	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
>  	  in newer releases.
>  
> +config CC_HAS_UBSAN_BOUNDS
> +	def_bool $(cc-option,-fsanitize=bounds)
> +
> +config CC_HAS_UBSAN_ARRAY_BOUNDS
> +	def_bool $(cc-option,-fsanitize=array-bounds)
> +
>  config UBSAN_BOUNDS
>  	bool "Perform array index bounds checking"
>  	default UBSAN
>  	depends on !UBSAN_KCOV_BROKEN
> +	depends on CC_HAS_UBSAN_ARRAY_BOUNDS || CC_HAS_UBSAN_BOUNDS
>  	help
>  	  This option enables detection of directly indexed out of bounds
>  	  array accesses, where the array size is known at compile time.
> @@ -47,11 +54,17 @@ config UBSAN_BOUNDS
>  	  to the {str,mem}*cpy() family of functions (that is addressed
>  	  by CONFIG_FORTIFY_SOURCE).
>  
> +config CC_ARG_UBSAN_BOUNDS
> +	string
> +	default "-fsanitize=array-bounds" if CC_HAS_UBSAN_ARRAY_BOUNDS
> +	default "-fsanitize=bounds"
> +	depends on UBSAN_BOUNDS
> +
>  config UBSAN_LOCAL_BOUNDS
>  	bool "Perform array local bounds checking"
>  	depends on UBSAN_TRAP
> -	depends on CC_IS_CLANG
>  	depends on !UBSAN_KCOV_BROKEN
> +	depends on $(cc-option,-fsanitize=local-bounds)
>  	help
>  	  This option enables -fsanitize=local-bounds which traps when an
>  	  exception/error is detected. Therefore, it should be enabled only
> @@ -69,6 +82,38 @@ config UBSAN_MISC
>  	  own Kconfig options. Disable this if you only want to have
>  	  individually selected checks.
>  
> +config UBSAN_SHIFT
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=shift)
> +
> +config UBSAN_DIV_ZERO
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=integer-divide-by-zero)
> +
> +config UBSAN_UNREACHABLE
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=unreachable)
> +
> +config UBSAN_SIGNED_OVERFLOW
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=signed-integer-overflow)
> +
> +config UBSAN_UNSIGNED_OVERFLOW
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> +
> +config UBSAN_OBJECT_SIZE
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=object-size)
> +
> +config UBSAN_BOOL
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=bool)
> +
> +config UBSAN_ENUM
> +	def_bool UBSAN_MISC
> +	depends on $(cc-option,-fsanitize=enum)
> +
>  config UBSAN_SANITIZE_ALL
>  	bool "Enable instrumentation for the entire kernel"
>  	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
> @@ -89,6 +134,7 @@ config UBSAN_ALIGNMENT
>  	bool "Enable checks for pointers alignment"
>  	default !HAVE_EFFICIENT_UNALIGNED_ACCESS
>  	depends on !UBSAN_TRAP
> +	depends on $(cc-option,-fsanitize=alignment)
>  	help
>  	  This option enables the check of unaligned memory accesses.
>  	  Enabling this option on architectures that support unaligned
> diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> index 9716dab06bc7..72862da47baf 100644
> --- a/scripts/Makefile.ubsan
> +++ b/scripts/Makefile.ubsan
> @@ -1,37 +1,21 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> -export CFLAGS_UBSAN :=
> +# -fsanitize=* options makes GCC less smart than usual and
> +# increases the number of 'maybe-uninitialized' false-positives.
> +ubsan-cflags-$(CONFIG_UBSAN) += $(call cc-disable-warning, maybe-uninitialized)

Is this just to force -Wno-maybe-uninitialized even when W=2?
-Wmaybe-uninitialized is already disabled globally after
commit 78a5255ffb6a ("Stop the ad-hoc games with
-Wno-maybe-initialized"). I feel like it might be worth a comment in
case that changes in the future but maybe that is a bit much.

> -ifdef CONFIG_UBSAN_ALIGNMENT
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=alignment)
> -endif
> +# Enable available and selected UBSAN features.
> +ubsan-cflags-$(CONFIG_UBSAN_ALIGNMENT)		+= -fsanitize=alignment
> +ubsan-cflags-$(CONFIG_UBSAN_BOUNDS)		+= $(CONFIG_CC_ARG_UBSAN_BOUNDS)
> +ubsan-cflags-$(CONFIG_UBSAN_LOCAL_BOUNDS)	+= -fsanitize=local-bounds
> +ubsan-cflags-$(CONFIG_UBSAN_SHIFT)		+= -fsanitize=shift
> +ubsan-cflags-$(CONFIG_UBSAN_DIV_ZERO)		+= -fsanitize=integer-divide-by-zero
> +ubsan-cflags-$(CONFIG_UBSAN_UNREACHABLE)	+= -fsanitize=unreachable
> +ubsan-cflags-$(CONFIG_UBSAN_SIGNED_OVERFLOW)	+= -fsanitize=signed-integer-overflow
> +ubsan-cflags-$(CONFIG_UBSAN_UNSIGNED_OVERFLOW)	+= -fsanitize=unsigned-integer-overflow
> +ubsan-cflags-$(CONFIG_UBSAN_OBJECT_SIZE)	+= -fsanitize=object-size
> +ubsan-cflags-$(CONFIG_UBSAN_BOOL)		+= -fsanitize=bool
> +ubsan-cflags-$(CONFIG_UBSAN_ENUM)		+= -fsanitize=enum
> +ubsan-cflags-$(CONFIG_UBSAN_TRAP)		+= -fsanitize-undefined-trap-on-error
>  
> -ifdef CONFIG_UBSAN_BOUNDS
> -      ifdef CONFIG_CC_IS_CLANG
> -            CFLAGS_UBSAN += -fsanitize=array-bounds
> -      else
> -            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> -      endif
> -endif
> -
> -ifdef CONFIG_UBSAN_LOCAL_BOUNDS
> -      CFLAGS_UBSAN += -fsanitize=local-bounds
> -endif
> -
> -ifdef CONFIG_UBSAN_MISC
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=shift)
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=integer-divide-by-zero)
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=unreachable)
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=signed-integer-overflow)
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=object-size)
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bool)
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=enum)
> -endif
> -
> -ifdef CONFIG_UBSAN_TRAP
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize-undefined-trap-on-error)
> -endif
> -
> -      # -fsanitize=* options makes GCC less smart than usual and
> -      # increase number of 'maybe-uninitialized false-positives
> -      CFLAGS_UBSAN += $(call cc-option, -Wno-maybe-uninitialized)
> +export CFLAGS_UBSAN := $(ubsan-cflags-y)
> -- 
> 2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004070847.GA1650%40Ryzen-9-3900X.localdomain.
