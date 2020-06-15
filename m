Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZEZT73QKGQEDE26JQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id C88871FA050
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 21:32:53 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id r185sf4492398vke.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 12:32:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592249572; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJwvn07lHg46O+wrNo+qm4M2aF0t5aOcDxtgSf+GbQR4Kb0zvQ6rOyXn5ddzyiTM+J
         4rcHGQh3rHpWTlCwpWs8iaduYw+QxeDbaIJw1sW/kcHzd1UeVg8K3KOSyrfvo0sNVbli
         RBIuF61HIi0H1NO3CXiIQbyMwbloUvABcO6hOPtK4LQqVzboZwu8J0uCW2woHf9mHgIr
         vxutK1wbfSgvblR8zK54PWOns35Qt+xmBZBymCTL34pvxhrcY7Ix/oXfAgR3UxpBaY+l
         ToYnRMnLeOQ5MUxNhpfhokZRHyhrI+86l5Ve2oHNElXfXOCSp0uRtRhjgMIZmYagqB33
         R7Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1KxsMCQPkrCXDfy19xA/bs33CYZ0mn4BJk1RospA0xM=;
        b=D+ckD+5SNygkCmiWrLqR8oBelcAs5KBHZV47v0AIWNO8zYXB8OfiK9ERI+Be7Q+hMa
         lvKpuu/qlHqEpjzhkHrVShGGCOhO+guTwUwHCC64B3AVi8Lm+s5XRyc6bfDqkqcMCapH
         rd6+ZKX+gcC8nFOKCaQcBzyzsFu0qnJ7buevtAcigMlEBtwqnMMERyap8FeLcGbcRHqG
         NHSD/+SLDHYAS+GwaOF2Y4cl5Y8wi7njOkC5YX6d28F2DKX6f8fz28LuFV/foh5GaNwS
         asXHB6ZxpjndB2Avt9DCsiPk3ix7o4HqOHyj2QwF1/JpjNB6HrB07tvoyPTACujO0tzV
         8/Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QBeg3rvb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1KxsMCQPkrCXDfy19xA/bs33CYZ0mn4BJk1RospA0xM=;
        b=n5JeTSOT2+JeOlN/9sghH37zf5EqF0AjD6zvdxV0yvmzPwvN8EuaVQn/dsRD3raulT
         PMazrcddiYIaM5kllEtnDkf/bOEV4z6cRI1ZitZ4sqkWCmj2AI+IZHd0TKIllmZc9hmE
         RpkXl1YwO1ywpzGawVdfA2UMJgyoey2NYqAfyBE2qaCfh+pSBp0XEIY218kF8nIFy5gy
         UTH9GRbxdOifZgpUewchJaPXaBMG80eqF3s1vNMZgK9ua7TPG376OntoI6XXkl+JxITC
         5520JZU3w2v5P/xV7LnXMIJgODh9gxt/2Wa+pyFTHCk3gj6oyfXDhK3bY8hufw3deuvu
         RNaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1KxsMCQPkrCXDfy19xA/bs33CYZ0mn4BJk1RospA0xM=;
        b=dDfCx63R4FgQ6zjkvzqu0aYDLOQ8cjyR0w0D8/j9DICqbrtMVhdLoxkp6ygUDiIpxJ
         GVCuZrBFQB5O+V6IEMttl1D8iifR56b3N894ZPZaS5jGTfjOoVTOKBI2RABfP1m1/ylg
         wd6DmgvfnRSYGM/jqzrxoMdwthxczlSTL9f3wGmLN13MewqDAPfDWMlTYrcQd0UOmN+m
         Y43+65/2tvNseurfAbkHv2w8Fz/aT8UPc83Ht74HmxIfgA5zrHbpcY1HFXsYoVUBqHXz
         deQaB5bsz0K4ef3LXiH4yGHT+V7GRuFdI7jghxxp2VqBAd55JmzsLVp36xpE3zXTgg1V
         kd+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UiXE7I6mF8nFVrSXNEp/uO45KGl1qpHeJD5CASt+Pmf3wEtzO
	qoBrXvWTRMG4G8nuT0ip1Bc=
X-Google-Smtp-Source: ABdhPJwUgrbrvpqFCAK32AL63NwmXA4QfDSFqSbAR5Trf5oyOnRyWvrlZ5RKdnK4yqSpEg6oZmw0eA==
X-Received: by 2002:a9f:3e83:: with SMTP id x3mr20382438uai.28.1592249572607;
        Mon, 15 Jun 2020 12:32:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8717:: with SMTP id j23ls1598256vsd.11.gmail; Mon, 15
 Jun 2020 12:32:52 -0700 (PDT)
X-Received: by 2002:a67:2e10:: with SMTP id u16mr20149493vsu.120.1592249572273;
        Mon, 15 Jun 2020 12:32:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592249572; cv=none;
        d=google.com; s=arc-20160816;
        b=Cga4wjLEeM4paMklMu9eimeLqc/4hp5vQJDcJ1BHsuYgGeNZZbci6sc0YRvzAsGJTO
         IKLn8KangWj4nzxsHpC+LEVLIL1mpskTeKuHClpM3FimEmwFubbjUYo0Ixxy5obc9ITj
         iZe5yNlf1Xxc+mOkL7eDuQX0s/YKJzjsWzRzNPIBOgmDKg9Sk7KcxHC9/GdlprjUIkKk
         3D0u57pYhilPHWYf1gBNpnc1zmhFGlXQsXnB9st1BccjkazF5j8szFwWRuIbnQzTIArL
         tdA9/zYDHSQxS07H/8jlqlQqWC9rlulv1B16JCQxbRju/NVPz9pPKhH91V+W9DVNOuYY
         BNtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZjAXfZy5BudfnO86h+8mAf1S7F89/y7Ht34uQW17/+U=;
        b=pkA8qbvHGXIF8liaQbaxMUdRu0Gbdl9X9SPW5LgoOOfNt9YhaejRpryCPy5mzkOAgR
         FW9ELxHO5/+3SHgZVgerD0gWFeXFsiWkHheWrXQji/2AC1u543ZJ4B0yxcQxSzwbbk2v
         kmsQj7F11C17tvDEwcpV5z6cXGjgGtZvvDBdnteJWUAPBd8jVu1g4E5VWzPTQbjFlrSk
         snQlzL9bx5sfHZy1VulJWiUeWeNXU64itahW1w8WgnHXMX9kreYcubS66eRA3cpsi2jc
         5iYOp9UYeHsUA1VSAkNtAv8+Ay/VUbFMfgLO3MyIH78SYvzMXUDSxpiDL1HL34hI5pdo
         YqHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QBeg3rvb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y7si148507vko.5.2020.06.15.12.32.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 12:32:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id n9so7223602plk.1
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 12:32:52 -0700 (PDT)
X-Received: by 2002:a17:90b:23d2:: with SMTP id md18mr774459pjb.179.1592249571413;
        Mon, 15 Jun 2020 12:32:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n189sm14973604pfn.108.2020.06.15.12.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 12:32:50 -0700 (PDT)
Date: Mon, 15 Jun 2020 12:32:49 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	Network Development <netdev@vger.kernel.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
Message-ID: <202006151231.74D2315450@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org>
 <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
 <202006041318.B0EA9059C7@keescook>
 <CAKwvOdk3Wc1gC0UMsFZsZqQ8n_bkPjNAJo5u3nfcyXcBaZCMHw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk3Wc1gC0UMsFZsZqQ8n_bkPjNAJo5u3nfcyXcBaZCMHw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QBeg3rvb;       spf=pass
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

On Thu, Jun 04, 2020 at 01:29:44PM -0700, Nick Desaulniers wrote:
> On Thu, Jun 4, 2020 at 1:20 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Jun 04, 2020 at 12:29:17PM -0700, Nick Desaulniers wrote:
> > > On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > > simply initialize the variable or make compiler changes. As a precursor
> > > > to removing[2] this[3] macro[4], just remove this variable since it was
> > > > actually unused:
> > > >
> > > > drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
> > > >         unsigned long uninitialized_var(flags);
> > > >                                         ^
> > > >
> > > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > > >
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > Thanks for the reviews!
> >
> > > Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")
> >
> > I originally avoided adding Fixes tags because I didn't want these
> > changes backported into a -stable without -Wmaybe-uninitialized
> > disabled, but in these cases (variable removal), that actually does make
> > sense. Thanks!
> 
> Saravana showed me a cool trick for quickly finding commits that
> removed a particular identifier that I find faster than `git blame` or
> vim-fugitive for the purpose of Fixes tags:
> $ git log -S <string> <file>

Ah yes, I always have to look up "-S". Good reminder!

> I've added it to our wiki:
> https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tricks#for-finding-which-commit-may-have-removed-a-string-try.
> I should update the first tip; what was your suggestion for
> constraining the search to the current remote?

Ah cool. I've updated it now. It was really to narrow to a "known set of
tags", and Linus's tree's tags always start with "v".

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006151231.74D2315450%40keescook.
