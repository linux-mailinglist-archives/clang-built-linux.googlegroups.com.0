Return-Path: <clang-built-linux+bncBDQ27FVWWUFRBDNO6GFAMGQEF4OGBTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3BC422834
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Oct 2021 15:45:51 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id f16-20020a056a0022d000b0044bbc586598sf11067262pfj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 06:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633441550; cv=pass;
        d=google.com; s=arc-20160816;
        b=FKtUP8Je0nNQrvQhNm3FlVDkWMuyTzbb23RIiVUVOGb5pG5aWTIuAP4H66IdIWREIS
         QqPrhQ5PHZmORRAps9I7PgXLI7xorP65uq2twOT6i3ELYH/mxPxnXdsebhtKRah/CeDH
         TS1Y6D9R11ZbPFqV9cKgJlYo3cBA/qDHIIJ6MrfiS6ji6/OhsWMnVq/Lid4/zP9ZsidL
         tVMzKaxEoYYO4TAujylwOu7gzuOw43kNMY5P8HW9baBPcJDrDfwzcLS06hS0/dJ7Ywuh
         TAyRBXqpg2cw1ZPKkESh7e47xf25kptgrOyEUWu7sRSFDMs4EXt5xF6CnMphBGj7+B+a
         dlFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=LP5FhDePIjKc4W2Tr4tSh2Wcroiea4CPrTyUg9/5ARM=;
        b=x6BREf8iaMqY0IqFUINCIKjq4uBHX9t1MP59UoOprBvDjtoOPO8JgGyYquCc7V0h1q
         a5o4Zzb6wWehi8K22oagXWAZhWA6qPUegBTufI5dCy0Lo7HY+KmHxRbZDu2aiwBlbWQg
         gKRBQzP7XN2o3feIuVd4Jvpq9LAyJSgu46E40tpmOZa9NpePwMp5MIKwZ6Vw6ngst6qO
         Flf04nMskdihQaqm1XmSidldU3ObW/GXvS8vrV4G0ohlLZ9zPLqy7eDZxa4ElKcfO4Z+
         bFa2EignJxHtYNk+1ufqt8BAnMTJQA7xnTjRjZIy6A091mzOXJvbai+nRw/35+NcpmYh
         s/SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=cXEeRWfy;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=dja@axtens.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LP5FhDePIjKc4W2Tr4tSh2Wcroiea4CPrTyUg9/5ARM=;
        b=UMzVJ/72m/dP3HfbeCJeCfxaMb7nE0FxcnWnZTLkgWsLO/O6d1r+l5x2+Hw1eYbgmY
         fKgMuTCKEB4ayjLVG0Zj0rmHBL+72X/w+Or+x8VwJaQ74nqrBj3dT3NvF0hwvdJ6YTPl
         wESwbufkrNXbq1ZzaM/XXeLy8o01SrFMxNqZ1oDJFifXDwY1sqmW8PxgPuuIIZvW+u7A
         loW3V3sQn0oMzrq1pMHJ6x1eSIf2Lo21fjSCEwzQTYY2yugxqdtwceSsEsaTUCXKq0vH
         kVjs71zuV0Y1jfBKLMKyPlgPBVBPXvC7NeN+bxLmKWyNsnYpYtbawVPH99ePJBEbyK3l
         JaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LP5FhDePIjKc4W2Tr4tSh2Wcroiea4CPrTyUg9/5ARM=;
        b=WJcUg0A5dFJUojBi3eJITQGg2/5Z6ulFNTRLoYmy5Lr9KgDdb9YR6hQ7CAzw54hTkk
         tnD1jD8AJvQ5E6nX0QVrD/PJALsgm/kPSG+I9keTgMDuIg75Ns3WE/rd8QS29HK+0Sip
         u6Bbm4REfBZJSsB0J+sG8p1oSLQ7uQXDGb/mCwXShAAr2Hpur79ZHTKoRRtuwi3DITZt
         oBuFKM7bZ2ceZ5K35icJfAFNwBDnAGK+3uon+p7RzK2yODRRMKz8M/SFcoVb9onrlUDq
         LpVkCQHhG9G0UQOZHLzoYY+ZMTtWanl++e1ikiS5fB14seLBPnqlNZjQayUEPKRFv2IF
         7DEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lzckRtdd6+4e9eJD7qcNoNN9JMjdHVyYsm9lJiTGc/YUreC10
	LR7txiwnjD8RRGa1ISL0sag=
X-Google-Smtp-Source: ABdhPJwsnOdTXHoMOBFgqHLa4LhAV7B4OjKo+VP1bpltYvRDg8yZyQDYB76WM8YdHGHYCcPx/k8qbA==
X-Received: by 2002:a05:6a00:a0a:b0:44c:52c9:bf25 with SMTP id p10-20020a056a000a0a00b0044c52c9bf25mr14398373pfh.24.1633441549889;
        Tue, 05 Oct 2021 06:45:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls11719919plo.1.gmail; Tue,
 05 Oct 2021 06:45:49 -0700 (PDT)
X-Received: by 2002:a17:90b:1d8e:: with SMTP id pf14mr2073330pjb.125.1633441549268;
        Tue, 05 Oct 2021 06:45:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633441549; cv=none;
        d=google.com; s=arc-20160816;
        b=LNF7+OkgTstwKCUYZrO7zsyeBgK9lkHnuz4nYv47wNwTjbSqMcsz3aqrzW+d4N74w4
         CTxz4N8kHV4zGIwycrwQEmFtfqm+AzQbUtEZesqWCdilN4a/7DkXr1rlPPVmUOFbTCdj
         zXsRNVNqNIbiGfK+DfHkU0AYMXb1uwTJSvs27w/bdJHl5YDw2azU7vZ6Ts6c8s2Yb4Sn
         /hZh/88AjY+0/Dfe9DxFErdkd1kWphR8Scq2wiLXz8DbIfFzOkui3jjil7h/KT+Dk718
         C8hDTAuJc+bTs4yWyUN8A1L8fgRedL40bPAK10kQ4bzfQSseZFZL20DlZjml/yBeYwJw
         zB+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=q2sJa+RSjEQ0N7P9tx01XDO9P2azq24o4J0vSll+eDo=;
        b=Vl/kWGf9KBcNzTP5Fb0oJw82mDRBO2GFy/wQ/o7JQe81s1Y4IlpXDhsmboQKsbhkbx
         w1ZEWDFcBF0+aKvFovdcW2QJtnop+xkr2obdhSll12gUInzQCwa+8O/ZXOftE1UoOOQ7
         ymo2dupnkj5ERmQ+S/CMLwO6loTduePYMwmn1PD65v4760Hw/Ta69jitV0YV0OQtFUft
         ZNTsOr5yxDeTDjTZSpls8racmPuKrUMd1+k+P/V2qSWxN9TJ6qR/yaU4vonbbTL1U0HG
         m+DWY1ybnoL8Wo4srrvrZTTILKpuVq8B3o14p4+tNz0OE+/VU3aMx/+fbinKodHP6ppg
         2lzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=cXEeRWfy;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=dja@axtens.net
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id b15si1595551pfl.6.2021.10.05.06.45.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 06:45:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id g14so17504375pfm.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 Oct 2021 06:45:49 -0700 (PDT)
X-Received: by 2002:a62:6243:0:b0:44b:e10e:61b0 with SMTP id w64-20020a626243000000b0044be10e61b0mr30339538pfb.53.1633441548925;
        Tue, 05 Oct 2021 06:45:48 -0700 (PDT)
Received: from localhost ([2001:4479:e300:600:ce15:427:ed6f:99de])
        by smtp.gmail.com with ESMTPSA id q16sm19644560pfk.214.2021.10.05.06.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 06:45:48 -0700 (PDT)
From: Daniel Axtens <dja@axtens.net>
To: keescook@chromium.org
Cc: catalin.marinas@arm.com, clang-built-linux@googlegroups.com,
 hca@linux.ibm.com, jarmo.tiitto@gmail.com, linux-kernel@vger.kernel.org,
 lukas.bulwahn@gmail.com, mark.rutland@arm.com, masahiroy@kernel.org,
 maskray@google.com, morbo@google.com, nathan@kernel.org,
 ndesaulniers@google.com, oberpar@linux.ibm.com, ojeda@kernel.org,
 peterz@infradead.org, samitolvanen@google.com,
 torvalds@linux-foundation.org, wcw@google.com, will@kernel.org
Subject: Re: ARCH_WANTS_NO_INSTR (Re: [GIT PULL] Clang feature updates for
 v5.14-rc1)
In-Reply-To: <20211005131015.3153458-1-dja@axtens.net>
References: <202106281231.E99B92BB13@keescook>
 <20211005131015.3153458-1-dja@axtens.net>
Date: Wed, 06 Oct 2021 00:45:45 +1100
Message-ID: <874k9v60vq.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dja@axtens.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@axtens.net header.s=google header.b=cXEeRWfy;       spf=pass
 (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::42d as
 permitted sender) smtp.mailfrom=dja@axtens.net
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

>     Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR
>     
>     We don't want compiler instrumentation to touch noinstr functions,
>     which are annotated with the no_profile_instrument_function function
>     attribute. Add a Kconfig test for this and make GCOV depend on it, and
>     in the future, PGO.
>     
>     If an architecture is using noinstr, it should denote that via this
>     Kconfig value. That makes Kconfigs that depend on noinstr able to express
>     dependencies in an architecturally agnostic way.
>
> However, things in generic code (such as rcu_nmi_enter) are tagged with
> `noinstr`, so I'm worried that this commit subtly breaks things like KASAN on
> platforms that haven't opted in yet. (I stumbled across this while developing
> KASAN on ppc64, but at least riscv and ppc32 have KASAN but not
> ARCH_WANTS_NO_INSTR already.)

Hmm, so it looks like the commit doesn't affect how noinstr is compiled
(which means I have another different issue to contend with!), but...

> As I said, I haven't been able to find the original thread - is there any reason
> this shouldn't be always on? Why would an arch not opt in? What's the motivation
> for ignoring the noinstr markings?
>
> Should generic KASAN/KCSAN/anything else marked in noinstr also have markings
> requring ARCH_WANTS_NO_INSTR? AFAICT they should, right?

I'm still curious about all of these questions. I get
CC_HAS_NO_PROFILE_FN_ATTR, but I don't get ARCH_WANTS_NO_INSTR.

Kind regards,
Daniel

>
> Kind regards,
> Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/874k9v60vq.fsf%40dja-thinkpad.axtens.net.
