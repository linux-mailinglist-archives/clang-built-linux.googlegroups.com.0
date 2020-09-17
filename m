Return-Path: <clang-built-linux+bncBD6K324WS4FBBEMURX5QKGQEGOLMXDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5D226DA5C
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 13:35:46 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id u5sf823271ljl.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 04:35:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600342546; cv=pass;
        d=google.com; s=arc-20160816;
        b=qTL2zsyYvd+fQBfub6x6eNPleXiWIw9g+NaB60vhiESw8pZseUc19W0/FByRc7FNRQ
         7OpFX+98kfR7VAEbN5++XLzjLZiThnQ+lGaKp41aCOy4yI85kCsbpMdTBm4qsWaYAbzD
         lSGW0SkDATg71211TmXsgxENKTYmVhn2RiitznJqRWNzCGw1eQbuT63hjAt8LgLoF1AO
         X3N2QRovXEDY4dE+lUwnybB+z982d0EZrAobp0fLiE6oypZsJTGSsqk4vFG5mjbTKBj6
         CUjcaiIpstiNFe1qcIJSzfqNcrAkbzh4KnAWnXR1t5r1sRd60IqZ/XTEqFBhByMkwjO5
         uvTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=N4DCHgzVqYuJDX/iR/v/4oRRSMcU+oZue9o7vj90ZZg=;
        b=pr9ZE8jhNHzjRkjhxnuH0xxhyVfhybhKtnriBEjkjTjBwzAZPnmfeMmjpcQtxEg671
         wAjmSLWZWlFqy24AefJ0farUlbtzgPKssF6IQgqnIBj53aZhui4fzCfITRfDIvs5Ep2r
         KlHsgmN/HsztWJYq0iXhSdZYgDkWNdyCGeKgFp/ftlLVO0z3NV9YE+aVXd/vCy6FegN3
         EgiAjspOK7ND2OcatLZF2B7/0ToKeiYA5XR4SbR4tMHiPc+3lLxVKQ3ItGjIrQ8EV8b8
         5q9yw2eXA1Eyta7GdY/nDXHoPmEEdY6KMr8xkcB00buUo3hSivU5p3J6fgs11b4Fh+ck
         GQxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MZtwfo2W;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=N4DCHgzVqYuJDX/iR/v/4oRRSMcU+oZue9o7vj90ZZg=;
        b=gjpQ8vEs8d4T9Tlddz8x6oRXEQbTSLEeXP/pzVEEg1pFsmb+LVBsU3L2x87O5+DjYP
         Mta+8m/sGOCTcecJY1EPH7gaIIOYSK7MekSQnq5OokcwunaNjhLiB+Y3b8CTZl1ZkfH9
         VsGaAqIzgK2LyJD0MsPf/xhtdVcCLlUmLo0seryLRJKiaOkpXi8hIZNp3pnVmMfG2tWO
         r9KexD6/op/kAzJlrTEjGXuoVdoTSBSGaGjRzYXHWhGnO8b96c/pI2GPqzb5pvDS515A
         IxKnpJT3TQRJMwJ6JF26ErhMXPjn7jcs92RXE0z5xeEJx7SxT0vwyXph91GuxtIMM6b5
         NjAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N4DCHgzVqYuJDX/iR/v/4oRRSMcU+oZue9o7vj90ZZg=;
        b=TNEvSmZNKks2IczKI2evgxplumnE2W1pxuXocva7NPQ017F1cr3KZaBKWR/9+oEQwY
         XrVzkZOKKFyam3eYiWqqaY7HOojmpLOwxX9OxGBzeM5QCUM63MaF54YU//LX22Hk52Sv
         MP5KQLDVuiYs/p0r1TnDOeuHzNCSXGe/jANjYxNDnjtP5frik893XeyBBMzd9xD1RjGE
         pUZIQbHG1T6N9+gwAzkw78BNXW1leK5Rit0maVdyK0d9yUbz1+z2ItXNt20hvnlr2+XV
         P9cClPRyrruBH/fvOa5OUoyNiglaeB1z1S3s5krGwpajk9nu054wCecXfSPhY298EixL
         7+EA==
X-Gm-Message-State: AOAM533vNVW9XiG3iHgj5fFySwPAfIbrPM9IcyDT8D9ew/ZyvlyQcdFn
	LTCG4GNrqcRz5XhQ6FUedmI=
X-Google-Smtp-Source: ABdhPJxRgpM+yFQWMkUijAQ/EiuZ3RSs0OwCyAOsTtRzfTQ3dLotpUp2BLcT1I+JuHBXfQfL5+Db8g==
X-Received: by 2002:a19:7:: with SMTP id 7mr9855988lfa.538.1600342546090;
        Thu, 17 Sep 2020 04:35:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls429787lff.0.gmail; Thu, 17 Sep
 2020 04:35:44 -0700 (PDT)
X-Received: by 2002:a19:48d5:: with SMTP id v204mr9882651lfa.287.1600342544911;
        Thu, 17 Sep 2020 04:35:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600342544; cv=none;
        d=google.com; s=arc-20160816;
        b=UlFtgS+SaZlQzdLw4x6Axp0H9rl+GOMBXACbzm59aLvWGJAhQMZusP0V8pk8nONaSC
         qKqeI2cC+fer+iMtgcR6qN55ND4OJKZGrDnUBCLdk+H6bVev1U2GqU78PWI85YJCwsDo
         SJRvlyphPSwgd5So9mmmYlcV6pIi52Z3zTRDkjBJVcMxzkkOVXmXfQl3P/PHkhbjAvKq
         F/OqW526gSBkAIcM5wZHvEMG+tkNKKuO+PK4lbp1VKWyVe6oojBUPD2mvkF5ByBJW/Dv
         DfZ8RfGLv3CN5mpLUbs940cogHsXcGsxbrEYBHGfQfYfNbSuCW8hS7j0sLX7kzd1a38/
         bjkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EtH4/cbuQgykQYd+jjjiuY8limbLr894Hm1Wfr5TKQE=;
        b=S3u6K7s6T4Q0zRTOUkVkrIDIGpgeG/q9AwZU70NOELglHbJpr/PXIxQGbZrsQIvGF0
         lIeAqOCmKbvV1COGLFVmjyLd9pQZ2y5rfXyN4OWRi9WbCwKd6WhIWEV21aISa3V/LE1o
         Mybmcv9IfPqfjim8lUBDefwJ5VDsaOj2lnyfclycb45SAPUusqPFIFcth1CHY7PLNUiH
         OIPVoGoHlDQrOxgrSdc4htJ02XplO5HPitUdr3JfuS3pAbUHGZnPXKNLG3zEw4tGHaCu
         gIRBq9CoiFDP3WSgumE+wVUZRvUwUkQVmPvMnB/Iu0s60MAaaB2SlCXIJahCAR4hTgmj
         Og1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MZtwfo2W;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v191si512952lfa.6.2020.09.17.04.35.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 04:35:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id g4so1686740wrs.5
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 04:35:44 -0700 (PDT)
X-Received: by 2002:adf:df87:: with SMTP id z7mr32658549wrl.239.1600342544219;
        Thu, 17 Sep 2020 04:35:44 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id f14sm10591991wme.22.2020.09.17.04.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 04:35:42 -0700 (PDT)
Date: Thu, 17 Sep 2020 11:35:40 +0000
From: "'George Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Marco Elver <elver@google.com>
Cc: Kees Cook <keescook@chromium.org>, maz@kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	kvmarm@lists.cs.columbia.edu, LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	james.morse@arm.com, julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	David Brazdil <dbrazdil@google.com>, broonie@kernel.org,
	Fangrui Song <maskray@google.com>, Andrew Scull <ascull@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Alexander Potapenko <glider@google.com>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <20200917113540.GA1742660@google.com>
References: <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com>
 <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
 <20200915120105.GA2294884@google.com>
 <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
 <20200916074027.GA2946587@google.com>
 <CANpmjNMT9-a8qKZSvGWBPAb9x9y1DkrZMSvHGq++_TcEv=7AuA@mail.gmail.com>
 <20200916121401.GA3362356@google.com>
 <20200916134029.GA1146904@elver.google.com>
 <CANpmjNOfgeR0zpL-4AtOt0FL56BFZ_sud-mR3CrYB7OCMg0PaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNOfgeR0zpL-4AtOt0FL56BFZ_sud-mR3CrYB7OCMg0PaA@mail.gmail.com>
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MZtwfo2W;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George Popescu <georgepope@google.com>
Reply-To: George Popescu <georgepope@google.com>
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

On Thu, Sep 17, 2020 at 08:37:07AM +0200, Marco Elver wrote:
> On Wed, 16 Sep 2020 at 15:40, Marco Elver <elver@google.com> wrote:
> > On Wed, Sep 16, 2020 at 12:14PM +0000, George Popescu wrote:
> > > On Wed, Sep 16, 2020 at 10:32:40AM +0200, Marco Elver wrote:
> > > > On Wed, 16 Sep 2020 at 09:40, George Popescu <georgepope@google.com> wrote:
> > > > > On Tue, Sep 15, 2020 at 07:32:28PM +0200, Marco Elver wrote:
> > > > > > On Tue, 15 Sep 2020 at 14:01, George Popescu <georgepope@google.com> wrote:
> > > > > > > On Tue, Sep 15, 2020 at 01:18:11PM +0200, Marco Elver wrote:
> > > > > > > > On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> > > > > > > > > On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > > > > > > > > > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > > > > > > > > > From: George Popescu <georgepope@google.com>
> > > > > > > > > > >
> > > > > > > > > > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > > > > > > > > > the handler call, preventing it from printing any information processed
> > > > > > > > > > > inside the buffer.
> > > > > > > > > > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > > > > > > > > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > > > > > > > > > call
> > > > > > > > > >
> > > > > > > > > This would mean losing the local-bounds coverage. I tried to  test it without
> > > > > > > > > local-bounds and with a locally defined array on the stack and it works fine
> > > > > > > > > (the handler is called and the error reported). For me it feels like
> > > > > > > > > --array-bounds and --local-bounds are triggered for the same type of
> > > > > > > > > undefined_behaviours but they are handling them different.
> > > > > > > >
> > > > > > > > Does -fno-sanitize-trap=bounds help?
> > [...]
> > > > Your full config would be good, because it includes compiler version etc.
> > > My full config is:
> >
> > Thanks. Yes, I can reproduce, and the longer I keep digging I start
> > wondering why we have local-bounds at all.
> >
> > It appears that local-bounds finds a tiny subset of the issues that
> > KASAN finds:
> >
> >         http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html
> >         http://llvm.org/viewvc/llvm-project?view=revision&revision=193205
> >
> > fsanitize=undefined also does not include local-bounds:
> >
> >         https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html#available-checks
> >
> > And the reason is that we do want to enable KASAN and UBSAN together;
> > but local-bounds is useless overhead if we already have KASAN.
> >
> > I'm inclined to say that what you propose is reasonable (but the commit
> > message needs to be more detailed explaining the relationship with
> > KASAN) -- but I have no idea if this is going to break somebody's
> > usecase (e.g. find some OOB bugs, but without KASAN -- but then why not
> > use KASAN?!)
> 
> So, it seems that local-bounds can still catch some rare OOB accesses,
> where KASAN fails to catch it because the access might skip over the
> redzone.
> 
> The other more interesting bit of history is that
> -fsanitize=local-bounds used to be -fbounds-checking, and meant for
> production use as a hardening feature:
> http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
> 
> And local-bounds just does not behave like any other sanitizer as a
> result, it just traps. The fact that it's enabled via
> -fsanitize=local-bounds (or just bounds) but hasn't much changed in
> behaviour is a little unfortunate.

> I suppose there are 3 options:
> 
> 1. George implements trap handling somehow. Is this feasible? If not,
> why not? Maybe that should also have been explained in the commit
> message.
> 
> 2. Only enable -fsanitize=local-bounds if UBSAN_TRAP was selected, at
> least for as long as Clang traps for local-bounds. I think this makes
> sense either way, because if we do not expect UBSAN to trap, it really
> should not trap!
> 
> 3. Change the compiler. As always, this will take a while to implement
> and then to reach whoever should have that updated compiler.
> 
> Preferences?
Considering of what you said above, I find option 2 the most elegant.
The first one doesn't sound doable for the moment, also the third.
I will edit this patch considering your comments and resend it to the
list.
Thank you for your support.

Thanks,
George


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917113540.GA1742660%40google.com.
