Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBLOY3L2QKGQEQ5UFTFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C14AC1CC1A6
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 15:12:14 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id j10sf4700864iop.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 May 2020 06:12:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589029933; cv=pass;
        d=google.com; s=arc-20160816;
        b=paga05DVxnfUKcxNdF2KWs9wr5MQU56sz6ZyiJBCU4NLHJbu6rtanz9esZ+nRBGEx4
         xA/IN/cUiel6XAkMJN3KIUfmj7/m5dziMZ1u5RWDFKnWHcdkPHo4yp7HKU7TmLHSLKmk
         tynxIouXkl9IO8m/s2MFek9FADE3Yu/6msu/PImeH/CYted15KUaOxRdmdA33tSl0i0s
         2TABW9auZR1u+VzmhrpV4SpOJzgjMXbiarj26YE7ZtD25kQyhLMCDNTlan8GaIScXvtj
         Ng/CScOnL4tyoN3+ox806qDZrWw1SsS5a1QUwW+QBlA0vcbOo1Nv9iCNsfsdHuH/KVtz
         C8yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=2/+cM9zWOxqCkDm0YS3I0jB+XZre/FicCSBcP3A73tE=;
        b=zMOEWXq2btn7pUO3MpMjryWRt2XLz8W6lGxrh2/N5mj2wWLd80/7ETKNCVaSWilwD3
         a4dzY8G+thLOKm0L1QrAivNoKlIJCmmHJExz/8i0M8u4rnidhsFrCAZxEJBxITzuAI0J
         NIwOYyrtlXn7pI5znwGCMepvV8JLZA2XYKK7Te9Lurtd9SXa2RCWCLVrd2T6PmW5pNAv
         PXaI5C3e4a6LNDQammLp+cZqJcPsyL+26tckyKEvbmGZWuH81uODf8i4KdMKq4zls+oi
         ihrpva1yW4MV6W5BokIJpDfIRr+IVijDLn85zA6IGmkdN12QNRf8q8tNg/8pf+frNXLZ
         W8iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=e3jCTUqe;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2/+cM9zWOxqCkDm0YS3I0jB+XZre/FicCSBcP3A73tE=;
        b=EehyjG3Qh4sxgsZIFDo48TWcHa1XRaEI3Qwb7mfXVynJijY1aEGDMaXOt1VlPH4D5t
         xr98M983Xk3rVUFWblJwchmP8B95I0OLjZ9eYwsbSB+0mMuuu7I7Ghpadg3D8v1LhmLa
         cDz+1qYOeel+6Bqo/1bmw92M5pwGnHrLr193Xi81ZDR5j9MRawc85gibwzvq83NvXgwE
         ViywE+KUGtPJCePB36/q5+IYj/xFAXq4dMdJXsqlk3TJWP7Xb013lSqU9/5I6Y+TgYvp
         lw1dUSscwuMYAiIZIqSmwwhHf98+nv0VkuzKLrrH9j8ArE1CNW682TipeH5XFB1Ld3Pe
         0YVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2/+cM9zWOxqCkDm0YS3I0jB+XZre/FicCSBcP3A73tE=;
        b=JqquSUt90TENDfFlqUfN3OejgtkJIJoEUHkuxVCIyePjWbiy7PLjWOsQ2Ml4HHR+3/
         5ztnUhl5N4Kyh9yLXv1eaOcNhaqDTzGacJNfiNX2hk9dr3z7u/7P1J3VSvb2MhkoGPFr
         pSzDWFw5ZZlHYh3Relnv1hRabNn2FNr7nDQJ72E5WRV76RTKzDwb220ujaoeRbULmKPl
         yfu4zuQhHZBa+865EiRJ+eLnjTEgS+SBHX63vELgfu7IR2i5D8H/fbA9vko46IsYH5pR
         FfIkZ2eyVDkTtMfYuE5Ze1HnxNbbEbABqNFH2YpsncTHJKsxEBuTMklZAyrd6/8JYNkJ
         L9YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaZaIPG4f7cvtJpOKxiiSWq0Z+i0/Zu4IY9Pue5zDP0qMmAVp/B
	r2FL42bg+1sAqVvCzvB6oGY=
X-Google-Smtp-Source: APiQypKIgl/3BYWOAp30Sx2vO8oHKQ0ku+zvizH8DbziaZCEnw4CSqpMjZLo+qOaaCD9HSurZn4DgA==
X-Received: by 2002:a02:6a4e:: with SMTP id m14mr7334650jaf.17.1589029933365;
        Sat, 09 May 2020 06:12:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:610a:: with SMTP id v10ls1372801iob.9.gmail; Sat, 09 May
 2020 06:12:13 -0700 (PDT)
X-Received: by 2002:a5d:8155:: with SMTP id f21mr7404079ioo.151.1589029933025;
        Sat, 09 May 2020 06:12:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589029933; cv=none;
        d=google.com; s=arc-20160816;
        b=00oV9fmLuICuvuTRalFM/Snyvo/Rp8Z/H5AE7qzCgqb/K8lOSVyBTpX+2j5Qcd+7lx
         5oWYLfm6vLKNPYX4Ko4SxH0t3N9Le9TL4W+eSJmTUQ9opSXKsnGPjMMa32nBLTPHAPYg
         doRNGuVngzIIz9IvKtRljm2ovzTLNfdWCdxd8zcdRRryTHJF+4OkK5l36vPoTsESgQL6
         S8/EZAng3iC2cwWPaM8mz8aAvb1XbvmJjPPgzLFFBB43HyR147C5OSr5SJehKllq7uRc
         rRYPZsQAMQ1djzFDniQNnOqHz94TbQzUfTKN8AeCq2cxbXv67kIcV6WOvgINtap7cBhf
         BcJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=uZNHLh4ji2HiGvtUwXeMXbue0p7OE33Ogu+s/y62Rjs=;
        b=NSDB3fVmmDylFIdtpFIx/xlKqnZGRCkMClX6p6sTnA6kPG/YvlnSlYv0dTTxTvr8bT
         WhSvaFb4a2HyKhbTdEJQJmUh9wbSShmZkinERQ3tKz5G1s6khnVok71S56eWpO+/XW2w
         d2hkNzsDM2svX5Lp+meP5zfAJtCtmnwaSNzKzzSUlD82/LTGLBJ8feT18OFQPf1vJhr6
         PfxajoaGP47vzjr9jqLFrkEXROOFbSzK5AizyKRawY5tTKSmJMvybq1eb8sfQkSDs214
         /8+hfBhHAHoldFyOBOxPf969HSktYCxXni1mxtYXLsEasWy1kEDiySgBgCq2ZceF5l1P
         TYug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=e3jCTUqe;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id h14si287296iol.1.2020.05.09.06.12.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 May 2020 06:12:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id k81so4789315qke.5
        for <clang-built-linux@googlegroups.com>; Sat, 09 May 2020 06:12:12 -0700 (PDT)
X-Received: by 2002:a37:9fd5:: with SMTP id i204mr7598243qke.191.1589029932374;
        Sat, 09 May 2020 06:12:12 -0700 (PDT)
Received: from qians-mbp.fios-router.home (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id m59sm4028164qtd.46.2020.05.09.06.12.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 May 2020 06:12:11 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH] sched/cputime: silence a -Wunused-function warning
From: Qian Cai <cai@lca.pw>
In-Reply-To: <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
Date: Sat, 9 May 2020 09:12:10 -0400
Cc: Ingo Molnar <mingo@redhat.com>,
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 dietmar.eggemann@arm.com,
 Steven Rostedt <rostedt@goodmis.org>,
 bsegall@google.com,
 Mel Gorman <mgorman@suse.de>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Message-Id: <A8FFFB10-A619-480C-8828-DCD471B13F91@lca.pw>
References: <1583509304-28508-1-git-send-email-cai@lca.pw>
 <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=e3jCTUqe;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Mar 6, 2020, at 12:13 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> On Fri, Mar 6, 2020 at 7:42 AM Qian Cai <cai@lca.pw> wrote:
>> 
>> account_other_time() is only used when CONFIG_IRQ_TIME_ACCOUNTING=y (in
>> irqtime_account_process_tick()) or CONFIG_VIRT_CPU_ACCOUNTING_GEN=y (in
>> get_vtime_delta()). When both are off, it will generate a compilation
>> warning from Clang,
>> 
>> kernel/sched/cputime.c:255:19: warning: unused function
>> 'account_other_time' [-Wunused-function]
>> static inline u64 account_other_time(u64 max)
>> 
>> Rather than wrapping around this function with a macro expression,
>> 
>> if defined(CONFIG_IRQ_TIME_ACCOUNTING) || \
>>    defined(CONFIG_VIRT_CPU_ACCOUNTING_GEN)
>> 
>> just use __maybe_unused for this small function which seems like a good
>> trade-off.
>> 
>> Signed-off-by: Qian Cai <cai@lca.pw>
> 
> Hi Qian, thanks for the patch!
> 
> Generally, I'm not a fan of __maybe_unused.  It is a tool in the
> toolbox for solving this issue, but it's my least favorite.  Should
> the call sites be eliminated, this may mask an unused and entirely
> dead function from being removed.  Preprocessor guards based on config
> give more context into *why* a particular function may be unused.
> 
> So let's take a look at the call sites of account_other_time().  Looks
> like irqtime_account_process_tick() (guarded by
> CONFIG_IRQ_TIME_ACCOUNTING) and get_vtime_delta() (guarded by
> CONFIG_VIRT_CPU_ACCOUNTING_GEN).  If it were one config guard, then I
> would prefer to move the definition to be within the same guard, just
> before the function definition that calls it, but we have a more
> complicated case here.
> 
> The next thing I'd check to see is if there's a dependency between
> configs.  In this case, both CONFIG_IRQ_TIME_ACCOUNTING and
> CONFIG_VIRT_CPU_ACCOUNTING_GEN are defined in init/Kconfig.  In this
> case there's also no dependency between configs, so specifying one
> doesn't imply the other; so guarding on one of the two configs is also
> not an option.
> 
> So, as much as I'm not a fan of __maybe_unused, it is indeed the
> simplest option.  Though, I'd still prefer the ifdef you describe
> instead, maybe the maintainers can provide guidance/preference?
> Otherwise,
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Peter, can you take a look at this patch when you have a chance? Having Clang to complain this every time is a bit annoying.

> 
>> ---
>> kernel/sched/cputime.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
>> index cff3e656566d..85da4d6dee24 100644
>> --- a/kernel/sched/cputime.c
>> +++ b/kernel/sched/cputime.c
>> @@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
>> /*
>>  * Account how much elapsed time was spent in steal, irq, or softirq time.
>>  */
>> -static inline u64 account_other_time(u64 max)
>> +static inline __maybe_unused u64 account_other_time(u64 max)
>> {
>>        u64 accounted;
>> 
>> --
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/A8FFFB10-A619-480C-8828-DCD471B13F91%40lca.pw.
