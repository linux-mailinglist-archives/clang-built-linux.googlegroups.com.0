Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG4K4CAQMGQEQWBCGJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B6932575C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:14:20 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id f127sf7420501ybf.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:14:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614284059; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sd6WHtDjqnKgihG0NmUSI5Cht5AJ7HzTnuKp+aV62zdK+zubxJXGninOATPFNcXrOa
         seLjk6qE8es1HwhaLINUTN7BtgPdgy5LtDOCyqsMy23+qSbec4JUnHM3lLagmqIpAF8/
         TYi0rcx0sB8cj/QNAyHJj76Ca6DoYeb1UPbcsdMvluYlQjTE2YbH3oj8Fuinqv2LPDrs
         W5lLL9S9sPAcPAZtHYWELMOSo1mPbwbUaoUCcOYweAm9h0XwzRMhQI4+DzyzKeSnPrCi
         q9ch9Yc7r1UFFy+E5wFqiAr/jHTsPo9vZ+/ZbE4FI53Avx93MhmMLhWfyZrIw7y5GAOi
         DDMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ok/wQarBgjYnxiRWvRXzLLJgcX7KvQ0x6WG17XxRHWY=;
        b=yGIXH9XpfvxSTJgEZ++5ok5cVy5vbFiRCpW0KxDY9M43rgu8mvYh4ugaE1d8icNjNs
         4TE2nX/EvOyJxRs+AFELs3Dx0PqO/idlfSyD8thkNGJaFYlMHa938IFvGIpvlRWW2lu+
         lbqmbZITnbocd6otXbiFaxDhOzRzlQQv263dfsczeyiLfzCXMHIl/xjJzFCtuO4Yl5Je
         /m4OnAHRadmKyRUwyTdePA0GWiFnRB9OoswsEkJQU9lgXPLxTJx11vhAW/+AamI5S6jc
         2cktuJp3wPxbJ9qag5uKbRZdnnlXLcHcR99hMrLPbw7PJH0ECfYaQ/jkz+yMT7uR/Lbw
         JCLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b4JTddy5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ok/wQarBgjYnxiRWvRXzLLJgcX7KvQ0x6WG17XxRHWY=;
        b=K3KY9jc/EW30zNrtvuuSclXs+uOjRf9AvVM932TIgBo49kdSVoGUl/3e+eKPJgNmwL
         QIThetFb5+mrq16ag4Ijr5rBn+upCFgL8orC6P8q1nz1n2qi2fF2+kJpsdwyDpvH2lAc
         J+vzGFGsfmX6gbbllpM6hGXClFWtCoF88J4HqOdZwSaaea952LP79v3nGRsICFCIUero
         E9QkqovM4uRndUh4t69FoImOUje/Xb6/Q/juGueY6AMtIdvHxu4mAuDJEbS3aeNqpbtC
         2+joZXDVfx8c7p3t4Mmfwsvs9NH2ImBnv998T6S8IF8LUem5jhsOExgAWKYTU+76pypH
         t+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ok/wQarBgjYnxiRWvRXzLLJgcX7KvQ0x6WG17XxRHWY=;
        b=ErzSLBvMXaZSHiyYfKuhND1+OnAaGHbQxvW6VvPb9cz12l2lw3yZpwW2TmQnXa9urv
         l+/Zvvh/m29OhMUKxpbxIB2yr4wytfcllg7H4M7KAzjlGQ8U11fMPxghl0INv8kUWnPO
         s7KlS8FikyQR3mjHOOr/TwGIl3jsJyROU8/6Z1DSt5qCZtFVDHQNHG0Tfe+rTdAt/M5s
         KZMwzDDkzF50MBljV2OFIFZhCappaeKqJJzVHBsrVof2iKo4K66gqnkG3dMQF19aaCOE
         aBTABobakG1hQ38Ps/x1C6GoY7LmB8FEc4adCuUKwZosLzCpBxMzt2lemD9f6xlmELnS
         Ot0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LcT3KSveY7IrUYDpRvZOHqUmkP8U6go1EKmBlKP+i+chlmSMT
	QFEoDg7917pEo0tjRR8gXHY=
X-Google-Smtp-Source: ABdhPJxn6C8GDz1MvCkFqaXDSySLnBUaL8CkC9TSL78WgdBkrpUHNVR5yDeUZp5JSMnnAY0hi+FZtw==
X-Received: by 2002:a25:6e57:: with SMTP id j84mr6855948ybc.277.1614284059398;
        Thu, 25 Feb 2021 12:14:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:68d4:: with SMTP id d203ls3165947ybc.9.gmail; Thu, 25
 Feb 2021 12:14:19 -0800 (PST)
X-Received: by 2002:a25:e403:: with SMTP id b3mr6228652ybh.503.1614284058961;
        Thu, 25 Feb 2021 12:14:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614284058; cv=none;
        d=google.com; s=arc-20160816;
        b=uzHdgXzhfCG2QFvpcvlzCvbZW9cXHm9Aaa2cGMuQkC8V8+cFdZ1/9xXr9zl3hkrfS2
         T/Ayvg7CKGFltNZ5P30UkIcrH96ed9JE49kJBkN1hVJWRe88gp1rp0VkyRESC3fSGsHu
         G15ueKj10fh8Mee0H/kB9nDUsk1omHbMMuV4LcXUPUS0dfNogkh92lLIImLvlzTwu+Jv
         ZB3vywBOMhdM11gKF561hi4lUes46CftFNiVxLacBV8uf8yeAWFpgASsBGFS4mBac1TD
         Tc6xFD4ypqsNEl7kCEND0MU9va5jnfVmh3NFxBxnvMyEhuBRhvRMQwf109ncJip6lpgw
         kziw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Zvcw89WwnBGHGgFAGR9HWVcW1flA9Xzl577WVAqCD78=;
        b=YM5JAWvnzU/uHif53puT/8TRbl0IH1djc10jsCSIzZsgvfK/4SY59cbiyi0i3E0QdQ
         Z8xOOftBHX2gHax77MXmnWRL8jbiwmgv7SARXLLjiNvkNRE72clA8WsNQCg0QI92GBzO
         JwWGc4N+6jik6hP/hNQlFNZhtp46pfgLP8IvEEpK6HkWAl7dWM86w0t9htnZ8YxhXtbw
         8LQJLNXxA0bq+wMojjVMRiY5RWkeDkPGGebdGGbPTE5tkajimQ+JYzD3rRGlmmmdahVm
         jQXyfG8Rvgdzmv/d30p65mweWwNT+yXYIcTL6l82UI63W5ei13gYGgONw/TyuKtV9pOq
         zZLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b4JTddy5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id k6si275254ybt.4.2021.02.25.12.14.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:14:18 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id d2so4236771pjs.4
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 12:14:18 -0800 (PST)
X-Received: by 2002:a17:90b:4c8c:: with SMTP id my12mr100914pjb.35.1614284058580;
        Thu, 25 Feb 2021 12:14:18 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d124sm7012807pfa.149.2021.02.25.12.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 12:14:18 -0800 (PST)
Date: Thu, 25 Feb 2021 12:14:17 -0800
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda <ojeda@kernel.org>,
	Marco Elver <elver@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Message-ID: <202102251213.5815C9B33@keescook>
References: <20210225164513.3667778-1-arnd@kernel.org>
 <202102251203.03762F77@keescook>
 <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=b4JTddy5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033
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

On Thu, Feb 25, 2021 at 12:06:37PM -0800, Andrew Morton wrote:
> On Thu, 25 Feb 2021 12:03:48 -0800 Kees Cook <keescook@chromium.org> wrote:
> 
> > On Thu, Feb 25, 2021 at 05:45:09PM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > Separating compiler-clang.h from compiler-gcc.h inadventently dropped the
> > > definitions of the three HAVE_BUILTIN_BSWAP macros, which requires falling
> > > back to the open-coded version and hoping that the compiler detects it.
> > > 
> > > Since all versions of clang support the __builtin_bswap interfaces,
> > > add back the flags and have the headers pick these up automatically.
> > > 
> > > This results in a 4% improvement of compilation speed for arm defconfig.
> > > 
> > > Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > Cc: stable@vger.kernel.org
> 
> I figured 4% better compile time isn't significant enough to justify a
> backport.  Thoughts?

It's a trivial change, so I think it's worth it?

> 
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102251213.5815C9B33%40keescook.
