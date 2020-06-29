Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4NC5D3QKGQENQC465Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C6E20CFFA
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:06:10 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id v20sf12083394qvt.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:06:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593446770; cv=pass;
        d=google.com; s=arc-20160816;
        b=FibLiq73/W4qD0oCrkuLe0LiZj80NyD1RpBWTWXbI08InZNbc2boMZisK+9UU7/vzs
         Cs2KQj/NPFxD8dkJQqC8VHPJJwgghrDSSoyetTvX5rU9ExuJ7TB0jlgdeY204ch+trJq
         LJJQ0Wwz0SBuY5ze0ke5H+TwwfWpsSTpp7ioZB6WbigfVUYnFcc5Zvv0FedsjIgo6GRS
         ba076oMKFVo5BNdzCbQJ80eCx61fza9oWtjZYy6IewuSv9ZhICcePmXl+q0HceER9E3l
         mCHvcKIs1UuS96JCsU7Ay4ebKih9eAoGz5DpgPpDbEioBwvFVnWdoCQK00mToVXSVBQB
         EU9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KnDWKGUiJmEPmm77AiYo+COQ6TkK4D6QQsR+7mMJGqw=;
        b=zKxTc3Uf7neB7TxrHIhJnX2VWmacekY/6WBPtldsSvaiJM4ydTcrWn/Q9SntNkRdk2
         QW4JZVTUoxbTFTad95IwMRugmS7ZAxKQiyVayATMQwTj348k1D1CQvHCgzcpSLfmIOkI
         11qVVC86tD8VuXTg7SkZlUFn9VE5xVfX3BNMHd8YJvgECEJBEp7Y2orMXvbSRSIa/kdu
         MOPtLg1PFlvGvPo46xhbZq55mmBYBwSsEeSwVaaUMJdU+pjxuLJKmA09bcFpYtaDM/Pt
         JqVZ/qfDx9zRgm68xne8epWXBkyM7MkGhYnpHbJ4gdNlYo3VcabHZC2VzdHIF4K0Jo1v
         QlSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="oByy/EXs";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KnDWKGUiJmEPmm77AiYo+COQ6TkK4D6QQsR+7mMJGqw=;
        b=XL22plt8RcLf6Low72za3cFzFeme+yfWuymyzDRLxKJ7q8fhpJptc7ex9imAe0ZgxV
         hVXPzA10RMotKCFVOvIg/VR28L4e7F3gw5sZq7JsoIjsfER+Fo8fooTkSJc7qLi7kxqf
         HmvKK3z0K0OnauxDTzV9LUUoCDZNrWfWxS7nLlh/UMTGMj1ZmWokL87xJ+cbn/CyqpFT
         8fkP3wVdjD/cogtCRT0Q8bX5jCstIwEKsYDZXXc05yhiX2vSAm4fG/ZIHf/6sYjxdJXB
         WtdGpOPCho1xt0a0rYFb9js48bWfsVhG/4VyRkRyxMTFHvE1cVo0xaZZKQp5WjG9vRz/
         tskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KnDWKGUiJmEPmm77AiYo+COQ6TkK4D6QQsR+7mMJGqw=;
        b=md9Iw2v8KkV7II/EHtnXlpeVptYJORRNt9HC4LVehaam/EgMxO2lj6HR/pKpisgi7+
         5/hHoi26PLKaoozFxy7jCp0zuDiKperV97oiiOb5WD/DqeKtwUg0bSMWVmv60WbrjqRs
         w/Fx7FpuTyCpaD7dL2uA4MyiZpsILt9hL4FpkusT6sv904Y5+zu2L8WYXoC9HGeykfk4
         YZOe7U8hfX6m79UXw8/zDt7iWKUFaSC6JHB26X9R8O7Iwz1E3Uyl95v0Oy6qeRhXKsEn
         HosASGoLe1YHoLFAem47zHk5f6CRzQij96WNm6hcsUuEb35WcK14dJhCWUnndUG8KnOT
         qZwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532s0UeSUDpX1fUn0gFKbX3/6AsdYur+M4ylOliiQeY3kJibBqGx
	65UugnSA3bXyzBTOg4suXJ0=
X-Google-Smtp-Source: ABdhPJykwtliK2pszm+cSXuP7/QLnBYAPalgK0vnXBwwMBFxm4HTqA7lEfu2L0RMoAZmVZi/lm233w==
X-Received: by 2002:ac8:19c6:: with SMTP id s6mr13089364qtk.269.1593446769928;
        Mon, 29 Jun 2020 09:06:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e415:: with SMTP id q21ls4678826qkc.9.gmail; Mon, 29 Jun
 2020 09:06:09 -0700 (PDT)
X-Received: by 2002:a37:af82:: with SMTP id y124mr15759125qke.254.1593446769534;
        Mon, 29 Jun 2020 09:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593446769; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4Pt56vWYk2+aiYfilPfh4Dupe504RtfA/vmgRJLL8m1bomggf3I9nEO8cbq9lelLe
         jUFVrafj4rwDtjKuu4KjVULtq+pGRbsOaC0HemHDvbGI2NJBQg2RJojp3paXPHlkWNzO
         l+72W+Isbu0FoJHwJfZQsSAtl3fK4PhGC0ApxjgcPgZxe2Q6fGIMldAc0zwWEZveVWHU
         xryljDbTVKZWBwuJB8i2G/eMta59xs+YjiDqDHcJzUM69X2B+vMAOTTLevFJxysdxqjj
         AKRSeGR/tZZDg41+WJgJSbcek53ZDv8mREQDiM1sPChMJbGRaBWxOBPgaPM8LJZhuss9
         VOOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hd2ztXk1vCQk2wKYG462cRN4nuwUe31pLKUP0eS2DPs=;
        b=fk3zYXS7HnEtSIfLQToATCQwIojqz/RqTYTz9YrNuM3ngH6OgwxIgkt6NkvyOLs2L/
         vEcq8bP4tPUX/tG3NmrAGIxWrnrRs7AnftNJWfXQmbVwY06xPL5iYkuCphYewp2m0I/h
         k6k4HoznY/a/yCbXFt3UpIYkXpBSKA4C6JLr5eWR3Rq1QgB11o8HZL5JaOceO5AAfYLK
         Bgy/nOBxUitdzJV6B9mjbOPTBL913R5vfEn7o8zLXuIJC2Y1hr+HQ6CJzaIXVvX1XsnC
         xFYZ0ppxDV2XcRQxuS/1rW5apGTV0RQj4i1QeODsRTV2ZZonaIV6ITdu5RbGqVfOAeim
         A4qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="oByy/EXs";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f2si8483qkk.3.2020.06.29.09.06.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u185so6057922pfu.1
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:06:09 -0700 (PDT)
X-Received: by 2002:a63:6dc1:: with SMTP id i184mr10942111pgc.345.1593446768762;
        Mon, 29 Jun 2020 09:06:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id gk5sm62829pjb.4.2020.06.29.09.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 09:06:07 -0700 (PDT)
Date: Mon, 29 Jun 2020 09:06:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/7] x86/boot: Remove runtime relocations from
 head_{32,64}.S
Message-ID: <202006290905.7531731A@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-7-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629140928.858507-7-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="oByy/EXs";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Mon, Jun 29, 2020 at 10:09:27AM -0400, Arvind Sankar wrote:
> The BFD linker generates runtime relocations for z_input_len and
> z_output_len, even though they are absolute symbols.
> 
> This is fixed for binutils-2.35 [1]. Work around this for earlier
> versions by defining two variables input_len and output_len in addition
> to the symbols, and use them via position-independent references.
> 
> This eliminates the last two runtime relocations in the head code and
> allows us to drop the -z noreloc-overflow flag to the linker.
> 
> [1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> ---
>  arch/x86/boot/compressed/Makefile  |  8 --------
>  arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
>  arch/x86/boot/compressed/head_64.S |  4 ++--
>  arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
>  4 files changed, 16 insertions(+), 19 deletions(-)

I continue to really enjoy the smaller code. Anything that makes
mkpiggy.c smaller is a win. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290905.7531731A%40keescook.
