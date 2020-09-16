Return-Path: <clang-built-linux+bncBD6K324WS4FBB34CQ75QKGQEMLXA4KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id C24B826BE4B
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 09:40:31 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id q205sf870975wme.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 00:40:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600242031; cv=pass;
        d=google.com; s=arc-20160816;
        b=WmI/SpDQygr02bGOPCuuvVrX7nOZ33q5dGTPoeGSB/2Qcq7FI0MI4MVCxLA2jCRVZf
         PP121CK99u+nXpi7wOm4oLyOls3oEyd81lckvhTXeA5Npglc+1+yqAttVd/0/uDmm+JG
         qp+DokhJSLO4srALeqqxTjkt9TB5g7mC1xZrwL9xEDzSozB3a/vpz5wphtQ3mUCYbS4x
         5433+n5oOJXs5ILwbXKCj580fs+dL1EZU1R6eRB9vXX5Ja8pkMPuK9Fk3ITQFWCjZTOa
         8KuzSLmOpxLItyDheklLfMJMbt4trI/V4BTw2rJSyDTs+I8cu1rzZjjBsfjJtmyqYsGA
         6wBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1WMxOdumGKiZ71iaEFNeuiYnlZIYOSJ/JkTWGV0E1jQ=;
        b=eFheAhQBItR+d90lUsR+WBAnkZCERl6l9pT7QRO6NdE/nkd/jV3AsE9ocMpPe+raan
         E3CSuO25XlBtC0tNv7ZQrIlhFoe+PD7JqtkWBcXMLI316rrPG0ilKM4bhkTIAcpt4Uir
         c/zzi1otXhuIxQbV6wx+PqXvNw+tNgv2gu/UuuoAHYk35188rXWeljrNZcIkzNXiL1th
         aDFudCINUm0vV2rv+xXw8Rtdlh3n0atyzhe0Nx2+h7xjfZ1YZwSQCqT4wQ4k1sTUQn6Z
         3m053kjFli68nZNuaME/BPoA/L7klIc7YHC24OPxVQUsjlCfPszkR1HG6fcbmffKlLM8
         uwgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gjM7bxmS;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1WMxOdumGKiZ71iaEFNeuiYnlZIYOSJ/JkTWGV0E1jQ=;
        b=GcRGESc49BojBqAL3A7g/9d0/4pSoXS3SIsfdzTZCg4x4k1R5AUXiUBzvXvVrbWhFU
         +BsigkwsN3hz794SbMQCdnhVK4hBNnZacMrr2L1S3mBPfLkT8IeGj2QB8/zznayIkrCp
         50p7HkfxOzeXy/+uT+zlSHlyJXONVwImgv4veV6A5gNYBXzaZrWVrIjdFVClQjsis9Do
         xkIkVVUQPCe2Dv0Y2wEHr5YuL7ESMaKG72Rd6G8YA5WNd8AaZK0tHpXetAhHXBWs8xd0
         pkatRs3DqQbZZuP2iVd9KuoBcT+TtzhbJSC7IsnUeBl5P0ZkJU6HeuwWXa26OWrpqosO
         ExmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1WMxOdumGKiZ71iaEFNeuiYnlZIYOSJ/JkTWGV0E1jQ=;
        b=PuI3lRppv8kHjF93jpTT/3SewmT0RrY1jlwruSQUcso3jyyYfxWkddBxyjL3T5TpOK
         z8E54NP4QpRSt9uAufnPFHYNzH435LTxIs9LPLHgGzm+jp5Kprsswh65RJsRUdSWL18Y
         Yg5vLNCxChLeyh8xFmAa6ra9Moufaw3zX3iVKgQgSGTM18S6mwBZJhzwFWv6+nj3RCG8
         gXo9fWfjMSohSoYaUGcB25h/iKnseWw9DikRVGo+js1SFFelZ+3P1dFz2HsugERmTj9H
         4vjtrgd5zwqIfzz7xX1/FGfr7f3WtbXrWF5LTUpnMDG9ozQpD5hQXPkcQti5xrj+FuxT
         hKNg==
X-Gm-Message-State: AOAM532mPh6eY5xpqwvPprZTzJT1puzyYL+YQWLGjUcS0ELCxSov7i3Y
	8pM5XfhnaaHcW4vbBwR2Xtc=
X-Google-Smtp-Source: ABdhPJz4UcQlUwwWpzSYux3Zp8YR6WP7w4CG85aRyBjlwQ3f/aRuZck0O8VTdHvxl2Ow12sy+arQ6g==
X-Received: by 2002:a1c:1902:: with SMTP id 2mr3446437wmz.26.1600242031503;
        Wed, 16 Sep 2020 00:40:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls1102115wrx.3.gmail; Wed, 16
 Sep 2020 00:40:30 -0700 (PDT)
X-Received: by 2002:adf:f207:: with SMTP id p7mr27023360wro.152.1600242030703;
        Wed, 16 Sep 2020 00:40:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600242030; cv=none;
        d=google.com; s=arc-20160816;
        b=AvKkC1Rd90dgGRjfpTbsdeqEiVjObIvRQ0EHFhOzy8G+w9ObKddVjRltBKy0pdS985
         GHz5yyTWSQ5xLcyFqOFexVi4I1vqgb1fGOtYR3Y6uewV3Mq6wgZwjzl2ndq3/9k9Mmtl
         MM0amkylXHpK9w+or6yLCccNC6kD7iVsBzZUpESML8gC3dTgJt4Ozn2hjnUeoM1aEGiu
         DM/L9I8DWB/pwwvOroCqE366IyBUqUnLnICdgWukX5g6Nzvzy/Q5srHKpHx9nN8JMj6W
         rKZRy63Wlzk4U8+HaOdvimXMMP+bzUBaVL/k8B9bdix5bRxZEwa4uN4yab3Z1sI8hpAg
         Huvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tqvp+bkIU1TWNlZpwcv+TKRU2X5GojmD5HYurFQV7BY=;
        b=T8N789f2iVZmYN5lu98TrbORShj/1CJ3PTuv+VfOUIu2ylHk2Lt3ieCwfXXR0J7W35
         rHHseZuowQEr+kbGWjFVVzhMmeZCVbJj+kby2zTp0tuZaGA+5eBk95rydhrxDWDOMxvB
         wBPUgAc+339Cj040uDu9V0yJ9RWOKEGfp68yCrBTwmZPRQceneHaGxw7IWxbnVd7OZ3W
         ytTWG463+if5nBcj9J6BJhJjjgVJIHJ2ULgBHYsKDgHuvIMIhObWqjUiFa7rGla4WicM
         f5Iez3h4o/3ybqOVcRyhDycHocaPVafaeFi1MKr47e/3cMy/nef/yfH8HiqbHzFZ1hDp
         WIjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gjM7bxmS;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id s16si47372wme.2.2020.09.16.00.40.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 00:40:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id q9so1763170wmj.2
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 00:40:30 -0700 (PDT)
X-Received: by 2002:a1c:9a57:: with SMTP id c84mr3177066wme.136.1600242029785;
        Wed, 16 Sep 2020 00:40:29 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id u66sm3770553wme.12.2020.09.16.00.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 00:40:29 -0700 (PDT)
Date: Wed, 16 Sep 2020 07:40:27 +0000
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
	Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <20200916074027.GA2946587@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com>
 <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com>
 <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
 <20200915120105.GA2294884@google.com>
 <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gjM7bxmS;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::344
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

On Tue, Sep 15, 2020 at 07:32:28PM +0200, Marco Elver wrote:
> On Tue, 15 Sep 2020 at 14:01, George Popescu <georgepope@google.com> wrote:
> >
> > On Tue, Sep 15, 2020 at 01:18:11PM +0200, Marco Elver wrote:
> > > On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> > > > On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > > > > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > > > > From: George Popescu <georgepope@google.com>
> > > > > >
> > > > > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > > > > the handler call, preventing it from printing any information processed
> > > > > > inside the buffer.
> > > > > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > > > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > > > > call
> > > > >
> > > > This would mean losing the local-bounds coverage. I tried to  test it without
> > > > local-bounds and with a locally defined array on the stack and it works fine
> > > > (the handler is called and the error reported). For me it feels like
> > > > --array-bounds and --local-bounds are triggered for the same type of
> > > > undefined_behaviours but they are handling them different.
> > >
> > > Does -fno-sanitize-trap=bounds help?>
> >
> > I tried replacing it with:
> >       ifdef CONFIG_CC_IS_CLANG
> >             CFLAGS_UBSAN += $(call cc-option, -fno-sanitize-trap=bounds)
> >             CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> >       else
> >             CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> >       endif
> >
> > The code traps.
> 
> What's your config? Do you have CONFIG_UBSAN_TRAP=y? If so, you have 2
> options: honor UBSAN_TRAP and crash the kernel, or have a
> 'CFLAGS_REMOVE_... = -fsanitize-undefined-trap-on-error' for the files
> where you can't deal with traps> 

I don't have CONFIG_UBSAN_TRAP=y. My .config is:
CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
CONFIG_UBSAN=y
# CONFIG_UBSAN_TRAP is not set
CONFIG_UBSAN_KCOV_BROKEN=y
CONFIG_UBSAN_MISC=y
CONFIG_UBSAN_SANITIZE_ALL=y
# CONFIG_UBSAN_ALIGNMENT is not set
CONFIG_TEST_UBSAN=m

Thanks,
George

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916074027.GA2946587%40google.com.
