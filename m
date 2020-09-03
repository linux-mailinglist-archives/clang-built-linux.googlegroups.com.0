Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUOKYX5AKGQETVGRRRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E7125CCC1
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:51:14 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id w82sf3303424ila.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:51:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599169873; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgX10YGD/Uj6MS99fh8RANL1KbVUSvb35CX8J/I+JdUY1foJ40auAxlk7SCuAQjBM0
         ntcYEkJFtz4xLL6G5us29aNaAsc2BbDNRdHx4faOfkwCjT5Y34bJ6eO1jPjaQ+EtDhVl
         nDwBh+jpXIVx3ET7PEe4444YcTPSAUKwNkrn715hMCduXCUBVnyA/fY5N2nug/juB6jn
         E5tMdNUtbKseJXJTriVgdFwqiYUvK7DVwoxAtBjvcWeJMxXP5JLyiLdSZwQ1RDkoTxu8
         zWoxJjQc6NHAKJC9NaXlL40dMGMAyHnt5O4Bi7hm5oh/PRNcb9nEbMNa6iueJmBAunkh
         BzkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VK2+1NRhejlXxSceL4Bg8oDEc2r7/BSKWZ+W7J9BOLU=;
        b=IE0TL2Gb59S9C/p3x5zo/ptnn74txNCfY0rK0SmY+b/AKQ0nKw0FqAud1DYe54KPDg
         QC9DEcIZQwp3T8M6Y+45sQfU4eY5nT3txBZ9QjHQjgnkVsP7u3tjPc4qo0yg3NNAOLa7
         8qs8Y/Iv4aiWUauQC0SYFCTdKydiENpJ1jECmylEtnGUS0VX1i97EiJwh7LK8btx7nIG
         AqkjWXJypqxG97CmmDeibpq77d55IpsYF5Yk0vPxyo7G9VH2l/gy1RGk6BGerGsM257/
         9s79AJtaWmH4MPfxJacvMWmrDLse+SBKqzGcdSZ/CQBOAmwSrCYkeK/N12QQIiPB1SSg
         M3jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZyZZKeIp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VK2+1NRhejlXxSceL4Bg8oDEc2r7/BSKWZ+W7J9BOLU=;
        b=DxQqnowpe3IxxfqCoCKoaN4VmVtGPWBg0j2LyWTh0WE1gYHf0XyBjvQ8QENygmJjS6
         A/Qff++9GjRbn7aJpNnrTHD3ffji7aPkGEozKnud+cifDz9gf/k96UUUQJsgmQ3317mE
         8TsfjqJ1SK7hZvM+4t/WhAIWUDv7WCZ1mcQHji1rAiSV9vEuuOHJG08WwybuT8Bu9WlW
         N2ECWp8CuQF7G/oqeVgRiLi7J5qubCAVwYEUHkQ6DXBKzULz+4idwWiOD1pcB9diqQUm
         2qr1k2yPOw4Ni0n7N9bMzr8aUUthjdeOkxpPNeBvIKqdopjJV1cfjb2zZVu3foCYnJPJ
         g2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VK2+1NRhejlXxSceL4Bg8oDEc2r7/BSKWZ+W7J9BOLU=;
        b=VEtNWsCxX2zWbDPcJKckmu/ADtxLMHFF5zETfr4FqgYR54g7Y9vrGxLl8MKfvc1mZK
         k+mz+3hFZfuniLPkBPEAPtSpG38eBUjUy1LEiP45enwzXJQ9ZjiOLZxEo8y5V8w9z4Ff
         4LpXeDO835i2tLRF1FSiEWQmKr42HLx7jm2o2OsYeIDkyIr9qgPhylT0+ZFl66n2ZjiQ
         jwsCVEmiwtulklAIiPs55ieW6pD8ZNa5TA0II9mWbeggHk0wXaiNnIfgoDy6fi4THjdH
         TVrQTlpTWaitTmVWvHYpEGuqtNhnay+DFjYYpX7mLxquG/XGn2FsAAGtaI4ScgM/AQ+2
         3YwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ief9IywtrDsuFj85zdUHZUq1wLI+q0gwN5FayJHI01F+6UkdL
	8fYZrdhUnGSOtF4qXW9SFlw=
X-Google-Smtp-Source: ABdhPJwgzyFOhFWgzftHc1TTAiSP7bWQBHISvGKWcwVs3qMdTbSnkbHpwvJADKECPRWSDfwGPmhzXw==
X-Received: by 2002:a92:589a:: with SMTP id z26mr5318031ilf.267.1599169873499;
        Thu, 03 Sep 2020 14:51:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f702:: with SMTP id k2ls1277889iog.0.gmail; Thu, 03 Sep
 2020 14:51:13 -0700 (PDT)
X-Received: by 2002:a05:6602:18a:: with SMTP id m10mr4876548ioo.174.1599169873121;
        Thu, 03 Sep 2020 14:51:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599169873; cv=none;
        d=google.com; s=arc-20160816;
        b=G2fJ+vhRhw5GyP8gNqpW3tT5KvZldQ2OLZP8EF5mDeMgKw9X2/KfvwTL+j65BJQakd
         m4vZDeOREDdmQ0NZx8s6iRNj3ZIA4SgdgTSHYxE664OKqnW0V1V4bpysasf++cK9akfy
         ScXXq2M+WK6Ze+0hfizSbTudqCQUGvlgnTChAyBdODDBa129lytD68H6xoiEIGBq93aB
         pV/8PGVFzMziHTimLlf22Quro1SKgUX/iPN437d/5iqxuaHDQ4u7+i1Rn/bQNmLuoqrd
         NYX0X4QwZAfBii4Xl/k5MbmspbKE6+JSF1hEKbspg5upiI4QOAO7r4+VDox219Be6Bvh
         +UAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qXpu71ctdlh3mEQbznjWlLLlQUw5P2bBw2F3vq4Wzjo=;
        b=F/4sWbkXFL3eTLdWDWtjO3KGKjADqRgAUGOHvS3OZU5iU9Qf31P3pgDDIE50af+Ioy
         BkzEhEweRn1hLmmcyQwCEjXomRKQJgAxJqLW+HdI609utotaWcds5/Kn+ZbADRiKE5BA
         MA3izvQkMThLKkcqAsv1Dsu14vVnVV3JRpvGjXGSSuOckE6mZoLK9I8HhorPkXdLemeW
         fFKayv4L1oqNS0Hxv//asK4tZUqL1RYfZKChc7VKbQ1sdt6Iz7Kt0oenGSxJKuPjp//G
         EGtei3nflkpxHm/MQE9wfzDdAqDWSdV2uPgBhfcupPT9J9lTTLVwboe76SLuySZIkvx0
         /+XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZyZZKeIp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id e82si301585ill.2.2020.09.03.14.51.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:51:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id k15so2203516pji.3
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:51:13 -0700 (PDT)
X-Received: by 2002:a17:90a:950a:: with SMTP id t10mr5013648pjo.107.1599169872611;
        Thu, 03 Sep 2020 14:51:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h15sm3019108pfo.23.2020.09.03.14.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:51:11 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:51:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 05/28] objtool: Add a pass for generating __mcount_loc
Message-ID: <202009031450.31C71DB@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-6-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZyZZKeIp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 03, 2020 at 01:30:30PM -0700, Sami Tolvanen wrote:
> From: Peter Zijlstra <peterz@infradead.org>
> 
> Add the --mcount option for generating __mcount_loc sections
> needed for dynamic ftrace. Using this pass requires the kernel to
> be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
> in Makefile.
> 
> Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
> Signed-off-by: Peter Zijlstra <peterz@infradead.org>

Hmm, I'm not sure why this hasn't gotten picked up yet. Is this expected
to go through -tip or something else?

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031450.31C71DB%40keescook.
