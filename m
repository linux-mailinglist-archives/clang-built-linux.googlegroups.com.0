Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZHWQH5AKGQEZ45AP2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F38924E496
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 03:56:53 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id b136sf1947772pga.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 18:56:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598061412; cv=pass;
        d=google.com; s=arc-20160816;
        b=uzTOKxK95GTg54meld2r0no8EFw24eTBLZxeELiifi9jdgiOY+O/UWrb6vJBuXoFGD
         rn0wwiWAeZIn4V7McL22JXZ24jpXE2jBFk8EA/JOuc32b6e4f8lkjDqXMlsrBrsu5Yre
         K+k6yAtL+lpi5jBkKht6FGCaNlzEkI1eSXNDifxouPFZRUJoktc321zmBYsfkK7ilD2U
         GCwen0oZGha08MRu5b8Q2v4YTuP0jpV4lVNajvXYCKFh8mmutqBVkHFyM8zoz48RV1wm
         gBdO+/8j0aK9UNQJbWhdnsy6BwyPwt8r2sYQbFYq1KZ3A6H4YsiN4F2f5EA+ry/zKLBc
         HKrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4QvUPFbd/wxY17FjCy2fApp90dAzaq7pp5Aez9+bK0A=;
        b=EObXWGDlP26OoOjNM0OiGQ7DfbHZT88a5IZfCXLP0yMxmSI3x7kH+ewujcqFP2SSzv
         Fnw3OZ4F8dd++xOfGe5uChzoMsUb0wEYl/hBFbwxPhI2ZPw0+a8+Pd8bXe+n6A5iqNTQ
         6H1sPlNPpQbMK8Gu8yNY+IPAlpQEkZffdClb7x9cuXr/DgUYEZAUnNlJJvUkNk3IQuMt
         0oVxTBg7wnqu4uraSa1ojQ1GBdlT+DZydXkUP3RZA5Y2wA0rT5kaTfJOWiodLMjLehmA
         BZacS570mX1tzF02VURqZgfPVwtSh01nW0ievSUXaFHRSIb6jJRBepVzAL0YDCUJ5zZY
         Ts9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XraiQyZs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4QvUPFbd/wxY17FjCy2fApp90dAzaq7pp5Aez9+bK0A=;
        b=ACMc8Gz0NrviFsSSxjm1VTsjTDt0zBEoAR3IeqBO8P3J3koKvqW+akLP+YMzSrKKn8
         GleJ6qx4YNmnf2mdqaxv1FFFy5icaZaMcudl43mH/WssX5rR14PZF0RYKsMLKaCHcLhy
         tC1Q6lsIlckSEk35YRxshZJttM9Fzu+vC7/NAkpi4o0MAsfaM/xVcNjxhLwdwt6vid5x
         GxpYnxcIBGy2MkIqGcgxrLjS5CF2uYd7TymqHiFXXo2yDQatu7yI8XU1yAEwFc8eBimS
         B8mGVzDXpCk9BmOFgArsFOyY57Cl/UB1Uam1mUO0xQqNjdfI8xf5Z58hniKskWJAj4Jm
         H7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4QvUPFbd/wxY17FjCy2fApp90dAzaq7pp5Aez9+bK0A=;
        b=UmMdFQmmgtSd9EZu0tEJhgP2/iMOOYiKbJTHxZpXIdjLGyBPfGn/sOz6BTSC+NcKQ2
         5omeOef6ic4wbNMA8Fa7B4FXkbP+Yge3M2GyAlsZNL5ydS64QGKBFH51Mg9PDGp51x7x
         WCRCWur7SCAvzSv5c++dne+11UgY6BSOzT3ReHENtd8QMC5Z5bNf7Lh4I/KO8u3MUbNg
         khEBdRB8lJ2OFylbRPkCxXS5qV6M59CRunVC9p3oZjEclHyTdO1x1jMYu/dFXE4FbPel
         zqLCGXTi1+AdKQTe+r2W4L4l8+g5vc/7u1lQpYVff58FC5jfFdBdBn1Exp0O9yyZm3Pj
         IZfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335GgefBnV0EZtrpBVR2ujLB4dUWDA0X9atVWQFf2wLr6WUIcAH
	6AGurd5kF7XXaSVyianRepE=
X-Google-Smtp-Source: ABdhPJznQuS1C3g81q7OM1XA4MOHf/OgYp0nu1iz4sb3j+CndBFTdFNLs/zgnHCuID0E6T6gXCd+pQ==
X-Received: by 2002:a17:902:6ac9:: with SMTP id i9mr4728541plt.128.1598061412186;
        Fri, 21 Aug 2020 18:56:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2126:: with SMTP id n6ls478041pfj.5.gmail; Fri, 21
 Aug 2020 18:56:51 -0700 (PDT)
X-Received: by 2002:a63:8249:: with SMTP id w70mr4118420pgd.293.1598061411750;
        Fri, 21 Aug 2020 18:56:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598061411; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3xVH3XSzLMUjR32jhey59BXP1zmhdwqUhD7ovMBsGFlHXcoDt2c3IE/epFfSBHjpe
         e4fYhIh1v+Jfn1BNV14GUf+lPX91ZbKEQo8jYEyKySGqCxIu5D0wD9+4BUex3DHSJheA
         /ovjr/76DBE/HJxGwspTXxkQ5mdmvkSFcmAXg0p08Z2UQTQUrl53z9mE+cWgUOfxwf1W
         HPZtJuwiZXBbOKT+dqmqiacIZrOBxJhTLYGNdRgeTFkh6WK5YxL1+Q13Hs8pnmIwkuF1
         vNAkfRnl6rkkiWdIrqb0BP0bw4k5ZQNtL4oU9J0Mw5Owm+6QQf5X1WSpx1qS7G0IQYqe
         E/xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=q3L66YZXyG50TUDwrxJ74OdS8uQta7H1te/B0BYs9zU=;
        b=XdkAvW/pz9SpagbVdWlLHeuxQoNYBAo1YqGVSVToGMMdS4WCH44jbABou7BVzDElox
         jt0hb3iD6bapBY62OstsXXnADJT4H0m+FLMY+tor5tr0sZO3B2nyWQAxZPcrXQEwW59W
         APo1msH+/R/4qBnSWP/hZFFIhwwUunAesK9Kymfaifg8F2QONRH0HyDbWyzH+z2ePIqC
         dLCgSDVxQ5XJqP0DWJ4JktHKQIz5PSaVQjhxFsjiYfEAXQa+kAcFUQVgsRI2yKsUEovu
         t65mQgR1dF3dFaOLt2Cs+Ovzd3PGF8MbcuH89pXlhchH2orPALAW8LUuUCoQENyKWOxZ
         dUjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XraiQyZs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id na12si87603pjb.3.2020.08.21.18.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 18:56:51 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 07M1uRC6001630
	for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 10:56:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 07M1uRC6001630
X-Nifty-SrcIP: [209.85.221.175]
Received: by mail-vk1-f175.google.com with SMTP id x142so834996vke.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 18:56:28 -0700 (PDT)
X-Received: by 2002:a1f:eac1:: with SMTP id i184mr3803919vkh.66.1598061386864;
 Fri, 21 Aug 2020 18:56:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org>
 <20200821190159.1033740-5-masahiroy@kernel.org> <CAKwvOdnCZ7ao55Zdh3qkJQzudOwhkPFPOY802Emx3o7GMDdCwA@mail.gmail.com>
In-Reply-To: <CAKwvOdnCZ7ao55Zdh3qkJQzudOwhkPFPOY802Emx3o7GMDdCwA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Aug 2020 10:55:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR+ZdwCg7Dcg3BR5YysxzeraEHMAVsHuez5znwjoN+1pQ@mail.gmail.com>
Message-ID: <CAK7LNAR+ZdwCg7Dcg3BR5YysxzeraEHMAVsHuez5znwjoN+1pQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] gen_compile_commands: reword the help message of
 -d option
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Huckleberry <nhuck@google.com>,
        Tom Roeder <tmroeder@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XraiQyZs;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Aug 22, 2020 at 9:29 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > I think the help message of the -d option is somewhat misleading.
> >
> >   Path to the kernel source directory to search (defaults to the working directory)
> >
> > The part "kernel source directory" is the source of the confusion.
> > Some people misunderstand as if this script did not support separate
> > output directories.
> >
> > Actually, this script also works for out-of-tree builds. You can
> > use the -d option to point to the object output directory, not to
> > the source directory. It should match to the O= option used in the
> > previous kernel build, and then appears in the "directory" field of
> > compile_commands.json.
> >
> > Reword the help message.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> > Changes in v2:
> >   - New patch
> >
> >  scripts/gen_compile_commands.py | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> > index 1b9899892d99..5f6318da01a2 100755
> > --- a/scripts/gen_compile_commands.py
> > +++ b/scripts/gen_compile_commands.py
> > @@ -31,13 +31,13 @@ def parse_arguments():
> >
> >      Returns:
> >          log_level: A logging level to filter log output.
> > -        directory: The directory to search for .cmd files.
> > +        directory: The work directory where the objects were built
>
> Punctuation (add a period `.`).

Will fix.


> >          output: Where to write the compile-commands JSON file.
> >      """
> >      usage = 'Creates a compile_commands.json database from kernel .cmd files'
> >      parser = argparse.ArgumentParser(description=usage)
> >
> > -    directory_help = ('Path to the kernel source directory to search '
> > +    directory_help = ('specify the output directory used for the kernel build '
>
> Capitalization (specify -> Specify)




The help message of -h starts with a lower case.
The others start with a capital letter.

It would be better if "show this help message and exit"
started with a capital letter. But, it comes from the
library, so I do not know how to change it.

I changed our code to make it consistent, but
starting them with a capital letter is a preferred style,
I can do as you suggest.


Currently, the help looks like follows:

---------------->8-----------------------
masahiro@oscar:~/ref/linux$ ./scripts/gen_compile_commands.py  -h
usage: gen_compile_commands.py [-h] [-d DIRECTORY] [-o OUTPUT]
                               [--log_level LOG_LEVEL]

Creates a compile_commands.json database from kernel .cmd files

optional arguments:
  -h, --help            show this help message and exit
  -d DIRECTORY, --directory DIRECTORY
                        Path to the kernel source directory to search
                        (defaults to the working directory)
  -o OUTPUT, --output OUTPUT
                        The location to write compile_commands.json
                        (defaults to compile_commands.json in the search
                        directory)
  --log_level LOG_LEVEL
                        The level of log messages to produce (one of
                        DEBUG, INFO, WARNING, ERROR, CRITICAL; defaults to
                        WARNING)
---------------->8-----------------------



Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR%2BZdwCg7Dcg3BR5YysxzeraEHMAVsHuez5znwjoN%2B1pQ%40mail.gmail.com.
