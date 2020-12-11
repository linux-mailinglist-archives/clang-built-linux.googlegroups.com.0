Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBFGGZ37AKGQEW3OUONY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1202D7B51
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 17:49:25 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id u11sf4980697lji.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 08:49:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607705365; cv=pass;
        d=google.com; s=arc-20160816;
        b=ooXt6ZViSzBD9YFS9zuvyWSSnkN4WoO6A74CHKf1j9N6Ivwk4dKA78U6eQIf3IZmrY
         rFtlQSjEyDarmccRLjJ/GF+tbWzcI4k0SIOGa1vbqtUfG4cTM8UJFYQKO5o+V2fQ15rH
         E/m42QzHQ+AokAFtTRK/bMdx7JiRSIwzLySZPGWz416jvFp5ST33PrWyxAM+2ZjCH7eQ
         FhgbLLZsPq3qxw8Qckw624EaE29/96zmQmgGhGbkdHPyomuyJIXEXclVD3Y/Fesc43iq
         yeJAn8q8PEb7Mx+fS8iwuv9WPIIunBoPaBlbqkFxFjzcjSAA7kZHX0nmaMYARnLFCanz
         fkmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZKpuQPhFSxEpGVIWqjl4Ui4uUM5zlRaZ7/7g09DRCxc=;
        b=zV0Ttss+DZJ/9rWFTDc/jYhzXzngxOpdBQapPAzThlbhR4yxsosTfTGmrtYW/F4T7u
         0LbS9TzXs66gQa9MWXZpV8O1BqK9pUieBadNTM7uI27HHiZsx3RLbxseZG3gTlkAE4UT
         Yd9aN9Ru4kCZPJl/XlRud37bzZzjkmUrjvGM0FOfsPxLF9Wmb4XYImH5BjUI/jAAKKYL
         k+3oX4MpS4Vq1BwJhsPKBzlMdJADmqxVenJiizk004+B8Poh0TsF7/PxJA15jr8roUNf
         38ATaTfMZarO3Imv3XgNhfma6tvM0ia6MIZ2zmPZvMizVmtrzbHg3DezMguHqhuftm8b
         Zqcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=QvKZKplA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZKpuQPhFSxEpGVIWqjl4Ui4uUM5zlRaZ7/7g09DRCxc=;
        b=HfTR1QL5+fKVqmc+aGs95wPZleFYdjCrzdZLLRaDAb5V/3Vv1S5PVeNUQC6aALMEJu
         R2Vm/I1V7H+DdGnCHiDMNPVlR7old4pEfxWwo74+E3BBNu9XsUIlQcyjhFfRW+3i80Hg
         pPFNTC8AgT0/bzc9fhi61+77gSeseYaW/6Hbz6ggeTM8673QpHHU9CFz38yI3FUGtTm0
         BGyofGF28BM7GkWxRmt1JHM817dTfD0KXf6+I0RTuG9tg5849GJHFTOHGeQc6V9KXyq1
         zzOGH0tMRqsqWU3n0lgPdB7ZCP85O/7wwU2xSBXi++qM7TOECzqgRnqrt41UVv9ikGgA
         hnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZKpuQPhFSxEpGVIWqjl4Ui4uUM5zlRaZ7/7g09DRCxc=;
        b=cH2/eAxfwqa4PmkA7xYtqkVKQXrXmONhshzI6GtVuKuUZg4+vGkcaxNmxUjJM6TnMh
         FYdNLMsCSYY+mQFpj8LohWFO9PHvutm/UZYa5zZuaJPp7/nL1Apyx5dmaFUCv1HdyzxA
         phW+8YV7qKj/9q+V2Xe47JMDcLpoj+CPTHRj79RHo1Hg2JMhOSDovgN90dg3QRkdrWuG
         w+lW6PZkqdEheGWX2LJbftOOQsppxT3Ied9iH8oK67JNgAZWH+JVnOmigIrM4PNxvP9N
         JgTjvBbvR6wNdqbMyMkAGM9TflLwpiJtyZEU4NBw8rvPfQvrNg6JbuBzcsTKgaCSJyjA
         175g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qX8+LdFr2gLGz5wmST6/DYf37gHaYM544I62kaObcvjWX2qVJ
	mW/JXU4TfI66EE5WEuhvTxE=
X-Google-Smtp-Source: ABdhPJyU7zdJiROoYPl0/AZbG/ml9sKKuCcjio7CzDbKYoCyoMY2uV4TgiC193bzMW8hphvoMYVWJQ==
X-Received: by 2002:a05:651c:1398:: with SMTP id k24mr5606992ljb.30.1607705364913;
        Fri, 11 Dec 2020 08:49:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls2185246lff.0.gmail; Fri, 11
 Dec 2020 08:49:23 -0800 (PST)
X-Received: by 2002:a19:8053:: with SMTP id b80mr4477029lfd.214.1607705363900;
        Fri, 11 Dec 2020 08:49:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607705363; cv=none;
        d=google.com; s=arc-20160816;
        b=zK4ElgniDCvXz5PzYnEVddzu9fyNdw5U1RpVfgyq7AgvKUCzjyF6AMf4j7OZ6pgN2b
         ygTmyA/X+Guus6hUDzoRGnuGwV4Oi2F0hWGIDNEAPJTwZmXEshdTY8O1yJs/fY0qmCn7
         lgftHu/wzI9Y47Uaw8LB7GgAwnq5a2HvobYPIpr8hF8S/MpFaUKFGmp8E4JMSvQhT0sE
         ddhhm3CImY96V9oKYpsz6BH6Xm5C/TP4ji0VgatTMZvll12QCu9hS3ivDkP+Db/Du+Rl
         dv4p//vJVUXARdoB4MOKhrNoEphHyrKpUc4vmScMqrFWhXwq0bBa2391Rm4rrVrDMBRN
         ilwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7+tL5lcFLpDv6gWJyhR8469+Mw9E43J1weoLYydVaO0=;
        b=QfLrrCG52BidOfCaXzeha4GLwRTjw/9Ohm+4x/O3AuobQp6zdjFFIcdWw+T7lZKl2o
         6kv9BnbNSL6sFiOHDXU3zFM52LSGuVjeeJ1CPNscCNC2o2FUCWWPkPifW5r4f2d9Y/ZA
         qVlG+8vhKYQXudGDBYPt6SFLMO+eNAvrJcBus8SY2hTH22vspqWjFqd23e+zY5bDR0Az
         ixjg0eBScRYbF6qHIavGHBDDDw/SKsFeOikSB+/sU5L5CQ7A1OoF2RAC9cX+3QDXJTYo
         ERCa3F5KkoKnGD8wBhACKlp0AXVdlWLqhq5oZ9QY6WyQTfRc2VJbN80FG4+UG+agJoHZ
         1uyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=QvKZKplA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f5si344404ljc.0.2020.12.11.08.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 08:49:22 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1knlba-0001pI-Dk; Fri, 11 Dec 2020 16:49:18 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7DB6F3003E5;
	Fri, 11 Dec 2020 17:49:15 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 67DA620270BBA; Fri, 11 Dec 2020 17:49:15 +0100 (CET)
Date: Fri, 11 Dec 2020 17:49:15 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool crashes with some clang produced .o files
Message-ID: <20201211164915.GA2414@hirez.programming.kicks-ass.net>
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
 <20201211093205.GU2414@hirez.programming.kicks-ass.net>
 <20201211163748.b37gashl6an6misu@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211163748.b37gashl6an6misu@treble>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=QvKZKplA;
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

On Fri, Dec 11, 2020 at 10:37:48AM -0600, Josh Poimboeuf wrote:
> On Fri, Dec 11, 2020 at 10:32:05AM +0100, Peter Zijlstra wrote:
> > Looking at elf.c, it seems we're missing an STT_SECTION symbol for
> > .text.
> > 
> > And indeed, when I add -fno-asynchronous-unwind-tables to clang-11, that
> > goes missing from the readelf .symtab listing. Help ?!
> 
> I had a similar problem with ORC relocations:
> 
>   e81e07244325 ("objtool: Support Clang non-section symbols in ORC generation")
> 
> If Clang strips the section symbol then we have to find the function
> symbol instead.

Argh, I knew I'd seen something like that before, but I couldn't find it :-/

> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index c6ab44543c92..9bc18864154f 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -472,8 +472,25 @@ static int create_static_call_sections(struct objtool_file *file)
>  			return -1;
>  		}
>  		memset(reloc, 0, sizeof(*reloc));
> -		reloc->sym = insn->sec->sym;
> -		reloc->addend = insn->offset;
> +
> +		if (insn->sec->sym) {
> +			reloc->sym = insn->sec->sym;
> +			reloc->addend = insn->offset;
> +		} else {
> +			reloc->sym = find_symbol_containing(insn->sec, insn->offset);
> +			if (!reloc->sym) {
> +				WARN_FUNC("can't create static call: missing containing symbol",
> +					  insn->sec, insn->offset);
> +				return -1;
> +			}
> +
> +			reloc->addend = insn->offset - reloc->sym->offset;
> +		}
> +

Do we want to capture all that gunk in something like
elf_reloc_to_insn(reloc, insn) instead of duplicating the magic?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211164915.GA2414%40hirez.programming.kicks-ass.net.
