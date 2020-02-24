Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4M3ZXZAKGQER7RJTTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id A2764169CEB
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 05:15:46 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id x8sf9239759qtq.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 20:15:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582517745; cv=pass;
        d=google.com; s=arc-20160816;
        b=mcfgpLyxnu0DbowhUzOH/KCAJeVt6YCEwmPCYgx78+iAQaADdfo9ovVIaCAlEKZgtz
         gApw3z16+k0MH9O88BOzsttIVgqutA67Zo9ZbDSTmMEa90qwxTtLMpD2OVwrdYoWjraa
         H1XiNeLzxP4HRq2gMQ8jYkR3bUEUNHOo0yBPdNjiTOMZBc68ojzMPSHVMIe5nK33fGCY
         V7wSopykOws/gEVQLoEqAY6W7E+SLT1w4OiQP0y7nvKDSQycScRyyBL8jx4ka71NOjRr
         X7LPVJIFqOzDuVtkq8p5Ajv4OheZamt9jxw4gsMzuB7jKue9OyN/rkx3HruDRuJGLioB
         VKOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=yyvL57ApzGG+YPr+ZokoLvaGRTBMjesia43s8j1l0uc=;
        b=N4lRpTbSWnP+/XxFv1wQqDmfyXBdJrtHI44Y8S3qJoxRxL508PmLjOBIZZVPjwIdeb
         RTxQ93rr9/+io6vYKr223kgG7IdFbFHgIiJ00Ri++43IrB5zrS2MJss0OLPd360dnDV0
         koW8LC+OBFdSU1ywmbzRrUwHLMSKVgEPWLvGkOIzIITs7UggwOQDlJn308izOL8Ju1mg
         mwilWtTi+Bctwplt3med95h1/cMs7o/s3oeLcDqHzdM+vwm6o96wSC9kTSVrFVg5xEbL
         ICdILvkpIpqGRpOMyjZxP1J/GTRL7WIHWFCOyLz94lljpCfPs3olAZAPYpVScU8iwwNy
         DyJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ubxAfdRS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yyvL57ApzGG+YPr+ZokoLvaGRTBMjesia43s8j1l0uc=;
        b=hVGTmxL485YUqgp807h49fWplBTEGNB4dkO/DSSr3UHQHcmcfoDNIoVjSJoh5ikZ2E
         CMbs1HNQyd/QyFTV2galJWJXPXKz9At4k4hMfFKitCYSOxTTnRNCpTUzQtyQCo/J3vMt
         pYSlb23LjcWwcG51SpbFfGFSQd1wt0bE+RWI0DcuzMR0dJSdA2Gz65VIgKvA78J3zB55
         mziS9/o+p0E3p1JsoGVpkCwRqEB8vdAcTwOxK2Pc7HHs1jf501R5HlJ9nKxVvqXCB1Qk
         /PM+vaUnUzUJXTngX4HfxqIAFP3zf8YWB0rUQYZhkZxfMmpGY2ps7z0GleUlr9yCS9oH
         XaVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yyvL57ApzGG+YPr+ZokoLvaGRTBMjesia43s8j1l0uc=;
        b=t/kYoPuBOnfqR8ngiO5ZZ1Ki0NtW+VwyqgFIUzm9Gh3gQ3qcjYOHNmUmAHfNHTQWV0
         JalURzMDkKNDpwEBdndZGeuLG6I0ZukqNeoDJzWfRpvEWSDiR0ci/QMFOiSgbGi1kVd/
         ywi8exr90gvK49LZforT/wqrMdq+gCovMCJPc9z6Bmj+hHKaFlSKKn2IPti/n/mA14rH
         cz+FjoSCTphq/dS6smzzKxNsMC58nKbz3lD9S9x80i+1ZoVQAO319+8GzbZC/6ZlZNMJ
         aU88WNQlY7dH6Rzjln4Rf3XwObT2yHya3CmI1euZiJRrcyJ8p+clMaPZVxwayG1PD2Hz
         M1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yyvL57ApzGG+YPr+ZokoLvaGRTBMjesia43s8j1l0uc=;
        b=V/ONLdww4Jq//2ioD2TD8BEm9rFVrjtUHdnQPBBYLshU9JlYeggi7YMM2AQlXde8p6
         rF+A7JlNAmUZ8sbEbTlnNmD6jY8/+dITvCcYQ12XCxZfWiOM5cuJUvKomppUShwQxVIy
         KPUxrzJiZIthSIkwSi0plKFXfvGDveAh1dRAC8/a5yp2anmccZDv0rsJAXUUQ4pRxxXB
         LlbJqJO62uMXhx1zKNPbu7P2q5Nt/prl1rtsBxPPVfNAjIQ23NjPP8J10U97H27PmWuo
         ctdvnHykUtAL/cnkmjXSE9UXantIE2lU749FFORutlPrHiVqBmtONu60WlH/vyu9pg1S
         4mdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWK6VUUJ+/XaWBfYwRyQ5btJ7m1thjJfIqYhFReHT9U/ng67KvH
	KK9hVBGzMF2us33EKtkAUpQ=
X-Google-Smtp-Source: APXvYqydGNP3Q28/gd2xmpyI0HgufphjpCcWjMS7wlnIvOLRtzbloEQk0DqNasaFHjFGFxnhrrwzAg==
X-Received: by 2002:aed:3e53:: with SMTP id m19mr45969339qtf.387.1582517745493;
        Sun, 23 Feb 2020 20:15:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ba4:: with SMTP id e33ls3260064qtd.2.gmail; Sun, 23 Feb
 2020 20:15:45 -0800 (PST)
X-Received: by 2002:ac8:163c:: with SMTP id p57mr46077569qtj.106.1582517745102;
        Sun, 23 Feb 2020 20:15:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582517745; cv=none;
        d=google.com; s=arc-20160816;
        b=tF3l66yyP0sZvFMRMsAZc1COQk8C7ud+7pX96v0C+tYlBQ1LgU5y5OcS+g6SXebE6L
         dOXvm3zigqyI3kpqPU7JUjiThbZxxr2Kh2dx1jrKGs1OdJCn7WupiGfl3L4rV5WmUlUR
         q/T9XmQMMAeX3T8qbYjXyPyJkeCvRhgA9HzXsVHc9zE3e2SEs2QSPRTwsQMj+BDY3DHB
         xqIjHYLXCNS+fn6F8moEx1ZZSdCCK4evlOFf7DeGssWme2Ej3PNXtVPZpRkkYalzPmzo
         lHaVnlFfWFhKqpqEHc/wN8BQBKtxzEIv+JMksDrPY+yXWdEyyOy942MuFw+DdsfF5D7l
         K19A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FtOOndOWZSDXybYasUpcnffIRI9DWgK6w/MiME7iIyA=;
        b=PPcdg4aVBv1sEy1dMBS92PaLSAkSpRZ0mTXSc/vyFFByLR9Dv//SU/qnMxsAU282Wc
         n9PZwl/ZHLz74/yij4Tb9TUO3Zj4gqxdeAvj8IFu7VQE/QgV2rL0uyhvrDttruSaeYXS
         hjuh+la+RCQJeSPFLWzcOIu9zmVjE9yy0dy6jvrhoJSUR/VSO5l0IWGNg3jy8CxZH3F1
         f9MW+RCGmY9pCyqR+2g1AZiGW+rfGFEY5VMhaqrQ9i5euaQdCdnHpMsZY1lMjtoasZ8u
         9GkhJuhwW8+NmjSYKihRyWJbPGstsC9eqXduH1DEtzCJqqgyhThNkfCOhQ4zCt+/PRJh
         xkGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ubxAfdRS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d23si497693qkj.3.2020.02.23.20.15.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 20:15:45 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id d62so7713167oia.11
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 20:15:45 -0800 (PST)
X-Received: by 2002:aca:5f87:: with SMTP id t129mr11397800oib.36.1582517744531;
        Sun, 23 Feb 2020 20:15:44 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j13sm3701944oii.14.2020.02.23.20.15.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 23 Feb 2020 20:15:43 -0800 (PST)
Date: Sun, 23 Feb 2020 21:15:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 0/2] Stop generating .eh_frame sections
Message-ID: <20200224041542.GA55909@ubuntu-m2-xlarge-x86>
References: <20200222235709.GA3786197@rani.riverdale.lan>
 <20200223193715.83729-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200223193715.83729-1-nivedita@alum.mit.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ubxAfdRS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Feb 23, 2020 at 02:37:13PM -0500, Arvind Sankar wrote:
> In three places in the x86 kernel we are currently generating .eh_frame
> sections only to discard them later via linker script. This is in the
> boot code (setup.elf), the realmode trampoline (realmode.elf) and the
> compressed kernel.
> 
> Implement Fangrui and Nick's suggestion [1] to fix KBUILD_CFLAGS by
> adding -fno-asynchronous-unwind-tables to avoid generating .eh_frame
> sections in the first place, rather than discarding it in the linker
> script.
> 
> Arvind Sankar (2):
>   arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
>   arch/x86: Drop unneeded linker script discard of .eh_frame
> 
>  arch/x86/boot/Makefile                | 1 +
>  arch/x86/boot/compressed/Makefile     | 1 +
>  arch/x86/boot/setup.ld                | 1 -
>  arch/x86/kernel/vmlinux.lds.S         | 3 ---
>  arch/x86/realmode/rm/Makefile         | 1 +
>  arch/x86/realmode/rm/realmode.lds.S   | 1 -
>  drivers/firmware/efi/libstub/Makefile | 3 ++-
>  7 files changed, 5 insertions(+), 6 deletions(-)
> 
> -- 
> 2.24.1
> 

With both of these patches applied on top of next-20200221 and a revert
of commit e11831d0ada3 ("x86/boot/compressed: Remove unnecessary
sections from bzImage"), I do not see any .eh_frame sections in the
following files:

$ readelf -S arch/x86/boot/setup.elf \
arch/x86/realmode/rm/realmode.elf \
arch/x86/boot/compressed/vmlinux \
vmlinux |& grep eh_frame

Additionally, I can see -fno-asynchronous-unwind-tables get added to
files that didn't previously have it.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224041542.GA55909%40ubuntu-m2-xlarge-x86.
