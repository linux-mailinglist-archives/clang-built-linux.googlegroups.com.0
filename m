Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQGBYXZQKGQEE3LFCTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4BC189242
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 00:44:01 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id d2sf2771623qve.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:44:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584488640; cv=pass;
        d=google.com; s=arc-20160816;
        b=GeV/KYuDOGebONpN6TjxSIkmmjshDkiXvH4ln8svdZnzpZKk81g/SnG3BPJAGJpdTf
         VXehm9wWzVcwwwLkLSDo/3SO0sGZ75Nlxd6LkiSf8CXITO6I++sIUmKk16C2ggYjLkI4
         HcVy8koc+8XIzIGFm7BN/HOtjlEvP2+mQsuuk2pOGtKcRYbMjzRvMHNjFoCrmHOx821V
         Q5uoRtVrQarcrI+aIniooKg0LeWQg6jBgUNiWb4NHA0S9Pq02GFpCqoL8Nv5HOgtCCza
         DEny6/ApgKQRjufEG4SRF3i3u9erC/8Vz8sU1U+wrzn2L9JFhBqi4oqYiuaQamXShAK/
         m1Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qfuzyDwAA7MHM/vANOfh/zbYAaLmydlQwE2ivAxPTLo=;
        b=WteCOjzQRbNm5bPtT6pTxwaTVxqqSXQnqskwkIJq2wLYtjEYlExLWerRwhApmr34Mj
         CeRz9z9Gh3qHsNV1nJ1s+b5yWobZaCoVRKxhETrfdD2FqrQIiJ7cpzorNaIYX5KjndrK
         DimUHosZe4IkrqudbIGOpRcIb94bbPrJ0mjKJgvqIlhnaEFtuzZipipyRCAXf6Gcwz3d
         fROvbmsfJRjiLkycbQlC0+TMTfZ55yMNpfKDKwmumf8AoWFWy7B4los810/B5Eri2ebA
         pFnN46SKDp33EWsHTxpfIy9304kT5LneMyrk8CsH+wjpCmBvi2tQ7Q3DD3qi2tl3ytfm
         aRrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kj2QofUv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qfuzyDwAA7MHM/vANOfh/zbYAaLmydlQwE2ivAxPTLo=;
        b=j1guqNSLEEH9/MMh3h2o+fo2JUeRhMjH2XTlwBpwQIoP8WN4B5ta1swat/2Zqjtx1p
         649n62vBai/DSHM9qkObsUFvx83qwuWsYV7ge3hLT2ZgQWLoMbOSL9kGmvwAZHBKFah8
         jFN3q5TSG5UnlyI8TNq3BhZaui9PMuPzCS18cFeUTOmdqu+FQhBZPk7acoXh3xeREwh4
         CCUme6OZTkVPSPnTbSoOXHXZFhKURBu1/AO1x+K+xkE7UKANHQnH1YRfGRS+oTQkvLFB
         8seY6RJWYJJcOx/yCkE4OKWhfyCN5hKwrXrLTyG5c/jtVqEPtvX+g6mQ9f9ZoWXgiUh3
         ykJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qfuzyDwAA7MHM/vANOfh/zbYAaLmydlQwE2ivAxPTLo=;
        b=SPDxEgq25GLAANVfeQC9tThYI8dMXk13FG2+tnaSpA0f5wiV/0t/8rLtfGKeglSsuq
         8hzyj2Wm1pWZwutZtCLKltYJeYoA2Z+LTx8bz/KiI/PRmcrjjLioKtEed38TXxlhDa67
         vBRSAGvTQa3M1Y060NwASK6Fu12svk0t68+fVV9DWr05eD9o4jRDN1V/+yA0ZX9s9atF
         1WS6AP5J6i6PSeKyA18jiPuLLbLcv9itWqIHa2DCusfmwWKoxO+nXLQIBTvgcUnkwclX
         ULddKTTS1xcyLx8QwQ4rqFJa3wDCbum7RkKkp5lMvtmhijyro12n8nhC8S6TwqkkwTUu
         lvdg==
X-Gm-Message-State: ANhLgQ1bc+4X6M+QW8a5K7qQ3Uiqtb5gZcI/4XGwoLfslWAGwc8PDqPb
	6Rw1PqvwQAwv8psGX/cPojs=
X-Google-Smtp-Source: ADFU+vtDvF4iRaiU2BkA+bjUh2V9s6/zAUoY1JyafhkuDmOJotdtsz/RavjT94AgerUlHflWA/RrHw==
X-Received: by 2002:a25:7d87:: with SMTP id y129mr1849636ybc.311.1584488640370;
        Tue, 17 Mar 2020 16:44:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5cc:: with SMTP id 195ls7661338ybf.10.gmail; Tue, 17 Mar
 2020 16:44:00 -0700 (PDT)
X-Received: by 2002:a25:9005:: with SMTP id s5mr1985392ybl.143.1584488640007;
        Tue, 17 Mar 2020 16:44:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584488640; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXFQpXB+c7WbyglYhi+q7n1O7MaGjJr77IwlrXFj8qFN/h+WBjpIaBtZVQ6Y8G+pZM
         SaaleL/u9BxmnxLpqZC70OVN/r/Lw1eugcgBXrhr8XawtzKAaqvSwr3/DOBsmbfdvJVO
         mqE83yKW/4xDjZ5BHWjeZlGat13Z4vshnaxl80Z5nz1Z8PC7qu0VeRNonY1wG63KLjMs
         E/bBrTI8e8DSncz3YVqD5LiQXOdya/RQtpAdytZrtNn6ZgxlZk8mgle1rze8MTNzq6Th
         lDB8CywJ5pWIvnhB+7f5UWgAy1tYN8bv6bi2Yafn0+mRw35bl00tuzTcWX3k64Jcwhjc
         x5EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ehjo2dfhKDxoZ1Z+RY6tvGulJ8aD8GxzYz/+Nhr00Pw=;
        b=t8rsXV+OzDANHU+zb2/Fnpumc1HHfzvZCHwoNDJhLTlmD3zrkAru3qY3E++GJpc62o
         BqZnEvGA3sFZJaMnhGZueoi8uqoU2yZxUgf0MA3jMWJiBXo7D1WO1Mpbn0tY7BoBCVdw
         Nmkysx2RQZnj7p7SuMjL3seCUvONf9duU2IT57uaqBZRLwJbKqpNGx+ULnAZVJXK0L5L
         PbufU/CcFhiP9xd7dH8QsHtT+VIH40/WslXYKLo3NXyswYxeNNWhwsoqAw0q76Obs99A
         9DCvHUY52S4HeJUyJOd8ltyEKFzol7E6h4A7DVH2up7PS5j3xG9izLnmjUZpnnk9FMsH
         vUjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kj2QofUv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y19si348702yby.1.2020.03.17.16.43.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 16:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g2so7819086plo.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 16:43:59 -0700 (PDT)
X-Received: by 2002:a17:90b:8f:: with SMTP id bb15mr1553468pjb.186.1584488638684;
 Tue, 17 Mar 2020 16:43:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200317170910.983729109@infradead.org> <202003180747.qU4yJl06%lkp@intel.com>
In-Reply-To: <202003180747.qU4yJl06%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 16:43:47 -0700
Message-ID: <CAKwvOdmU57K8vRRZd0cfUve2WZXJT0ysEwi+zRTngD3VhLxm3A@mail.gmail.com>
Subject: Re: [PATCH v2 19/19] objtool: Detect loading function pointers across noinstr
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, mbenes@suse.cz, brgerst@gmail.com, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Kj2QofUv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

Just needs a `default:` case.  From personal experience, this warning
helps you track down every switch on an enum when you add a new
enumeration value.

Ignore the dtc-lexer failure, that's a separate known issue.

On Tue, Mar 17, 2020 at 4:40 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Peter,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on tip/auto-latest]
> [also build test ERROR on next-20200317]
> [cannot apply to tip/x86/core linux/master linus/master v5.6-rc6]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Peter-Zijlstra/objtool-vmlinux-o-and-noinstr-validation/20200318-035709
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 3168392536d32920349af53bdd108e3b92b10f4f
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 14a1b80e044aac1947c891525cf30521be0a79b7)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> check.c:2131:10: error: 12 enumeration values not handled in switch: 'INSN_JUMP_DYNAMIC', 'INSN_JUMP_DYNAMIC_CONDITIONAL', 'INSN_RETURN'... [-Werror,-Wswitch]
>            switch (insn->type) {
>                    ^
>    1 error generated.
>    mv: cannot stat 'tools/objtool/.check.o.tmp': No such file or directory
>    make[4]: *** [tools/build/Makefile.build:96: tools/objtool/check.o] Error 1
>    /usr/bin/ld: scripts/dtc/dtc-parser.tab.o:(.bss+0x10): multiple definition of `yylloc'; scripts/dtc/dtc-lexer.lex.o:(.bss+0x58): first defined here
>    clang-11: error: linker command failed with exit code 1 (use -v to see invocation)
>    make[2]: *** [scripts/Makefile.host:116: scripts/dtc/dtc] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1261: scripts_dtc] Error 2
>    make[4]: Target '__build' not remade because of errors.
>    make[3]: *** [Makefile:46: tools/objtool/objtool-in.o] Error 2
>    make[3]: Target 'all' not remade because of errors.
>    make[2]: *** [Makefile:68: objtool] Error 2
>    make[1]: *** [Makefile:1787: tools/objtool] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:180: sub-make] Error 2
>    10 real  23 user  18 sys  399.16% cpu        make prepare
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003180747.qU4yJl06%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmU57K8vRRZd0cfUve2WZXJT0ysEwi%2BzRTngD3VhLxm3A%40mail.gmail.com.
