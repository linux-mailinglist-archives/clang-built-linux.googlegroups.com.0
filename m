Return-Path: <clang-built-linux+bncBDQ27FVWWUFRBPM56GFAMGQE2UUI4MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B102B42276B
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Oct 2021 15:10:22 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id 15-20020a9d080f000000b0054df99cd96dsf4411962oty.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 06:10:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633439421; cv=pass;
        d=google.com; s=arc-20160816;
        b=EOD37LvJcj3o+ZHqG7tau+Y6lvSjlRYujem6mJgFyAQdeNDNRAIZw9+wXXn9nYXxbb
         ZN+2wDK5RiuEThNUgc4D9K+aL3QB7HqjTJgqYafUk1Wy3mcjQR37A294AYEf/SpawR/Y
         taUgtJmNVaVwpe8t/s1hyqH4Pl0fZd6tQUfqeNteQ6DBt2UgtLMldCKW6c3GqGX1wP4d
         i1XNNP6jPQbDTgv1YebXvxq7/NLJFTrNzj1W6oVHc5lxwpk6zkmIV2unzMrhikHRwqD3
         oMjMv9R7e88FjKzgt4zjmWZsWxwZ8qiwicPGkgy38sxrpwSnCHJzIApW7mQ3ysc+CX4t
         jl6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tskBk/sY0iz2QY56V6PkI4IKuLzCwns80olH98+2LiY=;
        b=ky9Jd1DYr/bXBHGSv8BZ8IlZRIs6GcIiTzbc3cXCRkASs46rKfn0Hh/5mkz0esqSCB
         4zLDcBqHatGi1Q/S7/xrs33BhTTtXSQDrU5jOa1MZf57gQbuVWVrdAYqG0eDdBwc1Db7
         yzHHxSWYxUkDvyz+Zb9nmXgLvYJrUA3EkWQYov2W+BcgrBDTmo/TDFJMWPgK1A7y2/33
         XKEEbTvnWNzmtI4H6BC3eaPLatT5Ukj0rRBKMi2dBOxfx3As6bxsrSTbS0/UhUXocwPf
         7eZ81sLr+Gikz+yKXTyl4a2lrPimReM9amMpizHXwhGqvd+nSL1NiTk+y0LpqTvWgm7m
         +8jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=nmikV1EC;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=dja@axtens.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tskBk/sY0iz2QY56V6PkI4IKuLzCwns80olH98+2LiY=;
        b=F+ZZVdGgjji/SL6JZSiFdoZOb6FCVDt/em9NVUO8giwzhtEKxCGE0yv2YnlSkdM3vE
         dYgbWyOBL+PIby2X09MIrbLVPcPGsLdl1/8OwAwaV4Z3EEnPS6vW0d/1H2FMXcdK+fzs
         Hnv3ZhuRh5ckjtYYA6Co3NUaTWsX+KGqk3jfQ7iIgiMBnqHg5CosYm1qxamyyhZFOQum
         LJJ+n0TPl3EdZmqxW8DPLW+LYFJ1rMR4fKNKHUQlVbtQIam5okSL8MRkUsMg2fogijVZ
         RdjhIQ/WsyW3oV1BgK8HOyERXifjH3zexNDZncO0hgfHECOrjSie0xovi4F1X0SBN2kt
         rvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tskBk/sY0iz2QY56V6PkI4IKuLzCwns80olH98+2LiY=;
        b=CwyFf6WdGqdHQL/PhlKNc8fg4YvgdSQI+xxKh/RVtZe23vSZ41Qic2UEPo4tqNUaUM
         R2tjqesukDmOReRTuThlKhfItq9FCqMIyXBIn0oy1Wi9Wdk5PEhpNXYM8JicILr6Kivr
         tjCC4Q6rNNulmh7pt0lspPw4UQhoREv+V3qm4EpkWwATAKcNverucqqVIY0PgSET0GJ1
         YIxc2ltFsqYZeIeAiZiNyyMBQilzE6Tyew21uLhhMxFssIPWKSSQJf2Fimr7pdamsiA3
         XCKLWVac6OVygtgkA0yHApJImvEDuTvlg0CeTIqH3W5Jot2nfoZdVkgwTQScvK1xQY0h
         xbkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iCKmue98O8FvP07DEkELP7h7IzYacdxh3ZANc8od1R6EyocLM
	4fyPeQ7Y4ZaWpjVQyeyP2nA=
X-Google-Smtp-Source: ABdhPJwFwFnzMP40PsfFU7YsVhv+qZImVtYOrUhUQPY0lfK454jHyT5z8Cy6BeFF+qzuTAB2vLScAg==
X-Received: by 2002:aca:3985:: with SMTP id g127mr2453720oia.149.1633439421705;
        Tue, 05 Oct 2021 06:10:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1e02:: with SMTP id m2ls5881823oic.2.gmail; Tue, 05 Oct
 2021 06:10:21 -0700 (PDT)
X-Received: by 2002:aca:3114:: with SMTP id x20mr2423259oix.174.1633439421138;
        Tue, 05 Oct 2021 06:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633439421; cv=none;
        d=google.com; s=arc-20160816;
        b=KELGmUKanpBsPaQ1QnXP6Rax8mu+c3wjI0vHUygPX6J2cZdNIvXwdnWSBYsjsLKac1
         Dpd5XWa5AYW+1PGTvzOTCNK9qMu5vFfwRotiXSrDBM+jQeRsvTPYYqUZc/ZzRBZXbX2t
         RJI509Qrsz6p6pwSdOpOENyPkfsDTBHj9pzemEqssaLPPz6oaG6NgfH+yjUODWilVz40
         wrWOcNCLefJVcdYk7l5T60gmt7da0N3UYHLuGVzcw9BgKhN9T7VQoc2MESu5zrxv9CRk
         z6yfyjGvZKSi3d0zl8ZC8CuH2zlBbd70eFeKOH1DyrUVxbe0k5rYtzPusrliNeoJHogr
         dfUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TCCUX5JZdookotxRzV8PUR+bQjhgRjRq9vklW0tEBT0=;
        b=pLU9mHwWvLX81V/z1/m4KMJE/Rc1dk7D2qBC0tEG8AXNuovtGdFdHHHduXyWpHJWDG
         5dltzD3ajHv/9fM5O9cAIbVh7rg5I3vakB/PbvvrptGpMcbsGgedBGh0cTB2EbfTaimz
         MtV2MNdciyrXRak5xCjwZdXsXlGO0fQ3XP3UosAH/MIrImGUddR98ayrRRTxqMNeZ9V/
         BaycwxtZo+/K3+33AxK4tXO90bVZshRPyS6tglyZ3oy2O5sldLr2/9hwp0jj9qJ/x9Lm
         uLFHLRpvxPWQxkN22kn5C2q3ZU/QZx8dXWUd2gPgREeFVhoMlJA9WjhkBviGbWuKVi82
         RA6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=nmikV1EC;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=dja@axtens.net
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id bc13si1742024oob.2.2021.10.05.06.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 06:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id q7-20020a17090a2e0700b001a01027dd88so494714pjd.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 Oct 2021 06:10:21 -0700 (PDT)
X-Received: by 2002:a17:903:2403:b0:13d:cef7:61f1 with SMTP id e3-20020a170903240300b0013dcef761f1mr5203670plo.48.1633439420727;
        Tue, 05 Oct 2021 06:10:20 -0700 (PDT)
Received: from localhost ([2001:4479:e300:600:ce15:427:ed6f:99de])
        by smtp.gmail.com with ESMTPSA id n207sm8291473pfd.143.2021.10.05.06.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 06:10:20 -0700 (PDT)
From: Daniel Axtens <dja@axtens.net>
To: keescook@chromium.org
Cc: catalin.marinas@arm.com,
	clang-built-linux@googlegroups.com,
	hca@linux.ibm.com,
	jarmo.tiitto@gmail.com,
	linux-kernel@vger.kernel.org,
	lukas.bulwahn@gmail.com,
	mark.rutland@arm.com,
	masahiroy@kernel.org,
	maskray@google.com,
	morbo@google.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	oberpar@linux.ibm.com,
	ojeda@kernel.org,
	peterz@infradead.org,
	samitolvanen@google.com,
	torvalds@linux-foundation.org,
	wcw@google.com,
	will@kernel.org,
	dja@axtens.net
Subject: ARCH_WANTS_NO_INSTR (Re: [GIT PULL] Clang feature updates for v5.14-rc1)
Date: Wed,  6 Oct 2021 00:10:15 +1100
Message-Id: <20211005131015.3153458-1-dja@axtens.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <202106281231.E99B92BB13@keescook>
References: <202106281231.E99B92BB13@keescook>
MIME-Version: 1.0
X-Original-Sender: dja@axtens.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@axtens.net header.s=google header.b=nmikV1EC;       spf=pass
 (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::102d as
 permitted sender) smtp.mailfrom=dja@axtens.net
Content-Type: text/plain; charset="UTF-8"
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

Hi,

Apologies, I can't find the original email for this:

>      Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR

which is now commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR and
CC_HAS_NO_PROFILE_FN_ATTR"). It doesn't seem to show up on Google, this was the
best I could find.

Anyway, the commit message reads:

    Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR
    
    We don't want compiler instrumentation to touch noinstr functions,
    which are annotated with the no_profile_instrument_function function
    attribute. Add a Kconfig test for this and make GCOV depend on it, and
    in the future, PGO.
    
    If an architecture is using noinstr, it should denote that via this
    Kconfig value. That makes Kconfigs that depend on noinstr able to express
    dependencies in an architecturally agnostic way.

However, things in generic code (such as rcu_nmi_enter) are tagged with
`noinstr`, so I'm worried that this commit subtly breaks things like KASAN on
platforms that haven't opted in yet. (I stumbled across this while developing
KASAN on ppc64, but at least riscv and ppc32 have KASAN but not
ARCH_WANTS_NO_INSTR already.)

As I said, I haven't been able to find the original thread - is there any reason
this shouldn't be always on? Why would an arch not opt in? What's the motivation
for ignoring the noinstr markings?

Should generic KASAN/KCSAN/anything else marked in noinstr also have markings
requring ARCH_WANTS_NO_INSTR? AFAICT they should, right?

Kind regards,
Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211005131015.3153458-1-dja%40axtens.net.
