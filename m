Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBR5LWT3AKGQECLZK4GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5E41E22C7
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 15:12:40 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id o11sf22137880qti.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 06:12:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590498760; cv=pass;
        d=google.com; s=arc-20160816;
        b=pvJppyrmSjTAUh0XLLPA8tjLKl12DchbKMrXPQGuHlRMvWwTvF6w4IrcqK+nLyN4W4
         qm/4HrRyTfx2Dwv7udlYzXdRpJwjqyWqajrQQfk67s7Z+F+ngulGDNrGi0xCZ3BhFGLw
         UmcMBraoqdZgAW0hql+4dgcsWONvei64FU+1qCnD352PqEa1Q33i8vY0Q2+abq84WhKT
         d9o/j7vRGqCYypGpaU1ZBAoSTgEH5//qFVLPFdYxNTrTB0tVkkduZN7DlFJYoDiRt8sf
         8aMSqC/nfSr0g32QCQoor1z7LcW7qBjjILlYYH87Selmi5eCG2ey+AszR0BRW9e1rCEa
         HKWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W/wjzhT4E6Y/otSGRuuCH8P2V/dPNfSsmcOapgZJ5aI=;
        b=xVtPkuNN+ExyUEOXVlNJ67MtUuqB1NvI/SQbB85EKy2Ute8AYbH/vcIrKbKSg3lO1y
         1mpSxT4DKLRgnaO0GnwF5F8tuJqqQMNEaGOBpEPYFdBdeSxB9VzWuauVdIF0Ot+Q9PUi
         gsMzPxsRvTZqNIbHRGmAofburS1wP9PORjgx+Fbf3FibqJPKylJ7E8BCEdFzXOjO+mJ7
         bKQK9+X9q+boyMyPid/JnOkqzjzxVDiglnsctfliYAN3q+2hGnPMAtS0Y5JDe94Ss7Mk
         FCz8LmVevcjESf/uIfqi2YPcZMo3cy9gED1rtDr4l9beB0xqfp+yt3gKjKwQ8p2Pe5KZ
         +A3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YUmih8bK;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W/wjzhT4E6Y/otSGRuuCH8P2V/dPNfSsmcOapgZJ5aI=;
        b=Y8vxOtOObCI/4qwSGYySEm948YTtUI9x/TELTYaitS3pybO8wTFSsqTcl+PhvDRqBc
         11t2E/qAz6vqTS3FDlbENvIUempT2LEnbXzaM0c2f4UxbPHCseicoiPskDzDZf14zCWn
         6fkkSl+h/Ysf390L89oSbBhhDOX193S3V+94WdEIjviFXjEtqf/Ks2qUpl8ZWGTydJ8b
         o0lJrwX3EWwXIdfWOGBZlEE7AWuc0IoNL9zVwf8AMv7zKXm0L3KQci5izgHsBBIbXyoh
         qOfTdKlj0oXJTPxWj3kL9uzREJpGYXbP39/WTnK/c1iHS1ljRdS0LLaB9RJtW1M5LJ6K
         AiBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W/wjzhT4E6Y/otSGRuuCH8P2V/dPNfSsmcOapgZJ5aI=;
        b=fudbIu+Yq+TmoBsq+W5bc/IwVRHx4lmOcx5SmRXE9vuRY1IcnE7B6yq22HFPcXD+4Q
         ngRoI8Yzv7NSQcfrdXAfSLgrFEINV49BI91qRZW73QPYAKA0/7WNNYcN3/Azpmuiz1ar
         ln+wSzdP5bU6jDvbeOCiB7+NLaMyUI+t/MfYYdzYU+UVtvNLwCtgNt1o0c6y6H4uVDH9
         zXOWPTlFSZtK2P72XZTMQm0pAy31V+LrPPgzfi1UW39bIJR2aHBVa5s4wa8DuE6C7J+9
         FG9/9G3juspthpb/peCzL7gkEBw14Qlr1hhjgPYXbqrDaUBuontVzDSW9XKiDiKekfjL
         8+Vg==
X-Gm-Message-State: AOAM5336CjLMR1kXOSMol+1gIOriq9hsun/QB8RWg5tP5WG4gJOcb/ws
	8+QtrapeanmiX/ihoDxXmBI=
X-Google-Smtp-Source: ABdhPJxSBT0iJVzl2pMBf2f6HtH24Nn8AKK1ZYZ4bkFyW21mjXXu9iLuTMxoLy1WkFSH3zv7Q3AYmQ==
X-Received: by 2002:a37:a516:: with SMTP id o22mr1169932qke.278.1590498759871;
        Tue, 26 May 2020 06:12:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6654:: with SMTP id a81ls290064qkc.7.gmail; Tue, 26 May
 2020 06:12:39 -0700 (PDT)
X-Received: by 2002:a37:383:: with SMTP id 125mr1134180qkd.487.1590498759468;
        Tue, 26 May 2020 06:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590498759; cv=none;
        d=google.com; s=arc-20160816;
        b=XqOpyeB55CZTH2E9pNqHBOWRErQ/X+fu69qtv1BB/uG84GhqPTihj6H2rYx95Wr7IH
         8qZqI2/y6SJnHz/AAQtMja0dxCa5LZ/Nq1sH36jXBdBgwTF0V+njNzTbkgnfgqHqdtvH
         9DKOo6w7pH2g4RofIgt3t9/WpI3ekrNW9sHLnbTndoH62fYgOZPiVUBOoKklww1NVxZC
         QJQKTvi1oAUW1zi6/vsk8nep0GXeeafwhF1XM63fQB3EoLyyrapquBtwh9gYBT3OsSXp
         z2umPD/tbBUrNz+cZLBjpQi+nK7TB8BOU2D3xiyfIBiEB9Ab7ZN4+qgy9quWMncLjSki
         2uOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n2vqEAYjxMamt8eKicI31y8Z10SrX1vFFP0/1fJj8mo=;
        b=0Ixelgeh9d3yO2UIjy0vlOsDV4sXm6OOQHvd9yh9G0d8pCRr4NngA0Ly3RWR8NJnrJ
         aGIGgUs1G0CyXslbYgZiEVB9UV4IG5W2CfCEplryIFRGwV7nTNHQNIrsgVvUWojftkRC
         AV4OS9KYslHJD0tvaT6vsWUd4IXSl/IJOhWj3lCG2b5N2e0K3GL7m/I59ijpHyfvBgIV
         J7Bh+nECFj7aZNqhdOgQa/ZdnFLNcLwjhaR6xWHyVj9NQcbyNWdeUBMNKXLBg8+JMI4i
         su3X9qmnE7xjK/0sDuw8pNSLnUVhXcojH0h29LMQt1o/9T95s3Og9SEPJhHO/rqBjghN
         YZWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YUmih8bK;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m1si703389qki.3.2020.05.26.06.12.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 06:12:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id d7so16185874ote.6
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 06:12:39 -0700 (PDT)
X-Received: by 2002:a9d:518a:: with SMTP id y10mr840760otg.17.1590498758658;
 Tue, 26 May 2020 06:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
 <20200526120245.GB27166@willie-the-truck> <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
In-Reply-To: <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 15:12:26 +0200
Message-ID: <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Arnd Bergmann <arnd@arndb.de>
Cc: Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YUmih8bK;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 26 May 2020 at 14:19, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, May 26, 2020 at 2:02 PM Will Deacon <will@kernel.org> wrote:
> > On Tue, May 26, 2020 at 12:42:16PM +0200, Arnd Bergmann wrote:
> > >
> > > I find this patch only solves half the problem: it's much faster than
> > > without the
> > > patch, but still much slower than the current mainline version. As far as I'm
> > > concerned, I think the build speed regression compared to mainline is not yet
> > > acceptable, and we should try harder.
> > >
> > > I have not looked too deeply at it yet, but this is what I found from looking
> > > at a file in a randconfig build:
> > >
> > > Configuration: see https://pastebin.com/raw/R9erCwNj
> >
> > So this .config actually has KCSAN enabled. Do you still see the slowdown
> > with that disabled?
>
> Yes, enabling or disabling KCSAN seems to make no difference to
> compile speed in this config and source file, I still get the 12 seconds
> preprocessing time and 9MB file size with KCSAN disabled, possibly
> a few percent smaller/faster. I actually thought that CONFIG_FTRACE
> had a bigger impact, but disabling that also just reduces the time
> by a few percent rather than getting it down to the expected milliseconds.
>
> > Although not ideal, having a longer compiler time when
> > the compiler is being asked to perform instrumentation doesn't seem like a
> > show-stopper to me.
>
> I agree in general, but building an allyesconfig kernel is still an important
> use case that should not take twice as long after a small kernel change
> regardless of whether a new feature is used or not. (I have not actually
> compared the overall build speed for allmodconfig, as this takes a really
> long time at the moment)

Note that an 'allyesconfig' selects KASAN and not KCSAN by default.
But I think that's not relevant, since KCSAN-specific code was removed
from ONCEs. In general though, it is entirely expected that we have a
bit longer compile times when we have the instrumentation passes
enabled.

But as you pointed out, that's irrelevant, and the significant
overhead is from parsing and pre-processing. FWIW, we can probably
optimize Clang itself a bit:
https://github.com/ClangBuiltLinux/linux/issues/1032#issuecomment-633712667

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOUdr2UG3F45%3DJaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg%40mail.gmail.com.
