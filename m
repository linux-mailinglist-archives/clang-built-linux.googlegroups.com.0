Return-Path: <clang-built-linux+bncBDY3NC743AGBB24PRLZQKGQEMD55XKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBD617C449
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 18:27:08 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id o64sf4284278ywb.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 09:27:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583515627; cv=pass;
        d=google.com; s=arc-20160816;
        b=zCIHHEFj2+g9C4SLrAgQP9XPXyFASLbrWLaitI88zYIuyJHx/rFWFkd1qfLLYerJ4h
         +9BDEbiah+8DpCH1atQres2FQ4ont2ZyZUH7iTpGKdwcORKJ9/eLZcebFkRiVZsw6NUI
         FLwLjYMbzX1N+zd9VtwO8Hd+ucKYGF0xg6ex+PFHBjga/Bi+7LkwqkHl6xADKWN8HqK5
         Yx00mMvFGvm1mmtfrC3FWBmI6AdYZvh3V66VXKyQvN6A88yCEica/Qq8jTj5xRIys0b7
         up5mz4ErWN94GAawi9oqvXc+NELmxuI2hSqLOdqTtNORs+Gd/7nkaBJNO+wKBa7q2qKk
         uarA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=GsMsIzcw3i6X7FP3CCh7raUHtKneN526CGuw8Bb3pK8=;
        b=AwueXTtcFBzve62vpaOdXjBH4rB6vF7z1v7g18dEcX9Vij/yUJuJizniv8POwz3ciV
         XuyXJWOcc9D1EEoXKFhuNvHeDJ6y0ZSdwqR26vlKo8ri3510kVQrXMySvbQFJUctOvXU
         fRjdwn7Bz5zGpSKHhFjA+LEuHpiJmDRCEqNqQfneANhnXRzNXTUYoLTuKk39NOB+1gM9
         s+2i4JslAv0S+D6acJluaaMTM+V2NpDxB5vMnCAPHUadK+O0FvSIlMYmoCYpMGOwNfQX
         2Rpy4GjUjULxmj9ZtCdILeJSgl5vFP+PUu29QfE8yTC15CxTFZgshT5uGpnOwt9MxnaT
         cT7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.112 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GsMsIzcw3i6X7FP3CCh7raUHtKneN526CGuw8Bb3pK8=;
        b=Mbvv6y6Pwdy98oMFeO59w1DzWjbaGLJHqrlROchqa6UYi5l2gE8pdKpCqW9Ai/BbnC
         ediryC84jumKZJtEJ3wv8Cp6N7zeWze1T8b7fWbPuXcIFZdBHZzuE0j+z/dpNq+H7SjL
         lm2UFUmaTGAVS3KubPdbDhEQ1OcCygWvbfcZUr15KsT8y0hppX8UzVcDOIsWPIO8jUaZ
         wPmcoBwRmqRT5BvHBhgz5FWTNXmjvvNukCCY1fSiXQjE+wSxjdRSAqMg1vmLl3joPFyT
         /vZRg1mj9Nn0VD8YudzFI8K38cGhxLogGIIFjyOw2Eamo/BjZxSrRT9scNIvDx1Lqvtn
         v7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GsMsIzcw3i6X7FP3CCh7raUHtKneN526CGuw8Bb3pK8=;
        b=aqp5CkS9GkClyieAs68w+3s4qY1DCW3hDHVxyusq3cSBYqp8njvQQRApXc69zrrBer
         NpZFCweZ0zYYHJverCqoiy0ol7r6bYG8kB5mznY0cArgXB9/B41q5+BD24DqE0XxXS2u
         teb490FpE7X8IsSXKPZj8JX8oNn9HgwWqQKTyEt3Uw/5naBA5LR21L/hc9FM5geIzzzK
         ckTxqtZoCx/WSEVOZLxBGoTrPLYmagAqx8P6M1CZKU0glkeLf3b3AjQVyRbF0xDCeb6z
         tWQDhLDC7RtoOXTtMheiVdyGcdS2q+LdsOTVplveWmR3G0qX2mlacg3pdqfveB4Et9Vv
         H/1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2f1mmzXz/hKwyu0hl+L/TP6BwWiX1ydbAqqPGEnTM5AOAx4Utb
	/5PRc1NTX2gjSkcuBTTL/h8=
X-Google-Smtp-Source: ADFU+vvnKH7UsIv/QTg/KEBd3AaCRILA3tkEajnTKMpeG0OHjnP2whDp9guThwVwmpSnqm92nakriQ==
X-Received: by 2002:a81:4313:: with SMTP id q19mr1364261ywa.240.1583515627383;
        Fri, 06 Mar 2020 09:27:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae04:: with SMTP id a4ls697797ybj.10.gmail; Fri, 06 Mar
 2020 09:27:06 -0800 (PST)
X-Received: by 2002:a25:fc04:: with SMTP id v4mr4955829ybd.294.1583515626935;
        Fri, 06 Mar 2020 09:27:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583515626; cv=none;
        d=google.com; s=arc-20160816;
        b=rhxpBX2ydhEAJvzAQixm/nH47C+flwqjrmwc9ZsUF1QCR//tB6qOU5olcjKjE8X5Hv
         OiM9/y1MX5Cd8/AvP3zE1x0JbEO5UK8D6c9NPrUFimHiLnW5SH5VGdqX0P2ecXnuc2HL
         mNOL2dY5EWWChiPw5oBHnQNdVoxAKquHEL0ZAHcJDFn/rlCLBsG12OgQJLdjuV7KPcdR
         wAQhEybUL45e7M0itxmFrkNoY89BAYvhIElAf1xKDrwQm3S2Ew8kkYiR0aOivg1QQZLR
         yqs1gN8EeDXw6q3xmIS+dzVleCtW0Onujb+eGfqaw59VlulmU526DJ/91/mF1stwJ0UJ
         zBMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=/C1NA7fdflpuC9P015wS8x7xj/wZzw6IwsoP22v5Bgg=;
        b=VLZq/2wBZL6zZRn3ujl2jXgVsmFaqW/3zGXNjPx2UN7nPFTSuPJVO5Jrrg5OdjHOtO
         ybDV3824MxbM3SvKRzL+SEMXNhXD84pADcQO6aBXyh+qTCr6m7EqSKD+BglTw2+wFtGr
         SPRAICL3uOVxq6oRdpbiN0vWyhJ/i/n51uUmDqUX51uVn6LBcH2Y0e1ZDR2ZxI5aySoB
         0h4UTmfxGsNVjk3TbhO+5tFpcoiuoYMSvX/zxnbZLiJccOpZ9MTvM1yH4akMgWlIjAEG
         y0Q8WRxhslmwpT/k7uLfN8YOeScMUozD3AlCTQnlftOhH2z1WX/2AdY5Oin8tOszH6ky
         SyDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.112 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0112.hostedemail.com. [216.40.44.112])
        by gmr-mx.google.com with ESMTPS id m136si138211ywd.1.2020.03.06.09.27.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 09:27:06 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.112 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.112;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 5A66D1802929C;
	Fri,  6 Mar 2020 17:27:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7808:7903:8660:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12438:12663:12740:12760:12895:13148:13230:13439:14096:14097:14181:14659:14721:21080:21433:21450:21451:21627:21660:21939:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: iron26_5add7c5902505
X-Filterd-Recvd-Size: 3551
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Fri,  6 Mar 2020 17:27:04 +0000 (UTC)
Message-ID: <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com>
Subject: Re: [PATCH] sched/cputime: silence a -Wunused-function warning
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Qian Cai <cai@lca.pw>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	juri.lelli@redhat.com, Vincent Guittot <vincent.guittot@linaro.org>, 
	dietmar.eggemann@arm.com, Steven Rostedt <rostedt@goodmis.org>, 
	bsegall@google.com, mgorman@suse.de, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Date: Fri, 06 Mar 2020 09:25:29 -0800
In-Reply-To: <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
References: <1583509304-28508-1-git-send-email-cai@lca.pw>
	 <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.112 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2020-03-06 at 09:13 -0800, Nick Desaulniers wrote:
> On Fri, Mar 6, 2020 at 7:42 AM Qian Cai <cai@lca.pw> wrote:
> > account_other_time() is only used when CONFIG_IRQ_TIME_ACCOUNTING=y (in
> > irqtime_account_process_tick()) or CONFIG_VIRT_CPU_ACCOUNTING_GEN=y (in
> > get_vtime_delta()). When both are off, it will generate a compilation
> > warning from Clang,
> > 
> > kernel/sched/cputime.c:255:19: warning: unused function
> > 'account_other_time' [-Wunused-function]
> > static inline u64 account_other_time(u64 max)
> > 
> > Rather than wrapping around this function with a macro expression,
> > 
> >  if defined(CONFIG_IRQ_TIME_ACCOUNTING) || \
> >     defined(CONFIG_VIRT_CPU_ACCOUNTING_GEN)
> > 
> > just use __maybe_unused for this small function which seems like a good
> > trade-off.
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

Another option might be to move static inline functions
where possible to an #include file (like sched.h) but the
same possible dead function issue would still exist.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel%40perches.com.
