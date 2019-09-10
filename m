Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBE6R33VQKGQEUTN5C7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 77545AEBCF
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 15:43:49 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id t19sf10646049pgh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 06:43:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568123028; cv=pass;
        d=google.com; s=arc-20160816;
        b=D6Jei2pK+yYjNmpJUtySXyRsDxsJVNtTHvBCU0qO8pvN0161vzTmsyi1KAENg3ssgc
         mBRsoKWJwQ1lRXhkV/v+nhWz9HUhTyj2b6eBH8sWw4UclRJDoMajoe3P244rNlJT3cwL
         gKA8zLs9QmHQvsiGM9Weg0Sfd2rjpGploryhfBhcJo/Vi8+ameZg8cVjBh2yh0K/4I3i
         /yeBHSZJ17BTn+Yk/rtn9McS3kvpnGFo4q7UiO9hHai0nD75ZvZ+A8St1ch62he7dx9Y
         x3YTiX2BagRNFzMKYwAJr3rsagApeIbT4io1qF4G4udlVkdukzONnyqdJvtrYWmWIf9s
         w5vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UT1CmdA5uo+q/3fe8rKIohtNf9tYb8mbUJgdnnkVSyw=;
        b=EYOF5o+MEB8LCKgpRra/hyyPVa8h1a6ngDq4z57DR/iUMeW07zO15Ig3qfesmbxFyl
         WVxsdjbF3iB6qOYRlIn4mf/KRbfExoJ1AH9sDBgJdj7rxwyVH1+n4sJlU4JhYsx+B/Yf
         r9AwEiiziFFNkgrOvwB9y91Aw9mzDrr8gzOvLaa+JrharBfzMFj3F0MieIm7Hc3TWxXJ
         fJCTwIxeSp7AejFDIfabHJSycQB3fBIT4C40rKKGs72uYcvK8F4Cb6yNBWK3jTCMor0p
         sqMYfNPIYSNH5yKbBzitLjvwjQawU8VHzm3aCJZ6fWXQcT+1gqjKEsLnK/fv7ne2RSRp
         uM0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UT1CmdA5uo+q/3fe8rKIohtNf9tYb8mbUJgdnnkVSyw=;
        b=QlFG1/lgx8cRhR4LLnpHgltQYe6ZBcnsjjYDaVxXC6DRYWC0ZSz3y8iIf17XoQl9OE
         hjg6ToJ06fil4I2Z57De74gs1e/jfLk614afUPjaNdKcLGxtiS3QylNwrYcbimGc/zEW
         fePKDwST4m0+YNynzTJbDgHOk9qol8HCVUQ67spstKFV/Mlsufx/zYZs2s9k12NyiLrw
         w1HxG8QGTbDIxsMo3HgusAaTkw8YzKJA3KQ/Qg5ArCGp3h+GHuc1yhsx+BJJn/w1yG9U
         1xd8NHrf5NWlOERbUh229OfLhtETUrdC3EWYsC/1MUpXRiokU6qkypijvR5BN/v63qix
         qC6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UT1CmdA5uo+q/3fe8rKIohtNf9tYb8mbUJgdnnkVSyw=;
        b=sgj8hCL2gnfo1xGFjijzczXW7G+PMlOXCFe7jfqtlGTXfs+pmUl3fR9iD1XMJeoDtU
         YhadQ773jNrHu615ZZY7jRInM6nEVl9DVBB93GzWHiR7qZKx2d1hUl4R42lrpoxqaGPo
         tHPq86zVKeqDQpfTYu4NnNv3Rc7fdaM42gIo4Q3D5uATwZNzYvRumZoN1LRIMZCZni2S
         FcDngbXtIwMmocFqJlR/CdSZExfIuuKCoJB0XaCFu3v2tfY+2gywl0FtVbnmrCPVtV5i
         TELLy7QsX71ZJ61jVPvo47s8RpQdbgvcOZiKga0geShKiRM1o1Z/+XV4nuzST+zQcaHc
         KmHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFBOFjEzjOSPWj5A2jI/p+iPwBp4Kuwz2wpWt96TMXkBLcsEWh
	pheNebHzhcgJ2BN6g7ReZXw=
X-Google-Smtp-Source: APXvYqz8XRpRnOPVYcPx+5DP4rxlI6cV8z9pwe5vCSZZn8AhdM372N+zl0qfIjJnRQN7WM5Da0l6TA==
X-Received: by 2002:a63:f118:: with SMTP id f24mr28550626pgi.322.1568123028037;
        Tue, 10 Sep 2019 06:43:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2b4e:: with SMTP id r75ls3756648pgr.0.gmail; Tue, 10 Sep
 2019 06:43:47 -0700 (PDT)
X-Received: by 2002:a63:5d58:: with SMTP id o24mr3499939pgm.242.1568123027474;
        Tue, 10 Sep 2019 06:43:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568123027; cv=none;
        d=google.com; s=arc-20160816;
        b=UT8P9Cu35TBc+pTX2OWBtZAhFosTXX8lIFrT+U7z4yu+JRAs/x4X4ZoInJwBuNOfeD
         QQCIUOPjLcurXKH8dTMId6LuKCF9+DsbtbxBa/O5Qbfg/NY5yYwROVMc8v7k6FuuhWbb
         objqyDgWuwDLWeoPp1jZJMIMuwvvICi/7GHc6QabMBfPhTt0w/1ENv6c7Sehsk9uyqyx
         lMoRQT3dFLdIts5HXkwlKD5q0cHCDdLTLDhgqtQB1G+6FXK1Iw0gwzzookAfMTgtvuCt
         ljO7ff23SFiUZZntKuu3KNFXJRtuUh8OOxkV6iqKbfDr7yfsTmn1OCTL4vdBJzO1+GnO
         1+1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=p6zPc+01Hqtj70FYQH87POktpG3lo+D/uPeGYtLeCvc=;
        b=o1sBDMI8GybEr65BQP0ZCVGgeun4QPW+as4s78B2I8quKbqPOco708wV7pFMVmYTqa
         FRTgBCdStxf5Zf6kkhrjCCUOw16kHwHPdYCMsexrrqBSIpHzZdPrCJZuZuGcQ4WZkNOg
         TX+D36Hf1jJ+r177k5r7hRQLCCr8fRtFvi7wf6m77tiVdF3qtSPUTnRNVhf50KcwKmC/
         0vbpvAEoZwtkPj05n7hjKUiJYULKxA3P/0cQQtajy5RhbsgVjMnMiwF1oYoohs0lDKIN
         0NNfJ3zug93Qt4T11it7yidEOaGfvGYgXKlMyqt7kBETaJT2JZRHiZ63qMosdLxbBPcQ
         vWbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id e20si1126594pfn.4.2019.09.10.06.43.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 06:43:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id s18so17102974qkj.3
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 06:43:47 -0700 (PDT)
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr8806139qkg.3.1568123026492;
 Tue, 10 Sep 2019 06:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de> <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
 <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com> <20190910132415.4j2ygxhuanihvzhx@willie-the-truck>
In-Reply-To: <20190910132415.4j2ygxhuanihvzhx@willie-the-truck>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Sep 2019 15:43:29 +0200
Message-ID: <CAK8P3a3w6q7iUy2zYRhUqiWCR3o-L5s3BTYvXZMXb0zEa=Ydig@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Andrew Murray <andrew.murray@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as
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

On Tue, Sep 10, 2019 at 3:24 PM Will Deacon <will@kernel.org> wrote:
> On Tue, Sep 10, 2019 at 10:04:24AM +0200, Arnd Bergmann wrote:
> > On Tue, Sep 10, 2019 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> > - In theory, CONFIG_OPTIMIZE_INLINING is the right thing to do -- the compilers
> >   also make some particularly bad decisions around inlining when each inline
> >   turns into an __always_inline, as has been the case in Linux for a long time.
> >   I think in most cases, we get better object code with CONFIG_OPTIMIZE_INLINING
> >   and in the cases where this is worse, it may be better to fix the compiler.
> >   The new "asm_inline"  macro should also help with that.
>
> Sure, in theory, but it looks like there isn't a single arm64 compiler out
> there which gets it right.

I don't see anything architecture specific in here. When the option was
made generic instead of x86 specific, I fixed a ton of bugs that showed
up all over the place. If we don't want it on arm64, I'd suggest making
it a per-architecture opt-in instead of an opt-out.

> >
> >     | commit 4f81c5350b44bcc501ab6f8a089b16d064b4d2f6
> >     | Author: Jeff Dike <jdike@addtoit.com>
> >     | Date:   Mon Jul 7 13:36:56 2008 -0400
> >     |
> >     |     [UML] fix gcc ICEs and unresolved externs
> >     [...]
> >     |    This patch reintroduces unit-at-a-time for gcc >= 4.0,
> > bringing back the
> >     |    possibility of Uli's crash.  If that happens, we'll debug it.
> >
> >     it's still default-off and thus opt-in.
>
> This appears to be fixing an ICE, whereas the issue reported recently for
> arm64 gcc was silent miscompilation of atomics in some cases. Unfortunately,
> I can't seem to find the thread :/ Mark, you were on that one too, right?

Sorry, that reference was unclear, I meant the text for commit 3f9b5cc01856,
which in turn contains a citation of the earlier 4f81c5350b44bc commit.

> > - The inlining decisions of gcc and clang are already very different, and
> >    the bugs we are finding around that are much more common than
> >    the difference between CONFIG_OPTIMIZE_INLINING=y/n on a
> >    given compiler.
>
> Sorry, not sure that you're getting at here.
>
> Anyway, the second version of your patch looks fine, but I would still
> prefer to go the extra mile and disable CONFIG_OPTIMIZE_INLINING altogether
> given that I don't think it's a safe option to enable for us.

The point is that function inlining frequently causes all kinds of problems
when code was written in a way that is not entirely reproducible but
depends on the behavior of a particular implementation. I've fixed
lots of bugs based on any of these:

- gcc-4.0 and higher started ignoring 'inline' without
  __attribute__((always_inline)), so a workaround got applied
  in 2.6.26, and this turned into CONFIG_OPTIMIZE_INLINING=n
  later
- gcc -O2 makes different decisions compared to -Os and -O3,
  which is an endless source of "uninitialized variable" warnings
  and similar problems
- Some configuration options like KASAN grow the code to result
  in less inlining
- clang and gcc behave completely differently
- gcc is traditionally bad at guessing the size of inline assembly
  to make a good decision
- newer compilers tend to get better at identifying which functions
  benefit from inlining, which changes the balance

CONFIG_OPTIMIZE_INLINING clearly adds to that mess, but it's
not the worst part. The only real solution tends to be to write
portable and correct code rather than making assumptions
about compiler behavior.

    Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3w6q7iUy2zYRhUqiWCR3o-L5s3BTYvXZMXb0zEa%3DYdig%40mail.gmail.com.
