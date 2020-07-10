Return-Path: <clang-built-linux+bncBCYIBK4PW4CRBXXFUP4AKGQEQHVDOFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8C021C035
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 00:59:43 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id j5sf7548192wro.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 15:59:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594421983; cv=pass;
        d=google.com; s=arc-20160816;
        b=XL1MIedmN2rkVc/Aod8pzKB/m0ls7j4bG+qYDcZS5VXH4QgiG/WE+q+2vVUGozzSfT
         dwznLBcUnmiwqoxNr/wo/OfJDuNOOPp1JeyHS1cHAzLHwltIGEAx5Cow1w8nLLlMk5Lf
         FUI3BMa9fkB+lTfS9eMWyRcxwAHtb2OwSDwFxKl41vRWXEq9rBGi+AvDaVzyH9tOjEJL
         lzigptB3bcU8ivk6PaMmVJTRBsWypm2K4lI9pYrVxrXZ0jMORBAjwmqsV9SjQnToTUKt
         jcy9e8dQnzspioHVzeP7iKxJ+KtY6qGKC01+fRKvii5NtMeueG0QqfAIN+P5CBaaW51H
         ssYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UTOhAEmIUadaaPvVzNm5xXbz6c+zb3mIh30AChyIkkc=;
        b=bK2uct26KLyo+dK2XAMFEjN/s01er2UcSzgfYJMlcrlIOreGOZ6HnklRsoOB0N/J9p
         D178JdRWybVgp7PC8arSm534g7JReC+5JQedvj4lknidtEQsTDSj7iR62IZv6QiTTye+
         L71NC1d4WaH2hRvS+B0A3FXXTTplwyUCodREU3tzgLbCZ0GLyf9fp7m/Ttxp/Z9PD1FH
         jiSplfTGgJ0K99ol25S8AOQGv3EYHmuQdjKy/xhZHcKjuD/lzsgOWzb8CDkvX1VUTENx
         buGLJK1WPFSFU5M4YWr9d+d+y/clegWre+zgqyUcTTh/fhueFBcIQzVGFJ0xdpp7oVvs
         1fSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UTOhAEmIUadaaPvVzNm5xXbz6c+zb3mIh30AChyIkkc=;
        b=ksfdncy2nfuUr1Zl9FOo2I567u8ZtDaMp7Us2HHQqJap5xGTnKpm0ePBvDtuQJT+/j
         Qvk+GWXYpVqNx4m5OW+PgJd2fB3C3F0t0fTumc4z3CCkSUlntpKXg2EVGqhQ8jvZUN5Q
         sPNirsJwM6Z+GoROapaZsP3wCHdp/G//rLuhBgCaqLcAOWYDc1voYVs3XKfmjVwrXZ7r
         Lpc5aFoqgKkgnxY+q/CLKveHzTRrkUUp8XGhR9IhYAWGGTKmwkUvwpz60plu5toN58df
         G5HyQfYtbuRxnHlODNPVT0IdUsw/N5ER6psNE85hVzgt3EMTlrEfbhaBWDJFDHgvOvQw
         tbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UTOhAEmIUadaaPvVzNm5xXbz6c+zb3mIh30AChyIkkc=;
        b=LPjLMBXr5Ou+X1T/8w2ZYekkbzoni//VzJa8t0KTBftEg1YIC6zadwPDQkKUWyKdae
         7aHvwiLOuzqt8oouosf/cOFdcZPoVA5WALvX0VDwN9ZA5nF5Y4UYYXKSavZ840CZ1mb+
         GOeVl/DucfnSoDbZMKOWiZA95hp0P1FK+H9BOtJaAh4nMT/CMFbGlqmQbERPFS6urGqI
         X+rJxWotnLDdrRv8aDmpm+AcgpL3sPJNiAqCqm47j2AkhGHspmm82T0dImCkzxxUlLsI
         JoX2DFq8rYkE0crwJ113KkmQLbEv6lPpLTr7qwiZAEAvo1N0H03RMH1V1AcPyGpvc5LI
         EiaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531e+iFpb32MQhMsFA5Lr8PD3xYqk7jZkqLjBfVoqsaRjEfKWfKe
	M/94weqnA2w7HTaVEJodeyQ=
X-Google-Smtp-Source: ABdhPJwakeIZDMbkTLQ2Cz6RS7fbsbK0a+reEl+YLgyK254Hg/WZfYBtboBRmCLgHBuPXBZbvV5lIA==
X-Received: by 2002:a05:6000:ca:: with SMTP id q10mr71790303wrx.135.1594421982779;
        Fri, 10 Jul 2020 15:59:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls2401576wru.0.gmail; Fri, 10 Jul
 2020 15:59:42 -0700 (PDT)
X-Received: by 2002:adf:b1ca:: with SMTP id r10mr42916703wra.150.1594421982338;
        Fri, 10 Jul 2020 15:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594421982; cv=none;
        d=google.com; s=arc-20160816;
        b=wA6Pt5D1qLOv13/6bmopgEpWDrbogmEtB2zmQvsX9HWGF9Sy27FcY/0o1AB8Kqef4L
         7nE1vOHSIVA30R/rAkE2+Fw53F8mQ/qm1Z9z5oq6WU1SC2ziCj7YyBjFBuyCSAdsYvyv
         SEwQANfG34YxFRmrVbbkfz752DOGbL6NMpcHJKf8awB62V8VuVR5rsXAl+KnOaPqpdiO
         J7lS567Sxu/GZUrN0skgdeGr1IPRVwtKYyAIP1iMy6MjFLJ2GNX//+bltEsJRzvPfmin
         9KK5Cth8gCHbGj9UESEdKu5LmoK/93xO1W3+XHN97GIdgov9W+CV+KXYDpvSfjXAu6UM
         //Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=DpFZ8oXD3zQsHdykw+PWBwDWMh4nmKIdN37BDefTAoc=;
        b=VOQ8fYwhnSMrbW967dLMQWipRdQqsmZLLEJJL1uuYMdJfNS5srzfL+21B1CRaKLDvi
         ZZL9lAA5j6cygJGykwxQ61fgS1rJSZUrnc5cpyYEDzThdO1MlbO8x26crqWFD040oy6f
         yzT4b1DfnRH2TqfPmF5iR13UKRfJ/S5FkGcIrv3HK3Y5EyeVE/D6G5gb6aYKjjyN8t6G
         AVMdMX25APfYhco15oXWDLwtYMTV+j173XP0ulNWclwB98Gv15XKSe5+dexwB40/zA19
         sbjrgomRIIGGpxQMXqJNwYe5aZwuJUfhiUkfNSCPyDTjekbT6ZNTFvm1x3bOXHav+mST
         pwyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net. [217.70.183.193])
        by gmr-mx.google.com with ESMTPS id s130si337460wme.2.2020.07.10.15.59.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 Jul 2020 15:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) client-ip=217.70.183.193;
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net [50.39.163.217])
	(Authenticated sender: josh@joshtriplett.org)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5ED8E240002;
	Fri, 10 Jul 2020 22:59:35 +0000 (UTC)
Date: Fri, 10 Jul 2020 15:59:34 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	Greg KH <gregkh@linuxfoundation.org>, geofft@ldpreload.com,
	jbaublitz@redhat.com, Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	keescook@chromium.org
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200710225934.GA16881@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
 <20200710125022.alry7wkymalmv3ge@wittgenstein>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200710125022.alry7wkymalmv3ge@wittgenstein>
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

I was around for one of the informal conversations with Greg and Kees
and others.

As I recall, Greg's biggest condition for initial introduction of this
was to do the same kind of "turn this Kconfig option on and turn an
option under it off" trick that LTO uses, so that neither "make
allnoconfig" nor "make allyesconfig" would require Rust until we've had
plenty of time to experiment with it. And that seems entirely
reasonable to me too.

- Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710225934.GA16881%40localhost.
