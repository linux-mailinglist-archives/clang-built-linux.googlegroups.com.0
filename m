Return-Path: <clang-built-linux+bncBDE6RCFOWIARB2EFRGCQMGQEO34ZADI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A1D3829A9
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 12:18:16 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id h4-20020a1709067184b02903cbbd4c3d8fsf851020ejk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 03:18:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621246696; cv=pass;
        d=google.com; s=arc-20160816;
        b=gbAAXIOB5xvm9P9Hlbvr6WmGd0pGiF8d2Jb4YBYjQnmvEPpxMkxvtIUwA6ARIF2i3E
         9bB4zKnAqtyA+RRjWvVnuoCRN5f0w1p4lVYQXVFkHmCYU0gItUvkOmYuLlJYcuddTfVx
         Y4/fBRN6xD8O8nJasi6cGYPNVW2JMWC7TPGzXMgI5Z3Caq8E+Id8jaMJ2jNc4Jw8Daes
         HyQ7VsFUADBCSzDE1P6IkU2uzd5APA3kHQSrEMXbK2ZBkMGMR0cFXk5DG4/PNz7eekd8
         VUu4JH2Fi1KDhpA3XUdgLzNIUMYjySkM5qDtl3T0QInnX5AyBkXYlN0k/vYLTHJo1hbj
         59dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uOIN7QP0dh9sl9z5yuXcq1Y8Xg873DTDvhKdD6D3JRw=;
        b=W1RANMRgvy5e91GkJIYYIeMHQUJxEol275kXEoebd9rnXB9FdeGdNd3d46a0Uj8bFq
         LpGn7gcJsjbQVNP7D7s20/iaIVSfH3YmOiJXnAT2NxgRrO7npY7NDhnlp+jqxVdbB3wZ
         VY3yJVxOX+Ry4aWbIoReLYTzafZt4haPJK9deGRogzG1U5Y3ey0yM7YwY5na/cVJH1rR
         tvQpKIUiCIEsu7O9fX5PVHgowoAZYDB/Okf6RA78mwZ7QDSVBz+AFX24SFeFBjnX2oGq
         8VPzqdi9QNo35xQOoRidYVygcyTEpCDSC/Les6m38k6TwrpYcvrXXn6MCRpVwSOwwiPd
         64tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YW8aguL1;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uOIN7QP0dh9sl9z5yuXcq1Y8Xg873DTDvhKdD6D3JRw=;
        b=iZ8KRK7JY4aiByd+slmgvH0DrtN57UpKWVnUL07kBqprn5p99NAORntG5REDs+Qj+X
         KRdXntfqNTZp8Tmucjo5QOi2rU9/oD++EWMO77vRltGFPldNnFE1rNigG1iNaV7LQSoI
         tGBmk9S8CnrTebMssqxDFNHtHQ+mjaj4E+zjwTwWZDG5h4/qYDZ3O9Hrv5tSEKz7b1+n
         Zm+KnXfP+Gh/zpyBClsBzJYsLefsQj4zud+BgHldUi+33CP70kfyJVMwtatXDV7l9wHs
         Hcd4mcKiArXdqZlEM3Jfg831UM6/mzxW/nlnFtoSvgbzpSeSOvZihMLGOtz7skzM/OMq
         B3Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uOIN7QP0dh9sl9z5yuXcq1Y8Xg873DTDvhKdD6D3JRw=;
        b=RXXhMFYjFHSpiUKAOZrVBXJ1Ot6qogWvovgEsS1qEt4Nq5oeeeUK4wxtAV4xTtblLr
         9yASKWoXhxEwN4k6T3o/q4ceVxt5axaaKeKXyfMVEn8+vVEhpAYs8CvkbBYbetc5sSba
         UKdIxmuK4ARVbAOU2PNaRyCiVv83P7AhLh2Piv9lx95I4J2m0uQXSWFGfTcv8CBk0tGq
         0ADgxsQEzfygoaDG9gO91ZvQkUY6AeNSBw178slQnrnCnBcYA5Wy1Zp/4PSukbWjqAqY
         gbvKL6K0pSUZ4iehkYn+Oh/uroYPflmcu6+Ztqr0EZlg4q1rKurbqF+KZP477szeILQ2
         ak/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301tXryzLbxhLuFyVTb8/3UzzIrwDo7ZaSKV4smLUjG1amwt3ir
	c+2xl41oWo4HJvfc/rfMfE8=
X-Google-Smtp-Source: ABdhPJwRb9MQMz+uK2tJ4zaKVVCSqFtjaVSQOfk01pMSx2YU5YRO6Jc9sp1+Al3F3EAM37yoBQUyuQ==
X-Received: by 2002:a17:907:3f1c:: with SMTP id hq28mr60906264ejc.349.1621246696508;
        Mon, 17 May 2021 03:18:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:94d4:: with SMTP id dn20ls2417427ejc.6.gmail; Mon,
 17 May 2021 03:18:15 -0700 (PDT)
X-Received: by 2002:a17:906:9812:: with SMTP id lm18mr4825061ejb.428.1621246695554;
        Mon, 17 May 2021 03:18:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621246695; cv=none;
        d=google.com; s=arc-20160816;
        b=WdaCDcAnezDA+oThVTV4igrQskSaS0QZFlPyd2BmnDRH3KQKTUjUbm+3tUnkZ+do1l
         fdBnbM6LRbSZhM/Q5JdyJOh9GGNuGbiW8Lk7wcaV4yxBJtPpdzuhplKD608mbwSBfPKF
         +xmBZknbAcJhFlJjuuZjO2qcb1NpRT06/glZjM0D7kGBKNSJLRLpEdAvVVv1a5X/D9Uo
         2n1jhaFg4Vwjt7d8o1I+HB/iodo/Cp0PfZtJzbd6YostoslC0ihnmMPprbT9VXnZqVFt
         oqGGMUMyjXLAtCMNyf9Zpg7mxQSBhMy47e4VSryIuIecD0mGJEQlA04QPqi6lB3D6KpM
         Q90A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QpD2zMBxw5znlPKt4SJEqzKdA2fPgb5vzD+kazPbf2Q=;
        b=jCge9hA5E3YfHaJuZeI/JMLbLiOSeiK+HcKEQXIOV/3F3efDEuwidtVHfwh+QYdtpA
         TWAV2ioqRgd5/6PunYaDsuOuYF5vkkE1J2xHc5lQWNyRDHgJkN4HB9i1FoImAgG7+Mtc
         tOPOmkLc8gH3lIqvFDmKX3n1HJ6FcaFnueFgt/XXGohjVk941UG78WXr/X+D/UqLZMbV
         Frf9AxF2LkXwKY9ZUSnj/gDNy/tS77fqxR+3oYsR3LQ9usIO+FUzof3sBv1Bax4Gunxn
         YKtqfnyfl5hZcx7jyDz9YgwsskVjj4ou3V6Ajjwhto/s24q7pMw+tbA8uKmoHl6E5rgu
         yAZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YW8aguL1;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id r21si936107ejo.0.2021.05.17.03.18.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 03:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id x19so8009775lfa.2
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 03:18:15 -0700 (PDT)
X-Received: by 2002:a05:6512:11ea:: with SMTP id p10mr89321lfs.157.1621246695068;
 Mon, 17 May 2021 03:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210512081211.200025-1-arnd@kernel.org>
In-Reply-To: <20210512081211.200025-1-arnd@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 17 May 2021 12:18:04 +0200
Message-ID: <CACRpkdbpYkLeh3bJ9U42fCHMLj=XY17Of-vvt_1JxEukYWPSHg@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix gcc-10 thumb2-kernel regression
To: Arnd Bergmann <arnd@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	stable <stable@vger.kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>, 
	Marek Vasut <marek.vasut@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Nicolas Pitre <nico@fluxnic.net>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Mike Rapoport <rppt@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YW8aguL1;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, May 12, 2021 at 10:13 AM Arnd Bergmann <arnd@kernel.org> wrote:

> From: Arnd Bergmann <arnd@arndb.de>
>
> When building the kernel wtih gcc-10 or higher using the
> CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y flag, the compiler picks a slightly
> different set of registers for the inline assembly in cpu_init() that
> subsequently results in a corrupt kernel stack as well as remaining in
> FIQ mode. If a banked register is used for the last argument, the wrong
> version of that register gets loaded into CPSR_c.  When building in Arm
> mode, the arguments are passed as immediate values and the bug cannot
> happen.
>
> This got introduced when Daniel reworked the FIQ handling and was
> technically always broken, but happened to work with both clang and gcc
> before gcc-10 as long as they picked one of the lower registers.
> This is probably an indication that still very few people build the
> kernel in Thumb2 mode.
>
> Marek pointed out the problem on IRC, Arnd narrowed it down to this
> inline assembly and Russell pinpointed the exact bug.
>
> Change the constraints to force the final mode switch to use a non-banked
> register for the argument to ensure that the correct constant gets loaded.
> Another alternative would be to always use registers for the constant
> arguments to avoid the #ifdef that has now become more complex.
>
> Cc: <stable@vger.kernel.org> # v3.18+
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Reported-by: Marek Vasut <marek.vasut@gmail.com>
> Fixes: c0e7f7ee717e ("ARM: 8150/3: fiq: Replace default FIQ handler")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Wow. Nice bug hunt here, hats off!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdbpYkLeh3bJ9U42fCHMLj%3DXY17Of-vvt_1JxEukYWPSHg%40mail.gmail.com.
