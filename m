Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYW27PYQKGQENC7MJJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DA61565B8
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 18:18:28 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id k6sf2648097oij.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 09:18:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581182307; cv=pass;
        d=google.com; s=arc-20160816;
        b=jUNdYDzm4Bphsw5N9BDJ5RV4q4SMfuGEJlygb//9aHFRWVA2o+oUmIkiEnBKsXyGPV
         srZbiShxDkIIAuhyp81+ziL588wv5UaG1e6zRvVHfph9D7nx/NHoC5SzqhOotW/fRFkF
         jVc3kd8FEBxRaREVD3wGMWEGtZ7rePWCsOsaqcpbc+R/2/L8llwhS4DsKovJ9kJqggiA
         JBX7dU53w/rRiJmclMdDaZU9Ue8wdivfNZYB26/gotiyNcH66DPI8UlUNkiqjsq3PLYa
         hhM5NIUR0FVYZbJPmr0dUHhQOl4qz15tBYKf59ANAk3quFTgYIhhkFaWetp2x9cypv/X
         83wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2SH5doYFlpYaOve5+azvTLSCROay5zTbj5bTjSrxkxU=;
        b=SvFkMZqEXIPGbZekbKCqX0mwpMksq7hYQ1+bTjGB6X7nmOMzbR9u2qLrQMCGNjl8rf
         QVGU/oHmIA0XmkwPxBp2G77yzv93V8+td5C4sRUzYLy1s+8smVifDuNQbtAGZ42SVX1X
         bns1Bvz5pL7Ffi3xyMdKqVwRPYM8Oa5WpE2CKRKcrGf5U9uUsVVTJ2SAdv8XGKCSsxi2
         EJxBu+bNhN8rFxuOslKfdrprPKCH8Q2mwY9LBVsVoLayYp4UkjD1tUTPLvi2HayH1CiL
         UFe0pkqNvxZlRnAHO50mQH/4cY3goj2+yj87yEtGS8fZDHW2citvLQdNKThicDjvzlLY
         f8Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MJhcoM0S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2SH5doYFlpYaOve5+azvTLSCROay5zTbj5bTjSrxkxU=;
        b=PFWCx07qgr2ZTQ8KM3NchOV2Vjr8LfgUHQWGRdMgrw5roRgJ4xt+ULcxUk1nXbi2+m
         hvAseqRSfggSbZu4UQ0Z6i4eUgo098l/kQOjg9ulZYDgdqH4BUMULwJPEHtoZUQmUwDu
         dqb0cb69bcKS882TTMaN8truyj7QgBeqzLlLVBXFBye6Csrp6La5tjEciffNNBq/u74O
         UfiQbjcXwtAU+qt0VW94WSpYIlAnWdhXBu6e8LVzPUAbpgPc3Sh9yJVtCmbS5PSeGVtK
         /3GG2RnSTnmoxHsdYlRz2/wRmV79zN0AoltkSWTi9RPn0W84Wmbrja7av7Q1vDKCSW0a
         SZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2SH5doYFlpYaOve5+azvTLSCROay5zTbj5bTjSrxkxU=;
        b=n3zk9dwdWz6vM1lQ2VQIXQc+BrpHA4v2E0r8XJweptpycKvjMoNU7qDknokuHf6YRm
         ZsXuRQnb9EY2bsdBUmOzmIl4UiPipFZKvtRQ/KRXYXatAza/dnA6+/k3a4cEhzdqTkgN
         cFSQPzOmHUABsIbS75MWDChHh8quP5BA+S2p7UDNbI2x72BMJir8ZeGTfnp12Y8K/wOq
         ex2y4Y/ksZj9Q7+z5oVgVQRgPwc84uHx7qsFA29E33XnfqcnSaYR5yuttxVh6Ndx9ryK
         VMZ4cg7hh/CKenbRsjx3wATsAOrCbKM0Imht3bbg9/Ja5ha6aDHJOxtHMz6p5vKB3K6q
         rXog==
X-Gm-Message-State: APjAAAWcc5+6H48uWdCxyfhj9lBZFlvvOxdBi4mCwZNUnslGXMwfNW9t
	YRdIS/DwATc8jbVzrgqUCw0=
X-Google-Smtp-Source: APXvYqy5igkhHd7zu/hhng4x6CGhEDB7FTca02Nw3Fr5XUp7o2SvAjeYF8z/7YwDOwpoiIDCIBe0vQ==
X-Received: by 2002:a05:6830:1db3:: with SMTP id z19mr4187081oti.292.1581182306896;
        Sat, 08 Feb 2020 09:18:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7999:: with SMTP id h25ls773969otm.2.gmail; Sat, 08 Feb
 2020 09:18:26 -0800 (PST)
X-Received: by 2002:a05:6830:1bd5:: with SMTP id v21mr4340442ota.154.1581182306466;
        Sat, 08 Feb 2020 09:18:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581182306; cv=none;
        d=google.com; s=arc-20160816;
        b=TYNbs4/PYBt827lsoFQi1KsoQlzquuGzFJXh6291RJbQYcO21Bxu5S4jIDlc/ixfTT
         AheRA8LjUWTzeIzLOMERDrqdLZcAwEyDSg9PdXMU2tdBr0+oE/JWRnDOoLyZTBYWVTPg
         upB3sHPusmYgjyAqR8vpSHlUYnvcIaY7THsch++SFt0t2yRzmBFc6QV87I/G6zp1nS0N
         VXou8C2jSqEEBZI3pSxJ9BkYsskqyj/leKU4/qOvl8jqsobtzyi3i7xR5T+5dt4GmO6s
         L3G6uNDRJZXcLNS+yMHO4yrUvVG5HuDXKf5AfIjRJ0c0svG4N1xTjCW1pVDPJRRarNAe
         V96w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=97bjEOo8NHHV0loxcFn46KhJrhrQDZe2/hrTKBrxCbU=;
        b=usFSap4yoWerxXD4MrDbJfySBz52DeoiUlumKzSyVtcQgOMiNiNThrKmzSdBtulRK2
         TTl67f8CrC6EO95DeS2fTAcGyrghtgpoc+rJKH8Y3o9tKnO3vqWi+P+bkPFFUMzo7aLj
         BFVMK2Cq1X/9UzkVNIUa1nYL0IT4eCxs1GAuUgvgZ6jPZDax8e/rJLdf3KCEQRBk8oqn
         vNc6NKSxmiZXJEvX791jIbQ5z3EAj5jFsIo2AthnSgori12NscwbYxVGOOotI21Z8F+U
         bl+QE/lbC1qHJFOmEBADKFWXKPtYSSet/V5pVofndm1Z0ukH02Aepk8eSizgEhKvbre7
         WbbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MJhcoM0S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s10si96542oth.2.2020.02.08.09.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 09:18:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id i6so1449448pfc.1
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 09:18:26 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr5721230pgi.263.1581182305426;
 Sat, 08 Feb 2020 09:18:25 -0800 (PST)
MIME-Version: 1.0
References: <20200208140858.47970-1-natechancellor@gmail.com>
In-Reply-To: <20200208140858.47970-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 8 Feb 2020 17:18:13 +0000
Message-ID: <CAKwvOdkLy9iKyJUqjgX8K8F98xS6Bz-O8OT_jdxZCzpSrfni8A@mail.gmail.com>
Subject: Re: [PATCH] s390/time: Fix clk type in get_tod_clock
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MJhcoM0S;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Sat, Feb 8, 2020 at 3:10 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> In file included from ../arch/s390/boot/startup.c:3:
> In file included from ../include/linux/elf.h:5:
> In file included from ../arch/s390/include/asm/elf.h:132:
> In file included from ../include/linux/compat.h:10:
> In file included from ../include/linux/time.h:74:
> In file included from ../include/linux/time32.h:13:
> In file included from ../include/linux/timex.h:65:
> ../arch/s390/include/asm/timex.h:160:20: warning: passing 'unsigned char
> [16]' to parameter of type 'char *' converts between pointers to integer
> types with different sign [-Wpointer-sign]
>         get_tod_clock_ext(clk);
>                           ^~~
> ../arch/s390/include/asm/timex.h:149:44: note: passing argument to
> parameter 'clk' here
> static inline void get_tod_clock_ext(char *clk)
>                                            ^
>
> Change clk's type to just be char so that it matches what happens in
> get_tod_clock_ext.
>
> Fixes: 57b28f66316d ("[S390] s390_hypfs: Add new attributes")
> Link: https://github.com/ClangBuiltLinux/linux/issues/861
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

First time I've seen a `typedef` in a function. I wonder if that makes
its definition have function scope? (re: get_tod_clock_ext())

> ---
>
> Alternatively, changing the clk type in get_tod_clock_ext to unsigned
> which is what it was in the early 2000s.

Yeah, it doesn't really matter for this case, it looks like. Either way,

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
>  arch/s390/include/asm/timex.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/s390/include/asm/timex.h b/arch/s390/include/asm/timex.h
> index 670f14a228e5..6bf3a45ccfec 100644
> --- a/arch/s390/include/asm/timex.h
> +++ b/arch/s390/include/asm/timex.h
> @@ -155,7 +155,7 @@ static inline void get_tod_clock_ext(char *clk)
>
>  static inline unsigned long long get_tod_clock(void)
>  {
> -       unsigned char clk[STORE_CLOCK_EXT_SIZE];
> +       char clk[STORE_CLOCK_EXT_SIZE];
>
>         get_tod_clock_ext(clk);
>         return *((unsigned long long *)&clk[1]);
> --
> 2.25.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200208140858.47970-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkLy9iKyJUqjgX8K8F98xS6Bz-O8OT_jdxZCzpSrfni8A%40mail.gmail.com.
