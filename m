Return-Path: <clang-built-linux+bncBC2ORX645YPRBAUJTX2QKGQECX3M3RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id C863C1BAFAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 22:45:55 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id b8sf338759pjp.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 13:45:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588020354; cv=pass;
        d=google.com; s=arc-20160816;
        b=P8faLRhtaDL81F9jFPjJgOJKRevr+QpqBpwJ8PUYj64ehYQ+d4U3D42sW+3OpdamOp
         2uXrGTQsEDeL15ceH6PHHD0fRpGrPc5LjXMx6XubR4CxD8cLQbZk1I7fCwFWK5SttYKr
         ux0qybDcB2Ri2rICqyp1lIK7Y0fKvQ1FhYZPTYZO7UDCUpYyjeFTpkwkEUbE6oS7k9bu
         q7kiixqnBJ5bTKlUd65EWJQxEyUrEluSUtIvBh052PF0N+jbgr2YgmLi+hly+NSIFiWp
         deT9KiGC3olmJpSf38rKLSPnPmwvHcBrwv1wMkPyWjPIVJgMfjX+tgbQjE8PoWJtPcCx
         akyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Axd/dSeW3Ec60rcdgntylomHkmy8Zntrtmd97aQXe8w=;
        b=G3Rh2Sy/sJdSCC4Lqvfopv89UddPmiwhUxpIuHU6EjTI9i9K2or1VInLs0HoyxOH0g
         i+KsQuxFryKrUWCWSsTeJSfU7z9RbhLp9qPFKYbohB+hvZaD8p1G+Bb6BH66ppzB8VKU
         u3tfiqPtw0dM7sMzfUTL1vlDwpWRxQx+PdWTMGeG4Mq1xVcu8f9MzimTzG5RG4jSlV2O
         dIk2jfWCatuMIOG96nG90O/zBH04Iqv6/mMYruVxxJYHg/Uw7afpsuSlB8Hobx2ey8gc
         w+5d3/6f//cI/uaNX/qkr4xxbjUEmmtV3NCUWG/icJUSOsvngFzVecSSF2qBWLkr4uxF
         BHHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vr00ZiG5;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Axd/dSeW3Ec60rcdgntylomHkmy8Zntrtmd97aQXe8w=;
        b=nKiddZhK32S6PhT0UQuEp5A2/L2A/PA1KTROicnJewiOgIX5Dvst5osPAq+MqhCdB3
         KxMwN2or4c60KpwucUUHRLUC+eb8QijEm6SUvVzj1yI4iEWQSwj/yRZVFlCNZMur7Ap2
         dYywi3YoAWVQ1swHzKcIPv8djpetruCi6fHwXI+C65c9BBdId2tJ4KYqWrXIN+vnhn7c
         62oEVuYkFisx5Bem8a0N6dWcGooJZHJlMB6WsCQA9OROp7vQ/EfsMvbTMGdWN5H17zfc
         EvvjxkUaecnBSvpFgz4qjmccVD4vduYUsYg5jBgmVohOfw1ZC1CDEYh73JaKWls4fsK3
         NIlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Axd/dSeW3Ec60rcdgntylomHkmy8Zntrtmd97aQXe8w=;
        b=mrF0EI9ZW7iK42X+6u5qibfdjHXhMW7wOjcahGQm4RXWpVzqrQm9+z9IRl1LdX1LRj
         roiCdFNGUiSryb82waN+OC80CPXpET2Lw87U/E2pWynbjWrlVvdPn1KJtB0gv8RCHA0Y
         8zXcGOsDnZj8qsyAlPPCnToxUm5yPuMr3v2hqrJSeQ5wqS916S9Wz50sfKPmkOpC0Uch
         VqgEraCnF4S0Q9nNVTONwHEJbLbUj53ID1zp826CpxhWlTGzANAjJX3pWoP6+wcS0rUx
         o6vN2vx415Rdvv9nM1mR5bp/V6+LMj3Wxns3LTDD0Gxh4TYDB9VWFF1dvZZyaV/8K1Xp
         Awuw==
X-Gm-Message-State: AGi0PuYdxriOcmTg+Jb4FIXqMC1rtXAZBskAbTnMf4j3J9hNidp7IT29
	INEFxFMyBX4Dlqas5zpcWWA=
X-Google-Smtp-Source: APiQypKAjFGPrKMosqEpzx50PoXFegreIVb5EsdxialYR+uBnlOGqtY21QRZ7IntbK9NijPd52oeEg==
X-Received: by 2002:a17:90a:20ea:: with SMTP id f97mr594755pjg.157.1588020354520;
        Mon, 27 Apr 2020 13:45:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac91:: with SMTP id h17ls4360464plr.3.gmail; Mon, 27
 Apr 2020 13:45:54 -0700 (PDT)
X-Received: by 2002:a17:90a:690b:: with SMTP id r11mr605801pjj.119.1588020354051;
        Mon, 27 Apr 2020 13:45:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588020354; cv=none;
        d=google.com; s=arc-20160816;
        b=FUpkY1qZgWwMsRLJxk8u1MZf+smFrn6aM8ODGsJiZL8jr4/ixLRTQEEBl2K/UMQ2VY
         bjyosouC3A+D0vdP7W9qxBpjtx618/Ewj4T5kskWNVE3YQw+1QuikhR7nMhaelb4mxrv
         Spo0eNdkN5vxZZpl0xw96g8dWuS4AhtqhYWMNQWAcHXriGtxS9exg//XQvxK5DpM8jLR
         RjZJYwhZVoy8RMIrOfyzrMjTEAA8C5fUqIcoH7wb/twtB7VEaaetVfTWyXa7OsabDFVo
         7ON4rOxVEdqdrf1M1nSQQtHIG0vCeG18ObCSdMQwUh14aUywaR/EaEiZcqPuOVZC2Oma
         3IDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Bcag0IOMjkeMKf6Qdaig8RmUgJulOZ6Dwcg/kc7mWuw=;
        b=OnZSJwdbVLrAimt33yeqqf8tWA+l+VOT70Js4swL6zYlBYmvdyq6YcjJtUCytQOgnj
         BMAXVFhjR+aHJT9vUmQGlgqub9jU0Ns3aa8FiPEe3u+CbUiYx7fQ+2JZq/ZdRcI7I5WK
         QU3wEJte7i6117SNVgJELhBtcEeE90Rm7XC6s7KKTO6N7h9frtaBj9Cwd2PkXN36Faf2
         6PsMpjOl3iSOrOjbbEJWczpOBPdnBzq4sOYAOP0OgcFjt2edVOJAofuhfPdSek4t+pC4
         grVwYrRby4tEgl860YiXLEBjhGsPZFA+s+BaaO21ikL9y4X+k5DMgDuHfy0Obk53dawL
         eKtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vr00ZiG5;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 63si876838plf.2.2020.04.27.13.45.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 13:45:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id d184so9571934pfd.4
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 13:45:54 -0700 (PDT)
X-Received: by 2002:aa7:9218:: with SMTP id 24mr25789630pfo.312.1588020353394;
        Mon, 27 Apr 2020 13:45:53 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id 1sm13672326pff.180.2020.04.27.13.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2020 13:45:52 -0700 (PDT)
Date: Mon, 27 Apr 2020 13:45:46 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200427204546.GA80713@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200424112113.GC21141@willie-the-truck>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vr00ZiG5;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
> allocating blindly out of the kmem_cache? It means we don't have a redzone
> or a guard page, so if you can trigger something like a recursion bug then
> could you scribble past the SCS before the main stack overflows? Would this
> clobber somebody else's SCS?

I agree that allocating from a kmem_cache isn't ideal for safety. It's a
compromise to reduce memory overhead.

> The vmap version that I asked Sami to drop
> is at least better in this regard, although the guard page is at the wrong
> end of the stack and we just hope that the allocation below us didn't pass
> VM_NO_GUARD. Looks like the same story for vmap stack :/

SCS grows up and the guard page is after the allocation, so how is it at
the wrong end? Am I missing something here?

> If we split the pointer in two (base, offset) then we could leave the
> base live in the thread_info, not require alignment of the stacks (which
> may allow for unconditional redzoning?) and then just update the offset
> value on context switch, which could be trivially checked as part of the
> existing stack overflow checking on kernel entry.

I sent out v13 with split pointers, but I'm not sure it's convenient to
add an overflow check to kernel_ventry where the VMAP_STACK check is
done. I suppose I could add a check to kernel_entry after we load x18
from tsk. Thoughts?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427204546.GA80713%40google.com.
