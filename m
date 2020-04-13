Return-Path: <clang-built-linux+bncBDJNHL5JSEOBB2NM2P2AKGQE3IVAIPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A58091A6DD1
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 23:15:22 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id h3sf584241lja.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 14:15:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586812522; cv=pass;
        d=google.com; s=arc-20160816;
        b=jtuKQ72NsNlOL34ZH0iEbl1AcRWL2mPjq9bbdjD2kRc8JOK/AGRbXeHd+tb2c+GoDi
         aNanW0ervaBDvnX+Gfegymkw34FjrEkIihl2FuY1iC6/yqtqeJgTqc4RaQhx/6f+KgMp
         V4sBzURM0ZALVqGJ3dxI9u22ED1Jtouhalu2CozTdh0oWPkJmVhBxcrlR2zeKAj4WcaN
         bItYofsUEiT95OV5UdlzETgZ610BNY5LVPSr47rm/Ug3sQn3tBcPwm7rmBA/U0ktPOWO
         VYrDHFBKW7qeCA1/LJtsBPorqin5Ik+ExbmQFXbeWc2hTAd7bZipEL3kyvde57Kuf5/x
         jrUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Pr1zRlk8pmzdpGqJvCIfCKJz6x2TI717OQxFz+8ynWQ=;
        b=viIP+NKdvicILNdiUKoThzUApCn0AAeFRzzXhasQ5DSo8sx40In7C4qew5sU6iH41B
         YG2rDlrMFm/6B1b6AMgkGCrOb3kgaJyyUYd6mDzrb1fJBDy/1KfYOHyyQNAMvETQb60N
         +eN0YIjeA732/WvSK+INigDXKDttPnbRaU9DIgyGBlTL2HQulR+mXi6ESyBJHUcGsCaM
         /CE5R9guXQidJUntfdccLzDm06MYUvji1oaJcWgAHIvaJ6ZD04J0jqhzDSMYAkNzxo1H
         rni8x3nek/G57UIY5raha+9tx2A7h9P0exFPAn3qmUpLO5PFf06o3rwXFCeTquxNbxU5
         r38w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=cOXAiD8Z;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pr1zRlk8pmzdpGqJvCIfCKJz6x2TI717OQxFz+8ynWQ=;
        b=tFsem+UByXHwup3TFXHOjQVscNBAL1ZKwo5J3/PNjHaSNHRXMhVqCU5k/qGgc0CiBI
         P6fxsq8Jx+aG9qvvFtSzTBjG9EuUzoZrf+ClYBObalIeAULyt/owaGWR/LLBLSGjzs6X
         KpvOrBWqapQCquGcbbbUxe76Gp9hfzmCk8nHb/1n6kxS9v2fB71n1tOtpHnSuY6wUoDC
         /NrERccEebTxS6G0sxxYDh0QoqNWZ1IxvJfaJi1mW1u4b+Ay9GPajcTpdxMk6gp+eIZt
         t3WiW9Reg9ku/EGxTuHQNrrnDaXLlfqF71sn0CTEPf2awz1T3klAbb/JeuTbquMZkOD4
         HZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pr1zRlk8pmzdpGqJvCIfCKJz6x2TI717OQxFz+8ynWQ=;
        b=myhh4+X+12YAJRY5Jo0eAMbnitvuBL8ocNosOCPmNk1WxIwtgOA0OkuQleck2ESzmh
         Iw0EQXIBdIn8xkFz0oYdPCNfsJYEDITpLS9QCACYdUn4hjPB68KPviu0M35mo422YMNj
         JwghlUGMJz6O4M6gP30wpEna1X9pZ6tm6ijgDr2ub2F0l436ujFLdAww0Ogi4sfHH3dm
         MxZXosEL6sgdEcWFW+lbcOFjED/ARF+7vxJEhh5faVT8uPIqkFxMNIlaAizG1kZi7Qtz
         34xQyfgau2KhOPNe0RGcWEaBCfHmqr3cAQO99Q2Du1GyvK63KXMFHybdVVy9p3Ifk0/L
         Ap+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaJVDTInTRG8YEbUpXZnCKDQyEYY1L/6BmNptQ4ap9FlpPPwP5j
	ak85kdjFZKWURaBhgkCuoCY=
X-Google-Smtp-Source: APiQypJJopvxHtIKZzXorKCx0C6SnXhEDDjQQrSf6KY5P7/HarOrXZ72vud6MyG1aM+SwP59pNvzBQ==
X-Received: by 2002:ac2:483a:: with SMTP id 26mr11413581lft.5.1586812522089;
        Mon, 13 Apr 2020 14:15:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9708:: with SMTP id r8ls263470lji.10.gmail; Mon, 13 Apr
 2020 14:15:21 -0700 (PDT)
X-Received: by 2002:a2e:974d:: with SMTP id f13mr11939753ljj.178.1586812521231;
        Mon, 13 Apr 2020 14:15:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586812521; cv=none;
        d=google.com; s=arc-20160816;
        b=umI8AsvZY4UhbT2YbodZAA71tj7ALrnC1UhIfA0s4pETQnSqHyw3W+QkO1ARgItBw8
         IYTFP9kUAtHVj261db+6UHe+bfbwlYQMrxFP91AP4YDI/nobY5vwXrjOpOdjL1+VlZkW
         WMQwq7j4VVdKJMsGrwxCN+0UQu+OVdZWVA4cT7sSHX24OD8r00sFus6tA5CyLcX3EOLl
         wefAcGboP5M5uwqUaDQrXjkMC2DKTw0mXTQU/5a2eHe4yJ8HTjQ41fbpQpRjcQ6hqQr0
         I5N7IK6BS8RX1KPCcjMP88IHXgPjzx3bikRroW0DmnfMaYqABzqmLKp5IDgf5ElrDwDx
         SZwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=idZP78QLfRjhluguquTHPSQeRBXMkj6qqFAj2rwGa5w=;
        b=kSFQb34yJQ7qsii4aHiV/ImaFzjdVYR+riZEpQsp/LezpcN68u0uiKNR1zI5pJftaP
         kmyG9VRwaHWTlkhh8oLJiUJcXJWuEx6r1ZofSpw8yThseq22akNGjB+VsUnQoCW+eh15
         2dMxAEQ0oM5cW/3A8ocAengNr0EcwINynOUlBIZ6TmR77ARySzomP78/WjyM/23B2aif
         rTo1b3IsE1emUOlw8nv697RonMNnu97g7uXeJ9xfVR2q+XRqKviz1jz9aH0gX6TWjemv
         LIP2CXYfqzzRxYNaiqhBqq+JMuIGOHvymmd1MewHQzw7DJS21e+waVyjNG2tM9HUgzFZ
         SqIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=cOXAiD8Z;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id a21si597378lfr.4.2020.04.13.14.15.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2020 14:15:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
	(envelope-from <andrew@lunn.ch>)
	id 1jO6Q8-002W4d-Hz; Mon, 13 Apr 2020 23:15:08 +0200
Date: Mon, 13 Apr 2020 23:15:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
	David Howells <dhowells@redhat.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Manoj Gupta <manojgupta@google.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Jian Cai <caij2003@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Jian Cai <jiancai@google.com>,
	Doug Anderson <armlinux@m.disordat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200413211508.GE436020@lunn.ch>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAKwvOdnpW0VSRdD6958xyWh-tDbuVTti265aqOpvfhvh6iQEXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnpW0VSRdD6958xyWh-tDbuVTti265aqOpvfhvh6iQEXQ@mail.gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lunn.ch header.s=20171124 header.b=cOXAiD8Z;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Mon, Apr 13, 2020 at 12:20:57PM -0700, Nick Desaulniers wrote:
> On Fri, Apr 10, 2020 at 2:56 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> > >
> > > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > > kernel.
> > >
> > > Signed-off-by: Jian Cai <caij2003@gmail.com>
> >
> > It clearly makes sense to limit the Kconfig option to compilers that
> > can actually build it.
> > A few questions though:
> >
> > - Given that Armada XP with its PJ4B was still marketed until fairly
> > recently[1],
> >   wouldn't it make sense to still add support for it? Is it a lot of work?
> 
> Sorry, can you help me verify from that link that PJ4B uses XSCALE?

I think you missed my email. iwmmxt is not Xscale. iwmmxt is an
instruction set of its own, which any ARM processor could implement.

> I
> didn't see references to either in the link provided.  Also, given the
> history of XSCALE as noted by Russell, I'm surprised to see Marvell in
> the mix.

https://en.wikipedia.org/wiki/XScale

	XScale comprises several distinct families: IXP, IXC, IOP, PXA
	and CE.

	Intel sold the PXA family to Marvell Technology Group
	in June 2006.[1] Marvell then extended the brand to include
	processors with other microarchitectures, like ARM's Cortex.

	Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413211508.GE436020%40lunn.ch.
