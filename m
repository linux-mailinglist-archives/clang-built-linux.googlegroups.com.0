Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYNYZ2AQMGQE72UVUYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A43A32158F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 12:58:27 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id gm17sf1938474pjb.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 03:58:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613995106; cv=pass;
        d=google.com; s=arc-20160816;
        b=fM7r8SNT2JH+VtqrHRqguBBETqqPelAMCN0VGaK8+j0Fy7tNrO0PgC9AX+37xyvbR6
         yChMHl4/BQUXR1Say+OGTygwQgtTodlvdjuPRYezgQQDzUvjn5xBb5zp0R2iEcLnQLKe
         a6T5lElku8Ijji9fOe3kqXXa/rdapzQHqDeXL+t0EZxQoEqXOLkx0rBV8wD43L79kFA7
         ewCgNHKcQuZcW1+6cjTtTUMl4DxxkBMx65Q/2jpArKnk0WOE6YtCyfPdCHHX+MAMHbgT
         4sU8gS2bGA/ARrTvwisSpKPXU1D8x0pIt5/WTdUkauq4pdRBQuiTtcqPreMRd/IjReDr
         h2cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=sfnGaNviJJsZ3P49MmsS+ygrybf/Pf+qEDdHlvJEhHY=;
        b=YXM52+7Q38s+dJpw9hJL5G1vJ6au49HSw23x29HdjsHjmINv7sBoQyjXuy/2jONnTh
         1ozrIy2LdNLq5IKUAzH5txut5SAM01FICx5kxwDVTR7e+5fkzmbHm89yiaURJbv7ghiL
         aGP9V7Rbe14khMfaK2+SqGFY5o9zu9wP6gHyY9FBV9/9ApgyGnoDVsfsUMn5oddoHUBm
         vGWtRQoqeeJ6WHphmG3YB3Z2BFAC5GcWu++eoZqPs5JSxTy9RKoT4A29wkSUUjMBFaHb
         /4GT+OG4oxejQ7Pr0WDWH35KsCUUqyHrexgIUtTmRGfn9+VTiyE3WU/1IehKoO9ivW5S
         xK1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MEtBdS+p;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sfnGaNviJJsZ3P49MmsS+ygrybf/Pf+qEDdHlvJEhHY=;
        b=GlCIeVUDMmmOVaZU6x3//po3w69dRphwKBpxKOKzZqq3jCZaBhQLtb7sPRUX6C3l14
         IbkUgHY191Uf2EJUrIoVeVf77mxN0cfY3PNN8SblWYLGIpAAjKERuSaWoO4nHZTQt6/I
         l5u6fGPpDVQkudi1v1ISpy6zJm5fYfRISjx2xxy2VI3W0DPmVCE2XHLKM6295hpFZU0Z
         7LaWU+pdAm56aPm4lWerU8g3x8kiWayoFkfAlNdqWg2AJ+l6iT9rxTK5/bssOe+1Du1N
         jDmjxXZQdWfYVRWpTzgNsaNVYT745sgH138X6jvVcG/oQDgUva7s2td6Dqwlur7Tz1FP
         FrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sfnGaNviJJsZ3P49MmsS+ygrybf/Pf+qEDdHlvJEhHY=;
        b=ip8q4Hh5xMozpNxEWwkjs9tBlWCW5vCI+aZzBOFes6HOlVx8AYbjwpaY5bcTKw8ATo
         dWQor/ayXjDIdJrqNurzhVddXNgUNC68Z169X1XVBGLwDGD7wDr5YXZz+1OqU8W5nVMY
         V7HZ85E61dQ4qPvA7ets1zdpmBX5ArvfbVkePMbqitENSnpyiErsckHPck9JLm0fQhjP
         GVpbo6++yWDVtBvhW+R56ufkpnPvrefSY74nDHRiQRWBm6S4SY0/NTtUpbjUmTnbxEKQ
         nIeskFvI/ZLyzTzezBd9EilsUJ/VmOG/RtvbyDJv8ajTIsdT9bQM6Fvgla6Po7WGLCoM
         aGEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DQLzJkWsaViu5tWE7qVr3nOm2Hw1j/VvBrRtnSVzs19w+HhNP
	jJrIebDNeKADxIOGvGpeh34=
X-Google-Smtp-Source: ABdhPJz8V2vrFgenfvBatPD56Up992xSZzOp29tZOLlrsF3039T92fsqNtP8rYrbYzdkPoLKgYVWkA==
X-Received: by 2002:a17:90a:1389:: with SMTP id i9mr22882209pja.104.1613995106032;
        Mon, 22 Feb 2021 03:58:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1706:: with SMTP id z6ls9660133pjd.1.canary-gmail;
 Mon, 22 Feb 2021 03:58:25 -0800 (PST)
X-Received: by 2002:a17:90a:4092:: with SMTP id l18mr23370295pjg.1.1613995105417;
        Mon, 22 Feb 2021 03:58:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613995105; cv=none;
        d=google.com; s=arc-20160816;
        b=dK9cozDSipD+ZOv0o6r4tHGra8Voio0zYH1yrDJcMISSKO6UN1fQGQelRqS+cUzK8g
         0p/OrN6osrP7AcSsH2dtGTF+G/BQAk3rJgwE70+qfxyp9/davZu/o+zXdA6giwYKBRAU
         Qj3MZ1qUwBegrEawdHTrnfbkZEdAbvoHLq+ueR/T0s9w+koqR+IqIln34OdtB9y8uLMc
         TsW1vjos994QX3h8g8s33KeV26QprOS7+NJCmsYjh9jLxB6Qw1L1TjMY0BOV839OBdH9
         Re6HycNdCMAnwTuViPe9GDSlbuRMjg9D7xcFNbO1iSgh0vn7arcCYunkR1xwVk4s1Yqr
         4bRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qiAtrFYvIoMxOT8QskfR/FbFol7C3E/NogjLOmXERpY=;
        b=DAPd/xKlz27EEYDd+/sHfZFDOPmZQLi/3lJJmPS0IAC7c3TDzEyvgG9g9KDEP5/hrw
         WMs6RogZ+N4Pi+kYiIEpfUzimbtCYlibF+mbUW3Fsr8v9j+13JP5iXKiUF0sRtrs7zOE
         kSifzfA/IPgfhpp9FTbz/7cnmw+dyvoMWZZbaRBQRZsyG9/XLHR9s00r5AC8B4uOXidY
         fozj8hApi7CIXLcGYcfMTJN3i/Ff7APo0pq1SWItXuenSnu+lmoyF8w0ZaDF77Jme4ey
         QC1zfXs0rXKeSUKaFjrCMUTvD8UoilAm8fT6iNzvnyNsjlrM3Q6wBBTBGIWg/FMXkDf8
         23IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MEtBdS+p;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si895623pgw.3.2021.02.22.03.58.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 03:58:25 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4914A64E15;
	Mon, 22 Feb 2021 11:58:20 +0000 (UTC)
Date: Mon, 22 Feb 2021 11:58:16 +0000
From: Will Deacon <will@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	David Laight <David.Laight@aculab.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Ingo Molnar <mingo@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mike Rapoport <rppt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	David Brazdil <dbrazdil@google.com>,
	James Morse <james.morse@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH v4] ARM: Implement SLS mitigation
Message-ID: <20210222115816.GA8605@willie-the-truck>
References: <20210219201852.3213914-1-jiancai@google.com>
 <20210219230841.875875-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210219230841.875875-1-jiancai@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MEtBdS+p;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Feb 19, 2021 at 03:08:13PM -0800, Jian Cai wrote:
> This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> -mharden-sls=all, which mitigates the straight-line speculation
> vulnerability, speculative execution of the instruction following some
> unconditional jumps. Notice -mharden-sls= has other options as below,
> and this config turns on the strongest option.
> 
> all: enable all mitigations against Straight Line Speculation that are implemented.
> none: disable all mitigations against Straight Line Speculation.
> retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> 
> Links:
> https://reviews.llvm.org/D93221
> https://reviews.llvm.org/D81404
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> 
> Suggested-by: Manoj Gupta <manojgupta@google.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> Suggested-by: David Laight <David.Laight@aculab.com>
> Suggested-by: Will Deacon <will@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---

Please can you reply to my previous questions?

https://lore.kernel.org/linux-arm-kernel/20210217094859.GA3706@willie-the-truck/

(apologies if you did, but I don't see them in the archive or my inbox)

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210222115816.GA8605%40willie-the-truck.
