Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBWHOTWDAMGQECC55SSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C65A3A6A89
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 17:35:53 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id g14-20020a5d698e0000b0290117735bd4d3sf7137004wru.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 08:35:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623684953; cv=pass;
        d=google.com; s=arc-20160816;
        b=hnyowsj0hWo2VOmktRHpWHftNQvXvjTbGrjWe2240JC11DWzb1zbF9ClDwDDHjWUSk
         4QcuVxMZue5J4tQCcB9LW/V+VVCfN0vfnSx1N2jb100Fg3Du0yVsUIl0kCqFwEHbf18B
         CCbdMDNwcHVDpmQGNvnyGY0oRgumKTCB+8bsZoq+QhaMFnBdRsFFZvk1qWQxYti1LVKZ
         9/y/5dKylFhq21CVr1an3pnbXXZaHEaiqdtIIvEoyzKjwrJOQTo86fERbL+CGJ3ja4Ww
         BmamslkBooNMBdOPsNMjEBxakp2k9wUyVqCCIlrM0A8YheAGywF0twJPxMLAKJq8obHv
         6rCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hZo26DopQR3vFZVuI7WMoJ0Bzky7fBx6pMnxt9xiL+g=;
        b=ajI5xjmn0Cpo6xYJzeU7x3U0A0plAmoLDUpumZEo/dYA8IU5dXFQ0L6CE665tPRoUC
         2LgLp61ByO7UqyiQ14G1q/OfPeYpOggK3gBV0b0Q6+jVC39nA8JX78s4qcjB4+5mfXO4
         231bQvyvupXTjd+5YVZa3IIdQqL/UtPEELQgfrU9pW3NLTWawkqP/agG7OXJQPGquOfK
         o1x8OIK5e6S5y5zABO4KEWk0X9FgvTFgBrDef5W8jzQZO5f06jJaHMzai+yCG44Koq+4
         PZCOpTkErfyRx7NUHLEGUBlt2xDtrEoKiCXm9MeIRhLUhpgEfKPcrIrilBp/GyKVMSgW
         dYmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=du5rKjaE;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hZo26DopQR3vFZVuI7WMoJ0Bzky7fBx6pMnxt9xiL+g=;
        b=d0D8uXbhwHZvpnYPL9qDn3NirLr+WVgir6PJb5YGrT1b/3Bdo2ayUkxd+PFBYk9R+H
         TkN+LkoJFVWg9ZrpDGs5c0rKCNP0zi0JaOw8bSu2u+8tG4gUZhTxORePKXfmKF74B5ED
         QJR9ki3fzq0RmZ5POvOyPE2q4ymnEc0jAMV6pMZnWOpcWFX904h5xKyK8oAlnx8J9N9H
         yGzguze26ZO5fbfCepmicS+nwbGRcAPDLIjoBi8w6ElxgeSDDKhZCwlSgZ4kwyOl39f0
         and1BmOA68VLSyksV+CqwY4PLZJTknnp1lXUDSeF3U6Y8n2zrjQmYOiaTZ0ra3BIsKhl
         qqRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hZo26DopQR3vFZVuI7WMoJ0Bzky7fBx6pMnxt9xiL+g=;
        b=iNGNMG8whegEb1/RiViVkoeYDEALGUths7wm7gltdSZwStJaqA4r4T8HH+1dz4JbXv
         Pd0zVjRJkwNbnPBQZ0mUbjIEa/MjXtbnmPuaQQuZuyWGDeZ1kJfs6clSKH9woAbRIRbI
         6z+VULZDQB7zp1SMG7H9cHzlRUdvBNXXyxU4y8Yp+wcg4+nivgyyXpLL2ffSW5rV6V/V
         HtY+DSWESvYhaxfRjStugRSAZtOr4t2igLj+2BVHS+ffwgvrxOTrPKxyTQkNzhjhRCwI
         CYk8RK8CX4NXvbZDbk3qLID7qeSCkFalXIwvLrKty/sigdhrv7wbwex2k/jO6SwXTsKv
         tvWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u7A7IGRDCJdNtlC5LLrp9Z9gKP6EgLC5Y1CBHCZSQ4CpcYndM
	Kv7J8cF3W/QavT0zLdvZl8s=
X-Google-Smtp-Source: ABdhPJyWPskDFiiM34BBT05BQXijvi7MILJ9XXkb7GAkUYZzGH5jIxfGS76tLaM5qG1QwAlRyW9aPw==
X-Received: by 2002:adf:dec3:: with SMTP id i3mr19191326wrn.190.1623684953200;
        Mon, 14 Jun 2021 08:35:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9802:: with SMTP id a2ls20390wme.0.experimental-gmail;
 Mon, 14 Jun 2021 08:35:52 -0700 (PDT)
X-Received: by 2002:a05:600c:a04:: with SMTP id z4mr17040840wmp.103.1623684952101;
        Mon, 14 Jun 2021 08:35:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623684952; cv=none;
        d=google.com; s=arc-20160816;
        b=TxgNKTDuQs4pUL/jy4zMMVRRC91t6VWf9J8ao+saT72MPm0306oPOZcBzkA/ZnV4R2
         tmJPTtQhF4Yw4Rlsq3Mlaj1UM6PLukmyoUWonb8pJn2OezmYKElxgTplcDJG2t+dhoMZ
         SDWj2sAWdqT/HnflTuzilOtXy3qAPATtZ+Rvm/B05cWtUCXyLHTEOd0EukGCibAn6MR8
         1Iq510yO+b4+BuvAw3BvTp5+aDz4uGRWz0HpBkg/fB1qJ/odarU6HuhfSQz/mvVIMVCX
         ecbYa4h/WOvvCe8smKXNT/BzvOCbN5f1XLNJVtY7SkU7hgqJYSWGZZ8BhlBxRXl6SwdH
         CYLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Cu6SKmr0wogKDzs7Tpjs0nvU/JJlCGecw+D1VcYnf9I=;
        b=RzRYTTuAeJ6YsxFJQHn1wboBgwXn5Pu1JAS1i0LbTHr1NrPSYRFadpkcABjjnDS0IR
         UslO3BtIyN/xkP6LRhDJ5/qHsfoTlTxdd9IBhTDmbXrBPF7CRysCXwIyB1YKstf0RK22
         AG8PoAYe716dGKrx1VsAWP2r+YAAD5DFz0C2vVPjLwHGItq57lqx19zVU8f8lWbmjQV6
         tOUGRkU+l26hCFkz5+P8XWqa7dNLBqGLG2Zwiz83KfrXNhH8x9wn2wHfzLGZ71uPvV7b
         /JjUcoo5WC1hMpxFDqAgtORD2imtyhB9YZwGvYP1vDx3oVzJ3YvUmay1kowwSVmIicXe
         sejQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=du5rKjaE;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id v4si763633wrg.2.2021.06.14.08.35.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 08:35:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsocl-0074f0-UI; Mon, 14 Jun 2021 15:35:47 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id E7C989831CA; Mon, 14 Jun 2021 17:35:45 +0200 (CEST)
Date: Mon, 14 Jun 2021 17:35:45 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Cc: Marco Elver <elver@google.com>, Bill Wendling <morbo@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	oberpar@linux.vnet.ibm.com, linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210614153545.GA68749@worktop.programming.kicks-ass.net>
References: <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
 <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
 <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
 <202106140817.F584D2F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106140817.F584D2F@keescook>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=du5rKjaE;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 14, 2021 at 08:26:01AM -0700, Kees Cook wrote:
> So, AFAICT, the original blocking issue ("PGO does not respect noinstr")
> is not actually an issue (noinstr contains notrace, which IS respected
> by PGO[2]), I think this is fine to move forward.

It is *NOT*: https://godbolt.org/z/9c7xdvGd9

Look at how both compilers generate instrumentation in the no_instr()
function.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210614153545.GA68749%40worktop.programming.kicks-ass.net.
