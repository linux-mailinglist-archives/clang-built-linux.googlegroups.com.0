Return-Path: <clang-built-linux+bncBC25XUMBOQIOZPPG6UCRUBB34AUNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 570821CE30F
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 20:52:30 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id t23sf7411876oor.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 11:52:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589223149; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ku4q1G0+3uBeWjhKzqTiyExUKztZP/Pfv3SWTL9lxnMp/k8LgIOAT80vxvfRzmIOys
         YqTDz/tplRm71UifZ0XzlYAfVL33q4HCSO0ZrveWKKBM9OPoQM/tZqgO+fBEY3uGW0F+
         rTUUiOxzMDtKZLUbJ0MRJgO51uPqEMPz6ojD0uuCqaoK40c/cZvwqNDLT51D7py+uY9s
         WGoGENtgCHi+5LAuOWAAdzMq+Stl9gVPpJqevERBYAZsjj1a7DKDLeQN4T42QpOQykw6
         nfQNQVcYA3fVqs7oVNEnjGz+HkmgIcyYxG36guOpxbap2uFEdCN6qS2nbVGrou/MRNrQ
         az4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fC9xFDk2Tzb4TiIUS6BV9igbwJOvScNIUd4TY16Qaq8=;
        b=CIlq5P5lFZ9n+1S06i5xLjz9xtaVwQvAN01xvlnYP/85Oty1Gbt0XPmHkC3rB7eHXf
         60c537MuoaqQ7RS8aWWiGyQ2HjdC3sWtwxewtPvpF9o+K4QET5vFPjIV291ptOQlLPFy
         q8Id0brZOku4zmuaCa3FHchYb2sYz1djMiLmzPnnGVHrSQO8bPYO8ozck4u3a6Tmfb7U
         Ocnwp7t38cSxqMF+AC2Eh28/f4tNHYJDNLWu/zPabzwVT58Z9rNJkCr/JnVgDWnF04JV
         VV9x7OpESfAV/Hcd0aeKLqBDam9t1DJuOsuujCKy/8obgruX5oO9PX93dCNN9MaKnIEk
         aa0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vbBEkmgS;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fC9xFDk2Tzb4TiIUS6BV9igbwJOvScNIUd4TY16Qaq8=;
        b=NhopdMcruBWBtVBruhTd0XtGEinuf5gY9/nt6Y7qC2oKCc0N+U2Vzt9JPNs7h6gwgo
         QEckLEEnVju9v/B3wCB70q6hIdQP5qJNIDJJXyuFHFRdf6pCXOc9nXAY/oRkKRJ4xbaR
         9Go+1u50e+d4Tvhjo1GjTe+D5KbmH++E40Gq7HL9KR2ezJgYCcB1LKIfEuIBRf8KzdhW
         n5bQ2HxbqUsZxn7z+ypNnrt6CNOPLlP43/aUfpTC8QwnEFEzxUDQK8xNtevmAWl4X11R
         J8e0RzhQgcN5VOcYU9mjqX6zza1a6yGjNpgVcWg9A7oJ7VgJCTNOwqteYfTFGvf7oknC
         T53Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fC9xFDk2Tzb4TiIUS6BV9igbwJOvScNIUd4TY16Qaq8=;
        b=O44pHvF2U1OlEOS7V1fZlxFtb76tnicacJ+iKjTNZsJn5ZNrre00Ef56xesxSamWTO
         7RJlpSUDSEP2kFJ+BSff9TNRJA7/O1KXjZDp/BVwNImd9ilD5ciW/S6j2AMA6ncGMzwk
         SqYnGiREFlmXEmK3nZF5ok/I8Xnql8/VWEWhmbNlh0l5c1WGiKIgRJsYDXJVh5/kZQxH
         B3FT5xoPiz7qBWztA8Yq1zA97jXvBBsT3bMF8SOYtw3Pd/g+Ef5g6nDqWoqw2yvvFr1+
         Xcz0YusW83uE9LCku4HCRbHzF3zV/Oxg8DoqsZe6s0lKiBr8PsnzEMVMO7+/ZhAwMpNv
         Z8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fC9xFDk2Tzb4TiIUS6BV9igbwJOvScNIUd4TY16Qaq8=;
        b=f8JN/T95EcGT8kZmuooTeJhMSwG/RyStnGLDtC1jZ5U0nmaiegEY14foCWLqYlIjCQ
         snA14bcmqMxEfLZBFItbNGQFVqlHLpzqnyy7UKEBnACIz0pv8j58hn4TAx1yYCc7Gtve
         PlDLBqCjAu/ZphAwp66to1NgNI0M+f+5kQwMdvcl0JSqj7BlFN9VnKZ0n4cq6N7pJws4
         KG3u7OzkS/y0L5oxs9ohnxSdQF3fbWWSEzy1K53U2QPD3rwB1H9y3W9DVzPuFL5WaQX0
         /K0g2qfBOQ3MFZoRK7S463NInPcVudNC0IvvdEj8VwcLh+4WExoBmc05RBCqzIcXjUgD
         AWpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYntFyiZUF+RNuGdATYEjMeAvC1MZFT+DPH5tzwfXAgoMISNA2x
	toiwf67N1AzyQPDrkpFVcwk=
X-Google-Smtp-Source: APiQypIzr8vbh0p5uoG5uKQsKvMoEwQ1W7OLUADbtDRYe+ijb3/bovhAK9IGqnr/xR8AfgK5Y/RjTw==
X-Received: by 2002:a9d:194:: with SMTP id e20mr13149587ote.13.1589223148770;
        Mon, 11 May 2020 11:52:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:255a:: with SMTP id v26ls39933ooe.8.gmail; Mon, 11 May
 2020 11:52:28 -0700 (PDT)
X-Received: by 2002:a4a:e40d:: with SMTP id t13mr14906171oov.32.1589223148423;
        Mon, 11 May 2020 11:52:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589223148; cv=none;
        d=google.com; s=arc-20160816;
        b=UctUgRzneNKgfVeVxAVx+ZsYyhiqhIOV3ZWWX2ltbtmI/1EHfT3QBZ4kIi4LH31XdF
         Qss8OJ2cWUfl5jC1ys0OTxEMcWNI99mrn4ki6WEz8wYQSW3555u8m1jWtrlZyHhpWIG3
         TG8ad1qZ+wKObhe/88yHEK5jAGfMEkI9NRW3rUBqxECjyuebe5BUEI0w13r2N7CPDjHA
         nxMgaFJakXF8YE5al0UgCXLqKDBZTdvoui654TDA3g2nxrzDvCgo/QtZSXah1Py4ANbw
         MMhxjYqYsv79ubzpahLrjNZQZ4mUJ/2y7zVaEgptL6LV2jkFnmIwWUsZ7Sg8dsPYlVC4
         pIJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YTCOmg8Lu45FSlE0YEbxP+MF1nPzk5IAZBv8bJFRLRw=;
        b=Tp2J16sPkghUFnj0saRV01yMIhvB3NuCbUWpNNtTVlDKlVHj7p3b3FARfPO1pdMCqM
         WvZ5LdE0EK6z9d/RbJsHiYUimxaBNvlPzDhMmhya08aOV9PE4kE6/MqQ3pPMRUI4pl2X
         ztpEmNKMe7St7SH7Tb39aws9zIU6tOjOU6xygbu8S/Xfr4YYfmI3zb6sTOnVB7wyE+KZ
         vhIp36IxIdlTlN6ENhZ/cPo1uGJ+0fyc55HhrHvuV101iO8FmCSGYUKhE3b+vL9pBKlG
         eNqVBoYoAPJ1ouf1IwhOnI6PrXJKW3Vg6rajOiez+kCNVXk+R03bvXeQcSolC7YAuQkT
         ScBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vbBEkmgS;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id w1si54758otl.3.2020.05.11.11.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id 17so2544898ilj.3
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:52:28 -0700 (PDT)
X-Received: by 2002:a05:6e02:5a3:: with SMTP id k3mr11399870ils.11.1589223148150;
 Mon, 11 May 2020 11:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200508182835.228107-1-ndesaulniers@google.com> <20200508183230.229464-1-ndesaulniers@google.com>
In-Reply-To: <20200508183230.229464-1-ndesaulniers@google.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Mon, 11 May 2020 14:52:16 -0400
Message-ID: <CAMzpN2hUQwGoYQnsKZJHFY=p-=-zXTwhRnCejhoztCvPX8e=CA@mail.gmail.com>
Subject: Re: [PATCH v5] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Axtens <dja@axtens.net>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vbBEkmgS;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, May 8, 2020 at 2:32 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> This is easily reproducible via CC=clang+CONFIG_STAGING=y+CONFIG_VT6656=m.
>
> It turns out that if your config tickles __builtin_constant_p via
> differences in choices to inline or not, these statements produce
> invalid assembly:
>
> $ cat foo.c
> long a(long b, long c) {
>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
>   return c;
> }
> $ gcc foo.c
> foo.c: Assembler messages:
> foo.c:2: Error: `%rax' not allowed with `orb'
>
> Use the `%b` "x86 Operand Modifier" to instead force register allocation
> to select a lower-8-bit GPR operand.
>
> The "q" constraint only has meaning on -m32 otherwise is treated as
> "r". Not all GPRs have low-8-bit aliases for -m32.
>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/961
> Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> Link: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Suggested-by: Brian Gerst <brgerst@gmail.com>
> Suggested-by: H. Peter Anvin <hpa@zytor.com>
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-By: Brian Gerst <brgerst@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2hUQwGoYQnsKZJHFY%3Dp-%3D-zXTwhRnCejhoztCvPX8e%3DCA%40mail.gmail.com.
