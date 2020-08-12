Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU7F2H4QKGQEHZNXHEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4018D24312B
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 00:53:08 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id a127sf4557067ybb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 15:53:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597272787; cv=pass;
        d=google.com; s=arc-20160816;
        b=A/R8IDz0Ak+16UDIqPUEBYd1O89ZmJIgxI5U4EWrVZ33An+zholfoufsM9+Fk2ZAYV
         ir7TMaeZgqAGJl0h1ma8avANo5J6U8tSLCaiYq3dGBIKQz8PaBP64GNPOY5+Rq2fsv51
         LKZcYSvYIKb3lsGc/M4HsqvC62L2Lsj3BFf0g5m9lQMQJFXZUnJpHzRFSjNlv2a0/+vp
         sJYV1NStz5g0/3dKx2m0hgFkxCmjrkiAm74wxzphYYoWDanvLDjDT5cQZNH4a2RARexQ
         5NmUW5UuM7e5/Hu/ZQ9eS0RYIGYkbM+HvZ/rsmEuM4t16FNuO6YG9ZjzzM9PZC1FGNoL
         7rAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YLvK3GbwfjfavrykYMWTNxeE+v17Jmax00Yf+O7wHUQ=;
        b=ZlE0vzVlnugoGOeLHuAYCwpQYX571oOE+hn5FUpSJcUQ/dPND6c0tqv2VDR2i4Jh+4
         uX0wMluB7hmBFKIHF9Y9RDkg9NyNgTKZo5vhwQxUmbstCj1KHwC31Su4MmOy7LNpnF63
         aCwv11Me0R/HJykVSwx6DibOye+xASI38T6PaUFCp75FN6vx4rh1sKbkVDmjoWZ7AQZs
         jzPKO6Z9jH1cizeIqYa1LCfg5vn5BZQImfgwpmZltawJ/FFfJlcM4UMYoKvpVFcJyK4V
         0xydA2zVNwcgEFB7jljssosZi5wb0vhuyiwxpw8stmxJnUN1fS/GyItrOeJky3SgTE5H
         uAEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YvF7q2IA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YLvK3GbwfjfavrykYMWTNxeE+v17Jmax00Yf+O7wHUQ=;
        b=Qe+Rydi1C2siesB1ExhKNisn6kJgAK6dIBknsfo66lqz63l5CckRcjM0fwu8fpOFmA
         7TAdneCxZr3OLj7M5iN9q4KUHWmCwM1NCJATa7pgtVfQ9ussn8sg99I6byMciNCA8YKR
         Eob7cR715PsuChXQ9bJYaoC4B7W9D7U/ApxvForLATukFBJWP8+PWw9GkEnZZbzL0xAD
         6xN9YjGg1JH1K8VIHe23yHouJkig9Rc/bqE1lsEVy2iCa9xLSnlnxQYaPnZQkIDz/JHO
         vGmO/TpPYeq0LZysRtda91Z/+Z5Q+MqJuKaFQ0j/TwB3ce+FQ3qnz6Zj5lx37IGCsWPe
         /2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YLvK3GbwfjfavrykYMWTNxeE+v17Jmax00Yf+O7wHUQ=;
        b=IuxZbg9Z/b1a8Gh/eXSQCeOgInCTGdwLVO8BSLwhjy7uuU9Zz/NL6SmJM6mDCmlmqc
         U+zUpHM2PfkDwRXZDLtUvkVJAI14eOyc9xR/v5wqhSzsDqTDYiHQigriQnK/tXVvGDcv
         dg1ekr049m4efucuOuWNu/E+SLKUAb7D34OObVDM52xq+wRYnCKgmm3Im6qGpTZnZu+U
         qOaKp6cTIxSVtyBuy/mLIJ2jgJY2XESlB4/F3tu0g+5R51VDcRTEEl/pnaDGIrrRLlHL
         BgGn0Q1GukdcIP91V7p9qPACQgQu7l4pNT/hGxIhfnD2dUA8vemd3Xe6czcB4jlh0zgH
         TyYw==
X-Gm-Message-State: AOAM5301fkXnX+HnC+qXAl2DlgtIpY5L5bULjdI2fNTt7OeP4MzOWliy
	8RrgWS7UwDD6NF8qSg7JL44=
X-Google-Smtp-Source: ABdhPJy1VayRXJERRzSpjw0E/p7j91ypQcsnDcflRiFjWAz8eyywWhS/J5Ufb1Dd1cXD6aG1mXWWUw==
X-Received: by 2002:a5b:44d:: with SMTP id s13mr2469247ybp.403.1597272787265;
        Wed, 12 Aug 2020 15:53:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:840a:: with SMTP id u10ls1565198ybk.0.gmail; Wed, 12 Aug
 2020 15:53:06 -0700 (PDT)
X-Received: by 2002:a25:2d13:: with SMTP id t19mr2504169ybt.113.1597272786920;
        Wed, 12 Aug 2020 15:53:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597272786; cv=none;
        d=google.com; s=arc-20160816;
        b=jdr9CRXq2wabY73eQB/OqGRJ8CmfEKj0LXOOFFSotdff7deMcOv0y7tLbWZD/9hSyR
         z+ykL11VnrAb/hJTTMpwEXorMxjkXPUzj0TsZjDvrNGhw7Vk29mbTtbRBa6vA3zLZbdY
         9ZoRnztzHIpTPgy9oaQqdSCUjCdubMT5s+JbsiThUbt4GjjbWXbVY4fAGc+4Ozzyz4xd
         lNgQ/U2jvyuSRB5lOPHxkVZNCIiJiuQj01qC5bgToYbebBuiHG/0Rc+WwgtKFLL/u7oi
         ZmN8FM7m1skiPRL71HPkEhpmmOGJy8y98lYYVMRMD/SmeSRBE8V/PtneISgxwPzKeCuY
         1z3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pIEp8qQrdzVNH2K5gSBgID9o6T8cEMLr9WGCiRvu8Hg=;
        b=Zc4TIBFNgZwviTmrI2FPPRPvG6Z4h/PBjkUVMzjKDA+1QDhndZx6NLP8QH0CWtGDPJ
         wm/+mhvYE5jwZKzLUwvMgcYIEDE9AcVTEEihusH+u44zeWHUEFArHgES8oWdIXyWoFme
         y0M9l0lWg+fleEPA0czGWufwcuMUgxFoCjBftVdOj/noiUW/Nidwm+R4XSOCv5RbU+65
         24S4O6mN/sX5UmoFYcKO96XN4zSMUCQIV44SY9ZHCcKBe147iv8cYOFBhSL6j2nKUe4E
         2LL72w/TMrrEDteIXC/u+vDR3SbdgCe26Simc95fYGW8ovwAnPNNGfaXJoEQXORV0bXF
         7s6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YvF7q2IA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o14si188384ybm.5.2020.08.12.15.53.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 15:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id m71so1780153pfd.1
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 15:53:06 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr1235241pgf.10.1597272785780;
 Wed, 12 Aug 2020 15:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org> <CAJkfWY6vhW9kNK-t+2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw@mail.gmail.com>
In-Reply-To: <CAJkfWY6vhW9kNK-t+2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 15:52:54 -0700
Message-ID: <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com>
Subject: Re: [PATCH 0/3] kbuild: clang-tidy
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Rob Herring <robh@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YvF7q2IA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Aug 12, 2020 at 12:56 PM Nathan Huckleberry <nhuck@google.com> wrote:
>
> On Wed, Aug 12, 2020 at 12:40 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> >
> > I improved gen_compile_commands.py in the first two patches,
> > then rebased Nathan's v7 [1] on top of them.
> > To save time, I modified the Makefile part.
> > No change for run-clang-tools.py
> >
> > I am not sure if the new directory, scripts/clang-tools/,
> > is worth creating only for 2 files, but I do not have
> > a strong opinion about it.
> >
> > "make clang-tidy" should work in-tree build,
> > out-of-tree build (O=), and external module build (M=).
> > Tests and reviews are appreciated.
> >
> > "make clang-tidy" worked for me.
> >
> > masahiro@oscar:~/workspace/linux-kbuild$ make -j24 CC=clang clang-tidy
> >   DESCEND  objtool
> >   CALL    scripts/atomic/check-atomics.sh
> >   CALL    scripts/checksyscalls.sh
> >   CHK     include/generated/compile.h
> >   GEN     compile_commands.json
> >   CHECK   compile_commands.json
> >
> > But "make clang-analyzer" just sprinkled the following error:
> >
> >   Error: no checks enabled.
> >   USAGE: clang-tidy [options] <source0> [... <sourceN>]

I wasn't able to reproduce Masahiro's reported failure, but seeing as
he has `GEN` for compile_commands.json and I have `CHK`, I wonder if
that's from a run when the series was still under development?

I can reproduce if I run:
$ clang-tidy '-checks='
so maybe was string quoting problem?

> >
> > I built clang-tidy from the latest source.
> > I had no idea how to make it work...
>
> How are you building clang-tidy? The clang static-analyzer may not
> have been built.
> I believe the static analyzer is built as a part of clang, not as a
> part of clang-tools-extra.
>
> I use this command to build.
> cmake -DCMAKE_BUILD_TYPE="release"
> -DLLVM_TARGETS_TO_BUILD="X86;AArch64;ARM;RISCV"
> -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lld;llvm-as"
> -DLLVM_ENABLE_LLD=1 -G "Ninja" ../llvm
>
> Adding clang to the list of -DLLVM_ENABLE_PROJECTS will build the
> static analyzer.
> -DCLANG_ENABLE_STATIC_ANALYZER=1 might also work, but I haven't tested it.
>
> I tested the patchset and both clang-tidy and clang-analyzer work for me.

If you rename clang-tidy in your build dir, and ensure you don't have
a `clang-tidy` in your $PATH (`which clang-tidy`), maybe there's more
we can do to politely inform the user they're missing a dependency to
execute the make target?  Not sure if we could could test that
clang-tidy supports the clang-analyzer-* checks.  Isn't there an
invocation that prints the supported checks? `clang-tidy '-checks=*'
--list-checks` is in my shell history.  Maybe grepping that and
informing the user how to fix the problem might solve a "papercut?"

If I remove clang-tidy with this series applied, I get (the failure is
obvious to me, but...):
```
$ make LLVM=1 -j71 clang-tidy
...
multiprocessing.pool.RemoteTraceback:
"""
Traceback (most recent call last):
  File "/usr/lib/python3.8/multiprocessing/pool.py", line 125, in worker
    result = (True, func(*args, **kwds))
  File "/usr/lib/python3.8/multiprocessing/pool.py", line 48, in mapstar
    return list(map(*args))
  File "./scripts/clang-tools/run-clang-tools.py", line 54, in run_analysis
    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
  File "/usr/lib/python3.8/subprocess.py", line 489, in run
    with Popen(*popenargs, **kwargs) as process:
  File "/usr/lib/python3.8/subprocess.py", line 854, in __init__
    self._execute_child(args, executable, preexec_fn, close_fds,
  File "/usr/lib/python3.8/subprocess.py", line 1702, in _execute_child
    raise child_exception_type(errno_num, err_msg, err_filename)
FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
"""

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
    main()
  File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
    pool.map(run_analysis, datastore)
  File "/usr/lib/python3.8/multiprocessing/pool.py", line 364, in map
    return self._map_async(func, iterable, mapstar, chunksize).get()
  File "/usr/lib/python3.8/multiprocessing/pool.py", line 771, in get
    raise self._value
FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
make: *** [Makefile:1861: clang-tidy] Error 1
```
$ clang-tidy '-checks=*' --list-checks | grep clang-analyzer | wc -l
111

And I'm not sure you can even build clang or clang-tidy but not the analyzer.

>
> >
> > [1] https://patchwork.kernel.org/patch/11687833/
> >
> >
> >
> > Masahiro Yamada (2):
> >   gen_compile_commands: parse only the first line of .*.cmd files
> >   gen_compile_commands: wire up build rule to Makefile
> >
> > Nathan Huckleberry (1):
> >   Makefile: Add clang-tidy and static analyzer support to makefile
> >
> >  MAINTAINERS                                 |   1 +
> >  Makefile                                    |  45 +++++-
> >  scripts/clang-tools/gen_compile_commands.py | 117 +++++++++++++++
> >  scripts/clang-tools/run-clang-tools.py      |  74 ++++++++++
> >  scripts/gen_compile_commands.py             | 151 --------------------
> >  5 files changed, 233 insertions(+), 155 deletions(-)
> >  create mode 100755 scripts/clang-tools/gen_compile_commands.py
> >  create mode 100755 scripts/clang-tools/run-clang-tools.py
> >  delete mode 100755 scripts/gen_compile_commands.py
> >
> > --
> > 2.25.1
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm3VTZ2QXXxf9pjM6n87UE%3DLc-9Cx%3DV70sNsYGmHCb-hA%40mail.gmail.com.
