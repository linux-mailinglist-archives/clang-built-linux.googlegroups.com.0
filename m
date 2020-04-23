Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW54Q72QKGQE3PIEKWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B7D1B63BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:28:44 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id o13sf5508689pjb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 11:28:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587666523; cv=pass;
        d=google.com; s=arc-20160816;
        b=CHYreVJJysPSFogB9BK5JYWQHqfm44M4znABm0aForVetiLhxYVK3hp6Ccs3NLnCMW
         LwhJDKeTIp+vzT49w3ctHucIppl/KOpo5kru5pcLoEBOCpFvgW3r/zzvNcn2n3Rxk/aa
         c1q71w5/jo6gP0oNC7pAPm3kHwyvYcxQMAsWIvjp+HI73EVKeWow6o+PviCqeqnceRLt
         nXHx2xS6vojPDMczcwG9D7QhgmePmrmZ2Gx66wQzRirQTffPhyiRSDB7pP6XCYDyf+qN
         slHcypxUiGfuMZc11XrIWgbXw46OK6eD00A67l8APsQU+g3JTiCQHXR50GRLK+qeDBM8
         bflA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=l9lT0DFpVOTtKjoYaURrbe1173/2VZFVvS+N3V9hwLQ=;
        b=RCTOHKShz5Cvxea9r8yxxQog1vOdir3z1cTyGR5cwPi/hyQIMmyDX4F/EGbrxr+Bbx
         UGgV5zVfJCW+MDC2TrT4cBAV72gK3NI02jcBp68KxmE20ALDT9uskjFJ7qk/6g2mfh3r
         reEh6GheYEIGtDHoBvCk3M2AKSPvtUvsYFGp7JNx7WX0gwmnyIC/kd3WdNW2x1jjTaIP
         MnqwflMuwt2XGhtochUAsGpetKGJWcn1ETf4vkR5akVDGhjbY9e1Ej8Q0neFNWmfk0xp
         AFfOyHE/A9AWg1bInmMfInezEhpRmFQXAKKqbqbWypNazCUfD2uGq6n3/lMGm+yNxaVD
         AE1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b6zdPxuh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l9lT0DFpVOTtKjoYaURrbe1173/2VZFVvS+N3V9hwLQ=;
        b=e+JV+Ob7Z0foFTMS8q+uHDJnm2pzphgyehKZQoOM0GBNF06fUaeAj52B25vGmofza+
         aGxGjApODLcGyAzWgsYyJX1TRAghT6lhRu/s2jfcG1cwAs7OKo0BxWy04LNxmVWnt+r/
         LnkiuCU89LfsTFkF11F+IgvoYzkRYVskYm5v9ClMKCdznJOIAWFYUUK6VKlnTKKsn/v+
         73JxZtCIylScE1KrmSYRZgmmBz3hhw9c8HJPPj/64mIewCQ8ufQUC5qKu0q12UCTI1s7
         xKPcgBFdvFnFf+rn9LyQGLGXKccmn1tDzq5SfEVORtlTstxcR8dVuoHsty2vCoD6nsUw
         AoAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l9lT0DFpVOTtKjoYaURrbe1173/2VZFVvS+N3V9hwLQ=;
        b=uBmvGjjrI7ebYVG8dvQcTkyDM1ie/c8BaQuCVVPJFJIA0X3CecW4/PR7fu+Zn4Q1hW
         dQ/4k3WQL1ej8ehTE5tBv/dGHrKOY66Kokh5GKT3+Djzmp6YIdR+quH/egxHhunCnhkM
         IDpZEsZnt5AOUdINttGFvvPJYNop9VO6X4yJuFCkqMI7MH6qdEwac/rb76byy5I+4WGX
         XmhInBHPz8YjIDGnOMaPkZeLKG1+Jpm6SIldqfJPvMyKtWps6DPqosB26boWlYIS3tUL
         5lU1/LUiB2HeTsG6QJycgLRq0UroaFOqLpnfgu6942NbPz7oSd+j3owBAPrC6hf66ZZZ
         Na8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaDkYmoZ6W4PIYoYNYSf9OI/Pf9YO980D023MOoc9TfsgenfOH/
	GDd6xEF265xmVU/b6OU0Vcs=
X-Google-Smtp-Source: APiQypJdCbJZm850rHatm7QnA7wPggfue3cT6vENxMYofGeOurxWyVGIEZwm8h+1I/X+sy7FJDUYXg==
X-Received: by 2002:a17:902:aa88:: with SMTP id d8mr5301064plr.213.1587666523305;
        Thu, 23 Apr 2020 11:28:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3190:: with SMTP id x138ls1413371pgx.1.gmail; Thu, 23
 Apr 2020 11:28:42 -0700 (PDT)
X-Received: by 2002:a65:58c4:: with SMTP id e4mr5373760pgu.61.1587666522849;
        Thu, 23 Apr 2020 11:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587666522; cv=none;
        d=google.com; s=arc-20160816;
        b=qYhOCcFB3IoPKtiKeCfiRRANLDIfApT8iYCkeFmvTz3hnbfTV3YfNoJzH43pdcqPmo
         W14+3j4SE2XI1ulfJ0qUz4NAtBht0EWmOo55GpxPYv6hExCM5QHTMEK0JUk9I/P8fbRX
         wTuwgKbEUAIKqWAHP0BM8W1HuNlagJ/kuidOd/bRvcddyr/gCQObzm0Dz5KfnnGCXgz2
         BfO9w7tuwW8MYCq/0iAzO+qL0U/Tv1Y05k/n5GEg7pbvFLsmwEpnhLkFU4UoPZKKEkHb
         020f/AKBnjO/36v25aKEMuVXSc+bdYds6nmQKq9JG3JviXhYyFgOJbg+dtfy5z1Z/1KS
         c+kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6Y/9ITAGgGN1ObZLXZNElUJooxFBQUxzx7tXw0tLGrw=;
        b=MZirEGuQ9r+loklWxOmSne5HltirAj6pkZaBb1IMZQ6GRErOhHmfVeAII1GJKMjEAW
         LP1zIyn+UQgAW2N0GeuLZTTsfHxq+OTnPn9Q7VtVFFveDPJ1jVrfuS+NhtvRp5h0Uu6N
         l6apo4tBzd6mIEgkQMB/rNMItDYQnmsd+5Q2UbDAorIdfpY59zgQdUUgr1+tdy1yZGNF
         QHW6ZKsUCN3EIczN3gXijYMnjOnkBLLIoPQBqRrnaVNx0+EDJrHz4sqwwc29tOpmFL0b
         08BbFgvg0BCgtZzyvJsbbm6nPZhOURsABluJywD47bN2E0jROtsnDrjsdqDLulCzjZ0A
         M6nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b6zdPxuh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c20si153072pls.0.2020.04.23.11.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 11:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 145so3359790pfw.13
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 11:28:42 -0700 (PDT)
X-Received: by 2002:a62:1c97:: with SMTP id c145mr5322854pfc.68.1587666522523;
        Thu, 23 Apr 2020 11:28:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s44sm2954819pjc.28.2020.04.23.11.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 11:28:41 -0700 (PDT)
Date: Thu, 23 Apr 2020 11:28:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
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
Message-ID: <202004231121.A13FDA100@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422235134.GA211149@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=b6zdPxuh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Wed, Apr 22, 2020 at 04:51:34PM -0700, Sami Tolvanen wrote:
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
> 
> I see what you mean. However, even if we store the base address +
> the offset, we still need aligned allocation if we want to clear
> the address. This would basically just move __scs_base() logic to
> cpu_switch_to() / scs_save().

Okay, so, I feel like this has gotten off into the weeds, or I'm really
dense (or both). :) Going back to the original comment:

> > > > Could we avoid forcing this alignment it we stored the SCS
> > > > pointer as a (base,offset) pair instead? That might be friendlier
> > > > on the allocations later on.

I think there was some confusion about mixing the "we want to be able to
wipe the value" combined with the masking in __scs_base(). These are
unrelated, as was correctly observed with "We can still clear the base".

What I don't understand here is the suggestion to store two values:

Why is two better than storing one? With one, we only need a single access.

Why would storing the base be "friendlier on the allocations later on"?
This is coming out of a single kmem cache, in 1K chunks. They will be
naturally aligned to 1K (unless redzoing has been turned on for some
slab debugging reason). The base masking is a way to avoid needing to
store two values, and only happens at task death.

Storing two values eats memory for all tasks for seemingly no meaningful
common benefit. What am I missing here?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004231121.A13FDA100%40keescook.
