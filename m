Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKGA4H3AKGQEODNXZVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id A96E41EDB4F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 04:44:57 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id t13sf3555164plo.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 19:44:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591238696; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zvd7gpce5Yx2c1RX0XOjztCMtR8Oh3TZLWyacnMJzRDdGBbdXFOHvyBITubacf9E/9
         O6XDwHwfDqe8ZYVCr1P9fI8VTw5Q5tdDzzb5+Y8wHSc6Wd0MuPB9n+Gc1tnbEBlN6kVt
         J1GqF6RSIPKJZHOc5Nndpr0Au2FelhAFYDIxATBaj1zCB5E+zUg0L+luk+2EX47yCCEb
         cJ0py/528K1zkZll7uSHMJt1qumnEZYcrmbe/13Ocvmsu+hZlDMypWLhEFmPL2xcI+eK
         0Whq+5W9O3pIGa7/TMwIWdwfIGbs9ShbZqHWlVG3ug4mo4LXfsspxYY8Sk97eQBZPO49
         1DqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SCvPQAuaLUanlFheVmMukDUY4SvvKNd+fHZNpzTiALI=;
        b=bZ8yGvRY8cToat9hGS2fJ1ltYwMWWDtS4tfdfXc+ELlqWurx01ALGhAXJkabSkIeZM
         Psx2Qjqm9iepJ4rKNJT1nHQYHSf1iOYNomMFwNnEcR46NsZp4TVd3/+otUAHCZ1Vjjz4
         lH6215mxp2sTOiIo6D+faFMumLLeuHPk0WU/5G3NxzBkZG0r4faNGrrlLB9gcc9Rr937
         L0sdWt5PcWF/Wi8H9vEyXzYAcd4YI5G2F+3y3dSbqLU9KfvRJBSvIuL/Qr1+ijj8jpJY
         3uPTip0UfKIXbUSV/bLt7svxROwTvk7tlFEIsyR3O6qNvNdOBdDuPSvj7fTHsl7K6v+Y
         uSjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OAFQ8jI8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SCvPQAuaLUanlFheVmMukDUY4SvvKNd+fHZNpzTiALI=;
        b=k2Qr+2jWdiS5CVdLulM6AcvdUbJwQ/cF2Vzbke5SHlvsSdL4j7uJoAdI5VkRPg/cKg
         F1r3oQJbUd1q5wqcdrawsSdFtnHowM23WwF/mbmSkyjg1NYTUzfS/Qn0vIsLXDXqAUGG
         PecyN8vyYAzc6FaJe+Ll9BhoGbdA1H48aSkc+/vdBnvVe1ICA9gfTEXsmKX8JSL2FwIy
         meSonZxg4v9Fu9ZwDhyHcK3+MXCAzWe6z/OOa2ki9JAIMsewWn5kXBn+vL3knBh85za0
         Bxk2Ma6tt/BnE9sVJrv5RmqJwR7KlxLca3z6br5GM8BzNLmAIJTzwUZnBK+2Htk8ot9w
         wd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SCvPQAuaLUanlFheVmMukDUY4SvvKNd+fHZNpzTiALI=;
        b=FZgazPozsEvRzJgKHZMrkF+vWGEkGgC6sOvqzkGQFQ7X1RuKiRfxUrOxAub4I3LTDj
         IQbdgik+jhbTbRrCZOYDoA4HqmPjrdhTF5Q1XHdWq7jEBuXwejqovc1AOUDmaGdlKnlL
         tfxkX5ckE9BONA1s85Hynbi+hjevBgXl1445lyOHvm5EauBbbU+uHyh4gmPYxe2U8fxA
         EXGh28CpIUDPs9UWzQOXXyD7BOMqVT+ksU+fJvUF+4OXODHOAYo2udPX34rycGRzFdkC
         2tKN21IwOMQVWKDhuh6wqzNnVEzNb7E8jktVjQ3aoB3UEilKAxbgxYlS/iC2Xsgvc8Bb
         ZJYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rJeB5pxUnO20X9/D0O+Duu00m/321wftgWPIzL+fNb/RNUkil
	RcB5nXZHuR15tJBfj5xML8A=
X-Google-Smtp-Source: ABdhPJw3SkQJkyo4JKMu8G1QqUo7OG5fyLOIpT7jHqNMQbJM/9nydTOqfmZmeOCkpL5wI1qk5/UtbA==
X-Received: by 2002:a65:4489:: with SMTP id l9mr2317197pgq.223.1591238696324;
        Wed, 03 Jun 2020 19:44:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bf05:: with SMTP id bi5ls1540465plb.5.gmail; Wed, 03
 Jun 2020 19:44:56 -0700 (PDT)
X-Received: by 2002:a17:902:7897:: with SMTP id q23mr2759845pll.5.1591238695931;
        Wed, 03 Jun 2020 19:44:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591238695; cv=none;
        d=google.com; s=arc-20160816;
        b=gpFNWO/dPOHWiHRuuItS7k0xuCr84FXSisPRCkjQLvSBcGn7DwyEbfoGHOqRmHTBpI
         IkhI6KHLIuduV302pQ5N38iCCBTajHqgmzhhu1qxsNtzW4h0FA4+EDGKJPDOTYyABvgO
         Qjs0MZKcXVGLCQdNATQvKBFQimUzoxWhg4LbPKXAEzNqifLbzAr06wjEGM8hFLrxWY4Z
         rEDzBQa8S6bDbT3kjNyUR9sRBkX5F+fOj+Hxd5VG1NbgvMuciyk6pXANUAsqB2tywOtc
         6Jrjlgbs0KwG/jx0UlbZkJggnopRnf4au2maBLhMQdJuo3h+ph8GanKYqf+zlou6vjMl
         3qzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NJuDdLVQU9WLVc7Nj2WL3ekqw3GERe/Y3vOpHmHCX0Q=;
        b=idehwGkygj6+m0q9aoNuLViNa7OZY5NcZWuRA7cLlYtlshVeuga7tSC5IvFaBj1hvA
         3yFs9SPtNizSUQTctUO86yqWmKcA/LyRNWOA0JIn/taF2r8jz9an1VA1aofqyiN5p+Iu
         u9WoJC7y4ri9gERWEjN04laTa0d8nA2lvBljrafnTJXTEUwMxpaak/4ppB/1ot534+iP
         Ycz+Wcgy4W4+daVi2FHroyoB3v3K3zsg0HtlHh3iQ66sup/nAptFxrkgGi7AdaDue04X
         /eTpC1jOrYCCZI+gh5UU0F3cwPZOkylhunOhq4fWlZN1/s536LMQH8asiZl4y//Hq2Ky
         0Bug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OAFQ8jI8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id g10si220593plg.3.2020.06.03.19.44.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 19:44:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id n2so1525633pld.13
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 19:44:55 -0700 (PDT)
X-Received: by 2002:a17:902:848a:: with SMTP id c10mr2705871plo.124.1591238695641;
        Wed, 03 Jun 2020 19:44:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x18sm2934984pfr.106.2020.06.03.19.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 19:44:54 -0700 (PDT)
Date: Wed, 3 Jun 2020 19:44:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Andy Whitcroft <apw@canonical.com>, x86@kernel.org,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org, netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
Message-ID: <202006031944.9551FAA68E@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org>
 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
 <202006031838.55722640DC@keescook>
 <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OAFQ8jI8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Wed, Jun 03, 2020 at 06:47:13PM -0700, Joe Perches wrote:
> On Wed, 2020-06-03 at 18:40 -0700, Kees Cook wrote:
> > On Wed, Jun 03, 2020 at 05:02:29PM -0700, Joe Perches wrote:
> > > On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> > > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > > (or can in the future), and suppresses unrelated compiler warnings
> > > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > > either simply initialize the variable or make compiler changes.
> > > > 
> > > > In preparation for removing[2] the[3] macro[4], effectively revert
> > > > commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> > > > and remove all remaining mentions of uninitialized_var().
> > > > 
> > > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > > 
> > > nack.  see below.
> > > 
> > > I'd prefer a simple revert, but it shouldn't
> > > be done here.
> > 
> > What do you mean? (I can't understand this and "fine by me" below?)
> 
> I did write "other than that"...
> 
> I mean that the original commit fixed 2 issues,
> one with the uninitialized_var addition, and
> another with the missing void function declaration.
> 
> I think I found the missing void function bit because
> the uninitialized_var use looked like a function so I
> fixed both things at the same time.
> 
> If you change it, please just remove the bit that
> checks for uninitialized_var.

Ah! Gotcha. Thanks; I will update it.

-Kees

> 
> Thanks, Joe
> 
> > > > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > > []
> > > > @@ -4075,7 +4074,7 @@ sub process {
> > > >  		}
> > > >  
> > > >  # check for function declarations without arguments like "int foo()"
> > > > -		if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > > > +		if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > > 
> > > This isn't right because $Type includes a possible trailing *
> > > where there isn't a space between $Type and $Ident
> > 
> > Ah, hm, that was changed in the mentioned commit:
> > 
> > -               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > +               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > 
> > > e.g.:	int *bar(void);
> > > 
> > > Other than that, fine by me...
> > 
> > Thanks for looking it over! I'll adjust it however you'd like. :)
> > 
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006031944.9551FAA68E%40keescook.
