Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBX7JRKCQMGQE7UX4I5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C752383C2E
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 20:24:32 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id n2-20020a37a4020000b02902e9aef597f7sf5312717qke.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 11:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621275871; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sbl0XEYY9pznLKGSuPPyoEsSlm+ArZROLKdLzhowHkSPaqM/OV4bTLP6nn8O4U+0R+
         IkymDOWkSusdlTraXjU+81aSXxJx77XrpTeTy3hLHCEL3wDu336unto1IvSVASbAlAF0
         jWbnz0COzMfm71VOmZp7nUGLs9yLThM9fbsAl7RAuZcVk8noXqhMKZ633YwNUU4VWRmG
         hcS1AuXnO6uWwCIYwA5zo42TcO3uuxbMgLKhV5lg9gSScuv7HiNeAnhuu1vPun1GxI0p
         LPZ+N4aD7RoYrRqo5XjQzSTRKOrk/y8mZ5FlMBYbDsyPqaxte7WJ9F2Aa/w42M5jqkEH
         v7lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=AyPVfNvMo39TPPGsvmhCD3ses77xxLPhgT5OBGfeZbs=;
        b=09SkBeRRDRgInJxdUnFyvGepydEpukZAiEpyoB5CiiPjVZl2lxZC6B2Uf4WFZ2ShGU
         Q/cSvl32P2XSwNAKvd4boh3RjT4XflbDe0HVvkFraJC2KftXBsG9D7B/FHhzvA2m9VZx
         NxZ3SKvfrfvK9XVkit0jGg2FmAUNKKvYnVuUze1rUysdzDyA+IpUJDrWdri2t1thJAHu
         bVuYbsKj01Et8mfL56DKh7lgsQF1AXsiEaK68nq2oy9RNRReCTdUU5rmdyFnnT/IUSOX
         zqW5/UmXNXmJvugV+mc9XsqlpXTUhc6vOQnXR+cjgiQ1Dg9+Bu9S+3yqflBna7a/zi42
         C0cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="WdgR/t2M";
       spf=pass (google.com: domain of srs0=btmv=km=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=BtMV=KM=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AyPVfNvMo39TPPGsvmhCD3ses77xxLPhgT5OBGfeZbs=;
        b=YyJFzZ2uwUXXoZ35jHfAkwPBJt5KnGAFkESJ7dP6wiJyqZ/KEqw+96tO/30xEtkEe4
         v7DjuM0OYlv6YBMHO5MUjBh+v9vkKmg0Rx1+yB8DW6LIVAzdg1N9rgTE2GaC/Pmt4P14
         dwIY4UNbBSw2ZPWMvQcrc7x3iYUApD2cA25MY4MHgzZUfqC7eXAIG6cfJg6fcQr3MKcH
         4eIOc8xm1K9q/eujnkLXJyhkz5chHDC54mwRBu2HMW+I9BmyILWRtjG5gdPkrWy31kJ1
         dRzNkRL4o9Cf0YYJ/+rrburTARkKMs1AbU9WN9GniQkdd5glDE1HPN1xlrTA1A1o8SuD
         LcIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AyPVfNvMo39TPPGsvmhCD3ses77xxLPhgT5OBGfeZbs=;
        b=aaJP6PeX1YnBes3nMtCMcA5dQUAj0LJSp2x0MXY+8+CJJo/JzT/jaloX0/a2ckyeqe
         j/zIvQKZA7V8zgQlJY2dXQwUDCPVCHujI6OwFAZYcYq4Oh27BFnjJrjiUZqKjIwGqma5
         XRveh98otW9SJxdVhN/X11ozsqD4wAWRjHtNmUUI2pPDBwxsdI9BMsmy/vNG5c+YcwYI
         43qbSy3qHSYZFmSwxZTg5jrum1V0TvE0FGxoX/oKUWGUOQSbP0hd+SRk8MjlA9l/s1Lz
         ebF0KYcm1Pw6o92rOHljl07aNLiktSvt9dIBNVBR17nf7Cj24up0QYJc9kLF7Lg9PgDP
         IeKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kJMDPGL7zM8elg0cYrX8yi6c1VwgSAFp4GvvuviQG14NgcxrC
	rJa+mAc2a/xfqTRdihqh4Yw=
X-Google-Smtp-Source: ABdhPJx3O3cjvY5/HfgNV5TIpf6OrP3Gn0PQgTuluQRiQDxxP7FvByfzvu4IE4xxFMUQsKkpUBUpUw==
X-Received: by 2002:a05:6214:2243:: with SMTP id c3mr990911qvc.21.1621275871192;
        Mon, 17 May 2021 11:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:226:: with SMTP id j6ls5487764qvt.7.gmail; Mon, 17
 May 2021 11:24:30 -0700 (PDT)
X-Received: by 2002:a05:6214:18d:: with SMTP id q13mr1349759qvr.60.1621275870784;
        Mon, 17 May 2021 11:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621275870; cv=none;
        d=google.com; s=arc-20160816;
        b=NydCSQjhjGxJnDm8uBxci3Pne+5mIxTOgajZB/Goij+p+5YUfx44uOjv5wjdS6xhg0
         1ZbJLxvL3XfIV11DB/FCsNe29yOgXcxJ0eYTQtNJ0yF1cmyvJQfQWSGg2O9kC8PmGFjR
         BC1kwNV5KyHD9hSG5esfq0zlqwHlh/0xQWRh8831jphlgPkF3tYCDLcDQPI4worEfmh6
         pbrvthh4mmvAS6rle8iHVmqBsc8ayBew/38tcErkGepFKXcRREpqlwsZHaTSYZlSoSLe
         Bj2dHbBVEtH+ERN7RN9t3SbkKQf2XyH8TBLyTHkJG7GW0qdtSMr2jyOQ5fmyzwz/Ti3O
         w/Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2ChLCmCRjW4N24pxnrG3xchAhED4vI3Qc8c4bn/xBCw=;
        b=P3j15UDsIIM1EWk9eD31jjYajJ0k7hZMQlqNTks/k54MqeR+TluPebxagLATo7r1GM
         DQSo2bcaINeL/oweNUW3Aqy1uc8noRmV053oC+xgj34IsTcUjPshMDuX28jASZxRTdWF
         tGUbL+ZMq0FaPwdfXXt/7RmnE+bjAC5L+EjVDq0G9fz+6nBFBqynNRqNcq+M3dzJJyb1
         MMW/ePrEq9MLDbihqTVXfyfTUjaBz3670JXgYKoeQ5/j+wfRP5MWYvnMKFGqNhP6SaKV
         tflVJmRagp4QhtwmBmwAx5jXqN7HOZw0+f0i62czETaZN9JjJDgcZuT6QskP8NFVW8/h
         u1Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="WdgR/t2M";
       spf=pass (google.com: domain of srs0=btmv=km=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=BtMV=KM=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x24si608335qkx.3.2021.05.17.11.24.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 11:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=btmv=km=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A52D761004;
	Mon, 17 May 2021 18:24:29 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 5DF9B5C00C6; Mon, 17 May 2021 11:24:29 -0700 (PDT)
Date: Mon, 17 May 2021 11:24:29 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Marco Elver <elver@google.com>, Arnd Bergmann <arnd@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
Message-ID: <20210517182429.GK4441@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <20210514140015.2944744-1-arnd@kernel.org>
 <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
 <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
 <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1>
 <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
 <YJ8BS9fs5qrtQIzg@elver.google.com>
 <CANiq72ms+RzVGE7WQ9YC+uWyhQVB9P64abxhOJ20cmcc84_w4A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72ms+RzVGE7WQ9YC+uWyhQVB9P64abxhOJ20cmcc84_w4A@mail.gmail.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="WdgR/t2M";       spf=pass
 (google.com: domain of srs0=btmv=km=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=BtMV=KM=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, May 15, 2021 at 04:19:45PM +0200, Miguel Ojeda wrote:
> On Sat, May 15, 2021 at 1:01 AM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > FWIW, this prompted me to see if I can convince the compiler to complain
> > in all configs. The below is what I came up with and will send once the
> > fix here has landed. Need to check a few other config+arch combinations
> > (allyesconfig with gcc on x86_64 is good).
> 
> +1 Works for LLVM=1 too (x86_64, small config).
> 
> Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

I will applyon the next rebase, thank you!

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210517182429.GK4441%40paulmck-ThinkPad-P17-Gen-1.
