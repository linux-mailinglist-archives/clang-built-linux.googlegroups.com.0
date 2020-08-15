Return-Path: <clang-built-linux+bncBCIO53XE7YHBB6PZ3T4QKGQE4IPRZKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8097C24505B
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 03:40:10 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id q18sf7169163qkq.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 18:40:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597455609; cv=pass;
        d=google.com; s=arc-20160816;
        b=zr+FZpgSpRIgtHo3DZBwt/0Jqun3EPo5E+iE7EoglHxXnjjFdqPHZVfaGoJDjn8qVd
         EwmX81gzu+XiKeGFJaIfMGmsvfGX65EyILbqRSL6sGGeYv80M4Snw++uL9/V8kmqNuSD
         /1HK8fBEhuYhpJwc+gVVywraBXZtvubtF3bTwsCZ7fZbhaeoO7GTRQJmjghIM7ID8e1t
         tOcdmFpX+MvpsMczwf5V96AwEhrGv9Vm2wgwH5BCUZPw0cZKMuwa/p4BLtU4nVzSr5Kt
         1OD3UmJwjIV4Tam7XkCoT53R3rp7b1k71ytiWOl43Psmjo/xG/1wEVh1WarPgjdX5a8N
         FI0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=xeSnTRMa4bYuKD/SKqG1j0Tlf21/Ddj35fMRyx31G+o=;
        b=wY01nVd4GmLzjhMfDRV7rnJbSV37rH88ebx+oKqUG4H244ZKUG0bbsIBfufMBvxOOs
         E6tBMDZhRSBy+4EQ/YLjAQnTkoBFrUJaU6FGAYfszFif7xiT8YpJLJBZLc6biD6IDwjB
         J8ZoawW+Z2vV2S+sYjD8Ipm95k2NqVitLtqcFAuMItrna1SJvXPawIMP7PD50B93leiL
         4MU6MeM37BCKsLop7DKWjF4SalRSUSHLQ1U1AcVUf6mbBX+bntwoCPdWPHKnGOfT/udN
         1ehj2QeH5AnKaVEuX0dcYVCIxuoUAF2nehVVTS/0lmSVM9Aa4+lH00ip1pRqwDULOZcA
         K/Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nLw79+rm;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xeSnTRMa4bYuKD/SKqG1j0Tlf21/Ddj35fMRyx31G+o=;
        b=XJB92EpZKA8CpDSxQc2mBJDHG2fhZvBOqdy04n8oIQeCMFHjoczvJiao9QUVJ8STUg
         1moGKdvzO67aCMMiVSBq8wVI1wqr7LN3nAGMoDrWtipjr5c1MunUtVoX7CY/nBpQ7Doq
         9NcUmFQJtJ8Q2BMdiV4AyEl1bBNHZa2H6IDo6fhNr8o7FZtsYXtMq0l/z5umgcMkPrma
         30e2m8w5iPN9U2ocFO/FR3LLs9bw+3qET0Oe2t0fjebFPVX+YJThN900yV7WA2Q5BitX
         nmwQUHv/sO4fm3EF/6cQEpcxX/4xUJ3VPnyOpllOtCPW6WYMzJBnNHoJ/qsgPKyXsu9b
         L36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xeSnTRMa4bYuKD/SKqG1j0Tlf21/Ddj35fMRyx31G+o=;
        b=RLHbWqRHsaS34V72VT+vef09W+tEp+b5TWesJUbQSTygb5C5YnbJMEBQdRigefJ1fM
         lJ32nZj5S6jQZJ1zId1BYdnhevAmhFMK2SS4W5Zc+tJ7azy9EDT3HqdPpXx3+4vjFo/L
         PaagD0rQRGjIhvloUSZutJpq/l2FeX91bmYCI5ibV2bXLgkicBS30y6VNnPNpxX2uwnI
         nz2HNAjftO7DL2bGVrE5aCsD0gNHidAFPq3wZp0mPFF8zpGtEdHYEBBbYf2V7UYK6hRd
         AiwHUZ5fhco8m77BxGXWIIs5rK9+84qW7mox0Nde41se79xtmBYFOXDAXQpIjKjhUc9G
         1dyQ==
X-Gm-Message-State: AOAM530HTir5ZehNJ9sCG1iU4pcLTKAEeOq/DnU6K/5gpejbXKvWyScV
	BeOGZsYKnoX8ROXdH4eGQkY=
X-Google-Smtp-Source: ABdhPJwpVwNzbQ+ndqOGVfCkzMHPMlPwR70FIUK8Zq33bOYmLb12JGdEa/fFu55i/idYC85RvisHOQ==
X-Received: by 2002:a05:620a:102c:: with SMTP id a12mr4411482qkk.47.1597455609378;
        Fri, 14 Aug 2020 18:40:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:120e:: with SMTP id u14ls4983492qkj.3.gmail; Fri,
 14 Aug 2020 18:40:09 -0700 (PDT)
X-Received: by 2002:a37:a851:: with SMTP id r78mr4406035qke.419.1597455609049;
        Fri, 14 Aug 2020 18:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597455609; cv=none;
        d=google.com; s=arc-20160816;
        b=vX1QFeLd6Dcith7Bf+S9Dm2y2uFf6d9weYIAa88gWBn4koWrKFJajnUP+7PHvkJSA9
         ayJ3GPuHM8YvuUY+ACHVdm0tIe8zkNDvzkNZRqwwwGt24Ja7dfMXVY/vYb/6BDdNmyLL
         cfH9ByzPritQTyHoEag4lKE0cZYOHbzKoNSP63imjBTVYJQA3bzENfd6BQDYAX0MiGXM
         V/nGdWhpkYpie8q3vzUiO9uayPn7KGqsYS1MICnCr7Z8no8yawg9AHye3R643XyOWNGH
         0tY1/zAI7F7YIh1qXxmttqteg3B9qOTWge0UdrRj2lU+FEYOsjhQkfnDhrEhBaNFv6EM
         9RWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=/LJPODsukhk9ilKQ5Nhku7oJFNIdXYTCpu7/+RHvulw=;
        b=t1sY4RdHvlfl2/3iLDyziPOkxiWtVs+5a4G40Xx8ZZEYFHd+yB49H4k1atJk8HaFC/
         I9gCqqOrzYbVxafd3B5CN//QqXqnuf9I2ggUc0enqGc1kyXNCIHJI0aJPthzMc6A8v0u
         MkThvs2nbPYH10kVMlc8VMCywch8VHxdepV6FPvtIuHbTtwZgRe3PWJ85EIbrHGP8/P7
         r+Xr6uBeEJA5rFH8Se5zBh9SbOIQwdI+IZWGweC6ZK6wYjU5ZXIXDTw3nhDsmZkprdPR
         T57GAMR3wKcU/PaVX15+a5Hta0DezCxl/F3Z6kueEEgvmD958WiOOnXFY5wYEYydpNZ7
         sF4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nLw79+rm;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id z19si499665qkz.2.2020.08.14.18.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 18:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id e5so8367913qth.5
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 18:40:09 -0700 (PDT)
X-Received: by 2002:aed:3789:: with SMTP id j9mr4809739qtb.251.1597455608719;
        Fri, 14 Aug 2020 18:40:08 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d124sm9846309qkg.65.2020.08.14.18.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Aug 2020 18:40:08 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 14 Aug 2020 21:40:06 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	=?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>, stable@vger.kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	Joe Perches <joe@perches.com>, Tony Luck <tony.luck@intel.com>,
	Yury Norov <yury.norov@gmail.com>, Daniel Axtens <dja@axtens.net>,
	Dan Williams <dan.j.williams@intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] lib/string.c: implement stpcpy
Message-ID: <20200815014006.GB99152@rani.riverdale.lan>
References: <20200815002417.1512973-1-ndesaulniers@google.com>
 <20200815013310.GA99152@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200815013310.GA99152@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nLw79+rm;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Aug 14, 2020 at 09:33:10PM -0400, Arvind Sankar wrote:
> On Fri, Aug 14, 2020 at 05:24:15PM -0700, Nick Desaulniers wrote:
> > +#ifndef __HAVE_ARCH_STPCPY
> > +/**
> > + * stpcpy - copy a string from src to dest returning a pointer to the new end
> > + *          of dest, including src's NULL terminator. May overrun dest.
> > + * @dest: pointer to end of string being copied into. Must be large enough
> > + *        to receive copy.
> > + * @src: pointer to the beginning of string being copied from. Must not overlap
> > + *       dest.
> > + *
> > + * stpcpy differs from strcpy in two key ways:
> > + * 1. inputs must not overlap.
> > + * 2. return value is the new NULL terminated character. (for strcpy, the
> > + *    return value is a pointer to src.
> > + */
> > +#undef stpcpy
> > +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
> > +{
> > +	while ((*dest++ = *src++) != '\0')
> > +		/* nothing */;
> > +	return dest;
> > +}
> > +#endif
> > +
> 
> Won't this return a pointer that's one _past_ the terminating NUL? I
> think you need the increments to be inside the loop body, rather than as
> part of the condition.
> 
> Nit: NUL is more correct than NULL to refer to the string terminator.

Also, strcpy (at least the one in the C standard) is undefined if the
strings overlap, so that's not really a difference.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200815014006.GB99152%40rani.riverdale.lan.
