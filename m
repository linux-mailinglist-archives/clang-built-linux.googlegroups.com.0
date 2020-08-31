Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTPAWT5AKGQEE34FC3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FFB257F62
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:15:58 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id e4sf1033885pgv.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 10:15:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598894157; cv=pass;
        d=google.com; s=arc-20160816;
        b=x7wuwMerZO616ydyGujhibap7mWyplzV16aOnm9mGKcXpgxElHKIVpNrCSZYE4BspN
         Ru3N5olnnG16+K7yFND9AiB1yHEcPlfpNqepbtASrfHaIcc3D8eQlw8sJTB2jX/pPU4r
         eGXTykCtxgKWau2GHnQSj1MalzX3UGLGA1LUCzzMVVn+wcB9vn87ABpZxjfO7o288mkH
         fLd/VW1tPzQ6VGW834q7CTdpdd+/dl6EqH/HUTxmh1DWK2B4Jvf5v/Hh6GHxZ3YnYRwH
         /GnweUJGOodWdySdrX85Ff3gROcWPqskqep7Xo59zX7miYTC4B+lx3Fsat04zfbS+TxM
         G4QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JKDB7hCHbr+PCi3YHRuu2fASmaxMKRsGFDKCs3R26qc=;
        b=RAisyCfEZhhW3oJGUmT+IQp+lexCgdV2mj1LaRBVqJZ8G7ZX9lSU54mdzvLARMj9j/
         3SxOmumJAjCCIxNE+qt5n8BYzaNkMn6aPrcRZRKn+2jUNUjfxA2M+UegIIpQo01ijF+p
         JHWXcxdG0XMJJdiByA+6aLc2ktknj6h5ngIfI7DuxMXhnKF1+//1LhACg0B/3W23cUpV
         PXVydzCepEJBlVmVMaN1lb6LcVSGpzy697v+CHG8oki/KAthSqEdR+DniI9vOlA37nqD
         YWkMUzvZ+/UCEhvfxxYPuWAzycf/BhtYYwTmIXZbhPB1ckk1ImpzyZNicZ7QcSDUSl4R
         Yrnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fjz5WGEy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JKDB7hCHbr+PCi3YHRuu2fASmaxMKRsGFDKCs3R26qc=;
        b=dF1q30zacoNapFN4VQBEKNfqxBmhh/nHuXFV9we3ZvYfrSS0IA8EolnJjxG0OqNDvW
         rAEW5yrb10GWrMNc92W+zaBnhmzdHFgRYRSByLRv5Rs5NGPH11oivUNm9JNhjTvXfGdB
         OG9hR0XHYEV3AoxVaNaHNjwLdVoxC+9GSVh5coHT1RES0hhndO8zUvrtzi8efcCXiQrn
         Nx3ls4QrFUSzzsq1wyaBmoFw8k7H26dfCCBn9kDbcoMcA1PWt+z6oDopGsqp1M97HI4S
         cJtq9q//B8eUzC9gWxczwD0e03IuJP6NPlN+20LxgwhPozglPLuvqrNkhe5/6HyTlBSj
         1uvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JKDB7hCHbr+PCi3YHRuu2fASmaxMKRsGFDKCs3R26qc=;
        b=KCqah8WFp9pHY/SCmbDLiJrYH8AvRlIx3yKVziXShiFyN06jcbxI97Mf4abXU+u8UO
         F9KjEF6CYHbabx57bcfqXKNCk+wtpmSIn6/W5n7YTp7gn7xnvf8LX9tZQNj/bgrYQ9WS
         Ex24DGE/XHcbNMKtZRAXYlsy2DxOH4OsXbRS3YG8eGKQ/Cax9q4p3PphnSuKOpHs3KFb
         0wvloB7VIE/8KTdKdmYuurmPMtnwJOQDGjRdG+5JIUvddNsYTnw8B7zXFB5up98icego
         miL8jD1Zy4B/IuBGM4AqFoAkNtyyputPN9Vwfc15eoJKZy+xH+rlEgw0H0AwG5qpu/7f
         vUIg==
X-Gm-Message-State: AOAM533cgUfUs6MlAqH+fBx89GB6o90xk+GVAFkoIHjFEqCCPn1GxRCo
	aKpXPjFYbRvV1CS7cdeWYfs=
X-Google-Smtp-Source: ABdhPJxKbCVtdVfWZrQdSBjdyhwQy8KxDfDD8+6kYI0YYUND/ildddIKZSknNdRf9L0qwTxVWs7ykQ==
X-Received: by 2002:a17:902:8304:: with SMTP id bd4mr1833450plb.250.1598894157377;
        Mon, 31 Aug 2020 10:15:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:720b:: with SMTP id ba11ls3801304plb.0.gmail; Mon,
 31 Aug 2020 10:15:57 -0700 (PDT)
X-Received: by 2002:a17:90a:9c3:: with SMTP id 61mr312627pjo.191.1598894156956;
        Mon, 31 Aug 2020 10:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598894156; cv=none;
        d=google.com; s=arc-20160816;
        b=qDjq19isWocbVCOr5kLUgl9iOLJX9FhIUVKh5ok3+mbJ8vFxbW2wwav+Ppi6pNNA64
         LQPCVU9gCp1tWHNAoR0qfJAhRrKbPyTlalwRurTjE2D0YPbwhe4KcJdI+sqHYxKQE5sv
         xf4ZiuNdaABpOGvMDFu47M7im6E02j3FEWTVpYv+4E98TvlzmWgs5GscI8hfr96GY3Gl
         /hgibRUrAy9mcZsbnUKXYPm1hzjlNfaJu8pQc6zEN1zRHPCUnQK/hcg+cFuw5OB0Gna+
         sVXA2I1JQWnoEn9i3IsBVLO0ZHqbK6LNVAIPPSEDoBPT2sYJ0gLEE5vKqOFjxU5Gouk9
         w0tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Vstj28ux2VfNjpxx86ms6Up/fPbUN+Y3LjPWR+VNAz0=;
        b=IH6bQpI+wrKFrvLNwk1mHtSwE4/7XsCUTusPmSMSd9bVgOYC8B8YeS8OwtIBbBU5gJ
         xzZGuxh9rtdwWRqZ6eCnom77t/PqHqW4fEtsM1SZ+2ntBfe5bfnnq8TIKM+NDjbYZee1
         dyMj3KfdDTzFXyoKo8Twei7ZnrlxW1rwqQltwp+KhfjOAV/jL2ufiSQKkTtVGQIozxFd
         29sm7kHYfbm3FYKyo/GNZttkOlQ1iqfoUifNDf8GNFHEcmzZJ73iJzQk3Y4zJZnfSMY9
         gtBAkS/EuR1RuEAdOi+5mRb17+7WkYlYHe1A3AvrMB94Y3RDY57Vd8RpMj56Fr+XUS7I
         W3xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fjz5WGEy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id p1si316470pgf.1.2020.08.31.10.15.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 10:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id o20so918863pfp.11
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 10:15:56 -0700 (PDT)
X-Received: by 2002:a62:77d5:: with SMTP id s204mr2104519pfc.183.1598894156322;
 Mon, 31 Aug 2020 10:15:56 -0700 (PDT)
MIME-Version: 1.0
References: <202008300915.rtwPs0f1%lkp@intel.com>
In-Reply-To: <202008300915.rtwPs0f1%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 10:15:45 -0700
Message-ID: <CAKwvOdkw1i2YWOCSWoadtaP7VRAbFJNwKP4wjzdzcCVLLo9pCA@mail.gmail.com>
Subject: Re: [mptcp:export 1/1] ld.lld: error: failed to open net/sctp/sctp.o:
 Cannot allocate memory
To: Fangrui Song <maskray@google.com>, Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fjz5WGEy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
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

Fangrui and Philip,
I've been seeing more and more reports of LLD exhausting memory
lately.  How much memory are the builders allocated? Does LLD
potentially have a memory leak?  Do we need to limit the parallelism?

Setting LD=3D"/usr/bin/time -v ld.lld" for `make` should help measure
high water mark for RSS.

On Sat, Aug 29, 2020 at 6:39 PM kernel test robot <lkp@intel.com> wrote:
>
> CC: mptcp@lists.01.org
> TO: Matthieu Baerts <matthieu.baerts@tessares.net>
>
> tree:   https://github.com/multipath-tcp/mptcp_net-next.git export
> head:   650188ca7860a4f3eece3052d8e35c373b3f5030
> commit: 650188ca7860a4f3eece3052d8e35c373b3f5030 [1/1] DO-NOT-MERGE: mptc=
p: enabled by default
> config: x86_64-randconfig-a014-20200830 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e=
63677f5d20f18010f8f68c631ddc97546f7d)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 650188ca7860a4f3eece3052d8e35c373b3f5030
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    terminate called after throwing an instance of 'std::system_error'
>      what():  Resource temporarily unavailable
>    PLEASE submit a bug report to https://bugs.llvm.org/ and include the c=
rash backtrace.
> >> ld.lld: error: failed to open net/sctp/sctp.o: Cannot allocate memory
>     #0 0x0000564b3646b03c llvm::sys::PrintStackTrace(llvm::raw_ostream&, =
int) (/opt/cross/clang-c10e63677f/bin/lld+0x89803c)
>     #1 0x0000564b36468f34 llvm::sys::RunSignalHandlers() (/opt/cross/clan=
g-c10e63677f/bin/lld+0x895f34)
>     #2 0x0000564b36469068 SignalHandler(int) (/opt/cross/clang-c10e63677f=
/bin/lld+0x896068)
>     #3 0x00007f40a8808730 __restore_rt (/lib/x86_64-linux-gnu/libpthread.=
so.0+0x12730)
>     #4 0x00007f40a833a7bb raise (/lib/x86_64-linux-gnu/libc.so.6+0x377bb)
>     #5 0x00007f40a8325535 abort (/lib/x86_64-linux-gnu/libc.so.6+0x22535)
>     #6 0x00007f40a86ef983 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x8c9=
83)
>     #7 0x00007f40a86f58c6 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x928=
c6)
>     #8 0x00007f40a86f5901 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x929=
01)
>     #9 0x00007f40a86f5b34 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x92b=
34)
>    #10 0x00007f40a86f1a55 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x8ea=
55)
>    #11 0x00007f40a871edc9 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xbbd=
c9)
>    #12 0x0000564b39092b81 std::thread::_State_impl<std::thread::_Invoker<=
std::tuple<llvm::parallel::detail::(anonymous namespace)::ThreadPoolExecuto=
r::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::'lambda'()> > >::_M_run() =
(/opt/cross/clang-c10e63677f/bin/lld+0x34bfb81)
>    #13 0x00007f40a871eb2f (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xbbb=
2f)
>    #14 0x00007f40a87fdfa3 start_thread (/lib/x86_64-linux-gnu/libpthread.=
so.0+0x7fa3)
>    #15 0x00007f40a83fc4cf clone (/lib/x86_64-linux-gnu/libc.so.6+0xf94cf)
>    /bin/bash: line 1: 36478 Aborted                 ld.lld -m elf_x86_64 =
-r -o net/sctp/sctp.o net/sctp/sm_statetable.o net/sctp/sm_statefuns.o net/=
sctp/sm_sideeffect.o net/sctp/protocol.o net/sctp/endpointola.o net/sctp/as=
sociola.o net/sctp/transport.o net/sctp/chunk.o net/sctp/sm_make_chunk.o ne=
t/sctp/ulpevent.o net/sctp/inqueue.o net/sctp/outqueue.o net/sctp/ulpqueue.=
o net/sctp/tsnmap.o net/sctp/bind_addr.o net/sctp/socket.o net/sctp/primiti=
ve.o net/sctp/output.o net/sctp/input.o net/sctp/debug.o net/sctp/stream.o =
net/sctp/auth.o net/sctp/offload.o net/sctp/stream_sched.o net/sctp/stream_=
sched_prio.o net/sctp/stream_sched_rr.o net/sctp/stream_interleave.o net/sc=
tp/proc.o net/sctp/sysctl.o net/sctp/ipv6.o
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/202008300915.rtwPs0f1%25lkp%40intel.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkw1i2YWOCSWoadtaP7VRAbFJNwKP4wjzdzcCVLLo9pCA%40mai=
l.gmail.com.
