Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDHJYPUQKGQEUVVUSLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id B21146D6D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:37:01 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id n9sf14070863pgq.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 15:37:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563489420; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLtVj7WFRjpH6jSTgCdYuAdswPTPLyLJ9ne+xS6QhS8ZRqMC5N/0kgGr/2iCyTVdNB
         qYCjvB6/CBvc7dVVagyVu3wQFR6MgqyHUAv3v2DP5A7ituKl6tzSJlxcKplkWHO9hyHa
         /SCrRL5wP2+ESFsWre+Ie2kwGp5oVWxknACDe0708/KLdujSdqywJ/0li0VPfYuJFsIb
         oUE0lIFPC1/6oDC4Nk/Q4DdeTuo594uXIXapRGzrb3GK4ObQ2ork+IvahK251ZxZi0V8
         GrN+uZdhrdBWCePMPkmOEDTrUYqtzlGSFnm2G97AIQlmU2tB2WXpLrlD5yJNA7rD0dc+
         kZVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2yLQCwFoRcm6x3m/fsgB5T7pR6dWGRt/+XN7yPdXmPU=;
        b=BqMNBnHg5zMvJRRa8577CmshFb0/R55NNhT5nLG+uOdmsoNJ1EqP2rX1R3CgTZ1CRc
         dvkiHqawgvD6tanduEvyRnsC5l2rjrrkd9Jxm681Jv/MaKxdiwlQWDJ6dVXqsAQpesWT
         v/p1WJvC3EQKGJO32gnHFrYIH/pXdNWNYI+3Mtf1LIwq08cdCoiXSJ60gn4TmzDH0dmr
         5T+OG8WmkonnDSxiA9L4OHTZsFoWTeiP0TVlUIubUKyAlcvRRUcE8M3ceKonYDTA0ixK
         DdjQdylMnRg9tWZ645nuOp50SQNJxhBLxu/wmdQnnAjp26D14qSKszghOkzoX7IUr5Or
         jbDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VgFYnWus;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yLQCwFoRcm6x3m/fsgB5T7pR6dWGRt/+XN7yPdXmPU=;
        b=ANPfnOk6kTrlaGQd0t0vwmHYfOiBScA8PC8Rx/dKfQ8uNzIwjzsYlrcgomPFdX80sP
         px1UFiCv0gwChigNUnPDomt+iQX6MT8HvBzYaOMSLJRNqHxgWnhx1hvrIZVd8nyB/bXa
         dSVvKk85HUkNPskJXuSDol8wr5A/eJee97o9ILOM9yzqsMM+fssiqpF0LA/3R0IQbna2
         jX4V7XnFodCnNuXfzXh9XmCDIhYMkD8ElEOSdXjzaoqLk7JTaAspJwEeSZsOtbokP65/
         1CxsfIsHjwVoHdZBNwe8PkT4pJjNJXIcTNNalVGgy6FJ3e1VeVJXeRg7KPg6aYOj6gdb
         VhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yLQCwFoRcm6x3m/fsgB5T7pR6dWGRt/+XN7yPdXmPU=;
        b=QkOvcroPreiOBVimQOMRl8GbQ/g/JCkssRWq6X24nFRaa14avbrHsVcROmpX35O0Qk
         pDnfh4cqUkWDpIb6ClO1hGxPlNeUjs7p9lQFz6ri6U2V1iOHGq6ZduRB+hJb6c6MZw5J
         PK3/nRwz4HmTzBNVTtTyfS4lvgcVXoamHlt0KaqX3Ed18gmHK+T/iwLl3TnSW5147TW4
         sITDMl1S6/bF6ZE84ZhcNS5OKh5ALbAkr3oIvV1LhLxNCvcqj1986DqtrVXIrHRDz96T
         tn1Ik8N649t/ZF74vkGojmTkzax+2ozLM6ml4+3yK31eQHaBUkVyWXw5GTqiOJo4QWCj
         CpzQ==
X-Gm-Message-State: APjAAAUdcRY8QBGDvx0KLw0OTE72HWsmHFFfG9Aruzo1C2zPkxcjm47O
	SEjcx9sTXdluLYcDvhoGQdo=
X-Google-Smtp-Source: APXvYqx/R0te09Z52MuHzq5thYRQyrgUEzEcy/DjDFJTeCn8mfyzhMceZgJdzL8c/jEwd6EVFm45Xw==
X-Received: by 2002:a17:90b:8e:: with SMTP id bb14mr54017426pjb.19.1563489420147;
        Thu, 18 Jul 2019 15:37:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34e:: with SMTP id 75ls3295951pgd.11.gmail; Thu, 18 Jul
 2019 15:36:59 -0700 (PDT)
X-Received: by 2002:a63:c118:: with SMTP id w24mr47726095pgf.347.1563489419788;
        Thu, 18 Jul 2019 15:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563489419; cv=none;
        d=google.com; s=arc-20160816;
        b=Os1eykO2SypUpih3NmOBtmNkIbQ7CP1ntM10KjEN+aMmPLXyCViWxNmbMxSBn4roAz
         GBiyfQYMrOHrLlR1bqNXOg0jUNnZHs3iUiCmD+4DXxEk4vAaRGMaNTSHA7Pb5Lt4Ya8t
         eZrLlu/8Nd/Y6gm+bt5fr+Alk3Y0LSvI7FEA6jx+XCsUDJBbwK37OaOHE8VEpL+t6cTC
         D2IhyKn0Y7efXKjnm6FnHw7wQD3qa8UtZgmGtMKh0QlvAiJ3XX4rAsy9+szYxBnVKq2m
         saI3gzqm22VDSubAfFOcJJ+NodXsmbsegrTViDUquftUXCa7hhvRSJn+Br7YPywl5T0v
         E5pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zlHONfgp4QrkRiAasjKvrG/YSZVb2X1BIf4rO6PjDZs=;
        b=vHiDzypvWBQdVS2saFtIuJOuvh66nCw9TN10jmFf1xwdfeO/RFJRjo+kMnNnzII71B
         GVVQe60Hlj4cucRapKscFa33oKE0TLRAddMCZ3h7FjWH8aZGa31CZ64E28KSv5ViN2+/
         RkneiC7rG2Vdoc+onzanUhR6xiJbVJsbYsoSn1svAumT2Inzq5/iSfPtvyLrRU2/CKWO
         9XCZ3zuqoJC8c4OuZ42nWyqqAxSAv5VQBtfMSUdWeuGKgran2bPHa8X+UC0qk3tr27zw
         2WSOvs/5lSMbLa8uwHXePYa8bcOfyc6zz82WQJLvZqIuMUSnDQ4OgWlzjOY0rxdKfxmo
         mhRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VgFYnWus;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id w72si1033017pfd.2.2019.07.18.15.36.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 15:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u14so13269921pfn.2
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 15:36:59 -0700 (PDT)
X-Received: by 2002:a63:2cd1:: with SMTP id s200mr46619294pgs.10.1563489419062;
 Thu, 18 Jul 2019 15:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble> <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
 <20190712142928.gmt6gibikdjmkppm@treble> <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
 <CAK8P3a0AGpvAOzSfER7iiaz=aLVMbxiVorTsh__yT4xxBOHSyw@mail.gmail.com>
 <CAKwvOd=o16rtGOVm9DWhhqxed0OEW5NKt4Vt3y_6KCcbdU-dhQ@mail.gmail.com>
 <CAK8P3a2Vq+ojOZSefwziMhzU2SG+Bq6HDz2Ssjz7_BpVnMUu=A@mail.gmail.com> <20190716230336.y7nk24ybbwguio2s@treble>
In-Reply-To: <20190716230336.y7nk24ybbwguio2s@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jul 2019 15:36:47 -0700
Message-ID: <CAKwvOdm_MiACJWnRww3tSD7033J6MX2Erzs1xwmd1=taNmyg9A@mail.gmail.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VgFYnWus;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Jul 16, 2019 at 4:03 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Wed, Jul 17, 2019 at 12:05:14AM +0200, Arnd Bergmann wrote:
> > On Tue, Jul 16, 2019 at 10:24 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Fri, Jul 12, 2019 at 1:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > On Fri, Jul 12, 2019 at 6:59 PM 'Nick Desaulniers' via Clang Built
> > > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > > > The issue still needs to get fixed in clang regardless.  There are other
> > > > > > noreturn functions in the kernel and this problem could easily pop back
> > > > > > up.
> > > > >
> > > > > Sure, thanks for the report.  Arnd, can you help us get a more minimal
> > > > > test case to understand the issue better?
> > > >
> > > > I reduced it to this testcase:
> > > >
> > > > int a, b;
> > > > void __reiserfs_panic(int, ...) __attribute__((noreturn));
> > > > void balance_internal() {
> > > >   if (a)
> > > >     __reiserfs_panic(0, "", __func__, "", 2, __func__, a);
> > > >   if (b)
> > > >     __reiserfs_panic(0, "", __func__, "", 5, __func__, a, 0);
> > > > }
> > > >
> > > > https://godbolt.org/z/Byfvmx
> > >
> > > Is this the same issue as Josh pointed out?  IIUC, Josh pointed to a
> > > jump destination that was past a `push %rbp`, and I don't see it in
> > > your link.  (Or, did I miss it?)
> >
> > I think it can be any push. The point is that the stack is different
> > between the two branches leading up to the noreturn call.
>
> Right.

So if I remove the `-mstack-alignment=8` command line flag, it looks
like the stack depth will still differ on calls to __reiserfs_panic,
but now the call is not shared (two separate code paths):
https://godbolt.org/z/tvkXwK. Is that ok or also bad?

I'm getting the feeling that `-mstack-alignment=8` might have some
issues once we start pushing parameters on the stack.  How many can we
use registers for in x86 before resorting to the stack, and does the
function being variadic affect this? (if not, maybe a test case
without variadic and many-parameters would not conflate the issue?)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_MiACJWnRww3tSD7033J6MX2Erzs1xwmd1%3DtaNmyg9A%40mail.gmail.com.
