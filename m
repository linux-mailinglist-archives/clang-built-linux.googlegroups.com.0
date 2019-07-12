Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBTVSULUQKGQEBFERDYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D0667158
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 16:29:36 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id r142sf5632100pfc.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 07:29:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562941774; cv=pass;
        d=google.com; s=arc-20160816;
        b=PeH1AeaXS/KWfdhMMmyz7aDak6fUq2vdxjs0gboyWoADiFf1Vy7gXNDqI0/i5hlAWc
         kea3O0dVHNhXWwivKK6ojY25GbSdVJInG3L93KucIZOodCpwLR7dX2GFE/6RsdIjvELh
         s8tWF2csWXspSwuw369ntBX74+VfX0QpEa3DuQmWYmQkL3qDkJcdXoju1RiTQvPcCs9D
         lTDgYduDFR4PcXMP1PYkaD7Eg/DnNE7o95N/THvxsSkqX8CHu64kYlOsnOuOuLGAFwpA
         YN3+SEc3xAOXV0Mw8t3yNsok+0aua4jlTlfxQD4TghUmGSrMOp7P4Yzc50PEwBrerFm5
         pt8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gSi1Ah1d23LVKhV/qf34+7YmxyvmTZnnpY8pAt+RfuQ=;
        b=gbUykbHymYEOAoG39J3B7ND0YyCRMNXfnscmT+BIpAAYt2wMCpa39qOjgeOXxRCmoh
         y42mVdBLCrBF9SuOnZ6uQnHid8uFrKTQyRUe5f0kUJXuq/6i+L1eYRkcyxtOYnRzaktT
         QJ1VjasfuG5PlsyK0qxlaviuiGjeHgxhRDXpjM4bj5DXZ0dKKAML60foXo+WtPHmhzxy
         2Icf8GIgnB+OcoXK4is518+a9QG0xTCBv0Fw2Ao+GH9+CjyHThZrjVVPoWlIfR2qaNFZ
         ZdF+ug794KLOHvo18JTFYdDuXm3ynX0i8HhwgM9eh1zcVTVlGcVk57QfpuMV3o7+dy9F
         Wguw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gSi1Ah1d23LVKhV/qf34+7YmxyvmTZnnpY8pAt+RfuQ=;
        b=LUW9mDHJt/pkUK66k74yRUHa8tdlpraZX8Bfv+/nykcuztq1XjLMY343FXb9XPRtTJ
         umPx6wHEdDB8kJNdfov4KkVhBEmBSWukPBGiw53SDwur9KuRNTXSODyrW0JJgGXkeT9R
         7ydstVmsVUrzBaNCxHdZ5KKx2YQqEzGsU2sWWCM/2RSULsdDMJbOhcZ1O4d5dXC8NA9p
         pjgtEhqidSoUZlNMpf/74+VITG0aPQtVfHsBD7uru6vlyEn1b0wloOzFFokuish6ci2m
         dW/G0EnfLajnb6ut/KpUL2qMaQJhetyXHw6GoWz3sBJ0RISXGQeGES0rgGpxX4qs6NQR
         OGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gSi1Ah1d23LVKhV/qf34+7YmxyvmTZnnpY8pAt+RfuQ=;
        b=Yi14gQVL/6iztu3jP0frdvTIFzyeOnCkDkNw5HDvfGAR9JL4Q17+owrXGspn49XJMh
         +qjjuFPlJoKUiHn54y1zrlt6wDfYsxq0YCcMlxVW7JGIzqqscEt+cBzp5ZSDatoKOgxe
         gFibiunF1Cvu/GEa2mVbo+FgpPteqFBJnqIc1isjTGUexjTbCrGm3adMO+axMrWQrFWV
         7KPjQbWDwsUnSsOwHk3NYXlZeKn5/7JaErbFMThxb9EfSlAhZRBPxquuxVhvjuWN9Hnu
         kVQrYi0I+AEx7gW6OKUBzT+a156HNw0NzTsnCf2QM08vxHAkDKJ/awdPPpdpR4RsgMPt
         8lkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXn6uH/nlbd7HrcQmSy1bAWid6H9vW1CCtToec9MUM56osCHGf
	Kfar4cJEWT2kz32wcfskKqM=
X-Google-Smtp-Source: APXvYqwZzajhJl754UU1ubldK7RFejF/lJi/B5YxjJiWTb7HFqt4ZJkg16jZWAaE56GAXYJaYLdj9A==
X-Received: by 2002:a63:56:: with SMTP id 83mr11414207pga.145.1562941774235;
        Fri, 12 Jul 2019 07:29:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2f02:: with SMTP id v2ls1595168pfv.0.gmail; Fri, 12 Jul
 2019 07:29:33 -0700 (PDT)
X-Received: by 2002:a63:6a81:: with SMTP id f123mr11432896pgc.348.1562941773912;
        Fri, 12 Jul 2019 07:29:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562941773; cv=none;
        d=google.com; s=arc-20160816;
        b=rvJQpoFyxZiCLuJHFiQkYRbuhc1Lfsof53rPJhB+gxplQIk3pG0fk45MJ4WCbv5lLh
         KYkhWXGwMZhyzLgwHcVs+W+cNB5vwJtR9W6oC5wo3nqMeCtfIeX5YsNrm7cpeFpzMGt0
         4Us5QvyZB6PxLQr6i58Wc0J8+wp8QiN2YHhAeVAeT0tQwFjjgOPIbPF/IOnr13eUbR6i
         EfdcRkTlJxG4H9GY/sJn6l0sv1X+gAnLg+5lTjyyAuvtemDYy7Mtn21Rasb7jB7WCc0d
         JJCfMRbzX5eLuW99mYuXAdB8XpcomQePCJczRuIUNwTPTH76QPUEfmxNPGfUrY7w9MS9
         eDwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=fqDosWg9ja/6yEeQaci7b1hQW+OQrz3SyrvhWF+cu0o=;
        b=Yn1aH1opHWE8nyUHOXe1JpxftgwaU8Fa0hPHSCrpaH6Lew4ZZhkb6eF6+qlVXetsJh
         /ahpaH7ePL5gGxopHJgndqpsfX9SEcPwvHR0maO5b66Eai1Ctyy3v4vUoNv+psKfKklD
         zLQ6CCxvQdOlBhq3oo67QA2u2UBaUO7p8GmqGOQ0EWx3M8g7q1S58eefJibI3MExnjyc
         d+NbkMOMRhjQ3XCIddEpDwLLoz8ywBPoT911Qq9FT8sbYkwyME1az+W75kqj0SwqilpT
         tVolCE4f8xI+PfYovWhAX4jmfwV8LUv48fGAocUTyiQkWhowOXBqIwSBPpINxXEMdiDp
         SHwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id y186si262555pfy.1.2019.07.12.07.29.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 07:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4EFCF36883;
	Fri, 12 Jul 2019 14:29:32 +0000 (UTC)
Received: from treble (ovpn-122-237.rdu2.redhat.com [10.10.122.237])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 194A360920;
	Fri, 12 Jul 2019 14:29:30 +0000 (UTC)
Date: Fri, 12 Jul 2019 09:29:28 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
Message-ID: <20190712142928.gmt6gibikdjmkppm@treble>
References: <CAK8P3a2beBPP+KX4zTfSfFPwo+7ksWZLqZzpP9BJ80iPecg3zA@mail.gmail.com>
 <20190711172621.a7ab7jorolicid3z@treble>
 <CAK8P3a0iOMpMW-dXUY6g75HGC4mUe3P3=gv447WZOW8jmw2Vgg@mail.gmail.com>
 <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble>
 <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 12 Jul 2019 14:29:32 +0000 (UTC)
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

On Fri, Jul 12, 2019 at 04:19:02PM +0200, Arnd Bergmann wrote:
> On Fri, Jul 12, 2019 at 3:57 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Fri, Jul 12, 2019 at 09:51:35AM +0200, Arnd Bergmann wrote:
> > > I no longer see any of the "can't find switch jump table" in last
> > > nights randconfig
> > > builds. I do see one other rare warning, see attached object file:
> > >
> > > fs/reiserfs/do_balan.o: warning: objtool: replace_key()+0x158: stack
> > > state mismatch: cfa1=7+40 cfa2=7+56
> > > fs/reiserfs/do_balan.o: warning: objtool: balance_leaf()+0x2791: stack
> > > state mismatch: cfa1=7+176 cfa2=7+192
> > > fs/reiserfs/ibalance.o: warning: objtool: balance_internal()+0xe8f:
> > > stack state mismatch: cfa1=7+240 cfa2=7+248
> > > fs/reiserfs/ibalance.o: warning: objtool:
> > > internal_move_pointers_items()+0x36f: stack state mismatch: cfa1=7+152
> > > cfa2=7+144
> > > fs/reiserfs/lbalance.o: warning: objtool:
> > > leaf_cut_from_buffer()+0x58b: stack state mismatch: cfa1=7+128
> > > cfa2=7+112
> > > fs/reiserfs/lbalance.o: warning: objtool:
> > > leaf_copy_boundary_item()+0x7a9: stack state mismatch: cfa1=7+104
> > > cfa2=7+96
> > > fs/reiserfs/lbalance.o: warning: objtool:
> > > leaf_copy_items_entirely()+0x3d2: stack state mismatch: cfa1=7+120
> > > cfa2=7+128
> > >
> > > I suspect this comes from the calls to the __reiserfs_panic() noreturn function,
> > > but have not actually looked at the object file.
> >
> > Looking at one of the examples:
> >
> >     2346:       0f 85 6a 01 00 00       jne    24b6 <leaf_copy_items_entirely+0x3a8>
> >     ...
> >     23b1:       e9 2a 01 00 00          jmpq   24e0 <leaf_copy_items_entirely+0x3d2>
> >     ...
> >     24b6:       31 ff                   xor    %edi,%edi
> >     24b8:       48 c7 c6 00 00 00 00    mov    $0x0,%rsi
> >                         24bb: R_X86_64_32S      .rodata.str1.1
> >     24bf:       48 c7 c2 00 00 00 00    mov    $0x0,%rdx
> >                         24c2: R_X86_64_32S      .rodata.str1.1+0x127b
> >     24c6:       48 c7 c1 00 00 00 00    mov    $0x0,%rcx
> >                         24c9: R_X86_64_32S      .rodata.str1.1+0x1679
> >     24cd:       41 b8 90 01 00 00       mov    $0x190,%r8d
> >     24d3:       49 c7 c1 00 00 00 00    mov    $0x0,%r9
> >                         24d6: R_X86_64_32S      .rodata.str1.1+0x127b
> >     24da:       b8 00 00 00 00          mov    $0x0,%eax
> >     24df:       55                      push   %rbp
> >     24e0:       41 52                   push   %r10
> >     24e2:       e8 00 00 00 00          callq  24e7 <leaf_item_bottle>
> >                         24e3: R_X86_64_PC32     __reiserfs_panic-0x4
> >
> > Objtool is correct this time: There *is* a stack state mismatch at
> > 0x24e0.  The stack size is different at 0x24e0, depending on whether it
> > came from 0x2346 or from 0x23b1.
> >
> > In this case it's not a problem for code flow, because the basic block
> > is a dead end.
> >
> > But it *is* a problem for unwinding.  The location of the previous stack
> > frame is nondeterministic.
> >
> > And that's extra important for calls to noreturn functions, because they
> > often dump the stack before exiting.
> >
> > So it looks like a compiler bug to me.
> 
> The change below would shut up the warnings, and presumably avoid
> the unwinding problem as well. Should I submit that for inclusion,
> or should we try to fix clang first?

That should work, though I guess it's up to the reiserfs maintainers.

The issue still needs to get fixed in clang regardless.  There are other
noreturn functions in the kernel and this problem could easily pop back
up.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712142928.gmt6gibikdjmkppm%40treble.
