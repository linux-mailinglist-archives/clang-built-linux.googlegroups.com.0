Return-Path: <clang-built-linux+bncBCS7XUWOUULBB64XWX5AKGQEKPGEZMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF2025819C
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 21:14:04 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id 130sf1199272pga.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 12:14:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598901243; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5SmiuW65WWSq6T9lkHhNKz0Vmg9lVe4ziuZHW6MkF1W4jQnDMwyhzLP29+cvoe+BZ
         MBa4DY4fP7CTfAbfpsvl9IYANHb4FF3WTkxGubVBxNc1YDP/jRnSJ5gaAyDRnO3lIr1G
         /wWQMO9kpYCJJLE2ZpVhnqogJ3tpLA1XbegjUJWBXznmH3/exHAFpIF+UhO0voNfK9yF
         q5F2cSwMzwi32SG3SLlaMoM49kqoyDfjlkn5r24UiSWHntgmfjCw7wGS0mLsFJl+qv+v
         TmqEiCHfx+M7gun22A2X9zBemz7pd9LZVcHThSt6J/vX89di3pQFt5myJAO+YQIassTi
         0OCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6I2yLLIOQ2FPIdliI8t48G1kEvNnrLl1lY72rfrlsxw=;
        b=LAzl3d7OlOgYFUgqVDiOhSEYrS/bZ2LpcUEBleCxNV2mLUuHlr7hDsyF8KYcuy7zZc
         4I6rSLtIoSUcwR6b48XlDOCFloGV7c4KQY5FlSqlx8crI14ja/YOPtqjJTgmdxhLdZZl
         0/w8ga+KSBs/O2ernLkaccdnRKR+X5mGac2G670k0BC/IFPVip8YCiXrHzacO6/O2k2K
         qTt4F4F4ydL7YIPydKuh++TKio0elhEe9o96uBdtsdF3ZwtOb8zIHMM6XQLO07iQXNGe
         n4+j/NMyqrtN+EaQnJPDV3KQpFjQsi6PKnWFDDyF4veqDxVc6zwvXIqDOuHvompNZpNQ
         W/3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sXhasSM2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6I2yLLIOQ2FPIdliI8t48G1kEvNnrLl1lY72rfrlsxw=;
        b=guVPeSKQUCtu8JOunbkrImLKgUuWKPlNBqvJeTY94TJyMETxr5loFAWLbrFFp1DCST
         8aqF1rH6o9b/mnMpFJaNMM43A/NrLEhibT0588brwsNRtUtYTGkGsIgBX3ks2by8/WxJ
         aFt6lKclH4HjQQKWglveT9dhPjRaw+YWVk1dDBfybbTifhIJqhovfG4xGUqlAZ3WQttb
         O2eGC55Wm1zv2cPHTHISnT48L+1pUV7CRYglSKztJ2AdXS95umHx/fGLacINctwJgzwF
         Y+Qcz2249cbNngwvHyR3mVLvj0RKPWuphsVAd7kq/VAhkbOIawo9V4L8kOtvK0wwvJOL
         RoQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6I2yLLIOQ2FPIdliI8t48G1kEvNnrLl1lY72rfrlsxw=;
        b=UTJ3bL/6zlIDe/ykrQEgLTGAGxGXoGmOkHGOluE2Rx4Q7b/QZhollhLjgGKBdn6pJk
         ZevliDakB8EsYIi4ci8ipdNs31y/pBzd08lHrLUKn1BbWoFwHjuv8NgZT91v8TAnfneS
         wzH3lt8F1Lnk7memsnuK6y5TR8DpmfPp+dsOg+04Z/yLiTaFUwP1ecvZUkKsahW9CeUP
         wF09URHcW6zd9u/Toju8qZD7WQRolRth6U2v6HqlF3vAvyJs4uNAJopflYTsQ2cnqy1v
         ckKj9Y3kS8QK1ogQC58KJsjAs7h/yV9aPoMNNiKdt62tEjK7Wll9f1xwdQCtMcygr/r3
         u0og==
X-Gm-Message-State: AOAM53042LdRVzS9DA6SzogdRi5GfX17mH/BRAZWEpEeylBbD/llt6Wo
	/kKA9wFMABr6AUV4B3LI/VY=
X-Google-Smtp-Source: ABdhPJxH0N5Lg37Fl4KKI6tw+JT38zoJUmfnF6RLUUA6/O5x/s6jdnTVo6D8bgWve35xOQ2P1ZIMSg==
X-Received: by 2002:a17:90a:e549:: with SMTP id ei9mr736524pjb.52.1598901243235;
        Mon, 31 Aug 2020 12:14:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls3901222pls.11.gmail; Mon, 31
 Aug 2020 12:14:02 -0700 (PDT)
X-Received: by 2002:a17:90b:208b:: with SMTP id hb11mr706496pjb.201.1598901242815;
        Mon, 31 Aug 2020 12:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598901242; cv=none;
        d=google.com; s=arc-20160816;
        b=JCidGVSOfavl6VDCrH9m3hMymDxHfgrEX19Mz8ZPZ2eIVyQUY9/bocZm1iaxCvZf/L
         tRBcxeuSTaRuo9nPptCoPw0dJZcvgw4aXR2lva4XvmYzo56jWTXVCvTmzA0Xrjqbm/Hf
         MbXAI+KuCU/660L3GeBBe5hVwPNblOASuy7lfEmindmGrApL57AUuTS4YG0xI5QNsTX8
         nZtuKA27eMWm7lWYZTAm0NVVTCNuCtxD0crmQX4GjEh0tJVGEC9GeWQX/OmTDcff/8oo
         TrrHyhsrWIRzkJ2sG2Y9nBbfxloEDQ3s4IBqCtW6TaZ3oor5Lui3u2Y53n+JP9zF+XXa
         BfWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xk3x1FMabnXDPSmVOi7lS27THOhy6vSv3PJT/qd9eS0=;
        b=N1cdst7cqS2nTjaFlFJlIDjrFNEcLh8h+rM2vVVSQisFKnUtAvmwqRCPVuSdPA93vj
         I23V3QEgMQt5eNlg0pcV94bNf7bNBtLblq7pvgm4GY4vhjSigG80wlgFbnEEI0PVsRzL
         Uu0BQDVRViczrMVNvj7bcMj47n/ERQFRdJCbwoEjCuRGG0mOshXs6CLLrcWEVRG4HJpR
         qxMqAr+XF+zb3PNl9IQDWJx8mdqiJbj7vMUL0M/E/alehZVr4b/5VV8MCWINcDJ6MEnS
         cTnfM9kiysefJgSWaBSuYWJkro5enQav+Mx9VCI+d+H68K7lyoZpekrUnkgymTHqGbbL
         6qZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sXhasSM2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id g11si414417plp.3.2020.08.31.12.14.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 12:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id h2so3592414plr.0
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 12:14:02 -0700 (PDT)
X-Received: by 2002:a17:90b:1256:: with SMTP id gx22mr735918pjb.47.1598901242234;
 Mon, 31 Aug 2020 12:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <202008300915.rtwPs0f1%lkp@intel.com> <CAKwvOdkw1i2YWOCSWoadtaP7VRAbFJNwKP4wjzdzcCVLLo9pCA@mail.gmail.com>
 <CAFP8O3J_xpYBi+VA0WCio6c59GXCATJ1732RGXnzDLz5JNwa0Q@mail.gmail.com>
In-Reply-To: <CAFP8O3J_xpYBi+VA0WCio6c59GXCATJ1732RGXnzDLz5JNwa0Q@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 12:13:51 -0700
Message-ID: <CAFP8O3LjWgOVzcv-VYS0DPWrWqOjDUcc1b9YO3G4cTfpwFSEYA@mail.gmail.com>
Subject: Re: [mptcp:export 1/1] ld.lld: error: failed to open net/sctp/sctp.o:
 Cannot allocate memory
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Philip Li <philip.li@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sXhasSM2;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a
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

On Mon, Aug 31, 2020 at 10:40 AM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@goog=
le.com> wrote:
>
> On Mon, Aug 31, 2020 at 10:15 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Fangrui and Philip,
> > I've been seeing more and more reports of LLD exhausting memory
> > lately.  How much memory are the builders allocated? Does LLD
> > potentially have a memory leak?  Do we need to limit the parallelism?
> >
> > Setting LD=3D"/usr/bin/time -v ld.lld" for `make` should help measure
> > high water mark for RSS.
>
> Hi Nick, either the linker script tricks LLD into thinking the output
> is too large or LLD uses disproportionate amount of memory
> w.r.t. the output size. I think the former is more likely. I'll need a
> reproduce file for troubleshooting.
> I am currently following the 'wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross;
> ...' instructions.

=3Dtime -v ld.bfd -m elf_x86_64 -z max-page-size=3D0x200000 --build-id -X
-o vmlinux -T ./arch/x86/kernel/vmlinux.lds --whole-archive
arch/x86/kernel/head_64.o arch/x86/kernel/head64.o
arch/x86/kernel/ebda.o arch/x86/kernel/platform-quirks.o
init/built-in.a usr/built-in.a arch/x86/built-in.a kernel/built-in.a
certs/built-in.a mm/built-in.a fs/built-in.a ipc/built-in.a
security/built-in.a crypto/built-in.a block/built-in.a lib/built-in.a
arch/x86/lib/built-in.a lib/lib.a arch/x86/lib/lib.a
drivers/built-in.a sound/built-in.a net/built-in.a virt/built-in.a
arch/x86/pci/built-in.a arch/x86/oprofile/built-in.a
--no-whole-archive --start-group --end-group .tmp_vmlinux.kallsyms2.o

Maximum resident set size (kbytes): 736784

# lld 11.0.0 7c771631c6f7e1e09a9ba1421adb83a98596cf35
=3Dtime -v ~/0day/clang-latest/bin/ld.lld -m elf_x86_64 -z
max-page-size=3D0x200000 --build-id -X -o vmlinux -T
./arch/x86/kernel/vmlinux.lds --whole-archive
arch/x86/kernel/head_64.o arch/x86/kernel/head64.o
arch/x86/kernel/ebda.o arch/x86/kernel/platform-quirks.o
init/built-in.a usr/built-in.a arch/x86/built-in.a kernel/built-in.a
certs/built-in.a mm/built-in.a fs/built-in.a ipc/built-in.a
security/built-in.a crypto/built-in.a block/built-in.a lib/built-in.a
arch/x86/lib/built-in.a lib/lib.a arch/x86/lib/lib.a
drivers/built-in.a sound/built-in.a net/built-in.a virt/built-in.a
arch/x86/pci/built-in.a arch/x86/oprofile/built-in.a
--no-whole-archive --start-group --end-group .tmp_vmlinux.kallsyms2.o

Maximum resident set size (kbytes): 1099432


So ld.lld uses more memory on vmlinux. This is interesting because for
many programs lld uses significantly less memory. I'll investigate it
a bit.

> > On Sat, Aug 29, 2020 at 6:39 PM kernel test robot <lkp@intel.com> wrote=
:
> > >
> > > CC: mptcp@lists.01.org
> > > TO: Matthieu Baerts <matthieu.baerts@tessares.net>
> > >
> > > tree:   https://github.com/multipath-tcp/mptcp_net-next.git export
> > > head:   650188ca7860a4f3eece3052d8e35c373b3f5030
> > > commit: 650188ca7860a4f3eece3052d8e35c373b3f5030 [1/1] DO-NOT-MERGE: =
mptcp: enabled by default
> > > config: x86_64-randconfig-a014-20200830 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project =
c10e63677f5d20f18010f8f68c631ddc97546f7d)
> > > reproduce (this is a W=3D1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         git checkout 650188ca7860a4f3eece3052d8e35c373b3f5030
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s ARCH=3Dx86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    terminate called after throwing an instance of 'std::system_error'
> > >      what():  Resource temporarily unavailable
> > >    PLEASE submit a bug report to https://bugs.llvm.org/ and include t=
he crash backtrace.
> > > >> ld.lld: error: failed to open net/sctp/sctp.o: Cannot allocate mem=
ory
> > >     #0 0x0000564b3646b03c llvm::sys::PrintStackTrace(llvm::raw_ostrea=
m&, int) (/opt/cross/clang-c10e63677f/bin/lld+0x89803c)
> > >     #1 0x0000564b36468f34 llvm::sys::RunSignalHandlers() (/opt/cross/=
clang-c10e63677f/bin/lld+0x895f34)
> > >     #2 0x0000564b36469068 SignalHandler(int) (/opt/cross/clang-c10e63=
677f/bin/lld+0x896068)
> > >     #3 0x00007f40a8808730 __restore_rt (/lib/x86_64-linux-gnu/libpthr=
ead.so.0+0x12730)
> > >     #4 0x00007f40a833a7bb raise (/lib/x86_64-linux-gnu/libc.so.6+0x37=
7bb)
> > >     #5 0x00007f40a8325535 abort (/lib/x86_64-linux-gnu/libc.so.6+0x22=
535)
> > >     #6 0x00007f40a86ef983 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0=
x8c983)
> > >     #7 0x00007f40a86f58c6 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0=
x928c6)
> > >     #8 0x00007f40a86f5901 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0=
x92901)
> > >     #9 0x00007f40a86f5b34 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0=
x92b34)
> > >    #10 0x00007f40a86f1a55 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0=
x8ea55)
> > >    #11 0x00007f40a871edc9 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0=
xbbdc9)
> > >    #12 0x0000564b39092b81 std::thread::_State_impl<std::thread::_Invo=
ker<std::tuple<llvm::parallel::detail::(anonymous namespace)::ThreadPoolExe=
cutor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::'lambda'()> > >::_M_ru=
n() (/opt/cross/clang-c10e63677f/bin/lld+0x34bfb81)
> > >    #13 0x00007f40a871eb2f (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0=
xbbb2f)
> > >    #14 0x00007f40a87fdfa3 start_thread (/lib/x86_64-linux-gnu/libpthr=
ead.so.0+0x7fa3)
> > >    #15 0x00007f40a83fc4cf clone (/lib/x86_64-linux-gnu/libc.so.6+0xf9=
4cf)
> > >    /bin/bash: line 1: 36478 Aborted                 ld.lld -m elf_x86=
_64 -r -o net/sctp/sctp.o net/sctp/sm_statetable.o net/sctp/sm_statefuns.o =
net/sctp/sm_sideeffect.o net/sctp/protocol.o net/sctp/endpointola.o net/sct=
p/associola.o net/sctp/transport.o net/sctp/chunk.o net/sctp/sm_make_chunk.=
o net/sctp/ulpevent.o net/sctp/inqueue.o net/sctp/outqueue.o net/sctp/ulpqu=
eue.o net/sctp/tsnmap.o net/sctp/bind_addr.o net/sctp/socket.o net/sctp/pri=
mitive.o net/sctp/output.o net/sctp/input.o net/sctp/debug.o net/sctp/strea=
m.o net/sctp/auth.o net/sctp/offload.o net/sctp/stream_sched.o net/sctp/str=
eam_sched_prio.o net/sctp/stream_sched_rr.o net/sctp/stream_interleave.o ne=
t/sctp/proc.o net/sctp/sysctl.o net/sctp/ipv6.o
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > > --
> > > You received this message because you are subscribed to the Google Gr=
oups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, sen=
d an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/=
msgid/clang-built-linux/202008300915.rtwPs0f1%25lkp%40intel.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> =E5=AE=8B=E6=96=B9=E7=9D=BF



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3LjWgOVzcv-VYS0DPWrWqOjDUcc1b9YO3G4cTfpwFSEYA%40mai=
l.gmail.com.
