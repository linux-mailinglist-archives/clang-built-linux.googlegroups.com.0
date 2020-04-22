Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBGMNQL2QKGQELUSIITA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id C70DC1B4C62
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 20:02:02 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id q43sf3587358qtj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 11:02:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587578522; cv=pass;
        d=google.com; s=arc-20160816;
        b=gBKMI47pX5war1O8A7piSl6QehqoodUWo6DVRVBCxFsxGbe1aRRDgRHAH9fBycutQv
         SrKafp0CG6wrV5bQakVSR70bB7Ihec/xtUMhQX780w1nhf+0AjsXdywets2axmjwE1Y5
         upJCeqMf5Qze6KgfDh81dHkUn5XTkVLYip6dPx9fBznKpKU8rqJCklyFJUG2jqAHFGMW
         CVjJtbhXWhmbunPTC4v5EnoUEy4+HY8HYQFSMcmptqJ/0DQ4ZSBKayLO7Kvk+mYfyQX7
         F91W4FJQwkp5WKKUlGhiCsLqxjgPtbGAF7FyN56/8nsmtjs7F2RZOUnrKzqpKQyZANeJ
         h3Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UDCD102HO2ujwCHnpAitaOfT8hqQJnMNfYOCTa4evbc=;
        b=nfnOGKY7O2njjXta/bKV+pHAu4q55qS2r8kVJsYD+Kbvu3orBHngYPlrIpfKT+S+CE
         +xlThVTYAAQuBtUdufkdRFTCEr3d+BlEvs46jaKjtxtmVrEZ24r2Lu0ZZu6MWHHBX6Pn
         vJbQ3vcDrsTmwQzpACjrHUhdxDKyQ0mA7a0PGbZ6fXqoLq0zXw/fmu6nserHRxCwTrYO
         w9c94tx/GauHUh1e7gQ1ulCOiYlXErInt7GvpJmfdMVNDMIIYNQHOxnVpCWay5XscJbx
         4uuGTe7wNBCY60uQzsuqBumOcNmKHlfKYW8atI+4mrwJbsAInncTdaB+UxxV0i2i+Fhw
         EVFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="0A/YQX2J";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UDCD102HO2ujwCHnpAitaOfT8hqQJnMNfYOCTa4evbc=;
        b=TbL6mk+w/L5AOXz1gINrLY/9KdaGbCrh1tly0XHTuzDRrfhUgdbrIlhaLHe6GtLBWJ
         hEhgGrm8eK1Kul0ltDxFxlWaOpBpfAJ0dU7sHMS99DA9wQB9q1J/dYhmW8/SMZHTlNcV
         s/yLzAY0b13UgY9V9l94vMn5kQIS2gx7cL1Tit5xQ5B+iYsk1MoboxxpPKFT4EzGQVJV
         fcaL686b9IVAhrxAXFYykZkPsWyD/9+4O5FC8PiAcA7y7axs8V0sM8lqVlrkw2Plz5d/
         BRIhRzz8Tz7UkBtTFB2KfT9LBX1qmJHRT6w0CGCb/6XSffxkUN2UVFegEZC/oFOoDNGF
         roDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UDCD102HO2ujwCHnpAitaOfT8hqQJnMNfYOCTa4evbc=;
        b=VM9JzBTLrUswFih1i239kYv6iN0nNjX3egpBuY5oVmpGSThnEphzTa3G2vmjLd9Des
         wO6CUyKi5Z/TNBy8j3dtQNliAT4JGW/XSr0tDHVa+yRozPcfaW0TGmUJpVtJoloHdatD
         K+e5UxzGJWT9fzgUvN9DkRuvjqOPIAOdIn8Aj6r59x8ohgpWmqXNGB1PHboHw8cBWpt9
         MmUvp/wYpnk0FD10p9A2+xrHsCNhvct3l0Z5hQ5axtL8fsPXv523kBI24SMpqfSkkWNW
         x04oIgkuPZBnrsN6d1sjfLm4HsTzio24w/uT+jHi8lkDlJcdoU+lah7rHyvjF/luAB9L
         FLqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYbIE8VMexAh0MfXU5yabgrFb47TSIx6tu0Gr6OP/EZIuiVs09C
	EIhxqKONIB23QGpp0qxjgmc=
X-Google-Smtp-Source: APiQypIkwwVGhAY9/9ylEPbhFuZna2ClDZMf8r6sezgo1mC5MVAWKJ59Km0XT4kaUXy5NYBQKz5QaA==
X-Received: by 2002:a37:af05:: with SMTP id y5mr28870914qke.471.1587578521766;
        Wed, 22 Apr 2020 11:02:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:586:: with SMTP id 128ls1898511qkf.5.gmail; Wed, 22 Apr
 2020 11:02:01 -0700 (PDT)
X-Received: by 2002:a05:620a:88f:: with SMTP id b15mr26593978qka.118.1587578521332;
        Wed, 22 Apr 2020 11:02:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587578521; cv=none;
        d=google.com; s=arc-20160816;
        b=qyoH6pEqz42TMeFR8U9MBTxYb5Mr9xrTOYtn/nweB2yleiW8bW+5FAJ994MmYahaMp
         fvA+44yjwoNwE15c5mxx2z2GyZa4a6aM3LloismEzZgS8tNVPhRExecdPmmhbWgBf3el
         pJJtPZlGLgPVX6eEieZXAjadcKslcePG14lKQ+wWrV4BkAIUnrJP6rJsxl0NuaoepHy1
         pHOynQtBEnkYJc0/r0V62vLAgOJPdPnEHKze60FtkjjfDUBm+pxnRUeiKvE4HyV8C8Hu
         i1SNYXJQQU72+rrsD6MVT29Wz8OPCF2hEZCn9FO8Mx2RtUkKG/DsBWt76LA1FgycZjnT
         BLtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Aw8BSYedtLgGxbxehMFu4wCP7ogzWu/kQ4JCDkktTwk=;
        b=O8LRh1cPN+vkccUQlQNuy0rJLHt3EOhiJMpiTSNhObTRlSV3KCgAJyOrd7o0s/J34I
         AUQOQsSClz70IlKuy34On/k8bRb7dMlSeF6BOL3LSyvunXKe7508PH7d4V+eZkMPgYlX
         gCzXpX/NT3qB+5mSQtDjaBxev3kUdwRGH+BsDfEyNcKWMG/zuOESYvpbTpngiltuvTJ5
         7dyFfYJz9HCb4e5V94gyyyMQknh67eUowYJLdZ1h6HpnfNOx5+gI4JzHdUwhpF74LMob
         hf3cfmGc/hby3jaQ540XWW450qm4CxmqS5F9rf+zfMF+U8A1uhbsMQI7MFIG1uNP2mv+
         Nc5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="0A/YQX2J";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e7si2221qtc.5.2020.04.22.11.02.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 11:02:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 824A1214AF;
	Wed, 22 Apr 2020 18:01:56 +0000 (UTC)
Date: Wed, 22 Apr 2020 19:01:53 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
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
Message-ID: <20200422180153.GD3121@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <202004221047.3AEAECC1@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004221047.3AEAECC1@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="0A/YQX2J";       spf=pass
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

On Wed, Apr 22, 2020 at 10:51:02AM -0700, Kees Cook wrote:
> On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> > On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > > +	 * when the task is not running.
> > > > > +	 */
> > > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > > 
> > > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > > (base,offset) pair instead? That might be friendlier on the allocations
> > > > later on.
> > > 
> > > The idea is to avoid storing the current task's shadow stack address in
> > > memory, which is why I would rather not store the base address either.
> > 
> > What I mean is that, instead of storing the current shadow stack pointer,
> > we instead store a base and an offset. We can still clear the base, as you
> > do with the pointer today, and I don't see that the offset is useful to
> > an attacker on its own.
> > 
> > But more generally, is it really worthwhile to do this clearing at all? Can
> > you (or Kees?) provide some justification for it, please? We don't do it
> > for anything else, e.g. the pointer authentication keys, so something
> > feels amiss here.
> 
> It's a hardening step to just reduce the lifetime of a valid address
> exposed in memory. In fact, since there is a cache, I think it should be
> wiped even in scs_release().

But we don't do this for /anything/ else and it forces alignment
restrictions on the SCS allocation. Please either do it consistently, or
not at all.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422180153.GD3121%40willie-the-truck.
