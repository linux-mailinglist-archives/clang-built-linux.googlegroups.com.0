Return-Path: <clang-built-linux+bncBCYIBK4PW4CRBHWSVD4AKGQEISOHYTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B6121C649
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 23:03:26 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id u68sf12135135wmu.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 14:03:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594501406; cv=pass;
        d=google.com; s=arc-20160816;
        b=HnEUcGzpJ3SOjUqNnYl3INhYQYFc5vxIbBSREWALjFCej3jbP5o6g8fCXRzoGGop4E
         f6KHamDlTY6yCaJc4cJP2+qymIIc3kW+Q9HQcEheMLyE8349I89asQvA+gFEUlXTG/nk
         ibQrwSvmMV/fSoO2F3CAlajgrF/KtBn/3uZcZjsrm8w1be6yUxChxmHWzHHoLMrbk4IM
         Vjs6jBVJl8wqnQZlfENs/U7DtxG9sXDBdCk7dGRnnrpXzFyShG8qY2A8neTM5+oouphQ
         /C3yx2OtcXpRgHgXvri6+w3pNcIeoDn8usdpfrXoTMo9+2pbH9DbUITWYVydRNYw5J9n
         0mNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nAyawNWfZwQXuCFnKT5HGxQGttzx5V1M9oZn5hWr6Bw=;
        b=BcssXrbxcch5Lklo33KFqP9bJrqNYOea64uMgG9oQWmQAgyNBlABmCaKPdkCLz4Z9s
         ktqJrBRmotb7fg8MboMCW/c0dFxN0Df/USmyX3C2qIbFmk8Tbx5BTbgzwQqfwwWzle3n
         uebsvDUeVBoLaHcJhvm/pvWK5oF8CjPCMOR27yaiCLnR2mPfsSIGAFjIGMV7oHz5ZQEy
         RpeB7ggsaCmld0G1CjQiO5guK2z4JU89UdfrySQRD0Cm4cQDlw9KJmpwqEWed9ZAukm0
         eRYCTrp69u1w7liiz1RsMsExPN8ftkUzE1VEE9rE1/zO08clc6qupIJ6nse+Sg87yD7Q
         CgGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nAyawNWfZwQXuCFnKT5HGxQGttzx5V1M9oZn5hWr6Bw=;
        b=mV9PLH4E6NPnEp347A8glgXzzJ+5zlPLLEvQH7zwSLswWJluqpL52lN+hSKh8B3M6m
         KKwb8zAuN0sy37cM96zAucEtUSnuUl+M9x/Xp/UrYTZCWE4agZz5sK2yww4zN8Pd5BrW
         5Mdt+xDR/UeYvUqeAeXi0P6KYwv+/HznZup5gmjcNEBNbEayvyO02P3Pnur50N5Mjmvj
         6ke3GpNvEsD3rjBtbvJqCcY1v3mkzITLtpC8U40JlNHdCeB89wxo85j03qTWpRvNA4q1
         ULlVgiOIi3QhEmFuKX2KMSFlBcvrIa1mOZ2k7MX40oGooDY4gNPD7ZGF7uD/k/WR9HYx
         Hfvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nAyawNWfZwQXuCFnKT5HGxQGttzx5V1M9oZn5hWr6Bw=;
        b=Q36SvzE7N5SXmzvQniZIry0q1mp9upoe0R/f/akJiAW3vq4h2QSfnqoVuCCv9EDDqN
         yTHEMDA7qzaFHb7BnzN9Lcrnjl3ieG7TO2ZeaToAYLkdpYgItrOsvsAOOS946JD7oxPX
         rrbhTolv9wLjabj7ZjHGGBgu9J7wZwMYzUxA8EU6vMHnA7XMA5pQRmlzpPHDkXh97kq7
         xpUIQzeYQfiSRG1w7eGBMo3AwAYtZl+aCrG1YteetvvfhQMpFe0ggSNhq9H248zDyk8X
         kOK2kZGVH4nMcOuZshFNsI8ZcjBs6fuZgkUoez0jQ1z2N4T9x7QcSmLfctdyQut22gYx
         LPIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TG4+FWnGUuNtakCrCvJ6ZT0msc+Y8FHBV0ZxjE1AlDF3UWm9v
	vQGBJ+Wvh/uR65Z5QK+n4Vw=
X-Google-Smtp-Source: ABdhPJy8Erf9yeQ+FXG20RaioV0zrZdDkuqo6BWA7UQh25XO0fY2mysTNIMOw6f1TqSCEXgtF955nQ==
X-Received: by 2002:a5d:6651:: with SMTP id f17mr78838791wrw.29.1594501406407;
        Sat, 11 Jul 2020 14:03:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls4282607wra.3.gmail; Sat, 11 Jul
 2020 14:03:25 -0700 (PDT)
X-Received: by 2002:a5d:43d0:: with SMTP id v16mr77126899wrr.296.1594501405942;
        Sat, 11 Jul 2020 14:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594501405; cv=none;
        d=google.com; s=arc-20160816;
        b=OMpEjHoVAi08aXEDqId+whoxB7d54kvIP19hGVfxdCXrAIJccYNz6XXO04k1gb1dm2
         UdMlZqAUJvfJaYhIgQN30lkVoWBK8OjiZPnQxNMa6zfkzP09KPRLg6uVyFAIna6E1nSb
         qkbE22IaY6V0qyILmaAwn0v71ex6CsGy+XDOczUOX8soNSrNReEjvetfjd5n6XsIN+f5
         ZQTQUKDsNeJF59ec6lsAVyb1F2IVXTk7wU9GE/vhUcpRmOzxc0CCPoOCfzobRJmMroSZ
         FmYxUOF80bWHs+NjJAhptYt6lSXqcV5h2aVmW6TdUVaVAqkPqj6+9MxV2t7Z/khIIaTK
         ZmLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=bN3GQaTqb/bO/dlvgE1xGAMKj52Y4+wosIIoRHaB25M=;
        b=LFzaRsl0brvngaX0GID2KfunK9mKomMV/bCmqYf7CevWOQyf3Kn4imDJpP+8wr21uF
         TVT3EZBDVF3PfHXbVu/z9LLqXytsvL2enVW7VwZekNhr6PV5c7Ofvc01sTnHUPONP4LJ
         pFfC3kjxSFnJ//90eCh0FvFFeFZr8po9YezOZ59nRwgWd9CTnOzFKrwMyjVhskMgRMy2
         XuJ3gg3Ad28RqpL56KlpYEBcM63guC+RYvJdNXiS6oQhNvqxpSH865eL9E3K/tYedC0E
         SFC3OApR2LXqoKEPIaSBrF4tdd1Hb1rlYZRYcG4xs0U1rJU3Bg2JqE5lZ9WNfKWWFLzx
         g6KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net. [217.70.183.193])
        by gmr-mx.google.com with ESMTPS id o201si442711wme.1.2020.07.11.14.03.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 11 Jul 2020 14:03:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) client-ip=217.70.183.193;
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net [50.39.163.217])
	(Authenticated sender: josh@joshtriplett.org)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 16A05240006;
	Sat, 11 Jul 2020 21:03:19 +0000 (UTC)
Date: Sat, 11 Jul 2020 14:03:17 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Christian Brauner <christian.brauner@ubuntu.com>,
	Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	Greg KH <gregkh@linuxfoundation.org>, geofft@ldpreload.com,
	jbaublitz@redhat.com, Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200711210317.GA60425@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
 <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <20200710225934.GA16881@localhost>
 <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
X-Original-Sender: josh@joshtriplett.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as
 permitted sender) smtp.mailfrom=josh@joshtriplett.org
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

On Fri, Jul 10, 2020 at 04:54:11PM -0700, Linus Torvalds wrote:
> On Fri, Jul 10, 2020 at 3:59 PM Josh Triplett <josh@joshtriplett.org> wrote:
> > As I recall, Greg's biggest condition for initial introduction of this
> > was to do the same kind of "turn this Kconfig option on and turn an
> > option under it off" trick that LTO uses, so that neither "make
> > allnoconfig" nor "make allyesconfig" would require Rust until we've had
> > plenty of time to experiment with it.
> 
> No, please make it a "is rust available" automatic config option. The
> exact same way we already do the compiler versions and check for
> various availability of compiler flags at config time.

That sounds even better, and will definitely allow for more testing.

We just need to make sure that any kernel CI infrastructure tests that
right away, then, so that failures don't get introduced by a patch from
someone without a Rust toolchain and not noticed until someone with a
Rust toolchain tests it.

- Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200711210317.GA60425%40localhost.
