Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUWV6L4QKGQEJV3HHCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id CB33824941E
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 06:30:11 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id x18sf454163pjq.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 21:30:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597811410; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5Ws0kSfbvOgLRx9moIADVUrd9VAV5OrqLgcA3laxC2aui7zKJEDzzhsTdiKxkjOHJ
         VBQlOqKewd3YoNAIQL4mPB7waqKR+vIEnNWdJs0xZyHE/X8cNgZ4Mr1n0vbpGc8xTa5m
         vMNUjeGazNuTyzBdsXWWRs6tmuGBC/NYM+/WJl+yPJzkb8oRPL+FbFdxPBqp7Ut58uoD
         Rn/Ht7wS6+UgJXFaaatN3CHCnh2YS+6ZR4H7QpM9DOMdo452iCPmz0a4/oNAaCiN1tGT
         3gf1h63Ypxkt1l59uPcjLwdKkVzy4J2q6ayQqKUXsl7gBTI6G3dEQpi3p99hY97D2QOT
         9PoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=oYN4QLr26+3ivc997u07UvnYWf91zsicrWvDe1K2lLA=;
        b=mcN8Q+tQcvdEWpc/gU7wvK0RD9ueYkIiNi/IG092ZoCrjo2JeRQh0w3QbosGIx8YS0
         MiyKRc5LwAHO7oVECMqr9EijFvGtcidhBWWxrEeG1YYX0+FPoc9mZiTBLWXS4cJamhNQ
         lJH6Zc9zD8xEocoUR2TTMWKCu7AOgCj/vNR52N8QFySVW6R7xTMIvwIxP0qzDMCe+/Ja
         bjYzPrG0au7Yz8GWHoc1OTx4CKhz6qBXXPFxx6iDlligu1NLESYSwkeP6eLB37aCGHdF
         MzgRq4bCYF8dYkPYmwxofQyrux267/c7dDknqD8ceEv3pCgIaaCe9M/8AFgXKxpxDrYk
         ykhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=DbydqHW4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oYN4QLr26+3ivc997u07UvnYWf91zsicrWvDe1K2lLA=;
        b=e64n2PBu3Hkpbea6BIG7dgiKIDv2rrst8QYFEsE6/tViu4j08+cf754p1FL1lOD20I
         ISDHnPx73ViKz9y59gqN3qjOzx/lFLdGi5tVFZgMMAlJcoydzbX9ibnMdOpJC/JDCm7J
         dfOzMdQvSZvUNA97HZ1VkbrXcKS1kJ4kMBIkTLzz/5HPONQja4lN2r5vl9XPB7uVM1p9
         k9TI0UNzc+azU8cgwUnSuouHLOZpMOW+VhCo7scxihAgL8r3N6wSqmF1Mg0fuQuKmZiT
         xLmIlSXM2aJdpZdh7nScmG4rDE6w/mIsO5pi+ffG/19WwH4K6hlBAEztJqDcojA7lmEf
         hjhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oYN4QLr26+3ivc997u07UvnYWf91zsicrWvDe1K2lLA=;
        b=Vs/j+Ynhrlvt2dWLoctkXZSrnNmsOUwqtK/8veD8d/Cn+w4pw5dksVnu/IkjRUCk4G
         I2mmEumerW21wX9fvE41hc3ERiilpTxrbNRgHpcUvmVSv/UbiSAawCyjI4pS745figDY
         E8yWA2vcCghxg2BAeRJf64giWF5KHm8xMJtidMkzczhrWEUqLPQpJYlNHlybZAozlyae
         ZGjj/q0XaqsR8C8E3c48AOe0suygJvyDlDoaKpUCToUUCpxEdmVY2ioDgXerGUXwiyOT
         B7pg6a1tHFHFqYCzWVRe+If6fkXxEPXVXnvUJcTq4nHN4VY7Xsg4zYXrT0jaWI9P3kYN
         7V2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ktVAa7HsLcopg9GpEAXNvrNuZd2h9yIZ9XUusllJRu1pSg1ID
	orYuVWiYgYjXCojLUFFaAQw=
X-Google-Smtp-Source: ABdhPJxyEE/lhywdmuHu98688+WWBYfMyQVQeXhUOu4jXAkd+r81zB/UwRNOgqN96w3Le1CTu5cFvA==
X-Received: by 2002:a17:902:9a90:: with SMTP id w16mr17087559plp.181.1597811410286;
        Tue, 18 Aug 2020 21:30:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls6281413pgp.10.gmail; Tue, 18
 Aug 2020 21:30:09 -0700 (PDT)
X-Received: by 2002:a62:7dd5:: with SMTP id y204mr18161851pfc.318.1597811409771;
        Tue, 18 Aug 2020 21:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597811409; cv=none;
        d=google.com; s=arc-20160816;
        b=Hg19Ro1TBbvXelvTZedggpzxMhlLMwKaa2EsQ0Tx7rkQ/HxDdL0zHQXdtxqUW/T8bQ
         1pYaMeduk6QZKeyLJT+XOIaUS7vBpbKGIFehk1MmEDDH2kZXLMulEdmIl2C0I9NMmHJe
         3zHt2ZhRZyIQ44DfZiSS9B13l5qiA/zyYqkjTxbv16M8U42ir8Zs4WKa3XjmGhZjir06
         UOjZho1fHM0TTJRPhb++s6nX6DljXsz2ihkT5Zz/o9ePxs+/lWzncKhrfM00ihgbwtJE
         O6SChmeDwkXrtcL38XB2DN62sC4A3e9YMLA2ZJ6MnLr5/aTcf+8pqdNR06pACT5VRy5O
         IBNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=tnH/SuU4NrEiRkFzg/a5riUNX3UasG3bSl0KD9O1hi4=;
        b=X4MJ94/gXjUif88Ex0cQUTCeJ+UBK2kpgisT6rcCll0GKV246sTmghZ9c9xxHpviDQ
         C+5czPtEpPGp7230ll8UFNbgJU2xp5znamQY0C+tU47u45dYHkthimsvnA+NgD2bhBox
         7Zo/X8omEDiD7j8SRCeeHaNrHQlotkHAUYEN216hilc1N/mpS9ktf+3/Jojt0Q0FIaxe
         VrJnrMHwPFPC5eCijW1G3lTkI/awfzrEjQueDlX+cmj+3OLMmMJe4eft1J2Qy/O6MvZb
         qkeLvDyLIrFXt1UlHjqTSr5SLqX5qap6EuP5oPzVrahaTXtnrY9nof5VRZ5yzbKZOnpV
         Vkng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=DbydqHW4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id bk18si100998pjb.3.2020.08.18.21.30.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 21:30:09 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 07J4TrVP025248
	for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 13:29:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 07J4TrVP025248
X-Nifty-SrcIP: [209.85.222.44]
Received: by mail-ua1-f44.google.com with SMTP id k18so5387957uao.11
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 21:29:53 -0700 (PDT)
X-Received: by 2002:ab0:623:: with SMTP id f32mr13420750uaf.121.1597811392439;
 Tue, 18 Aug 2020 21:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org>
 <20200812173958.2307251-3-masahiroy@kernel.org> <CAKwvOdkL=667+cw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg@mail.gmail.com>
 <CAK7LNAS4EjGchNzqhEcTPTU0mOUqAk8nF9QYW3qwfOp572uCHA@mail.gmail.com>
In-Reply-To: <CAK7LNAS4EjGchNzqhEcTPTU0mOUqAk8nF9QYW3qwfOp572uCHA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 19 Aug 2020 13:29:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNARPAB+UBcYJTauPRksOb1zVbicUt7z39szaO3o70vD1RQ@mail.gmail.com>
Message-ID: <CAK7LNARPAB+UBcYJTauPRksOb1zVbicUt7z39szaO3o70vD1RQ@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=DbydqHW4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Hi Nick,

On Fri, Aug 14, 2020 at 2:10 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Thu, Aug 13, 2020 at 7:30 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Wed, Aug 12, 2020 at 10:40 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Currently, you need to explicitly run scripts/gen_compile_commands.py
> > > to create compile_commands.json. It traverses the object tree
> > > (you need to pass the -d option to deal with a separate output tree),
> > > and parses all the .*.cmd file found.
> > >
> > > If you rebuild the kernel over again without 'make clean', stale
> > > .*.cmd files from older builds will create invalid entries in
> > > compile_commands.json.
> >
> > Definitely a problem; happy to see compile_commands.json added to
> > `make clean` target, too.
> >
> > >
> > > This commit wires up the compile_commands.json rule to the top
> > > Makefile, and makes it parse .*.cmd files only from the current build
> > > to avoid stale entries.
> > >
> > > It is possible to extract only relevant .*.cmd files by checking
> > > $(KBUILD_VMLINUX_OBJS), $(KBUILD_VMLINUX_LIBS), and modules.order.
> > > The objects or archives linked to vmlinux are listed in
> > > $(KBUILD_VMLINUX_OBJS) or $(KBUILD_VMLINUX_LIBS). All the modules are
> > > listed in modules.order.
> > >
> > > You can create compile_commands.json from Make:
> > >
> > >   $ make -j$(nproc) CC=clang compile_commands.json
> > >
> > > Of course, you can build vmlinux, modules, and compile_commands.json
> > > all together in a single command:
> > >
> > >   $ make -j$(nproc) CC=clang all compile_commands.json
> > >
> > > It works also for M= builds. In this case, compile_commands.json
> > > is created in the top directory of the external module.
> > >
> > > I hope this will be overall improvements, but it has a drawback;
> > > the coverage of the compile_commands.json is reduced because only
> > > the objects linked to vmlinux or modules are handled. For example,
> > > the following C files are not included in compile_commands.json:
> > >
> > >  - Decompressor source files (arch/*/boot/compressed/)
> > >  - VDSO source files
> > >  - C files used to generate intermediates (e.g. kernel/bounds.c)
> > >  - standalone host programs
> >
> > Oof, for an x86_64 defconfig, the difference in line count of
> > compile_commands.json
> > before: 12826
>
>
> I think some lines of 'before'
> are not so important.
>
> Files suffixed with *.mod.c
> are generated sources for modules.
> There is no point to check them by Clang tools.
>
>
> Some entries appear twice:
>
> For example, 'before' contains two entries of
> "file": "lib/cmdline.c"
> Which entry is used by 'clang-tidy lib/cmdline.c',
> the first one, the second one, or both?
>
>
>
> Having said that, there is still a loss of more than 3%, yes.
>
>
> > after: 12351
> >
> > That's a loss of 475 (3.7% of 12826) coverage. Is there something more
> > we can do to preserve this functionality, while avoiding stale .cmd
> > files?
>
>
> I have no idea how to do this correctly.
>
> > Is it that those aren't specified by `$(KBUILD_VMLINUX_OBJS)
> > $(KBUILD_VMLINUX_LIBS)` ?
>
> These variables contain only objects and archives
> linked to vmlinux.
>
>
>
>
> For example, VDSO is built as a prerequisite of
> another object that wraps it.
>
> See line 61 of arch/arm64/kernel/vdso/Makefile:
> $(obj)/vdso.o : $(obj)/vdso.so
>
>
> I do not know how to get the full list of active objects,
> some of which are built on demand
> in the dependency chain.
>
>
> Idea 1)
> Merge this series, and accept the loss.
>
>
> Idea 2)
> Add Makefile targets,
> and also keep the previous work-flow.
>
> When you run it from Make,
> only objects for vmlinux and modules are handled.
>
> When you need the full coverage, including non-kernel-space
> sources, run scripts manually:
>
> $ scripts/clang-tools/gen_compile_commands.py
> $ scripts/clang-tools/run-clang-tools.py clang-tidy



Do you have any idea to cope with
the 3% loss problem?

If it is a problem, maybe I should try Idea 2).


Thanks.








>
> Idea 3)
> Give up supporting it from Makefile.
> Instead, improve gen_scripts_commands.py
> as a standalone program.
>
>
> Maybe we can check whether the compiler is Clang or not.
> We can run '<compiler> --version' and drop the
> entry if it is GCC.
>
> Usually, the compiler is the first word of
> the "command" field in compile_commands.json,
> but there are exceptions because
> people may do CC="ccache clang".
>
>
> If there are still stale entries causing troubles,
> you need to run 'make clean', and rebuild the tree.
>
>
> We were trying to have separate scripts,
> gen_compile_commands.py and run-clang-tools.py,
> and to add Makefile targets to run them in a row.
>
> I think unifying the two scripts
> might be handier.
>
>
> Add two options, -t, -a,
> to scripts/gen_compile_commands.py
>
> If they are given,
> scripts/gen_compilile_commands.py
> generates compile_commands.json,
> and immediately runs clang-tidy against it.
>
>
> -t, --tidy
>    Run 'clang-tidy -checks=-*,linuxkernel-*' after generating
> compilation database
> -a, --analyzer
>    Run 'clang-tidy -checks=-*,clang-analyzer-*' after generating
> compilation database
>
>
> Both -a and -t are given,
> it runs
> 'clang-tidy -checks=-*,linuxkernel-*,clang-analyzer-*'
>
> This works more efficiently
> if you want to check everything.
>
>
> 'make clang-tidy clang-analyzer'
> will invoke clang-tidy twice for each file,
> which is not very efficient.
>
>
>
>
> > >  clean-dirs := $(KBUILD_EXTMOD)
> > > -clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps
> > > +clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
> > > +       $(KBUILD_EXTMOD)/compile_commands.json
> >
> > So the `clean` target doesn't make use of `CLEAN_FILES`? It looks like
> > there's some duplication there?  Oh, this is dependent on
> > !KBUILD_EXTMOD, and is a new `clean` target. Do I understand that
> > correctly?
>
> Correct.
>
> We can move CLEAN_FILES to a common part
> so external module builds can use it.
>
> > >      """
> > >      usage = 'Creates a compile_commands.json database from kernel .cmd files'
> > >      parser = argparse.ArgumentParser(description=usage)
> > >
> > > -    directory_help = ('Path to the kernel source directory to search '
> > > -                      '(defaults to the working directory)')
> > > -    parser.add_argument('-d', '--directory', type=str, help=directory_help)
> > > +    ar_help = 'command used for parsing .a archives'
> > > +    parser.add_argument('-a', '--ar', type=str, default='ar', help=ar_help)
> >
> > Might be nice to warn if run with no arguments? In case someone does:
> > $ ./scripts/clang-tools/gen_compile_commands.py
>
> Right.
>
> nargs='+' seems to work.
>
>
>
> > > +    # Collect objects compiled for vmlinux or modules
> > > +    objects = []
> > > +    for file in files:
> > > +        if file.endswith('.o'):
> > > +            # Some objects (head-y) are linked to vmlinux directly
> > > +            objects.append(file)
> > > +        elif file.endswith('.a'):
> > > +            # Most of built-in objects are linked via built-in.a or lib.a.
> > > +            # Use 'ar -t' to get the list of the contained objects.
> > > +            objects += subprocess.check_output([ar, '-t', file]).decode().split()
> > > +        elif file.endswith('modules.order'):
> > > +           # modules.order lists all the modules.
> > > +            with open(file) as f:
> >
> > `file` is another builtin (or at least was in Python2), perhaps `filename`?
> >
> > > +                for line in f:
> > > +                    ko = line.rstrip()
> > > +                    base, ext = os.path.splitext(ko)
> > > +                    if ext != '.ko':
> > > +                        sys.exit('{}: mobule path must end with .ko'.format(ko))
> > > +                    mod = base + '.mod'
> > > +                   # The first line of *.mod lists the objects that
> > > +                   # compose the module.
> >
> > This comment and the one above it uses tabs for indentation vs spaces
> > for the rest of the file.  I use
> > https://github.com/nickdesaulniers/dotfiles/blob/a90865a9ea48bbefa0082f7508607fdeb361e801/.vimrc#L37-L43
> > to help me catch these.
>
> Awesome. Copied to mine.
>
>
>
> > > +                    with open(mod) as mod_f:
> > > +                        objects += mod_f.readline().split()
> > > +        else:
> > > +            sys.exit('{}: unknown file type'.format(file))
> >
> > Consider breaking up this one long function into multiple, perhaps the
> > above could just return `objects`?
>
>
>
> I thought that returning a big list causes needless memory-copy.
> If we do not need to be worried too much,
> I can make it a helper function.
>
>
> >
> > >
> > >      compile_commands = []
> > > -    for dirpath, _, filenames in os.walk(directory):
> > > -        for filename in filenames:
> > > -            if not filename_matcher.match(filename):
> > > -                continue
> > > -            filepath = os.path.join(dirpath, filename)
> > > -
> > > -            with open(filepath, 'rt') as f:
> > > -                line = f.readline()
> > > -                result = line_matcher.match(line)
> > > -                if result:
> > > -                    try:
> > > -                        entry = process_line(directory, dirpath,
> > > -                                             result.group(1), result.group(2))
> > > -                        compile_commands.append(entry)
> > > -                    except ValueError as err:
> > > -                        logging.info('Could not add line from %s: %s',
> > > -                                     filepath, err)
> > > +    cwd = os.getcwd()
> > > +    for object in objects:
> > > +        dir, notdir = os.path.split(object)
> >
> > `object` is a builtin Class in python.  I'm not sure if it's quite
> > considered a keyword, but maybe a different identifier would be nicer,
> > like `object_file` or something?
>
>
> Not a keyword, but 'object' is a class, yes.
> Not sure about 'file'.
>
>
> $ python
> Python 3.8.2 (default, Jul 16 2020, 14:00:26)
> [GCC 9.3.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>> import keyword
> >>> keyword.iskeyword("import")
> True
> >>> keyword.iskeyword("if")
> True
> >>> keyword.iskeyword("file")
> False
> >>> keyword.iskeyword("object")
> False
> >>> object
> <class 'object'>
> >>> file
> Traceback (most recent call last):
>   File "<stdin>", line 1, in <module>
> NameError: name 'file' is not defined
> >>>
>
>
> If this is a problem, I can rename it.
>
>
>
>
> > > +        cmd_file = os.path.join(dir, '.' + notdir + '.cmd')
> > > +        with open(cmd_file, 'rt') as f:
> > > +            line = f.readline()
> > > +            result = line_matcher.match(line)
> >
> > ^ combine statements.
>
> OK.
>
>
> > > +            if result:
> > > +                entry = process_line(cwd, result.group(1), result.group(2))
> > > +                compile_commands.append(entry)
> > >
> > >      with open(output, 'wt') as f:
> > >          json.dump(compile_commands, f, indent=2, sort_keys=True)
> > >
> > > -    count = len(compile_commands)
> > > -    if count < _LOW_COUNT_THRESHOLD:
> > > -        logging.warning(
> > > -            'Found %s entries. Have you compiled the kernel?', count)
> > > -
> > > -
> > >  if __name__ == '__main__':
> > >      main()
> > > --
> > > 2.25.1
> > >
> >
> > Thank you for your assistance and help enabling these tools.
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkL%3D667%2Bcw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg%40mail.gmail.com.
>
>
>
> --
> Best Regards
> Masahiro Yamada



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARPAB%2BUBcYJTauPRksOb1zVbicUt7z39szaO3o70vD1RQ%40mail.gmail.com.
