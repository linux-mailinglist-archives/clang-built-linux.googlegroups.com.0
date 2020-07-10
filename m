Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB34UUD4AKGQEHLFHTXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 504E821AF66
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 08:28:01 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id d64sf2961536iof.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 23:28:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594362480; cv=pass;
        d=google.com; s=arc-20160816;
        b=bWPQpz+GUH9umKOimNhrgkZiNBPUfWSXN+PkpMCDP/0wFYHAyge/PYP1I0GYP/NlHx
         NClyEunVkLRgrgxeym54iPS57x3kdYZilxe+MIwk6TA/V+8unN+yF6APLpit8UeA4nnO
         0rNWqSq64bw0AwAnoZrwT4ZmfxXzpUbHlSNFBUQc+zKJ2zXM2O7YRKDJ4lGpf+qdTEm+
         HmKer8XJBQ5srpI5W50v2fHxD39Qic3sxScaBPHWMy38bVBp6ruCyq7PVrV0ZdpALXc2
         G8EKeDBl/clz7Op8rlYCf4PY8vXG4x8Z6t7dd8WgyKTyvN3ACuKFxQxjsjycrgvp+mVk
         wGJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CFaqfzF81e1lpUwoDzhZW3jEBVcwfNE8vNFoBZTzGhA=;
        b=ZOHpg6JlD8ShKmVOKMVEiAO1A3YuVEvoxRtozYDJfboKmly6NqZx2KamaUllQqZpfS
         XFy4pKYEeljfSHKJqN1systZCnccrQUL23q3PqSLUq+MM7EghEqiRJrGDmAMQV2lH4T9
         N9g118b/knc8qSBCqD5S0CVVFRER2FlEVG4MGNbjl5tj/nhRv8QXh8fG5jxLWhvWla9x
         SIkcm5oAbiYaCXoqvECBtqP5cQcdPynyZ5KqLofcE2AxM1QYOdiJNEKY+faLF/GoBOQ/
         0K6W6161y4Y0E++Cd0Obya9V1JPAFSjM3SDifZUfW2OdQ5mWBe0k9g+IhHX171UCBAP2
         9EAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=txiTPIjP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CFaqfzF81e1lpUwoDzhZW3jEBVcwfNE8vNFoBZTzGhA=;
        b=Kkot1OfLFVcVsTwxSl9SbwprNx1cFrx2eemUsic/F0cikZH55RvaQAFqGqaVq8p1dV
         bWlGKbDCiZBcXukqcSz1+Dudm6PPyK6BOXPG4D7Afcg4/58qhb4Kiosuk80LhKrFZWr9
         TNGsGyTk8kHVG6ThqJLyp4UHvxmfqphO/xEdGo35adafzluC6HuHrKPY7f1S0qH/l9w7
         6TmvfOy2aig/UG19E/dKj8jKy8OqqG79ofQZxDzusQSrSajMRgUJsnq/n7whO3+Kkzyg
         hsofW6j24mU4Idxmkc6L8O47SU+eg3kvgaf4OV6DhcQXxVuV/p6pDN1B86aFqKWH9xOa
         7Usw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CFaqfzF81e1lpUwoDzhZW3jEBVcwfNE8vNFoBZTzGhA=;
        b=VhEgAh9aqwIaZVR+GtfmchawiKgPETQGkJpL3bNfzl3z7ApPk1F6Q/c9PndUhQBrhU
         Klheb8MlJDFbPToPX4kOkZ0zJkegJtsnJKy9WarYHnUeRzsmKpZK3wc6+I9IAhEVYBqp
         XW/c57nDT5AVFMYqpgRXr8VY++wlidiUBpff4tA9C7Nqjyc7sojFpTTY2PF5Jk234X/m
         rRXOPnPXIZS08uXlA+gUd8cH/CBbSB+WM2eWM5jr4t4WscQl/afSUVLSXXoPswVPty0H
         /VyyUBDM+QyJuMB4kPSyWg+SJHReK+B0vlCMIuLJ2nENn2Q8CpMcKQd92n6W3ZusIHJn
         /bnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QOtcev0Jk6/4Hy4F3Bg5Ry1/E33T6svF3SVKMfpAGtkYBmNqB
	VukJRxQ/Js/5f6e0AHuEgI0=
X-Google-Smtp-Source: ABdhPJwftc5oEw8a2aZrP6heXBBNaPfclv18q7qLBDo8M3ChTcuifLYW6edKkGtu2xoffW2rg+GfsA==
X-Received: by 2002:a05:6638:11cb:: with SMTP id g11mr12805065jas.14.1594362479976;
        Thu, 09 Jul 2020 23:27:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:aadd:: with SMTP id p90ls2051560ill.11.gmail; Thu, 09
 Jul 2020 23:27:59 -0700 (PDT)
X-Received: by 2002:a05:6e02:46:: with SMTP id i6mr48519250ilr.91.1594362479666;
        Thu, 09 Jul 2020 23:27:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594362479; cv=none;
        d=google.com; s=arc-20160816;
        b=0B9IdW+FwGvTu6I/iA9Oa7bPFfxaVoz0g3QQj3k0/LfsybrSrfrAutIEKudwynrzIc
         1r3hv4WEkZ6lPbuw40ZwpRqeUdgyod1meLOmfRNUF+nS7IzRwzfqQDLY+c+ytu+dvMXb
         Hu6bbDg6xAzrB6MyauUWNsw9hNqJ3EDIRDtGbKkCn3IlxuhSai9FC4457WtM7dT76T2k
         Vbp7es2cERkeiX3R0Us7goT5TBHRI79MNS1L0kPwJ44I9+9g9m9Xkt90hmMealuTMN3c
         3aSUXAf5zQby8fIKLShAtYRC2H0zfyPBYbuQBM0Ylp5TPx8IvkYq5Gdk5mKgGk07NEBU
         NX/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jGCrylmCQqWFEmn7xDprKKOC/kaItevjLJlVqcOzlwI=;
        b=0xXlsekumqzXrLVxAZlUotpVHlpyCB2zumH1HNg7GZjHUxJ31pt5AuqdbCN2pzBfo8
         c9s/lEh+qv1i/vtImHs2OXQiXfIQjPjRoAuSIk4rzPOxk6Ba8/VoOYP48VqO0IMqzzVR
         ryjL2pchD3HlGubGIf+oqRy/3TOWKwCz0p9Hj6/73rdAsp4jIlC6lFMTAz2OaZHDhz3A
         uJmBL1eqeWQpEd0JtPUCuihp5METI2ERRri3rmL/4/9g0bqmKxyHWNQ4AjQRoehkU1PY
         W2sR3cSB8De9A1a2kG/GM18Tb0+WsDORkKAbNA0W9SSv94xVB7Q6dGLdVliP20T66por
         CS2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=txiTPIjP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i20si33769iow.2.2020.07.09.23.27.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jul 2020 23:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3EA672072E;
	Fri, 10 Jul 2020 06:27:58 +0000 (UTC)
Date: Fri, 10 Jul 2020 08:28:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alex.gaynor@gmail.com, geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200710062803.GA1071395@kroah.com>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=txiTPIjP;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
> Hello folks,
> I'm working on putting together an LLVM "Micro Conference" for the
> upcoming Linux Plumbers Conf
> (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> solidified yet, but I would really like to run a session on support
> for Rust "in tree."  I suspect we could cover technical aspects of
> what that might look like (I have a prototype of that, was trivial to
> wire up KBuild support), but also a larger question of "should we do
> this?" or "how might we place limits on where this can be used?"
> 
> Question to folks explicitly in To:, are you planning on attending plumbers?
> 
> If so, would this be an interesting topic that you'd participate in?

Yes, I'll be there.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710062803.GA1071395%40kroah.com.
