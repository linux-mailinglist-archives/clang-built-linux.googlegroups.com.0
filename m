Return-Path: <clang-built-linux+bncBDPPFIEASMFBBSGB6H2QKGQEVGBSGLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id D88651D2099
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 23:04:12 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id x26sf1036073qvd.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 14:04:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589403850; cv=pass;
        d=google.com; s=arc-20160816;
        b=cPtyoi7K2x0Ce+euTt5OWC2XSlOnyettieFGQhGwBKQEqa5tX1o1JWAEePyKZl6rur
         DZov657RciMO+bE2wNXp18FXznkZLjhgyXFoihg9A96vTnuqTnTA+V0Cqkybhw985UI9
         hi0WV4nrMS+3FjWpVglQc8++DMXlmNwP7CjGwjo7UVimdh7lGWtGTwaiXNE1jnTaaHNb
         tHjdd309t3SBZQsrEBn4JEiwIy2HGGcHAquG01Y6LK19cKrlzmYyyQfmy/HZahW2cjvL
         kAQeKmUTihF4Qke+D33JBhUF5YjbBtf6KtIFmLh3Z3KnWGOsI1ZdUXMsumhFptjbEZRY
         /Tww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q1X83hn72UH9rqY+BbpHj3eHxSModGduEe6Slc6P/dE=;
        b=YxIsr6F5X4ev/tEp79PI/F/bjN5oSgQqM3oz6jQfySv61Di21GdFkr1A6l7j/WvEND
         kRCMJBNXQT+gEyf5v0YwkZblOMwL5ZqO/SeY+0+0SUizKO1s6rP/jDQP/c3/B9YphIfT
         bz2pe7Il6EedLYJX0btAgUz5ZhBRxrYEceGcAnYigitz/oUG+d97i0oAocZYmcRv1o55
         0CKyJlp2lbNmJ/JRUxJLXo1VY2x2yrCeTXFboGp7EJTdO6WA4Pre4wuOq3kW5JBSWyb2
         H4VEN+D7voFnhv9FyM5L4erGJDvZMNduWQu20UIHbCYX7pLKWYwvzlHSO8tZoE1coBl8
         YFKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ZhPd/SkY";
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q1X83hn72UH9rqY+BbpHj3eHxSModGduEe6Slc6P/dE=;
        b=brvpSxk0YVnGiilVIGtWYoEzXeZCop8n7u+DINoJLr6lQVjWCW4fWesIsg3K2D58zf
         WSlxtUoJsLxAPjW6HT2u+6LYCNPCxIXdWfHF0wQNJCrwaNaWdTqEKRPKbRS06GqUHFjs
         A1j3k9z5swQHL6cO9NdyQPhs144xpccu8O2rhGeQd+ZMRDfAKt+yFj2IjF32W8KJI66L
         FqYLCn6qnemtnhxDW8Zag6OFVY819z3sWnwjuw53dp2QwEgRR3YNRv2agL5B8/ZD0/R4
         bffrvXysf+bRr8sHLxJA4W3wrC0mhA3N7qJ45hS1vL373S7FEUI2p8P4tHVYXoDD+6ZU
         e6XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q1X83hn72UH9rqY+BbpHj3eHxSModGduEe6Slc6P/dE=;
        b=ATQSHPPgIJ7HTq4NkP1iaB0nx4anZGSPIKNbIS0s0FOwpl7yGYtGpkT93bHxHlil9e
         ecPAQmmj80OyFVCKgZbuLgfDVSCREwwXBVCVdqKI7GKvm1r3vWinSus9OvaxgTB1mAEC
         C8OtqTJ/4ZlvX1Cx94ZXh0nlMI4YZkQZbSEyXylfxavDF06zFAELyuUyITRqnJxHDiO2
         Mb6X/uWDnQdN5faNLMVUc06ND0j0t7DI1pbEUl4byGNlDc1DwRRkHB1vAFIcspQ9Ujzu
         N1RsEbhMfDULXyR39DnEnEZ/LfeteV9nWb+EZsHNQW7wAqhrMt5vAnpW94XDaP3mKtBa
         5HHw==
X-Gm-Message-State: AOAM531psK0NGeVC06mZ2mc/AeDCyYpV7Y85Sv+ki7G8yZvQ2AilLiav
	/8mXV5IDPSkAsS98hx1cjyU=
X-Google-Smtp-Source: ABdhPJwcyjR5gDPQZE+6pYc6KtQvDfu8xKD3K1c3lmqbWtTKwvTzcB2T8Ubm0VPWjkEZG686ayT8iQ==
X-Received: by 2002:a37:7443:: with SMTP id p64mr1662929qkc.269.1589403848283;
        Wed, 13 May 2020 14:04:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6288:: with SMTP id w130ls477365qkb.10.gmail; Wed, 13
 May 2020 14:04:08 -0700 (PDT)
X-Received: by 2002:a05:620a:1326:: with SMTP id p6mr1722545qkj.373.1589403847923;
        Wed, 13 May 2020 14:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589403847; cv=none;
        d=google.com; s=arc-20160816;
        b=ib0gzJm4k7aHNyR3wv5sAW5rVUKtxgSysOF1gJdlKikz6FzB3Gzwm85KaIqZjOqjJz
         gosGSWi0lLIBCsbFiyTcTZFM2Aj2s/z0iTZNZmUI2fmf/9VRRVsYZZZsK2IU/SUEOby5
         DeE8F+Ttf6SzdDgt4Jvk/6Dc0BpkSZfqqgDvncDkz6pr+GNQtp6xh6dYJ2bY4bBohChw
         ArXXXJxJBdXSom9sZSdcqLEH4yLfgnvgl+qyXanuUGD25wlT9fVXVf1zGdr3W240w5Rz
         8K9jgk6SSa/tgarfHr0BxOslJwSMgOi+KoWBXtkxoeU6tKC/iZZWM/eUj95qjCE1aFqi
         Rcdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q6lcIFQoFqx31VM/1zc8og1yddcfl6h88uvYMor0Gpk=;
        b=Y/NTxlSpEPan6QPDPCLJyToxp9L7CVO8q1tAIgxa/sJDvVHSFjSQtbF+w7qfuqvpzB
         lAz9rFFJmOQ7QYqrdVccjU6okBrZdD6gSZO7q43927eg1qu2RcO+KjZ9p29p6QBsTeMf
         FjSHx9y0QRd3+kenb38zVJJgYgTejwgwyF9oY/O6veWlfHUnRSTNHT7sB/9Ik9iuOjsB
         UAt14F3DRWV6bLJvVEVukKZFVUs9ZSHG/NBkvmaKtnMzwufXfpJ57HahvpjPRAzcAcIx
         +GU1XncBMfqTOxk3f7UlPGB/Ht9JwxmvnQm0W2zge5neipcyPtnRerT8JnT49Ral0WB2
         OisQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ZhPd/SkY";
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id n23si100525qtv.0.2020.05.13.14.04.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2020 14:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id i16so409610ybq.9
        for <clang-built-linux@googlegroups.com>; Wed, 13 May 2020 14:04:07 -0700 (PDT)
X-Received: by 2002:a25:5387:: with SMTP id h129mr1513794ybb.47.1589403847337;
 Wed, 13 May 2020 14:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200511195643.GA9850@embeddedor> <0C076F02-CEB7-4DBC-8337-CCEBC0870E44@gmail.com>
 <20200512000404.GA4897@embeddedor> <20200512080607.GD2978@hirez.programming.kicks-ass.net>
 <20200512180352.GB4897@embeddedor>
In-Reply-To: <20200512180352.GB4897@embeddedor>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 May 2020 14:03:56 -0700
Message-ID: <CAP-5=fWOhnKe1-c39Pg9M14Yet7U1jRvPpKxa7N2A6JSXLRe=Q@mail.gmail.com>
Subject: Re: [PATCH] perf tools: Replace zero-length array with flexible-array
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Arnaldo Melo <arnaldo.melo@gmail.com>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ZhPd/SkY";       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

On Tue, May 12, 2020 at 10:59 AM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> On Tue, May 12, 2020 at 10:06:07AM +0200, Peter Zijlstra wrote:
> > On Mon, May 11, 2020 at 07:04:04PM -0500, Gustavo A. R. Silva wrote:
> > > On Mon, May 11, 2020 at 05:20:08PM -0300, Arnaldo Melo wrote:
> > > >
> > > > Thanks, applied
> > > >
> > >
> > > Thanks, Arnaldo.
> > >
> > > I wonder if could also take the other two:
> > >
> > > https://lore.kernel.org/lkml/20200511200911.GA13149@embeddedor/
> > > https://lore.kernel.org/lkml/20200511201227.GA14041@embeddedor/
> >
> > I think I have those, but let me make sure.
>
> Great. :)


Thanks for the cleanup! It has yielded a clang compiler warning/error
for me in kernel/git/acme/linux.git branch perf/core:

util/intel-pt.c:1802:24: error: field 'br_stack' with variable sized
type 'struct branch_stack' not
at the end of a struct or class is a GNU extension
[-Werror,-Wgnu-variable-sized-type-not-at-end]
                       struct branch_stack br_stack;

I think this can be resolved by reordering the members of the struct,
and may have been a latent bug exposed by this change. It's
unfortunate it has broken this build.

Thanks,
Ian

> Thanks
> --
> Gustavo
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWOhnKe1-c39Pg9M14Yet7U1jRvPpKxa7N2A6JSXLRe%3DQ%40mail.gmail.com.
