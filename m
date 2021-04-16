Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBIGB46BQMGQE77FOWFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E14E36284D
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 21:08:18 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id z19-20020a63e1130000b02901fcdcf0c5a3sf3395676pgh.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 12:08:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618600097; cv=pass;
        d=google.com; s=arc-20160816;
        b=UbQXy3X5h2CANxJzScI2DmP1YNfILdayXXl8ccrpEYNFtUpRlFPTJN3Yju00pwT0K/
         OyYYKKTWfENtZVyYtr3iWkZ4J35+4RcyAvqMI5Aph7PZePXIj0tkU2uTPLjIa60OQQxL
         K8MUsOOcSEOdSXqPenE/I5CS/EycCHjrXEY6eackXiu9VNOeWhGcfaR9+xgiXAlIfnI+
         AXNk5wI2rWs03O14eQCSfMMIByufTLv/fVLJ34I7XD6sURzkDzMoygjWh+O21qOruhsv
         FY2kZbuDH98NLYSTIun4xl7Iyg3XozeS+DyEQ0n+IOWw2Q0bU2IMS5qzfBnysm6OuVuL
         5UcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=atBKWoShnZpyB5lVgWA+ZoOJ4jetqPSK7RkQM5p1TaA=;
        b=t5tqLEdO2iHQUj4XQ+v5ENo+7mkncOWmLc5Mzz0tRkjLgDZpdx11NAWQNkqTq8blGU
         WR4nvPpUwvjbj3iuMrInvxdkuK0TJdvuagZQzzOObG2ZG4XkMQ7Z0en5o7jphkXnJgnA
         aZMeQx4+qo6SqEuKmkWnq7+7RBun0PZ+r1eMoGsNzQcTH/O6Tj7d5SIQGAG3qGESWz6z
         DQxMTCU+W4Vult4CMXh17+HizR1h17Vd5cPduyENgptSOoQTfRNdsLQwiFve0HAF+v72
         0B/1ZOPnj9Ri5bq+31pA0gyR+eoMMRaV7QIJwOLslYNvWiBdKBcGC7+r/YSE27nNEnJL
         88AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Se7Phvu5;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=atBKWoShnZpyB5lVgWA+ZoOJ4jetqPSK7RkQM5p1TaA=;
        b=P5SQ0Ccn45Rv0FPkzD8gJobUWdx3GxaatvJjLrTVej5tuO/F4vaXjWbnSxASgvia9x
         rrvG4gLVVy5ge7k4fqTsFayKHUTPAU67LAvFxlXjzSJKW9W4fv/JQExcWM+795GXV2e2
         nZ6fuVefjYAscuukFeYr/Ow9mdMUJHNHNN1LwfODL4XsBt1SeHH3Z5I6OAMsEho1uOKZ
         tUDM29YgKAJw+LWMtokzNWlBPHGM6oIpDJSabvEQPAomMpmbB6O0nxhUCM3eeVUHT33c
         iDNEt0IbR4CLJ9scyR1/z+KhDU12UzpL6uS46U5l1Nmt9LDc08l1llIn6wrxLGk/sc0T
         KNew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=atBKWoShnZpyB5lVgWA+ZoOJ4jetqPSK7RkQM5p1TaA=;
        b=VWGcwUQbbXIgD9tUsRcdoEAxNZni0kYKKP7zzAdoM78g6wF4A109VgpnIPy1jDJcJF
         cabCXnFOdLj3/YINaTRwg57Zta+yFgdynQLG1FH2OpFUN7mN5vPpmY2C+EVODR6s4W6x
         HwYJ3gJ8plFM/fJjJCAbP05ukKbEXsDxfNQWqRs+jHDtBorn8z8YOuWXMTnQf06eRyno
         9yoh5ewC4IXyTAfOS2PNaato19ykAnUPmgRyv6f57ZL15VoTEPiKCjyC8Zm3jhj+smZG
         a5kYN4F0TKmdb+jeq2J5HpUXnt7+rRLIxFXx+DVQxF39xSxn7XL23KbM923SDD5mLFk3
         mcXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308Ve0nrp9y9icEfUQNNK3Fptdty2lmkfiirRYz6vE62r+U981p
	CqZyMOP6Kee6oga55kyOSRU=
X-Google-Smtp-Source: ABdhPJzJn71eOYM5CZXKMk0KS1ao2I4zmyLjHrBos/XBrLjzN59N+/ulHhohNyaGq19wx51dLHZbMQ==
X-Received: by 2002:aa7:818e:0:b029:215:2466:3994 with SMTP id g14-20020aa7818e0000b029021524663994mr9531025pfi.48.1618600096785;
        Fri, 16 Apr 2021 12:08:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9255:: with SMTP id 21ls3999232pfp.2.gmail; Fri, 16 Apr
 2021 12:08:16 -0700 (PDT)
X-Received: by 2002:a63:b915:: with SMTP id z21mr500007pge.424.1618600096243;
        Fri, 16 Apr 2021 12:08:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618600096; cv=none;
        d=google.com; s=arc-20160816;
        b=FesxRteQJwIy8IP8kIXTKxUW9+7ZM5sJn+sCDphOHCHt8kciZPEa0io13pdPU1EoAM
         RdKFziee86EBhOXkB0wpLEgJjv7YJNu0xY+2PT2Au2khjoME6fmK2GjNZIOb15N0pwlS
         Dvku67WqXYpOyDpURpQtsqiv7hT+bYRLMbcT7Z11eDwSDNYRpNvt9hnMqWwjRKdYd7Zx
         NDA3Wgdv9tqll1tM9XQvnJEdqnJWzun9Oc4xATw0kSFtl83tUd5kIV0BMWJnp+PYIHJz
         9byrxF7bJ6lwAGL9TewGZ6R3L2haztjxrI3SYziZYOWsTzlbu9AzYD1Rpn8tr0qT1WUP
         7YBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=taXDHXZZvewYP8b5EkECH8MVNSTzFaTChLoTJ71+kEw=;
        b=fd7UyE2cC7J3Q+5tCsp8RLvXLuThuizWB85WBqhiuoSNtylLDyOnRfGGdXEwld53LX
         U/tagtiBchiuBnrYdUxxIWfWWwFT7+jd4oQrFh9PaMt4+vDSrGtyZ0lVB6Iv3QfP9yYK
         twNe07stYMlT7tZXHTwud3+jyViLh/pRsqM+hYcqb4ms37uvUwcP3q9DfvobGQfUFH8v
         FtPhG9vm3JdT37gOhjRWyVoQxSYnX+6Q4kISw2ph0Q0jMGLfWmIhkhrNqDNLBue5wAp9
         tnml6CgNKX2YhYvHE8nW9DbvjMzU9UuCVZols9lxkZs5zm5TiqNMchRmzCpjEuNR76hU
         3npQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Se7Phvu5;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si43073pls.1.2021.04.16.12.08.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 12:08:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B7F1A613B4
	for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 19:08:15 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id w31-20020a9d36220000b02901f2cbfc9743so26670026otb.7
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 12:08:15 -0700 (PDT)
X-Received: by 2002:a9d:75c1:: with SMTP id c1mr4730792otl.108.1618600094987;
 Fri, 16 Apr 2021 12:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210416181421.2374588-1-jiancai@google.com>
In-Reply-To: <20210416181421.2374588-1-jiancai@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 16 Apr 2021 21:08:03 +0200
X-Gmail-Original-Message-ID: <CAMj1kXER9EmB4wD9SbFhJL5VHc1qJ_bDC+GhPTFdxzHAJWLT0w@mail.gmail.com>
Message-ID: <CAMj1kXER9EmB4wD9SbFhJL5VHc1qJ_bDC+GhPTFdxzHAJWLT0w@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso: remove commas between macro name and arguments
To: Jian Cai <jiancai@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Se7Phvu5;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 16 Apr 2021 at 20:16, Jian Cai <jiancai@google.com> wrote:
>
> LLVM's integrated assembler does not support using commas separating
> the name and arguments in .macro. However, only spaces are used in the
> manual page. This replaces commas between macro names and the subsequent
> arguments with space in calls to clock_gettime_return to make it
> compatible with IAS.
>
> Link:
> https://sourceware.org/binutils/docs/as/Macro.html#Macro
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  arch/arm64/kernel/vdso/gettimeofday.S | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
> index 856fee6d3512..7ee685d9adfc 100644
> --- a/arch/arm64/kernel/vdso/gettimeofday.S
> +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> @@ -122,7 +122,7 @@ x_tmp               .req    x8
>  9998:
>         .endm
>
> -       .macro clock_gettime_return, shift=0
> +       .macro clock_gettime_return shift=0

Are you sure the definition needs to be changed as well? The majority
of GAS macros in arch/arm64 (if not all) use a comma after the
identifier, so I would prefer not to deviate from that arbitrarily.

Just look at

$ git grep -E \.macro\\s+\\S+,  arch/arm64/*.S


>         .if \shift == 1
>         lsr     x11, x11, x12
>         .endif
> @@ -227,7 +227,7 @@ realtime:
>         seqcnt_check fail=realtime
>         get_ts_realtime res_sec=x10, res_nsec=x11, \
>                 clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  monotonic:
> @@ -250,7 +250,7 @@ monotonic:
>                 clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
>
>         add_ts sec=x10, nsec=x11, ts_sec=x3, ts_nsec=x4, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  monotonic_raw:
> @@ -271,7 +271,7 @@ monotonic_raw:
>                 clock_nsec=x15, nsec_to_sec=x9
>
>         add_ts sec=x10, nsec=x11, ts_sec=x13, ts_nsec=x14, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  realtime_coarse:
> --
> 2.31.1.368.gbe11c130af-goog
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXER9EmB4wD9SbFhJL5VHc1qJ_bDC%2BGhPTFdxzHAJWLT0w%40mail.gmail.com.
