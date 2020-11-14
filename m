Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5OSXT6QKGQE3EB2RCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 030AD2B2A19
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:48:55 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id bf9sf7073683plb.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:48:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605314933; cv=pass;
        d=google.com; s=arc-20160816;
        b=cOQjE5maLImnTYbdB0OgQ7vCRhp9atmRGpmVPcCq0C0l1ZAbuQiKmiqnnqPD2aM4hC
         fsrDmgo7sEKPPsRnQij1TR9FTD10Jq4QhCgZ4XUEc+izCUL8A4qZuwY+C3tVc0pDBWjk
         PzkdE6pTlrvoBssl0VRZ88lJJztlUlI8yqhkIkuRoU6RkreDz9+43SEyz0xZdiCFX2w4
         egKnjeaAmTz837lF7dDhdrlR5Kmtn3qAevhkdz2pXykiqQl6vYhBSN9KFyGKYNwaunBh
         2yvWwZfPEqChuHe/czZlYH36u+g+3xlcGGv+QNRXDLklbxZjNFuyvWD7iEy63ReWQ44d
         UNyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EXpmNsoifreoA89X6ACUw+DIrJFrFBvkcyXR7uUm5zk=;
        b=jA+y66xGMFH+CZ4XHLVmMs3DCrVBtd00w4ufqdE0cywCQavnkPuFKWogK2lzpr513/
         udR/K4iy6ru4TGgCd88ueID9R50NpAHlrYFYFQJBBXGJ8/InT8LMS5p0t+2UGakwIhIH
         25sT7nkT9xX0vucMlzYbnv4MLhlsgv675cLMHI5K8aSn3nEn5HqphsPhAIqrzgqUFJ4Q
         hx4smag4+ek6MGdy2PxxZ0tRlYcANPFEPnK6yWSKR/MdBfVJAwajKFJkrjXCs5DAv095
         GiF478BzP1WALiYNoTb462ZXoljwWAxy34YSDBaSkDVN7uG+o8PLT/AZjB1B1P8L0MMR
         zW7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ElzZMpKI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXpmNsoifreoA89X6ACUw+DIrJFrFBvkcyXR7uUm5zk=;
        b=Tcg91ggleFuIa1sd84O3DRr025NbSvggyoB8XsSn9Fop8bAM2+pDfb0/T1IObQubMT
         NPr+4xGaUdIoLI9LlsHlRe6SJUtYhVeLi7jJEM76HqL6ZGiPsWNwiL+wnYzk+IrBCyFW
         plKW4OdkfiZd49ZE41igiakcEdKf6VoEPZZhgpK4xAqwoo1Ytbb2SKe6SaCg6TJ1+qIt
         OO6PLyWJz8NidDEw0UJICQDA0wvdl64Lk/guL3NpKY4Kzo+mW+8ECiXj2n0MVpJ4PAlg
         tzGpJUd1acLfpBArzP+20ULhzepPJXPfK85zjnk1TwJATLL367Nj6dYmegIyZsxjpa/N
         HrqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXpmNsoifreoA89X6ACUw+DIrJFrFBvkcyXR7uUm5zk=;
        b=JlJ/LxdmbRzWPo00g/AuuqYSGU+z7GKB2uLp0nVtNwPb+8t0IIdZLKIIbLi4WaU+rM
         rgGyozX6jpIP/j3MjuJWPtxCPjhYnzBaarkgMZe/w8OXwv78lz+6JSaVkCN/b/XuqjS+
         V/0DfPlRdhutlejGt4nW680OdUq2BcHKd/kvQtoTOCyaYXi8xF0esG9ICWX02PjM8OHK
         +6DXOC1pBOHtL6L/WQm3vBfKK274MqyW39TRSn7keL/gu1eIarkdTeljbY92k83eEE9J
         WUBdJkT8gFwU8rjYieAqmucyNg5UmiqDNUTMjw+Cpd95KtF+qNGm6gxH91ujvd+EtRAV
         XSog==
X-Gm-Message-State: AOAM533y831AkFiz+l2WmCYcRFlMezF0u3tm8fnqV7/vKGGcV36yFXPP
	8MIz7lBlRhgZeGhbMQAUEak=
X-Google-Smtp-Source: ABdhPJxT/Uyd4HqmFHUzva0Nb4gqUHFKrC7pssru5anL3IJH8qxm2tzzdxw+5zoofBTtzX8swWFa+g==
X-Received: by 2002:a63:221d:: with SMTP id i29mr3988780pgi.69.1605314933474;
        Fri, 13 Nov 2020 16:48:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c395:: with SMTP id h21ls4552085pjt.3.gmail; Fri, 13
 Nov 2020 16:48:53 -0800 (PST)
X-Received: by 2002:a17:90a:cf18:: with SMTP id h24mr5909451pju.72.1605314932931;
        Fri, 13 Nov 2020 16:48:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605314932; cv=none;
        d=google.com; s=arc-20160816;
        b=hpJKJOetxpGH1Y8CnspWErivbzKc6aL2kaEbQQaW9c2GO1+xz6p23GGKcbmtJHKIhF
         e2t9ra5OKHXVwCmHyiknQNEkp46SbKv3B3UUJIToTQ1auUIQcLgPjNDOA3isejRJ8HNa
         yyBCd2g2cFkLv0eyR4I+8ejEIBjoFIF3hH63Z950LFCrA/01SxcQI3pPrt4ciOrfow9I
         LVMcxtGofgVThQ+eRlkALSb/lApRcmbjaX6ZWe09KWUxGnuXaRoPkQw/PplI3B9nPTXC
         o1vI3fBWZpjR0P7aNny1tQQzO9zYKHXn5F4e6H8S2rZ0EIl1ycI52N5OdEkPTgK0iN+x
         LT7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=onm4dr1InisAD+cCAy/oaBVxFnLM3ZfeLTvFJjnOxb8=;
        b=JvqBURXgua+i4W5H0G79u4K5iisq39eEDZv9TmcAxW+5noGjBmCIYdvjpGPksOuU2Z
         0DLwBAby7oTiNYJwgnjsFDWlWhjeTJ+Id6QDwyVQjjAQRcimfnBTWRFQ8VLHAanT/fXQ
         GNcwd/MikrHHVqDwBfw/NE34iSELLntBI0VjWG+C58mLVFT1LuR3m27e6Q2OvNAs1u7/
         HkflD48iPcFH7Vqsgv5/4qRk7DCCc1aG+XV3AC+HWxLDHBDglndO8zZCK7L1IQPH+p8G
         EvnwfjLX6RPHOaamjEczExV3CQG7eff03Sb7IqUfI1HuCBKXczfdGVqAwVypw/gV5HtA
         ge0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ElzZMpKI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id bg19si351269pjb.2.2020.11.13.16.48.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 16:48:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id z3so9038976pfb.10
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 16:48:52 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr3825439pgo.381.1605314932422;
 Fri, 13 Nov 2020 16:48:52 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org> <CAKwvOdk8ewY1nOA2ji6yoZcOOYDX7OKqmbZYuMAnCFV=9t0VNA@mail.gmail.com>
 <20201114004318.GY2672@gate.crashing.org>
In-Reply-To: <20201114004318.GY2672@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 16:48:41 -0800
Message-ID: <CAKwvOdk=T3xqRXvnSffSnxi=HPnLN00EREdL0Xd=yGbVGFVDFA@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Alexandre Chartre <alexandre.chartre@oracle.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ElzZMpKI;       spf=pass
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

On Fri, Nov 13, 2020 at 4:45 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Nov 13, 2020 at 04:11:41PM -0800, Nick Desaulniers wrote:
> > On Fri, Nov 13, 2020 at 3:49 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > On Fri, Nov 13, 2020 at 10:59:26AM -0800, Nick Desaulniers wrote:
> > > > The `optimize` attribute is both non-portable across toolchains (hence
> > > > this warning)
> > >
> > > Like *all* GCC extensions.
> > >
> > > > and a little quirky in GCC.
> > >
> > > How so?  Don't spread FUD please, say what *is* wrong, then people can
> > > decide for themselves whether they want it or not.
> >
> > Spread FUD? Ard literally sent TO YOU:
> > https://lore.kernel.org/lkml/CAMj1kXHxX+u5-cN0v3SLdqZTSiKsWsFOvc2SC5=-ScaUZOu8Ng@mail.gmail.com/,
> > and it was referenced again in
> > https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/.
> >
> > Was it FUD when Ard sent it to you?
>
> He didn't say "this option is a little quirky".  He simply quoted our
> wiki entry for it, which says "use this only for debugging" (just like
> the user documentation btw).  The FAQ also goes on to explain the
> attribute is very hard to use, it is not obvious at all what flags you
> can and cannot set, it's a user interface disaster.  It explains what is
> bad with it, it doesn't just say "ooh I don't understand it, do not use
> it".  (It does say "no one really understands it, do not use it", there
> is that ;-) )

Are we splitting hairs here?  I want both toolchains to be successful;
though maybe next time I see something like this patch/0day report go
by, I'll just keep my mouth shut and we can deal with the runtime bugs
later?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%3DT3xqRXvnSffSnxi%3DHPnLN00EREdL0Xd%3DyGbVGFVDFA%40mail.gmail.com.
