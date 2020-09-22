Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUERVH5QKGQEEOCWBRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4C92748A3
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 20:56:18 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id fy7sf3012984pjb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 11:56:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600800977; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvOMb2reZKnZGKrJeZnI1sz8EJB3tpLk3cgUnvPcwiLa376aeLr2JXU7EvcjBTV2Ab
         T8tf4jF2ZSoEwG/uj5n26VgWMb4MsbGr7aRDiAe0BxeXkyvDiwv/s/aMgArojoCbbmGg
         BFBsQ0IZyawWRAi65jIwEU54TuyVT0LpWFD4aEfAk4aCZbgpeKiUuDccpkH5SIYLg2Cq
         Izpsa6kHAU1tVufl5lLsSOlnQzZyd74sW14yD8RfaZdY56JNoS77jcaei4QUPIXP+IQ+
         NqSKSS/5bJDyD4n6TM32IGpdJoayFMhge3jTdp/6wwqHgM0escARnc/qN+uV6UKZBV8j
         Izig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=I3tHNPhnu8dEy5FjFSudnek1orn4qi2VYpC2CW807gA=;
        b=r1DDJcsewB8zxrlQ4fXdDntSCAE+rHFVYl0OeOXAR04xnLNOYnMDEomX96dyyo1Nrx
         XaqyVnKBAhsNiNGFMtkBNwRyySJuC7lDnt4Vt6fqrbKcsEMdeztL41n3yZLhEhW7T/rC
         4OLteydzxjcsggd1iPVI1bnI84JgBPnNYPAfiXRFtVioQtV0lZTr/rjd2I58jzfF1kz+
         gUR0JpOJlG1mPzxC4BmjewdFiGfQEzgYgYbMyU/uzgzDkzno9LsIg18KQJ7IgkBnoS36
         ejmrZ8Ar5NfocDr9sZ96IhduS/B0T5vnx1R3agImZdiVOiAMUlGYji6rBZ6GpW+VKIZo
         f9Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2L3V214;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I3tHNPhnu8dEy5FjFSudnek1orn4qi2VYpC2CW807gA=;
        b=WHiC4RCk99O6UDhyFtJXZwHFm+4hYIOjUuo6Af1UziICZEe7s9lqrsPHxi5lTpYdDK
         TazPi9s7AUs+qBpa5l6hUTuTae/5TWycZfTUYKr2IJxI88xQFDtaYTcUoFlIwjENip0w
         59pQRnYHTKY3JEtrjc455ZVVCmGdgWjoev4B3wZXYMitQgAN6vLAZt/lQ2vF4Y3NVMKQ
         Bx0xDJtK2p8TLRZCHnuDkJcfPYYzNX/3BvsTAi8TjnxbLrbPDf5+BfKdZTv7P+WfzAtH
         762r6pZfUpnozBkht9CxxH+Eq0GhYWuguiHfrt2SSzZDaK7+u/OE8giRKXdK+L7ey/UB
         KT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I3tHNPhnu8dEy5FjFSudnek1orn4qi2VYpC2CW807gA=;
        b=OsuPv0OHTVsMG3+MC8eCcEZqyhYE+ksFLsonr1dg127SpaHnE5aaz55mvuBNbYk+a7
         syVGYRONAU3e17P+CCzQj0sffWSc3QRX4ovRmAt7snvLZCJrCI46YXRHAL2+OMCPLfVe
         4SxbarAA4OfeM1jpXjcxE93GieqUKKlvj0nkgk2vdv2xd2a3wq+yydRULk+Le5vNWukU
         F7eWcE+wNWMO++roLkMYrBCBpGGtk78c7zElKwp5TcTgo8bqs9H4Do1uEjH5Ypo6v1mu
         rBJBN/vvJEjQOuYQEnk/2mUl2dIFPx+TwtNWwDC1Pa3xWog+wZoCcYxoHgbjQgmDZFXy
         RT1A==
X-Gm-Message-State: AOAM531p86sLSE+6X/xDONjKA+lgv58vEVCSSYfSokS0RZ78koTMkedd
	BltWmAgcfuZLSWTDL21Wf6w=
X-Google-Smtp-Source: ABdhPJxs4HO0GVMUAZHhavnr25q/0c9OPt2GUeRgKCG25Y5BUZUTvJUdMWp9OESvSurUcLo3wcX0Ig==
X-Received: by 2002:a17:90b:b8f:: with SMTP id bd15mr5095284pjb.65.1600800977101;
        Tue, 22 Sep 2020 11:56:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls1570283pjs.2.canary-gmail;
 Tue, 22 Sep 2020 11:56:16 -0700 (PDT)
X-Received: by 2002:a17:90b:350b:: with SMTP id ls11mr63425pjb.201.1600800976544;
        Tue, 22 Sep 2020 11:56:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600800976; cv=none;
        d=google.com; s=arc-20160816;
        b=JJV1QWmq4ozGZSyOyM4eGNysGhmWqJroZMIGeFX0PakZnt2hB8ZG5Sv+1Cfr+1GKTu
         Ry/1ex9jlfUs7jsiLHTXhOMd1duKQqml5YhECKhMHIhoHVKYdKr9+78lV4ybh6alThHM
         qQ+5mm9YiT7USzT0C/TnthtIbzwhoLG+Xvltms29AeIJ/vfgm9r6Eb7v8Ein3UVIzJRc
         a5tsjVC9PoVCqmQk/wxocaM3D72x9Eq4q3wHAx9/tlf3sNI/UJ0fwRBS5eb9k+3XDgny
         JSobkUc4pOsO0tizh/84LoUpo5ejhuLu5L426EVYzIrryMMU/AdUNqpLS6iWTW0dZ6ym
         oAxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cnGFGsoZkrOa6t5GjujR8jzlR8t5bcWa7TkXVML+mUk=;
        b=svLzc36t19NU7m/Oo7QeiJ9uri5kQ1JlngYT//UIGYXgGvzDuGlhviFw4ELYQ7P2g+
         GO6L3AJtA7bI/LoB1MQn1bQuGl3Mp3KyOoxssGhymQgPGMpfhCXT/8f8VBnLd1nFqfuF
         muoAIwpsgKH0SFM7cjCeMkNT/BZQWVtFb97HSYcmZJb6v90QX6nWkgEBmIZtAUEv8D93
         92m95LwIME5rf09NpdFm4Iskf4FedO+REkDo+/Y8TBMLxSdlJKYKA4NSyQrRhTcZgE/L
         KYe1xNjmqxvxFey7d9TxngAfnFOMTqCnY3rp3KSx6huntYUfq+dz107TPH3W4VRQlO85
         J4Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2L3V214;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d60si394519pjk.0.2020.09.22.11.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 11:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id t7so1930923pjd.3
        for <clang-built-linux@googlegroups.com>; Tue, 22 Sep 2020 11:56:16 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr4735622pjy.25.1600800975989;
 Tue, 22 Sep 2020 11:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com> <20200921221336.GN5901@zn.tnic>
In-Reply-To: <20200921221336.GN5901@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Sep 2020 11:56:04 -0700
Message-ID: <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>, Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O2L3V214;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Mon, Sep 21, 2020 at 3:13 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Mon, Sep 21, 2020 at 01:59:43PM -0700, Nick Desaulniers wrote:
> > Right, the two sequences above look almost the same, except those 4
> > bytes of zeros (the disassembler gets confused about the rest, but
> > it's the same byte sequence otherwise).  Are the two disassemblies a
> > comparison of the code at runtime vs. compile-time?
>
> Yes.
>
> > If so, how did you disassemble the runtime code?
>
> ./scripts/decodecode < /tmp/splat
>
> where /tmp/splat contains the line starting with "Code:". Make sure you
> have only one "Code:"-line, otherwise you'll see the code of the *last*
> Code: line only.

Thanks.

> > If runtime and compile time differ, I suspect some kind of runtime
> > patching.
>
> If it is, it ain't patching at the right place. :)

Yeah, but we've had this kind of bug before:
https://nickdesaulniers.github.io/blog/2020/04/06/off-by-two/
I'm sure it's not the last.

> But no, that function is pretty simple and looking at its asm, there's
> no asm goto() or alternatives in there. But that .config might add them.
> It adds a lot of calls to *ASAN helpers and whatnot.

Maybe not in this translation unit, but it's possible another TU does
have one and it miscalculates the offset; overwriting code in another
TU.

> > I wonder if we calculated the address of a static_key wrong
> > (asm goto). What function am I looking at the disassembly of?
> > perf_misc_flags() in arch/x86/events/core.c?
>
> Yes.
>
> > With this config?
> > https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62 (though I
> > don't see _any_ asm goto in the IR for this file built with this
> > config).
>
> Right, there should be none.
>
> > If this is deterministically reproducible, I suppose we
> > could set a watchpoint on the address being overwritten?
>
> Sounds like worth a try. I'll go sleep instead, tho. :)

So I think there's an issue with "deterministically reproducible."
The syzcaller report has:
> > Unfortunately, I don't have any reproducer for this issue yet.

Following my hypothesis about having a bad address calculation; the
tricky part is I'd need to look through the relocations and try to see
if any could resolve to the address that was accidentally modified.  I
suspect objtool could be leveraged for that; maybe it could check
whether each `struct jump_entry`'s `target` member referred to either
a NOP or a CMP, and error otherwise?  (Do we have other non-NOP or CMP
targets? IDK)

This hypothesis might also be incorrect, and thus would be chasing a
red herring...not really sure how else to pursue debugging this.

> Gnight and good luck.

Ah, that's a famous quote from journalist Edward R Murrow, who helped
defeat Senator Joseph McCarthy (Murrow's show See It Now dedicated a
segment to addressing McCarthy).  Sometimes I fund uncanny parallels
between claims of what a compiler can do on LKML "without proper
regard for evidence" and McCarthyism.  Falsifiability is an
interesting trait.  That's why I try to advocate for sharing links
from godbolt.org as much as possible.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DE11KriNqeVv2-Tvq5sQy%3D4vyBzDEH22D5h5LgBeFsVw%40mail.gmail.com.
