Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB2EKTL3AKGQE7VOT5UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E20151DCE58
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:43:05 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id s8sf5279745ybj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:43:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590068585; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+/I5FjLzJt7q3A1Whu19eeizfYFfOVkJBQ1kz/OSA+1ctYvKHxzVkwbYm5nWMmSQP
         EFM54iugCUlkOUkTSmFLPXka1DIhsz9nkTLzpzQ/57xPxG56A2n+d72RBBxCY2gmSjqw
         p6zS+9hzBy/wLNu75WVlnuQ+uU487bok3YtILT5ouAhwyaVP6ZQPwwoF2J/C1q5NGgKw
         T4qnXcBa/lkpZIZ59x9FXUIjLenibXqFPCWoglW4qWUYLIKaw0MJ3E2+DohetfQ4Cdl2
         AMxqzDgxJtxU7gDUBp9mkSk7vJ5NdikgUQDzQx+PdewSVCLQWGDLFH6UX/dJ+FtbAJV5
         2L9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tV21oP2/0SYVAJAc2NZphw7XLcKY8ONbD0aWKBdW/wQ=;
        b=JRiUleDZz4rkJmtfifCxMmL9RdcIT5Cevhs15HeeqMSVQh0JoxQTIhe9ye3VpY6Puk
         hCWCH8AaYlk+9rz5AooJkJOfAx2QP8wfUYU+86YKrtMmSl1CL4vPnwAYylo/+6ukMEDp
         YKNH2dSyWasEE9eLL9vEdyu4XaqhjKsajSWVc55kS1LPexds+jlIVTc9PJ0Zb88S7IKF
         zv3xcbSbajFETitGMlHDfHgXLUx8FHEFRHkf8MUF4VMMHWjeoZ5P/nrwzeXHdyhX/fzE
         WxSDC0um3SeNM6ZhvuRrXuXGhfWnWrE35ylQHpKQFVzCGbuUqGkYjviZXSe8rLSOvXFL
         CNfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ToaY+1My;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tV21oP2/0SYVAJAc2NZphw7XLcKY8ONbD0aWKBdW/wQ=;
        b=KRHwc4yIN/n2wVkMlpuJhtfHON6NtOGE/WHOAr6nZ6azjvELTyNMEpBqkt/O2W+7+j
         NvZ5tQhc9kLDQk8c72RAq+83HvSdE63O2zweJIXZNlNlzB/XceglDSqqHDviJ6ZnGUE/
         5MtBkaQXLcQJ8TGjmdXwTtkfSQxD6iWQVeRzE1rNCZR7/4Isrz7y6DwkY70YiW638pyG
         P4tkvWTRfOxPcxrKVi2z7JbDMlnq07JMjQXo9trFW39hcc4+AzsOeKcy01sMCw/VsGzG
         crPaas3SmQWhFbNqYm8UaWJ3SzO2YrJqFDcn1uiDw/nDdvueXlvjWZ6B6qrJ52NQA2s0
         4ZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tV21oP2/0SYVAJAc2NZphw7XLcKY8ONbD0aWKBdW/wQ=;
        b=QEgCHUZvwkqvU8Fpe8onAfT6JAnVKrNcLMR7LPUPc3Nd2joPcMHijFtkjf36cUxNWV
         h3XCm5iQZZ/ELSgwxNdF+0UwMhBB8I919OUmGQx84GABdt6R+jImMrXkqCPuQgw8Nybj
         RjNKA/3PcYkj4xSNU7bpMX4ruQYx5s9CN/+OJLEMTa4lepERlMiV7IXzbsrqabtI2v2e
         XdWEeD75M7TE7aZTaq0kr9hJzAkqeoUTeEUNpxEDXjMliqV/KoB9hVomgKkRzo2tSLFh
         urYFQWmHEa16VHp0ghq0WSQmZeaeFgav26cPnBarYen8KJf0wCn5ZHkcWYmVT14oGz7t
         lM1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IwD8OVzmXYqHO1OOzlx9ZKvHuyM/rdlTUD9j5FsghuDl9/PP4
	TTFhK9pqaEwcmJDLEGV9naw=
X-Google-Smtp-Source: ABdhPJyzzaYt8wEm+0DvL7XN/Oov3UP4Rcu1XOTkDWlWGiBwr9kCJ1SVjYPB+cdv4ddr1yn8kL3e9A==
X-Received: by 2002:a25:9344:: with SMTP id g4mr14267295ybo.157.1590068584903;
        Thu, 21 May 2020 06:43:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:ece:: with SMTP id a14ls758504ybs.8.gmail; Thu, 21 May
 2020 06:43:04 -0700 (PDT)
X-Received: by 2002:a25:f505:: with SMTP id a5mr15265347ybe.195.1590068584530;
        Thu, 21 May 2020 06:43:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590068584; cv=none;
        d=google.com; s=arc-20160816;
        b=ZC+Vbzr/Hj+FZ3qry+KpRiAIi47Nygcyd2yQyv/l5N/qb3iNRego08H3X4HxOB26uC
         jnDWgfEaJ4Tvu8fjpYTIcmHq5Ri7Dzk43xN4Ay5jZvsjkyXCsRDWE0M9+iXar5zcZygT
         aXF/CO7S1lc+SKAX1O4OhDgBdm+V8/Aav1umOdx+NkiKf94e6ZbfW5Xg1Qz8r+qn9+ul
         qtwCisUGYVPELKYfJU12wt9Al/xcM5KVjuUG+TLzPxM0orG17+oiA94PWIKGvNXd79D3
         STrdfMQ8GtFJgIfBRjVTHQWj6zP5mP8YoOM/t/vefPlHsoWyfgSRxHy21CdPTLFlIqXO
         a0DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0V1aLxnC9b6nqBNZK6HTyYbgl3Uy19QD2eqD+7FzkYg=;
        b=J0LrnIyowpPNabjQAfnEhL1ruINTEADX7YonvdtWRBYLLzu5G/cLDvC3tJh2rieQQg
         h9qbBMReAzdA5Bqq+XTcPbLhSQmVLXzhHtLKi4AbcmGGiALedwyWCzpoHEMv8EUkz7Ni
         PVGW9iBOCQQqezFVDk34CSo29lUo+vPKlsX/c8pabEMKqGne+4Co07otESChPxp4tr5E
         pqKPUMNr6SbVPX0Q8aYhQlog9Zyb3gYg8dAqW2KofBkQw03VD+4AlSdkwRcRe2vNBrog
         ooQ021AQOw7aTvRJCmi49oLYAlVO1nLwMznF79Os2jApc58K8pjq/+d1/qfHFPSgONZo
         NPpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ToaY+1My;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a83si478633yba.1.2020.05.21.06.43.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 06:43:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 938BB2072C;
	Thu, 21 May 2020 13:43:01 +0000 (UTC)
Date: Thu, 21 May 2020 14:42:58 +0100
From: Will Deacon <will@kernel.org>
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH -tip v2 00/11] Fix KCSAN for new ONCE (require Clang 11)
Message-ID: <20200521134257.GE6608@willie-the-truck>
References: <20200521110854.114437-1-elver@google.com>
 <20200521133626.GD6608@willie-the-truck>
 <CANpmjNMf7JRG4P1Ab2qsCy4Yw6vw2WC7yCgqUSBBOsBQdc_5bQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNMf7JRG4P1Ab2qsCy4Yw6vw2WC7yCgqUSBBOsBQdc_5bQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ToaY+1My;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, May 21, 2020 at 03:42:12PM +0200, Marco Elver wrote:
> On Thu, 21 May 2020 at 15:36, Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, May 21, 2020 at 01:08:43PM +0200, Marco Elver wrote:
> > > This patch series is the conclusion to [1], where we determined that due
> > > to various interactions with no_sanitize attributes and the new
> > > {READ,WRITE}_ONCE(), KCSAN will require Clang 11 or later. Other
> > > sanitizers are largely untouched, and only KCSAN now has a hard
> > > dependency on Clang 11. To test, a recent Clang development version will
> > > suffice [2]. While a little inconvenient for now, it is hoped that in
> > > future we may be able to fix GCC and re-enable GCC support.
> > >
> > > The patch "kcsan: Restrict supported compilers" contains a detailed list
> > > of requirements that led to this decision.
> > >
> > > Most of the patches are related to KCSAN, however, the first patch also
> > > includes an UBSAN related fix and is a dependency for the remaining
> > > ones. The last 2 patches clean up the attributes by moving them to the
> > > right place, and fix KASAN's way of defining __no_kasan_or_inline,
> > > making it consistent with KCSAN.
> > >
> > > The series has been tested by running kcsan-test several times and
> > > completed successfully.
> >
> > I've left a few minor comments, but the only one that probably needs a bit
> > of thought is using data_race() with const non-scalar expressions, since I
> > think that's now prohibited by these changes. We don't have too many
> > data_race() users yet, so probably not a big deal, but worth bearing in
> > mind.
> 
> If you don't mind, I'll do a v3 with that fixed.

Works for me, thanks.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521134257.GE6608%40willie-the-truck.
