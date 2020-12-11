Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT4KZ77AKGQEECAECLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2842D7F3B
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:15:28 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id e68sf2471062yba.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:15:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607714128; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sqyu3SdRV+pHX2fSwkZghDXlPlIjIsmluuyR1ZQ1IKjU2PXqURDdDN3xYIhJXGNVNW
         KQzjlpPcqCOjy6Wo9baU1nQ31gMHbtPYWfdhrCp56ccRNa367Kn/gfhZpB6Ga1dUgs0Z
         hIQFfb1Ln8F/m11Tq+ov9MDkJXN180E1CParRvfXocygb6v+puMU0qFG3DJoLPmsZklc
         t9jkxIcObauTPJ7EL3zyKtRxRCOO9wqMN5i5UDKELh1TMo9wTMuOr5S85LNZdcrYK40f
         Mik9NJ5DBnWN5I4v9Rs+At8w3jZUElAYZn8rn0v4XDk5kEukqK2DHSYkAkTGEvF9LcHe
         YwiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uxsOHbe+FBSELpu+1FvUprynp0wljECvihXI6CANn5I=;
        b=Ro6ps8n0B4U5135HqI8ThETZ+N/YoaG9KZlV+n68mIvCWIqfJ4R9Z1uV62vY6ojmOo
         RoIhcRZg3UY21iyFDcPNRMh3/DZA9y7SpD1w4ngTyWn2nIg+FygJdCBMCl3FFihHvUF+
         90m92u4fpzAqjXavK5tm7WUQxQkpccTpj6R76qQEjN778aUb84Uk8B+z76xUxdRI0fC/
         p2OUBfvfR7kU1obGvw4bhd1JI8o6gp4D1w6ThxyNnSVe4sceN6iHJfYOXME4N29iJfYM
         xUzat6/e9bgw0coHQZyk4fy2402Shry5Zs7dS+zUH1Ok9+D3RxQYhk4ZV8nLBS/bw1L0
         fiUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XBAN1oa9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uxsOHbe+FBSELpu+1FvUprynp0wljECvihXI6CANn5I=;
        b=beYkGsvF+8dbURtnw+OX3hKpid80IrYtypdASO1We02/6ByWG4cFmmu6fHj138DfQI
         1Rcs/fw628E1Qv3GtpeAihaLcBQJSop3G1YOeWH+UzCY8N/wRjCaNfHOCDQPUG7QQ0Gf
         Gy5Od7QglERamd9MhBfUwPFoc1eVxSa25X9IRae4ouvzqwqv21AjvXxwPTu7Fvqp9Ce9
         h1e1uHD5S3qWWogBarX7JhWnd8naTjW5HQmzFl2sL2nxJrzykfmoMdI3Ik7ubbY734Hj
         fA6mRfG/whfcMELtwuvR3plaRIwlQLmb8HSD0uzaCt2Zwk6mWylMuv6HhvBAk3gN9roC
         usdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uxsOHbe+FBSELpu+1FvUprynp0wljECvihXI6CANn5I=;
        b=XT1xVLO4FVzRzTUtcKNLTDxHOdAOY4LbDRgkzmJYNzaPRdcgjbGw40UWlukYtMM/f9
         R17X2mZuE82YeBc0KNI0PCopknKZtUJo1Zayy/zOYW/dVkvCYUVkrSVvaeeX6RBIyQQY
         PsTG8YwZlCgUtpMiG6vgL9vNHivb6uZlSWjpdGET6d6Asr7jvqs2Yg+THdWean4Wn0GG
         /L1I6eNdpC2brRcpMUtoaCzOomfX5K0ykq2mKqe8DouCxejcNVTtF1aateF9hcK0Trpx
         Tzn6b472qy/MFTgzBdHqzuB5sQZi1UsLUM3u2zemZCsYr6TPcNDddNfNK4TZ9DO1CjL6
         LjZg==
X-Gm-Message-State: AOAM531/jSOpKCiFajhEPKysP8wsS6ryFvN4zGcOpjO/HKJB3q99q7LB
	5/vg0polQZiMnkxdRk9BPR4=
X-Google-Smtp-Source: ABdhPJzH5roD2yRCrW6hyljAJudjPGM0GtVNg2XIgDA9ilCQdMKdXNU4BMFQwCk4sjs9Zt76coFb7A==
X-Received: by 2002:a25:b886:: with SMTP id w6mr20731356ybj.144.1607714127980;
        Fri, 11 Dec 2020 11:15:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ce49:: with SMTP id x70ls4648453ybe.4.gmail; Fri, 11 Dec
 2020 11:15:27 -0800 (PST)
X-Received: by 2002:a25:5844:: with SMTP id m65mr20226750ybb.46.1607714127565;
        Fri, 11 Dec 2020 11:15:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607714127; cv=none;
        d=google.com; s=arc-20160816;
        b=OjptDqCuNHSAtxGDfod35MmWfZbifiuc1opKj+4OqGdcqNCTLbNSLoVyP+KpjX2TOl
         Se8AwkPOgdZ4R4i22sM+Rr7jsjEMO0BjQcI2bi0pZKcdXd1ZFjKSR/hRW83QD3wmyM84
         yH06Xrr/AwRR701dBOQNY7UnInGawgdPdP7O/sGVjtEqFUgQp7Q55aY73G6ZQzGpTqcN
         nBuF2FQLvKiPdwCqPOKRIBrQ/ihsy70aErCCXKuBnlm3o0BktkyxUt1Jhtx3t0O9LpRh
         KZMIaDaKmacwEwrJen3xdeYPcnYDupBAcjZ+a1AXLi28qST8r8iGub9YMqArNpsL4Jxo
         tSMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zZ6u/dgwrNzUyp4/iz48nhaBhU4okUzFL8r3cjiaumE=;
        b=ykvzlPn5V0OFb9OjMhVRLAxoTdD7vUuf8WLq/wXYqEN4BD92jPatpKEZAQzS0IMwsR
         HuLyfIp+uB80Q0gVs8E6vcPse7dBEmOLa8XXey+H0MuxPb64A4iLVJccYcOeSXg3Mu0L
         YWqkTyG+gc8DjiqoHgDews6LLELPUXpwp6Q+0mH3RpZlaNaj5XgdZ3FxRjsL79XnI+2O
         kUA4V9BiBHaXUSXcTrXNf183z9yL1FmcemFl1BiLlFQxHIupxOPmDm2ScrH2R5/Wq9Fd
         hUFz7L+QgVxqyTp6ux8bwfmEFf2GLjWyhdM+meg8DoRukqTaqQBvoDpwobfcyXWVsgtp
         Ek1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XBAN1oa9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id r12si735022ybc.3.2020.12.11.11.15.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 11:15:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id lj6so1254104pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 11:15:27 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr12440421plc.10.1607714126633; Fri, 11
 Dec 2020 11:15:26 -0800 (PST)
MIME-Version: 1.0
References: <20201211102437.3929348-1-anders.roxell@linaro.org>
In-Reply-To: <20201211102437.3929348-1-anders.roxell@linaro.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Dec 2020 11:15:15 -0800
Message-ID: <CAKwvOdmD+n_aoVNZnKhkfsd+1p+9N6nnH76ngdkUO3Bo9n1T4A@mail.gmail.com>
Subject: Re: [PATCH v2] mips: lib: uncached: fix non-standard usage of
 variable 'sp'
To: Anders Roxell <anders.roxell@linaro.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XBAN1oa9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Dec 11, 2020 at 2:24 AM Anders Roxell <anders.roxell@linaro.org> wrote:
>
> When building mips tinyconfig with clang the following warning show up:
>
> arch/mips/lib/uncached.c:45:6: warning: variable 'sp' is uninitialized when used here [-Wuninitialized]
>         if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
>             ^~
> arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
>         register long sp __asm__("$sp");
>                         ^
>                          = 0
> 1 warning generated.
>
> Rework to make an explicit inline move, instead of the non-standard use
> of specifying registers for local variables. This is what's written
> from the gcc-10 manual [1] about specifying registers for local
> variables:
>
> "6.47.5.2 Specifying Registers for Local Variables
> .................................................
> [...]
>
> "The only supported use for this feature is to specify registers for
> input and output operands when calling Extended 'asm' (*note Extended
> Asm::).  [...]".
>
> [1] https://docs.w3cub.com/gcc~10/local-register-variables
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

Link: https://github.com/ClangBuiltLinux/linux/issues/606
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/mips/lib/uncached.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
> index 09d5deea747f..f80a67c092b6 100644
> --- a/arch/mips/lib/uncached.c
> +++ b/arch/mips/lib/uncached.c
> @@ -37,10 +37,12 @@
>   */
>  unsigned long run_uncached(void *func)
>  {
> -       register long sp __asm__("$sp");
>         register long ret __asm__("$2");
>         long lfunc = (long)func, ufunc;
>         long usp;
> +       long sp;
> +
> +       __asm__("move %0, $sp" : "=r" (sp));
>
>         if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
>                 usp = CKSEG1ADDR(sp);
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmD%2Bn_aoVNZnKhkfsd%2B1p%2B9N6nnH76ngdkUO3Bo9n1T4A%40mail.gmail.com.
