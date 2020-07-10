Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYNFUL4AKGQERMYL5BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B57B21BA60
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 18:10:11 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id a203sf1806769vsd.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 09:10:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594397410; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4OC2dTYkAbMQmk+9MhFDP/B93iEoJ0Ckj13G/cKzGJFtNwjRUBOW5kvHbGgi09xGT
         C2Z4nxxZJekbiezXZFaydl7+9Mi7EhtwkhCP2uHElFyEodEDACkfkeEdFtfwi2P9GU3p
         AONt3lKRNjY3u3j4C5XfKHEi7xvr3hJORyD1WNWDfFNmMEO6hZGD8QPPmhUlbFrisTtA
         7QxnKbDwfupAcyjFxBkPXpOjxLHEJHFgdZ7stEL/JlZPBXeL8xi+ZFszvQcilFOaqZ0+
         O88Q7NsQTZtmxUM1IMiWfQsRpLQkmDnUAwoTO5gpqh/ZvxSEgULIr/mUykfK2coyB4aS
         q1cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u8g9vCdKG7kaFlePtvisHpPDyb3YJDbLPpiPrj8U9Ps=;
        b=CY7dBbIfGX9qplKV2c6kdTZXWRyR+Qh5KpnRnRU7AEKELkpZHsRhxR1F1zWGuZDUnO
         9kwDUGdU04cUEdUngWH1BW1KpOX//Zl2InPh2dWIOcgDpJalCaduRrSn2JlHMVHv/xy0
         2z/PR+1kjnjshaGCCwbDCX/nwqc3PADIpHGLJrbYF7XftNuKkU5GLgovEQUcnbY6idfJ
         g8ab1V3QNMzAPa1ijuCx8XVw9NECM6fKf2F7F3VNVhVV3w8Bd6jXVt8BDzXdZBuHkUt2
         1fzj2ZrYhfCyaOxh42FPTiADEOZD8V/x965x5cmdScmI+d1C3BoIJ1hdCxVQ7VnVOPb7
         MsJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eMbg0eTO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u8g9vCdKG7kaFlePtvisHpPDyb3YJDbLPpiPrj8U9Ps=;
        b=RI7T8XaN4cIBSF3/s4BMUWSCNTfHSHc3p2jV/l+nGQM52yVDJlpXhhLoCPDY2nNmDh
         luEeVHCIvOpLhlzwjfyExwmfQhm8EwpkS9ZkCnn5ZUDRHEI+1qZ6YNvdF0gaSMgnlcpl
         DE5Nh8N5YGgaa0F3LV/wjxs0Uki3/9TEnKMUnNIaFNrORee2qZJgTHROZGG5GcHlNmNa
         uDwNSdhdE0v7Ev882VAfDzThQ7ncgYuhC37tQKvV29Dcv6/mfWQTa/OZQBBUkgS6dsUs
         3K8+PTC6pXZ7/bEUlcceGyACTBzFMYWvkpKLA6qeYtuOFukbOQw2OhA2zX8/BsRF/KmX
         Wb+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u8g9vCdKG7kaFlePtvisHpPDyb3YJDbLPpiPrj8U9Ps=;
        b=WeK9phLp5pij6uDv1s1yco7QrUEV+FGj2UJ+7Cdbq/sFaFqvRJ8HxHG1TqvCf6qXaV
         Go2XShaW6PJWk5MvD7c1YmUd4sv7rlvckkpX6UrUTT5ZXcZv4gwy7JYQUjJan/FxgxI2
         Krxju28SttBeRkoVKO/7HQPmBgwV7qpGteBZesQ7SiFc4F3RTXzAAYMFF/ATgEwg17Rh
         M1PoYDBH+6BckHZhNwIinSXv8A0IXQRmaHMjGYUDVaPMUEH3lCjD8ttnakmFE2FSYAnA
         GsBcONEW5zKi14xxKiYahlhDjf+3vavXcXWA2skWUxRIrHgsDx1lbKNuvFxhfkYK+oGz
         0hmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j8J9N3vj0tjvPufiF6I2JNK74LrAtMe4IYg0FmwXqizvBHZLu
	BBKe8crl+rmwIe9U0IElH1g=
X-Google-Smtp-Source: ABdhPJwdqq9t8EI6RfkG2w13GSdTijOn0qR5ujdfm/GAHNc4HQ692BkqOEPWGHU7r0XTyCTbIUGyNQ==
X-Received: by 2002:a1f:c783:: with SMTP id x125mr52559470vkf.2.1594397410048;
        Fri, 10 Jul 2020 09:10:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5515:: with SMTP id t21ls697323uaa.1.gmail; Fri, 10 Jul
 2020 09:10:09 -0700 (PDT)
X-Received: by 2002:ab0:568b:: with SMTP id a11mr50625744uab.136.1594397409621;
        Fri, 10 Jul 2020 09:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594397409; cv=none;
        d=google.com; s=arc-20160816;
        b=WVmBbi7Y8JbwE/K1OHx4UiCKJSRPMjazLWoNrwLEof22PMhCAI9kI82DVuWpufp92s
         4TFaA39sruSrJgnwf/se2tlhYxg4qisgCzXPIwwK6drLOHhwgPZ1o51UPnOoFpb3I5xA
         uxYLc+D6LHok2w/oSY1byoegZfyVEkB/RFeD+Aj0c+ll2Zmt2qnb8yLs+kb1AVJFw0y3
         sfDcqeW0CYHnwld8xS+4yUxlkCxzbjiaaqkLlfcLmE/zL2z9VJoQHFQ3mGPEd3cjGuPm
         2/7fJ0K9Cqx+3RbMOxM+7CEoSJGFgzYMEDdTHrF6d7Cz99d74pEVrJXNTTbD2qTd6lwv
         4zoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zmW8ec5Dt+lImhfBII8mb3lOzcmhvKNb+zPkMO/QQ5Q=;
        b=RukwadObnoCqzHxiI5yH15iiKDUJYx/niqAxlBOSitlaUXkc5u8NqtGMcEL8y5cHkm
         3dAiYm8QIg3ttNj0hnCVOTfvXWq8Lk2I3EAzSIiO4yPraglrvEYMkSDjGKzxkI8xzRmn
         oEZwbw/qhnp4oKXRX08/8m9sqIu/q0oDZpu3+tPEWHV5mFW3SjZkh6LHRI8p6CRoL8dh
         HnwOZkb1z1QmpjJBxZNjAn1e3Cb8P06cFLCfdZYQpL8dimQch4dtFhI5TuJkRxxFQbKd
         wrADnXWdOObDWXnEWfbSyMf8hwu4JS4LWAACRYdUknsrsArnr0AxxH58Wz5lXnVEozfa
         8nZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eMbg0eTO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id e10si401949vkp.4.2020.07.10.09.10.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 09:10:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id md7so2819206pjb.1
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 09:10:09 -0700 (PDT)
X-Received: by 2002:a17:902:9f96:: with SMTP id g22mr15261428plq.306.1594397408754;
        Fri, 10 Jul 2020 09:10:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id lx9sm1412890pjb.52.2020.07.10.09.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 09:10:07 -0700 (PDT)
Date: Fri, 10 Jul 2020 09:10:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	Greg KH <gregkh@linuxfoundation.org>, geofft@ldpreload.com,
	jbaublitz@redhat.com, Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <202007100905.94A79A7A76@keescook>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
 <20200710125022.alry7wkymalmv3ge@wittgenstein>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200710125022.alry7wkymalmv3ge@wittgenstein>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eMbg0eTO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Fri, Jul 10, 2020 at 02:50:22PM +0200, Christian Brauner wrote:
> On Fri, Jul 10, 2020 at 08:28:03AM +0200, Greg KH wrote:
> > On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
> > > Hello folks,
> > > I'm working on putting together an LLVM "Micro Conference" for the
> > > upcoming Linux Plumbers Conf
> > > (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> > > solidified yet, but I would really like to run a session on support
> > > for Rust "in tree."  I suspect we could cover technical aspects of
> > > what that might look like (I have a prototype of that, was trivial to
> > > wire up KBuild support), but also a larger question of "should we do
> > > this?" or "how might we place limits on where this can be used?"
> > > 
> > > Question to folks explicitly in To:, are you planning on attending plumbers?
> > > 
> > > If so, would this be an interesting topic that you'd participate in?
> > 
> > Yes, I'll be there.
> 
> We actually had this dicussion a while back and there were some more
> people interested in this. I'd be interested to attend this and I've
> spoken with Kees and a few others about this topic at last Plumbers (I
> think Greg might have been around for this informal discussion as well.
> But I might be imagining things.).

I'm quite interested in this topic still, yes. :) (And will be attending
Plumbers.)

We had interesting discussions with the LSS 2019 "Rust in the kernel"[1]
speakers, and I know Nick has reviewed their work[2] too. Perhaps we should
reach out to them as well?

-Kees

[1] https://ldpreload.com/p/kernel-modules-in-rust-lssna2019.pdf
[2] https://github.com/fishinabarrel/linux-kernel-module-rust

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007100905.94A79A7A76%40keescook.
