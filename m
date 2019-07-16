Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBTVPXHUQKGQE7IKYEAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id B95746B22F
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 01:03:43 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id n23sf1652053pgf.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 16:03:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563318222; cv=pass;
        d=google.com; s=arc-20160816;
        b=HbXjlaw4RZfG9srfHC2fReBHoYKEfDoipxAYXziEKkHqn4KJKn709aK0gp29WHLCS3
         7p86kypQ64vZtuwUZKL/olhvhV18U9oWS29E4spWjp4DRob9UB38sU0MVv2YaoV7QlJ6
         BxUg447xcM8lcolGslMrBzBCBaCmXhX3DmwCTy5GO+syjGZGUUSkQLdyGVnqqZl0ngjD
         xd9oFkiSKiU5OKAkB58lTeO5K1AN0Ih8JbaflYe59ItCVeswcbV0J40tNqXFd1NBfG25
         6biI6Nq53a1v95WUjlPyPsvxpgJkt0BfFRw5E/XTtwTn5NmopZA+Df6wYr0fKgNvKX+7
         jx0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JZ6fP7MuxrOrwsR++/ylPCghaTB2CGyoYm0+pe8KcoA=;
        b=tBIxoiBLKOJMAxye6J+aVpZ1vumrWpMQjFJZzsjlgVxW2CtRxe7ZiEmQCC+M7L50y2
         VCCHKkSSxBeG+M2NVRQiM9ibewk5KnNt7VS5n239rcXreEFR34gFj4HirbYKMOEhE2xC
         bFKWv8fEsaR31PLR88PkPeSa8+ylO4bWyoSWRspo+mY+RcR13KUgN0H+LYAi77utHF3M
         ldawTL5G7EIR9cKEaYK3vrmwwB96AxCCpF0vE07hoDr5e+R8Vds1ZeX/cRzkoL1QQfjv
         NEnwZyoVwp41bZiEdguOeTXSWTT/94p3rSpTi8JkqikaDWn8HIyfbx49vVzjz8Uteqnc
         xb6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JZ6fP7MuxrOrwsR++/ylPCghaTB2CGyoYm0+pe8KcoA=;
        b=kRR5pdk7Wkf0YTDIiSRxvOQrMZXYGoxL4L7rQMYbbBHkMpMz6iqrJOr95LY7lKiyRr
         U0V4bP+lys1hHksS08DjGff/IZduTzRgHXKqp79karb34NMqmADAB2UrPGnnh8/cpzYa
         njz9a5ycj4jfSDQPQlb+ItR6Sj0VyszfQSDwJTlRmb84HRrfP5Crk7vD5iaNJxz+d2oH
         JNU1NuLtfaycf4Ox3FOC6yyZ34vJboRX8OOMzUmWIu26H3YzSkroIt8eyJDOdyJfsjLe
         jcd/SfcXN1Lqi651mKLjzk77pKM9a8RRMZ55Nl3I1V0+M2E4r6BpcSD83foyUPmS9kQe
         1/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JZ6fP7MuxrOrwsR++/ylPCghaTB2CGyoYm0+pe8KcoA=;
        b=tYv9tjLkbZlBDffM4IKQ7eInNyRYbUfVawLkagmlCZLwHthiZgFhJoOghw6WetFbei
         NDqnYgk9T7Syjn/wbBtQ9WBqyi+rLIh6NGhkySo1zj77RBKEqZYbZdDe+SKYCwREQu6o
         6BLgj9dakNH6pzcJ7T+IuLqsgGicr6hX2wudA2xB32upBwTdCj+ITLPwweIS6+XPbyjv
         hJ1qtnUB8WYlh+04INJjeefDaDi1+BwL0P2nlKmh7MAJUHx1U6cc4S5enGsLxK+DngNk
         SKtr2cDGvMvXfWM7tbCafBw8/A5Q0stbYxNaejpoPPDmRReoSbvqYP5DtRDujX6VBuJg
         kPFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/f/jWMtPqGLQwIQKbxy8hZtTHtY8L3S1u3LKrUcsVqUW1QAIS
	95gwJdJAoJI3leYl1I3D6e0=
X-Google-Smtp-Source: APXvYqx+A4swNl1wWqwvT3TH+zERjoBdK1IignaAogHp7Aa4Sc5LfI7xJDAwSyLe8GsGBFW4A7bqfQ==
X-Received: by 2002:a63:66c5:: with SMTP id a188mr36771009pgc.127.1563318222172;
        Tue, 16 Jul 2019 16:03:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a70f:: with SMTP id w15ls5883407plq.7.gmail; Tue, 16
 Jul 2019 16:03:41 -0700 (PDT)
X-Received: by 2002:a17:90a:2446:: with SMTP id h64mr41497478pje.0.1563318221888;
        Tue, 16 Jul 2019 16:03:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563318221; cv=none;
        d=google.com; s=arc-20160816;
        b=hQKsqNGUxkCqOwJb2dNAQsXouBLgd3fof4cuPgGNgRw8UeLzPlL+iZPgW7kCGM7K3x
         xceo8UfoNguXXj2F/aTV1/7uJaK4/y5oSC+L3v6nnKUtKRsImr9/oubh8DbnjMCZY0I6
         Ib86Tkx/oz3OyQTjBTk+r8qUa1jgQNKmrz8If3RSmlcZjId91FPovKyDWT5bhnqyAmtg
         QhO42MBQuxdwSqkqJI6dvCFOLEgJW40KpPh4p021j54U1nZbUF82Z9vX17KaynIlqluN
         l+ZdoN9JnRmbvHf7j4fPpcM5yN0aoUMwt6sv4bCLLMloAy1QeTI4Iq3Yx9C82x9KgDBN
         KayA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4Ba97KVadVYPq1zQTGoIXe2H+1+BJ3LCyA65Bcv4j4Y=;
        b=qRe74Erj4dxZyT+r1wiSGHILJF93AWSy25ufIJmSTl+A4Rn0ZPPz++5mgySsSB1fYq
         eKTD0WPpt+9iOy4kL0zITpxcD2ieIGD/3eiBf68AgkpUx1JGHJutoPaDzo2lxjL1sojY
         7dB2DZHm/03BiB0kTN1tTZ9j9PSqLumDwg0D7Xe0ascxSeduIVrgWuXfHMfgcMAXVxih
         3G2nWe4bO/qHv8mTbd+THP45/DMV10kMx+e/Qt8XxbnUobGPoXEjpAGTIorMd4l0S13M
         80Bujmlk+SogIuQ05lJPPMcUDxDSrYjLoeFSZzUf47O6WzyeO4QUqJrl/7p/q5l2egle
         t5mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id y13si868727pfl.3.2019.07.16.16.03.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 16:03:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3E08B3082A8D;
	Tue, 16 Jul 2019 23:03:40 +0000 (UTC)
Received: from treble (ovpn-123-204.rdu2.redhat.com [10.10.123.204])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28EA4100164A;
	Tue, 16 Jul 2019 23:03:38 +0000 (UTC)
Date: Tue, 16 Jul 2019 18:03:36 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
Message-ID: <20190716230336.y7nk24ybbwguio2s@treble>
References: <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble>
 <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
 <20190712142928.gmt6gibikdjmkppm@treble>
 <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
 <CAK8P3a0AGpvAOzSfER7iiaz=aLVMbxiVorTsh__yT4xxBOHSyw@mail.gmail.com>
 <CAKwvOd=o16rtGOVm9DWhhqxed0OEW5NKt4Vt3y_6KCcbdU-dhQ@mail.gmail.com>
 <CAK8P3a2Vq+ojOZSefwziMhzU2SG+Bq6HDz2Ssjz7_BpVnMUu=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Vq+ojOZSefwziMhzU2SG+Bq6HDz2Ssjz7_BpVnMUu=A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Tue, 16 Jul 2019 23:03:40 +0000 (UTC)
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

On Wed, Jul 17, 2019 at 12:05:14AM +0200, Arnd Bergmann wrote:
> On Tue, Jul 16, 2019 at 10:24 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Fri, Jul 12, 2019 at 1:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > On Fri, Jul 12, 2019 at 6:59 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > > The issue still needs to get fixed in clang regardless.  There are other
> > > > > noreturn functions in the kernel and this problem could easily pop back
> > > > > up.
> > > >
> > > > Sure, thanks for the report.  Arnd, can you help us get a more minimal
> > > > test case to understand the issue better?
> > >
> > > I reduced it to this testcase:
> > >
> > > int a, b;
> > > void __reiserfs_panic(int, ...) __attribute__((noreturn));
> > > void balance_internal() {
> > >   if (a)
> > >     __reiserfs_panic(0, "", __func__, "", 2, __func__, a);
> > >   if (b)
> > >     __reiserfs_panic(0, "", __func__, "", 5, __func__, a, 0);
> > > }
> > >
> > > https://godbolt.org/z/Byfvmx
> >
> > Is this the same issue as Josh pointed out?  IIUC, Josh pointed to a
> > jump destination that was past a `push %rbp`, and I don't see it in
> > your link.  (Or, did I miss it?)
> 
> I think it can be any push. The point is that the stack is different
> between the two branches leading up to the noreturn call.

Right.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190716230336.y7nk24ybbwguio2s%40treble.
