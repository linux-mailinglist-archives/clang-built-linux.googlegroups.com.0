Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIVXWP4AKGQE75FOWIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id BA90721E2D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 00:09:39 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id l17sf10610913ilj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 15:09:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594678178; cv=pass;
        d=google.com; s=arc-20160816;
        b=ehPDv7q/R2XNYh/pSjv/EY13ik8HzkBxCqfhXOmolz4s3lEJTGxWzDciuvKgUFsNoo
         VlZ7TkwBnhERjrWwmV9PSyUTPx2ePoc3iT5qAAFWsLMRJVaQdE8kAHayBj7Sm6duaFVt
         mwL+indGTNnQbN398g1rDGNzKgNWT2/IBMJ7pgGVuuUfKmHbqglrpymA3mrnb3VTAc7X
         /ZsIpc6dgz9ijZUHH3Ux5CjeVvhA5dNzjrsEgz5QVc/JGkWqeb7yhbSJGctS3hBiBNGB
         Lub4CPMpfFbXy4DM1Lm//KcoTHbKW4AZCj0OpuT00HNkoXt6PSYqiBh0dxqJVcjCkkJj
         48BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iJ8pI5uDpE2jf2drIPGySu1W0fme7HJB/rs77Kdw9Jk=;
        b=FVDfNYq3N+u2B6ghKb1pWnTeUEBaIUpt9+hXodPjdBEbMjYwmgfam7tR38WbVLCpLY
         UxPPNkDAqdsXHUUoTThE4761rc1Dqo71Pc77K8XZbAZ4PvSr28RRvgxXbMKxPqBC2zh+
         7QeSy/s7uVmSXgA5jdoovF87MydaOiE7MwCgvrGxYeUrrw1RABvuWnsBb/RSVImuZsXn
         TACjk/THtqhh70TDbVISiDxUAKsYWpoq2EDIpYOD/8GAUspLkmuf4fneK3AJvTyRnZ3U
         p8YnGINPMuwYHHx262dgpwnTeLy8XjZYM+PjuvmOcAsTNlhicTxkm9THTKH9lH09zI2Q
         16Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JyJazunc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iJ8pI5uDpE2jf2drIPGySu1W0fme7HJB/rs77Kdw9Jk=;
        b=LU02qVEagLjHXUya4WYnkdylazv9j+bgUa3RnSYmcbEo7BIWqwOQSwcFBu7m1Jd7H8
         fUHj2E2saKqOWhkW7M0RUFS00UX+xMrp5YJfihDGsfkjnE2s+/9EKPYh6zPyJ/ueSssR
         Lps/RvIJMdXqDV1NWNnZWEk/T/vUetwck58suLbiULeXWiDQMD4xQqzDIuarzKh/elLJ
         v9cYmPXcbsMiFunPiI4AVFavgcwfeX8QJ550q2xiU3zLzdpMmBN6/mUrm6r0vLqgKfjL
         I/gIOSVl8pug2KOe5vlY1sX05zGJQycV6w9/48ZhjD0gvgBtS1FQRvwp3I/sZzJEB0v7
         QzYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iJ8pI5uDpE2jf2drIPGySu1W0fme7HJB/rs77Kdw9Jk=;
        b=JDC0I3Yfg/lKVqhOcUgFEePVnVL/H8l6Qm98srSo5pZ6N+HqbHj414yfqI8lHVJ6WW
         gnI4WlI8/+cFuC0mfLjhUUU02SS36XQz5IUR8pubaLgy8wQBXmG4jWipiLAoej/tUaga
         U8vSYSgd5/TqkkjlpMK3+4SNxEpw00UVPOQeZfq7pha+rUbuJ1XWsh4AwzRvUXwevy1p
         +xcDimDLhGkjh+jnW4yp97+ZIex5Zcg7pbBjLV70QWiVDiYUn589kqy9NTdv4GM00yfH
         wDHSsI6Ekv+BqC6W4e9+3VGOzLnpGsC1SisKE+cWu589YDLP+LECHcfiRl2avkG2kDfF
         bUrg==
X-Gm-Message-State: AOAM532zudW+oXX+NEPybraH3jOTMbnP5bJIqQa6zECR/9jSIKj2gEcW
	iAO70gUp7nzYTUQi8I/pXUY=
X-Google-Smtp-Source: ABdhPJwnftu/AmyEDBiouoUah5IS9j8rF+Rv7OCe01Kwde+TybvPfoJXuIMzGzO01Ev0RfQOqTe/2A==
X-Received: by 2002:a05:6e02:dc4:: with SMTP id l4mr2023094ilj.134.1594678178455;
        Mon, 13 Jul 2020 15:09:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5812:: with SMTP id m18ls4619114ilb.2.gmail; Mon, 13 Jul
 2020 15:09:38 -0700 (PDT)
X-Received: by 2002:a05:6e02:1346:: with SMTP id k6mr2072166ilr.0.1594678178050;
        Mon, 13 Jul 2020 15:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594678178; cv=none;
        d=google.com; s=arc-20160816;
        b=hTDl5atED093wYjMkWYDN1QRjxcQzYcXarq/Q3kfXYNtChRtY07XAaQLeCly0zlspW
         uEPiV/asM7eqoG0f6PWguvshsy0LrqCko/3UorBaXaayLYdy5edOW1+mV8Gfaf0EU6vY
         a087T8eMI33FPOSc2rhZ3AvgU6ImdQM7ZPBwtUtnfoPwnWkEuKg293KwXU5+BjpRUSIR
         87NwtNi7NMLHS9Vl4tLWC6Lhxlk9zvVUwoYqTzv8w2uTbb9lk18w6boN7NUDM34Vkpx6
         OzCyURF+jB+OhNEEiUnAia+y02N9ZK7LcisfkPMgKiuX21LuMIhzZZwIJTfCngV7/kfY
         Eybg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ii9mc3yCq8mIv2xeGZGNAM8723q3fkKzZkvXtrPuIp4=;
        b=oVMGUTci51tQgKppYeh3X0Ie+8PhkmPugE+jgnw6q9UWH7S4bLnBc25ucEed/TQ668
         6iQbZPGczCDn2xuYa4wfxQEBgaSAJxVktT8TNiyHKISTZ6iExchiPSZy1qhdqktoN+B+
         xG1NLn221jW7HE0mj2txcI+ccxboa+iALyv8A/lN/uoJyrvTF3KXGZvksXEgHZ9B301p
         m7mQVr7U5RGMtXte9xNW2b2ObwnL2gAqsr/RsFh3u1mOu2aaTeb+M4BMgyN6bfNC3CMz
         3fudFU6xBol2GX+NQs+/YHeG6+hkisKrO0uXnYc13kAckSQJouhTRaiRNUvfk0c/LTi6
         sL3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JyJazunc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v16si1014378iol.1.2020.07.13.15.09.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 15:09:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 207so6663326pfu.3
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 15:09:38 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr997132pgn.263.1594678177107;
 Mon, 13 Jul 2020 15:09:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200708181905.257691-1-nhuck@google.com> <CAKwvOdmKsCedU=Vt_SBSGnf4gKc9Ae4sknn_Lj+kw9f0HY5MMA@mail.gmail.com>
 <CAJkfWY58JwBqxjHcaQDwpUMrfG_hLiBkskrTfC4EeQvDrz5Q1g@mail.gmail.com>
In-Reply-To: <CAJkfWY58JwBqxjHcaQDwpUMrfG_hLiBkskrTfC4EeQvDrz5Q1g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jul 2020 15:09:25 -0700
Message-ID: <CAKwvOdnJmREByYq_RxfjxhQLMZi2RFk03a+e2GTWsz_VQFfbQA@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Roeder <tmroeder@google.com>, 
	Bill Wendling <morbo@google.com>, Pirama Arumuga Nainar <pirama@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JyJazunc;       spf=pass
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

(bumping a few points for v3)

On Thu, Jul 9, 2020 at 10:56 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> On Wed, Jul 8, 2020 at 2:11 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Jul 8, 2020 at 11:21 AM 'Nathan Huckleberry' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > I think we should add scripts/clang-tools/ to MAINTAINERS under
> > CLANG/LLVM SUPPORT:
> > ```
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index c87b94e6b2f6..42602231929c 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4211,6 +4211,7 @@ W:        https://clangbuiltlinux.github.io/
> >  B:     https://github.com/ClangBuiltLinux/linux/issues
> >  C:     irc://chat.freenode.net/clangbuiltlinux
> >  F:     Documentation/kbuild/llvm.rst
> > +F:     scripts/clang-tools/
> >  K:     \b(?i:clang|llvm)\b
> >
> >  CLEANCACHE API
> > ```
> > that way we get cc'ed properly on proposed changes (should folks use
> > scripts/get_maintainer.pl).

bump

> > > --- /dev/null
> > > +++ b/scripts/clang-tools/run-clang-tools.py
> > > @@ -0,0 +1,77 @@
> > > +#!/usr/bin/env python
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +#
> > > +# Copyright (C) Google LLC, 2020
> > > +#
> > > +# Author: Nathan Huckleberry <nhuck@google.com>
> > > +#
> > > +"""A helper routine run clang-tidy and the clang static-analyzer on
> > > +compile_commands.json."""
> > > +
> > > +import argparse
> > > +import json
> > > +import logging
> > > +import multiprocessing
> > > +import os
> > > +import re

Is `re` being used anywhere?

> > > +import subprocess
> > > +
> > > +def parse_arguments():
> > > +  """Set up and parses command-line arguments.
> > > +  Returns:
> > > +    args: Dict of parsed args
> > > +      Has keys 'file' and 'type'
> > > +  """
> > > +  usage = """Run clang-tidy or the clang static-analyzer on a
> > > +  compilation database."""
> > > +  parser = argparse.ArgumentParser(description=usage)
> > > +
> > > +  type_help = ('Type of analysis to be performed')
> > > +  parser.add_argument('type', choices=['clang-tidy', 'static-analyzer'],
> > > +                      help=type_help)
> > > +  file_path_help = ('Path to the compilation database to parse')
> > > +  parser.add_argument('file',  type=str, help=file_path_help)
> >
> > I don't know if the kernel has a preferred style for Python, but I
> > think it would be good to be consistent in the use of single vs double
> > quotes for strings.  My preference is for double quotes, but I don't
> > know enough about the various PEPs for style or if the kernel has a
> > preferred style for these.

double quotes.

> > > +
> > > +  args = parser.parse_args()
> > > +
> > > +  return args
> > > +
> > > +def init(l,t):
> > > +  global lock
> > > +  global analysis_type
> > > +  lock = l
> > > +  analysis_type = t
> >
> > Is this canonical Python?  Maybe wrap these functions into methods of
> > an object you construct, that way you can assign these as instance
> > variables against `self`, rather than using global variables.
>
> I did this to allow shared locks between processes, see
> https://stackoverflow.com/questions/25557686/python-sharing-a-lock-between-processes

Ah, ok, I see the problem.  In that case, I'm less worried about this.
`global` just sets off red flags unless there is a very good reason to
use it.

>
> >
> > > +
> > > +def run_analysis(entry):
> > > +  filename = entry['file']
> > > +  p = None
> > > +  if(analysis_type == "clang-tidy"):
> > > +    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> > > +                        "-checks=-*,linuxkernel-*", filename],
> > > +                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
> > > +  if(analysis_type == "static-analyzer"):
> > > +    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> > > +                        "-checks=-*,clang-analyzer-*", filename],

Is it worthwhile to NOT run `-*` passes and only run
`clang-analyzer-*`? Otherwise `make clang-analyzer` and `make
clang-tidy` contain a ton of duplicate info.

> > > +                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
> >
> > When you have a fair amount of duplication between two branches of an
> > if/else (for instance, same method invocation and number of
> > parameters, just slight differences in parameter values), consider if
> > you can use a ternary to simplify or make the code more concise. That
> > would also help avoid initializing `p` to `None`:
> >
> > checks = "-checks=-*,linuxkernel-*" if analysis_type == "clang-tidy"
> > else "-checks=-*,clang-analyzer-*"
> > p = subprocess.run(["clang-tidy", "-p", os.getcwd(), checks,
> >     stdout=subprocess.PIPE, stderr=subprocess.PIPE]
> >
> > then maybe do some validation of the analysis_type when validating
> > command line arguments earlier.
>
> Argparse should already handle validation of the analysis type.

Cool, I still think the ternary can simplify a v3.

>
> >
> > > +  lock.acquire()
> > > +  print(entry['file'])
> > > +  os.write(1, p.stdout)
> > > +  os.write(2, p.stderr)
> >
> > Please use sys.stdout and sys.stderr rather than magic constants for
> > their file descriptors.

Also, I'm not a fan of how clang-tidy writes the errors to stdout.

$ make LLVM=1 -j71 defconfig clang-tidy 2> log.txt
write part of the log, and spews to stdout.  Do you think it would
make sense to redirect stdout from clang-tidy to stderr for this
script?

$ grep error: log.txt | sort -u
$ grep clang-analyzer log.txt | sort -u
Checking some of the clang-tidy warnings, some seem harmless.
linux-next/net/core/devlink.c:9527:6: error: redefinition of
'devlink_compat_running_version' [clang-diagnostic-error]
looks legit, though not terribly important to fix ASAP.  So that's cool.
The clang-analyzer report is a little beefier, once the traces start
getting long they become fairly hard to follow. Is it possible to dump
the html report of these? I guess the issue with that is that we
wouldn't be able to join them in the python script.

$ grep clang-analyzer log.txt | sort -u | cut -d '[' -f 2 | sort -u
clang-analyzer-core.CallAndMessage]
clang-analyzer-core.DivideZero]
clang-analyzer-core.NonNullParamChecker]
clang-analyzer-core.NullDereference]
clang-analyzer-core.StackAddressEscape]
clang-analyzer-core.UndefinedBinaryOperatorResult]
clang-analyzer-core.uninitialized.ArraySubscript]
clang-analyzer-core.uninitialized.Assign]
clang-analyzer-core.uninitialized.Branch]
clang-analyzer-core.uninitialized.UndefReturn]
clang-analyzer-deadcode.DeadStores]
clang-analyzer-optin.performance.Padding]
clang-analyzer-optin.portability.UnixAPI]
clang-analyzer-security.insecureAPI.bcmp]
clang-analyzer-security.insecureAPI.DeprecatedOrUnsafeBufferHandling]
clang-analyzer-security.insecureAPI.strcpy]
clang-analyzer-unix.cstring.NullArg]
clang-analyzer-unix.Malloc]
clang-analyzer-valist.Uninitialized]

interesting. I like how clang-analyzer warns about bcmp and yet llvm
will generate calls to bcmp...
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJmREByYq_RxfjxhQLMZi2RFk03a%2Be2GTWsz_VQFfbQA%40mail.gmail.com.
