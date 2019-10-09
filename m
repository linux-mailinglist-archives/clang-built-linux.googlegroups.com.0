Return-Path: <clang-built-linux+bncBAABBZFU63WAKGQEV4GKPQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC03D09DA
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 10:29:25 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id g21sf432737lfb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 01:29:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570609765; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8AH4I9SbdHVhjyQrs+Jta4mcBkxEb2uUu+QoLhRe5oGVRq1EXXZpZ2wekgR3YVAUW
         RaQMa2IqFngJMUpXaEOq5PH4p0x0975O/wtfVMVfTiGsZsgh5WT1XGyjbL3GXOu9E7Jx
         xYvvu79YjT0lU+XZk05rL0fNjRztmv+3YuAx2YW6w0cv07yklEs39HWl3zmoJGMQvtvl
         ZuL4Mr/ituliW9OqYrnendoK1QrigNao658q1Bl95nNdtD2pdSTeMi7kSDC0KnDQKEav
         0A5Bg7kbW3njURyf+mZoKpw+lISUvDOotW4oIs4vQrWqocoQWBVQQdpEeiuAu6szBXfO
         pCBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=T6TRD1B5RgNhbPZcpEJRhTgYQwwIftMdeOaCZC/84/s=;
        b=gb6ecSqvBrkpC6fU/SIz8yLy9hTHSmxliZIIFNIdzy8sLCUmWveHUj0TgQGwzW6pl5
         pJqb2QgKSUfLSQ2nL59GVuy1Rrql0OJnHvihpTDKgkxPrV5d17223FOQaNYK4j8nSVDZ
         LVKzubVPm3I+NuxcbNjeDbhmg5xeKQEZ/NmkZIYYlzXGKBsqWeqo1ZU1CFBMZTSOqpNw
         8IGz71FHR3tVLBnBb0TZbzk414QNXEGKkaRXhbFLg238FZodLbgiq36zmFpguXSa5qlk
         eN1xsOSFG8YgBVp9hDSWWgyWYnaYXpWMm7hXMvfJSs4KZ4AyZnMcvnGqCUu9vMybdOvJ
         nuew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T6TRD1B5RgNhbPZcpEJRhTgYQwwIftMdeOaCZC/84/s=;
        b=QeMR3oKVftOxc32UKDvlpnhIaLoulS5WA27J6P1vIovXbmBN5f8NyhBtSWYmMmq7GV
         k7FDSGe8O7PdvkBHehhrT/6k11EZLv29Y4l5B67hmWXiC/nD2GzEK85HtMfRJn4qYwR3
         hm4POJfCPSgkH4f4PCMrJwgOtqLn7HFlMBYR1Gs/yApNyrkofAibnH/oj0TnfsYatQHH
         cMjstDYsK1liy1nulAbZ2yaVrdemD/vvM6edr7UzJx/P+zY0vn8/8IfBck4ga3akHZaF
         6ybh2wlK+BmAdeKOxzbXh/WyIKNYwjXsdus5gbbofys6IcfqeG2skfhsPwB7cGjx8+IE
         0STg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T6TRD1B5RgNhbPZcpEJRhTgYQwwIftMdeOaCZC/84/s=;
        b=GAv0o6J9pV39DeDZoCLFoiQALI8VDcBb/xbFWzd1audN9U5ycVWJMSSjO9UrvD8ALR
         uU816umwTBRJ61J7LF83DTZ5N1TlX1PhqR3wdN5qLOovVktEafAhGeD1D3AIFfGpAiCP
         eUX+axvr60qUACa3HrfqS1DBfkcFHFUXqoA8mEBH+7ButeoPsDApVdVODUWTTm23A5z3
         WBlxFL9tswFQ0gi0m2hNDEMxACq+aB0QCPtUAikInTzBI9s1vVVMyYJeGhu4E3hOIK10
         2rGQ3lfg+SD/HPqS23DY6nbzBkQ5isgB+BpTUaeBl2Jr8SQRJbPuVQFRK71yvaM5lzjg
         dVbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHYXea3KfbOqP3Nu8ur3IMtoBt87jzcm0/3/SRTsevArQr8Jq5
	9mFAhjFAEpwfeqQ1dnQDJk0=
X-Google-Smtp-Source: APXvYqwk7jhSepw3BoMW1VHoTsRUpu4eICcwmnXIqVNWdwR/KkIjg6CPA9I1xai2/ujebANfa9tGlQ==
X-Received: by 2002:a2e:2942:: with SMTP id u63mr1590838lje.94.1570609764821;
        Wed, 09 Oct 2019 01:29:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9786:: with SMTP id y6ls201844lji.3.gmail; Wed, 09 Oct
 2019 01:29:23 -0700 (PDT)
X-Received: by 2002:a2e:9b8a:: with SMTP id z10mr1517355lji.66.1570609763872;
        Wed, 09 Oct 2019 01:29:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570609763; cv=none;
        d=google.com; s=arc-20160816;
        b=yr8aPUzdMJugYUq1UpGkT7yZpP4oTTFfy6d+7PM//mWA5Hm62Cby0N3/Dc8xLQXFpl
         HFAx1YSmzLtZ7rV30Zrx43Asm44kt5AVYioTe9OjvVhA8XU9tTgVQjyxFsiVKUN6Wofd
         2J96NIvq/wSk4KaXEh6wf3lyu2qo6WAxGKj4jU/rdYlEpvuujxfOCTIwzlZoQp72T5kC
         pp1Lxb914AEEcZx9qRsv8lzq3cUPDrzYyEJ0JtLNkSZkSiVtTIrCz+nzsFaJjapbEQgW
         anRp9tDlH0mcllrBWBRo+cuXB0JpXJsEnOz0l+sOpqJJ6qkqZEDNk2Vrh4Uz3nDwNniH
         NRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=sL+CL1UF4VIXMO9c+VkI14iqpUEx6chUUuBrPY+VfHU=;
        b=yo0Gk3cTWZyxTaIHez+HtwNpc3jTj2MfPC/OCBBOVeJ/7Rk26G2idSOCzrEk4iqiFt
         SlRq4mjKLPWZSvG0RliU8IZbPAniwDNZTuxzODSed+sScJx88FmAnRq/AL/scM44gJ5E
         FzE2gaICvynsQm8KiAaUshH3A5WJYoE4R/FPa84WVU0AKtM990cvbhIx6gHAZV/ZkyKi
         mMUU83zG20fXOlhUIZeGMyPYNxLzM79t8bcuzkLAtDvs+6LrR/orQRBRRgwqRMT7aZwo
         XU8AirrU15V+NS+pEHQXVq8BruV27Cx5vf2C/GZ9bCYRxySe75Tosy0EtwvuoRMQ2Brq
         321g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y6si34693lji.0.2019.10.09.01.29.23
        for <clang-built-linux@googlegroups.com>;
        Wed, 09 Oct 2019 01:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB02B337;
	Wed,  9 Oct 2019 01:29:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EACF3F68E;
	Wed,  9 Oct 2019 01:29:22 -0700 (PDT)
Date: Wed, 9 Oct 2019 09:29:20 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191009082920.GM42880@e119886-lin.cambridge.arm.com>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
 <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
 <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
 <20191009000159.GA531859@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191009000159.GA531859@archlinux-threadripper>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-Original-Sender: andrew.murray@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andrew.murray@arm.com
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

On Tue, Oct 08, 2019 at 05:01:59PM -0700, Nathan Chancellor wrote:
> On Tue, Oct 08, 2019 at 04:59:25PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> > On Tue, Oct 8, 2019 at 4:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > > This looks good to me. I can build and boot in a model with both Clang
> > > (9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.
> > 
> > Great, thank you for testing this!
> > 
> > > Though when I build with AS=clang, e.g.
> > >
> > > make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image
> > 
> > Note that this patch only fixes issues with inline assembly, which
> > should at some point allow us to drop -no-integrated-as from clang
> > builds. I believe there are still other fixes needed before AS=clang
> > works.
> > 
> > > I get errors like this:
> > >
> > >   CC      init/main.o
> > > In file included from init/main.c:17:
> > > In file included from ./include/linux/module.h:9:
> > > In file included from ./include/linux/list.h:9:
> > > In file included from ./include/linux/kernel.h:12:
> > > In file included from ./include/linux/bitops.h:26:
> > > In file included from ./arch/arm64/include/asm/bitops.h:26:
> > > In file included from ./include/asm-generic/bitops/atomic.h:5:
> > > In file included from ./include/linux/atomic.h:7:
> > > In file included from ./arch/arm64/include/asm/atomic.h:16:
> > > In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
> > > In file included from ./arch/arm64/include/asm/lse.h:13:
> > > In file included from ./include/linux/jump_label.h:117:
> > > ./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
> > >                  "      .align          3                       \n\t"
> > >                                                                   ^
> > > <inline asm>:4:21: note: instantiated into assembly here
> > >                 .long           1b - ., "" - .
> > >                                            ^
> > >
> > > I'm assuming that I'm doing something wrong?
> > 
> > No, this particular issue will be fixed in clang 10:
> > https://github.com/ClangBuiltLinux/linux/issues/500
> > 
> > Sami
> 
> I believe that it should be fixed with AOSP's Clang 9.0.8 or upstream
> Clang 9.0.0.

OK, understood. You can add:

Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>

> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009082920.GM42880%40e119886-lin.cambridge.arm.com.
