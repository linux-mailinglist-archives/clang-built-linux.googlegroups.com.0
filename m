Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBMUXRP2QKGQE6J7J6YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3291B72EF
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 13:21:23 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id m2sf7378317pls.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 04:21:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587727282; cv=pass;
        d=google.com; s=arc-20160816;
        b=0VVMhwzY4pMERg3/EmIzUJQ79gzmC11PkXRyTsUbBVJHXPco/mtHv9eROPU1BDNQFO
         elwXJnGk0vVgtShi/iVeCxrQEYAsVUiDaBNL3U7KfQqfx+PZ5gmyGusTxu3qQGGQ5n9A
         3PKQJC4uH8laySaCEWxKdnb/QzcIIUi5daewkP53KAQyqrUsjWJLwL9DwGN8/9SCIvYz
         qgrFqfxxrBCOhSj7UV0KFbUk9uMHQVG7ywny1uCTam4jObalJBEPLxdMizjI0FownKtn
         Jtj5afJ2rOzxu4WpENszzeGJWCELrdRkx9PMZSb0N5mhx55tfL1Bm5AxAKvOEBRno6EV
         HtDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3LC1lSEVK5nGrPTdJWN5h7xoSVCwqx8N77CrTmZcta0=;
        b=aNQR1rgbHA3hivnNtQj2pX3VF6h8Gipw0Tw9UcidxMPUWnxkqagEmtvT8De3d+9Kn5
         njV2ojrHG+g6O2mEKJ2B6j58ZkbhcHV1DY+0501Bxuy4tQvC3QWLtCny5qKWWf+VcF5Q
         OEvTKyKhGudj71E53VtfDKSgrYCzxMrfQcA/PAJL9+AJWieP9Gr9GB/mMoPJp+vb33vA
         sxJTKlo8QFuEPhxU6ZleTK+bull6NH4iZqhkCK+PdJotM9GUYfCYtFCQjHOckTg6XNL9
         UqQZRAH4oAa+Tpw6HCVH9vhcmOJWS32h0SrY2iY5vuXg7BnmvwvVWXBe/XQKKZaKJCM7
         qKdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="y/dWUU1q";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3LC1lSEVK5nGrPTdJWN5h7xoSVCwqx8N77CrTmZcta0=;
        b=Gau2jxz7KlB4bdUAlRG6v057AfjuknNSLV9FOYJJF/pJ/fok9HlRuZx8dDdNsiY/4y
         qAsYhXtla/9nkfHlLIz9FBc/0bmEN4oC2Lvn7WLyRNpp2x12K5J8g9pBbjiygJQYoks0
         frTpcFffsoHsFq4RGN2hNPXHPY6ZK7UQ5q9MCfGwbe1Q6MJOcROVJGcOSMXdzwRe541L
         iKY5YXek9U6EUxTjbrH+poQBqVmgOha1Uxv2Ao5SX9jD+MbX+3QqKxQYd936CZLqio8q
         1hqATVxEerPM/fXlOZT5khzTtJmcunipLeaeHWt8lnUG0fxumXPP2gYEO0VSwlPuTocu
         lnyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3LC1lSEVK5nGrPTdJWN5h7xoSVCwqx8N77CrTmZcta0=;
        b=YqM2AWJGS18zS4TCAEzFAaoclq41I2vH/MX+Cqc90ah/XyLCEFP5T/BdJwLBQzwKtk
         aLE9/kNKB4RBTyCqG9/8YMO+5bvPyEp/vHJFygXRoHDMONu6OllFUMIwqdmKDuqt7r1U
         GIukP3nydnWs/yM7qJJAo/+M72eZK0KbJ9CXlRiEO4L/KgjQ/BF3OUdqlW2QRfqSKWd0
         fl25LIGK3ZTDkaTaGLXTBnNKYihgoIpMyR1gKo7xC7/1FBADxKPD6JB0BR/TPfkGnRDr
         R8dJ/sFOCFlOssBTNo+TKBlY2Yt5c2g82NRdI20LHK0gW0TDshhdktyZyXGQQ4N9WmH2
         6k0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuagTmIOcWi0vLgODCazs8MsOeIgNSN9ZUpGRS4w22+qvRSPWRI4
	pwA+10tTKYjvJy6GZ6pKqFk=
X-Google-Smtp-Source: APiQypJU2D2tgn8hcJMtTa6Kar3Tdt88oa7VOQLRTOdsXBzauqY1my/k8Hu5kHrxVi4iQ59Dcig5qQ==
X-Received: by 2002:a63:c44d:: with SMTP id m13mr9074969pgg.314.1587727282228;
        Fri, 24 Apr 2020 04:21:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b488:: with SMTP id y8ls6532816plr.2.gmail; Fri, 24
 Apr 2020 04:21:21 -0700 (PDT)
X-Received: by 2002:a17:902:8641:: with SMTP id y1mr9110471plt.14.1587727281798;
        Fri, 24 Apr 2020 04:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587727281; cv=none;
        d=google.com; s=arc-20160816;
        b=fdKj1RppSpMqke5QL7zwYBjqUpHMkGWmXbalV9Wubv/lGJYj670DsEhUITZaymsoOJ
         qKft6ZUACf8xS7REpbHawqqGNMRLupOzRGbZeUAUqVtIgpuhxwRbCJNhJwNz5V7vnBR0
         QN1pX6zZcqOGc11dMNDmAhbEWtrN4btpc7WnDiNT5nrBUDlsxDXZFo7bBK6b2lZHtHqM
         YmlXi46+fjGgyYWtXjZfHJs9SWLFaJbDsnsVwJaowsNe2rRTr/5op5Rl7CmROfMaf+cI
         BHQJn95zt4iPfoRBVSwGxSogXSbkrO2jOQpKXsU9x1hw4Sno5stFZc3UChHZUocb1pxR
         vVxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6yWNZgEnXOitLcRkQWykVBTIzCr2wO1f7zASPn1YxKU=;
        b=A5GitV/EbwNBGl0rmDzgRU0lEhRDyOyf8DxfFF7emd+c2lswvhwGFo4LP35wXNRbkJ
         pnxiCdTvnvjTX5G8Nzjjz5g1dUZofYxWIKrc3+Wgr9TPJ1A7NwKF0UqsL45mb6GYUd6B
         Tzepl7szqt1Ho4tdD/PxHCv+GYpC+2LIEHZE6MyzNxNM3pASAITh0m22C3t7K434KD+c
         qKdgNjD14EZlLVNcd81rkoOGec1ibiC6zJnRVZVlM/zU172Ly9dHhpdtYpW7Eeifc1bD
         Hpx2GfwYjEI8AvnAxq6mV8tc7HOGlB85K4eowA0R3HRfPADlrNqiqSk0H1d05CcX7PUh
         opnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="y/dWUU1q";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x3si456000pjt.1.2020.04.24.04.21.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 04:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9BA5F206D4;
	Fri, 24 Apr 2020 11:21:17 +0000 (UTC)
Date: Fri, 24 Apr 2020 12:21:14 +0100
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
Message-ID: <20200424112113.GC21141@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004231121.A13FDA100@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="y/dWUU1q";       spf=pass
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

On Thu, Apr 23, 2020 at 11:28:40AM -0700, Kees Cook wrote:
> On Wed, Apr 22, 2020 at 04:51:34PM -0700, Sami Tolvanen wrote:
> > On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> > > On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > > > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > > > +	 * when the task is not running.
> > > > > > +	 */
> > > > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > > > 
> > > > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > > > (base,offset) pair instead? That might be friendlier on the allocations
> > > > > later on.
> > > > 
> > > > The idea is to avoid storing the current task's shadow stack address in
> > > > memory, which is why I would rather not store the base address either.
> > > 
> > > What I mean is that, instead of storing the current shadow stack pointer,
> > > we instead store a base and an offset. We can still clear the base, as you
> > > do with the pointer today, and I don't see that the offset is useful to
> > > an attacker on its own.
> > 
> > I see what you mean. However, even if we store the base address +
> > the offset, we still need aligned allocation if we want to clear
> > the address. This would basically just move __scs_base() logic to
> > cpu_switch_to() / scs_save().
> 
> Okay, so, I feel like this has gotten off into the weeds, or I'm really
> dense (or both). :) Going back to the original comment:
> 
> > > > > Could we avoid forcing this alignment it we stored the SCS
> > > > > pointer as a (base,offset) pair instead? That might be friendlier
> > > > > on the allocations later on.
> 
> I think there was some confusion about mixing the "we want to be able to
> wipe the value" combined with the masking in __scs_base(). These are
> unrelated, as was correctly observed with "We can still clear the base".

Having just tried to implement this, it turns out they *are* related
and we can't still clear the base, I was wrong about that :( See below.

> What I don't understand here is the suggestion to store two values:
> 
> Why is two better than storing one? With one, we only need a single access.
> 
> Why would storing the base be "friendlier on the allocations later on"?
> This is coming out of a single kmem cache, in 1K chunks. They will be
> naturally aligned to 1K (unless redzoing has been turned on for some
> slab debugging reason). The base masking is a way to avoid needing to
> store two values, and only happens at task death.

Fair enough about the kmem_cache, although I'm still worried about these
things getting bigger in future and the alignment having to increase at
the same time. We also have a bunch of static/percpu allocations that don't
use this cache.

Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
allocating blindly out of the kmem_cache? It means we don't have a redzone
or a guard page, so if you can trigger something like a recursion bug then
could you scribble past the SCS before the main stack overflows? Would this
clobber somebody else's SCS? The vmap version that I asked Sami to drop
is at least better in this regard, although the guard page is at the wrong
end of the stack and we just hope that the allocation below us didn't pass
VM_NO_GUARD. Looks like the same story for vmap stack :/

> Storing two values eats memory for all tasks for seemingly no meaningful
> common benefit. What am I missing here?

I would like to remove the alignment requirements for the static and percpu
allocations. AFAICT, the only reason the alignment is needed is because you
want to convert an SCS pointer into the base pointer. The only reason *that*
is needed is because of the questionable wiping of the pointer in the
thread_info, but I really don't see the benefit of this. Unlike a crypto
secret (which was your analogy), the SCS pointer is stored in memory in
at least the following situations:

  * The task isn't running
  * The task is running in userspace
  * The task is running a vCPU in KVM
  * We're calling into EFI
  * On exception entry from EL1, as part of stacking x18
  * During CPU suspend

If we split the pointer in two (base, offset) then we could leave the
base live in the thread_info, not require alignment of the stacks (which
may allow for unconditional redzoning?) and then just update the offset
value on context switch, which could be trivially checked as part of the
existing stack overflow checking on kernel entry.

The base and offset can live in the same cacheline and be loaded with ldp,
so I don't see there being an access cost compared to a single variable.

Am I missing something (modulo us not agreeing on the utility of wiping
the pointer)?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424112113.GC21141%40willie-the-truck.
