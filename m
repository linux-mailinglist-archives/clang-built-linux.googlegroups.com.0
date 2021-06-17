Return-Path: <clang-built-linux+bncBCU73AEHRQBBBGOKVWDAMGQEOF7NHCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 283803AB6E5
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 17:07:07 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id n15-20020a65488f0000b02902221a44f1d1sf3966565pgs.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 08:07:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623942425; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2oNDs81UNr8eP470Rv7IKsOeOLC9bvra2wo4rVWSBKby6GPHYaUBM2tJ9kgAIJc1v
         5Z5iKLQG8SQUbSHAggy/IOfyNnY70jXu3FZF4lvnPk86bn3T0pAKjIO8GCHt99T4PsgI
         bbdCSg7pIHEgsJB83WwhQGtmb/qv5dZnTMWVDtywI2UraVdLKIyHyoE0m7QE4Itn7r2e
         Cqa//OxJZXFfGt3Fz0FsJJoIqNzEKiJGMh0b+ZQhXBYrNRKCvBF+k5y1kmgBw3QcI+jR
         4At/X4RnMq21R3F3qvnwPhsWGd0f9+kddd4Q728S1Z8MN+vFLB1iMBC+C997oU9HfbKb
         6RZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=TFeD0rfXbMyfeH6xuWFHA2MrLt613fFuFgGi/2ObEG8=;
        b=KdDsC9uB2hOGagR+cFi/JE6J+X/4B9nxwHPSVm/zLiwdN8gKS3NOY3nvXQbSlrX8Do
         8h4FbUvOdhiRGPs9j7JcTDwinttjBz3Hs6X5hXs1X+AXt1CjHhHUy3faJRST+du/wbep
         le/dmcxXOjtLz85dm+8jMQD9HGFg706k29u7LPSlu+3gSni1jlwWGsEPH3Uq5MDoBsDt
         GlRQpL2lqBk0Hqn/WFcfbEUbXlvamOCELVrsCAN3mAvjDJgI1tACUG0zAPf92pj1NipH
         dujj+iwSrFklPl+frWDESbGXE6bZkK0/YHJgMKrlo15ORZW7rT4RUPrmCb7gXLTnV93H
         sD9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=sa81=ll=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=SA81=LL=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFeD0rfXbMyfeH6xuWFHA2MrLt613fFuFgGi/2ObEG8=;
        b=itotZ+JACYeQZI4WpeLnt1SWZ6HuFF/mSTmKFQHZjCXNeKCSdaA+PRo+Dj3eZcG2/e
         aH9gcwbipCf9KdS9W1kbD1p3HZCOx/8KroZoh+/WKMMTYPeTYkQXNlxk4tWf1LQWzqLV
         72HiERIJxmScOFcJd38xn45VKP+IwgMOgUP1BPybRTC1+Wyt5l5cYdcNYNck3BImxuwu
         LsS/F7DUtBcOisdG19LNkvhKkmtkYPO6rwiHHmTIxBzeYsVGImASNfQMQFIqX982ral0
         ZVzwxcNracqShd5FBfCE4Vpk6zMFQbp+Snt6Ng5Rz7HCg2BiZbgJXOpbo6T/B1IarjDh
         EEiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFeD0rfXbMyfeH6xuWFHA2MrLt613fFuFgGi/2ObEG8=;
        b=grcYBYKrhRDSreBxwhrW7VsLMvq+QLolyYPmKcmQucnDTtyaT9UjqGA+OAudAv8X8T
         lvIpWkProEk0k/2S7Pioy3nxE2fS0z2gX0PzN7abTZgqU7hkR5Vc6E1WRTqh18Isbsyt
         3sPe9u6iUqLRgGE1c3GK1cDgw06GZq1dZIqv+Gij/8YCehZlF0oNMeQM05vdFJL2LiPm
         rf6bmZJOjVy6gNbD7KTsuPp4pBfbWEJgh9xvLeHrsFJWNOVK5LuvrSTFP4aSN44FgwDz
         gi+affWXedKkDDQjUP2GWg+922aRWDz5eXtPPfQp1MjCNfCtZSk5glzV+P03Iy3cZHrY
         x4cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bGOvC41MCa19Bo2+Bpp/9R98guGDlCE1tQ/JjQItJhoFt9JMU
	pkvhhKP1IfaIX8KVVnPNlQc=
X-Google-Smtp-Source: ABdhPJwDg4VXTKVv9RluVcdeuqvl1p+aHROzxlLAn4tdd/xqwqZeBUzhx1l06oJ+l4z3FZT9EK4itw==
X-Received: by 2002:a17:90a:b94c:: with SMTP id f12mr3543821pjw.58.1623942425403;
        Thu, 17 Jun 2021 08:07:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:51cc:: with SMTP id i12ls2991495pgq.4.gmail; Thu, 17 Jun
 2021 08:07:04 -0700 (PDT)
X-Received: by 2002:a63:d410:: with SMTP id a16mr5547053pgh.298.1623942424746;
        Thu, 17 Jun 2021 08:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623942424; cv=none;
        d=google.com; s=arc-20160816;
        b=P9Lt3FfohPrLoy1s4Cif2bq/dcN0j2MGlnTOyIb+VJtmiFJbr6fnPWRHwlfLcofvEl
         lrBEWSMwpqHk7q5gkIxFi3N/nBakLnLdbxgi8fRoqRUoL/NiMZ8zXObhhZYxLxcD+cWK
         ifDPNRefZnmgB1EUWDNQ5LatOAn7j7DbiuX2ViXSX/r/ZKUIk0xGv2ur2iq3oIHnEQNz
         St8eZujgiK/lkwxZoNx2P47Wcp58jaidDZCQ6or3ni2FeOAG2idqhyECNdja/I2ZeqTq
         c7J/1cpoCUBDGZ6iHIV+0r3oOlGXgFoxkTFvFZhZHPErgeCSesDLvH5piLs3ILwN0Xl4
         weZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=OYBgwXPTBsaog+WQ0BAhNl+kWQ/5izcvDoRIZvTAnL0=;
        b=p767vTcA15TVtvB0TtENwXknrX45v0sFIsIAJNswx3v4E9ZSzBU/iBT80Q3zefgKDk
         jAnqnkihrcQgDDzT4xGrH7l09t+DzE/PobhCl7KsMwi9hagFrxX78sqKGtvNugns3y3e
         pBuhM/XV3FlVD3hO+Mg6lCadidRVMikswbtdvXMdOx84S/dbKCzCsGvsLbfauL/Btt3z
         TB28q1la/vQZ05/RhqBLo31Q5VEsdQ3DBZwDs8KLO4FCs32Ey0C47HDUXlBaJfo66Itj
         zXCPxTn5cVvwiCD9MHA7IUUm8zflU+J/FxUGMuktP3A1YtpsuC+6w20zOjtl2WB3wf4N
         YiKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=sa81=ll=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=SA81=LL=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u31si482742pfg.3.2021.06.17.08.07.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 08:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=sa81=ll=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D5D12610A2;
	Thu, 17 Jun 2021 15:07:01 +0000 (UTC)
Date: Thu, 17 Jun 2021 11:07:00 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Matthew Wilcox <willy@infradead.org>, Linux-Next Mailing List
 <linux-next@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, open
 list <linux-kernel@vger.kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Stephen Boyd <swboyd@chromium.org>, Jiri Olsa <jolsa@kernel.org>, Alexei
 Starovoitov <ast@kernel.org>, Jessica Yu <jeyu@kernel.org>, Evan Green
 <evgreen@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>, Petr Mladek
 <pmladek@suse.com>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, Baoquan He <bhe@redhat.com>, Borislav Petkov
 <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, Dave Young
 <dyoung@redhat.com>, Ingo Molnar <mingo@redhat.com>, Konstantin Khlebnikov
 <khlebnikov@yandex-team.ru>, Sasha Levin <sashal@kernel.org>, Thomas
 Gleixner <tglx@linutronix.de>, Vivek Goyal <vgoyal@redhat.com>, Will Deacon
 <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to
 `__compiletime_assert_342'
Message-ID: <20210617110700.091efd15@gandalf.local.home>
In-Reply-To: <CA+G9fYukjZU9_88KuhW5FpG-Y6EOH4ehXgdKm9pGO0v4y4wsmA@mail.gmail.com>
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
	<CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
	<YMtTdU2b9fI3dnFD@casper.infradead.org>
	<CA+G9fYukjZU9_88KuhW5FpG-Y6EOH4ehXgdKm9pGO0v4y4wsmA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=sa81=ll=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=SA81=LL=goodmis.org=rostedt@kernel.org"
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

On Thu, 17 Jun 2021 20:15:13 +0530
Naresh Kamboju <naresh.kamboju@linaro.org> wrote:

> > Your git bisect probably went astray.  There's no way that commit
> > caused that regression.  
> 
> Sorry for pointing to incorrect bad commits coming from git bisect.
> 
> Any best way to run git bisect on  linux next tree ?
> 
> Here is the git bisect log from gitlab pipeline,
> https://gitlab.com/Linaro/lkft/bisect/-/jobs/1354963448

Is it possible that it's not 100% reproducible?

Anyway, before posting the result of any commit as the buggy commit from a
git bisect, it is best to confirm it by:

 1) Checking out the tree at the bad commit.
 2) Verify that the tree at that point is bad
 3) Check out the parent of that commit (the commit before the bad commit
    was applied).
 4) Verify that the tree at that point is good

May need to repeat the above a couple of times, in case the issue is not
100% reproducible.

If the above is true, then post the patch as the bad commit. If it is not,
then something went wrong with the bisect.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617110700.091efd15%40gandalf.local.home.
