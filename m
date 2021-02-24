Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYHS3KAQMGQE3C2VRCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFE9324557
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 21:38:57 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id j5sf2615725ila.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 12:38:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614199136; cv=pass;
        d=google.com; s=arc-20160816;
        b=S3iBb5lgMJ+GKIJpSKENEsbcHF8NFhVaRbHjJqcz/lLqomk1bufu9PeQ0IpadKZbSy
         rEryz/sewPhJkYh7Ul/Ae7uDGjJtvdySsSNGqWqj/1HiRm7jYAlB/QIfAoN0pYSuoJu+
         q1Z64WfaTGZZSG4H93CdVhuNFHlmqGen8BrpWWH4UoqrZl6v/Tut/V7wUQk5EcMUSR6I
         IjIMEDQSc30TABbXq2zRvj9mtatul+ACHMuMIS/M0ALhPKkj20BT1QObCkLYPO3yeT8L
         CuhDlAg5TSnhxq4XnYu8gKjiU5Zd3G6lVGrH6532csPH8aArhJyQGTi+eVnAQhhWq+tZ
         fsIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sfHTNEU9y7RAwL4Z49+WNRYnQxrsBN94O8otbRQs5wc=;
        b=stYgD586f/xfOkIl5aCuI5MJbRjzzOvmrbOuIKTPiWBPjEKHmvfDeDP+yaUaG5qyEd
         X31O0X+bQ/z2zu8oJ10NqXTPeNMffaoiVLBg6ZM8dT4HgiFt+g+g5NKzzr00/Y8k6G1S
         ws9NIkFvzolG1gCjTa8U2spFn4zkqnnVoOge1yTww6nu9fqdCVKlwhTgIyPhrjOJR5jx
         xy6xBJJwXmyP79Vi5Dsj9QqzgFZ39GXPczoWx3x5ofsq4sCuKoht+t+xkTDOC5WCss7R
         3W0pCuUP59fhvbaaxK6tKctgxIZr2NNpsE/pbi2pEAuEjMnSXQOrp7n/RTaXDmoKfBLH
         FOXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="PkCcl/k7";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sfHTNEU9y7RAwL4Z49+WNRYnQxrsBN94O8otbRQs5wc=;
        b=UccKLXgeXutiMKw16QRM5NUE/9VURyqgR7WuCmt0m0uikDIsPBeQ4rGEJprRCVKWfc
         iDa1hOSh9Vf8rQI9qrk05RXof5AruzJzhyTC5JbNuXiGvHONbW398K1XpNDAyRwq30ta
         ERGH7Dn0jYGQSUebcmlAzRnIjYrvcIQVI9rosVsaUZaQtQBH2RdUwVRrhlVhYWwsngZH
         0buXGloB4M6dH68lqehJcj98F9NU/L0pqX7SSQ7905jOJUqBV+H+5Ozdrv0vHeeqLwpj
         L2WUKpJwCimDlPxb6/H1i+fzGvGFXYn02mAK08Xe8pzg9vKSCP/VIXycNXqqR5RVUFXC
         IWkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sfHTNEU9y7RAwL4Z49+WNRYnQxrsBN94O8otbRQs5wc=;
        b=gUrXN/ofpXoZzEcz1Yv7BGr2B0S7xcq3i4QxFZDa00x1GjHU44iDPdBCHmDOOHiBaH
         BR55VcJw5kXvcLaFp8Xawqoil8LIAY+U9bd4DuhwFJv/vYfsFVYt5kUAABFEnLzFLQ2a
         uiZ+ZVtQeYDrBnhBGtTkhTKALq9imPG8ihKzNBX9jqoE+ZHLAK7KOjKE3Hd+nu3ZDO9q
         wU2rFP5eeG2dFhv1r95sNO2+s+vW2DzuLO2I0i2WXZTNwf0ZboCOJRw8Y5LV1bRdhIG7
         iqdQ8hRSp0AjiPxkUeUrJLRVdnqp0w9QAp25uIRhTcU+mA7uNi5OdNqXz5mwDFiAeEaR
         2m8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rOgW8gNN4t92jkVUpQoFa1VxfFW2iw3TTlbktqTjoqrpfa3qT
	ADwuO4U5oZQWfrcOEWZm3Lk=
X-Google-Smtp-Source: ABdhPJwV8fuw7OYdA93KX49AiOBuOy9a0poZ9SWLrElDZginNNab9lwU0OQM3khwrLXruo7pF7CYjQ==
X-Received: by 2002:a05:6e02:20c4:: with SMTP id 4mr25479969ilq.221.1614199136783;
        Wed, 24 Feb 2021 12:38:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a85:: with SMTP id k5ls882103ilv.6.gmail; Wed, 24
 Feb 2021 12:38:56 -0800 (PST)
X-Received: by 2002:a05:6e02:10d1:: with SMTP id s17mr2726117ilj.159.1614199136367;
        Wed, 24 Feb 2021 12:38:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614199136; cv=none;
        d=google.com; s=arc-20160816;
        b=i8D+0dEiFqkxjxDyS0orjVJq/PvZ11FaganvvQJ3zmEomKEZ39h5ECtQbxp9CiVsXL
         XXjdEiSgULjizpzs6qRrtHIj/xGrt+JCO5ndTrqZfiumeF/gAKyTRBdJeOgodBR+55JB
         LH+CppyAmQJpI6Y0pqAapRZjz45Ot1NPmSsNZbD1Yw+U2M2LKyPT0ZKYo6sfQ39PAqvW
         IW54P+wPKGLtr9SqRQO4rMnJpv1hzNYxstkC7qZK799BaEToY2IhGpEcHZo0PCSMeNss
         okTLhRksVz+wHRGTqz9fHTWk6DPxucqbe8oepACuW0t9rwS09eBZ60hqiUqDqljyAp2o
         gOZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GZwVz+by9nHRK/VgqqFp4hya3sLU12ve4q94Q8a1TOw=;
        b=ykb0BTRU7dWz46nalv3LyAZLkZIHzLGGmCC6dZfqTsygswVB6mtKbz4qajiIjEqzCu
         hznNJFD9qmZtvV/uEQeJSoKAb66NCo01HGGIYKW6r8bZkjKcdc5M4QVt0ztUlNW0GsFL
         yPFC7n+LK3JDaxwO+rRL2pW36/oBYflTUjt8ZcTBJMCMU07azNQCbR80kL5dKY+QLAaa
         p4SY8vfYyNhsL5PxzcunRTU1tbiz/j+nuiofwgxcdpHicfvuI63jx4gYSS9vDUDGA61J
         pHAlP01KeOg0GxcBnbq+rzadMKXo9tui93gvCo6Zpnq5VsmP0SaFUW5zNYs7xgInJRCC
         W4UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="PkCcl/k7";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id y6si221434ill.1.2021.02.24.12.38.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 12:38:56 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id 17so1908779pli.10
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 12:38:56 -0800 (PST)
X-Received: by 2002:a17:902:8d82:b029:e2:e8f7:ac44 with SMTP id v2-20020a1709028d82b02900e2e8f7ac44mr34308993plo.60.1614199135689;
        Wed, 24 Feb 2021 12:38:55 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v1sm4268137pfi.99.2021.02.24.12.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 12:38:55 -0800 (PST)
Date: Wed, 24 Feb 2021 12:38:54 -0800
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-parisc@vger.kernel.org, Helge Deller <deller@gmx.de>
Subject: Re: [PATCH v9 01/16] tracing: move function tracer options to
 Kconfig (causing parisc build failures)
Message-ID: <202102241238.93BC4DCF@keescook>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-2-samitolvanen@google.com>
 <20210224201723.GA69309@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210224201723.GA69309@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="PkCcl/k7";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

On Wed, Feb 24, 2021 at 12:17:23PM -0800, Guenter Roeck wrote:
> On Fri, Dec 11, 2020 at 10:46:18AM -0800, Sami Tolvanen wrote:
> > Move function tracer options to Kconfig to make it easier to add
> > new methods for generating __mcount_loc, and to make the options
> > available also when building kernel modules.
> > 
> > Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
> > therefore, work even if the .config was generated in a different
> > environment.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> 
> With this patch in place, parisc:allmodconfig no longer builds.
> 
> Error log:
> Arch parisc is not supported with CONFIG_FTRACE_MCOUNT_RECORD at scripts/recordmcount.pl line 405.
> make[2]: *** [scripts/mod/empty.o] Error 2
> 
> Due to this problem, CONFIG_FTRACE_MCOUNT_RECORD can no longer be
> enabled in parisc builds. Since that is auto-selected by DYNAMIC_FTRACE,
> DYNAMIC_FTRACE can no longer be enabled, and with it everything that
> depends on it.

Ew. Any idea why this didn't show up while it was in linux-next?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102241238.93BC4DCF%40keescook.
