Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZFIW75AKGQEDRKO66Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C835258711
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 06:56:06 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id lx6sf90476pjb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 21:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598936164; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWm238bKWAQpSP29OHcm5Llg1n6tBKEwG/W9pVf144PtNB6fC8HAFYuGPx1TjGzowV
         E6BtxluSclwMQY/94expojFPNQZUov4wzKuMr8E/xhn2GBguj3TEtN2KsCrWBGYnh8as
         O7PHs8pgb50BWITNugpOfXUvucfZFqB3MFsZl4CGNwggGO/Ap9mRjRqiWuzl0VEc0kt+
         MUzeCNUMD5KTIC2NnqfKjvVvviTm3HaXCLV+JciIEqxFZK1NJomlAPUb2hDS35cZ82Za
         Fv8R4EakMitCAo2L6OAwNxjPOu9YQr0zKpEyKR7K4rCoBqm7SujIEKLJ+IKeyCm2G1ur
         u96Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=+P083z5KRtRNUeolOpIeEr08WwVXPkXWGaqBPJpV/2k=;
        b=IZKGCNAdjTQz/zpWUWsKx0ha6anFtUyJZpf6OrFLk1aHQ1ty3VvUU4hoBImz8qOusS
         pRBKrS0bQjw3eXXARubibqXlqqDOwTUnRbwmjfin1q6U4ppadcWhYwH0ISSveB3PSHcg
         JWoGiQCJFGbQUDnvaQZNcC5Y8AdRHHRP76G7LR3Q/GN7kYeHLiX1CW62j+a3wm9UyKsa
         e6roP5CUiqXz4St8p8yijfLmRQvlCVKf7iFKVPbSusz5YeL/KPO/TJgRHviSqfth535d
         yqXCSdvDhFogoK96xhYsY6W3aUMCkndyzLpp3dA3Mn2SZXXjOuTLKQub3Nku9oYXilAU
         arDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lHEFgC+R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+P083z5KRtRNUeolOpIeEr08WwVXPkXWGaqBPJpV/2k=;
        b=o0OfnfoLaWoUQgHJKRZ+F0d+Qj7GwtgQJvSAeLPaGmFqbj1N8gLeYl3w5Ed0KIT7rq
         s21E50x/dlBXjtEg4ZolL5dAnWCcIW9XKXgPmb79BI3j+EfwIQf3k5fiJZc98V8yh8eM
         7J+HRDKBqkwXKUF+oSwXvNTspBx3BsG1+ZZ10JrDlM5mFyyXR6VEtKyFmMlf5OXv8v4v
         O2HM6Emp1+IgbgNViGyhQsFjudn1fQLO1337E/WFfGTAQdUc7Z5ywXY2V6ow5Rt2i33J
         ggJTIZ3whKLSHkSAFdBMKBQSxOFdGmmKBSzZi5HlC/T2w6xfl9L5qH/QehQnsYhxgOvE
         W6ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+P083z5KRtRNUeolOpIeEr08WwVXPkXWGaqBPJpV/2k=;
        b=bzSYpn89+SyYL9cQzA8LIP9a2XrYoJPEMl6WXHSMiQzU9ZEWjlsaLoSx2SXEy1loKB
         +FwdH0M8E4Hn/KrMc7rPe4toTZic3JfsbsxlNP2hwjbRAN+xPhHo0zPQEo4crbRtqYdz
         IEHOh0397ASEG8juNFo4P0wYMGnD8kUE6M0cMXbzM5NCRgtqoCeVgnRnpawnaiVwGa/F
         pjCA859Q/r8gruVYRwygW1ZWcHNEkLCWMiZhvYlt+sODRnEaykpbnd6M+ZhwTWIx1PUa
         cWTE21l9z8EfqI5Z88ShtHpTEoM1pGxsNRGGkV5KMPjnIKUGATkyAvgXTnOJYc89VLfw
         5dTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+P083z5KRtRNUeolOpIeEr08WwVXPkXWGaqBPJpV/2k=;
        b=A0NlxxB88kzVMDxD/yxGSZHPd7GgDfBHuzo1dis5Ji6QknYwU4rmXOazMffnqgjLYT
         Nz/mHSWf/iDqSJVNsPMywNSWNUUOwLy3ULpQMwq97siS83uXgDHVCB2Ejo8qpDH2bhrW
         p89WcPteMx5WV8JLj7L5PpVEHit6Bb0gdjuBWgsGH/CrTSuiyKntAn7h1/uAY08MCusI
         wHBkVsQpp+GcjqE9yVM69w9iAhsYlt/cSlxlW/si9MeZMBX1jvbQmT6xfT8+du0Wm88q
         Ss2BoS2KbLZ8K3L2mEY2Zym98uySBxAfiLAB3KwMZlMAXJ40hGTNnhjZMfjTsURp46lo
         NnMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZApYGICI1K++wliOmLTUn35SpIA87eVRdKSnbzmuHxgLkaNP/
	tXtwXMc4GsznbRGK6naujsE=
X-Google-Smtp-Source: ABdhPJx20brBW+V9JrAtVsY0D1aoeej4p/oslHhs8Doe7ZCeTWGaV/4tAQSyyDEppUsuORr+aAOkMw==
X-Received: by 2002:a63:d157:: with SMTP id c23mr4050549pgj.281.1598936164809;
        Mon, 31 Aug 2020 21:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384f:: with SMTP id nl15ls3400pjb.0.canary-gmail;
 Mon, 31 Aug 2020 21:56:04 -0700 (PDT)
X-Received: by 2002:a17:90a:6a0d:: with SMTP id t13mr154798pjj.208.1598936164270;
        Mon, 31 Aug 2020 21:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598936164; cv=none;
        d=google.com; s=arc-20160816;
        b=saxefs8d3Pc6nXpDE5j9B6hIsV6b+BxxlpWhHd+fScKfl/pd8Ee02+11PGKL66arnW
         CS9SIK0Ae1Wc6zSMPAOJCke9P3G9b0hbb64L0ztcJFAvAaxACRTI7UUDEDnz1jagwMGC
         HqeHMRRKJtn4x4i98VoZ/iTpZs1Zm2uIIZEb8he9JT3L+D9Sro1o7GP6qnxpNqmhDfGY
         g+9nW6NPAztLVHFmwatSeFFMBQHqfrEv9GBwsVHeNnchKYIyfPnsuiKZMhXzn7ILsaCj
         EmkTHtgGn7QoY2BBFNe6PyA8dw9YvD8/yjCCMhf6qxZjOVr7+CwyNhduPdYT8M7tGr80
         OtSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cpye1iaPTXp5G0yIMoK4Nn+LVQHWfQN0vtdnem2Drw8=;
        b=DUgeHzUKk6T5CfME48Sqa5I2uLBxzNmbw6y1xfnIwVNG8+2vEzHjm0hs5FBhqqzgk3
         BvFTv6cwDBtqpWOea1ccTE92U9gSdVokR7NkCS+wxw5ka9XH73j6pn+7EyFqaJakaIIW
         geVwTpTjZCytHoAeKaeaRlmR09hkBDYnjTQbeoCuMwnoGs5Lw6DUV54kTPCeRHGo9iR+
         KsAIAdjXaHd6fsYtoi2zluD7K/SQEuuCVHnX+le1nomxcHN+ywM9BDe2mr3mOH8fP4iR
         59k+d4IB0ElX7qA4SECENviUaMN4Pu3nZWeqmFJRflULNfcxpiE8a1kGhxVmOjLR+MjK
         7nWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lHEFgC+R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id j4si5839pjd.0.2020.08.31.21.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 21:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id t20so27555qtr.8
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 21:56:04 -0700 (PDT)
X-Received: by 2002:ac8:376d:: with SMTP id p42mr4787879qtb.288.1598936163381;
        Mon, 31 Aug 2020 21:56:03 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 203sm227897qke.59.2020.08.31.21.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 21:56:02 -0700 (PDT)
Date: Mon, 31 Aug 2020 21:56:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/7] Revert "arm64: vdso: Fix compilation with clang
 older than 8"
Message-ID: <20200901045601.GC1561318@ubuntu-n2-xlarge-x86>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
 <20200901002326.1137289-5-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901002326.1137289-5-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lHEFgC+R;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 31, 2020 at 05:23:23PM -0700, Nick Desaulniers wrote:
> This reverts commit 3acf4be235280f14d838581a750532219d67facc.
> 
> The minimum supported version of clang is clang 10.0.1.
> 
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm64/kernel/vdso/Makefile | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index 45d5cfe46429..04021a93171c 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -43,13 +43,6 @@ ifneq ($(c-gettimeofday-y),)
>    CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
>  endif
>  
> -# Clang versions less than 8 do not support -mcmodel=tiny
> -ifeq ($(CONFIG_CC_IS_CLANG), y)
> -  ifeq ($(shell test $(CONFIG_CLANG_VERSION) -lt 80000; echo $$?),0)
> -    CFLAGS_REMOVE_vgettimeofday.o += -mcmodel=tiny
> -  endif
> -endif
> -
>  # Disable gcov profiling for VDSO code
>  GCOV_PROFILE := n
>  
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901045601.GC1561318%40ubuntu-n2-xlarge-x86.
