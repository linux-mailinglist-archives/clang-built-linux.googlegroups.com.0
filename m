Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYXYULUQKGQEG2SCWII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8E86739E
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 18:59:16 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id u84sf11343956iod.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 09:59:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562950755; cv=pass;
        d=google.com; s=arc-20160816;
        b=RXAAA3A4CcylenbmOAIvBE+J9a/zWO7DsiZhdLkYz7wRpmOWM29DpdOs1sXtLgZ7et
         +NitsCMfnXRNBoSCFB6oG2H52yqKMolbBqGG6QPeYZF6zELPZPybJxEHcql4kN5Un0vI
         VeILSO2yMGPySgvibLU8R+lccDvkBqW7S5O9L1w8u4s04qcSEZzRUY+MEgUaoLQavWaF
         xsF5p7leLU1hp9VZfCI5mAIOZCCFakXHh/agrj1wIKW89WRJ6BzJ9W+WwH3eVaU7HlK7
         wbRm9e3JUuGYYti4AjRergMnTsXkWTmCgebpQWEgDAaIyejkouvs9H7v5hR2ImSz9LSi
         kLQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4SyAC8hp4VRmo2A8ZWJCg6KYOQu68XIr/iBEYPFVkx0=;
        b=nLLwZ5cR4q17vo2Rcb/0ahoUNTBKqa9qqsCcx3y7UxUKzquKdEPSy9A4oF4cEX6HZ7
         2EspsLWihjzMdIY/1gHjM44VhcEEPBPFA6UtZDRtqXpHiCzdNKviDLdzjLOnAbtQgDAX
         WIGVx3UfIM9yLBalHhzF+DFm5tktakaeDBJZqjQcij+XB0HFZPu7r/BQntiSkorUbAYS
         0xNN7MPV4aSLbDjinIMEatRnQFDL/Oa3vWwMduXctiApSIJ15fBNvMaYkt8wrt5n2FPj
         TeijdZ9M0U8IKg2CdEDCrmDjN5GMhiVEw0/PclFz85rCB4ekcEi59YcodCLn0DjQN1vk
         KRiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hN7ksNSG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4SyAC8hp4VRmo2A8ZWJCg6KYOQu68XIr/iBEYPFVkx0=;
        b=UrGeJKxvi8zYqrCbhb3z5HqdqoIkPUKHN4Nn2p2Vg8Lm/BW8Smp66LHY4ZZZ4JjUd3
         JvlCVlL8E8a7UzYoZ0XrZVv55zQKoQ6WUovgSo755RjoLhfMAnugFdQ9PP0fpRCNHVoq
         CjJ+LR9i2oGSC3GwWVcHPdixH3EA4rm4lvJtEt0XWEvzTnIbzd2bQeccmAGzJcQdqJ2W
         Uyjm1nlirdHCWayl/iOEKHu+7ckn4BCYAc6lxw2kGGAxX25oV4CBGuM7yqZK6td7SqXN
         PCGS79XuLDrERiAX9rbMxBBojCCOoXZkLDOeD9DUxrL0yoDd9spToQkYur1wAyFFVt4B
         aunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4SyAC8hp4VRmo2A8ZWJCg6KYOQu68XIr/iBEYPFVkx0=;
        b=hMV/oC3Au0Vm8D2V0pahFI+tYuwPoWTwvCNhdPRdEpT/PV+/n2MeVCYbiTQyDT2BCk
         Bi/UkqDlzkUJpUwq9YLWzOlLXjXcTacSuDWvjNxNRjl1jhgakXSv078XWckpQoAllbSJ
         YvU4acI4LNinWoobDPs7PfgZAyXgShRFV50mapLxaIqkYjxVmW8+C6G/90BjkbpBpbYu
         ++SSxayjAjuWyhhg+ulNQke5jqMsPSD+4Y3OaZ7z4Mw+/HHzth2TWWe6dyVQVynjlQTe
         6bmNphS5TwYMncyFvGyw65naaX7KQr13+0bi0EIY5rM4v6n/zEfVmkFxQQdQBoSooMMJ
         Q16w==
X-Gm-Message-State: APjAAAUBJLlYHEEWMu7o+klvodRC7ZVsNIuMDtO791ln02wViXWZVR1E
	X6RePXXX7V2NWKnFtV3bxRI=
X-Google-Smtp-Source: APXvYqyqy57xPe2OSCCQKpdtYj/HitHlxnMQxmJvg4/B0t2mmXKWygAjyOJ77J90q2+hi5Mzyq2+qQ==
X-Received: by 2002:a05:6602:2289:: with SMTP id d9mr11925374iod.47.1562950754928;
        Fri, 12 Jul 2019 09:59:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:782:: with SMTP id f124ls1565126jaf.1.gmail; Fri, 12 Jul
 2019 09:59:14 -0700 (PDT)
X-Received: by 2002:a02:230a:: with SMTP id u10mr12616756jau.117.1562950754643;
        Fri, 12 Jul 2019 09:59:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562950754; cv=none;
        d=google.com; s=arc-20160816;
        b=ewmq/wKzpqxkB68tV9gjb/rhV+h8ESHCZJJHTvfZ5S4Xz2lhbuaJnyEDQj1dDdBO6p
         rlKCjMFiGsTtouTFxyjLKNoKTafOSdCdy2+o9JYgr2MuGS0F87m9X+EThwdOszpA8AUA
         yIjClwzdE9Vo8SGNA50QiuZN3APecbvTJv4fJJ9lPaJ40P746421S3A3xO4mddkBZ7Cr
         QbaMc3TjRperFzXL6fsGkW6yYBpsyCc0ZMat+qLhhBo1eUlJDiClHnb3U9/ADPVJD14T
         kg9NP98cXdRgGlUx/y+1dIo+VtrgtLJIYSJKpI/oybwzWB/Y8AhOiyO/tlXvsGxtxNft
         EhIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=srwfPJxVIL0yVnmYxIpxeAMujgHX4vNSJddm4DFEsWo=;
        b=nHcI832VnN23jRk5h523PKvuCfiWQ6bboXD9PRfWpVjHQJwZtal1fNsTbt9j4lp8TO
         /dD9meUW/J141U0kAAWhYPvjN6MhdbTYgyhHYiDIr4NohToj4WFP7L20jm8v7JPbMIOK
         0JTYpsPsn8M+5S3894A6sw1HzhFwCZMaZfYKi2gwv9eR5Zpb1SmO19oM+nz5Sz07OPf2
         u+4PuuQ8qUhL8pmHiePpE2jIRcm6ACMVPODKOKY+iEmb+gEM8HBnljw85nE4P+3tCwCl
         81Dy7FEPN9DRnZ5TjtFu6aqlCYLn2Bjnwix2FF2XfF1nmpvLf/XSmIrgtsHVS5524LAy
         A4xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hN7ksNSG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m190si506858iof.3.2019.07.12.09.59.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 09:59:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id c73so4542875pfb.13
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 09:59:14 -0700 (PDT)
X-Received: by 2002:a17:90a:2488:: with SMTP id i8mr12659243pje.123.1562950753587;
 Fri, 12 Jul 2019 09:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2beBPP+KX4zTfSfFPwo+7ksWZLqZzpP9BJ80iPecg3zA@mail.gmail.com>
 <20190711172621.a7ab7jorolicid3z@treble> <CAK8P3a0iOMpMW-dXUY6g75HGC4mUe3P3=gv447WZOW8jmw2Vgg@mail.gmail.com>
 <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble> <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
 <20190712142928.gmt6gibikdjmkppm@treble>
In-Reply-To: <20190712142928.gmt6gibikdjmkppm@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 09:59:02 -0700
Message-ID: <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hN7ksNSG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jul 12, 2019 at 7:29 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Jul 12, 2019 at 04:19:02PM +0200, Arnd Bergmann wrote:
> > On Fri, Jul 12, 2019 at 3:57 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Fri, Jul 12, 2019 at 09:51:35AM +0200, Arnd Bergmann wrote:
> > > > I no longer see any of the "can't find switch jump table" in last
> > > > nights randconfig
> > > > builds. I do see one other rare warning, see attached object file:
> > > >
> > > > fs/reiserfs/do_balan.o: warning: objtool: replace_key()+0x158: stack
> > > > state mismatch: cfa1=7+40 cfa2=7+56
> > > > fs/reiserfs/do_balan.o: warning: objtool: balance_leaf()+0x2791: stack
> > > > state mismatch: cfa1=7+176 cfa2=7+192
> > > > fs/reiserfs/ibalance.o: warning: objtool: balance_internal()+0xe8f:
> > > > stack state mismatch: cfa1=7+240 cfa2=7+248
> > > > fs/reiserfs/ibalance.o: warning: objtool:
> > > > internal_move_pointers_items()+0x36f: stack state mismatch: cfa1=7+152
> > > > cfa2=7+144
> > > > fs/reiserfs/lbalance.o: warning: objtool:
> > > > leaf_cut_from_buffer()+0x58b: stack state mismatch: cfa1=7+128
> > > > cfa2=7+112
> > > > fs/reiserfs/lbalance.o: warning: objtool:
> > > > leaf_copy_boundary_item()+0x7a9: stack state mismatch: cfa1=7+104
> > > > cfa2=7+96
> > > > fs/reiserfs/lbalance.o: warning: objtool:
> > > > leaf_copy_items_entirely()+0x3d2: stack state mismatch: cfa1=7+120
> > > > cfa2=7+128
> > > >
> > > > I suspect this comes from the calls to the __reiserfs_panic() noreturn function,
> > > > but have not actually looked at the object file.
> > >
> > > Looking at one of the examples:
> > >
> > >     2346:       0f 85 6a 01 00 00       jne    24b6 <leaf_copy_items_entirely+0x3a8>
> > >     ...
> > >     23b1:       e9 2a 01 00 00          jmpq   24e0 <leaf_copy_items_entirely+0x3d2>
> > >     ...
> > >     24b6:       31 ff                   xor    %edi,%edi
> > >     24b8:       48 c7 c6 00 00 00 00    mov    $0x0,%rsi
> > >                         24bb: R_X86_64_32S      .rodata.str1.1
> > >     24bf:       48 c7 c2 00 00 00 00    mov    $0x0,%rdx
> > >                         24c2: R_X86_64_32S      .rodata.str1.1+0x127b
> > >     24c6:       48 c7 c1 00 00 00 00    mov    $0x0,%rcx
> > >                         24c9: R_X86_64_32S      .rodata.str1.1+0x1679
> > >     24cd:       41 b8 90 01 00 00       mov    $0x190,%r8d
> > >     24d3:       49 c7 c1 00 00 00 00    mov    $0x0,%r9
> > >                         24d6: R_X86_64_32S      .rodata.str1.1+0x127b
> > >     24da:       b8 00 00 00 00          mov    $0x0,%eax
> > >     24df:       55                      push   %rbp
> > >     24e0:       41 52                   push   %r10
> > >     24e2:       e8 00 00 00 00          callq  24e7 <leaf_item_bottle>
> > >                         24e3: R_X86_64_PC32     __reiserfs_panic-0x4
> > >
> > > Objtool is correct this time: There *is* a stack state mismatch at
> > > 0x24e0.  The stack size is different at 0x24e0, depending on whether it
> > > came from 0x2346 or from 0x23b1.
> > >
> > > In this case it's not a problem for code flow, because the basic block
> > > is a dead end.
> > >
> > > But it *is* a problem for unwinding.  The location of the previous stack
> > > frame is nondeterministic.
> > >
> > > And that's extra important for calls to noreturn functions, because they
> > > often dump the stack before exiting.
> > >
> > > So it looks like a compiler bug to me.
> >
> > The change below would shut up the warnings, and presumably avoid
> > the unwinding problem as well. Should I submit that for inclusion,
> > or should we try to fix clang first?
>
> That should work, though I guess it's up to the reiserfs maintainers.
>
> The issue still needs to get fixed in clang regardless.  There are other
> noreturn functions in the kernel and this problem could easily pop back
> up.

Sure, thanks for the report.  Arnd, can you help us get a more minimal
test case to understand the issue better?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg%40mail.gmail.com.
