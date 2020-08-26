Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI74TH5AKGQEGJ7U74I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id C666125337D
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 17:22:13 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z4sf308226pgv.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 08:22:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598455332; cv=pass;
        d=google.com; s=arc-20160816;
        b=QSAghh5BjdKX/SaaE6tJyf79K6zaMOmNSoX8+xurMDAFTXLsqxmEVyl5q4FDXfCjob
         gOc0kjAZnz1BIxhvmfhScSUnFcuJdUiWajga+tfcRPKI6U8CE1lt9m7fMU6kYFfZjPpZ
         kR0mh8LDgUpMcfzLePtKwibFC1TtxDKEB7NvM3BsOkQrXm6kPjBgXtYMjgdoCcr6bmVf
         F897ed8Ofo1IjJJ3d5ucLFJFHdvgqZ+VWqM/95DO2MpbZH+DxpPyG0T6r5NkF+ZSnBjN
         chPqVQF3N/9/QoJtzUAsV5TdU7uw74uMwfV/8o6x8NLoTJWAlakoY4QNlCrKMUV1e9br
         uQLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZvOivWI+AOJptFt72hq+PzzrYhs0LGpP+x573fCM+jw=;
        b=phyNx/4xsv/LwAAV3VpowcJeK3NMmJ6Y581RV+dXawlVIjeEvloUr6kmVn/VZUL4dN
         M0I/wB24h2TXj8wDZWK4sW3qyOhcxm/WGpdaKL9WnDPoe5NY2jci4w/q+BovapMOqDz2
         B0p7zboO1kZRr/O7n62cXv+8GswBMwbHoNvanLFuv61VcRFyOp1aOuup+gMoiWVloNeF
         1xG1nJMhpF4v0sVytcRzJ2/7n0KEC+ocJ6U54xyCluppfNBteKrLDqPnB4aSfBe2jfdF
         ki35/XTZ1rAcX1/Ru7MKtiMvKMaf4zN3AL3vLqQH7rgPlMQCxHz9icUTvQtUyizw80BG
         +64A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GIGN8wX3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZvOivWI+AOJptFt72hq+PzzrYhs0LGpP+x573fCM+jw=;
        b=MLuAC4T7OL0AiICHXyMezkPcNNQ8ex86VdMMVUKYGhwWpLdzIlQmGl1VBItYVCZY3n
         m66OUCBa8OdsW/myLrF9sYF+HPAPV1k9vDhQNqXeg9+UzKqTpcjZ62mFuNQVa1ZTclow
         U4q8fuDRy6ZbBeLPsprUAcNkHd7CXWu2EEN8DjoTxIT3Ps7PT+HgNlgrYhVKh/pcUHig
         VhrTRmgjUONo5ERdGeX7jYy1QaUr4Z3fmRp3FAYjZbq4LFPKMP9WSu2fJ6FkKlrluFAL
         cY4TRHyobkkzmk86l2Du/dmO6PApiPY84M6rOZX/eDDGWDJJZg1YEnQsmao9Dtgqxlwp
         imgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZvOivWI+AOJptFt72hq+PzzrYhs0LGpP+x573fCM+jw=;
        b=E+cH3SjzJywh+t2O411anST8dS3tKqjVr9jp7FfL9lbfYbyAtCvYsEyxiB0mui64Vw
         6Oa6Pli34Yfrg9Cw8xgbjPUj1kqkKLbstOZr3t5ap9j22L+IIu6G2v2C1C3tKveL/0WZ
         nvgCqbEMB0dP0ZEWSGUfDHWvXEmYf7u57k7e8ZWGa9VLFxrY/OtcMQx/jSTjdPtr/83c
         HAg1LK7HVLCM0bM0JEKZaBZl3A0x9MfwQBTCJCqEOv9IB3OPJs/7EMnbOJgmrhoWfT1v
         R40IFUnoHHBJuysfQz15fsviNPEM0wqEfipM9hypJKAMI4NuMQH9ZF9W6ggeHe4gQsYA
         gysg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xo2/m0k8aAgaScBZrj/8SMZk0pobf80fee6iZmraq2XmSk4b1
	r0ueycvb+fwKuimCSHOD6vo=
X-Google-Smtp-Source: ABdhPJwpOrBGRD6D8qRs+BfUfvezMVgt0fmMKKW1GWZhwgq1K5/bC+DUx78IdEdEekJGxqZ9Ey4i5g==
X-Received: by 2002:a17:90a:8d84:: with SMTP id d4mr4736169pjo.165.1598455332161;
        Wed, 26 Aug 2020 08:22:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f1d:: with SMTP id x29ls1112250pfr.11.gmail; Wed, 26
 Aug 2020 08:22:11 -0700 (PDT)
X-Received: by 2002:a62:3303:: with SMTP id z3mr12648915pfz.267.1598455331638;
        Wed, 26 Aug 2020 08:22:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598455331; cv=none;
        d=google.com; s=arc-20160816;
        b=HmyEdmxnxyBSoLwVShss5aDY/41bFmY2eDEgMksDL0o793NWO4VTKFQNWv9NOoh4ln
         9gqrKdPywerRFq0nMm+4mCEq8JX9vdMoICo5bgEcDDfq5kjCZWvAUkFjMfrtmY69BteD
         Tozb5shnK0OCAO51JH6f6htDIZaOV6oyulteLnlAiewrOGVgLD9Aq0A2Ds5eSP6ndbAX
         6UPxqORvcPBYoRzw/66VsKMsG7wpuzw5DRZsR++oPcMwRY2bn86eUQngZ0aMSMCnSNkT
         7KMyiGUh/heHE3HhUQ9bxy74ymBGAhXKZWPOyLrkF04WEerW39yetrT+DLTYdh/1DKAF
         WrtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vtJDwZCH/3FF1e3t+ULJa3AUehUyh5L1H4fEzIfmn4o=;
        b=quNtetwFWY5dexFIelbbkznwG6qwkhe17efYLLWmBNonmI9rFHiJKwYjcF0GrrRO5a
         WleIloEBQNV2zHPe8Nt/kcdtZ2xSd6HJSDMRMS782o/RwS4HC2sVqTJqhuh6AQr6l099
         EpS4C3lBMdXInkBSzaNKhwNTWQvQEMvde3rkRDEGoj4xH7ZKnHoF5mlaYM5SoZw2TADC
         0qi2dZjAs0F25GieT9t6zrMGjbVP6EPW739zRGStjB28B4KDQOmRdQwBH6Jt0ZN4JnGF
         1Ss6DH6jlt48TZ95TV7ymefHV3bCNhPZyXoe5M2OYXmFHFetrHH0P3CJHGAG8pOsTLTN
         eRDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GIGN8wX3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n4si166618pgt.3.2020.08.26.08.22.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 08:22:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id k18so1148272pfp.7
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 08:22:11 -0700 (PDT)
X-Received: by 2002:a63:330c:: with SMTP id z12mr11048145pgz.46.1598455331205;
        Wed, 26 Aug 2020 08:22:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ck3sm2319962pjb.20.2020.08.26.08.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 08:22:10 -0700 (PDT)
Date: Wed, 26 Aug 2020 08:22:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org,
	Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Joe Perches <joe@perches.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <202008260821.CF6D817B36@keescook>
References: <20200825140001.2941001-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825140001.2941001-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GIGN8wX3;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Aug 25, 2020 at 07:00:00AM -0700, Nick Desaulniers wrote:
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.  `stpcpy` is just like `strcpy` except it
> returns the pointer to the new tail of `dest`.  This optimization was
> introduced into clang-12.
> 
> Implement this so that we don't observe linkage failures due to missing
> symbol definitions for `stpcpy`.
> 
> Similar to last year's fire drill with:
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
> 
> The kernel is somewhere between a "freestanding" environment (no full libc)
> and "hosted" environment (many symbols from libc exist with the same
> type, function signature, and semantics).
> 
> As H. Peter Anvin notes, there's not really a great way to inform the
> compiler that you're targeting a freestanding environment but would like
> to opt-in to some libcall optimizations (see pr/47280 below), rather than
> opt-out.
> 
> Arvind notes, -fno-builtin-* behaves slightly differently between GCC
> and Clang, and Clang is missing many __builtin_* definitions, which I
> consider a bug in Clang and am working on fixing.
> 
> Masahiro summarizes the subtle distinction between compilers justly:
>   To prevent transformation from foo() into bar(), there are two ways in
>   Clang to do that; -fno-builtin-foo, and -fno-builtin-bar.  There is
>   only one in GCC; -fno-buitin-foo.
> 
> (Any difference in that behavior in Clang is likely a bug from a missing
> __builtin_* definition.)
> 
> Masahiro also notes:
>   We want to disable optimization from foo() to bar(),
>   but we may still benefit from the optimization from
>   foo() into something else. If GCC implements the same transform, we
>   would run into a problem because it is not -fno-builtin-bar, but
>   -fno-builtin-foo that disables that optimization.
> 
>   In this regard, -fno-builtin-foo would be more future-proof than
>   -fno-built-bar, but -fno-builtin-foo is still potentially overkill. We
>   may want to prevent calls from foo() being optimized into calls to
>   bar(), but we still may want other optimization on calls to foo().
> 
> It seems that compilers today don't quite provide the fine grain control
> over which libcall optimizations pseudo-freestanding environments would
> prefer.
> 
> Finally, Kees notes that this interface is unsafe, so we should not
> encourage its use.  As such, I've removed the declaration from any
> header, but it still needs to be exported to avoid linkage errors in
> modules.
> 
> Cc: stable@vger.kernel.org
> Link: https://bugs.llvm.org/show_bug.cgi?id=47162
> Link: https://bugs.llvm.org/show_bug.cgi?id=47280
> Link: https://github.com/ClangBuiltLinux/linux/issues/1126
> Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
> Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
> Link: https://reviews.llvm.org/D85963
> Suggested-by: Andy Lavr <andy.lavr@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Joe Perches <joe@perches.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008260821.CF6D817B36%40keescook.
