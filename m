Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTXI2X4QKGQEEHQFL6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CE27B243E0D
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 19:11:43 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id 185sf1350390vsl.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 10:11:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597338703; cv=pass;
        d=google.com; s=arc-20160816;
        b=DInkbAG5H7QldI8EeF7vTkHLlT+keGgiBsNHg6z77YgG2/dPQjtkkBJ9aTMy7eRbP8
         IGH76WWyGERh6GcYOROG4i8TdHhXLby/vJl0/NbLXOFA0eC5MwOEp+M07Z5m2bYxnHdh
         YoENXY6VQdEaADhsG/EoUs9Otr7B4qgLn50Is5xCJZOTTEquxseLL13iaN1mTbaDok51
         pk8qkuGzf5OiTb416umM++Q6Kr9mxlb2yZZ7ODZepchQzvUdE46QaOdMM+ImelZ2mzZO
         wntKMJcQ4zezzKD7GR+2uZleE75RxfkZ7M6gqIyNuwgE8uxG/Cqln68Libx4AxakTd29
         9J6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=HxyCpV0q5m3vjQ53QGIcloLMf0lKFQeWMlVL2+8pc3w=;
        b=a73qbYV8YBqvNodfpQtJ+4MQa0rvOTlM/CiXX6ISW887xTY5VlbBhwwqL0O3fnB67c
         ZLUUA7UQ5CLqg6VidbjiUCI5eRTk9DdQZMN8aozYcJrcjxOih+iZW+ytQkW2SnMyU5r6
         52eN8Uc7q1GLLJVCNxzgIxKn+V1lHUzcD4Vd3w0tmGacvjykED1Gyveicq5+4uTl1Yme
         swJABZAubkWRm6BMxdDKSAEPWJwMGd8T1yR3omzEpdzKWfs2Ko0uVE4ti4cJA/8ot8bF
         NQoABAjX3LL0d5lIzK0wKJw9YfpIcppUtEo7475wQWPAHPxoS1K1XxjUsaxSBKk3FoYC
         dtTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=j9c4vOj6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HxyCpV0q5m3vjQ53QGIcloLMf0lKFQeWMlVL2+8pc3w=;
        b=Ykr/kHW8AGUP4xBJwEQxvr04eIiALBokSaAi7Z9O2g7eLY6Lt4whSYE58hIqZo17fq
         jDNncdDYfziH3yXgpFwOjJX3j3oWAnlfwcviG93Ig2VKUOg6TgYF/dz9UgijqACcI6fV
         BGUIBCffhRJ2UlxHKEyG6e3W8ZX/kPK6Pog5m5ysMYejDUgfZ7/68SbQfINN6mc5zgv7
         4xSh/ZkdWQOKiUfejrPoczxZubpVFtfSJdDythM4xuPREeZBNSb0VYYs5cramAjr7DO3
         /Mb8bpGv7B3hTzb/o1S+fzjqO9GE2jB9I5iqcIt6gZxyHjcF0wle2rLUrpSTV+ZgzHlM
         gN6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HxyCpV0q5m3vjQ53QGIcloLMf0lKFQeWMlVL2+8pc3w=;
        b=HM7HyLgmESMmWUgSAHmwxlKFcAEP4wQ772ekrUSEnfWwoFQYwJ3gdb+xsb5Pv+2Beo
         UbZJjyiXguyKlZx+wj8wfjhjzev3JFRrNcJBAYKTRhTAjPtI+UThIIsGJehAdxCnN8RE
         YOaR6I/cufQP8QgvYY8WnaflKm7AmTGt0JUy6Ld/EyR7m0g9l/nBlz20jotOXI5yQasa
         oJVfENl7AxsQfP0/3ua4rZFvnMk1xdFnuv/v86Kz7aGGvo0o8xYbA+ZNMFSAvYcRXuGd
         33twM5mq3WCYEFX31SSqqdSWZAy/iM1bGTiRvOOW4yylQ5E9MDo6lh45cwMsbhvbG1zS
         rGyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VY8+S2TR2GY/S0daVJ2MxGOiJip/7Ak7teh9XFiGOCjgwCOwT
	0yX+RxTwFLxrUYsHtxy8fwE=
X-Google-Smtp-Source: ABdhPJxl1Le+A603ttPVO4kj5ARH8kARCr0+Jsyx66SpMVlFFtnxy9+fv0yAfT8KYk1ts68LYYZlRg==
X-Received: by 2002:a05:6102:538:: with SMTP id m24mr4456906vsa.40.1597338702769;
        Thu, 13 Aug 2020 10:11:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc0c:: with SMTP id o12ls761034vsq.9.gmail; Thu, 13 Aug
 2020 10:11:42 -0700 (PDT)
X-Received: by 2002:a05:6102:1049:: with SMTP id h9mr4177120vsq.183.1597338702248;
        Thu, 13 Aug 2020 10:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597338702; cv=none;
        d=google.com; s=arc-20160816;
        b=th1bcAoQvYTN9djvghfRNkK0pe1vutlQ8qhg4zHN9f/oMLRRDyMOCNXR/GypdKbZjx
         mBeSptdKBdRPlWInfGQTgbthKNsrLiwQjsfZHNpyziI0Ny6+DVxzsx1zp9J9Xeib+ZaV
         HEhyAXA6Brc1h4vgjHZ3gLwZ5lTVdHwKzaGxGNr3lWllDARS14ik0ksv2C9z3CfXGEdp
         mu8b+2tC/C+Lroct8tlok6pID7JoI/nyYMUukREi6RNNZPQipE6QvZtj7llsK6I2U57s
         YmRFuoFar+d9OPjMM6Z5CKeuhCOucLeHv8mbjqgSVmmBeNHQlnv43QXAgaKiFdv3wqly
         /kDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=COmQxRVtKoK6go1MGbVESX1DsQBEwLsqKClULz5PF3M=;
        b=JURPIUC96bEF/RpHYk5rFISbkmlpQjruxzRh9MXOETCSINXIeA4W4MjlxYdY6ZeHqq
         j/aIrxIPLJ/iHvLQoweAUdV/tDr6s0p0aiOM4AN3scG3w5gx7KO1HW+I7VP3nWnEPcwi
         79TXxOfV/r0HzFn6gP+8AmIopAuEdDfC9+uFjUUkHcX4uvCdCLYCoADveTdc4zGsyvDk
         6x4PCCX9JY/2fBvgr4nqd8/vxFQWCClK9soTw4o8T8pu5ia6Bg27CyMwtz4Kl80JMAuV
         7EvEyKYQsvf/pPRAuaPgAh6k+45YkC8tHOHZ/D5BNjFFnJS2dScfItD5mmU61GdZf+db
         PzIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=j9c4vOj6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id t72si419407vkd.5.2020.08.13.10.11.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Aug 2020 10:11:42 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 07DHBOeS031362
	for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 02:11:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 07DHBOeS031362
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id j188so3305406vsd.2
        for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 10:11:24 -0700 (PDT)
X-Received: by 2002:a67:7c11:: with SMTP id x17mr4663305vsc.155.1597338683304;
 Thu, 13 Aug 2020 10:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org>
 <20200812173958.2307251-3-masahiroy@kernel.org> <CAKwvOdkL=667+cw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg@mail.gmail.com>
In-Reply-To: <CAKwvOdkL=667+cw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 14 Aug 2020 02:10:46 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS4EjGchNzqhEcTPTU0mOUqAk8nF9QYW3qwfOp572uCHA@mail.gmail.com>
Message-ID: <CAK7LNAS4EjGchNzqhEcTPTU0mOUqAk8nF9QYW3qwfOp572uCHA@mail.gmail.com>
Subject: Re: [PATCH 2/3] gen_compile_commands: wire up build rule to Makefile
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Huckleberry <nhuck@google.com>,
        Tom Roeder <tmroeder@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Michal Marek <michal.lkml@markovi.net>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=j9c4vOj6;       spf=softfail
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

On Thu, Aug 13, 2020 at 7:30 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, Aug 12, 2020 at 10:40 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Currently, you need to explicitly run scripts/gen_compile_commands.py
> > to create compile_commands.json. It traverses the object tree
> > (you need to pass the -d option to deal with a separate output tree),
> > and parses all the .*.cmd file found.
> >
> > If you rebuild the kernel over again without 'make clean', stale
> > .*.cmd files from older builds will create invalid entries in
> > compile_commands.json.
>
> Definitely a problem; happy to see compile_commands.json added to
> `make clean` target, too.
>
> >
> > This commit wires up the compile_commands.json rule to the top
> > Makefile, and makes it parse .*.cmd files only from the current build
> > to avoid stale entries.
> >
> > It is possible to extract only relevant .*.cmd files by checking
> > $(KBUILD_VMLINUX_OBJS), $(KBUILD_VMLINUX_LIBS), and modules.order.
> > The objects or archives linked to vmlinux are listed in
> > $(KBUILD_VMLINUX_OBJS) or $(KBUILD_VMLINUX_LIBS). All the modules are
> > listed in modules.order.
> >
> > You can create compile_commands.json from Make:
> >
> >   $ make -j$(nproc) CC=clang compile_commands.json
> >
> > Of course, you can build vmlinux, modules, and compile_commands.json
> > all together in a single command:
> >
> >   $ make -j$(nproc) CC=clang all compile_commands.json
> >
> > It works also for M= builds. In this case, compile_commands.json
> > is created in the top directory of the external module.
> >
> > I hope this will be overall improvements, but it has a drawback;
> > the coverage of the compile_commands.json is reduced because only
> > the objects linked to vmlinux or modules are handled. For example,
> > the following C files are not included in compile_commands.json:
> >
> >  - Decompressor source files (arch/*/boot/compressed/)
> >  - VDSO source files
> >  - C files used to generate intermediates (e.g. kernel/bounds.c)
> >  - standalone host programs
>
> Oof, for an x86_64 defconfig, the difference in line count of
> compile_commands.json
> before: 12826


I think some lines of 'before'
are not so important.

Files suffixed with *.mod.c
are generated sources for modules.
There is no point to check them by Clang tools.


Some entries appear twice:

For example, 'before' contains two entries of
"file": "lib/cmdline.c"
Which entry is used by 'clang-tidy lib/cmdline.c',
the first one, the second one, or both?



Having said that, there is still a loss of more than 3%, yes.


> after: 12351
>
> That's a loss of 475 (3.7% of 12826) coverage. Is there something more
> we can do to preserve this functionality, while avoiding stale .cmd
> files?


I have no idea how to do this correctly.

> Is it that those aren't specified by `$(KBUILD_VMLINUX_OBJS)
> $(KBUILD_VMLINUX_LIBS)` ?

These variables contain only objects and archives
linked to vmlinux.




For example, VDSO is built as a prerequisite of
another object that wraps it.

See line 61 of arch/arm64/kernel/vdso/Makefile:
$(obj)/vdso.o : $(obj)/vdso.so


I do not know how to get the full list of active objects,
some of which are built on demand
in the dependency chain.


Idea 1)
Merge this series, and accept the loss.


Idea 2)
Add Makefile targets,
and also keep the previous work-flow.

When you run it from Make,
only objects for vmlinux and modules are handled.

When you need the full coverage, including non-kernel-space
sources, run scripts manually:

$ scripts/clang-tools/gen_compile_commands.py
$ scripts/clang-tools/run-clang-tools.py clang-tidy


Idea 3)
Give up supporting it from Makefile.
Instead, improve gen_scripts_commands.py
as a standalone program.


Maybe we can check whether the compiler is Clang or not.
We can run '<compiler> --version' and drop the
entry if it is GCC.

Usually, the compiler is the first word of
the "command" field in compile_commands.json,
but there are exceptions because
people may do CC="ccache clang".


If there are still stale entries causing troubles,
you need to run 'make clean', and rebuild the tree.


We were trying to have separate scripts,
gen_compile_commands.py and run-clang-tools.py,
and to add Makefile targets to run them in a row.

I think unifying the two scripts
might be handier.


Add two options, -t, -a,
to scripts/gen_compile_commands.py

If they are given,
scripts/gen_compilile_commands.py
generates compile_commands.json,
and immediately runs clang-tidy against it.


-t, --tidy
   Run 'clang-tidy -checks=-*,linuxkernel-*' after generating
compilation database
-a, --analyzer
   Run 'clang-tidy -checks=-*,clang-analyzer-*' after generating
compilation database


Both -a and -t are given,
it runs
'clang-tidy -checks=-*,linuxkernel-*,clang-analyzer-*'

This works more efficiently
if you want to check everything.


'make clang-tidy clang-analyzer'
will invoke clang-tidy twice for each file,
which is not very efficient.




> >  clean-dirs := $(KBUILD_EXTMOD)
> > -clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps
> > +clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
> > +       $(KBUILD_EXTMOD)/compile_commands.json
>
> So the `clean` target doesn't make use of `CLEAN_FILES`? It looks like
> there's some duplication there?  Oh, this is dependent on
> !KBUILD_EXTMOD, and is a new `clean` target. Do I understand that
> correctly?

Correct.

We can move CLEAN_FILES to a common part
so external module builds can use it.

> >      """
> >      usage = 'Creates a compile_commands.json database from kernel .cmd files'
> >      parser = argparse.ArgumentParser(description=usage)
> >
> > -    directory_help = ('Path to the kernel source directory to search '
> > -                      '(defaults to the working directory)')
> > -    parser.add_argument('-d', '--directory', type=str, help=directory_help)
> > +    ar_help = 'command used for parsing .a archives'
> > +    parser.add_argument('-a', '--ar', type=str, default='ar', help=ar_help)
>
> Might be nice to warn if run with no arguments? In case someone does:
> $ ./scripts/clang-tools/gen_compile_commands.py

Right.

nargs='+' seems to work.



> > +    # Collect objects compiled for vmlinux or modules
> > +    objects = []
> > +    for file in files:
> > +        if file.endswith('.o'):
> > +            # Some objects (head-y) are linked to vmlinux directly
> > +            objects.append(file)
> > +        elif file.endswith('.a'):
> > +            # Most of built-in objects are linked via built-in.a or lib.a.
> > +            # Use 'ar -t' to get the list of the contained objects.
> > +            objects += subprocess.check_output([ar, '-t', file]).decode().split()
> > +        elif file.endswith('modules.order'):
> > +           # modules.order lists all the modules.
> > +            with open(file) as f:
>
> `file` is another builtin (or at least was in Python2), perhaps `filename`?
>
> > +                for line in f:
> > +                    ko = line.rstrip()
> > +                    base, ext = os.path.splitext(ko)
> > +                    if ext != '.ko':
> > +                        sys.exit('{}: mobule path must end with .ko'.format(ko))
> > +                    mod = base + '.mod'
> > +                   # The first line of *.mod lists the objects that
> > +                   # compose the module.
>
> This comment and the one above it uses tabs for indentation vs spaces
> for the rest of the file.  I use
> https://github.com/nickdesaulniers/dotfiles/blob/a90865a9ea48bbefa0082f7508607fdeb361e801/.vimrc#L37-L43
> to help me catch these.

Awesome. Copied to mine.



> > +                    with open(mod) as mod_f:
> > +                        objects += mod_f.readline().split()
> > +        else:
> > +            sys.exit('{}: unknown file type'.format(file))
>
> Consider breaking up this one long function into multiple, perhaps the
> above could just return `objects`?



I thought that returning a big list causes needless memory-copy.
If we do not need to be worried too much,
I can make it a helper function.


>
> >
> >      compile_commands = []
> > -    for dirpath, _, filenames in os.walk(directory):
> > -        for filename in filenames:
> > -            if not filename_matcher.match(filename):
> > -                continue
> > -            filepath = os.path.join(dirpath, filename)
> > -
> > -            with open(filepath, 'rt') as f:
> > -                line = f.readline()
> > -                result = line_matcher.match(line)
> > -                if result:
> > -                    try:
> > -                        entry = process_line(directory, dirpath,
> > -                                             result.group(1), result.group(2))
> > -                        compile_commands.append(entry)
> > -                    except ValueError as err:
> > -                        logging.info('Could not add line from %s: %s',
> > -                                     filepath, err)
> > +    cwd = os.getcwd()
> > +    for object in objects:
> > +        dir, notdir = os.path.split(object)
>
> `object` is a builtin Class in python.  I'm not sure if it's quite
> considered a keyword, but maybe a different identifier would be nicer,
> like `object_file` or something?


Not a keyword, but 'object' is a class, yes.
Not sure about 'file'.


$ python
Python 3.8.2 (default, Jul 16 2020, 14:00:26)
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import keyword
>>> keyword.iskeyword("import")
True
>>> keyword.iskeyword("if")
True
>>> keyword.iskeyword("file")
False
>>> keyword.iskeyword("object")
False
>>> object
<class 'object'>
>>> file
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'file' is not defined
>>>


If this is a problem, I can rename it.




> > +        cmd_file = os.path.join(dir, '.' + notdir + '.cmd')
> > +        with open(cmd_file, 'rt') as f:
> > +            line = f.readline()
> > +            result = line_matcher.match(line)
>
> ^ combine statements.

OK.


> > +            if result:
> > +                entry = process_line(cwd, result.group(1), result.group(2))
> > +                compile_commands.append(entry)
> >
> >      with open(output, 'wt') as f:
> >          json.dump(compile_commands, f, indent=2, sort_keys=True)
> >
> > -    count = len(compile_commands)
> > -    if count < _LOW_COUNT_THRESHOLD:
> > -        logging.warning(
> > -            'Found %s entries. Have you compiled the kernel?', count)
> > -
> > -
> >  if __name__ == '__main__':
> >      main()
> > --
> > 2.25.1
> >
>
> Thank you for your assistance and help enabling these tools.
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkL%3D667%2Bcw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg%40mail.gmail.com.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS4EjGchNzqhEcTPTU0mOUqAk8nF9QYW3qwfOp572uCHA%40mail.gmail.com.
