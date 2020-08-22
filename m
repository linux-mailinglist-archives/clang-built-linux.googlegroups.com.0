Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGM2QL5AKGQELFEP7AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id EA47A24E4C4
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 05:12:26 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id y17sf2426161pff.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 20:12:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598065945; cv=pass;
        d=google.com; s=arc-20160816;
        b=kULN3qtyz3GnXjtznt+lTXzzPrukBsNzjNTpZcF9/R1log8lJ0snmylsQUxdZL18bf
         /xXR6AIePxZH7nyxQS/+JguK2PttmLBP3m9Rh2ifk/QDKWHSaNEeRj2fv+R8U+XVevuR
         0NpM1k//dgyvdz3kCvweEfXFVeMHoFUl3SXkvOJIKM8Pte5MIve+mwC8lmS/WCngxbRK
         t0LvrEw1DoCjsbzD0YiKQpF0avDGxWAo873aWRu/uGE4DrqLzP5dovJml/GaYypRg3mU
         LZULe/x2GBFKUqUeU8gjYqNRsR8Ux5KtQiI6FL0v4Wa5JAk49WqUMCYwNEXp0RH/5tnX
         mymg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=WYbySw3psSPNz8vlxI14t8o+8PzLcfv0TM9pRU/vKMk=;
        b=RpjF9h1DnBPGVIGu7nTPzdUaxZKXjIXofiBD8SV8eRVRasehzGOuIJzZBdZyrUc5uZ
         Avx956brDa9d0GLTuqrQbuz+wSR0LSIIegkZRl9ZOC2rXBwzoqMfVSNgjcXr2P/FhwR+
         f/Km3UeXKYjnuBCa9fLAtzbLk05s+ee0ZRhheIuk+5BO4AnaQb1uRFNADiNC4YRT4bDd
         VoOGYGs0oQ7tfbURvoDqCkXuDY82FyJ7lGXj4KBsOUGhEF7GL6spKvuK3CJpFwxiFggD
         pZxk3mWLfwsc1YzDk6Qv8CYnxQvGyJmDBYTAU7yjw2TNlDbDoIpT541Hqi4DnV9LJM9b
         2vRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PAglR8Gf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WYbySw3psSPNz8vlxI14t8o+8PzLcfv0TM9pRU/vKMk=;
        b=g8t3m8jUVOWgKIO/j3DhAfALQViVLDc9tStps6w7P/TGqN4LC39reMsUNeJ8wYgd7L
         Cj+Z9pCPsYIUtrQvFBrUGaF9qwZD7wU8bfL4hoFoZR6SRZomodN44mqYfRHWkhyfFFEw
         vvMWjNacOWo2XlXetEFg742ubyOUlAHG0+XdU8+xdhX2CxhPs8vhUrLaLqjo5pg23Ujk
         7i68Ad+F9d1zsvJWYTmxbT1/345j8TThUS9tPrU7/YJQnwJYjpWM7dP/6BF/25pJ74uC
         /ywOpM83MtJIMwA9wG4/5XJLaDdOobv0Zi/QuBset4S5TAi7+CYXoIi6UaLv9cm3c69A
         E+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYbySw3psSPNz8vlxI14t8o+8PzLcfv0TM9pRU/vKMk=;
        b=QDqt8uoYZRVzM0D5YvTgXKuIFr1Lo6Iq0bOxGI3zT+foU9c1HTYh8/YTcMJrOFz3Vl
         8CttqqsTolfLzssmvh/tmnK5oJpUOtASNhtCtwjwTiwQ7oVMdJD37pUWCs828Oi0jlXI
         wLclqpXxYECY2htlP+W4XQ6heOkSU90ev5DfxbxMbMCmHbtke5fyVAFICNy/hAtjGpiz
         3qVQBEcLszvl5daC/5HnOWzQotaPP4JwVFpz6mohyGo+Shel6cBaoNZBN+aPZpXjLaJJ
         6wwiWuJ96EgmYExsA8PSyadehdJvfgQUTWgR1hghcYya1Jj8HamlqdIxkJvBZs+hse9X
         5YaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533z5OvZL6a4rU4cLsQpAX3A/n970aejGqDYFFLn4nnjetIyazlI
	RA8Mhcv6KmFuRlG1yFcEeAw=
X-Google-Smtp-Source: ABdhPJzYQcYgbXAe1CrgAEaTn+PieeFuxKfn/unlUxZ4ST0uSnC4XnOnmkOQ9HWoQFPZk4bdOXKRNQ==
X-Received: by 2002:a17:902:ee82:: with SMTP id a2mr4647484pld.204.1598065945636;
        Fri, 21 Aug 2020 20:12:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls1890689ple.4.gmail; Fri, 21
 Aug 2020 20:12:25 -0700 (PDT)
X-Received: by 2002:a17:902:bb91:: with SMTP id m17mr4929430pls.55.1598065945173;
        Fri, 21 Aug 2020 20:12:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598065945; cv=none;
        d=google.com; s=arc-20160816;
        b=r2N6PRKHBswPmPLkZxjy+IZznG9ucax5AWaus5JLdk6KhPTa1SDsbe6I9kPHrb1F90
         7oPnk4eSGcYJiEGnlU3Vx1/eyO9HN+EuVwUSj51AnoVb7Zw40iPqyFWQPYxlNUbCwMNU
         UdrLji4jE4aikEF3cSJmuVCGMuFPiaAh2o5iIl9P9ka5pK6eAGrfX3NTvcXzjdxp8rl4
         lIKMz0697TafxYFpMS2mgVv4kVpYTTlBv4eXqHpCspfo6rmPUjSbDvfpNJnaSIEsvlZ1
         q9lPvn6Vaob0XRNnYootdMUQECATIIbwSk8o7+tzetURwbJLkcsxAI2VQwSiNafwEl/v
         4/vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=e6RWKtFs9pXYjYTAelrwYfwInM31ujnRzIsZ4gq7lr8=;
        b=l6aZ17XWor19q6P88l8Ihauk0Kmu6Eu61rsCtfgY0OLwnMuQabz3sxU43mVoce0uBT
         gBjxkeqNqTjNhXx92CUxgswPap+f7mUQ6FTj6Rx4JDpOt9765eanxKBRGUxnZtkPSl1X
         JWOwQ8LGCWGAy2Dtfn6d1nbbbeXIGkydwt8t66iwzvPIh2MX6W0oKPmhVHiG1i/oW/9h
         CImYt36QRdLD2rAiSwXycdD0v4u4x+yAnAsHs0DSlnbtOFWM0ibhb07dNl/2nAf0chS0
         NqM/iv95Qe6hCgFhhmsMdL1EnhZ76yKJWRnh7arM9P7tRJ2bDb+AxeuhNgpigAWqiFRp
         l0PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PAglR8Gf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id bx1si177750pjb.1.2020.08.21.20.12.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 20:12:25 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 07M3C6hw020152
	for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 12:12:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 07M3C6hw020152
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id b12so1098707uae.9
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 20:12:06 -0700 (PDT)
X-Received: by 2002:ab0:623:: with SMTP id f32mr3507228uaf.121.1598065925547;
 Fri, 21 Aug 2020 20:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org>
 <20200821190159.1033740-8-masahiroy@kernel.org> <CAKwvOdmR=VeR0=LUgXCwnpK9LH90_itzv627wBEK4hCroBEW9Q@mail.gmail.com>
In-Reply-To: <CAKwvOdmR=VeR0=LUgXCwnpK9LH90_itzv627wBEK4hCroBEW9Q@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Aug 2020 12:11:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS6k5zGMHyWa=jCKo6HZf1AXq5_qtMmgY2cvet9y3u-Rg@mail.gmail.com>
Message-ID: <CAK7LNAS6k5zGMHyWa=jCKo6HZf1AXq5_qtMmgY2cvet9y3u-Rg@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] gen_compile_commands: support *.o, *.a,
 modules.order in positional argument
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Huckleberry <nhuck@google.com>,
        Tom Roeder <tmroeder@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PAglR8Gf;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Aug 22, 2020 at 9:59 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > This script currently searches the specified directory for .cmd files.
> > One drawback is it may contain stale .cmd files after you rebuild the
> > kernel several times without 'make clean'.
> >
> > This commit supports *.o, *.a, and modules.order as positional
> > parameters. If such files are given, they are parsed to collect
> > associated .cmd files. I added a generator helper for each of them.
> >
> > This feature is useful to get the list of active .cmd files from the
> > last build, and will be used by the next commit to wire up the
> > compile_commands.json rule to the Makefile.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> > Changes in v2:
> >   - Separate the file parser into generator functions
> >   - Use 'obj' instead of 'object' because 'object' is a built-in function
> >   - I think using 'file' is OK because it is not a built-in function in Python3
> >     (https://docs.python.org/3/library/functions.html)
> >     Anyway, the variable 'file' is no longer used in this version
> >   - Keep the previous work-flow to allow to search the given directory
> >
> >  scripts/gen_compile_commands.py | 100 ++++++++++++++++++++++++++++++--
> >  1 file changed, 96 insertions(+), 4 deletions(-)
> >
> > diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> > index 6dec7e2c4098..65859e6044b5 100755
> > --- a/scripts/gen_compile_commands.py
> > +++ b/scripts/gen_compile_commands.py
> > @@ -12,6 +12,7 @@ import json
> >  import logging
> >  import os
> >  import re
> > +import subprocess
> >
> >  _DEFAULT_OUTPUT = 'compile_commands.json'
> >  _DEFAULT_LOG_LEVEL = 'WARNING'
> > @@ -32,8 +33,9 @@ def parse_arguments():
> >      Returns:
> >          log_level: A logging level to filter log output.
> >          directory: The work directory where the objects were built
> > +        ar: Command used for parsing .a archives
> >          output: Where to write the compile-commands JSON file.
> > -        paths: The list of directories to handle to find .cmd files
> > +        paths: The list of files/directories to handle to find .cmd files
> >      """
> >      usage = 'Creates a compile_commands.json database from kernel .cmd files'
> >      parser = argparse.ArgumentParser(description=usage)
> > @@ -53,12 +55,21 @@ def parse_arguments():
> >      parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
> >                          default=_DEFAULT_LOG_LEVEL, help=log_level_help)
> >
> > +    ar_help = 'command used for parsing .a archives'
> > +    parser.add_argument('-a', '--ar', type=str, default='ar', help=ar_help)
>
> If there's a default, doesn't that mean it's no longer required? I
> think it should be required.  For a clang specific tool, we'd prefer
> the default to be llvm-ar anyways.

A good point.
I want to set reasonable values as default where possible.
'llvm-ar' is better.

I will change it.



> > +
> > +def cmdfiles_for_modorder(modorder):
> > +    """Generate the iterator of .cmd files associated with the modules.order.
> > +
> > +    Parse the given modules.order, and yield every .cmd file used to build the
> > +    contained modules.
> > +
> > +    Args:
> > +        modorder: The modules.order file to parse
> > +
> > +    Yields:
> > +        The path to every .cmd file found
> > +    """
> > +    with open(modorder) as f:
> > +        for line in f:
> > +            ko = line.rstrip()
> > +            base, ext = os.path.splitext(ko)
>
> below in main() you check the file extension with endswith().  Would
> it be good to be consistent between the two?

I want to re-use 'base' to convert
the *.ko into *.mod

path/to/my/driver.ko
-> path/to/my/driver.mod


I think using os.path.split()
is good for checking the valid suffix,
and replaceing it with '.mod'.






> > +            if ext != '.ko':
> > +                sys.exit('{}: module path must end with .ko'.format(ko))
> > +            mod = base + '.mod'
> > +           # The first line of *.mod lists the objects that compose the module.
> > +            with open(mod) as m:
> > +                for obj in m.readline().split():
> > +                    yield to_cmdfile(obj)
> > +
> > +
> >  def process_line(root_directory, command_prefix, file_path):
> >      """Extracts information from a .cmd line and creates an entry from it.
> >
> > @@ -116,7 +194,7 @@ def process_line(root_directory, command_prefix, file_path):
> >
> >  def main():
> >      """Walks through the directory and finds and parses .cmd files."""
> > -    log_level, directory, output, paths = parse_arguments()
> > +    log_level, directory, output, ar, paths = parse_arguments()
> >
> >      level = getattr(logging, log_level)
> >      logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
> > @@ -126,7 +204,21 @@ def main():
> >      compile_commands = []
> >
> >      for path in paths:
> > -        cmdfiles = cmdfiles_in_dir(path)
> > +        # If 'path' is a directory, handle all .cmd files under it.
> > +        # Otherwise, handle .cmd files associated with the file.
> > +        # Most of built-in objects are linked via archives (built-in.a or lib.a)
> > +        # but some are linked to vmlinux directly.
> > +        # Modules are lis
>
> ^ was this comment cut off?

Oops, I will fix it.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS6k5zGMHyWa%3DjCKo6HZf1AXq5_qtMmgY2cvet9y3u-Rg%40mail.gmail.com.
