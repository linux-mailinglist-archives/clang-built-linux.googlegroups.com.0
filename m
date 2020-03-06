Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXEJRLZQKGQE37F4O5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id C94BF17C3F7
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 18:14:05 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id z20sf1560691pjn.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 09:14:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583514844; cv=pass;
        d=google.com; s=arc-20160816;
        b=sd26zfLeoycJFHs0xqF6oRDdzuvErJOPaosWLvW+4AE3HWKe7dAQ1VrzAeZdkmFGG1
         9heeKYjelhcm1Qkt3Si040xtMqUEhIlckN3exixMXuX+P23XBpiaX5i07j7THuW33V5y
         +9LP59h3or6OKUnJw+7iXzV4S4HQkuwiwXHZv4yciF+uvTExLHU8OA6Zr+kQbnQaVvkq
         6KPjeTlHTkBusEIv1+yFIst9OyfGCrUMkUXa2RoZmf+uM2bsfBbfjjpan3yeCj5//5Q1
         /HIrbfF0kZPtoOXEfzFxOPs3VrTAP9+qeUwtunpCax6UkWKSGdbkO1a2kOfuCMrZwHLe
         +LAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=88WVAv7OKwH6Nv4z7nqGba0kNdysFaWaV5TyTb70maQ=;
        b=mc9Z+dNYSd/1CI9+Q9fvjZELHQ5CYVBPkEVp2PdBV/xOwQeej1CZdzMEiAecQ5xNms
         Xa/1jC3DRrUJl1WKZd0ChIFUqS6i+MkaknbwrfBLwz82ymIqFg8nbrBL/pOm4JXnih/m
         uBrDIR23dDALEN1WqDDpoClKR4L0zvZ3hhgX+7uW+zUEfipiI35XdlCUFsLU/WSmvYP7
         bwSjM9Dw0cNqDpYnab4z6v1KKRjW66T9PR6xl6teZ1pyzHcyrnCN4VyHYy4GtL3pKmDx
         vwXwJTflWwx1q8ak1qaLVKOPPiApbuvlcGzJgGVTxEEBeWieuqPM1F/cJXtJsLcfoIS1
         inGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zb4P5gXN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=88WVAv7OKwH6Nv4z7nqGba0kNdysFaWaV5TyTb70maQ=;
        b=fkmiUEvexabEijJn3H/YTFZJdL4VRtEYknpfEtH3hvTvOoITItJk/PnzT5st3p9IOz
         +jjwi1oPIMzvyPYUAv+rmJb7SAVvvV3rQXsUquTtGdemST8dE2RC9deGqKFeEjQHJC55
         qU0Ts8flkcD48nhY3HoB+t3crelcFpYZoayYBSBUDiErTX51ZqxpPtSoQH0mNqDZVK+b
         rOKVBC+DM2zpTpQG9QZS5SA03LLvodV4WAstWiKVB1Xo4rfNGuipWmqrtTl4FxA25FKM
         Ur2Ze4dnIF7UTXtN3bIeeRQd4WflbyaEVdBhkSlKSHpBX3+zS5Lz3qPW1v49yctRlmyD
         m20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=88WVAv7OKwH6Nv4z7nqGba0kNdysFaWaV5TyTb70maQ=;
        b=EqjyY0MnhidpGpdhAemtMLZDnffQTi3DZXHn5ZlPB8U+PgkFadfeNnKdkrXDtt1yN1
         pvO//Vy/PbwBLFzyNXSrSJB8F2wFILKFlss9/7FSq+phd+GHra4gDCWvKELl5nYX/L/X
         PMEjzWBHa5fc/qcSlEZfjv84NBWVnGnaJpAMZkwZLHgAGgxD2bQkYoBdu3x7U/pMNmkD
         JCyvSY5UogoUYMEmNkR3BIyhShUV532hyIHyyV2jx2febpIIfti/XwAoxbhbnCc1kjPJ
         xcQXT+rnocOXqkSI51g9zUQJ6DO/qyX/EXQewYBiBV02k/BPva0lUh9opfOFgT85dz94
         ZEYg==
X-Gm-Message-State: ANhLgQ3AwS6lHfTVJu2bF6PV/9ffzaiv1MS6wrtLLxhsh8VucYCsLehQ
	5a+7y4u+xHyZXiz/4EWywic=
X-Google-Smtp-Source: ADFU+vsyj4Ayx0I22YTJAtWWnWuU3H+89BZSTDNgdUl9GFKY1/IOkHgjTfDqrU+qDDYcVvXRi1BdOA==
X-Received: by 2002:a17:90a:d205:: with SMTP id o5mr4531380pju.46.1583514844254;
        Fri, 06 Mar 2020 09:14:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:745b:: with SMTP id e27ls965795pgn.11.gmail; Fri, 06 Mar
 2020 09:14:03 -0800 (PST)
X-Received: by 2002:a63:5c18:: with SMTP id q24mr2117300pgb.322.1583514843839;
        Fri, 06 Mar 2020 09:14:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583514843; cv=none;
        d=google.com; s=arc-20160816;
        b=ncFJDOKH6pNVvlzxJzVcSbRGkXVOzZlHMnv7N+Eny6Ip6Ujs4lG4RueW0gD4zZAqzs
         Q+WxsFAJWnjG1qow1ofy3XttZmegSClmv36s+OOpBCag3cl+lbtm5b0qLblN8y2Zk+UH
         CfHFeBpYBSz+w2zyUuw9Df3dffyMbXBlf/rQATwk8QxJTK7BPz1DcmnXZySOkBgT96+V
         vgqcUZS+y3C3dmRb69+LMDTcGdQuyNl41v4RqNmw8Myau69eRsPoU8/JLmALmi/6+bdh
         Kw7jgWKZBDusipOi16PzdtSd/72qej5xvNF7h1kdjwiykrNBqIz3XyTTgg6LLzMX/kkV
         UJwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CP2OVDyYeUQjbh/1nuCSOfSMlH1Bz55vOGR9t8SUcqE=;
        b=pJBrk0YI/sw0HGUUsPQyFCDUynmMEFqquo+Upl/lqD5giW+tsgwIIPbXMfdRWQtzmM
         Ha2m7jP7U+t7+h2GIxhRYs4ndFzNEXtArfIqNY6X8FCr2BTgv1rm9qQnkBU5nxFL36cn
         3IuccntFmVOhNpo7stDk0LTR2LAoCEvT+y/o31YZn92oMCMzTkx9DQVbrh9D7SGIHAcy
         fAjZm+ePvXHdE+J/84dGWCCL1peect1QrTeimScisiFtn/IwUmSpJ+xq1iPCXXUgB1et
         HmddoRszXFfW928Fo+d7hZFZy/sq8/uyPamZCKF9V8TBhf96x/8H4MJ4/Egu8QGc+4JG
         Uzrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zb4P5gXN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id mv5si640682pjb.0.2020.03.06.09.14.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 09:14:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t24so1360019pgj.7
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 09:14:03 -0800 (PST)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr4207108pge.10.1583514843107;
 Fri, 06 Mar 2020 09:14:03 -0800 (PST)
MIME-Version: 1.0
References: <1583509304-28508-1-git-send-email-cai@lca.pw>
In-Reply-To: <1583509304-28508-1-git-send-email-cai@lca.pw>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Mar 2020 09:13:52 -0800
Message-ID: <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
Subject: Re: [PATCH] sched/cputime: silence a -Wunused-function warning
To: Qian Cai <cai@lca.pw>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, juri.lelli@redhat.com, 
	Vincent Guittot <vincent.guittot@linaro.org>, dietmar.eggemann@arm.com, 
	Steven Rostedt <rostedt@goodmis.org>, bsegall@google.com, mgorman@suse.de, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Zb4P5gXN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Mar 6, 2020 at 7:42 AM Qian Cai <cai@lca.pw> wrote:
>
> account_other_time() is only used when CONFIG_IRQ_TIME_ACCOUNTING=y (in
> irqtime_account_process_tick()) or CONFIG_VIRT_CPU_ACCOUNTING_GEN=y (in
> get_vtime_delta()). When both are off, it will generate a compilation
> warning from Clang,
>
> kernel/sched/cputime.c:255:19: warning: unused function
> 'account_other_time' [-Wunused-function]
> static inline u64 account_other_time(u64 max)
>
> Rather than wrapping around this function with a macro expression,
>
>  if defined(CONFIG_IRQ_TIME_ACCOUNTING) || \
>     defined(CONFIG_VIRT_CPU_ACCOUNTING_GEN)
>
> just use __maybe_unused for this small function which seems like a good
> trade-off.
>
> Signed-off-by: Qian Cai <cai@lca.pw>

Hi Qian, thanks for the patch!

Generally, I'm not a fan of __maybe_unused.  It is a tool in the
toolbox for solving this issue, but it's my least favorite.  Should
the call sites be eliminated, this may mask an unused and entirely
dead function from being removed.  Preprocessor guards based on config
give more context into *why* a particular function may be unused.

So let's take a look at the call sites of account_other_time().  Looks
like irqtime_account_process_tick() (guarded by
CONFIG_IRQ_TIME_ACCOUNTING) and get_vtime_delta() (guarded by
CONFIG_VIRT_CPU_ACCOUNTING_GEN).  If it were one config guard, then I
would prefer to move the definition to be within the same guard, just
before the function definition that calls it, but we have a more
complicated case here.

The next thing I'd check to see is if there's a dependency between
configs.  In this case, both CONFIG_IRQ_TIME_ACCOUNTING and
CONFIG_VIRT_CPU_ACCOUNTING_GEN are defined in init/Kconfig.  In this
case there's also no dependency between configs, so specifying one
doesn't imply the other; so guarding on one of the two configs is also
not an option.

So, as much as I'm not a fan of __maybe_unused, it is indeed the
simplest option.  Though, I'd still prefer the ifdef you describe
instead, maybe the maintainers can provide guidance/preference?
Otherwise,

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  kernel/sched/cputime.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
> index cff3e656566d..85da4d6dee24 100644
> --- a/kernel/sched/cputime.c
> +++ b/kernel/sched/cputime.c
> @@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
>  /*
>   * Account how much elapsed time was spent in steal, irq, or softirq time.
>   */
> -static inline u64 account_other_time(u64 max)
> +static inline __maybe_unused u64 account_other_time(u64 max)
>  {
>         u64 accounted;
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DV44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew%40mail.gmail.com.
