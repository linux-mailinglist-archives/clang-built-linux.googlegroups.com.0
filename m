Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBTO5WL2AKGQEYRTZPHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f183.google.com (mail-lj1-f183.google.com [209.85.208.183])
	by mail.lfdr.de (Postfix) with ESMTPS id A17C51A1202
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 18:48:13 +0200 (CEST)
Received: by mail-lj1-f183.google.com with SMTP id c9sf828941ljk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 09:48:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586278093; cv=pass;
        d=google.com; s=arc-20160816;
        b=NQX/yfqh4s583jqsG/XP+3UdPDzRudxwWZfEFzPYV/FXUmjJhwCoI1f/3G5pu2v2l5
         zRDzPNknf/5YVSTAqeYTaptJ7lnVSku2q0wl1ppi90LXGRy1xcwmqlUd1KqmfXVphGfv
         XRMLOZPhzZHYnTw69d64R/XexhvAc7eLAEWH5RFpETZAsIt5yyGqdtAw9DFuWNGEA1Fl
         4kzzab6i51tEjwYe/h6oysrNuZJuTjBgN0VGmTtyz/JGMf7SJLVMMYhPY4z8DcrVBuC8
         Ie0R/9yAqpYP/8i5zNexj02bdGuiLca8fnIn5iUb5g8Gwd7YSrOlHMgGcFe68sQSLte9
         gjEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=JMhsDrvjEtHICA7wiEng6bueMPq4vtnYOCnxts/pTSY=;
        b=nMSlTUV4aTG3/rQClimJJBG8u+dGTpBjt/eJNO2cVqM2rSEiEe9aFMdK2LzXTLmTRT
         AXbnzVgVai+gcvWvEX5NR5FW2dThLkdQvEUN5/7A/ieMrnPE/iHibC4efJ5LEZs25baU
         qWn3n3nx+omHGsUJq0MXVUXzWhIZD9AWkUC/N/Dnf0PdNMUMJfzmu6WbN8z4+NwkUTql
         XaBSw9bSCU9TYdvle/hrji946DunioABwUrFG22T0j33T83SOUSFpNmwLEi7zvCrGwTF
         5ouNvs8HVgF1VIxAYNx64L2zn2/leRBKTlF+qWTC28ved7d7V0sRsG5ljaYGKlDqWZXW
         QUrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JMhsDrvjEtHICA7wiEng6bueMPq4vtnYOCnxts/pTSY=;
        b=L4RSSlH3awVE1ddsA0rTTT1Wi0FaaEdktDusb0NBgTLFrJdb3KWKrpQ1EUmAXcmqI0
         jx3jlpSbByj3IDgJ4hKG9uXRow1fm59imobIused8Ve8CrCiu3C2eAW4glwpFqRXGltV
         T57oAh4TXaouvAnnw8ps7SwyfF8kEdmKCkXPQ6r+qkXREkoZa8rlYE5oQhD5RgfJV4AU
         XNGveJBsc7pRJJzY7r5cH20t5mi6G2McaMZKZenJei3BcHqR/Nq0ZAvU622XhjTPg49E
         YE6ZsSwbC01uMyVGJUeJJjxRofcLt0qqu/DZt4fijWHnDzQ5EadvSO4UrlWSHKDxiT0p
         mvzg==
X-Gm-Message-State: AGi0PubgU4theljUW2r+x3MyHiG0dvg4XIXt0yqbtxyzEhDMxnpFpazg
	MrxhBui/lKhM1skOtIowWAc=
X-Google-Smtp-Source: APiQypLno7ISwO+HGqi91DPUPZrh0JwCh0CJHr/LSqRo5tx98RBe2zfzw8ED9k7rcb+by4mr4Zqn4w==
X-Received: by 2002:a2e:858d:: with SMTP id b13mr2194423lji.227.1586278093154;
        Tue, 07 Apr 2020 09:48:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8086:: with SMTP id i6ls820054ljg.8.gmail; Tue, 07 Apr
 2020 09:48:12 -0700 (PDT)
X-Received: by 2002:a2e:b54c:: with SMTP id a12mr2318852ljn.86.1586278092473;
        Tue, 07 Apr 2020 09:48:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586278092; cv=none;
        d=google.com; s=arc-20160816;
        b=gRuZbq7If/ygRUAN6qdw3ZI2UI7wYNxoKUQNSGcGQvLST7EexqpRGYAl4upvuFNZcw
         PXherRjx0j77k7uezsQehCpuGQ2N/8LHHbT4ZhkD1nliZRKryYLNWnPbdV331GYwKHgw
         HmwdJyJAsQw0dWbwGK7gTW07lIw7aJRsXcoEtKCTkcCLJCHBs5L1V6/XeJWJJU83kHio
         2m0Q7PonMTa+YX2z99tVnwdyar4k45xqUEfIFKu8C40eh8VGOYBVLKUAFxNQq9uhgEqv
         r00MnjZchSW1UCQrE2rrL8i6aUaK4b96pXxERcBFnVXaH24NlvNVFzoOJkCtU9mmojxq
         4tKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=xtHwvxF9LW3TDIv7bfY6HBt+G56C2AqXgJNeU0/7w9E=;
        b=uSu0qwnrpCvgU2Pz7GMDYBlUv1nGJAabJmKvAI1d0xIJlAZlheQMbyHAOp+b8agLJl
         B76aucMe4OxuqCbEngp0Dhz6KhkV5oPysCh7kWs8XqRQ/4Qc8suz6uSxN73GlI7xvkL9
         CWrSCMblMYZoaV065Kc9AhhrtOJcZVBXIufxvQlogczL2f2IwsEZiHoPv680ozlPmk/f
         6VEsBZYY20IvMTp+sCyseqytIVaq1vTTjT7AcA5fQQfCV/AHjQ9WS4XjNwTYb2Nao24V
         ORWF7QnslIYoSRde08liruQazxR+8XAd59V5n6tOMDkS6K9Fy4TLdK3rMZzQSPyYI6XL
         wWOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id m11si174507lfh.2.2020.04.07.09.48.12
        for <clang-built-linux@googlegroups.com>;
        Tue, 07 Apr 2020 09:48:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23993062AbgDGQsJjgyE6 (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Tue, 7 Apr 2020 18:48:09 +0200
Date: Tue, 7 Apr 2020 17:48:09 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Masahiro Yamada <masahiroy@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux-MIPS <linux-mips@linux-mips.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org,
        =?UTF-8?Q?F=C4=81ng-ru=C3=AC_S=C3=B2ng?= <maskray@google.com>
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and
 prom_free_prom_memory
In-Reply-To: <CAKwvOdkAXuTPR7Bm4+ai3GcKv+ytes3S2UZxOxqSrRtqkt485Q@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2004071720010.596385@eddie.linux-mips.org>
References: <20200405163052.18942-1-masahiroy@kernel.org> <alpine.LFD.2.21.2004051813150.4156324@eddie.linux-mips.org> <CAK7LNATKLcCPYxQZNbrS-jMPg+_BETU0dGv0qYvLqUkJ2fMt5w@mail.gmail.com> <alpine.LFD.2.21.2004061240060.4156324@eddie.linux-mips.org>
 <CAKwvOdkAXuTPR7Bm4+ai3GcKv+ytes3S2UZxOxqSrRtqkt485Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Mon, 6 Apr 2020, Nick Desaulniers wrote:

> >  Well, maybe that was a conscious decision, however it's a linker feature
> > that has been there since forever and projects like Linux can legitimately
> > rely on it.  In this case perhaps sticking to other linkers, which have
> > the right features, is the right solution rather than trying to turn a
> > complex and mature project like Linux upside down (and quite possibly
> > introducing bugs and pessimisations on the way) just to match an inferior
> > tool.  Adapt your tool to the task, not the task to your tool.
> 
> The feature you refer to and the feature Masahiro is referring to are
> two separate issues.  If you care to understand the issue Masahiro is
> trying to fix, please take the time to read the full discussion:
> https://github.com/ClangBuiltLinux/linux/issues/515 and particularly
> https://reviews.llvm.org/D63564

 The onus is on the patch submitter to justify a change I'm afraid, and 
not the reviewer to chase such justification.  A change is supposed to be 
self-contained and straightforward to understand for someone reasonably 
familiar with the matters covered though not necessarily with the specific 
issue.  And this change is missing such self-contained justification I'm 
afraid.

 You need to make it easy for the reviewer to accept a change.  If a 
reviewer looks at the proposed change itself, reads through the associated 
description and immediately knows what is going on and that the change is 
good, the this is a good submission.

> >  It's a standard feature of libraries that a symbol reference is satisfied
> > by the first symbol definition encountered.  Any extra ones provided later
> > in the link order are ignored.  And we have control over the link order.
> 
> Relying on link order is terribly brittle. Renaming a file can cause
> your implementation to change, and ties your hands from ever using
> things like LTO or newer build systems like ninja.  Static
> initialization order is a plague to C and C++.  It's explicitly
> undefined behavior you've just admitted you prefer to rely on.  (A
> Google search for "static initialization order" wants to autocomplete
> to "static initialization order fiasco" which is also an interesting
> read; https://www.cryptopp.com/wiki/Static_Initialization_Order_Fiasco).

 Renaming a file does not cause the link order to automatically change 
(although I can imagine a build system where that happens).  And we're not 
talking about static initialisers and their implicit dependencies that 
might be hard to follow.

 We just have pairs of symbols that need to appear in a specific order in 
the link, and this is quite straightforward to control, by placing 
platform files earlier on the linker's invocation line, followed by arch 
files, followed by generic files.  That's certainly been defined linker's 
behaviour, especially as tools had to rely on it in more complex build 
systems before weak symbols were invented.

> Masahiro is right that this case has some questionable choices in
> terms of redefining symbols with different implementations.  I think
> __HAVE_ARCH_STRCPY and friends in lib/string.c is actually the best
> pattern for not providing multiple definitions of a symbol, followed
> by marking symbols meant to be overridden at link time based on config
> as __weak.  He's just trying to help clean this up.

 That is perhaps a worthwhile improvement, but does not appear to have
anything to do with LLVM and its bug in handling the EXTERN linker script 
command.  Let's not mix up things.

 Also IIUC this will result in a code bloat: previously objects providing 
fallback symbols were not pulled from archives if not needed, whereas now 
they will always be and will remain permanently unused, wasting memory at 
run time.  So this looks to me like a (gratuitous) pessimisation.

> >  Hmm, what intention?  Can you please be more specific?
> 
> That prom_meminit and prom_free_prom_memory are meant to be overridden
> by other configs.

 Then a comment at the fallback implementation should be enough.  Besides 
you need to be somewhat familiar with code you want to work with and Linux 
has always been terse in code annotations and relied on code being 
self-explanatory instead.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004071720010.596385%40eddie.linux-mips.org.
