Return-Path: <clang-built-linux+bncBCAPDLF44QLBB2UQ6SCAMGQEWM63XCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D26C037F664
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 13:07:22 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id y3-20020a1991430000b02901c713e7949esf5569922lfj.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 04:07:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620904042; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dsf/BupKf0G0yInMGqhix0BflPdqIJowoDeI4EocuM5gFpgOXHTct3l42SvijLQ55G
         kJB3ra8jqA3vHz2WSWfvxvgqiCHIXzG+K8+5tmzlcY2sEhNvBZSZDVqVX99LbeRERs8Z
         UaM+GrDpyes/Udn6uDVyTOo90FiIWs2z5EBv1WhkYVUxt8F6CfB67MiJU6tTkTekqStB
         XZ1j1pFunsHUlWH0QA8vsTqtQuAPvbGaquFv7r/4nAwAE/M5LlGy3ZKN9Y6teJq71A8Q
         bzt2PhTDBlhswQdIgC1Tsqd5qqYILz8K3oCzrvrd9OB/xOPiERZhGPDzgXEHQQ26dXPx
         Yz3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZVQsL38Gm192pGkE48VNSAumX1lvh9LJQv/F6uJtZAw=;
        b=BpJycfu7fbp0JNRtTBZRmdDxL3HXStiF323KxAnRmwfNikurA5bsZkiAfNxzAdJ3aS
         koZujo74hHqrChpbd31dgjI27y2IMuD/nm6sn2dn727k3lW04eYsDemCaEiPiGz0ASuC
         9rA964fyrYGcl0csd/HX/Fn7+Gx+vjre9HpkDM5iQN9IYI6wFAanTlxbwzC+F05Obh3o
         p9csZJ/RzDcRAYvPOVLTPknDlEdIZ5GQi8bgaW4Yr8WwQU5l+2IMROXQK+7CnLjWKEgS
         EV9vvbEhBZAATE+dUnv/QjVk/HNZBwlW6cH6RQPwoJTprnarU6nbjP/luVGrlV2BHEE+
         7n2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UfmbqwKW;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZVQsL38Gm192pGkE48VNSAumX1lvh9LJQv/F6uJtZAw=;
        b=dqCZNUCl++JfXxUlXmieDFohiWZS2/ytz5vECQkPK7lNUwMjyher8AclZyIpQ1oEHv
         JowdAdHfu+rLPhfnkwHm4m+2bQ1PfqlgS5acV8DWLfF7v4nTxvpogdZ3ZgsilAoivw5U
         49SQdwiTdfvOrv9yJst8kDcvVWUYBErHCRV6jnHEuAnYCmengmICzRY22+PiPPLkkgUu
         NbeNGlMj1XwY1F71ebKmGqrtTjBrH9DgY6upDGKIeDgfxeJzvSobqnmgOgZOOXJboIYN
         qXDquQ6u8UFfGr1s27S794TVwRqTXcsF6n7wj+S4zIoAlozaZiRG8eRq6fNWtsRagjXf
         R3Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZVQsL38Gm192pGkE48VNSAumX1lvh9LJQv/F6uJtZAw=;
        b=FUBHHe8xUBIL81gst9xQ774svv0GvORVPrywuXGHrqjwrjy6at4aGRtehyzj6hwLHZ
         BAo+wzWgLfA+3LAPAqTETAcnSGPR7IkrQVg/8ZCiibuWdXbGv4mKiPQ4DKSH3gO4ySDy
         SJDJXAUU3Lyd537wFQmy6NqshGk6p8HCbvsTlnfqPUQZkZvj9nQCC+n4fsSoSTV3TX1S
         ZSuCv7Z1DjyYxhwggj0WPje5yVeJnLzJWXY4Howk8BLoXitJ3VIT402akVoPpj7s5DNI
         +1nMGWlt9ezK1ZrNTXg+hfsiLo0jhZ7Fp+epoHMjnZ6JX1o+onHuUJ9It2YB21PmXUoJ
         niaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rRaPU51eVO3FPMcHJhCMZNWCkGcRiJlWqxGRVmLeZuPPmP15j
	6Vsoo86SuUPCwJy3uVenTw0=
X-Google-Smtp-Source: ABdhPJxB2Tb1m+tgK7e3JVtV4dWgFXGvwSdFFmf/ScmIl7wFmG9kqIQ1INuI6Lj2MFRCeA1HBV/PYg==
X-Received: by 2002:a05:6512:2342:: with SMTP id p2mr28535314lfu.388.1620904042358;
        Thu, 13 May 2021 04:07:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5592:: with SMTP id v18ls3372767lfg.0.gmail; Thu, 13 May
 2021 04:07:21 -0700 (PDT)
X-Received: by 2002:a05:6512:3f08:: with SMTP id y8mr28679060lfa.657.1620904041368;
        Thu, 13 May 2021 04:07:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620904041; cv=none;
        d=google.com; s=arc-20160816;
        b=ptuq+X5qe40m2vEcSqYWcYX1436ixAa8yQtG4nph4e/kQSC5jyPKUXDVsI7YHBExse
         iZAnmtKIWHtqPu4goOMo1G5n0f4Wj0lwpPCMzcdyWDxfMroohzSnt3WZ20jSiCB+EfuN
         5rgiRBITIB/rSXBIAvc3bCYlS3asIRwpQR16D/3yoT6i9+H7qMF0xhOZ7wU+Mif6vgJ0
         uyzSjOtqzfOAn3ahkzapoYPY+dbALZ8gShs6AaWr4hyeGUdv84/NtDiuc0ZGcchGXl2a
         PFvTzHZ5KHKhwEPCOmybuxxz5s5EMXP8jN8pr8r6FHD2vVU8pCoxL3QfrR3oN5ApEego
         8jLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=L1Rs0oxlRge0qzOeFq0tx+oSL+//C6msY0LMqH5lEJs=;
        b=QrfGD3yYzqif1fwWirsMffBa3E6G2FL1PyWBGxb/OibmAUWgdRD3pE/pGzIiIii4Hc
         dy20pzeTk9Gzt82GtraaBgAnjrQEVwV2fhdtzBY4fsalJV8Kr2ZJGFW/PDjRaqdf03Dn
         4Lnpj3066xH1urv/QPbgLZx2SybU/Ni+/p3eDWxNCK8TrVIqr/rtSanTWsqpM8WlYW1t
         /SmUUfHbD1aVgAYvH8o/6RGdQX+njAqvwP3TmF2dHwvwn7VKrA7hxQ62tQyhmQUhLAmx
         TUk78kbHVMyXtXVqBjNom+k+xyAoMzY7uUbuSTNc4OEjI2N/ZSEgiGCe6ITXejg86ljR
         yztQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UfmbqwKW;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id k131si92697lfk.12.2021.05.13.04.07.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 04:07:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Received: by mail-wm1-x333.google.com with SMTP id b11-20020a7bc24b0000b0290148da0694ffso1166791wmj.2
        for <clang-built-linux@googlegroups.com>; Thu, 13 May 2021 04:07:21 -0700 (PDT)
X-Received: by 2002:a1c:a507:: with SMTP id o7mr3293234wme.130.1620904040559;
        Thu, 13 May 2021 04:07:20 -0700 (PDT)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id e38sm7979662wmp.21.2021.05.13.04.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 04:07:19 -0700 (PDT)
Date: Thu, 13 May 2021 12:07:17 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>, "# 3.4.x" <stable@vger.kernel.org>,
	Marek Vasut <marek.vasut@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nicolas Pitre <nico@fluxnic.net>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Mike Rapoport <rppt@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: fix gcc-10 thumb2-kernel regression
Message-ID: <20210513110717.s2gr4l5upqzjkb5a@maple.lan>
References: <20210512081211.200025-1-arnd@kernel.org>
 <CAMj1kXECGjpxx5ouWuvnKUigzMGu=GcE8_ab2rrxt98yU1jUnw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXECGjpxx5ouWuvnKUigzMGu=GcE8_ab2rrxt98yU1jUnw@mail.gmail.com>
X-Original-Sender: daniel.thompson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=UfmbqwKW;       spf=pass
 (google.com: domain of daniel.thompson@linaro.org designates
 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
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

On Wed, May 12, 2021 at 02:38:36PM +0200, Ard Biesheuvel wrote:
> On Wed, 12 May 2021 at 10:13, Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > When building the kernel wtih gcc-10 or higher using the
> > CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y flag, the compiler picks a slightly
> > different set of registers for the inline assembly in cpu_init() that
> > subsequently results in a corrupt kernel stack as well as remaining in
> > FIQ mode. If a banked register is used for the last argument, the wrong
> > version of that register gets loaded into CPSR_c.  When building in Arm
> > mode, the arguments are passed as immediate values and the bug cannot
> > happen.
> >
> > This got introduced when Daniel reworked the FIQ handling and was
> > technically always broken, but happened to work with both clang and gcc
> > before gcc-10 as long as they picked one of the lower registers.
> > This is probably an indication that still very few people build the
> > kernel in Thumb2 mode.
> >
> > Marek pointed out the problem on IRC, Arnd narrowed it down to this
> > inline assembly and Russell pinpointed the exact bug.
> >
> > Change the constraints to force the final mode switch to use a non-banked
> > register for the argument to ensure that the correct constant gets loaded.
> > Another alternative would be to always use registers for the constant
> > arguments to avoid the #ifdef that has now become more complex.
> >
> > Cc: <stable@vger.kernel.org> # v3.18+
> > Cc: Daniel Thompson <daniel.thompson@linaro.org>
> > Reported-by: Marek Vasut <marek.vasut@gmail.com>
> > Fixes: c0e7f7ee717e ("ARM: 8150/3: fiq: Replace default FIQ handler")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Nice bug!

Indeed. Many thanks for those involved with the find and fix!


Daniel.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210513110717.s2gr4l5upqzjkb5a%40maple.lan.
