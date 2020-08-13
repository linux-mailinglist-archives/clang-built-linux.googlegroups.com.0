Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBPNA2L4QKGQEVZURVPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C962431E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 02:58:39 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id a73sf3160551pfa.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 17:58:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597280317; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dm1zwOFddnevOU6g0RL1EOtVK9TZICXH1EIUAOGgw6BVEsNWPSiYL4hwPMrKxqzPCR
         vZaqw8Py/do993uMcNENR+6xuK1RSrkl3S5M7FNCg2qg/8Pe1tRd0Hj5DOrAyThn2eTZ
         Y5LoFZKfj2trZ15M0Eyct+CssJ/aanQ7Nm9K52eAuaTgMsExkahEiMcniSSbMLLePdLn
         zxclYcPoxa+v/AukNcYdbkBRWnglySkxD33IXlbehNzheR8vyDWNNg5f30bb2RBoJ+0c
         6n9qTsUvnU4gGDhiMkTQhC79MR+MxHAIwGaPt72v8Ll+vrOZ0mZKaIOT///2AphEyUMf
         MDsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=NTY7CQJ+xlYWdqnTymUoW44U92mPpwyrutMT69e0r/M=;
        b=fyGuzkPguFguAB+m35StkjkRHPGfXZeiQOgA5cPPqW8Iu/ooIySUC5O+k1ykHLD8fZ
         AoFv+RMyJOJTs37G3tg0oeiu4BILx0PLtUl6jVEjLnNh42KQ7VyP/t3MjXiIZKZ8Kvqi
         qR1fhmxmFADoq4xRbZtlnsyZxhPQXpZM+fM+T2T+MWnCwXc91d0ncMjzFflv44WdStq9
         rCLKjvjr28BlpeaiBcddDXFHXbAPDngPOtuK8EvFg03HG2rO72nShTa/8XhDT5Pg4WrH
         UTyAJcevq561crZMuL8EZGo3MT1aFTbrNqIZMh4UaShlMCoeezdMDGWmpeVeDvyoMIzY
         PIcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uqfwHqWI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NTY7CQJ+xlYWdqnTymUoW44U92mPpwyrutMT69e0r/M=;
        b=TbDJqRfbOkw/5CQur7lJ9fsX+xkMRw7by/Y3cZBD7N/ARfBzknrcaC7PR4wri/Yjeb
         OD7BSsLW08C/xAaE61DLG4RsXg+h2A31Fe7KUyNa8BoXL/9RKFzsZTdn0hpaH1tJu+Y7
         ezx7/y5UjlxOqY9hRpz4o5UsX3IssHKkkrO+I4mCAopHgRXRfkzNh8MDOY1gaiyvPc0d
         5tkcpRWfp6lmZMD4lBhJ+SThlmuI5GRY7mEuoLoWE4hzD0bfKrGMv0LBqHfVxiDS9G9B
         XzWE3FVZ6USD5HbDLic56ELpZW/m/FLbzky4L8H/aZM2I5Qlm14Kw/Bv3b+AkxczaQi4
         wU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NTY7CQJ+xlYWdqnTymUoW44U92mPpwyrutMT69e0r/M=;
        b=hQMiQ0b2MS/1i6yekkh3Hm85v9aauZq9V+PFxrkhk9A+q8sFKwZ7/kPtbPvzUkngg6
         VviQZagyC0qbb9fICWAVlTMetZb4pP2a7shdeGYfxrZq7mH1VY2u1nIX50xv8jJdvV2O
         WxTD4XydECS6Hs6YSVv3ADaPwWUVPSCEz1aQry8MGEOREYVPydlXTp5nEfIrf3x5SuKr
         bj0qIvl6yeQDBJkCUs8XyUqrGCIk/sd7ZzLnEG2tU50hQewrplcEzYoj0RvTxeB1hPw4
         H21RuB0fosI2sGxgyNwfXzIkInrBALjK9pXeh4HUKAxRn2zGpflQtXodaq7WUcCTNdRR
         8wKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s+2iOrnAP3dhesOQw9XeydRLN284TbA06N1uV7DAfi5d0WnQM
	Mo6au92KxO4QfNV9/ODME+I=
X-Google-Smtp-Source: ABdhPJwGxfju2Gqo4p2ypX/yZoy16wgjZ2NvoBH+ctBvv3/BSel89RtlAOw076WBvii1oceyHli1TQ==
X-Received: by 2002:a63:77c1:: with SMTP id s184mr1551813pgc.420.1597280317656;
        Wed, 12 Aug 2020 17:58:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4282:: with SMTP id p124ls1129020pga.7.gmail; Wed, 12
 Aug 2020 17:58:37 -0700 (PDT)
X-Received: by 2002:a63:2e87:: with SMTP id u129mr1579947pgu.347.1597280317144;
        Wed, 12 Aug 2020 17:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597280317; cv=none;
        d=google.com; s=arc-20160816;
        b=dSCOxyvud8YDPZZyQE4JayHpxXZGGBKceHohdVyANpHJ2Cmxj8eW+1O6uzdtMxEPBA
         qMkfemKmMVFElPUuSfoCAPqkLGYiLntl9jbUI1Zx+y38bDRXqAX6n7DKPNguONQWCpcS
         BQp1xBYtDTB1VuD9SN29r6tYtQeyEgYyufF1+OmlBvjlTFASt5v9POO2/t81e1YI+suJ
         IzSKuJkHhSooYLps9vmF2jf9g7lV7sSFXN8IL4xiPuuf+Fr6HVycj+ZvPE/PPZRGDoaI
         oWlUENSR1lmvT/EwAXBXf76/hz9B1tZKEsGw2LFxRz1xgoRGMnHTGXwMCQycTm48ksJe
         +OVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=KJEXsGT7cf1jNK7EqEJcxc2sDM3WPtp8flA8NDzcZDY=;
        b=lVmgpLuKZg50S2hDCsB0zqWeld5MLycPlBUGIYWlcADsGJq8kDeuiiaY71oPf10DNX
         Uhr/Fck+VHWO9BVFfby6DaO0ufWkAENDIyf5UPmjeO/LbC/MhyXnUhYdrlsS3J6kayWJ
         oYj8ikgeoZchKFPsTykKi77oR2JSWAbG9xGoF8w5dzxVsk4Oe0Z4tvH9I53Am6wRhQYt
         DtpdtPUdPXbnZML0G9X7temgJA2xW6QKQaWydtOUbYT8HXmcXKYKWW7zHvrdq988P699
         EuyyeeVXqQs72mQuGRiVo3jZRLe7WU56/DgOEkJEboxOcue4xBRsqMm1/VlGQHhi9u0g
         vbUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uqfwHqWI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id kr1si343123pjb.2.2020.08.12.17.58.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 17:58:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 07D0wC60028928
	for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 09:58:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 07D0wC60028928
X-Nifty-SrcIP: [209.85.217.54]
Received: by mail-vs1-f54.google.com with SMTP id y8so2073243vsq.8
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 17:58:12 -0700 (PDT)
X-Received: by 2002:a67:bb06:: with SMTP id m6mr1570844vsn.54.1597280291357;
 Wed, 12 Aug 2020 17:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org>
 <CAJkfWY6vhW9kNK-t+2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw@mail.gmail.com>
 <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com> <20200813005045.GA3726321@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200813005045.GA3726321@ubuntu-n2-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 13 Aug 2020 09:57:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT+zOT78s6e2z4DWbL87hzySt+_xDwpO3sWY5j0uL1egA@mail.gmail.com>
Message-ID: <CAK7LNAT+zOT78s6e2z4DWbL87hzySt+_xDwpO3sWY5j0uL1egA@mail.gmail.com>
Subject: Re: [PATCH 0/3] kbuild: clang-tidy
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Huckleberry <nhuck@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Tom Roeder <tmroeder@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "David S. Miller" <davem@davemloft.net>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Rob Herring <robh@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=uqfwHqWI;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Aug 13, 2020 at 9:50 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Aug 12, 2020 at 03:52:54PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Wed, Aug 12, 2020 at 12:56 PM Nathan Huckleberry <nhuck@google.com> wrote:
> > >
> > > On Wed, Aug 12, 2020 at 12:40 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > >
> > > > I improved gen_compile_commands.py in the first two patches,
> > > > then rebased Nathan's v7 [1] on top of them.
> > > > To save time, I modified the Makefile part.
> > > > No change for run-clang-tools.py
> > > >
> > > > I am not sure if the new directory, scripts/clang-tools/,
> > > > is worth creating only for 2 files, but I do not have
> > > > a strong opinion about it.
> > > >
> > > > "make clang-tidy" should work in-tree build,
> > > > out-of-tree build (O=), and external module build (M=).
> > > > Tests and reviews are appreciated.
> > > >
> > > > "make clang-tidy" worked for me.
> > > >
> > > > masahiro@oscar:~/workspace/linux-kbuild$ make -j24 CC=clang clang-tidy
> > > >   DESCEND  objtool
> > > >   CALL    scripts/atomic/check-atomics.sh
> > > >   CALL    scripts/checksyscalls.sh
> > > >   CHK     include/generated/compile.h
> > > >   GEN     compile_commands.json
> > > >   CHECK   compile_commands.json
> > > >
> > > > But "make clang-analyzer" just sprinkled the following error:
> > > >
> > > >   Error: no checks enabled.
> > > >   USAGE: clang-tidy [options] <source0> [... <sourceN>]
> >
> > I wasn't able to reproduce Masahiro's reported failure, but seeing as
> > he has `GEN` for compile_commands.json and I have `CHK`, I wonder if
> > that's from a run when the series was still under development?
> >
> > I can reproduce if I run:
> > $ clang-tidy '-checks='
> > so maybe was string quoting problem?
> >
> > > >
> > > > I built clang-tidy from the latest source.
> > > > I had no idea how to make it work...
> > >
> > > How are you building clang-tidy? The clang static-analyzer may not
> > > have been built.
> > > I believe the static analyzer is built as a part of clang, not as a
> > > part of clang-tools-extra.
> > >
> > > I use this command to build.
> > > cmake -DCMAKE_BUILD_TYPE="release"
> > > -DLLVM_TARGETS_TO_BUILD="X86;AArch64;ARM;RISCV"
> > > -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lld;llvm-as"
> > > -DLLVM_ENABLE_LLD=1 -G "Ninja" ../llvm
> > >
> > > Adding clang to the list of -DLLVM_ENABLE_PROJECTS will build the
> > > static analyzer.
> > > -DCLANG_ENABLE_STATIC_ANALYZER=1 might also work, but I haven't tested it.
> > >
> > > I tested the patchset and both clang-tidy and clang-analyzer work for me.
> >
> > If you rename clang-tidy in your build dir, and ensure you don't have
> > a `clang-tidy` in your $PATH (`which clang-tidy`), maybe there's more
> > we can do to politely inform the user they're missing a dependency to
> > execute the make target?  Not sure if we could could test that
> > clang-tidy supports the clang-analyzer-* checks.  Isn't there an
> > invocation that prints the supported checks? `clang-tidy '-checks=*'
> > --list-checks` is in my shell history.  Maybe grepping that and
> > informing the user how to fix the problem might solve a "papercut?"
> >
> > If I remove clang-tidy with this series applied, I get (the failure is
> > obvious to me, but...):
> > ```
> > $ make LLVM=1 -j71 clang-tidy
> > ...
> > multiprocessing.pool.RemoteTraceback:
> > """
> > Traceback (most recent call last):
> >   File "/usr/lib/python3.8/multiprocessing/pool.py", line 125, in worker
> >     result = (True, func(*args, **kwds))
> >   File "/usr/lib/python3.8/multiprocessing/pool.py", line 48, in mapstar
> >     return list(map(*args))
> >   File "./scripts/clang-tools/run-clang-tools.py", line 54, in run_analysis
> >     p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
> >   File "/usr/lib/python3.8/subprocess.py", line 489, in run
> >     with Popen(*popenargs, **kwargs) as process:
> >   File "/usr/lib/python3.8/subprocess.py", line 854, in __init__
> >     self._execute_child(args, executable, preexec_fn, close_fds,
> >   File "/usr/lib/python3.8/subprocess.py", line 1702, in _execute_child
> >     raise child_exception_type(errno_num, err_msg, err_filename)
> > FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
> > """
> >
> > The above exception was the direct cause of the following exception:
> >
> > Traceback (most recent call last):
> >   File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
> >     main()
> >   File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
> >     pool.map(run_analysis, datastore)
> >   File "/usr/lib/python3.8/multiprocessing/pool.py", line 364, in map
> >     return self._map_async(func, iterable, mapstar, chunksize).get()
> >   File "/usr/lib/python3.8/multiprocessing/pool.py", line 771, in get
> >     raise self._value
> > FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
> > make: *** [Makefile:1861: clang-tidy] Error 1
> > ```
> > $ clang-tidy '-checks=*' --list-checks | grep clang-analyzer | wc -l
> > 111
> >
> > And I'm not sure you can even build clang or clang-tidy but not the analyzer.
>
> I think that is the point of '-DCLANG_ENABLE_STATIC_ANALYZER=OFF'.
> clang-tools-extra/clang-tidy/CMakeLists.txt has some checks for
> CLANG_ENABLE_STATIC_ANALYZER to link in certain libraries related to
> the analyzer.
>
> For the record, tc-build adds that cmake define:
>
> https://github.com/ClangBuiltLinux/tc-build/blob/071eeefd2e201d3f24468cc06ed6a5860161437d/build-llvm.py#L610-L613
>
> $ ../build-llvm.py --build-stage1-only --projects "clang;clang-tools-extra" --targets X86
> ...
>
> $ ../build/llvm/stage1/bin/clang-tidy '-checks=*' --list-checks | grep clang-analyzer | wc -l
> 0
>
> If I remove that define and rebuild:
>
> $ ../build-llvm.py --build-stage1-only --projects "clang;clang-tools-extra" --targets X86
> ...
>
> $ ../build/llvm/stage1/bin/clang-tidy '-checks=*' --list-checks | grep clang-analyzer | wc -l
> 111
>
> I suppose if this series depends on it, we can remove that from the base
> defines and either add a flag to enable/disable it depending on people's
> preferences.


Ah, right.

I used tc-build to build clang, clang-tools-extra.


I will remove   'CLANG_ENABLE_STATIC_ANALYZER': 'OFF',
and rebuild clang-tools-extra.
Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT%2BzOT78s6e2z4DWbL87hzySt%2B_xDwpO3sWY5j0uL1egA%40mail.gmail.com.
