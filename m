Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY72QH5AKGQEQQCGU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CACD24E49E
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 04:05:28 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id n19sf4143618ybf.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 19:05:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598061923; cv=pass;
        d=google.com; s=arc-20160816;
        b=V74Brh9Kd8/9RDPF39T0gKqWeNloII3ZGcuiYVGm4aZVCkymM0bTTSGqb5ph4ipbq+
         RzlRPw8w7ON8FMLCdOm/TjHKD9eU084EHjhYdk2Vr3+voxGcACKVK7ox77zS3kvHe6/P
         6WUJIYg2ZmsdNM4+9ZPxcmcBXZjpWOmF4lJqi0WHwLM9YLcWpjPBuFoFzW6IyypJCYEc
         ZjGuaKO18JfK14l8eG9bDpawZcsoz3jQFAUQaAHj23eo4TGg32xTPp5j4qZeE6401yEE
         +4GyyrWpb0PWNVP8PWPSjrMvVPoF7CzUCAvKdpgk9pS5xPI0N2fY2mRHeLEzAX3xnpJu
         QtLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ebyd/TUUaveQmdm+iOcMMvLXHTLADKJwSczyuKKm1d4=;
        b=gLPE/obsmSJvTeEvDyFxBfwctEWR8rB8+62GuXIjcMqOAm64nOidsibRddMQmrF8je
         kLypg3PC4VIwzu0YE6upZI1Er5bzoOb+UAmlAqZjfdkqTUGbuI/gdgLzHrXbS5iZxFOA
         4DulJnpdCCbhahIrjHPZZsEPFpttnEnxAjjNnDQEaPwf8Hz4XyRdH6gvKjwq85eXSpjv
         IPu+TMjY9Ape2Ck6UyyZLKLfMdKyGhL1L1yQFGPjR5An8D+BWMBrdDNartfQO/H+hpQf
         ixHmRuZlFMSHGGdD0KYrsjVIqUBvCluXm8Kf9QuZ1ZlfQ5/keHTSQfRDD86DDxOH0gTP
         ohdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MOmUYzHI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ebyd/TUUaveQmdm+iOcMMvLXHTLADKJwSczyuKKm1d4=;
        b=pTHpvjKseauPutShJjS89n212dkOo8zfn6g4LxGzxiRqXrqmmog9rLu9wvHFWFtqtj
         uBALX7bzGeG79bLOfFC85ld9mlWiXUACsB8Q/gzUXPNyDVIYqfL6L1eb/k12PSX2+mZU
         7xuo48kKkonJ2BufkOvygVe/0dUUxxqBO18OiNpiI+yVPc8CZfRhMVi3q+H1r5vp9aIL
         RgMEEB52G3oZ5FLtdn+7dNew54cdlo3//f915O17V3bk1Z/7sJxj+O2lIBtC8bxTTak1
         JwIFaO2BMvz8c0X1tO2A5PEkgEBjjrq3sk0YEScKK46x4jCHaPx/6YwvJRQb/d5/AKcm
         nCog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ebyd/TUUaveQmdm+iOcMMvLXHTLADKJwSczyuKKm1d4=;
        b=WhXkk9oGGgxrQFaNidl8xj974QyFzTEjkWwQDeWsSTpMH/TsFQHSVdHWq4dES6wiwH
         Y+citytsyjcUcZoJ7dZlQP++7094BDfDPnrQas/1zcAuxmZIt0fb4mMAgEnzK8Eexofx
         GqcAqgb9gZkHUmU3U/vjHCUWtkVIgSz2Dw+fLLvejsG3x3O5aqTQx/+/Zt332FCEZxVA
         JgH+4SCT4q/Dp4NyQnlN+0mSZmTKJE0jNMUOTycLnz+2GntPg1EIQiRI/jw5MK6eBa4Q
         rTBqcsT92CGnQJq7mtXkd5Ap43EQn0z53M3n0Xe5cvVYu7oUKmXR3Ponx+EyVi/3Pncv
         jwCg==
X-Gm-Message-State: AOAM532WeoQHSdXU0GPKy7vNf2Ie/8PlCitHbm1W97R29/7rl7AWv15O
	VhLAdEkDlLo7DMN87MfHh68=
X-Google-Smtp-Source: ABdhPJzNETS3DxtlhtqaY1PtCsPLHbZbNKeKHa6l0ZlZRo2lw05Gq+vLnO9TBTDhzw6UHP7MyuIHGQ==
X-Received: by 2002:a25:4d0a:: with SMTP id a10mr7659663ybb.60.1598061923541;
        Fri, 21 Aug 2020 19:05:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6cc1:: with SMTP id h184ls1543831ybc.4.gmail; Fri, 21
 Aug 2020 19:05:23 -0700 (PDT)
X-Received: by 2002:a25:b854:: with SMTP id b20mr7420323ybm.500.1598061923177;
        Fri, 21 Aug 2020 19:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598061923; cv=none;
        d=google.com; s=arc-20160816;
        b=SW2uuUXOCr+TJcGGiOv+q5a9kwcxmuZ16B1Cef/9k6jG8HVpLb4u6kEoTYf8jv5kBQ
         g1OfpJIBUV9/wk6mETUS1fB2cQaGlQxoCSNKZWRN7Wl8kxMP+jy8w0uVwrHiMoXM5xPS
         RpGymzhEsNt3DW5DA40Apg1WhPdL9LW6WxbtoFEGgu0laapxhDS6uk7jOCcmRm1hN8A9
         ZXaohS9R2ZAVTQXgDiQgobdJmRG4DdlnAsK0cS5Dt6gWXWElRgm1QAaqA0JRAMHz4FbG
         8aYpjHfc2zNeKkMaDH7zk5QtUkiawKGfaZUM7hr1YtRBk2717Zdxw8CyqvoJRT9CB9DL
         APYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D3lxg92/5I8JxtarJ0uEVhZtvtwWfxzDminhJw0ojf4=;
        b=A7qrIbd5JnvnVMuuyeWFaUAr6AitnpGvz6c0f7BIzXlVl7c3q+IGOtqWB8YrTNG4Lb
         uPBsgBuEpsR3TwylFZZdOVt85brn3J2tP/KoAQ47cXciCXwzz0rTsPGKOxnncup8n+jD
         SwA3Ti6PMHJABdU82qjRFGIC1Caa+O2bQt/w0dBgst0Q6mPe/yDGtuknzuNcit/Aralu
         jMxuCT6Jbmv5VQzIej9RZUC25Fdf/4NgyiBJw+XT4F5dSkOLFY7SDTB0VV3SUqZiKqM0
         VLEYeYTUdxqqbPtqPfYTyqncrowSWLzNCKhHQtfN2Eor9QIkgop6JzmKJp7RRnPwb+ze
         +ftA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MOmUYzHI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 7si254161ybc.0.2020.08.21.19.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 19:05:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g15so1692862plj.6
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 19:05:23 -0700 (PDT)
X-Received: by 2002:a17:902:a60e:: with SMTP id u14mr3418680plq.179.1598061922175;
 Fri, 21 Aug 2020 19:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org>
 <20200821190159.1033740-5-masahiroy@kernel.org> <CAKwvOdnCZ7ao55Zdh3qkJQzudOwhkPFPOY802Emx3o7GMDdCwA@mail.gmail.com>
 <CAK7LNAR+ZdwCg7Dcg3BR5YysxzeraEHMAVsHuez5znwjoN+1pQ@mail.gmail.com>
In-Reply-To: <CAK7LNAR+ZdwCg7Dcg3BR5YysxzeraEHMAVsHuez5znwjoN+1pQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 19:05:10 -0700
Message-ID: <CAKwvOdmUBr0dMw-C1VPMF8adAwedNb8n=PyV78AFo9KkvJiS=w@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] gen_compile_commands: reword the help message of
 -d option
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MOmUYzHI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Fri, Aug 21, 2020 at 6:56 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Sat, Aug 22, 2020 at 9:29 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > I think the help message of the -d option is somewhat misleading.
> > >
> > >   Path to the kernel source directory to search (defaults to the working directory)
> > >
> > > The part "kernel source directory" is the source of the confusion.
> > > Some people misunderstand as if this script did not support separate
> > > output directories.
> > >
> > > Actually, this script also works for out-of-tree builds. You can
> > > use the -d option to point to the object output directory, not to
> > > the source directory. It should match to the O= option used in the
> > > previous kernel build, and then appears in the "directory" field of
> > > compile_commands.json.
> > >
> > > Reword the help message.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > > Changes in v2:
> > >   - New patch
> > >
> > >  scripts/gen_compile_commands.py | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> > > index 1b9899892d99..5f6318da01a2 100755
> > > --- a/scripts/gen_compile_commands.py
> > > +++ b/scripts/gen_compile_commands.py
> > > @@ -31,13 +31,13 @@ def parse_arguments():
> > >
> > >      Returns:
> > >          log_level: A logging level to filter log output.
> > > -        directory: The directory to search for .cmd files.
> > > +        directory: The work directory where the objects were built
> >
> > Punctuation (add a period `.`).
>
> Will fix.
>
>
> > >          output: Where to write the compile-commands JSON file.
> > >      """
> > >      usage = 'Creates a compile_commands.json database from kernel .cmd files'
> > >      parser = argparse.ArgumentParser(description=usage)
> > >
> > > -    directory_help = ('Path to the kernel source directory to search '
> > > +    directory_help = ('specify the output directory used for the kernel build '
> >
> > Capitalization (specify -> Specify)
>
>
>
>
> The help message of -h starts with a lower case.
> The others start with a capital letter.
>
> It would be better if "show this help message and exit"
> started with a capital letter. But, it comes from the
> library, so I do not know how to change it.
>
> I changed our code to make it consistent, but
> starting them with a capital letter is a preferred style,
> I can do as you suggest.

Consistency throughout the patch is my priority, not necessarily
whether we're using Capitalization or not.

>
>
> Currently, the help looks like follows:
>
> ---------------->8-----------------------
> masahiro@oscar:~/ref/linux$ ./scripts/gen_compile_commands.py  -h
> usage: gen_compile_commands.py [-h] [-d DIRECTORY] [-o OUTPUT]
>                                [--log_level LOG_LEVEL]
>
> Creates a compile_commands.json database from kernel .cmd files
>
> optional arguments:
>   -h, --help            show this help message and exit
>   -d DIRECTORY, --directory DIRECTORY
>                         Path to the kernel source directory to search
>                         (defaults to the working directory)
>   -o OUTPUT, --output OUTPUT
>                         The location to write compile_commands.json
>                         (defaults to compile_commands.json in the search
>                         directory)
>   --log_level LOG_LEVEL
>                         The level of log messages to produce (one of
>                         DEBUG, INFO, WARNING, ERROR, CRITICAL; defaults to
>                         WARNING)
> ---------------->8-----------------------
>
>
>
> Thanks.
>
>
> --
> Best Regards
> Masahiro Yamada



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmUBr0dMw-C1VPMF8adAwedNb8n%3DPyV78AFo9KkvJiS%3Dw%40mail.gmail.com.
