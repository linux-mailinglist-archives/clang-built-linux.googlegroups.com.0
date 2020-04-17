Return-Path: <clang-built-linux+bncBC2ORX645YPRBEPT5D2AKGQEKZIDHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFA51AE88E
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 01:19:47 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id k10sf3120599plx.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 16:19:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587165585; cv=pass;
        d=google.com; s=arc-20160816;
        b=andp4CYHcV0Ylxue2ZdO5MIkwxAiP72QQAE10yhqGZCgek/q0e01uhIRtXkHu2trsq
         fDtsE0wzeDJ6j8f5n5MLk40sFiHRVscukn989e+TgNf0b/rdgHpfMr6iH83RkaSymyXF
         If7ObedXUiB5M1dokMIbo7AixKVZYf/mCTZ7YESQja8mUhKgYJsAjtnIw66ZLqhb4JYq
         oVZV4hxdSMg+c0ccK7EH10QMBTrL+O1L2WcvvkveS+0SVSVo6kjhmMdT3Sc8jVu8fk37
         znH4lh39iMGruVc1jKkojl1LC1/NUPPkW1azoSvUGcZn+YRhE3AFnw7BjEvTjua7PBWF
         5jaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=rhYjl6cq5a2si8WcmhI8N/pyV0Aaty+eCCY8OGudmDE=;
        b=ypUW1P3t1rtZlaQi29P931aSFV+tg7J/GBjaghz7jK9130VWnZPQ/7tKgJNm5z2RZi
         mgru/IOpRMqZcQ/b+KVxzjlVxBRvcie7k+bS5sBt0qO+HUeBtasY58vqpPS+COWj6oBn
         oALcLcYx+YpVf5Lp4teZnFCpem+9W18LqtlUbdwVRdD1DFqD32Wd6sYRvJrLiQqAMsaj
         I9eb54q2SnnX0IaB9POb5+a3PSB3G/Avr35HeCRwQ5bPz+C2emVG0AFt74ecV6TuoT0e
         2Ievy92smsG+zhSpnDyyvCsSAzW1K8BIxYnQ/pTGSJNw/zwdJy6GD6zbrQmsVwILTQKM
         QxMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O3KHKU0k;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rhYjl6cq5a2si8WcmhI8N/pyV0Aaty+eCCY8OGudmDE=;
        b=titv+cnojmOLevA89ajQ+Qt0WdADGvOFBiA/2Uj2NG86AxAUmdkg86feVXWPvSv6cJ
         jul5OEk4LptcaaaB4nPoh0y/5h+/454OLmJEPPiWHXg3c9h+VDqCA1/aCJEPjJIcMCC/
         nodpaGXmC34GaaBurOp28qFCsmjaChCxpwx4kN1DBZfPp8PTOS0cfvMwMJvt4T+1REMA
         PHB+psIVH7rWxAzfGFh9HwfbOznuBbSGOJk9m9uCkkO6wrltQLDeobJK5eLAk+ZDWUTP
         KFLrL2nnPMk7twliPB+1kLicSxjsAXBUz/SCOYNjHKTvhBhEVMyZ/Bt8nYJN8FO0b5gb
         v8aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rhYjl6cq5a2si8WcmhI8N/pyV0Aaty+eCCY8OGudmDE=;
        b=CTSAnVD6wdhUjC7S6uB+uFiE7CaWmJahaYTxaSPfJzNO/4O2GRPzBe7u2m1TMztE2L
         FZvQZfyd/z1YHrupzQyB5Hsb+kUoVWPirtCYCkWGR1dKUhEFBt783bqucQCuko7dmzak
         zEGXdKEUZPyN93V7NR6OBRE3fSpr6LQ6i7sVkRSwF9sjnREMHJWTIPpsgceHw2ZwAyjD
         nJ3YA3Y9r4385Dj6HvcShi5fgPEFEZ58o1aNerpEPq0ABEUH2NdOfV4AAjah0+H3sflM
         kQ9suLGu7bZ1bipf33ZHZj14UK7QUuRnTOqwqkrXsfO1eGXrdD8jdDeSPDbbfJotaqYt
         sjKg==
X-Gm-Message-State: AGi0PubfuNXMOReVS4iWk92TFsOh0xEl0+pOuf/CK4Tp0PljhyCfSMk0
	PJja2D0YO94E3hLJBKEjUno=
X-Google-Smtp-Source: APiQypKKksVfs/GcXhvJwnQ9CrhJZlRGC2WfoGjzxhw+zmLoV7sMBMlZErMUq2kSnH7HpWLBd1O38w==
X-Received: by 2002:a17:902:207:: with SMTP id 7mr6003573plc.216.1587165585747;
        Fri, 17 Apr 2020 16:19:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4489:: with SMTP id t9ls388851pjg.2.experimental-gmail;
 Fri, 17 Apr 2020 16:19:45 -0700 (PDT)
X-Received: by 2002:a17:90a:14c6:: with SMTP id k64mr7095501pja.39.1587165584884;
        Fri, 17 Apr 2020 16:19:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587165584; cv=none;
        d=google.com; s=arc-20160816;
        b=NG/N9SHfoWYn0DlO1f0cGxcGZOMrcxUrnHLzGhfcpmvvBppiOztk8JCLzj47Idlegn
         yMTiozps6v40xsPhJvwSrSW3VCVBzrEk73+AEkdt2p4KVsGwUb1s/jYHIsFy9jlonOkB
         gjmtFCmkgnPTwjyMLu2UJJuj08FDhjkMDIm4x0I/rW4+OSPA4P2zXXjhM9JWkU1yjoIq
         q/i3TrPJrE5G82irxmmz6BfABlASk8/g5JJ0cXRpsoYAJ5bxk7Fdn3oRLIEyd67LLmE1
         rmr4Sb5TueKut/pHM50Mq9SckUif61pJ22ldhyd3xnw3BEZVlWPGqf1a+1SL9plnQPDx
         3KWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eZN/WzOYxhMTyXM1n4Hh0KjKOonGokmtIz9JOOeY5Vg=;
        b=TdVX9Fq5f5B+3lO+nI2x/zSArBWSn0y8P+jRVUmPcNbG1yRIxLTDxrRV0xPVPsdFgV
         jP16TZ1hS1GuB9h1IVAO/Myw028EQ+jECpCZZ8EsjWSvNrO0jCvUV8a8Hu/YHrefcYDC
         6weRizgLtwTRyVaRtw9oy8pFXTjFCLEDL0kxFM4ugGXyhOijxkza3bXh8stCKCpB/t26
         SMqhPyeHlb6LCYHUBeDc6N7Z91III7IiroXFzu8Vq5WgpH52JG5x6qJsXWZlHzDmrce9
         XQ2+SgxQtLVrccWYpRy94C3YKLOja3aMI410OUkA9Ng7bavI51wcGFnDnHjzV9NrM8g6
         UU3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O3KHKU0k;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id c1si15542pgd.4.2020.04.17.16.19.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 16:19:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id o1so1677531pjs.4
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 16:19:44 -0700 (PDT)
X-Received: by 2002:a17:902:bd09:: with SMTP id p9mr6170885pls.25.1587165584157;
        Fri, 17 Apr 2020 16:19:44 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id y123sm20188542pfb.13.2020.04.17.16.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2020 16:19:42 -0700 (PDT)
Date: Fri, 17 Apr 2020 16:19:37 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>, Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200417231937.GA214321@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
 <20200417144620.GA9529@lakrids.cambridge.arm.com>
 <20200417152645.GH20730@hirez.programming.kicks-ass.net>
 <20200417154613.GB9529@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200417154613.GB9529@lakrids.cambridge.arm.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O3KHKU0k;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Apr 17, 2020 at 04:46:14PM +0100, Mark Rutland wrote:
> If KRETPROBES works by messing with the LR at the instnat the function
> is entered, that should work similarly. If it works by replacing the
> RET it should also work out since any pauth/SCS work will have been
> undone by that point. If it attempts to mess with the return address in
> the middle of a function then it's not reliable today.

I did initially have a patch to disable kretprobes (until v5), but as
Mark pointed out back then, the return address is modified before it
gets pushed to the shadow stack, so there was no conflict with SCS. I
confirmed this on arm64, but haven't looked at other architectures.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417231937.GA214321%40google.com.
