Return-Path: <clang-built-linux+bncBCS7XUWOUULBBL7MWT5AKGQEZRI6EXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D02257FBA
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:41:05 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id e21sf3458066iod.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 10:41:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598895664; cv=pass;
        d=google.com; s=arc-20160816;
        b=UUsOYisidsIxcVavDJY2NESMRIkuWnXnHFT6Dnj8msDZfr36boB47kcXJTnpSSJ4l2
         J7LnAcYKPihFlUIJ7AWCyFNZ6NHnfFPeTjcevb46xNjASCEjxa7gdhqFlWVhvqY4NRZW
         PWsuk4J6aA4Raw6fsANLhKzIfmYzFDMvqMf5vcZ8z/Gsp5VO9TLux3tA7xc9daXWYnoR
         G4cENk30ecE26lHnUsA1ep4ERbtSLvkUSMLUaeUUqteAFer4rG0nC9qrM9orxC4Fvc/I
         sYsswHAVpMzJD7QOIJMvVb823QkM6unemkMCjk1DkvHa6s17rUCEURZEcCui1Gd6lONo
         s7kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/4jo+m8RHFu3X36j/l4RPlXbQ9lZIVQayxwcRIo5shU=;
        b=cIaDECk8o9Kr9/NAPnd17ndJ+AH88k7j2waLinA2tLQk+dGyFNCFO0GTToxAaNgaLX
         2/C3V3/CGXwkzHxMczLbNOCRY3TMRL6JA3ZdaDDrzAlaiQgBobuZ4HqvXFPR3PfSpe6K
         zHGMy33RKOTUyt2MXI3BYtwJwHN0C1ix+fwzIOxxVfIi1zwiG/kGJT9TCWdibhn7I8U0
         Trp9gQmjQWcbSIdCoiZ6PX2rJjLufb1w9PGxq+RPhz/uaSIxX4zegrbG3BQaIhihmvnw
         A+iXQWAFvHRdsmtm6mQ0SXCllh2m4c7uHfevwYozsbVJHotAUqHMHOTTzcEIVBNxyk9H
         TlYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t43zwspT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/4jo+m8RHFu3X36j/l4RPlXbQ9lZIVQayxwcRIo5shU=;
        b=qeROOaONsAydwKPziGakN/bvG4WfoWqc5r1zvE/fJUnOYeXi6sw4odF1rhDya6YnGj
         V6/2/CHsHAAlYbVSzQ7omf5Q/KerS7/K5qzZpv3xTUcUk8XidfAsNOd4otjQaxXATFH2
         yr96KyeMsM/Txh2K/T5XgS2baFT3Dh0lWe8YQeXtUX8mmIQXvJnv5dihnCglEK/NdMzx
         e9zZZSF5yfcSq/E7kmHP1gvjaoqTd1KGghdAguhlTl88YM4NJobLV6l3zg7LadYclStu
         JZ465RBVRiOk3A8Xm3VLNaHHCT4CFgOwlS5wkKsoOat/TqZcZCfU8rGHAb+aHHaXlsJb
         bFkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/4jo+m8RHFu3X36j/l4RPlXbQ9lZIVQayxwcRIo5shU=;
        b=Su9qrvVSUnZII+mBIw6aT9E+z6qNGxdtbjn2+uhC4c4eSNzjZRx6L2OvLPZEwIxD3a
         Bg7ZwPtBqSzMPfr57Jr+fwE4fwk6jHXRttjXREnL71+ZppwgP2upcY4QOAiamo8ogd54
         RIWCRaQAHmhj+hncd67uCkF0A/3M0n2DjkpixBKyBOh6ZQt5OdnMlnttewGQ6kjn2Whv
         y8ThaueMbXqJ1Ko3xx1AnM2swy+QJElpBPZmZMQ0FR/yCVLJwmQQqmSnc1mJqflkAUVS
         SMldGpCLQxt7JgF+/iNM2KOgu4NOPcfCorXM5flI+3S5NBmtpVK1iyO+xNdmHi2EOkLB
         KhxQ==
X-Gm-Message-State: AOAM531oiNfqZZxKZrzqB/QgY1uRFvVQrfA1D6NtllM+3eU4ja0d2dY0
	yyiSqnn2xpRX6TcVBtuLsoc=
X-Google-Smtp-Source: ABdhPJzUAsE2EO0DN5R9AFFwT1MJYwDfO/0LRJhV7Ax6tcNCfXcKlS/yH2a3LJjR68SoocIOLcDCVA==
X-Received: by 2002:a92:c6c8:: with SMTP id v8mr2268151ilm.145.1598895663972;
        Mon, 31 Aug 2020 10:41:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:110f:: with SMTP id u15ls497873ilk.7.gmail; Mon, 31
 Aug 2020 10:41:03 -0700 (PDT)
X-Received: by 2002:a05:6e02:146:: with SMTP id j6mr1980757ilr.132.1598895663624;
        Mon, 31 Aug 2020 10:41:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598895663; cv=none;
        d=google.com; s=arc-20160816;
        b=XRp9f97NbbUbRSyTijZPNgJOVHoFD44wMdM9TUKjpQIA+xvjqv5yGgOlk6BfpTYKYX
         5DHaVyrrfpSTarkuLNhXTxEp2/tUWuZGt5KX7g6W2PdAolrDF8azdcx/zBaR0c95dISK
         pkEN2iT5Qh/5pXVL1V7kECROlf5pZqTFl8G55u9tnRELT8AO6mVsk0uWPW9pcA0s9kv2
         W8CgHSeO7lNmz4GKqIDkAFr+BQ9SaK5+Ch+xAeq2hTULfB08Jhuo8NBrbnIkNE2X74Xl
         OYAg4HOgHRxQAnGyj7Y//Jq8DWrR9B6X5eA8oDITO6Vjc228cqIj9Qb9Qi51eG1XQyak
         AWlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=K+hqQ3BEKwwaDVsUae3laJnae4quk+MHpF6v0avcRjQ=;
        b=HFsc2r2uGrVgfhFDbIZpwAsy4Pra5PXtG6f6fzci9TdsxSidsJZotm2fuxIr9TwbRo
         lrfdQrGH5We1M9nhA4Sq5IJDB/0OC7EvQ9Yyt8UkqwlScQnv9ZlENhFIKAholoMWRQPT
         +oHR9xUL8cUO9fnTZn5OIvHAvbD6rIcnNs5A+TQabtbEycsL03B91tIecqBJqkpDijl6
         Wop9VhIPVicRamRz+NdyZ9yGp0Q17x6Y9RHflomA5OjTYmbgQBYd1HFtUyXrMCtnV9v9
         fWUfQxJrFXP4+g9VW1A3GoCANPnQfr9xyxPdrmLNnj1Cur/kWgvf7wVSyXaUtp6TcrZa
         B0rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t43zwspT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id z7si453985ilm.3.2020.08.31.10.41.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 10:41:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id o68so980218pfg.2
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 10:41:03 -0700 (PDT)
X-Received: by 2002:a62:1b4a:: with SMTP id b71mr2045298pfb.235.1598895662641;
 Mon, 31 Aug 2020 10:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <202008300915.rtwPs0f1%lkp@intel.com> <CAKwvOdkw1i2YWOCSWoadtaP7VRAbFJNwKP4wjzdzcCVLLo9pCA@mail.gmail.com>
In-Reply-To: <CAKwvOdkw1i2YWOCSWoadtaP7VRAbFJNwKP4wjzdzcCVLLo9pCA@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 10:40:51 -0700
Message-ID: <CAFP8O3J_xpYBi+VA0WCio6c59GXCATJ1732RGXnzDLz5JNwa0Q@mail.gmail.com>
Subject: Re: [mptcp:export 1/1] ld.lld: error: failed to open net/sctp/sctp.o:
 Cannot allocate memory
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Philip Li <philip.li@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t43zwspT;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Aug 31, 2020 at 10:15 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Fangrui and Philip,
> I've been seeing more and more reports of LLD exhausting memory
> lately.  How much memory are the builders allocated? Does LLD
> potentially have a memory leak?  Do we need to limit the parallelism?
>
> Setting LD=3D"/usr/bin/time -v ld.lld" for `make` should help measure
> high water mark for RSS.

Hi Nick, either the linker script tricks LLD into thinking the output
is too large or LLD uses disproportionate amount of memory
w.r.t. the output size. I think the former is more likely. I'll need a
reproduce file for troubleshooting.
I am currently following the 'wget
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross;
...' instructions.

> On Sat, Aug 29, 2020 at 6:39 PM kernel test robot <lkp@intel.com> wrote:
> >
> > CC: mptcp@lists.01.org
> > TO: Matthieu Baerts <matthieu.baerts@tessares.net>
> >
> > tree:   https://github.com/multipath-tcp/mptcp_net-next.git export
> > head:   650188ca7860a4f3eece3052d8e35c373b3f5030
> > commit: 650188ca7860a4f3eece3052d8e35c373b3f5030 [1/1] DO-NOT-MERGE: mp=
tcp: enabled by default
> > config: x86_64-randconfig-a014-20200830 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c1=
0e63677f5d20f18010f8f68c631ddc97546f7d)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 650188ca7860a4f3eece3052d8e35c373b3f5030
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    terminate called after throwing an instance of 'std::system_error'
> >      what():  Resource temporarily unavailable
> >    PLEASE submit a bug report to https://bugs.llvm.org/ and include the=
 crash backtrace.
> > >> ld.lld: error: failed to open net/sctp/sctp.o: Cannot allocate memor=
y
> >     #0 0x0000564b3646b03c llvm::sys::PrintStackTrace(llvm::raw_ostream&=
, int) (/opt/cross/clang-c10e63677f/bin/lld+0x89803c)
> >     #1 0x0000564b36468f34 llvm::sys::RunSignalHandlers() (/opt/cross/cl=
ang-c10e63677f/bin/lld+0x895f34)
> >     #2 0x0000564b36469068 SignalHandler(int) (/opt/cross/clang-c10e6367=
7f/bin/lld+0x896068)
> >     #3 0x00007f40a8808730 __restore_rt (/lib/x86_64-linux-gnu/libpthrea=
d.so.0+0x12730)
> >     #4 0x00007f40a833a7bb raise (/lib/x86_64-linux-gnu/libc.so.6+0x377b=
b)
> >     #5 0x00007f40a8325535 abort (/lib/x86_64-linux-gnu/libc.so.6+0x2253=
5)
> >     #6 0x00007f40a86ef983 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x8=
c983)
> >     #7 0x00007f40a86f58c6 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x9=
28c6)
> >     #8 0x00007f40a86f5901 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x9=
2901)
> >     #9 0x00007f40a86f5b34 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x9=
2b34)
> >    #10 0x00007f40a86f1a55 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x8=
ea55)
> >    #11 0x00007f40a871edc9 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xb=
bdc9)
> >    #12 0x0000564b39092b81 std::thread::_State_impl<std::thread::_Invoke=
r<std::tuple<llvm::parallel::detail::(anonymous namespace)::ThreadPoolExecu=
tor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::'lambda'()> > >::_M_run(=
) (/opt/cross/clang-c10e63677f/bin/lld+0x34bfb81)
> >    #13 0x00007f40a871eb2f (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xb=
bb2f)
> >    #14 0x00007f40a87fdfa3 start_thread (/lib/x86_64-linux-gnu/libpthrea=
d.so.0+0x7fa3)
> >    #15 0x00007f40a83fc4cf clone (/lib/x86_64-linux-gnu/libc.so.6+0xf94c=
f)
> >    /bin/bash: line 1: 36478 Aborted                 ld.lld -m elf_x86_6=
4 -r -o net/sctp/sctp.o net/sctp/sm_statetable.o net/sctp/sm_statefuns.o ne=
t/sctp/sm_sideeffect.o net/sctp/protocol.o net/sctp/endpointola.o net/sctp/=
associola.o net/sctp/transport.o net/sctp/chunk.o net/sctp/sm_make_chunk.o =
net/sctp/ulpevent.o net/sctp/inqueue.o net/sctp/outqueue.o net/sctp/ulpqueu=
e.o net/sctp/tsnmap.o net/sctp/bind_addr.o net/sctp/socket.o net/sctp/primi=
tive.o net/sctp/output.o net/sctp/input.o net/sctp/debug.o net/sctp/stream.=
o net/sctp/auth.o net/sctp/offload.o net/sctp/stream_sched.o net/sctp/strea=
m_sched_prio.o net/sctp/stream_sched_rr.o net/sctp/stream_interleave.o net/=
sctp/proc.o net/sctp/sysctl.o net/sctp/ipv6.o
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/202008300915.rtwPs0f1%25lkp%40intel.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3J_xpYBi%2BVA0WCio6c59GXCATJ1732RGXnzDLz5JNwa0Q%40m=
ail.gmail.com.
