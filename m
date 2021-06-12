Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBP5QSSDAMGQEXKK234Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C523A508D
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 22:25:36 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id y10-20020a05651c154ab02901337d2c58f3sf3343174ljp.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 13:25:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623529536; cv=pass;
        d=google.com; s=arc-20160816;
        b=IfD6I+tVlqZFH5Y2RCkCD9VcLl0+N0LR5Oe0HUsHtVAG0AmZEZDu2NGe8bNkQNdsfo
         GIUk689Zg1b6ytBkWKKZle3bhrDIQ/53BiMohONAMK0HDlsDk85cLVJJfkLNhnSg/Vr9
         sLUhkHkpd1CXTRabLWUe0VSOwDpLL0+iye/KSlmM9SQxTkePYCgwLUB4XqkjNcbAzxCl
         X6yuCcdG3j92D2rk16vUrUn/jWOm6dma+cHck2pOrQlnaKngtG6vD9ckvlEk7cmWfGkN
         5E0uLklV/dGWOEMdR95EdsWj5MFcruN68dwh/+EenT8GYL2pT4FQ73NuhTdEi08w8oJW
         pYZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nlfh53R7YL3jkh9BjlmofxvUNptdbm9Am0jouLiBWZg=;
        b=JBASLDeOQp0Bg19asxRf4TBHYwM//8z4TSS7v6/mAwHZHdaUSRoPkxJn8jGGEBrvKK
         ys+2Gf74OPK0+cUV9kwW6ZhCn70tkG8//ZN/FOh7CeVQvv5CHmFX6oE4+MolvCxWUYNT
         SbgHPtiDpD5s7lZVjmkmoiqWRN5cOFMKgylTFI3egFNX7eLfyMV3LKG38m1v4PrzdAIz
         7TrmmJPr17zhn44WlGWXqyB3w5sMarkRKaPVvT5+onvWtmdDz4SidTAPv3t51BGTiFcZ
         oItGtEwIah+UShmlee8h3stej/IbVQ+3prG4sXg9TpGEsZhuKCisDTGzjTxnbb/3TUrQ
         Dt4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=emB13JCz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nlfh53R7YL3jkh9BjlmofxvUNptdbm9Am0jouLiBWZg=;
        b=Ukab8SvoTfXxkcsQ7bWys51cFQG0SGeFbVuZgWz5l75pgOACsCEzb5E4ZtRUSoqqja
         YwOqORaXR8e31c75s7j1uveobHqGwzRJBwcOTWWhRkFNXSKC7mjm8sNy31NV7E0hxB7j
         cr/9hi+9Rh895E39MC8wMqViOzZX0+aHIeeCYg0iyQw03jaTD2P9p/VFf42rSYXOlsUZ
         gR3YblGNXKRClsPceeB49bnFKPiPMYFHCUCh0Qn1J8Xi6BudnV8gT3OWsCMp7eFqw2oz
         Gx/oJwo35dHS1TyFsFJeXNAg0P4X5ItQZpA/fFL9I67AvCm2rSoWw2YEDgLViQppLvDM
         RYzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nlfh53R7YL3jkh9BjlmofxvUNptdbm9Am0jouLiBWZg=;
        b=aSSMP22anaQF6pZemfHQ3SV1Z/Z15N27uTOEL29Y6Q+U/TepWi7fqMH9f5YctuYffk
         SQURt8I571yq7VO+1cg+tKRRjTV6jm/m1sZm96tcabHun5JmfyrRiGZx/aXHt34pQHo+
         ypbdIsiiLxVOSh2a3MSgJmgIt5OFxexOWzruACpwB2acl9Jmv/a4QCZFSNB/Kzv7mXUt
         r5ZEw0oUF3G1+ZUN80w0flO5DlXc5+6z01ot1ZFyMylHlbACqMC2+dofv0vfIN+phHfn
         zPA5Luy3oXaRp9cGtEt3aG9qrE6yMEkGYANmdXlowEQuyHCLSP/mxtTwaVDTgbgm2sdN
         Pb4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318uXkAtQ4r6Kz9bCpkbxgZ8RkjqS6uhFdedYjKDeW4hKcE6RB0
	KxjA5unsuzC5sVcR8I4CmbU=
X-Google-Smtp-Source: ABdhPJyq/foJ9V4HlyoVeN8LSsMVcsDUWLWYRck4Eg/QdwuHSXqSwUtvq1OKybI2IHI5DFB7C3YU5g==
X-Received: by 2002:a19:441a:: with SMTP id r26mr6966528lfa.104.1623529536211;
        Sat, 12 Jun 2021 13:25:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3a86:: with SMTP id q6ls65699lfu.3.gmail; Sat, 12
 Jun 2021 13:25:35 -0700 (PDT)
X-Received: by 2002:a05:6512:c1c:: with SMTP id z28mr6617611lfu.71.1623529535006;
        Sat, 12 Jun 2021 13:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623529535; cv=none;
        d=google.com; s=arc-20160816;
        b=mUfr5SKek9mU3S/7LyVykL1MNg9YFhsydOCN//vjQYAGQXVnD41tNYcWFRBYTna1aE
         EXURLGsC5TEq69QeatZ8E/mn2vFmYZYXVe9CTGcPaBTejWEaYNXO9XRja7hXz6q8Yt1z
         YQFb/78YYsPOnfXK62Yzg0zmSjreKxmUfJU4PIsnYZohsvQdGgTFJwleh0OLr5G5qdsr
         C2G9oUy2Epp4v0pSNNrVmAa9mt9L9tOamI2ihBHyjbRc9QZ/i6R9Nxols8GCA/DG6Uqa
         tVM/PWBgj5AL50LbkNTvuAIVRRFmYi9AupEWLoIkaD8/6PcesHM98na/5Zw42iZFuRha
         kxzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=txv3kaWdgwVZj6W7BjUjMJ4+C/F3qLPyBxFGwk53zHA=;
        b=XeSRQHloYqwjaOux0i1RQEd+2WrLpY+DrS8BWpJlkd9gCqzhgXKe5coLeVNAejVSQA
         NIhWJxfMJ4NY6MrOqaEkNL7nDSke+6ugrqbOCEfe45xZeAD8nUzIaYHbmkIhLGkJdYJ0
         SvMNQBJ1Hw5sXYNNsxrorXRu5ZSqCFN0I0RfDH5ua7bv9VCW5d2xepy+LeNQHVLqxnJz
         hi1DugNV3yDCWVaAEE9B9T58yVjqUdy6ZP4DkBFB1mIR3uoDjsEwCbqCfQARBGGZ0CFD
         PhiowckXj3lrKmfHfDNEuW4j05CvLcg8XyQjp02WOUrPVKvpsUi70iTeBH8trtvwx6uI
         WfmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=emB13JCz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id d7si388252lfn.7.2021.06.12.13.25.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 13:25:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lsABo-003z4e-0l; Sat, 12 Jun 2021 20:25:11 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 5672B986F3B; Sat, 12 Jun 2021 22:25:05 +0200 (CEST)
Date: Sat, 12 Jun 2021 22:25:05 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Bill Wendling <morbo@google.com>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210612202505.GG68208@worktop.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=emB13JCz;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sat, Jun 12, 2021 at 12:10:03PM -0700, Bill Wendling wrote:
> > You're modifying a lot of x86 files, you don't think it's good to let us
> > know?  Worse, afaict this -fprofile-generate changes code generation,
> > and we definitely want to know about that.
> >
> I got the list of people to add from the scripts/get_maintainer.pl.

$ ./scripts/get_maintainer.pl -f arch/x86/Makefile
Thomas Gleixner <tglx@linutronix.de> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
Ingo Molnar <mingo@redhat.com> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
Borislav Petkov <bp@alien8.de> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
x86@kernel.org (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))

> there's one intel people CC'ed, but he didn't sign off on it.

Intel does not employ the main x86 maintainers, even it if did, mailing
a random Google person won't get the mail to you either, would it?

> These patches were available for review for months now,

Which doesn't help if you don't Cc the right people, does it. *nobody*
has time to read LKML.

> and posted to all of the lists and CC'ed to the people from
> scripts/get_maintainers.pl. Perhaps that program should be improved?

I suspect operator error, see above.

> > Supposedly -fprofile-generate adds instrumentation to the generated
> > code. noinstr *MUST* disable that. If not, this is a complete
> > non-starter for x86.
> 
> "noinstr" has "notrace", which is defined as
> "__attribute__((__no_instrument_function__))", which is honored by
> both gcc and clang.

Yes it is, but is that sufficient in this case? It very much isn't for
KASAN, UBSAN, and a whole host of other instrumentation crud. They all
needed their own 'bugger-off' attributes.

> > We've got KCOV and GCOV support already. Coverage is also not an
> > argument mentioned anywhere else. Coverage can go pound sand, we really
> > don't need a third means of getting that.
> >
> Those aren't useful for clang-based implementations. And I like to
> look forward to potential improvements.

I look forward to less things doing the same over and over. The obvious
solution if of course to make clang use what we have, not the other way
around.

> > Do you have actual numbers that back up the sampling vs instrumented
> > argument? Having the instrumentation will affect performance which can
> > scew the profile just the same.
> >
> Instrumentation counts the number of times a branch is taken. Sampling
> is at a gross level, where if the sampling time is fine enough, you
> can get an idea of where the hot spots are, but it won't give you the
> fine-grained information that clang finds useful. Essentially, while
> sampling can "capture the hot spots very well", relying solely on
> sampling is basically leaving optimization on the floor.
> 
> Our optimizations experts here have determined, through data of
> course, that instrumentation is the best option for PGO.

It would be very good to post some of that data and explicit examples.
Hear-say don't carry much weight.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612202505.GG68208%40worktop.programming.kicks-ass.net.
