Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLEUXHUQKGQELIGT7EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F886B18B
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 00:05:34 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 65sf10869516plf.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 15:05:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563314732; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hga+dV7c81t2r5dPuvj8Sglca3EdPL/Ciyk0x1DyE0gW2t9DLevwEYznx62Ae4XHXH
         O//HKy1a7AIy7mirCvi2hFLoMAK/9NoYHj7zsjcxOoS5jFHLgARAbKxYhR+32loK/Ji1
         xn3pgveJB2trRake5jMyySEl+GxDCrQwbDc8ubCs4Nk8iUWAHfjKQ/61pPrOUJqOwKQu
         u4h7LfXgDC0Xy9EBcGYvB69P4FlflopJMDSDyfg2qgDov9Z4jF+B9OY0trzEbb/e3q2S
         oOI/kwdxQvw1b9ojDaD0g723ku8zZ1U2QLm03eHWg/Y5FeU2rFwP/C5gOjVuGNBNv+4q
         YSCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=t1MM2vRRiCetIWoZa3aEqV+cN4AVR4waecDL2UUUicY=;
        b=o8FaCYwkH9M4uR4LrDxAcaLSqUF2sFnvU1F1wkZw9EIsVxLhq6O1t4FSkaXlken9SE
         wmGynI/PdHpnadeFtFlE0NXIHgFJYoZx6TrxOey/ns7Niv7mbMVF/H95pB1/h7DShegC
         3Y+i4+7kj20+Z5Dg55cUE2jsYR4a965Rf+DIySikCD4ce1opAzCF0phFxUfzhDJ/fm8o
         nRBkOv8+JttoMdSjmz4gBkBpLnIlUDu9THEjYlX0y2lH7ZfIw0lSTV75ByMS6qLyJc7c
         6iRtQDY3L16MlagSE7/xXXE7agw8YcSbiGGLmQX7zBUZhvWFxwJfGn2P01NYdjMwDPuP
         5x5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t1MM2vRRiCetIWoZa3aEqV+cN4AVR4waecDL2UUUicY=;
        b=obT34uG1VMMXrIW3mF2oWYjeCeSKjeBZM5kHmHJT6mWjCtDKKTK3GwUQzJvcCXQr16
         djtqbOpOeqv8CkvyYkI2U68qW2/kVs5/pi0AW/0Gp8Z1uX9xnGAreOUzHTZkVh8p2Nlk
         6gmH5dzwEXDQK3YbOnJlakTgn0OmSN6j0aNHN0iTMkKoLnQv0m0U/o06d0xl4FzAsL7b
         yVjz023u5gtqP5vtvMMNZKHyBgW399O8KXnG2O+Z0r33qXJ3uqt/IsSoVD6dvkJFZcbR
         HtFVihJDkCER3uX4Mx+IryavOg/SYdLzfeB3OCtp4I9uruRUDqtyM9HPTm715J01G1Ru
         gYBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t1MM2vRRiCetIWoZa3aEqV+cN4AVR4waecDL2UUUicY=;
        b=IMwEzbVAcZvjzCa12dqJdrtEpt54/Z8K/6bmZul9XHqT25DlIAZUoFbNW9ADnVwgzp
         orG03JXMQsrBnQxHMVsx3XNQA0TWQxxX5/frSdrcqawX0ur+0yJHekSBseOmWbBoUVSA
         I5rAblF0CCxTRPSQg3Djj/EHWaEsEKc6yMxjr1Ws2P4EaO0jTlgviGoYK6aFB4KjRqA9
         hb5T9FwhVYONnqqo/2wru1jrNoBN3oJV9uEP5LKf6nvTBYZfFTwfcQL7hZrhXtxMKHXl
         FPERz3teqN7dlISvpv9Sj7nMd3fZQYzX4PU/4QZzCmeSuHAuGAW9gxe4YjA+N1aOstqx
         ioXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0vBXhrGe+36Ywlnid71efYpGsgndKZwV6cLrs67YyGER3JupH
	W9DW1V2b7YZayhSatObI7jA=
X-Google-Smtp-Source: APXvYqyiIDfuW2MrhsvviepQjbPH0SX8nGOKAqpQNy7y8xXJ0lp+s25I1NcZrh4y+JRRK9OxxdmqXQ==
X-Received: by 2002:a63:3d8d:: with SMTP id k135mr37664495pga.23.1563314732294;
        Tue, 16 Jul 2019 15:05:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9684:: with SMTP id n4ls5862614plp.2.gmail; Tue, 16
 Jul 2019 15:05:31 -0700 (PDT)
X-Received: by 2002:a17:90a:2247:: with SMTP id c65mr38038983pje.24.1563314731754;
        Tue, 16 Jul 2019 15:05:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563314731; cv=none;
        d=google.com; s=arc-20160816;
        b=Sq4YW2kK8Hyps09O6qY0a3LKUB6rIA8jMrFyo2Qj9J8FnnFsj0RGh7FZ08X89z+AgD
         jIdpmdhVdWtZGi1A27g6k+d8+HoZvJ4nP//5XY4vp7vEBvk6faUHlH54WhR4anP6fYPU
         YMoNEwCrsgxrmUb9Kqm52nF3K7siCdSDigUtgHkApDbcKWkRniydzRFBW3PJP70ERSd7
         oN6cwccL5X6stY3I2ZFLoLTK3OUMRdv9LtBunXcfxOOwicu13TLNCQH8KqdlyrtkjmbL
         /NafNPKBhesJnvsrA1DyHHYgR9Au10KQ+lEUpFFzhbhAmr2+EYelmgUAMeywguYAPr1v
         oXOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=65KRGEYO/3Bgs7IZ+YWXNcAEzJ5dZdwUKcf3VZBRcoA=;
        b=JaXMXjhOcCHzx6gT+NYqkSFB2vItrBafEZwXz3dCKqFWiKfh/4hDBvF9UNJea2z+o6
         qedMLwlkqxP5wHBoK6fIvvRZDloXroYrev1VvfAKpu+nuB2+p5zdZnz8BVdjvCuYq3/3
         7U6r7vs5LZmjWA5KC9mEN7anRKu5UcsuOAdzgU5ithLd7FPo5PvfTpu6uuDN9F0VSd41
         nNK0RwK4+7tOFAcf0KTsgWJezG/KHzrqpHxEwdFYldhdFY71Lt7Mo41sfGw9sRD1kEJ1
         hA9wPIkHgPhIUO+CuHGEqqHi+N8e+7FRwtW2O8U5nBMRwasLNrBoT+At4hIKW7TfOewB
         JHNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id t35si1129103pjb.3.2019.07.16.15.05.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 15:05:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id z4so21298726qtc.3
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 15:05:31 -0700 (PDT)
X-Received: by 2002:ac8:5311:: with SMTP id t17mr24046384qtn.304.1563314730760;
 Tue, 16 Jul 2019 15:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2beBPP+KX4zTfSfFPwo+7ksWZLqZzpP9BJ80iPecg3zA@mail.gmail.com>
 <20190711172621.a7ab7jorolicid3z@treble> <CAK8P3a0iOMpMW-dXUY6g75HGC4mUe3P3=gv447WZOW8jmw2Vgg@mail.gmail.com>
 <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble> <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
 <20190712142928.gmt6gibikdjmkppm@treble> <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
 <CAK8P3a0AGpvAOzSfER7iiaz=aLVMbxiVorTsh__yT4xxBOHSyw@mail.gmail.com> <CAKwvOd=o16rtGOVm9DWhhqxed0OEW5NKt4Vt3y_6KCcbdU-dhQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=o16rtGOVm9DWhhqxed0OEW5NKt4Vt3y_6KCcbdU-dhQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 17 Jul 2019 00:05:14 +0200
Message-ID: <CAK8P3a2Vq+ojOZSefwziMhzU2SG+Bq6HDz2Ssjz7_BpVnMUu=A@mail.gmail.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Jul 16, 2019 at 10:24 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Jul 12, 2019 at 1:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, Jul 12, 2019 at 6:59 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > The issue still needs to get fixed in clang regardless.  There are other
> > > > noreturn functions in the kernel and this problem could easily pop back
> > > > up.
> > >
> > > Sure, thanks for the report.  Arnd, can you help us get a more minimal
> > > test case to understand the issue better?
> >
> > I reduced it to this testcase:
> >
> > int a, b;
> > void __reiserfs_panic(int, ...) __attribute__((noreturn));
> > void balance_internal() {
> >   if (a)
> >     __reiserfs_panic(0, "", __func__, "", 2, __func__, a);
> >   if (b)
> >     __reiserfs_panic(0, "", __func__, "", 5, __func__, a, 0);
> > }
> >
> > https://godbolt.org/z/Byfvmx
>
> Is this the same issue as Josh pointed out?  IIUC, Josh pointed to a
> jump destination that was past a `push %rbp`, and I don't see it in
> your link.  (Or, did I miss it?)

I think it can be any push. The point is that the stack is different
between the two branches leading up to the noreturn call.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2Vq%2BojOZSefwziMhzU2SG%2BBq6HDz2Ssjz7_BpVnMUu%3DA%40mail.gmail.com.
