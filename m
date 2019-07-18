Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBM75YPUQKGQENH3WFTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 442806D732
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 01:20:20 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id z124sf23350750ybz.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 16:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563492019; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z+eBVdLY+eXXWpGo037R1/uGu+Urc6WicGVGm0yIl6y7GJtBo2iL/1ATFj60HIwS4G
         XRcDyn2K3g2Ojc3diyBziDq3iUv/2NhU3IdIAogOMCxECqIhbCYrk47eSshjFSVAFDEP
         o1QpePsqG5dwL6M6UlwXYURaqKL969IwdRPDU2+E6+Atfl5NZo3q/5DAv/j6+VbENynR
         vu7s+Jt9kMxDhV5EwF+jT+JoplI78T44jTE/qTON24ZqEbL5zb525jQHAAMZ7sXs2eVZ
         /FdWXcGfESNoqBstLryk9qWjsDtAY3/4eHfqsR3xfI1L05jCGMrqvTPiCVunFUcwJtRh
         UhVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9Vj2gpCqCMkTeMZmE8l8GkCV2oEnEj8lA+xozCzpAM0=;
        b=vIjueqoLHqzC9+fz+pp4Nq4SXhhiZOxqxHdxkqx83nGzRcP9FsXkP5zKQBkk5wVOYD
         DPiA3tMc+8zVpJGjteOB/IfnFmc2rTsO2SoBNz1a6AFPS25re95ofxu0rg/TJwJDTptS
         qCPShK5VvzWx6EoskYtF0UI5OgHI4mOeFGySnjxWyk8+utqxu2ZMaAZGM/3he3dNVWnv
         hXrlBKZ+mS+j4zkUKGBADImcc5zeN3wz0xAKPws8q+LNSmUYIqKfCosivzkCxB+Zkxgx
         UBTbKBWnWuGWIEA8ss8gmaC6MCiJ2fwqs1h1feWzHTuhZYSDIj/I3iIFbu3H3H79OrYW
         2fsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Vj2gpCqCMkTeMZmE8l8GkCV2oEnEj8lA+xozCzpAM0=;
        b=PakxSkiNzx9lHlN8oCPXNdL/yG8vxxYEqOH86Jo1LRSqcKRaiznRb/u4kdnBd2fMEt
         H666PPTWAzcU2Gn3ymTkkXdHvd3fJswb2ZGgmol49GK8mOXHB81KRnLy+sZ7Ip2dZxS0
         BagUsQICRXLfiFSXCpIeBfFr+EjrxlKvq+mXBSEz9u/UECUuYIrgaoVRtsYpQMcpfGbU
         Lz7k+GeOxuKQ91vOUUK77qXetdgSkNoJCR2l8nogq91W/2Yz8hn1wCTsZX0pEc53tE8G
         9yt4kX1XSFpqQsz2BD/nx0lu5MnhetBY8qh4AaS1kSLc23Lxcz41wfF+hQzBgBAvM6kZ
         3Zhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Vj2gpCqCMkTeMZmE8l8GkCV2oEnEj8lA+xozCzpAM0=;
        b=R5g4qpxMyWs6hASmlkPRt/tBHlgiICcuhQCmBLC/7lV6xnIzJ6G7UfTBvuJdyvLvmV
         xK9LkdSq0ypNMKIrz6Nxynq7A7/bX84U8QMdpbBmuZaw+ULsgyYn3aV7OOpBbA/3k/uj
         pvlaDi8c03fmQQDryvEQc78npiIwZvU2EPDF82WTwaFvfRPfofvW0wi++DELoLCsJeaX
         IDxJ/pyT8qITQhAZ0HoFGMz3vW9+jYAu3xbP5faDaskApDKswrFYWziS2/a9QF5W2ZFf
         KwcAu1k8wtz2gfghlHw2nSBPHriaYuV/1LHlJ5EeqbBzI653kWbHS7KIYKor7evO320V
         VmCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUK6uWB1Y9uaP8RfuAyCYaxvxj4Jxhbss6WBDCMdBf9YOj7+lDi
	C0czYqHQOPvyapzAObmQFng=
X-Google-Smtp-Source: APXvYqzqXK+K8sscv4UM9Qz2onQf+sQxTfzP2Kybu5/uQ0c7miK+WwaWxWRhlAw3dNhqlMUrtbgG9g==
X-Received: by 2002:a81:3295:: with SMTP id y143mr29384972ywy.328.1563492019330;
        Thu, 18 Jul 2019 16:20:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:410c:: with SMTP id o12ls353988yba.8.gmail; Thu, 18 Jul
 2019 16:20:19 -0700 (PDT)
X-Received: by 2002:a25:9c01:: with SMTP id c1mr19319014ybo.418.1563492019035;
        Thu, 18 Jul 2019 16:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563492019; cv=none;
        d=google.com; s=arc-20160816;
        b=Hkzz1V2upEdtszpP3sFg0ReG7UP63aGwHWUyrfQS91v1v0ZJqy++NL1S/mGPD1MAaa
         BUJ2kmG+d5VsusWfY+kP3rABvf9+KmmaU279945NHWxTWdOIBgEgzYXuiYZHtmz0d8qH
         vC+aITTOk+R+ChpM0z1xgUAVrvwfCPOBeAJUR+wVPwqwBhFoFg+sK131cHQQBfr/x7Yb
         rYcCxOB6KIoNyiU435XrBHN515MSPu+17mUY5L2I9Fw4rV1FOrN6/3QB7MWZaeq84nwo
         1zrlhCl+LgVXgICGV4bpn9LQQtw8DXAPRoaZJLrz1v2BpkODoWi+UW+IrZQ0vOjjqYQm
         3AOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LvkJROFa5h6WEHMFcYSt7THB8wRz0RIT/olQuwWN1Bs=;
        b=eq82JP816Wz4RW3potqC5DiLpjDsvWFqozSJgGkpgMroLQAKYpDikwVvNNpvszUsP5
         9OtPkEA6+Pmr2O/4+ysOs+ljZH8SfcUPNCg0ul0krssNPmm0bZkPjYjjamIz0M0LtUPn
         nv6a8vHjNIj5PE30TvmcYqdV32JOh3Vc1YifGMhu6TCTfQAy5hR20wztGW8kJ+vvnmpU
         WEozOCGDGJhD/5KmxoiYe+F/iI3/hJvjJxl9A2dcsYz7Ayh3/p+nrNR9Ki+77GWAjVoX
         dAUz5t2vecd0C+vLP5sAsScutzfQa9LwZtukH32AHargjHf0hJc6SFWSchNOz1TtBM/D
         UihA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id b74si1045200yba.4.2019.07.18.16.20.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 16:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 347903082E10;
	Thu, 18 Jul 2019 23:20:18 +0000 (UTC)
Received: from treble (ovpn-122-211.rdu2.redhat.com [10.10.122.211])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59DD31001B35;
	Thu, 18 Jul 2019 23:20:17 +0000 (UTC)
Date: Thu, 18 Jul 2019 18:20:15 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
Message-ID: <20190718232015.bazk37cqbweh52pc@treble>
References: <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble>
 <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
 <20190712142928.gmt6gibikdjmkppm@treble>
 <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
 <CAK8P3a0AGpvAOzSfER7iiaz=aLVMbxiVorTsh__yT4xxBOHSyw@mail.gmail.com>
 <CAKwvOd=o16rtGOVm9DWhhqxed0OEW5NKt4Vt3y_6KCcbdU-dhQ@mail.gmail.com>
 <CAK8P3a2Vq+ojOZSefwziMhzU2SG+Bq6HDz2Ssjz7_BpVnMUu=A@mail.gmail.com>
 <20190716230336.y7nk24ybbwguio2s@treble>
 <CAKwvOdm_MiACJWnRww3tSD7033J6MX2Erzs1xwmd1=taNmyg9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm_MiACJWnRww3tSD7033J6MX2Erzs1xwmd1=taNmyg9A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Thu, 18 Jul 2019 23:20:18 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Jul 18, 2019 at 03:36:47PM -0700, Nick Desaulniers wrote:
> On Tue, Jul 16, 2019 at 4:03 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Wed, Jul 17, 2019 at 12:05:14AM +0200, Arnd Bergmann wrote:
> > > On Tue, Jul 16, 2019 at 10:24 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Fri, Jul 12, 2019 at 1:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > >
> > > > > On Fri, Jul 12, 2019 at 6:59 PM 'Nick Desaulniers' via Clang Built
> > > > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > > > > The issue still needs to get fixed in clang regardless.  There are other
> > > > > > > noreturn functions in the kernel and this problem could easily pop back
> > > > > > > up.
> > > > > >
> > > > > > Sure, thanks for the report.  Arnd, can you help us get a more minimal
> > > > > > test case to understand the issue better?
> > > > >
> > > > > I reduced it to this testcase:
> > > > >
> > > > > int a, b;
> > > > > void __reiserfs_panic(int, ...) __attribute__((noreturn));
> > > > > void balance_internal() {
> > > > >   if (a)
> > > > >     __reiserfs_panic(0, "", __func__, "", 2, __func__, a);
> > > > >   if (b)
> > > > >     __reiserfs_panic(0, "", __func__, "", 5, __func__, a, 0);
> > > > > }
> > > > >
> > > > > https://godbolt.org/z/Byfvmx
> > > >
> > > > Is this the same issue as Josh pointed out?  IIUC, Josh pointed to a
> > > > jump destination that was past a `push %rbp`, and I don't see it in
> > > > your link.  (Or, did I miss it?)
> > >
> > > I think it can be any push. The point is that the stack is different
> > > between the two branches leading up to the noreturn call.
> >
> > Right.
> 
> So if I remove the `-mstack-alignment=8` command line flag, it looks
> like the stack depth will still differ on calls to __reiserfs_panic,
> but now the call is not shared (two separate code paths):
> https://godbolt.org/z/tvkXwK. Is that ok or also bad?

That looks ok.  I'm not sure whether removing the stack alignment would
fix it though, you might have just gotten lucky.

> I'm getting the feeling that `-mstack-alignment=8` might have some
> issues once we start pushing parameters on the stack.  How many can we
> use registers for in x86 before resorting to the stack, and does the
> function being variadic affect this? (if not, maybe a test case
> without variadic and many-parameters would not conflate the issue?)

Yeah, I think calling a variadic function (or a function with more than
6 args) does have something to do with it, because then some arguments
have to be passed on the stack.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718232015.bazk37cqbweh52pc%40treble.
