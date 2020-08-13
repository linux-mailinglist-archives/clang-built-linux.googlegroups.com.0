Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2M42L4QKGQELFGSXQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1BE2431C4
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 02:50:50 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id f25sf917990vsp.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 17:50:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597279849; cv=pass;
        d=google.com; s=arc-20160816;
        b=VNqICJe8ArH5kkMYF/N2idH4PT5X8cM/oIxvmd/kYt91kCsUSTq96oaI/eHzTVHFB8
         cbDkjx9+Mk+Jz+8Uz9ZQ+qcSe8W3/y5kr4nsnkbYyPM1gcfrj2Is5h3Uzkoe6I6VkXqS
         zPoFj0mXgqpCNC2vE8L+sM5qdZGdVCNa/Kux6j6tQ0bm3txH4ikzq7vHqcaclNzRawud
         9tEkkMNYdiefTufb2XrGoK+sJZu30D4w6ly+jvaWUFxYaB91Kl4u01avDVOJ6O8lxdV9
         hGhppJRMAi14aWVIwzZVO5lq2SFi1UVy7s8kjI2TXKUTzLZo7VbHvMBw4TvY6dsC7exY
         6jnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=54yrWUkyE/oMvs+SV0OV+7JkaE0LpM7/KGKzZcyv3EI=;
        b=gO2hP/lBhE3QrX9Ps6gEVRq3O5Lsk2y/+cTOlRGy5jBd4j/jf1s3PWvuyCo6P3bCAi
         GAthjJYSwRmNsjoeFAg0FlJH6FEi7zmoidE6JLvIQ4V3NgBsZm/bq94w47EKe8HRSYMS
         QaGaBkTcowbX+yHkbfY5uvls5kiAhPgEG73ATw9p9218RTySSLv7FJORxXZlsVMzRE00
         BJU8QjYOYySC8OdFteqKtFiQxOItnuV7FfrC0QLEv5PXC8LJx9GPZYmNVhVUigSIcHrd
         BrysgXXDlfCBIx8iR+XkJZxu154e2NTUIC7CoXpYtMlN8KS+5azI6tTYcT/oujSoYPqX
         tCqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bwfzCm0s;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=54yrWUkyE/oMvs+SV0OV+7JkaE0LpM7/KGKzZcyv3EI=;
        b=mdx8XM4WXQhNNOREfj+AktrHqjKImdmTwGYVC3Vz0qBkrvYI4EKPsVlstv0tn78FM+
         JiIe86n+n2O+6LOA9uFxbGMT0V+RkrSeKs2dAMfQPtGHqn4Y1vWg0ifTJMoEYkG9pZ8u
         a2aQ/XZopNcZX4N/av6bthXTp3dzT3198/4vpS36aG/1tY2Q18NWa2vihFexR7Eya+un
         +3WNVU6slh2p/4Thn+mu+hSeZ66DFX8P34egBFW/QzbdykKnBJhVKfvZeHIqPXH1pBYl
         T0PkVEzK8jQTe0/cmFTdnwVJVaIkcTdo/27vurKa5tTsonKMvm1mggndVE3iNjvJT+M1
         2J+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=54yrWUkyE/oMvs+SV0OV+7JkaE0LpM7/KGKzZcyv3EI=;
        b=ERWz1Xb/qiyWh9JEYDYz30LUnMJZeX7Oy6JE0EhNssT2g6G4wa4JoA/jzRQRNpNR5A
         RsXKqIlp5M8X71AaMDYEw+BU6oJkZFU1bRta2KUtwFXEN/imVGJyrxZOLymgnvP/pLBg
         yPR4xckdgMXG5+pCCdvFpZbfT1dPEyGhCK9G+VKpFbXXc1isAmeO+QY2WDZQ9qUt1lIE
         43PJ96WZYMi9ac81wfrr4/9kgJ/0br5IdUEolgq0YwS7sVyyDR9EpJGjhlwTcVInzUvj
         mV2484jXycbP76l9BTPTy7YR5z0Bn75Ic/E3UePVsYez/J9u8HGDhx3BN3BGUZLzvSEs
         uhiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=54yrWUkyE/oMvs+SV0OV+7JkaE0LpM7/KGKzZcyv3EI=;
        b=UXm7qmh//SbamvnjDhSqyN0901yiKsqkT0lHRrYxU2oRspQH0eVK7czarYWTai51p0
         pWyUCppPAVRI6RFv1ae7sRxVahIN2g46JATYAD0tJRYGbzmhwdacAMjH5+0+QXHXh/wy
         txYzZTT3YxK7J/gvOFewzD/P4kaT36ZCijZGWnb2SrKQtG6HhstZ/ftTPpxwX/zeoyZu
         aubLAmyTa+R6zw5FqC+KnH6BHETwpdEODuJbL07qF7g2SspNdhR7cjjTTXCmuDUo61Vt
         DxQhB+aODN1L57EiWr8ANJ3fxDn7zoqRBzLTR9aLPsFLhdQDwVn7UqPNpyWJE61kj8FF
         ZpUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wVYqubWpOHymGqnUBRjAvYeWB/lZpRUv5pXV0ZVDWwBhKNvAI
	5sfFcWkomXQ3GqoDBNGapi0=
X-Google-Smtp-Source: ABdhPJzsS1ktBFGhU1i8o2e+ZxwPalbVJ4BFl49spUJ7cyXbW4Ap1Lg2QFPlDhJVLJKN9qCmpWCzgA==
X-Received: by 2002:ab0:b09:: with SMTP id b9mr1448476uak.33.1597279849226;
        Wed, 12 Aug 2020 17:50:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:fc4a:: with SMTP id a71ls190261vki.8.gmail; Wed, 12 Aug
 2020 17:50:48 -0700 (PDT)
X-Received: by 2002:a1f:138b:: with SMTP id 133mr1634327vkt.21.1597279848904;
        Wed, 12 Aug 2020 17:50:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597279848; cv=none;
        d=google.com; s=arc-20160816;
        b=ZjNlJHyFlXUnfXi5/bGP8UFl695yvlnMfPaM8iKl6bwSgsq5AiffKRQq1EfSEbRAEo
         xiScz0J3T3v9ESD6hZLx4EzM1aAhOWKS+o93b7V7MKbo9l0b38K+hJlMnoVnpKICLB0z
         0ei0eCTHfegvE1V27Es5B+8rH5lLjk3P7D0erMEyuYljwg90cS5/1AkMSYZIAmCUDGCw
         wNlZaLssRLYBU0wXOtuakPUqYK7ZSLBCWf0o777lpgGl6ZNx4qSsgj97jPXmv6pdQoaX
         Llt2REucrdbQ0CsdW4qLbIa3Y4bO0j70m89IZiWftoguwFtVOgFT5hSowJ3K3YOBHFKY
         sV5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pL5MmIRVU1OdOeaSv0wRzf09T7PB0hRsMz5ga7H+m/4=;
        b=CoazfhN1WXnehgSSChtH/DvJ+nS+6l8UmKbg9b7UR9+TIrMeBMi1RFpAJfXSie8/+8
         uvG45NvNmoXbtdA1A9zFEi5rxC7d2uMRW0ySTlO4Wh7VbM2XkaU2FUXzx7v+gLeIbmg4
         wp2IZT4WlUjewaNpLvOC2qNfJt3HxCgYUyDvd8zgAi4XW0Vk1qEiFqVaBvnLuR++3UeK
         MlUPYOD+urgiGEyp/nR3R3P/fcWsjbnMnFikjBANeU9m634PmC37cG4FJFoj88rcjxoD
         tqRHxT+yBLC43g0SIQDCzxngrt47L1c/4BN/B/IzTab1JTqW6P346PU84/y64K/2ndID
         D6YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bwfzCm0s;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id u18si290165vsq.0.2020.08.12.17.50.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 17:50:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 77so3874416qkm.5
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 17:50:48 -0700 (PDT)
X-Received: by 2002:a37:2750:: with SMTP id n77mr2524751qkn.26.1597279848302;
        Wed, 12 Aug 2020 17:50:48 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 103sm4396948qta.31.2020.08.12.17.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2020 17:50:47 -0700 (PDT)
Date: Wed, 12 Aug 2020 17:50:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Tom Roeder <tmroeder@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"David S. Miller" <davem@davemloft.net>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rob Herring <robh@kernel.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 0/3] kbuild: clang-tidy
Message-ID: <20200813005045.GA3726321@ubuntu-n2-xlarge-x86>
References: <20200812173958.2307251-1-masahiroy@kernel.org>
 <CAJkfWY6vhW9kNK-t+2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw@mail.gmail.com>
 <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bwfzCm0s;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 12, 2020 at 03:52:54PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
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

I think that is the point of '-DCLANG_ENABLE_STATIC_ANALYZER=OFF'.
clang-tools-extra/clang-tidy/CMakeLists.txt has some checks for
CLANG_ENABLE_STATIC_ANALYZER to link in certain libraries related to
the analyzer.

For the record, tc-build adds that cmake define:

https://github.com/ClangBuiltLinux/tc-build/blob/071eeefd2e201d3f24468cc06ed6a5860161437d/build-llvm.py#L610-L613

$ ../build-llvm.py --build-stage1-only --projects "clang;clang-tools-extra" --targets X86
...

$ ../build/llvm/stage1/bin/clang-tidy '-checks=*' --list-checks | grep clang-analyzer | wc -l
0

If I remove that define and rebuild:

$ ../build-llvm.py --build-stage1-only --projects "clang;clang-tools-extra" --targets X86
...

$ ../build/llvm/stage1/bin/clang-tidy '-checks=*' --list-checks | grep clang-analyzer | wc -l
111

I suppose if this series depends on it, we can remove that from the base
defines and either add a flag to enable/disable it depending on people's
preferences.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200813005045.GA3726321%40ubuntu-n2-xlarge-x86.
