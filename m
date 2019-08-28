Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD7ZTPVQKGQEIOKULWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F20DA0D4F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:13:36 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id p80sf1177396ybc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:13:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567030415; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4zcKdiSQ6fEjU1sK3rjN0xBQfLSbdJ+FaUl7MGMdY1IU+UBTUqXNfgXTFcoNR4Z3Z
         NikS+z9zoqd5LV6ji09FvlH2lLy8SNOVEdLUd2Cl0q6fTX97Pp4j8E+ZK84dafPbsrz0
         GgBMyh/OBupq/FYCl7rFevWuvnd5fcN9gu6SGWI0WZ3YKHjQF8AUxWKlkY44yFBizp+9
         YiEbKYLhQMdydZXVvIdAXFqjb6WunjCX5+M8+U4hUsujQbh/pKddfuMtQhk8MY3cEtNb
         9+CnB4Fv/ULHLMnXvszatolmHDPernza6EhkGhI4caFNEdQlC1esVto60tcRPjfk7HCQ
         spHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PqzfcuUd7QVi9J2EkwhfuhCSAf2TWbowUXmWwDZvjew=;
        b=EP/+rqP+i36xYxnXIv15KUzLPyp/wTQk0VvUwJ2jHKKBUwULkK3ZmSL/2d2eXM3lLp
         2yAP0cG6XDwLPC/Vm6THE6xc/f6pJkQeAwEwMBTjF/vjlLmgmh6yTTGLJfMrn/axNLIH
         Ic1VMPUVZKt4mQpDauszJv7z8RQsAdw7IAUDQuEEiv4EMFrmIJ0LwzKsrQ4SL4f9TEl3
         yGv9JggcsmFy1cqP6/QjGn1qQE5BvI0tgP3Gs7t1cfn4z/mnDJqJE/WOgnruvUMpvNH6
         nLsoEQtP6DrF3gTbzjWugTgSKxhx5f5X+T9Dh7SwUl/x2+Oktoa6Zty+N1ipdo1uS/tP
         oTkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QVkB+vGs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PqzfcuUd7QVi9J2EkwhfuhCSAf2TWbowUXmWwDZvjew=;
        b=r/4jHqx06Ho92Z+KL+y4pbXqvJwVeSBoNyxi365GYIdQD6Ue+CEXA1zRUPv+P9qH+J
         4W9iHbjWbo0DeHrtPQUH5qCKrbQxlXFDBL5tedzb9kC8qSYzETCT3TryX6rOunED3mMM
         UsMf9FrruGwSO54auokjT1B1C0DzA6FMTM2gXG6bptyvDBcCetqKSuOFBp84wwnp3ZAA
         IYQ0n7oETXPfZsjuqTQzzgVelkVE/F5vSCaV5pR61vozuuenkPLPZ2tKXE0NDHLCWgt2
         c/5LseWyKGsCXjNMgIp5ipj9U/RbP0TvC3M2mEOOjLIdPEqO3lmVxYeLcCApNTOWahkq
         MkYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PqzfcuUd7QVi9J2EkwhfuhCSAf2TWbowUXmWwDZvjew=;
        b=Bqo369Lc1KpM4bySxXRZB71D8zFlvwPZ5bYA0OXvl5yRoqfx8pwAPelZaqALPOq10f
         lZxCuPYWPW4WLGEmGXp18IjNb9b2sL5W0LhJuPqSRZd2dOmqUkQZZ7r5hEPRJqPj6xXo
         K8qGCQFGX5ZQrnv+asKgTBoeDpMpvIkQgr0GjuBDxpTRP5tnUS3J4EpaS4CO1RIoL3qt
         ID2LbQemGLvVy3/PQ+olqpZNZw2cbBZn0ujOBGx/svbgpZjJPMxe73OHsL8BTB3ulGDD
         Th6w+iQjx7uWGpfni3xLsVh+j5nmQkJ+xYeO7AAYoydpGSfzvrzC5bep33LE/fAnRCeD
         olYw==
X-Gm-Message-State: APjAAAUQ8ToWEvLQoASXbAe8943mwYg0HVJ4YHvXEBkyxhmJkUARaPkV
	0J6PgRj6lfiGt5kUDBv/WS4=
X-Google-Smtp-Source: APXvYqwrWOe+mMBH1fCn20knmQAQ+/QZLE37cMzx53EodFC3s4hA4UvagobQj5ts+unSaCtKnFXC2w==
X-Received: by 2002:a5b:d08:: with SMTP id y8mr4503461ybp.464.1567030415337;
        Wed, 28 Aug 2019 15:13:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4f0a:: with SMTP id d10ls62147ywb.13.gmail; Wed, 28 Aug
 2019 15:13:34 -0700 (PDT)
X-Received: by 2002:a81:2812:: with SMTP id o18mr3377476ywo.155.1567030414964;
        Wed, 28 Aug 2019 15:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567030414; cv=none;
        d=google.com; s=arc-20160816;
        b=aVmT3apzEKg7EoBdRxsxDIeGTSF6ZQ1qWhF9zhkuiIhPBCDY9C5s6GTFmWAPFsAjYV
         ZEpCjo+CxhMd5Agv7Bnvrlm2S72AtRzwQ8bDCr/JKF5m91aYVQ/lPBe+1MEssaIc7z33
         WwxRwLJYjxJaDqFmrTWyyGm9UnmMo9mUCGq4FYak2FyGK1lkz1dZo0aeYph5mryERjk0
         RWTaPDdqBRF0wQYQVB4cL0nfp6yaPwpsbfeeWIO54CXVYtI5bi9LAdvNqRkOkndHrlFC
         9DNlNQxdTjf0bXPSZ26Amn26glctRxX9+B1LSB0tADp/wJ8rfRJBOFajKSbp40mjFdmb
         1sJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L46ONnOW0M6iW1Vp+WUrD6Jyzw4pGNakADqoU3eqTEQ=;
        b=F4OAfzmig1vvOUo7KQOhyHovmff9JHtv+JrUaTbhvlQV90YjCwH0QULVq8SgcJYPz2
         u8Z4hsPsRuF7Qtg+xESQlP5mWNYuP6x9+Rt2IgsoFAnUKYgyeJ0S2RyXqg3JUxJvAtxn
         nDsZnmfVdRnAZy8vDse3uCcYJQMloRTFw5mUzCZumTru1ado/YA0x85AIjqZg8l6jovM
         y6dhMSWkuOueniWamCtme54nJ7YQ4FFNilWEVgxPcY6EnaA7WeVBIorG6jiBzu/zTvm9
         qhpkl9Nc3lo+411popp8DdNGJ0/FGGv3osKlUfxEjPbZ/hzkl+U5AZIs+5G6QpgEwoFN
         E76g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QVkB+vGs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id r130si46224ywe.5.2019.08.28.15.13.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:13:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id f19so599996plr.3
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:13:34 -0700 (PDT)
X-Received: by 2002:a17:902:a9c3:: with SMTP id b3mr6518760plr.179.1567030413776;
 Wed, 28 Aug 2019 15:13:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com> <20190827192255.wbyn732llzckmqmq@treble>
In-Reply-To: <20190827192255.wbyn732llzckmqmq@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 15:13:21 -0700
Message-ID: <CAKwvOdkyvZf-oM6aXuCD6Aa4zDqZU-fKu5uUF6E05V6rWnxpKA@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>, Arnd Bergmann <arnd@arndb.de>
Cc: Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Eli Friedman <efriedma@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QVkB+vGs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
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

On Tue, Aug 27, 2019 at 12:22 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Aug 27, 2019 at 09:00:52PM +0200, Arnd Bergmann wrote:
> > On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> > >
> > > > > $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> > > > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
> > >
> > > Yes, I see it too. https://godbolt.org/z/N56HW1
> > >
> > > > Do you still see this warning with -fno-omit-frame-pointer (assuming
> > > > clang has that option)?
> > >
> > > Using this makes the warning go away. Running objtool with --no-fp
> > > also gets rid of it.
> >
> > I still see the warning after adding back the -fno-omit-frame-pointer
> > in my reduced test case:
> >
> > $ clang-9 -c  crc32.i -Werror -Wno-address-of-packed-member -Wall
> > -Wno-pointer-sign -Wno-unused-value -Wno-constant-logical-operand -O2
> > -Wno-unused -fno-omit-frame-pointer
> > $ objtool check  crc32.o
> > crc32.o: warning: objtool: fn1 uses BP as a scratch register
>
> This warning most likely means that clang is clobbering RBP in leaf
> functions.  With -fno-omit-frame-pointer, leaf functions don't need to
> set up the frame pointer, but they at least need to leave RBP untouched,
> so that an interrupts/exceptions can unwind through the function.

It sounds like clang has `-mno-omit-leaf-frame-pointer` (via
https://bugs.llvm.org/show_bug.cgi?id=43128#c6).  Arnd, can you give
that a shot?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkyvZf-oM6aXuCD6Aa4zDqZU-fKu5uUF6E05V6rWnxpKA%40mail.gmail.com.
