Return-Path: <clang-built-linux+bncBAABB4O3RL2AKGQEFUVIABQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id A0864198A15
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 04:41:54 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id b21sf16890354qkl.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 19:41:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585622513; cv=pass;
        d=google.com; s=arc-20160816;
        b=h3q+fPzPVPKO977onjKZunJjOnvX0eZc3Oh+PsBBNP39O1Z0qTN1Wal3iXZUkWPp5S
         epwJtKZfAHzC8Di3pdkn3s+CQXkevcBHgho3KSvydS/F9DfUPFFr6GezgNGztN6AIt/O
         eO6VRCFbDxNDtYSAmAyu/o0Qj5qyUegLYWLxlcsy13Hbm9+AsqTmoa+Bhya7K9alLjbe
         UrfgzdUYp80ZTXnTBuIxQwIIORg3U0zPThu4+jB4wx8YGZrgXEqb8hcnxb1R5A8dQhI0
         1cBYQlp+e6MFJ8/Y8fEVI9cZbhd8ad9wkbqHmMZhvzMgXFMZy6d2fqEzA0YSbrJ9oeqL
         /4pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=K5XsRgxkCto2ZGBf0Y80CCO18uxvn/tBIGekSY05HpQ=;
        b=iYXSN42NuF6ZGkbv5I04kBCvkk3SWzubJBNLIddjvva5g0oUXWKLQ9B2EfBpTI5jzX
         tpKTXRoGO4aPuEeGTK7pAvG/FfIDd/XZovxuCE2xtYsK9wA0T378YXREHNhsN3ON1jMh
         9mkLNiCqsNurNvJ2AG6TUiA/qHdEA6xQjDtsWhSdfof1xA9eGlmWsrfUmQeynFhGUzUH
         vMkq0xm1xzmVTyZD8V0SO5Pb2BxRAqyLsQKAgwNm2xbFqt2wggTzyE2cFpcphzos4als
         zXNDSdUvmBZtAqFfiTUarxI1WZakMd/0bieTIzfnIXcZEPjmnRDV+gz1Rf+uLdh+9l++
         A6yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dW6dJjZl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K5XsRgxkCto2ZGBf0Y80CCO18uxvn/tBIGekSY05HpQ=;
        b=PNWpm8c8NIdafwYV7n0JcyzwNkOeAyXxIDaxTL/1O3IP5ihAwLP6KzEExASNYUaYZl
         H/tKrvYb8SaJoUd98RXiyMAlcXUjcMAuNG+jNfQ8aLb4degq6fyuHIHTbmuNwd+mPq5w
         +/Tf9t8qnFzHxni/HkA+MGJWC7OW8cpBpi7eWbKWUaesapTPUE0AQBJMlBtuKTJU98M/
         6P8YwTCfA+WsGRlsQNnkzPS9KqMl1WE+hz5pGf4ezUo7qFvzBWI5kmta4a2JaFaWXouI
         9ZtjLj2Djpw0WooZDrlzRLTY90GpM2Yej6ZxBk6PbVOvTRy6rE3yFn8NOfs7uhofj/OD
         V/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5XsRgxkCto2ZGBf0Y80CCO18uxvn/tBIGekSY05HpQ=;
        b=jRt9aeE03WYl6c1rJ7KqPxH9r6LpeKkgAiKN6tzcScWjOWLsWUSIoJ/JI45P/kl/8h
         9dCjgDkgg+yWmKqCKbUNm0gK6hKp5AE/08/c5l1yGrBQ8Qy6T/dHTa0sh/ynBPl2Ru2T
         HqoWuWfg192DeCgMkVrA5/dbiDZiHteAWqj/ju6lQL5Lm/inaNKj+iFUTfFYzjVLjms/
         Xx79T05WntEaFF/er/Ru2mC4SmBNRENRORumj/pskP1JAfAiR8T/jBLpuEiOuiJPLX3I
         yX4dsEnWv7r6sHx5E0O6O9Kkgga0jwwzhE3jHezQE2JNyp2J7LCjc1822y8Rx86ewllV
         Lz/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0UyXWnJjoBLWZXdiSGahnDCLGzazeTm49IBtikUec5JuT52vEY
	WVpv6yrZGTAdyFgR6i1DDoQ=
X-Google-Smtp-Source: ADFU+vsPXt31pHIp+nntnSDcQWTtK1xzVce/k3Ge6G/r1m5/H10nI6mk3dQYxYPmxgYJtdudp9uoJA==
X-Received: by 2002:a37:8ac3:: with SMTP id m186mr3057194qkd.371.1585622513340;
        Mon, 30 Mar 2020 19:41:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1b11:: with SMTP id y17ls7943127qtj.8.gmail; Mon, 30 Mar
 2020 19:41:53 -0700 (PDT)
X-Received: by 2002:ac8:60c2:: with SMTP id i2mr3126423qtm.167.1585622513026;
        Mon, 30 Mar 2020 19:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585622513; cv=none;
        d=google.com; s=arc-20160816;
        b=q/EwmImI8vXMSvJqNmR7SNTbdR8SxhKMNIDK/Tk7fqenJLfBx6K3at7l4RLD+Bh5Xr
         iG4p0rN1f/4L0y5e2v7YMOo+hqE2UU8Y1hKnTxli17R18VPZymPE2ugC+3tgT5lxnL4B
         /vJLvTePGsmem/od1jz1Fw2oUwVSTSCUeP4g45EK+WD1IOmFokAX8Q7qv2RZB5KU0jSK
         6hETffWeVsuuIjFEBIark2xlLIaB6fFxVB83aXovp8C0VDquYfNr1OLFb1w2PQsIM0/w
         rEyIevfFgHhnLmJBp7GriZiMa3vo+9fxgf2wmRlE6dq6A1OpKnF86jhCxyunDh0AaTVh
         G29Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=qUuUnCsN8QlAO5iOjog4Igp1OPvQEJ88D5zsqGqYn7U=;
        b=IKv/pMVa0WyzSa10WsuZqpYdfaHOT4uIfT1JN0OrunYSkx1mLQRavOJCaFeMfYMaVp
         nqtwE54FaQGaR859fROaeb+cPgA1HTl6K09FJzoKHItUJNkhcksS5fDD5E9S0TkoQYge
         OV+iuHVSwee8/Uqs3P2kZ+pRpogMG/qPlm+u0HfIUB2N2Z+vSafrd0cSmqwpmezOtu9I
         f/z1KoXtaDag2FsnRexWOiKoNCbQKzCQNJlnxFy7x7TpJErXGdka+4qsJyNb8AX08HCw
         UTQcVi2cHfxoGVZ22hlKV+7bZHGTVHI0mnqQc9Bz2muI8/ritp4lmuFQP9hlZrqQZ7Lp
         9Zvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dW6dJjZl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id p11si1189791qkh.3.2020.03.30.19.41.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 19:41:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 02V2fY2R004516
	for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 11:41:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 02V2fY2R004516
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id z125so12484362vsb.13
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 19:41:34 -0700 (PDT)
X-Received: by 2002:a67:6542:: with SMTP id z63mr11156512vsb.179.1585622493397;
 Mon, 30 Mar 2020 19:41:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-9-masahiroy@kernel.org>
In-Reply-To: <20200326080104.27286-9-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 31 Mar 2020 11:40:57 +0900
X-Gmail-Original-Message-ID: <CAK7LNARueG4wM-_z+xDjwHci=wwAad8CqP1UF5mFJpPf8Zg71Q@mail.gmail.com>
Message-ID: <CAK7LNARueG4wM-_z+xDjwHci=wwAad8CqP1UF5mFJpPf8Zg71Q@mail.gmail.com>
Subject: Re: [PATCH v2 08/16] x86: replace arch macros from compiler with CONFIG_X86_{32,64}
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=dW6dJjZl;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 26, 2020 at 5:03 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> If the intention is to check i386/x86_64 excluding UML, testing
> CONFIG_X86_{32,64} is simpler.
>
> The reason for checking __i386__ / __x86_64__ was perhaps because
> lib/raid6/algos.c is built not only for the kernel but also for
> testing the library code from userspace.
>
> However, lib/raid6/test/Makefile passes -DCONFIG_X86_{32,64} for
> this case. So, I do not see a reason to not use CONFIG option here.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
> ---


Sorry, this patch broke UML builds.

https://lkml.org/lkml/2020/3/27/618



I will drop this patch for tomorrow's linux-next.



CONFIG_X86 is not defined for ARCH=um.
So, I still think it is OK to replace one complicated line
in lib/raid6/x86.h

   #if (defined(__i386__) || defined(__x86_64__)) && !defined(__arch_um__)

with:

   #ifdef CONFIG_X86




Also, I slightly prefer

   #if defined(CONFIG_X86_32) && !defined(CONFIG_UML)

to

   #if defined(__i386__) && !defined(__arch_um__)



But, we do not need to rush this now.


This patch does not affect the rest of this series.

Thanks.





> Changes in v2: None
>
>  kernel/signal.c   | 2 +-
>  lib/raid6/algos.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/kernel/signal.c b/kernel/signal.c
> index 5b2396350dd1..db557e1629e5 100644
> --- a/kernel/signal.c
> +++ b/kernel/signal.c
> @@ -1246,7 +1246,7 @@ static void print_fatal_signal(int signr)
>         struct pt_regs *regs = signal_pt_regs();
>         pr_info("potentially unexpected fatal signal %d.\n", signr);
>
> -#if defined(__i386__) && !defined(__arch_um__)
> +#ifdef CONFIG_X86_32
>         pr_info("code at %08lx: ", regs->ip);
>         {
>                 int i;
> diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
> index df08664d3432..b5a02326cfb7 100644
> --- a/lib/raid6/algos.c
> +++ b/lib/raid6/algos.c
> @@ -29,7 +29,7 @@ struct raid6_calls raid6_call;
>  EXPORT_SYMBOL_GPL(raid6_call);
>
>  const struct raid6_calls * const raid6_algos[] = {
> -#if defined(__i386__) && !defined(__arch_um__)
> +#ifdef CONFIG_X86_32
>  #ifdef CONFIG_AS_AVX512
>         &raid6_avx512x2,
>         &raid6_avx512x1,
> @@ -45,7 +45,7 @@ const struct raid6_calls * const raid6_algos[] = {
>         &raid6_mmxx2,
>         &raid6_mmxx1,
>  #endif
> -#if defined(__x86_64__) && !defined(__arch_um__)
> +#ifdef CONFIG_X86_64
>  #ifdef CONFIG_AS_AVX512
>         &raid6_avx512x4,
>         &raid6_avx512x2,
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARueG4wM-_z%2BxDjwHci%3DwwAad8CqP1UF5mFJpPf8Zg71Q%40mail.gmail.com.
