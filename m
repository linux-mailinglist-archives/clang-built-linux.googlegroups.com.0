Return-Path: <clang-built-linux+bncBAABBJMP4SAAMGQEGA5JWOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C69130B92D
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 09:04:54 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id n12sf16128890ili.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 00:04:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612253093; cv=pass;
        d=google.com; s=arc-20160816;
        b=AxOyN1ruG9aOqwvQB70bFrSAwlxx2stYR3UW/EXPDfg5UtEA9J7r/kA2fbiQo2zR4O
         oIghg9P8ZSeD/ByncREAkdRNADGJ9GALlh0At3j8q4JmdVt9IoNW38f4Q7KXkzHRnJfU
         7m+MjtpISIsWC5yrbMY+CFE7CMrPZM2Mc4aEvNhF5v3vQMygyJnwKX1msrCEWNfkdnSN
         XwrCwR9i3SkGLWLbwQrmygeq/rjxQMuC8FCJcdVuH4dCfk88eU5SMDhgm+Dw327NeljB
         sliJTo7rUha1eb45jGbqdjtInsCcV1REnuzBsvQkVfj5yRXqk3aiNZNaK/btfm9DfuiD
         GHQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OrALKqQ/xwJzAM/b9CGHFhhD+rNQC+lCFFalZIhSkL4=;
        b=WZTzXNdhNtwjVohMBDzguzYDV6L2TFEB0ZPsMdoW5/RefYfaPubJlQ4TgF8/IB8iCp
         sJbAT/UO92SgmlrW66tsjZ4hP7PRfl2oPeYiVYpjSi3Jx8MPDmLIGXfC3ZoAD/1220P6
         Ualy/UZshy9pSwJUPNdsTGZebBdM87+q+y209PbedHilzJ04cDLrkJnLLEpikxYRoJOH
         ZHyvrXaZ1pP7CxY+Kx7o0J0mGYOvzZSbnRoX1zoYgVuaWWyLoeWKoptyS4ZzwvIVUsD6
         KS7UquW7hzMtU0wbRLtOR2cBg48v80caPQcDXU5BPXCsMd7DmwglibD7S2I/Rf1ygCmx
         CumA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HUXG68Xs;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OrALKqQ/xwJzAM/b9CGHFhhD+rNQC+lCFFalZIhSkL4=;
        b=jdtX7MU6hTG3nQMgASwMS6rMMp9jA6/CeWV7i2PEcrgGi+m/E0J6oOcJy5O1kxAVHP
         Fn6C02FJZJBrRwASJQLCY8y3o5EdGG72HViV1jqQMbrRFFxln8ktXmdKpwTl0dFkdqrJ
         SfJAzA00lwB13Z77L0Pl98MQtFdH7Sd15U+lZHxFnUYX5qH0ITIfDTTDxb4qySYQAT9R
         ebELnga25qqqohDZTDhnanjgqOeXVhMA1JjDDtuBCMq5t7jYpjzNYlSsOGyT9inehdhj
         3A+Kkz/ktjEO1itAQz2zTmoNtenw3p940CO6VEy3uK6wHnprMvHNCM9uDMJsDt2ESSXL
         Q7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OrALKqQ/xwJzAM/b9CGHFhhD+rNQC+lCFFalZIhSkL4=;
        b=Uo2snF1tUtHe2zBkYjL3ENypYybLwZEYl7p+Hcdv4OoK0F0gai8ZycoE+L/scZiLCO
         rgEy8A3QYOKqzk2ArIQHICu6LyYodlYzYC/Gzk5Vawj1VXomrlsCcOuzWHJnM5iQqs7Q
         3o7uVjOBhPs1q4k1PFYxBxXIsPRWUFUzBdwYE78vpTThO6sjwUzzS70XQwLXhTcZnp4Q
         CtHOEyI1YbPxhF3cNiQEdqOL2A7T4Gd5DXGCNfi0RxYu829b4H/cKGFulxBtTX+MXdoC
         tBUufp2VB5KF6V9VS65qM21dbWezBoXHkl0ldOpbkd+nKVuxw6S2hMVk8ASA7ZN6J2AN
         Y35A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Cv4sAMBUJZ8g3tZc1Vdh63OAt3OretmGiy40Dimm9N3vVCAhL
	9RzfQyye8CHfd0ElIy4pagQ=
X-Google-Smtp-Source: ABdhPJzKFvIhizYfwHyGMzn3E7PQQMMZuLuB4wQCQXY+cQ8M5kJprfFeIrogYIIXztXAuof3lBJbmQ==
X-Received: by 2002:a5d:9584:: with SMTP id a4mr6603786ioo.183.1612253093161;
        Tue, 02 Feb 2021 00:04:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls4621636ilj.10.gmail; Tue, 02 Feb
 2021 00:04:52 -0800 (PST)
X-Received: by 2002:a92:ad10:: with SMTP id w16mr17140645ilh.122.1612253092590;
        Tue, 02 Feb 2021 00:04:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612253092; cv=none;
        d=google.com; s=arc-20160816;
        b=rxPIgHp9KmCmzutprpwLmJEVFcWstzrjfG2bSr7z0SpDgysY9gX8rvcisKUurE6vjW
         k7wZm6p66VAntrF0SEhvn70VOT0dAJOyAjCsczB1+MQGwOBPGdfQiIiwKtftM6geVkBD
         C5zHtgRHq+HA6DQ/EOQNCExMCfqQcU+1qPHN9aBm9cfkplmFR9j2/NC68vseJfvqjswY
         eM6nXZCX5MCM+BHUYMrpvsi9/SLgT+/IG5VFvObDoBT7zDolHutb3TN31PUGUpqkB5Lb
         zD6KjpqHoawbI3/LpmDxy58dyFVtmhZ/dvQJbgihqE1/eWRfjmExzm146SoXzJqN9EwG
         QGYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pJwPmEaEQi9eSwvuxBgadF2jpBUiRwP299uWJBiNTGI=;
        b=YCtcf0p9KE3eGNhgxzYfVV/ulQylzMM56qKQWUNpx7wY+/02HRiQmQNcublJImVC+W
         N0D/mOoS8jRa5g+0sGrHl1q0LR0CFsocn79lqR0OGQczhZSV2aIyuy2CD9fcfpv40Mk6
         OY+Wjyi8P//+dJNq+rQYEkT6v5WO+xQuyznbtGC+77EmtV3drpa+bAOMQUUzwXv1OZmg
         /qq726N48CTQxfik4LRna7QDazvr9G1FsMIMgf40vIOi4CbtESOthghONX2swwUV7WYP
         eAFE5ffCTa1/kgUNvw3scm8t/rS+m5Bmn9x1YEOu1qcs1vB4/Ow7MBJBxGiKbgavRCbP
         mhfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HUXG68Xs;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v81si904955iod.4.2021.02.02.00.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 00:04:52 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B11564EF1
	for <clang-built-linux@googlegroups.com>; Tue,  2 Feb 2021 08:04:51 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id n42so19003998ota.12
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 00:04:51 -0800 (PST)
X-Received: by 2002:a05:6830:139a:: with SMTP id d26mr14502963otq.305.1612253090768;
 Tue, 02 Feb 2021 00:04:50 -0800 (PST)
MIME-Version: 1.0
References: <20210202022441.1451389-1-nathan@kernel.org>
In-Reply-To: <20210202022441.1451389-1-nathan@kernel.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 2 Feb 2021 09:04:34 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2864oSVkhaYynoadyYMcYDh0LvDDFSJ2D8OTHSszuSQA@mail.gmail.com>
Message-ID: <CAK8P3a2864oSVkhaYynoadyYMcYDh0LvDDFSJ2D8OTHSszuSQA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
To: Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HUXG68Xs;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Feb 2, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
> depends on !LD_IS_LLD"), ld.lld does not support aarch64 big endian,
> leading to the following build error when CONFIG_CPU_BIG_ENDIAN is
> selected:
>
> ld.lld: error: unknown emulation: aarch64linuxb

While this is the original error message I reported, I think it would be
better to explain that lld actually does support linking big-endian
kernels but they don't boot, for unknown reasons.

I can send a patch to address the build error and mark big-endian
as "depends on !LD_IS_LLD || COMPILE_TEST" to reflect that
and help with randconfig testing.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2864oSVkhaYynoadyYMcYDh0LvDDFSJ2D8OTHSszuSQA%40mail.gmail.com.
