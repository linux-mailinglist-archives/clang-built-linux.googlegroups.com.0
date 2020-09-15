Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBOPVQP5QKGQEHW4ZONA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B55726AABA
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 19:32:43 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id v106sf1918133ybi.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 10:32:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600191162; cv=pass;
        d=google.com; s=arc-20160816;
        b=EgXySzeD/UZgS9W8+dQlO7W8uNBhxl51ke9zvxsE3DQxbptJ4NdJLwhKIpmOdTDhTq
         sN2vK+VsZEV9C9K+RDjuZi9Ok3q4GxkKEwJWBA3ffCcxdgX39lqpFWipkD7IQPq/1a0w
         sxZlIvMQ3qRloYoIILKbBpuVV/c9xf5YEt60PgcTKfvAj6EfFbDHzEBp8lEX9P/aW1Ut
         PP6VAU716uCLuR/B1lFqhJcTl5lpE3pI193TgC+1oKTF5KiU4aTeVrWJSHty75ed+cB7
         nWjj5IxObYgfhGVL8PpklmI/8d/62je0smZN129bo4G2iY6qWfSRv49MqvoZsXLlGsDS
         U4iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2rywYgsj61sET9YoM7YlYU7A48EkiEVFEVGk06aWD5Y=;
        b=GIG2dwxKjkWj9aINIX60RtxdhpjlL2YUFyTxsqWxitLmub6IA/EG8FeXLTRSdmaTUE
         5Bpz9dEzFCymuPF54JI6yEkiUhR8PgaUX+GM37EHuJR8R4oY2T3NjzFcJbOBw2xvbhgy
         34L1h5/nt7Ow1+DsgFtHRHHlCjZEoHfGjHYHU1N4FTqq7/Z8Jas76mscpe0gImg42FcZ
         n98zEecTRcyMzIzQSKDhBeW/wrr47HsEyqrg/Ci0Wl4GhaOPCnM9yHcouFEPsfzem0kp
         Q/QY7B0j/y/j4c3lPGVcYMME0nGRwvArZGLbkec/g7E/aiPY0YiayIsU94rIBOndGzFw
         VdVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d0JaJ9en;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2rywYgsj61sET9YoM7YlYU7A48EkiEVFEVGk06aWD5Y=;
        b=oiij/r8S0c4rFGCPuAnuzYYfhOBELtPFea6YaI1G+M8Hy59QK8fJUzzJ41jq2xgX4Y
         8e0aXP1gOo4l4PCfWCx4xWMVofjDjTGkKg1rfzrKd4WslYsh++64QRwykvWfzw/ZAZYm
         gc2JJ5Wy0eSw5dLVdffp2MdHke40fImtskK1PjPMFs7hYQLhtgwl6cfcJ5M5yCW0Auxl
         bGGPP8afjPgQfwiWQ3VCG0UEVSmOQersBDO6QZ2YHhRjjM2QGvK7XXot/UxOSx5w9y8h
         3HsSlq777SghlL0I/GEJUEZ0JTCVMzIHeA1vi/AkQm9yl/JGjNMvxJl99j+Az3DIyfcs
         P8ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2rywYgsj61sET9YoM7YlYU7A48EkiEVFEVGk06aWD5Y=;
        b=mNI1xYaghIcZCdHOh3y1GimDfTrqFfPXIEJDZx657cBWkRMxWzn5hxTpmpjSyWaPFI
         G+9GkzdYj4D3pxJwIuNM50JrYgJoyF2LWVB1nEPZbZHyBvZ5GBdtDqDBJCtF7fPvQmru
         EhyJMdCIb18PtjCmp38Zl0Nbn6yev3Yw8EcqgX8qKi++C7YRTJn/JC0ByH3pg9xQvyDY
         SAjsKFSQcPEQsyLNE7e5h1NxjlI3j51lmsVg4GY3kFhwgVleHAGeb/i7yXJI855D8k07
         EqHYRfIuKyYrRUhmuanHGGfkIQje5Xd8rCRMuKuQi4R+2XkP7YP4vA9nEp0rVDt5Svxo
         tV3Q==
X-Gm-Message-State: AOAM532WkYe1OrfBDzVgqqytBWAGbkGxOxC9GcF9YtZ71VU93XUUdT6q
	Tqng6A7hMQqWqEb14JDbqRU=
X-Google-Smtp-Source: ABdhPJyX1Wle0ZixXmS425m2+fHQtRxKWHU+qwz7elbpws8mct+oFdi9796Ee2klozQ3IDvZy8nj4Q==
X-Received: by 2002:a25:9c87:: with SMTP id y7mr30853804ybo.18.1600191162129;
        Tue, 15 Sep 2020 10:32:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ceca:: with SMTP id x193ls1247214ybe.2.gmail; Tue, 15
 Sep 2020 10:32:41 -0700 (PDT)
X-Received: by 2002:a25:6d4:: with SMTP id 203mr29387977ybg.399.1600191161584;
        Tue, 15 Sep 2020 10:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600191161; cv=none;
        d=google.com; s=arc-20160816;
        b=QnCXgTqJzIaJ8gzE2ERurRnYqx/iigpRHrW/voaxmGvSM99pSBJcnH98U6q6hu/lLM
         iDur2ambXCVDLkDYJmSFO23+QEicuesY9H0RYPvG1SDX1ggMJ+ND57a2qgxIwRnBi3oV
         Zv8ALakc/p6e3/7gXKQxnKnzir7aCRx5abV9y4VMFlynciYbn7+Std93/AUNbseWDrgK
         1Zn9we5W/vnE/pJmX0L6kwSUWiX8FLWnfrzV7g8zi3yLKt4WHQNkd4g1O7+jz+9fCWhD
         oruayAGrngo7HKKbGx8z2fVmdarPQaqkY7ru86jcaKJslAAbMzsYqFa1xtuEXzFVZKhT
         SZgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PAtDVfuEJhlt1elf5/lgoBo+0AnWtv6A1Q7VC77Ff04=;
        b=057V1uQmVawEGOcCcZu/f/jH+sfhw6fOwbWyFYWPyAqctxGOA8XvprEYNFQRqc+052
         s3yTwTYa8LWgQqo1WRRiZQoPwPKXR4u+pUWAWxZSQv7JqCHC9bNjr++tvWTWp8jZE2NZ
         PBVjo4EGfAXzHDqo4vQJbHzI2NAKT6j9xqrKqHO9cLzFWQCF/VruSWEYigbCUiOyhsVK
         wW3MW/HmBuv072OCW9WR5Xskn6pvuyo1O9LLeiBLur/SYWU5eBr5rVLDexwXUwRAVp/y
         HLvSgegZr8RQJBiW5eOMGQdyrfxNPvWn0MT+c5RFAgm8ZjRZ28Ki12lCs6oQ6XUJvRyH
         dOjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d0JaJ9en;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id v129si736997ybe.2.2020.09.15.10.32.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 10:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-oo1-xc44.google.com with SMTP id z1so972689ooj.3
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 10:32:41 -0700 (PDT)
X-Received: by 2002:a4a:751a:: with SMTP id j26mr14993283ooc.14.1600191160831;
 Tue, 15 Sep 2020 10:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com> <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com> <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
 <20200915120105.GA2294884@google.com>
In-Reply-To: <20200915120105.GA2294884@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 19:32:28 +0200
Message-ID: <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
To: George Popescu <georgepope@google.com>
Cc: Kees Cook <keescook@chromium.org>, maz@kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, kvmarm@lists.cs.columbia.edu, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, james.morse@arm.com, 
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	David Brazdil <dbrazdil@google.com>, broonie@kernel.org, Fangrui Song <maskray@google.com>, 
	Andrew Scull <ascull@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d0JaJ9en;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as
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

On Tue, 15 Sep 2020 at 14:01, George Popescu <georgepope@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 01:18:11PM +0200, Marco Elver wrote:
> > On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> > > On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > > > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > > > From: George Popescu <georgepope@google.com>
> > > > >
> > > > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > > > the handler call, preventing it from printing any information processed
> > > > > inside the buffer.
> > > > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > > > call
> > > >
> > > This would mean losing the local-bounds coverage. I tried to  test it without
> > > local-bounds and with a locally defined array on the stack and it works fine
> > > (the handler is called and the error reported). For me it feels like
> > > --array-bounds and --local-bounds are triggered for the same type of
> > > undefined_behaviours but they are handling them different.
> >
> > Does -fno-sanitize-trap=bounds help?>
>
> I tried replacing it with:
>       ifdef CONFIG_CC_IS_CLANG
>             CFLAGS_UBSAN += $(call cc-option, -fno-sanitize-trap=bounds)
>             CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
>       else
>             CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
>       endif
>
> The code traps.

What's your config? Do you have CONFIG_UBSAN_TRAP=y? If so, you have 2
options: honor UBSAN_TRAP and crash the kernel, or have a
'CFLAGS_REMOVE_... = -fsanitize-undefined-trap-on-error' for the files
where you can't deal with traps.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov%2BXWPZiw%40mail.gmail.com.
