Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBAUFZ73QKGQEY7KFQQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 204FD207E44
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:15:47 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id u59sf2853177edc.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:15:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593033346; cv=pass;
        d=google.com; s=arc-20160816;
        b=zrX3EXASdhn/sudnd6TMIwar/iRSkblbM53JD8C6YVbfooZe/vKMwFZ4gEiIRTkCg0
         rEp//XQteZRjPM1UdVLwbwLxnll0abJlokZV0+Tkw/lS4+X4pn6zNt+9OgHCDoYoz3tp
         9n293IblXszFwv4er9vVmyvB2XuyNStmFoJtEMv7V+CWyZsbW9tVZgDTCpVPup2SJeh+
         xIYG6Jq1yPUWPV8XtAWNsFFJyrIm+US1Wecijw5Q2Nd2y7/LI0m3oteWAMJf2+WZFqXf
         eKzp9KTn0P0+aNNi13Y4pdhaUYhFFTG9oZFzZmUhpy4/Qy8jOXRbKlwrO/O+/QbVQXL4
         2KbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=l4M7KN6gBOidMqMXV4swOT5tEyYRk3pss49yXFQ3WTg=;
        b=hSjgKBDiprcQMNrf//E8yvxWsJ10ggYbNhzISzs2li3tUFg4IKY9zePL1gBvD+ngb/
         6Nm/P3XeYahG/6Ept92Hw1VEVKWkh53TyXebVzR69ALitBqqNiKEbbVyO6H/oZ8fUDVy
         NwnRoUGuifnPXsFZsHJJwn6MXfhvMOs7/Pf2ICbeMDxcUw8JmbPqgejU5MNxOW2m+lOa
         HFUzdyh0RzguxVjEUak1D3FHSImy5UyC3Ou3bUvkjJ4JM3dnEGt+1MfWgo25pFdYhktW
         vPreC8Ne3eVzsNeNJbjwyowEiM8mumIFxHM+00C+t4YSOIVfxYUgUbWTL20q2ILitEEv
         +ULQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=lvI0AvNC;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l4M7KN6gBOidMqMXV4swOT5tEyYRk3pss49yXFQ3WTg=;
        b=EFFuAYyItBLUw43wAcc9KwQ07RQYQN1n+5p3qSDiPyIe9sAowXt5BcWhbGBxWriQd/
         Zv42OkhdLQWN4OQgKZUGNhaAkn677C8n20JJDflaUuLOwcdJ0/NSnDHe1D9Fvd9ZlBkL
         VytAIZ3q26Ivt5uCKMPmJp4pNw21uFinQlugatG+Z8jn4TzOTfNHa4IyMeWhMHQafyen
         1JG3cguGkMe1XnKEIBPTk3PBGTg4zpA3LHv4LOSwziradR/+VTrmD2qU19aWAtD6eM++
         8HOenT1mdW1sdlPHW/EEm0710ABDabuEsTqhuHwvC8+2NO4UnWjouUv9IHztoUJ3s7OQ
         TPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l4M7KN6gBOidMqMXV4swOT5tEyYRk3pss49yXFQ3WTg=;
        b=rvyLNE/c3jHjbjmRPnmNE0VNX4VeREttMjx5Se+Mo1DQPgmdtZW7j7Weae2dBnJ7Hs
         xnFq2WB9s2K51jAgs7GQ44bNIUKOu6lMlpt3BGTlL5cJbV4OV3EmwsnMBQ2Nw0N8TtU9
         aeaX8+iFMzAAXH3mvjuntlTB0wgeSEN4x3OZvoavu+LCyPR8i/K0n+zjQjpJXSMesW2O
         0lLQxi2eMbpGSGB4zJ4H0AAKtpJ3NMbJ3CXPq/mxa5iqgMW65jMlYZWSQMN85as1Jgsx
         dXJtqQPEtzPUQ8f7X25SlTkR5YzfVXVenOKTZqX/yI71q4kEr07qxHf3iee07EvkhvJk
         xPLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y+M8nMnJLASfgRswyW0qeLTVsl1cV5ZMZPs3FUhcSxN3gZoxC
	gifeMg2gTuKOaX0DVIc3HgU=
X-Google-Smtp-Source: ABdhPJwz8WtZhV2R+SZL9cmSzRPmE3SOxmKsvCiD1BCA3Mw6YN77xcmMf8dG2mwldq7wuAbJIsKkTA==
X-Received: by 2002:a50:cd53:: with SMTP id d19mr9925247edj.300.1593033346877;
        Wed, 24 Jun 2020 14:15:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ed8e:: with SMTP id h14ls3441689edr.2.gmail; Wed, 24 Jun
 2020 14:15:46 -0700 (PDT)
X-Received: by 2002:a05:6402:3ca:: with SMTP id t10mr29656202edw.128.1593033346350;
        Wed, 24 Jun 2020 14:15:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593033346; cv=none;
        d=google.com; s=arc-20160816;
        b=FCJWaIe5IyrbROzfcw+T+PEkJMGkRJG4G9DjhOOzWLMAU+B40MtZfyuLAU+x+wTsdM
         fXhxLc6qre8IhsBgNofP9ZYG9OgSYPcsV8ECS8aaxcdv/4/Wmgb11h+kEOiKG1fnweny
         zfMPnBXx0yA7DANKSOmbH3eoPzqp2kU2p+11bmZy5MOHwwz+DI21sEyCPoL2b7vJl9st
         BtrbETimEyBRTwpkiBQKeTJzZSRjRRsI3+Zps4/wIw0mR2QU4NkSvrR/lNTh6BN0eepI
         WGgh/ldtHan/HIKtEHm8IpKthvNUE0TZflfM+k8xUhycmvJVb2czgrVL6anjpCAOQIpM
         /qbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CYAOBdXXwk5atGG1OkexemEOJEg2uOXvmf8MxtMHkzA=;
        b=fIWFrfmqxsoV66vrhjFCI/nKIAFWD6v+bm/NEf0YCf+3lwF3xonMqk8AiSg/cyqVQd
         obGNlhD5MRVQx/X5dB8lsYadk1V7A2/pgQ27icfFUdwTV0sZXd7AyuqWaZAluqh1E0uX
         UJy4XAFrHiudDJD0LovEQbOLzyEYSxedskBB9/5htomr8Zfhq7yuhTzCGbo6qlk0OYem
         ojUYM355Ek4Xb8qz3KTUXSIhSOtDsw0iTFidcrpK/TRT1afh5FW9Ac9QhKYGt8dDtBcE
         lJ64jZEx/wjBRZqE19pafKhco5Y2VrRf8VvT7gktlt11sFad1Fyj9aZoZJhCboIMyM56
         0ZTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=lvI0AvNC;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v2si1018371edw.4.2020.06.24.14.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:15:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joCkB-0004Ne-TF; Wed, 24 Jun 2020 21:15:44 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1283B304B6D;
	Wed, 24 Jun 2020 23:15:41 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 05648203CDC3F; Wed, 24 Jun 2020 23:15:41 +0200 (CEST)
Date: Wed, 24 Jun 2020 23:15:40 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200624211540.GS4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=lvI0AvNC;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 24, 2020 at 01:31:38PM -0700, Sami Tolvanen wrote:
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).
> 
> In addition to performance, the primary motivation for LTO is to allow
> Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> Pixel devices have shipped with LTO+CFI kernels since 2018.
> 
> Most of the patches are build system changes for handling LLVM bitcode,
> which Clang produces with LTO instead of ELF object files, postponing
> ELF processing until a later stage, and ensuring initcall ordering.
> 
> Note that first objtool patch in the series is already in linux-next,
> but as it's needed with LTO, I'm including it also here to make testing
> easier.

I'm very sad that yet again, memory ordering isn't addressed. LTO vastly
increases the range of the optimizer to wreck things.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624211540.GS4817%40hirez.programming.kicks-ass.net.
