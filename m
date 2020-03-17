Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB4OBYPZQKGQEJR6KWQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE4B1887A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 15:38:41 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id j13sf7993901lfg.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 07:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584455921; cv=pass;
        d=google.com; s=arc-20160816;
        b=P2zmIx9m050SfZ3eMS9LtlmUf/Hwc/fVcUJdBGhJxfYkWmS7QaZWt7+e8bUg5JP0tE
         D6aoeGHKgD7tThyiWG+FxrVUhh+xx+TUBHBdl9wu/7FZb2EFwPUS9sxUFopymD9CzZzZ
         OnypEy4TT5cB3yGXgBV7+jW/ennva9i3MhTHa82AWVnlJ4z6YFLF0odhptBASInJ8RAI
         IGiTG7A6sAGUpfdykvZpBhRtGFhv6Bzb4acKHP0P/GhXf/RAmq5cr64wkGKcI2O+Phcg
         DpYab0ptY8GKZiIL1mzechpeLXuPVLgfyUKpDkump22lvoFBcN30k47MduE3iGunFSXA
         XsAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=O2cSoyOY0P5o5sd20kPUv0bQ7rUO/XhSpDQTADzYaMI=;
        b=P+z1Ie/Dlq292RkHS01j/ARQgzN4RaEhwyNCQpB6YjQZwPlQyvgSFDyfxCYfGA/uuL
         jUQZcMuZaR60moT653BFouGHH3u2CvTwz2LDGZvZaKjP99swg9GqOFZw4atKvSV2dp8Z
         YgQbSSJP3k/5RGtXERxmUR/f1MVNhJjJuakXDEtIMPQCYXfJcUusL6DCKYqOPC7DcpH+
         2+c4+gu/Lsq5Y7qjq9jJUWagEpcIJ5qpG6LYzJkmEHnK8btgX6kPK3svOXcUP6Hz4U7f
         0Cq7oIUjMNd0Xc17vsGVw0m+CPYeTdzr5b2jGFzK6Afrt/Gk2KaManMIP1hsHZkcoFNa
         gLFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O2cSoyOY0P5o5sd20kPUv0bQ7rUO/XhSpDQTADzYaMI=;
        b=XHyHsK7sy6Sg6mj71Oo9jv8yB0FwtW5z4mkR5tP57rPw92oL2zR7mfaFuNPAsToCBd
         lMfgD7Z77T0S7AK5iq7gpSV0fY1l2f4UiUGwwrF64GLek9h6/0IY62Gx+Ty1E5VL6DqB
         pZ8YHBOm/fP+5tU98QZhMK5wKN+PPyjBIIdQDUatZsSWiv6rduNzSGIIEg9iXjz1ntWg
         QSJL0P33IIIXw7BGEHth7BPNphsT+GItvnGyGvOxi5xH9pFrVf9dH33iZBZc6Gu75Ieh
         olwFlLbJL1ZUN/TMucd1GOIFDYVQg+cDChZwIdPF4Qp1pqdJKb/I25DiJYxdbnkxO3Lb
         l+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O2cSoyOY0P5o5sd20kPUv0bQ7rUO/XhSpDQTADzYaMI=;
        b=CimbGuncloao4w/Sa+1V9vmbnIzn1GVQ0umr9i8EXne8WEPkGa9JGL5e5oG1RaYi4h
         pXy+yPf9TnEPcqNVV8fmQFTJiNffCGQiPmWVoUvg8NzmMhwqTcQEchisc/yiwPSP/2Z9
         xCbiBxFx6iQ6pWRIu2K/7K1H82KPUfOubQtBEm4p6BvKLzOrbxqgi51tPF0Qa23Lo1Yj
         zB7wvBxtrF5FDZagy/75Y4iJb0H9kedD0OTSZu/QB+08QHvA8Wo/03ixahrTpXZCt5Eu
         FvNy52Uq8PrPG74ydRwJJWjc8OpZRKdy/Bf4d19fiUEhzlu18NyaqJoCJMffMg2eVUED
         aOFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Rki5gQTqss+tEzyFaTIyB1PQKyMYpX1YKgYREncrP+uogqrmx
	Ypp9oPuzAP+3LNDrpEfXfIU=
X-Google-Smtp-Source: ADFU+vsAedm0oC/vBbxq2zkhuSCHBWX4kx1VwSGua+4DcDt1yHbCe/ZpL79efbSCLG4l9bB1ox02lg==
X-Received: by 2002:ac2:5598:: with SMTP id v24mr3011912lfg.139.1584455921099;
        Tue, 17 Mar 2020 07:38:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4bd6:: with SMTP id y205ls3172845lfa.8.gmail; Tue, 17
 Mar 2020 07:38:40 -0700 (PDT)
X-Received: by 2002:a19:f601:: with SMTP id x1mr3116257lfe.55.1584455920285;
        Tue, 17 Mar 2020 07:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584455920; cv=none;
        d=google.com; s=arc-20160816;
        b=vJIJJcXc5GAbdxk4Z0Phvt/LUrW9jDVasBcJSBhU4CoLfY/igTbQxJjETt2SI2Do3o
         XvSkdw/7zAn1EqJoSNPo3zYTU9s+KC2F1ZJBv908oClHX0VuPhjWSvmxZuaiyupXRMqp
         h2cOFedHjyIR80q7dSzZTxWmqeWX6Dl/Q5H/VSYywfe6lOi9AkBnWatVq1FtozlbUrBc
         D0fetRzy9vGD5Sma4PQgtCI7yE5rvulw29bV0iI+PN7FhtYDZgcwsMQSalx0y78BBmRF
         DZUVHV5l2cuNVdJG76H9tv6cwGQqCFvkDII2xZUlj5K4sbr29zcbc8fLukPdlaWu6c6F
         x2Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ztxFYiCI8Q0okDbw9Jl7RDsEpr7dBhNkFjTaGNBBnh0=;
        b=bsrRndlGQ/DaBvehZ8poo4YXYZYmb/4hM0WP7v/etIUTji+zxDshvFdkOvFOIL6k3V
         vYm4Qr5X+vZ2SfduL243Nz2cF16a+frGFIBvb08Y0kYGI9W+QOSwf9/es6i3cEV8stJU
         0Y5SaSLo7rAYLm4R00TDVYPQGOqllnBR4AIjzjOeMGQEZoHBMBGEpwAIbjU5sgJ7mAfm
         BceQf+R6VvsOfKQnB11xMG81usP+F2WfYFaVDcM7zvQ8g2gIQYv5B31nxLE0cuilUYPm
         O+J4OfyhYbmYbbkxcO6aYwqwZoaPpAKeyAdgNITodU2NP7QI8mSKFViG0RRieu2gbdDx
         YRtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m11si184358ljj.2.2020.03.17.07.38.40
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 07:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19D3630E;
	Tue, 17 Mar 2020 07:38:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 241AA3F534;
	Tue, 17 Mar 2020 07:38:36 -0700 (PDT)
Date: Tue, 17 Mar 2020 14:38:34 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200317143834.GC632169@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200317122220.30393-19-vincenzo.frascino@arm.com>
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
> index 54fc1c2ce93f..91138077b073 100644
> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
> @@ -8,11 +8,14 @@
>  #include <linux/time.h>
>  #include <linux/types.h>
>  
> +#define VALID_CLOCK_ID(x) \
> +	((x >= 0) && (x < VDSO_BASES))
> +
>  int __vdso_clock_gettime(clockid_t clock,
>  			 struct old_timespec32 *ts)
>  {
>  	/* The checks below are required for ABI consistency with arm */
> -	if ((u32)ts >= TASK_SIZE_32)
> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>  		return -EFAULT;
>  
>  	return __cvdso_clock_gettime32(clock, ts);

I probably miss something but I can't find the TASK_SIZE check in the
arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?

> @@ -22,7 +25,7 @@ int __vdso_clock_gettime64(clockid_t clock,
>  			   struct __kernel_timespec *ts)
>  {
>  	/* The checks below are required for ABI consistency with arm */
> -	if ((u32)ts >= TASK_SIZE_32)
> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>  		return -EFAULT;
>  
>  	return __cvdso_clock_gettime(clock, ts);
> @@ -38,9 +41,12 @@ int __vdso_clock_getres(clockid_t clock_id,
>  			struct old_timespec32 *res)
>  {
>  	/* The checks below are required for ABI consistency with arm */
> -	if ((u32)res >= TASK_SIZE_32)
> +	if ((u32)res > UINTPTR_MAX - sizeof(res) + 1)
>  		return -EFAULT;
>  
> +	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
> +		return -EINVAL;

This last check needs an explanation. If the clock_id is invalid but res
is not NULL, we allow it. I don't see where the compatibility issue is,
arm32 doesn't have such check.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317143834.GC632169%40arrakis.emea.arm.com.
