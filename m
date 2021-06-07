Return-Path: <clang-built-linux+bncBCG4HBHYYQKRB4WG66CQMGQE2BQX7OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D933939D85A
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 11:14:27 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id b63-20020a6234420000b02902eef086465dsf940530pfa.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 02:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623057266; cv=pass;
        d=google.com; s=arc-20160816;
        b=YFGluiwm0zsvtKYnPwxIy0eWOiExjRQc6I5bRj8++nq4Vd/z0whwWfyckkQ95Izecg
         YeH6qtGkSLBZa4MBLxgM0e6jap00CEOqRiAOMCIUy1ekKpBnWzXwJuln7NQ3SlXgxyiz
         ctGf74qJabHFbcc5fZckOHeKwSA+QbjeMRC4ejm6jhQOC+ckHhSJ7yeoY0OWbwp2wr/Z
         MRrYmCJY7e104kkeVV9sIg0MGx11bMfcp4atGVVlla53cp2/ALPVFc7sZeZispXTfYTt
         R9VDNfMaKXOBwIyqsS2zPl2HXkrt9pyfKKjT6zBNQF5e/+SZDJ2/rPDxCENA8GwE/Sj2
         Cf8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=eviiijVMvZ0pBlFLfdn6E29Jws7JIJVfrg+6Nzo4H+Y=;
        b=FqbJPzfKxJJnQA05y9oB9RDM61metc5qDvqRP/Iup3iHRtshm6q8RBWkOn4jBwulp+
         vom3Ry+oRGDjO3n2zC7/SlhWMIPj8+1N7bkKCZgPHpDCpvxXp1bbux/SR1U6El2jW/Ke
         79WoiAAEGjBOnzd4v5A6/OkVfcpKrLaQ2q7kTDTC+t7uEGKHZfckXF7egE+6wIMPocMU
         4e3UB02PYdXm6gQ5b3ziMFVJeouhnrsDevgis07RGMxcV2tHpACdO6gWJg5siXc/rF8d
         TFPRQp+Avi/q3NTWf3Vs95b+hPK3Q13Se12nZk/wKg5dV21sW1GF+tUeXxt7706k+emp
         LGRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eviiijVMvZ0pBlFLfdn6E29Jws7JIJVfrg+6Nzo4H+Y=;
        b=dhsa80rKmpqCgnYKbfTiO6+NDwQuEsTZ1+BGDl+s2JVzUF1xGooWMZlt6yx1OU7xPG
         PLdAL0stMjXGzmqpp5AGaFG4pwxfGS7rfQ17LRYv2hUww/QqunnhdVxJP+KjyUZRubt/
         /mWfEkpd3RSgbOwMVNy+d7QpStCYtJatkpiHhhP9V9RtJ88gNCMkZ+sMr9g1yMYFb165
         zBFLLvRPoHnjWBOh94p0MImf1QEZfRKBP/kKgACM7kfLdE1CFZd58c1vqag2rzJCTgso
         2mcq64dN3YZRe6GwZ1hrb2TRAP9VaZ+bd8/XSacvylquZFdgEejh81GAduBf4njnetAN
         hKlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eviiijVMvZ0pBlFLfdn6E29Jws7JIJVfrg+6Nzo4H+Y=;
        b=pfo4475zTzRY0TsEyS6YGaNFlN18Mnr7/YQB/o9EazZ5wpJCN+Fk19tp90xbzICEML
         iNUAUC5zxkUDGollxlsAmr1fhrEQ3ZfPf3JI6LOYhp202sQYSZdK7jmzJUaq6lVsZ1tP
         KYt72u5ZLQp0jhfA0PaRjPSL5wzNBAoDQzRELwc2e6PYBf9A9OyBPb1VfRcwY/ixjEQN
         EDOnUapja850IWRIzi5F2N7DKia/QEOHXxdK0TDy5wGBFPBfQ5MBimREW0ZOKHIiH4YJ
         MlTnnUPfvHKNyuZxqv9NrW5sNwBUjZmG0HMXkH5whIRGk2C8eYrGTHNsh52cEvcCpddH
         MgTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hrvLJdxoEPaZe9SheLsEX3zFI151Uxkaq6dSIb5qIHH5eGZCa
	hdb2n1UYZAGhU7Y5QrQQTJc=
X-Google-Smtp-Source: ABdhPJy/FbrJXfMWEKsMBNinygZ19JBcpYzOS8LKfqgKbFmQHgOym7PaX7eISaex84Ji3FIEn521eQ==
X-Received: by 2002:a17:90a:ad8e:: with SMTP id s14mr19473112pjq.198.1623057266580;
        Mon, 07 Jun 2021 02:14:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b45:: with SMTP id b66ls3354264pfb.4.gmail; Mon, 07 Jun
 2021 02:14:26 -0700 (PDT)
X-Received: by 2002:a62:5545:0:b029:2e9:d88c:15c1 with SMTP id j66-20020a6255450000b02902e9d88c15c1mr16181777pfb.75.1623057266069;
        Mon, 07 Jun 2021 02:14:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623057266; cv=none;
        d=google.com; s=arc-20160816;
        b=oYtHbH41khH5Vg0DWixx2ndQ3yJ/7qnFO9Cx4ED825lDeHoAq9/Y0sckPJ7LR2Vsg3
         T2wIjLrSU6eZ4iQqminObjOYlaEetpDY8I/cNVcBPxY5/y6dCXeUJToN74s4fWr5UreY
         tvC/jshhMhPHeNZ7HvGmYe9qEas1vPtqDErarlYb6u6p1+Jr6Ry4M0GVHlYcJLyzGGgu
         ImHWig7VPMmQQY9Dx+hnLuitsqY6qzqh9Bts5hVWzuitKOR7nrAkYGEyLRwvMvTn6+fp
         1CkXrQY9wPDDHx+s//Ep4y6XAuj/vOrzZOaltlAaPfE8QJHLR0KBZLA7kJ3QSpKEtJor
         jf6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=bm3YYzv8z2MWzLI9B90FTDEYKsXZmVN7MD4Y/tosdKA=;
        b=0HgUNHqZIj194Ncg9BjChKxWwRyZM9mgw7bL4rhduBeynllTnmhWMLutwFE5/tGaoo
         TRGFj92tpvzSskzj7QXhp+eyyyrDtX+80ntkZ8oUdgqVovHglFPtutltteT+D9FeGA4m
         r4Yrvex6RgOdt/M/22Y43utQQmb/fZyn8Eq7an2jYGdRbjwCQ1HNiI0Fv0/PZF14ioQN
         vKVzdMxbhSdT2rG+toJtUaYSVPGzO8an3cw0mMFF5nEcD7g6AlsyxNPYyWWV2IQf2si/
         CycQ0Xso8ke+v772EGkc2a12D0zJYcTSDfHS3dh3jr/VP+vU3asyvt+arLY1N7AA519q
         f6/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id mh11si324683pjb.3.2021.06.07.02.14.25
        for <clang-built-linux@googlegroups.com>;
        Mon, 07 Jun 2021 02:14:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F216C31B;
	Mon,  7 Jun 2021 02:14:24 -0700 (PDT)
Received: from [10.57.1.61] (unknown [10.57.1.61])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 379F43F719;
	Mon,  7 Jun 2021 02:14:22 -0700 (PDT)
Subject: Re: [PATCH 2/3] arm64: perf: Improve compat perf_callchain_user() for
 clang leaf functions
To: Douglas Anderson <dianders@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Seth LaForge <sethml@google.com>, Ricky Liang <jcliang@chromium.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Jiri Olsa <jolsa@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, Alexandre Truong
 <alexandre.truong@arm.com>, Wilco Dijkstra <wilco.dijkstra@arm.com>,
 Al Grant <Al.Grant@arm.com>
References: <20210507205513.640780-1-dianders@chromium.org>
 <20210507135509.2.Ib54050e4091679cc31b04d52d7ef200f99faaae5@changeid>
From: James Clark <james.clark@arm.com>
Message-ID: <47a95789-ca75-70a5-9d65-a2d3e9c651bc@arm.com>
Date: Mon, 7 Jun 2021 12:14:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210507135509.2.Ib54050e4091679cc31b04d52d7ef200f99faaae5@changeid>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: james.clark@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.clark@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.clark@arm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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



On 07/05/2021 23:55, Douglas Anderson wrote:
> It turns out that even when you compile code with clang with
> "-fno-omit-frame-pointer" that it won't generate a frame pointer for
> leaf functions (those that don't call any sub-functions). Presumably
> clang does this to reduce the overhead of frame pointers. In a leaf
> function you don't really need frame pointers since the Link Register
> (LR) is guaranteed to always point to the caller> 
[...]
> 
>  arch/arm64/kernel/perf_callchain.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callchain.c
> index e5ce5f7965d1..b3cd9f371469 100644
> --- a/arch/arm64/kernel/perf_callchain.c
> +++ b/arch/arm64/kernel/perf_callchain.c
> @@ -326,6 +326,20 @@ static void compat_perf_callchain_user(struct perf_callchain_entry_ctx *entry,
>  	while ((entry->nr < entry->max_stack) && fp && !(fp & 0x3)) {
>  		err = compat_perf_trace_1(&fp, &pc, leaf_lr);
>  
> +		/*
> +		 * If this is the first trace and it didn't find the LR then
> +		 * let's throw it in the trace first. This isn't perfect but
> +		 * is the best we can do for handling clang leaf functions (or
> +		 * the case where we're right at the start of the function
> +		 * before the new frame has been pushed). In the worst case
> +		 * this can cause us to throw an extra entry that will be some
> +		 * location in the same function as the PC. That's not
> +		 * amazing but shouldn't really hurt. It seems better than
> +		 * throwing away the LR.
> +		 */

Hi Douglas,

I think the behaviour with GCC is also similar. We were working on this change
(https://lore.kernel.org/lkml/20210304163255.10363-4-alexandre.truong@arm.com/)
in userspace Perf which addresses the same issue.

The basic concept of our version is to record only the link register
(as in --user-regs=lr). Then use the existing dwarf based unwind
to determine if the link register is valid for that frame, and then if
it is and it doesn't already exist on the stack then insert it.

You mention that your version isn't perfect, do you think that saving the
LR and using something like libunwind in a post process could be better?

Thanks
James

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/47a95789-ca75-70a5-9d65-a2d3e9c651bc%40arm.com.
