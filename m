Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBE4T5CBQMGQEDVI5TFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DBC362AAE
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:02:59 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id t11-20020ac24c0b0000b02901aa03303b72sf4386260lfq.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:02:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618610579; cv=pass;
        d=google.com; s=arc-20160816;
        b=DUavktkMhZAyffM7xjPWsXJozNDxkswNid8UI+23S1hZUwkyahWwzi5r/nuJcDKiP8
         EPEyNiWf+loA8+xaqeMvJmYxOh2Om6d20TqtRUq4wHzDLoe5WnjLBJtBkdhtF87NMQmr
         3zvJMlNem01AK/R1wmDV0O7KYbhrAxmgul86IJuseGqZtTyDhwyyVmXfZVErrOODYjok
         pbOqSZGKxKM8Osib8Uwy5GBwBoCdpOQx6FJKcHZHOM4qfd+o1p1S/EnFCVHKWnhtGS9R
         +ZJU9Vlq51k3m+WEsdK2Qu4AswL3MhHRC9oN7+X0Ht7uG9JdmZSHcvgatu3zhBe0Er+p
         U2xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6ZPrseyjSaNsUbRt6jbPYxW+bvt5GaUQ/4TIVISejl8=;
        b=KpVfEw01ennuIAfuxnwnZHmS29SSbcaAcKtkS8aIR8T5zf4yNHekM2/CNLyQeq0nbF
         zafDeMbgI7GEb3LPJf2SuBZgH2MaZv4zdRBV/wAmi16AQ2yt/4o8MLAKmpqq+FdYeUeY
         IX/+pJBKuUkN1yqAP9ZqLvQSGqGR9i0XijpdcCG5eRvdBiMVBBwX8tbbuTdgm6JaDuoG
         ZUnkMONNppNjtDESLb97H3G8zUQioKrJwuo3SoRe4sltUKWQTayWQnpmt0T70J80qOCl
         /5ECYJmkTIlt9iq01QUdUsMn4o9ULaGMi8W2go/X5IIktvHoA2hCniQ7Za+eJ4BSJlrO
         OEsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Kr72fvVh;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6ZPrseyjSaNsUbRt6jbPYxW+bvt5GaUQ/4TIVISejl8=;
        b=g9e/1r6LZ9EkJzAq/qGnMEzGT4qAkPlcNsV80HHxsdTiERpwlm1SZLoM6JHUo8bOGS
         XAWjWSrz0qd3QuMOlzAtGVP4cigs2f4zQPNXDD15qCGLj+XsSHUeo+XPZs057Nn0tLYh
         aOt4PkPy9g5LIth/BofaLSWekimywVV08QvJrzWxQPHvGLiPQLEYTNif2PPF7liwqE4B
         uVJEozfTlRVDvfpd76nn6EGs+wnCZ6YsRnZlsyXKjNv7W55N+IZHdPIZwUa76IXSNzCD
         oNDhqVwerDop20ISJzNBTuG2KLZexLqJcTv0dxvkZxj6c+uuMNuqF9i/MkhILUe68TaU
         fP8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6ZPrseyjSaNsUbRt6jbPYxW+bvt5GaUQ/4TIVISejl8=;
        b=qcqkx9x6bXuRLid7kwIHjGw8Bt2ZHdcaEgEUtrxV6HQSYqQ/YAkdQIQ1ufubFBnRdP
         Uchps7W/mKcUip2qmQcNj2cmgpLnsAdX1FA56IhTfekrdJtfqEVA3zFOG8CJGFxnBk7N
         wTd20eBRt7S1TKJL2xNzPwXCVA+ZfT640Wrs7/WlIUZfiH6xoDTYQYaTi9eYhVjlHpiK
         1AaAhriB8jsaVdc3AmmJ7mY/Up3yWhI1E0BOz7KwKUCNoIRuWdZqM0lIy85apO9e8iAq
         Q75w+EWCiaG8PpLUR/c/CSJoy3/ejf3YyobHASmPnyRmIxjsAbOmm+YeFVEh304jDHy1
         XTvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZlujdmFvORKX9uRByB648Qvj337E5g8EWsPik8vcriuA3RxFw
	ZXnW3tHqjBudxpiAcIwm0qk=
X-Google-Smtp-Source: ABdhPJzYCx7IM6jeMNNknMVDVF9J1wPtA4e6T54gpHoiNVB8+caXjBMxMyTw+6BAr4DEjQdEOJzKPg==
X-Received: by 2002:a05:6512:a8b:: with SMTP id m11mr4256933lfu.646.1618610579458;
        Fri, 16 Apr 2021 15:02:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls1847804lfv.1.gmail; Fri,
 16 Apr 2021 15:02:58 -0700 (PDT)
X-Received: by 2002:a05:6512:3f93:: with SMTP id x19mr4296031lfa.182.1618610578405;
        Fri, 16 Apr 2021 15:02:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618610578; cv=none;
        d=google.com; s=arc-20160816;
        b=ou9ViV32zsdisb0EY3sJzpINpz6oGO6gKv7gKaCuZfVF3Nfs+XdqRfeES0uTqlomif
         gMC5JGxmIurXfu56m+evFWoNnEEJ7kacbd+0RVoGp61ydkajIQ+8eGc+dub24TQYaR+e
         SI1hgIwGw+7iDc7UjHeoCLFb5uY+ehvhdYxpn726hNbYrRbd482T69KV34Z+yXQXT5qJ
         r6u5zy3JzNyUJ2jXArCleC7nhyv1dj9dNraAsf4LF8ghamWbGR4AAzCrWuzxnLcgGs4W
         J5RFskeUsbd1huXQ6FFPawRwOxZBpLmydZqq1JpKOEWPDNGlmJ1mushBX9oD451ASiOo
         K/yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xjYg0xDtycStI5Xf/8hz7aYTl65N1uPG2uLpnjkXpVA=;
        b=aq5EQwK08sHHh13JN1o9Stl7ez3TrTPruEweyzxvQJlTL+axjQJFLbpKtJ7aUzxjQh
         n60v8Z9plQZKVIufiCnOEP+gT+o9ASYbQIbIFB114bKTeo/v/bb5bdwOHGJWvdE5z2UB
         +6KKACco/SHeaC5MONwz/HQZVsLgXabBEnekdvNZzfF09m4mJWvsIkD+kKwgBrMl+1fR
         HP+hb3raeHGAHj/1b+Ql76xarHXnL8G5RfuZRpjxq/bk+fz7RFrRRSqZxdWRd6wdurpe
         dSLrppxltp7WCI1LDwSWOvpzvHNSz22DMGAZYVoJzJZvOi5hSg46RXpHHmeAqnA4g63z
         SzQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Kr72fvVh;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id a10si353288lfs.11.2021.04.16.15.02.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:02:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0cc500329c23fffea6a903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:c500:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C05B81EC030D;
	Sat, 17 Apr 2021 00:02:57 +0200 (CEST)
Date: Sat, 17 Apr 2021 00:02:51 +0200
From: Borislav Petkov <bp@alien8.de>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <20210416220251.GE22348@zn.tnic>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Kr72fvVh;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> __nocfi only disables CFI checking in a function, the compiler still
> changes function addresses to point to the CFI jump table, which is
> why we need function_nocfi().

So call it __func_addr() or get_function_addr() or so, so that at least
it is clear what this does.

Also, am I going to get a steady stream of patches adding that wrapper
to function names or is this it? IOW, have you built an allyesconfig to
see how many locations need touching?

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416220251.GE22348%40zn.tnic.
