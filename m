Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6NR2L4QKGQEPEO3XZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BFB243220
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 03:35:54 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id f59sf3376250qtb.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 18:35:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597282553; cv=pass;
        d=google.com; s=arc-20160816;
        b=chcpI3OTfeCgAjVCZvDSivQV8tCfxkGOGuhLCPbcjCB+KufeYHGwgryjkgb315vMa+
         scQ6XBUFYk7OC1+XUPAy7IOYaJyNaXZUWtRTSSg8qGet9Xbhtd5LoVzsydi5oYfCHbZD
         DZwZpPMK4/I5liT6g/XMCmc8yUJyIegT8Q+m+vkn7dTAyMQOVkUPwJjosw31FrpC9917
         lZT+TTLuQrfqqpNxBQcGNvsxzJPaBS0zFhLC6x4GUq7RU6dViBPOZuXxN2ncxC/KseQ9
         2HEWDBkf/sgED2gljBKXekveCIJdqDKzirEJEJVraR/u5alnrCA4pGiTOWeFz9WQ1c80
         cR4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=jE1UKoRp81jxjihc4E/OLDGxSFYGHIgRvOaNMdBKvtQ=;
        b=NGtEymJQgk6trZD17NS1vxwVhaTNU74w6BtK6ua2zPJnIT9XIab+eTpabgavsXnJ3j
         HZTWEpd3323vXOjxjoquBZR8O3CYbt0BTsHi0mr6SNiD/UrKnFpOItdS8Zfjfv2Mm8Jz
         ikSlT39OTzUAoPj7vb5nM1I1hleB2KKD/bM++lwuCU+TBMNHXcdnIazCpqg8+fup/XIU
         jJ1Xr81CFI63C34n8xNhYyf/if29zNHOgBSGAsoVQHXs0mralpoJDGwS34edL2IrxlYw
         xEOAWeEgkoO48Tr4q28FwDEBNjT8x7hYwL3Cny+cwNahkb1eAXuC/f1+oqrQho3G+k/U
         q0mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GSyFkaw3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jE1UKoRp81jxjihc4E/OLDGxSFYGHIgRvOaNMdBKvtQ=;
        b=YPkZW3pqpmbxcZgUIffVtfr4Pf0qdme9p94Kuw7TxO0f2u/M/a9K7HDtJNJdXmQAAO
         cFlk/TOuGiJ04VTWsD1OJiUhSRB+OOKJFW88AQf3FRcq4jxIpag8QxakMhd+lgquaFMN
         3apDTEVupeJa5MDhEBbaPVxvSkQCaoA/lL43+Wgy9Fq1ZwseBTyy2HPxuWeWaMwCn29u
         hd7K6KvpglxKrSkBmcbJo6qlSQRXGFt7gRQ7UGdXwsE98YSBEosh3DOPXvlsbGOKm/pc
         R9pOG6aWoJBR+1yf+n/QG2Ds9z/imvDxQ/EB2Q/UOV/66m/kXrhLJz0tBwQxn1G04nuP
         KdSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jE1UKoRp81jxjihc4E/OLDGxSFYGHIgRvOaNMdBKvtQ=;
        b=VnlhWuA0JqXUX21klvvwPODoTfos1JFStK8HWQ7d6F86MxxP/OvSOgzaq1o3RD4R60
         VAFTK03eE3gJ0Xa9H3cOHPii6zA0P8lSsSVBTOIFvcRPMpTRhBRNTIlYO9LYlmAAGJcr
         vyFSeqS3gBGtArtooWn4HUvczXTdZPrefpEpHZeTunNuQbx3VzrQFbUmD1jRSvcZnYaI
         SbrSX9//MF+Omp0T7QFNsh+Neg36zcz3xl2pI/TVCKvJyYF9IV2u6OFPC3f/7ERZeBue
         sfMxmv0QnKgnLB4b3OQHozC4mD5iZ6p95K/FxAZbjyeDIq9gP63E/Xe+gl34Wxhr4ZLP
         RaPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hMcRc6mcigMF2WAxwOurPZo0hJPiDAY81uBcE2aewrlu24o8+
	0L16Ls5lk5cp84/+OW/mGog=
X-Google-Smtp-Source: ABdhPJysenwdA4H1kDQryBO0RqNUmfuDi35pT7xyIRdm5sg/qQz2Ee6ct3V4Yy0th6rykbxm5NdACQ==
X-Received: by 2002:a05:620a:388:: with SMTP id q8mr2479151qkm.98.1597282553130;
        Wed, 12 Aug 2020 18:35:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:576f:: with SMTP id r15ls1019913qvx.4.gmail; Wed, 12 Aug
 2020 18:35:52 -0700 (PDT)
X-Received: by 2002:ad4:44e5:: with SMTP id p5mr2351063qvt.197.1597282552839;
        Wed, 12 Aug 2020 18:35:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597282552; cv=none;
        d=google.com; s=arc-20160816;
        b=iGuQ27tj7KvzUWKwVf49j4Idy1NnZiG0HMWaPnSSjnpkhw5VYmZ4FQ1p0c/ubbC1Jf
         yJ48Atk0aFOlOKRLb1zQdscWxQjEJGip1GLS9+T4QX6Pm57DYfRmn7fILB/IWscNR92s
         kSJXn9qZ8Y2WW+jmgPnA0XTn/vwoJvU5zhhcXApjjEtvZRogyflhIxH78t7NpjfkIO2q
         Ogf/dLYCBVwLHeH7i3MVETWOrJtkXYAkx5PjbzXTq643Vzx781E5WVoIfCmtS55JtDpk
         b7rCpn8jd1gZlIqZ3IEYoXHlo2EdZcaUrWBfhSvBksZhig6OebnklI5XPPfTtMjFnCs7
         PqUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=lrLt6MViZfHVoAxmdOr+AtPRSZUb1nHMJgHZW/9Z6ZA=;
        b=MxgpQAj6ZKB6cJ9Bccx1DdElhiGf/WWxTkBjC5nMu8vEZDblDoLAkPTfgIOBYKWpGj
         Iq3pAInpkVNvJhs1gCzF+60EThTMUu0TxOwDL0C+GN0BIbqyWOYRUZmkfgbokYb1dis5
         EqmaTa6/3UV81t1eBqRkVk6+AbvvqL9whEvn72ef0qJWF6SiG+PyAJlCpu0YmFWw2sg0
         /iEopBb09QKTF16ed3Owdhu/eP4qdQFQz6R8Ara3SP4YhY0eFbga63QbhsDiw0LS68pz
         wpO1Dj07Fkd1VKEJ8AxosCssA2BUZkBt/1mIZG1rU+wOEgLtXmjWPvjJSDxWRw+4RTKF
         FhSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GSyFkaw3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id o24si268478qki.7.2020.08.12.18.35.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 18:35:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 07D1ZSpX007061
	for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 10:35:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 07D1ZSpX007061
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id r7so2112049vsq.5
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 18:35:28 -0700 (PDT)
X-Received: by 2002:a67:bb06:: with SMTP id m6mr1647566vsn.54.1597282527307;
 Wed, 12 Aug 2020 18:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org>
 <CAJkfWY6vhW9kNK-t+2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw@mail.gmail.com> <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com>
In-Reply-To: <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 13 Aug 2020 10:34:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNASb9HwvfmywT+3UjMvMUV3QCCaLVr_mSREiED=KNoy4eA@mail.gmail.com>
Message-ID: <CAK7LNASb9HwvfmywT+3UjMvMUV3QCCaLVr_mSREiED=KNoy4eA@mail.gmail.com>
Subject: Re: [PATCH 0/3] kbuild: clang-tidy
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>,
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
 header.i=@nifty.com header.s=dec2015msa header.b=GSyFkaw3;       spf=softfail
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

On Thu, Aug 13, 2020 at 7:53 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Aug 12, 2020 at 12:56 PM Nathan Huckleberry <nhuck@google.com> wrote:
> >
> > On Wed, Aug 12, 2020 at 12:40 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > >
> > > I improved gen_compile_commands.py in the first two patches,
> > > then rebased Nathan's v7 [1] on top of them.
> > > To save time, I modified the Makefile part.
> > > No change for run-clang-tools.py
> > >
> > > I am not sure if the new directory, scripts/clang-tools/,
> > > is worth creating only for 2 files, but I do not have
> > > a strong opinion about it.
> > >
> > > "make clang-tidy" should work in-tree build,
> > > out-of-tree build (O=), and external module build (M=).
> > > Tests and reviews are appreciated.
> > >
> > > "make clang-tidy" worked for me.
> > >
> > > masahiro@oscar:~/workspace/linux-kbuild$ make -j24 CC=clang clang-tidy
> > >   DESCEND  objtool
> > >   CALL    scripts/atomic/check-atomics.sh
> > >   CALL    scripts/checksyscalls.sh
> > >   CHK     include/generated/compile.h
> > >   GEN     compile_commands.json
> > >   CHECK   compile_commands.json
> > >
> > > But "make clang-analyzer" just sprinkled the following error:
> > >
> > >   Error: no checks enabled.
> > >   USAGE: clang-tidy [options] <source0> [... <sourceN>]
>
> I wasn't able to reproduce Masahiro's reported failure, but seeing as
> he has `GEN` for compile_commands.json and I have `CHK`, I wonder if
> that's from a run when the series was still under development?
>
> I can reproduce if I run:
> $ clang-tidy '-checks='
> so maybe was string quoting problem?
>
> > >
> > > I built clang-tidy from the latest source.
> > > I had no idea how to make it work...
> >
> > How are you building clang-tidy? The clang static-analyzer may not
> > have been built.
> > I believe the static analyzer is built as a part of clang, not as a
> > part of clang-tools-extra.
> >
> > I use this command to build.
> > cmake -DCMAKE_BUILD_TYPE="release"
> > -DLLVM_TARGETS_TO_BUILD="X86;AArch64;ARM;RISCV"
> > -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lld;llvm-as"
> > -DLLVM_ENABLE_LLD=1 -G "Ninja" ../llvm
> >
> > Adding clang to the list of -DLLVM_ENABLE_PROJECTS will build the
> > static analyzer.
> > -DCLANG_ENABLE_STATIC_ANALYZER=1 might also work, but I haven't tested it.
> >
> > I tested the patchset and both clang-tidy and clang-analyzer work for me.
>
> If you rename clang-tidy in your build dir, and ensure you don't have
> a `clang-tidy` in your $PATH (`which clang-tidy`), maybe there's more
> we can do to politely inform the user they're missing a dependency to
> execute the make target?  Not sure if we could could test that
> clang-tidy supports the clang-analyzer-* checks.  Isn't there an
> invocation that prints the supported checks? `clang-tidy '-checks=*'
> --list-checks` is in my shell history.  Maybe grepping that and
> informing the user how to fix the problem might solve a "papercut?"
>
> If I remove clang-tidy with this series applied, I get (the failure is
> obvious to me, but...):
> ```
> $ make LLVM=1 -j71 clang-tidy
> ...
> multiprocessing.pool.RemoteTraceback:
> """
> Traceback (most recent call last):
>   File "/usr/lib/python3.8/multiprocessing/pool.py", line 125, in worker
>     result = (True, func(*args, **kwds))
>   File "/usr/lib/python3.8/multiprocessing/pool.py", line 48, in mapstar
>     return list(map(*args))
>   File "./scripts/clang-tools/run-clang-tools.py", line 54, in run_analysis
>     p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
>   File "/usr/lib/python3.8/subprocess.py", line 489, in run
>     with Popen(*popenargs, **kwargs) as process:
>   File "/usr/lib/python3.8/subprocess.py", line 854, in __init__
>     self._execute_child(args, executable, preexec_fn, close_fds,
>   File "/usr/lib/python3.8/subprocess.py", line 1702, in _execute_child
>     raise child_exception_type(errno_num, err_msg, err_filename)
> FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
> """
>
> The above exception was the direct cause of the following exception:
>
> Traceback (most recent call last):
>   File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
>     main()
>   File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
>     pool.map(run_analysis, datastore)
>   File "/usr/lib/python3.8/multiprocessing/pool.py", line 364, in map
>     return self._map_async(func, iterable, mapstar, chunksize).get()
>   File "/usr/lib/python3.8/multiprocessing/pool.py", line 771, in get
>     raise self._value
> FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
> make: *** [Makefile:1861: clang-tidy] Error 1
> ```
> $ clang-tidy '-checks=*' --list-checks | grep clang-analyzer | wc -l
> 111
>
> And I'm not sure you can even build clang or clang-tidy but not the analyzer.



I rebuilt clang-tools-extra with -DCLANG_ENABLE_STATIC_ANALYZER on,
and now clang-analyzer worked for me.  :)

Perhaps, we could do some checks for clang-tidy.
I am OK with leaving it as a follow-up work.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASb9HwvfmywT%2B3UjMvMUV3QCCaLVr_mSREiED%3DKNoy4eA%40mail.gmail.com.
