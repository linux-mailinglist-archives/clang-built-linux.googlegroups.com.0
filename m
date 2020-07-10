Return-Path: <clang-built-linux+bncBCO4HLFLUAOBBHWIUH4AKGQETCA3OFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 110EF21B574
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 14:50:39 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id x2sf4250958ljh.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 05:50:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594385438; cv=pass;
        d=google.com; s=arc-20160816;
        b=fRFWZrwGsWhWEa264fYKcLE92XEiJ95nPF8C51wxJvt7DlNBbQ9XUzkHoWt19uXb8P
         5gz9H4c0Ox2ZsNanZ2cVsDUz2qi8FPnTexuRIhsy+KSEUNM47dTbTm4aDsde/rhkoWtU
         kSNiDp2y6Zc0IbdZ3wpMD8E1tF5w587csfTs4QfPtU81rcJ1R9kaSgXDZxVMyPHseXTF
         5PKH8VoSWN9eSxni1BScRO2a3r3NIZMN+KtFtAI/iA7xO0AkGUtyY+iXxTGGF82eIqOY
         Bc+K6F19Cq1NaK1qkiOm9UZ+zjMUREcZ9xNtjB+nrYKc/BH4vPVaozA4YOONFfSb+soF
         78nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ILeF3jPxWzWMuU0Pmp/hhLzB0EE1ia2Vk79r94vd1P8=;
        b=HqeSJs+kRYa8klHcdZPVcU9ncNVguvTPriI1awYUzgP2/s8Or4+KrdijzP8ScZiSL2
         X5dk36GsqKmqv38rOyTPl64DazLtzcgSvb6QcpyFI4QfCoGF4XukuSHWt1+/RwzRU4XU
         gFz7iz/5pPxA2HCJhh9t0ftNibbMEDo3ivfOWMMxicU6xMQ9Sz70k3tCQDwGtyZI2IzA
         JvRFlZxi5CqwpAPAE+tZpb5uMzKtfIiM1RpChwPixtNNsN/dsvKzcIqBbecWVYrMS+MC
         Sc/uB6nBRVoxEdhNZ74qRQi33MiFcrt2ZTOtyryvUy/Due3/DYBnhDR+b9Wcl26r8sMu
         YDqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ILeF3jPxWzWMuU0Pmp/hhLzB0EE1ia2Vk79r94vd1P8=;
        b=rg+FZ5gXb5nTdD5bfwShHaxANwKd4bonzm4A14ounhD0XCCVU6amC4nk+teqVy2Bc4
         nLCuVvv9F4wEGLi4lRzIa8iX4/mpMhlki/gpQbdBpg7SPCWxjtfUtL7b5PXFhpdUUE2j
         2pYcrM8CqfikTEVMWD5nECEOK00DpUK7jdaFvRifVMdMxJNpLey8b9pHWyNeGmqvlysu
         j9V66ZQrw3fOhgiXDag5TI3TCVgE07/60+RxlSLjDOB8qsqo+cyw/geA+PtMJMqGZmX5
         ldlU6ExZvJLW7Oy5aIg3GeV6NzO40TFy0WuufF5ULGuj4O0+2QYml2BBoZbO/EscJUe+
         qzQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ILeF3jPxWzWMuU0Pmp/hhLzB0EE1ia2Vk79r94vd1P8=;
        b=VatXBLmF8dPtsjLCCsijKm7yE086L0jv6mcAKO405PN9JG+YXLMi2IcYy7ThB9L/sP
         t2lg86eysGYukyrDtOq2iNpqDQfQ/ZbnJ3POGUJb//hkwlGcAmZBEipZ5vRNQ/0sgC59
         rd+LJiVxupHUe7zU890FATQ8A8iaO4Sc0pqaExyLuvKgTTZEvgT8oCqxIWjkys/NVaNn
         dVagRVMc6ggP4CFj5TFLB+ERz5DQ37R5KbaDc3eHLmqCPVfr2LaAQBOFzM5g7rgr1Jjw
         /p2xLRhY5uRsIaBZnwOWNic0smiPCI38zBKdrRh6Lfijs7v0TOhRSVl5fC0bPdx57JI2
         m1CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lmGOeEjKJo4QUBtCTzcPUum3YYxmYPxspjqwtS7NKAOMygaWl
	TNFjbQd2yZZRhHQz1A5wlWc=
X-Google-Smtp-Source: ABdhPJxfldJmhNwkccrdv2wiJq9DavfvppViNbo4jNS/qwUDBbTpiIFMkN8/Ym6Gk5p/MY3BB70ltg==
X-Received: by 2002:a2e:9a16:: with SMTP id o22mr41536486lji.40.1594385438557;
        Fri, 10 Jul 2020 05:50:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e1:: with SMTP id s1ls1817940ljm.1.gmail; Fri, 10 Jul
 2020 05:50:38 -0700 (PDT)
X-Received: by 2002:a2e:900a:: with SMTP id h10mr41719367ljg.242.1594385438015;
        Fri, 10 Jul 2020 05:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594385438; cv=none;
        d=google.com; s=arc-20160816;
        b=xIYwOC1B0mK1P9IpwZSoAsih6w5mjRJhytczhMReUF7OUpWVLx2SrLET37RrGptZuX
         U+pqBK1QISSe3InvgM43JvkuV7QcfVO/5sjqKtfP9yxfK/XPhVEA+G6qwAdKBbfiG27f
         AnQB1x7YSomCSyPSiUETwkvk2tmLFlNmRnjYeYLkyBgaO52JD4xpR8N6IjRvgcKAXRKu
         gml0RXUWOXFfHAlvSnx6MmNNeXs7yFt/1vOS8t4j9/Ac4FUVhbDzc1BIl6B7zJL/Z1oc
         VL8+pwaiSkfDbfaBF+EyifSR/h71VLdpbSBZW31/8I/R2F6QVZeIzpPd1axF3Y/K1GZ4
         QNig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=5V4LqHROZFJvO89BsCcNeYv+UyDxXSVb8TmI1BmOOhw=;
        b=nPzkPgU9J1gSs6sRD9NH1YMOqvKTOhWbKhZna7k3s0Uf6FuHWOzHraCQnFra9NDxg3
         3T68loXvAjPBtpI4VgjH3YakpNJhefk3SRsbsJ/qd1OBEQ6F3oWq7O/86BlAdPySpAlA
         UvmboQCFn1zUj3QfTg/CmTgIPr5SxBSfiURVkbNDcdw0u30E+dxR1gTFBLb0/OLWoVdp
         2CZLtEFoHPCYLY5hREplYm/gtwdKWFb9T6iF/h9wM3CxbTRA8ho1WzHl3OyJ3SqB3oGn
         UJKPfZDbqzBDaU4lWTSIiKGE2vAC5Ua0k7abaSvwBILdCaZBgpdcP4sX5oyqW1kLbovo
         92Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id a15si342673lfb.3.2020.07.10.05.50.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jul 2020 05:50:38 -0700 (PDT)
Received-SPF: neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) client-ip=91.189.89.112;
Received: from ip5f5af08c.dynamic.kabel-deutschland.de ([95.90.240.140] helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1jtsTv-0005O8-3s; Fri, 10 Jul 2020 12:50:23 +0000
Date: Fri, 10 Jul 2020 14:50:22 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alex.gaynor@gmail.com, Greg KH <gregkh@linuxfoundation.org>,
	geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	keescook@chromium.org
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200710125022.alry7wkymalmv3ge@wittgenstein>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200710062803.GA1071395@kroah.com>
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.189.89.112 is neither permitted nor denied by best guess
 record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
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

On Fri, Jul 10, 2020 at 08:28:03AM +0200, Greg KH wrote:
> On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
> > Hello folks,
> > I'm working on putting together an LLVM "Micro Conference" for the
> > upcoming Linux Plumbers Conf
> > (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> > solidified yet, but I would really like to run a session on support
> > for Rust "in tree."  I suspect we could cover technical aspects of
> > what that might look like (I have a prototype of that, was trivial to
> > wire up KBuild support), but also a larger question of "should we do
> > this?" or "how might we place limits on where this can be used?"
> > 
> > Question to folks explicitly in To:, are you planning on attending plumbers?
> > 
> > If so, would this be an interesting topic that you'd participate in?
> 
> Yes, I'll be there.

We actually had this dicussion a while back and there were some more
people interested in this. I'd be interested to attend this and I've
spoken with Kees and a few others about this topic at last Plumbers (I
think Greg might have been around for this informal discussion as well.
But I might be imagining things.).

Christian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710125022.alry7wkymalmv3ge%40wittgenstein.
