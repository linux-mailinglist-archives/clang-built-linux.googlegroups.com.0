Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGXEYX5AKGQEGYVVJXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0616225CE04
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:45:48 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id c78sf4363085ybf.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:45:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173147; cv=pass;
        d=google.com; s=arc-20160816;
        b=uoLuzKvlyu9yxSNQ391iCbjajfmDTq7qF3iOrZe0R3wVDzO7duYpBzFsPCfj8AIe84
         G5bbbW4wQ4rvXCpFfuxrBaynJWFvM5WCSP1wL4UbbonfS91RyZC462QKyRXznqaZKNAL
         fnhIrXI0nrYHTp12zyByhGRWbfLhJLsa0Q7XR12hcCVPgGm4IN/j7iPeFou2T9XS29R8
         qDBZT4gwu/bapqQ0VhXfTXAO4hs43JRWzzgQNzTbdwyc9WnFIHOc5seEF3/wiNW8hVri
         vPCCguMtP8L3lhbKJhRYMoJa6IBb+2UHvGQUASvc02ctIVhY1G8K8W4tzLsNRjv4ts7i
         VcDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ivgel0ACjMQ29y+FNIwFHYxDDjSAUZxZ13DYlqwVZUY=;
        b=AG3+Tc4hVw3s7Nj9xPJb4lx5CzjEj3WQMYnVEnoD5H+/qzhiiPFxYWd7IH4S2pcwl8
         pIOns1wRbQUaXbZ1dwlNREuyFuwQ+OD1+Er3ShaCX0EhuM3hPgKiv5y8bm7DGvqD3fJH
         Y8hovcHjgSIaOe4d10/kQ4AVG+g4406Wb1DqvcdPaVRY8rhwFzkzlC0/rUBm+ZglziwC
         aqRJSB6oX8yy8gZK3dr1IORl/j0MhEy7xzFUAfjmR4NWFRNWAI3QtSXzNjGolm1tda8w
         4VEHtijBlptKAxp+qohIKpm2qtom9snPR7x+GaeF+h9f2ibK4psoQkO/MWzakFaRPa8w
         viMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DWsncKoX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ivgel0ACjMQ29y+FNIwFHYxDDjSAUZxZ13DYlqwVZUY=;
        b=PYpgomfnNdMftDOCHaRIdB5mOJ2Kqay2lNLEc6odWsBf5o6l2zUZyqFecOOzqc6aGk
         NnFOpj+eEb1bSHj29jNzYW5p40swVy0O8+cXI9EBPfcu61+NeiCmW/NB+aM6bLH4ao1F
         9iF1Neth9X2NlKQ8AB432rR8sga9ZzkWfwLJ7WrtFkU12rijO77ArbDE+VeB6V7ag42M
         q1DP7g3zDZD4wd6znfe+CdfGvj/bubLAwINxHC9ZjP2tr79Wa7ibpxDUUAw9/FjFCToM
         /zf4zV5RrsR7FM+gxheXnpeRVUixly2qoN9jJnREaplCHydnRsLgd7lqGacxhVoP92DE
         +tnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ivgel0ACjMQ29y+FNIwFHYxDDjSAUZxZ13DYlqwVZUY=;
        b=tQg7hbnrMX7YwsezCrQ2dD59VreIJWsdGBhMS8eagXT6VUDkcvp4GN3igfPwluq5kz
         7FG3Jfmvvn4JLf7m5oIWHTuUupsZ5zlX3FaREM1/Ik2ya9uA0mcdSlnTJ+H7gLWcToSY
         w6xIL8IQ+cJHvId+sNvXmhDzXT7clddkpx26lctBsC4jI2KkHvufzCeXWvAhC9HYGvbt
         bntqXySaOtwtb6qzbJmG5Yoh3wMp1HKuYdPACjqRAvfgKPhrj3Xi2mxb5YWjFSkxeW1l
         K2eTveYJnWWsm4F+5OCy1uAAfKj5tKS1UaONX+9mDBuT8AxIWv2yOZD13U4N3sPx4SH5
         8n7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AqyOnyT0bnntXRffptBTtjPHV/E9rvEnuhq3WqpA4as6hBexf
	NtftdGl9v+pVDhC0XhTeFtQ=
X-Google-Smtp-Source: ABdhPJwt5TtZ6AIl2oR6jDy62uLk1o/n2RGBcaUjxeYpa4YtdmUORWuunxWjo72wY6AvaGSW5NBl0Q==
X-Received: by 2002:a25:680e:: with SMTP id d14mr6550833ybc.305.1599173147092;
        Thu, 03 Sep 2020 15:45:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls3481124ybb.5.gmail; Thu, 03 Sep
 2020 15:45:46 -0700 (PDT)
X-Received: by 2002:a25:b5cc:: with SMTP id d12mr5954132ybg.190.1599173146723;
        Thu, 03 Sep 2020 15:45:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173146; cv=none;
        d=google.com; s=arc-20160816;
        b=C+lTa6r6QonOzAkYQUPtVIzAEUdiFJ+pGAgUa85vxayIj4ITUcIYpRTiZYluem/tVt
         AwLE5PEGCDdH3RbkGiRF1T/jYWdwSlLnLN8gb/OgSLB8svrPkjsPF7ZEDf9ORYP7SDX4
         kLWtggNDdLccas64SkrTxwxtQ5yzquMMhGIoKFwX6jeQ+v60HXK5bmHRdSMoLs/kHuig
         qGtxwQJqBNNDdAcgrgFWY+7+OyCHep3zABiUqnQTQbDLWSx1mShzEyrNIggLT5V2LEIL
         XnJRCS8qgA4y8vPEluEqU4fkfpQzE9Cm0KACCs0RDOZIEdzPtxcIPt5teQRSaaWBc79Q
         GHfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JXlymsrIbyM7AjGm/2rfdOYB0H1CVU1h4Svm00pvuI0=;
        b=QiFwW2hvVcctnpr6A1xAfCfL01POBopYfEiZmh6+FC6w7DJVU98qouqdWtFgvglpe3
         efjTgD6VhXMSGYa1BrzcKy8dU16yBSGMOKcRIrAgXkb5XUjOb2ub5IYTRqog2SRMxIq6
         PoMd40LVHxCzG5mwjqHnSKLB2Q/+YU6Qd57Uz6bezN88FsuE2KrN6RBeq+kUlvDqDOiJ
         WgyQkC9KDBnjYg9j8hNbiFhrrXrvdCpeg9PMHM1YXxI0R+20pTnrYCMR8sF1wIQIa4MJ
         zAVQTxAXHXJdmhwKymj7WS/22JqmEiiK2c2Mb9NUTccV980M0XSp3o85i3A7MH53w9Ks
         Zc0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DWsncKoX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id y18si378278ybk.3.2020.09.03.15.45.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:45:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id v15so3272559pgh.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:45:46 -0700 (PDT)
X-Received: by 2002:a17:902:7609:: with SMTP id k9mr6059271pll.227.1599173146049;
        Thu, 03 Sep 2020 15:45:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c5sm3619987pgj.0.2020.09.03.15.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:45:45 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:45:44 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 25/28] arm64: allow LTO_CLANG and THINLTO to be
 selected
Message-ID: <202009031545.559F27FAE@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-26-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-26-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DWsncKoX;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Thu, Sep 03, 2020 at 01:30:50PM -0700, Sami Tolvanen wrote:
> Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031545.559F27FAE%40keescook.
