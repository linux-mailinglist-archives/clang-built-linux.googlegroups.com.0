Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBCMP5DZQKGQEEUOCZ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id BF247190E7E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 14:13:46 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id b130sf13543558pga.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 06:13:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585055625; cv=pass;
        d=google.com; s=arc-20160816;
        b=ykfmDbPvyIJVfCDXcV8PICQNQwgxSVQdxy0tWjmwNB/xNJhG/gb/9yKW2dWv5fjcRH
         Ueq07weM7JRZPHtlvLf9Jfv02M+9xIKaUksBgtbbXqL8TsOr9EobaNn54OjjliK3h7CN
         cP6I4rAGW1vkvNasjbyu5OZu9niYDQmGpOePIn99Y2/9XDt0NNGfvcBc4JeT/icOIuO8
         5ag9iW/Pi6DIsBaWQgv9YpeX+c8XRSPQWvCdCTKVoSCOHrSJy7bqcqZlhbkfAyC0vi5T
         sxq1FdeQRnofFcIng+WiGaFBWEp8aE4jHwmmQBgzz/W7Za0d7pVmRBcfSy8vO4rVwFWZ
         TLBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3M/hh4a2U4dC5whVahWYzHnwVV5NqJ4A1BdMCKnU+LQ=;
        b=erDMScLkvkOU/Sa5OoDQHpJHLYq9lbdEvfKNJ195ZDtZwBBu+Shs3qJsNHsfCYtLSN
         OwZBXTeuz9ZmotYP1+CAi9z/koyD0OIduuvJHMrnujyPzGx/mMBSGXJohiIEBBw5cFbM
         Rty8OXI2uoeXnvJeyinjY+PmFBaHXC5ErT9sG32lwudLlqcN9HNMBAgys3xUrbTT4mQ0
         QxlLH22h/qkWEGv9pWqZYHcvI7iOxfT4nUV2NXDIEsbR07V6nAaATWt3gPdlmNbKNeOz
         UQC/mgbEz7h9aZUVm6Cr4uk6k9CCdid1BgYePdMYU5i/2eSpJONWti/Aa8F5NyskRXwB
         6eOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=UXPufJQb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3M/hh4a2U4dC5whVahWYzHnwVV5NqJ4A1BdMCKnU+LQ=;
        b=kJIsfc8He2d2nug5V+FWYH9rfTXR+NXwVpHGNSU4LL4XL3EqgweRDFXxVu3THZMgo/
         qID5KkgsTuC3JeotGXHM5NsJ2mpijAbci8V+oPaG6zZ6LeawkdODEl+8mAoPIl8YOekE
         iyByZBUvdSPWVHIB54896UAO9Oypt5fb+7+pS/dkzkXc49Xivv84uOP0/8iJZhtIlPV6
         iaZeBnR7tNojquXxetAhqAwD5f6pmBce1bDoNbl/eo0aY3CttreC69Emcon0Y2VcX/VT
         u4NXmI6S1jhkUxCobB3P3ffJud7Fe40VGe3vwm5tVj5USc59Yn/ghIk7IrXFZE/ZiLby
         joiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3M/hh4a2U4dC5whVahWYzHnwVV5NqJ4A1BdMCKnU+LQ=;
        b=MKVxpHmfk+0v3Px959JwaPYBVIt0qv8swSJGnUyCaRK8Zk4UuoFL1ZjFBg432YCrq3
         w0CfLJFcOaHEhWo7Ybb07XVhSU7dOhGHWfgCf2L+R9SuRJafeOqYcDMmARPMIIp5yscG
         6B6kvLDdVy8deBZWmwU/VleBIscOMpef0PloBly7T5UzqqczpftSf3lU1ZUz3FFGH/wh
         jiV9eY5MbyR6tM10TbS+SgnmDyITuWDnoZdZrRu8H8nfZY7nfrLSwm048jq4kIe6PdjD
         Voa9c9Jiv1UQxMN1691tTzwhyrpgRKIs7DL6TdS0i87CL6728exBhLNCv0flURI5R419
         pFjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1iVK/foqBbEer7maHnMKDtwizoQaMxAcKYce2SoYn3cCXghkl9
	aIVG699W1K0bHXBRHfQATpo=
X-Google-Smtp-Source: ADFU+vuvc5H7yQ+fGPi500J/kTJ+VJK8EK0cEh/obDsOkXrCflphRC5YTQTg5rFXksBpCWv5Zh+CSA==
X-Received: by 2002:a17:902:d898:: with SMTP id b24mr23864877plz.0.1585055625386;
        Tue, 24 Mar 2020 06:13:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls1826559pjo.0.gmail; Tue, 24
 Mar 2020 06:13:44 -0700 (PDT)
X-Received: by 2002:a17:90a:bf08:: with SMTP id c8mr5544191pjs.150.1585055624846;
        Tue, 24 Mar 2020 06:13:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585055624; cv=none;
        d=google.com; s=arc-20160816;
        b=aOwiHRFKUWzhUh9mQA/+VDDz8fTA89/S0z4eEPTYgGxSkGl+2avf+TMQEPSlJjGxR3
         KpJIlPuOrzv2wYV5Kq8d3X7Atlwtq9twX7GkDFh/Y/fmDBe95l7Zpo32F2gYMZgql9bP
         uuKOwagI1UINUXa/ZX8aUA1z1k+GHly7zgMAVskIv3CSC23gIVZVwcltNouPRvFxfmNj
         +nFOfWvcgNvYDd18Hi7QhcBf/zySWVBwwNjgzAp0DYYVzhoAzpIf8klkMW70AUSMYq98
         pGtHu8FA/o9y/jCaLKKX2m5GHF7ihc1Q4vtovhcA+KADCQfjC+knu2N5QhXjDS8ETfuq
         3fiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HXsYg23E0Iecnw5MYyoe/vIEqiBkVzrXX9l0E/D+Zo8=;
        b=dNglTkzk+BDBS7UAtAY75Hskh+cHVA7KyHeyH9s5zOVkTWCPbxS3bHH15lEzERbLDI
         TYXYG9F/gNyrwNNcMHL3MWZ+G/CHZwHw7K0o2K8L7iA43TVKG24mPHsZmTfCE0R7Tp7W
         odsbQo/cz02bRYjV1oWY19RXEdZAZ1j9/tE4HVukP2ZiKjiuNWQul6EGcGPqMkrlZ0OW
         5X8KfQcC3HaJuR3+vbSgbszILWJqyY3+Y9c7l+o8NGfbejT+apI/q5Z4cvEo6O0WjSKh
         5jApM78jixjZc6XMVwnfbjCUIuiB6vuKjXnkJzjJQXOgVbw96cFAfC7DtfJgX8zlVEqH
         Ds2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=UXPufJQb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id r76si994439pfr.2.2020.03.24.06.13.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 06:13:44 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjNE-0001TL-7l; Tue, 24 Mar 2020 13:13:40 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id BCFC83070FF;
	Tue, 24 Mar 2020 14:13:38 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 995C529B1EADA; Tue, 24 Mar 2020 14:13:38 +0100 (CET)
Date: Tue, 24 Mar 2020 14:13:38 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"H. Peter Anvin" <hpa@zytor.com>
Subject: Re: call to memset() with UACCESS enabled
Message-ID: <20200324131338.GG20713@hirez.programming.kicks-ass.net>
References: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
 <20200320101455.GB20696@hirez.programming.kicks-ass.net>
 <CAKwvOd=edOBdTL=FcmXYuN8crykrEoJbfdVy4CmKL7ETj_TpnQ@mail.gmail.com>
 <20200323212538.GN2452@worktop.programming.kicks-ass.net>
 <CAKwvOdm1fPpdwoEprcvp=yKWWWP752eXj7zYnJJZ8TzYsx+M3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm1fPpdwoEprcvp=yKWWWP752eXj7zYnJJZ8TzYsx+M3Q@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=UXPufJQb;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Mar 23, 2020 at 05:39:30PM -0700, Nick Desaulniers wrote:
> On Mon, Mar 23, 2020 at 2:25 PM Peter Zijlstra <peterz@infradead.org> wrote:

> > I think memset, as implemented in memset_64.S is safe. It's a leaf.
> > function (no fentry or any other CALL out).
> >
> > And the memset() override in kasan/common.c calls check_memory_region()
> > (which is a whitelisted function) and then __memset(), which is the
> > above .S thing again.
> 
> The compiler is inserting calls to memset, not __memset, so
> whitelisting calls to __memset doesn't fix the warning.  `memset`
> does, 

Right..

> but do we want to be whitelisting that regardless of
> CONFIG_KASAN?  Linus and HPA were hesitant:
> https://lore.kernel.org/lkml/5127C62D-E97D-40B0-85B3-16F30B7ED514@zytor.com/
> for __memset. Should I respond to that thread with this case of
> CONFIG_KASAN and Clang?

Let's add them to the Cc here. Linus, HPA, clang is 'optimizing' some
code inside user_access_begin() / user_access_end(), namely it replaces
the two 0 assignments in sas_ss_reset() with a single call to memset().

Now, memset() isn't a whitelisted symbol, so objtool complains.

Previously when memset() came up, there was some hesitation to whitelist
it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324131338.GG20713%40hirez.programming.kicks-ass.net.
