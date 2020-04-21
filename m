Return-Path: <clang-built-linux+bncBCT4XGV33UIBBFXB7H2AKGQE6VHM24A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7F71B1D2A
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 06:03:36 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id 9sf2086204pjz.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 21:03:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587441815; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDOcwQxljulLvMl+9kicUPGYexTSzjE7PruOTDpk0HjlBcTYpByaQkwGqVDux2jGAn
         aUEMNWTRlJnQtwWSo4wlznHjRH3VT8gVLgSUqqo0pazTliYTr/biPvZZtRYwDvAPRiq8
         QXmXGunVjVs6gaUogOuwq2HYb3JQELixqU+F1+xtqIvQ3nBTY7Fc5O5cTAYLIK2lmkyP
         4FYy/RMKNi0BsmsertNSi+l026yQjR/DS8N7kuKcGsvI8AkANw6YLPdXJxEl8QfpBw6R
         9aRJVt8K5M1A5/qfRg5kwKUAcWTRMYusurMwEDjjLgVLoxMs7LQNuNKvSFLOT7gUXcur
         svQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=eT9awiWD8/jKAW1hNohhn91csmNPIRRLuJaCBvuyQmU=;
        b=TnmIPS5p2+p+QFf+oBJnImcZYABHa2a05a71Zs86Nuwuz4uB6BZNqttoMLq4M/uqqg
         dHE8eBpYx/vHSbs9KbPB1VUIVwyUQvVRG4lY2czy5hoZFF6YHLUBDeh1VEgsZYBVJtcK
         H/f7tBWMPoAOt7Im3CtY9icEA/rUADwRCGdiI9s4kKdOiG3j9q2v46MAd5Fu1rgFWceE
         jRoMO3RpCqnZCD2fg14AA7C9x7QSF+ZA3zvts+no+S9K1avUB8q4CBHdChQ1df3OYldn
         f5i6H/qHy+lx0lLvzb1mKhzd6wYquwr8+UmnhwnPxHWcHFVwb0MUu65If9rg7/ymHl/B
         ++Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="FGLJJlZ/";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eT9awiWD8/jKAW1hNohhn91csmNPIRRLuJaCBvuyQmU=;
        b=eWMB4eMGovTE8g2Rt1DtUg4g1XVBnYTfM+dY5iC3B+yGP+3K7tP78GqWKexWy60ARO
         UBzj3HyKu52txo3CcznKIOQgSk3Qt+SY/ZfPqJQJKEZ0YUIKKundgc9s77ou0JXDiLs3
         5bWYpTocVuCNN7en5phdvCRTEqRvQonjV34fX3fheLORuC44LGakiw3dxCZdEQbMQaSS
         AhkoP3FXfya8BSwCHX3feU6tDShTU+v1R3kMNUaDJN2I+xGYWx4xxFeH8qPRNCkVvcAG
         Dmy9jyJNMiYkFhHcUepnT6Du/t5mmKskDl2VVoWm0jD9uFJ5zzZlVfYUO7ikcD7LVUm7
         nQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eT9awiWD8/jKAW1hNohhn91csmNPIRRLuJaCBvuyQmU=;
        b=B1Fy8EJvsZZNSbEzi2kGapC4/Gf++6ef6qpbiVCnl2GbrT/RO7AhsGFbfRnTMjoq7P
         5CXOhgI3rlZxWj/hcwg67WU9OaTHXEie/hb6aXshx4uT63qNbP8+mMgfzYtB7tx3rsAp
         XJ0lDxrdaeRJ9dbJwAGBDUxAzP6xJmFfWN9ZH+etvro34Gku7ZkA3nYQf9ayoDkYoHDm
         UWX82mJuHDXuvV8/mPD6Y0sksRiLJrWC+WHZeodpo9lHp3pEOVgtc4XTzg8YTXlq1YeB
         CPkJMSN3yKIeJ6P/gq9s7C6jawvaKvbxb20OFwZZ/19wbiEpa3LLiLqfeDUnZjff8X+N
         bQ0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaRGhDgwdCGq1b5RWUVZ1l9s1bWfvlwGJ2myeF/9jFfDmwy9JfF
	xeZIjypfClw3kvxFaMBumvM=
X-Google-Smtp-Source: APiQypJOXbJSU+Zgz3AhqQHvWJXmTQA+8mp4igesKXllnnZ3OeN16Xv08be0rC446jSPixV/OJdZ5w==
X-Received: by 2002:a63:e206:: with SMTP id q6mr19639767pgh.69.1587441814646;
        Mon, 20 Apr 2020 21:03:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3543:: with SMTP id lt3ls3129549pjb.3.gmail; Mon, 20
 Apr 2020 21:03:34 -0700 (PDT)
X-Received: by 2002:a17:90a:f98b:: with SMTP id cq11mr3244893pjb.193.1587441814016;
        Mon, 20 Apr 2020 21:03:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587441814; cv=none;
        d=google.com; s=arc-20160816;
        b=W9GX6cEk94razU+atw0dgZXf+jPYbHwOtK17aTtPV6H+c0rMwsDQXjedFG1KnR0kL+
         tr3R/9/lfSTj1cnB8zKRIGYNFRR5LlXt8pDwvBMk3nuh+PvS11gC+/iD0TH1Hhz3S7VE
         qNpRevv5jH83KBTkIc8tjAXdlTL1m3KqtvuIAjMd65og1/h71x6PwD3f7t9ltQKjNE69
         UTHZ2TPG12Oi+2ezf6h22LbLjz60/Br81FTnOZ1vsZjCoH/AVtOe7ZhwhMLUH1ugRXdE
         A8rmY4lHyaob066QG90ad6DAhbeweQtVcimkEc6J77xOVZftyGiU0T3mbzFMawqbTWC9
         Narg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BpkWIH/ZIkNIdAjY6+LeJFcihxi5rttWtkX9/FWTn3E=;
        b=XuoHCi7BTovdd91DKUBLp81HBYVN0EUQ6DQQGxmrtKXwRB89S0plY74f5yO5DjZB15
         ywauNHnAyrv2bfP8rK1HZKj3+YXAmterPy3IBSN5opZxR58aWJBJ3NpAaTjBEjkkhoa1
         JJ0quXYbu/hR0JJeoheQbNhDz8xIIU+TpMi2zIKBGgW3NyjzwoBwyBaJnw1cJmaeZYgE
         KtkdN5EEIIRzn0OZ8XyFzQ2QTb959Xpm19PVtzIZ/6G1h+FlTtywLKKl5lUqI5tf+TwL
         3+8oI0jDi+m9lFakYRxaWSuYgPu03vojnizeHNTwaK5337xwNwkWPI/I1ImtbhxZkTZG
         UpeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="FGLJJlZ/";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si138703pgi.5.2020.04.20.21.03.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 21:03:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 346EA206CD;
	Tue, 21 Apr 2020 04:03:33 +0000 (UTC)
Date: Mon, 20 Apr 2020 21:03:32 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
 <michal.lkml@markovi.net>, Arnd Bergmann <arnd@arndb.de>, Steven Rostedt
 <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>, Jason Baron
 <jbaron@akamai.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-mm@kvack.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/6] Silence some instances of -Wtautological-compare
 and enable globally
Message-Id: <20200420210332.7ff9652c8bdca7fb91ccfb0c@linux-foundation.org>
In-Reply-To: <20200219045423.54190-1-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="FGLJJlZ/";       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Tue, 18 Feb 2020 21:54:17 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:

> Hi everyone,
> 
> This patch series aims to silence some instances of clang's
> -Wtautological-compare that are not problematic and enable it globally
> for the kernel because it has a bunch of subwarnings that can find real
> bugs in the kernel such as
> https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> requested by Dmitry.
> 
> The first patch adds a macro that casts the section variables to
> unsigned long (uintptr_t), which silences the warning and adds
> documentation.
> 
> Patches two through four silence the warning in the places I have
> noticed it across all of my builds with -Werror, including arm, arm64,
> and x86_64 defconfig/allmodconfig/allyesconfig. There might still be
> more lurking but those will have to be teased out over time.
> 
> Patch six finally enables the warning, while leaving one of the
> subwarnings disabled because it is rather noisy and somewhat pointless
> for the kernel, where core kernel code is expected to build and run with
> many different configurations where variable types can be different
> sizes.
> 

For some reason none of these patches apply.  Not sure why - prehaps
something in the diff headers.

Anyway, the kmemleak.c code has recently changed in ways which impact
these patches.  Please take a look at that, redo, retest and resend?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420210332.7ff9652c8bdca7fb91ccfb0c%40linux-foundation.org.
