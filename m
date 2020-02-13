Return-Path: <clang-built-linux+bncBDYJPJO25UGBB75HS7ZAKGQEHI5GLUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F3C15CE5A
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 23:56:00 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id g7sf6206540ybo.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 14:56:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581634559; cv=pass;
        d=google.com; s=arc-20160816;
        b=QRUuqHtPKLkaKFDp+nAMf7JgXPEAHpnSZv7dYqP07X2ylrK3uzd8tpDI2b7mQQ6IzA
         VMFX7poSKaZT1sVOg/Isd+mkjKIoWBnrxS5VujSJB2i26RU2AtkR4oFm0WGU3gisImsa
         RhqvvnG+PiZ+B8M9Ek9OYmDEjFMVVS8IM7WyTA1hZtvG99gNe0JgCBKQBloAGjAZnDc3
         UilmR+N278hRjA9tCaz/2jAtPkTDy/9kM+rXT2BwJ/T3PixkA590sS9qElUuE6H7qvFe
         z+Te4c5LQn6FG3No4w1xFKzAB9XLp8Kp4SsQi0Gx6kjIvDct/w68W8W5XN5tSZ8hh4r9
         Xiuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rcPueaugbfsiMA/j7Th5O6xKMeZAPPTm2RhnABOmObU=;
        b=JG+7Tl6AQdXYlfx3WNlrPgO7RlH2i7Y2aBl0GS9zTR+MXeRviN3i6jgNhBMYpw9RmI
         DEdPQ0XC1IbVOtkG0Vr/wu7yRa9IA+9HPwuWI16t4itfAIRieS0J4e94F/Z0JPcHIY2K
         rs3D85M2RygPpxx4T0IK6gUXnpHdv7ylFKHhgc8fV/H3uSJdh40SpeKvy64hyAUHLHfF
         RfPkz6zSZAiTTTrahcGDuu+SGXdr2Vr0pyX45k7BRk/wAqvDzxMpG5BqhbfcPHLS0E7h
         WhCEVk9PutZl8IieSck4275lZ4jZwuDreyug5pjY6RcJ3HzQBYj28NLcsf6me8EtB3/z
         OwEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AoIpz9KO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rcPueaugbfsiMA/j7Th5O6xKMeZAPPTm2RhnABOmObU=;
        b=B10OYjJGbSFbTvMOzBTt/gEjuPZFu9QAkcIxXHub9CJHGSxP6LDY4HDgSYLSBP0OwV
         F0XlolvNKSKJYBas1/UgAg17dnMK8DJlkhUNI0BSvabOP7gMGsN2cfQXARdQURY748V4
         87NAB0dwB/I1xxrMRR9MDzma8ias62Z+w388mj0DRIfwoKQ9OrfRW8o0XHleu1HFZVR1
         1RuJ4ZTH6ndCmKO+die9V4wIkZfQHw/z/XSAZkvKgmR6gjmy3/lpXG+30/E+Ysnac43Z
         JGGnghA4YZsmAY6gVQhzKY8K4AP4tx6kt9E1By726riQeD5SuChsva+R0ZizneSgdXue
         QAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rcPueaugbfsiMA/j7Th5O6xKMeZAPPTm2RhnABOmObU=;
        b=SFmac5Jqhuf6UVcuNScMZeuGgywyktpEYYnTOiGh5vjhmdQ4cAKNaGNZW0fFuaGt7g
         MtkNYzcwbpTb+T1/bxXe09jtr0kKxtciwqj1MBzYagZyKVegYQXsbPKzWh/S2g+ezurg
         ZgWpC2cZf3SXAc4eFRe/jY/8yvQvQvIQCZrtXHN5ro0a3NfGX+O1R9YZC9UdVQYCG7Cv
         81bvzhupsS5Sn6O70TVm0mJuis3MIw7IIvkZnDvSFw4cHxoHC8/oj8qcnsSrA/flIHgs
         MqljcTrXnGWWDbkG36Jwce0wDT8aHJBJX37k2P/aIXkKjXQNZFIfdkIZMceoSnFhWvNT
         dKAw==
X-Gm-Message-State: APjAAAVQZFEAbGtyUnp/awqO0ZY9uU4xPOJ/kEHZ9ePURa6sJ/z1pzkw
	1iDK53M7vwUAQB/rgq/piCo=
X-Google-Smtp-Source: APXvYqzhV3QR/B9Znhav09OabxvXn4k0ipw5xXmxp3vEuuCoou8y0TBFr8UrpUT1YK1U+XuTtnvqHA==
X-Received: by 2002:a25:ef0c:: with SMTP id g12mr5227ybd.405.1581634559704;
        Thu, 13 Feb 2020 14:55:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2f88:: with SMTP id v130ls3357483ybv.2.gmail; Thu, 13
 Feb 2020 14:55:59 -0800 (PST)
X-Received: by 2002:a05:6902:72b:: with SMTP id l11mr26551ybt.43.1581634559312;
        Thu, 13 Feb 2020 14:55:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581634559; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/I3es8q/MzLrG0Bp3TjNjNnjdebAhdyXyLr4kyTBX4FfAdt99Xs4w2QS8IkKAWKgm
         uH9zgwE7r1FqfHsb1rAFsjdnzIMcm5So1DW/lTiMkf1fqmQXT6g6wQvArH3BgQtFcKTg
         qIRNVVVxi3vtlrPXITIbcktIa4tbOXv45ON4FLjaIqDlhyjNukSqAMfbEjOViluHa6Eo
         IWNBBBHDke94u/TwQKX+RGRbmXms79gDYOoUZ1CNDOyhcrLKaik5lsc/Jid05an8SyVr
         0J/jt665xKstVzMbektx19IUeot69nTC2dg5AA0CMiw7bvWfZV0F2jRQyJ0Iy8swP5PW
         la6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VbaDWghw4kwOwM3o4hCkHjBsTkcKhGYXr0+o9iH4FG0=;
        b=kDUsc5Hwa1pFoVwfbUiv9RvoOrJNl895SBi/iWGY9lRKl0WUzc7bV9XWe9CNBShilF
         mCt+wv5V76FcmdLILbpZF26s30Ze5+ESkrmO8Io8WsnTJiFh1+gnur03z4ULLEBCI7QF
         jdWzMD/babnInpGfs+xjRchHiN3C+f+sk91A90Dnb9maR/hqjwVt/pL1HC2xp3EAbLZW
         /xFoTd0QcRmHqeBvfvQq0zSG5GKWQr24osqMdGmQZrnSJhVvtKU3CAMHlon2svtJaVlS
         cw/09r3dFbs+WGNFcebQPWMfUZtYcByRaFRr6R7fkW+4bqtA/dvUrRTetDmwsGjqS7S1
         KS/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AoIpz9KO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x10si227994ybs.1.2020.02.13.14.55.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 14:55:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id z7so3898427pgk.7
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 14:55:59 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr235966pgb.10.1581634558128;
 Thu, 13 Feb 2020 14:55:58 -0800 (PST)
MIME-Version: 1.0
References: <20200213184708.205083-1-ndesaulniers@google.com> <20200213221758.i6pchz4gsiy2lsyc@treble>
In-Reply-To: <20200213221758.i6pchz4gsiy2lsyc@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 13 Feb 2020 14:55:47 -0800
Message-ID: <CAKwvOdnsHMs0PV8uDAWktRDso--_AORNnDYdGHnp5+YYEm1kXw@mail.gmail.com>
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Fangrui Song <maskray@google.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AoIpz9KO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Thu, Feb 13, 2020 at 2:18 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Feb 13, 2020 at 10:47:08AM -0800, Nick Desaulniers wrote:
> > Top of tree LLVM has optimizations related to
> > -fno-semantic-interposition to avoid emitting PLT relocations for
> > references to symbols located in the same translation unit, where it
> > will emit "local symbol" references.
> >
> > Clang builds fall back on GNU as for assembling, currently. It appears a
> > bug in GNU as introduced around 2.31 is keeping around local labels in
> > the symbol table, despite the documentation saying:
> >
> > "Local symbols are defined and used within the assembler, but they are
> > normally not saved in object files."
> >
> > When objtool searches for a symbol at a given offset, it's finding the
> > incorrectly kept .L<symbol>$local symbol that should have been discarded
> > by the assembler.
> >
> > A patch for GNU as has been authored.  For now, objtool should not treat
> > local symbols as the expected symbol for a given offset when iterating
> > the symbol table.
> >
> > commit 644592d32837 ("objtool: Fail the kernel build on fatal errors")
> > exposed this issue.
>
> Since I'm going to be dropping 644592d32837 ("objtool: Fail the kernel
> build on fatal errors") anyway, I wonder if this patch is still needed?
>
> At least the error will be downgraded to a warning.  And while the
> warning could be more user friendly, it still has value because it
> reveals a toolchain bug.

Sure thing.  I appreciate it, and I'm on board with helping debug or
fix any compiler bugs we might have in order to re-strengthen the
warning soon.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnsHMs0PV8uDAWktRDso--_AORNnDYdGHnp5%2BYYEm1kXw%40mail.gmail.com.
