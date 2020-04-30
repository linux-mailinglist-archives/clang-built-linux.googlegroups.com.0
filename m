Return-Path: <clang-built-linux+bncBDS6DTHSSUKBB3FHVT2QKGQEE4YDILA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C1A1C045A
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 20:07:41 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id o21sf7316687qkm.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 11:07:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588270060; cv=pass;
        d=google.com; s=arc-20160816;
        b=xOT2Iy4NqHM/UiygzjjcPh3SJGNnMpW8B26g7yy+ej5geULtFt7p65GHLEbpEn3M69
         GO/B3ElCQ8QO8iXir6PSWdPDw7Iiqj040XVoaw1FoJ00ZiZ5NypLzzW+OQvQQ9ZttBw2
         gX0eTV09yU5yaqF7YirnOe5t+MmsyVKsgCvoraroSLAgt2XQq7o6cKGo9k47Aqn6FmUW
         89jLVUjPeHqmaH4qZZdq3ZnIuhK8j9UOTxx0iuHx6vpY6gZ8HzwOUK9NYRQo9Q/2Tjjm
         CSojAQwLYGxmDbAGPoIaVQa+zbysvI7uMPNf/dWkFG/DdkWwnSlZ8e5j9ptWv6OO2Ard
         eF/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/7LU6OvFl3Feqy8zNRNP7sqBfgpWtRbOx0GlM8WH33c=;
        b=ic6wTm8YS+VMW1r+1kXHREbIsjTWBOfA0nj95jl+k2ziz6IFF4EBzEHe0Mb/ppGKAz
         usi7ys5NYXz9B2KrYKm58qhU/Jg9fzl74p+BRRLah2ZlASl8f7j1CfRz/417Do4UPjYI
         5I3ymPLntOTvwA3RwND3XlD7lADe4rwRZ9QXxq1qV35raWMbgC9y/cOItW/ZudwiMR6u
         DTiKTTqLlKlnJNaSg4pJ1hA9i/s2qsjTKKUjSl/rAuTFQdg1i8l55RpGmKlZUoYC/SiR
         ffQObaFuAsjJOEm3minnGjVlNTHAFwQ23t+SzcfLh3T507yyG2m20nyWd/7klpqwm4K+
         aKEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQGAOejv;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/7LU6OvFl3Feqy8zNRNP7sqBfgpWtRbOx0GlM8WH33c=;
        b=H9veqM40K8FfwpVJZpGyUkKfTlAhp1mGch0qSpY6PLyKXaxN2ClU1+Z1RgF35xUT0z
         cTFINHXgkZnKxAKLzijrqjZ5J/a9O6mm2r6CKllBJANi9rEeOF+C2vMHWswrxcxKfOsm
         rRiFYdhZORK7cKXj3XxlKPbi4IaBaSN2mRL4S8I1Zj+WT3+C9OziKgjRmCdIhQNQECLq
         dDGEnKe/0UnHCwjGBR9JRv3APQ9kDoK2PNt4HDq1iwJfU/+ypak2LxqNm8l7Gv5uFn00
         UBSNlBrUHB2j8ejCK/wXSUDbFMOaH+6x5u198dDJKvJBbaY7KkqPC1PSNaI+Uy4AxE5C
         Z8ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/7LU6OvFl3Feqy8zNRNP7sqBfgpWtRbOx0GlM8WH33c=;
        b=VzBlu/2Bofg+jpHzWPLJwY/n5ZLT5zpLghLYJbCVvSOG8qg2KvDnRghfjVEu0nN5Ff
         22rRSkTWdlud0eSDytEcSMsbLbjl4/yDUa/XIeXdF68DkHg50pXbPK82SeuKupP6/Ox/
         qzW8pKs5tH8QA2pxW5pMdm/52+mJkB1kjNKx5t0FOUx/vDWHyBKqIGAXDUjeGrn74wMu
         Bfo512Ra3vj7VtFtMW0piRZveVAjAoeETwK0ikxZ/2XwBeH/yB7R5NwW+VSi6ROTB5rA
         ZDruoa6t4DrI8f2KctsF6Q6H7s3BiSRiZLvlRN7DPTSM5ZfV56kSosx8OME1lZDCNyAE
         juIw==
X-Gm-Message-State: AGi0PuZJjQIcEHB290c5ODnAb3qLhZDLRShHhXRyWbJgwxkgZlWOgvAb
	olJRIS/A7YlKrt/5QjMSbyk=
X-Google-Smtp-Source: APiQypIVydDHVIcgRkUFmFjuiI2fV9x2A2Zu2XEFKpmcDzMllB+hfsYR+gP4+/UnEvuwr4ylVSGpaQ==
X-Received: by 2002:a37:9586:: with SMTP id x128mr4430408qkd.90.1588270060106;
        Thu, 30 Apr 2020 11:07:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f4d1:: with SMTP id o17ls948061qvm.6.gmail; Thu, 30 Apr
 2020 11:07:39 -0700 (PDT)
X-Received: by 2002:a05:6214:1853:: with SMTP id d19mr113034qvy.150.1588270059669;
        Thu, 30 Apr 2020 11:07:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588270059; cv=none;
        d=google.com; s=arc-20160816;
        b=EYymXe3kaMug8peSOyVvm1scEmp0Wfq+Qt/k80OGHjGcELJy4xJpKc8r5ryBb/dbiv
         ILDiYAsgWYIEEDmJNDp5vlu9EVxR303um1k3qvESPAaYRY3IVKfgbwF4Cj/1MLylHeaX
         P6jaWokst8BAjAk1aoA227iWUhoJ0VFZeY99t4RIaIiz3WjamXxCCTPTkeW9BGgEE7Bx
         +xiRUf3zUdTjWX5gMzkS5hPmk8otXODS6+aAdTAj7Z4TFkEp6VEv6D86uyKBRfbpeAuA
         Q/ip9kkerLc/2L9IyEdi7qBAte4bjnwULroMY6fFw+gMhqFXJCl9vzAUdFryzAC9R1rc
         lAMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TpWwj2w6Gw1iWfhLPeP97JT/lnGVtBrnAe2JO86b7eE=;
        b=GHfjOaDSXg9KvU2Og5c/8jLn1r3RenvYknsIBpZxcq/p0IiCxwFvqE0VCMuS5Ledel
         OE/au12DWCAo/CaLOmyWtloXfSOyMseAGUSpBhxRYD0cjLFEDfReeKZ+NmLKffau6E3h
         qqNng2jGpmzy8/NzpXkrGliagVPJpmCgDGsyM30Jsnk2GFKSUpURFrqo9MYXmG72qC73
         JpQW/uY4n7H8Q3mnAFDoLHDaHt80KP81Z3K2CHHaj7o+SFaGMKgz5Kyg/qgEbdMEbd2l
         W3ZDga3FLPDn0dHY4ENDkLK4Xej9hkxLpHz1A8FFGx2yDYVzHLkQMxnkWTWZ76XpHs1s
         AieQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQGAOejv;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id e7si59108qtc.5.2020.04.30.11.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 11:07:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id l5so3670506ybf.5
        for <clang-built-linux@googlegroups.com>; Thu, 30 Apr 2020 11:07:39 -0700 (PDT)
X-Received: by 2002:a25:4290:: with SMTP id p138mr8323839yba.45.1588270058766;
 Thu, 30 Apr 2020 11:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <202004300910.89Gqs7ny%lkp@intel.com> <CAKwvOdnio2btiaR_TXskHnwXRUBkajSGtQC-8ZEU2mYY4Vt-UA@mail.gmail.com>
In-Reply-To: <CAKwvOdnio2btiaR_TXskHnwXRUBkajSGtQC-8ZEU2mYY4Vt-UA@mail.gmail.com>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 30 Apr 2020 11:07:27 -0700
Message-ID: <CABXOdTeUUKFqweBGnAEfZt4A=KYTUcMAcLG58W6Yvhr1mZ3RLg@mail.gmail.com>
Subject: Re: [chrome-os:chromeos-5.4 7926/8251] /bin/bash: line 1: 169365
 Aborted ld.lld -EL -maarch64elf -r -o fs/xfs/xfs.o fs/xfs/xfs_trace.o
 fs/xfs/libxfs/xfs_ag.o fs/xfs/libxfs/xfs_alloc.o fs/xfs/libxfs/xfs_alloc_btree.o
 fs/xfs/libxfs/xfs_attr.o fs/xfs/libxfs/xfs_attr_leaf.o fs/xfs/libxfs/xfs_attr_remote.o
 fs/xfs/libxfs/xfs_bit.o fs/xfs/libxfs/xfs_bmap.o fs/xfs/libxfs/xfs_bmap_btree.o
 fs/xfs/libxfs/xfs_btree.o fs/xfs/libxfs/xfs_da_btree.o fs/xfs/libxfs/xfs_da_format.o
 fs/xfs/libxfs/xfs_defer.o fs/xfs/libxfs/xfs_dir2.o fs/xfs/libxfs/xfs_dir2_block.o
 fs/xfs/libxfs/xfs_dir2_data.o fs/xfs/libxfs/xfs_dir2_leaf.o
 fs/xfs/libxfs/xfs_dir2_node.o fs/xfs/libxfs/xfs_dir2_sf.o fs/xfs/libxfs/xfs_dquot_buf.o
 fs/xfs/libxfs/xfs_ialloc.o fs/xfs/libxfs/xfs_ialloc_btree.o
 fs/xfs/libxfs/xfs_iext_tree.o fs/xfs/libxfs/xfs_inode_fork.o
 fs/xfs/libxfs/xfs_inode_buf.o fs/xfs/libxfs/xfs_log_rlimit.o
 fs/xfs/libxfs/xfs_ag_resv.o fs/xfs/libxfs/xfs_rmap.o fs/xfs/libxfs/xfs_rmap_btree.o
 fs/xfs/libxfs/xfs_
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, cros-kernel-buildreports@googlegroups.com, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: groeck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LQGAOejv;       spf=pass
 (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b32 as
 permitted sender) smtp.mailfrom=groeck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Guenter Roeck <groeck@google.com>
Reply-To: Guenter Roeck <groeck@google.com>
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

On Thu, Apr 30, 2020 at 10:32 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Apr 29, 2020 at 7:00 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel=
 chromeos-5.4
> > head:   4000df1bae9f7f207866ae217aeacd5791fb27dc
> > commit: f885388f865117e996d062da443facb91bc95bf2 [7926/8251] Revert "BA=
CKPORT: FROMGIT: ASoC: Intel: sof_rt5682: Add rt1015 speaker amp support"
> > config: arm64-randconfig-a001-20200429 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f3=
0416fdde922eaa655934e050026930fefbd260)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         git checkout f885388f865117e996d062da443facb91bc95bf2
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Darm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > Note: the chrome-os/chromeos-5.4 HEAD 4000df1bae9f7f207866ae217aeacd579=
1fb27dc builds fine.
> >       It only hurts bisectibility.
> >
> > All errors (new ones prefixed by >>):
> >
> >    terminate called after throwing an instance of 'std::system_error'
> >      what():  Resource temporarily unavailable
> >    PLEASE submit a bug report to https://bugs.llvm.org/ and include the=
 crash backtrace.
> >     #0 0x0000558db9447c0a llvm::sys::PrintStackTrace(llvm::raw_ostream&=
) (/opt/cross/clang-1ccde53342/bin/lld+0x896c0a)
> >     #1 0x0000558db9445b55 llvm::sys::RunSignalHandlers() (/opt/cross/cl=
ang-1ccde53342/bin/lld+0x894b55)
> >     #2 0x0000558db9445c72 SignalHandler(int) (/opt/cross/clang-1ccde533=
42/bin/lld+0x894c72)
> >     #3 0x00007f4b42246110 __restore_rt (/lib/x86_64-linux-gnu/libpthrea=
d.so.0+0x14110)
> >     #4 0x00007f4b41d6c761 raise (/lib/x86_64-linux-gnu/libc.so.6+0x3b76=
1)
> >     #5 0x00007f4b41d5655b abort (/lib/x86_64-linux-gnu/libc.so.6+0x2555=
b)
> >     #6 0x00007f4b420ef80c (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x9=
a80c)
> >     #7 0x00007f4b420fa8f6 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa=
58f6)
> >     #8 0x00007f4b420fa961 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa=
5961)
> >     #9 0x00007f4b420fabf5 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa=
5bf5)
> >    #10 0x00007f4b420f2478 std::__throw_system_error(int) (/usr/lib/x86_=
64-linux-gnu/libstdc++.so.6+0x9d478)
> >    #11 0x00007f4b42123e69 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xc=
ee69)
> >    #12 0x0000558dbbcbd264 std::thread::_State_impl<std::_Bind_simple<ll=
vm::parallel::detail::(anonymous namespace)::ThreadPoolExecutor::ThreadPool=
Executor(llvm::ThreadPoolStrategy)::'lambda'() ()> >::_M_run() (/opt/cross/=
clang-1ccde53342/bin/lld+0x310c264)
> >    #13 0x00007f4b42123be0 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xc=
ebe0)
> >    #14 0x00007f4b4223af27 start_thread (/lib/x86_64-linux-gnu/libpthrea=
d.so.0+0x8f27)
>
> ^ LLD failed to start a thread. First time I've seen such a failure,
> will keep my eye out to see if we see this again.
>

I have seen this happen with a broken build which caused make
recursion until the system ran out of resources (pids). In that case,
defconfig was removed from the architecture, but KBUILD_DEFCONFIG was
not set. See upstream commit ededa081ed20 ("parisc: Fix defconfig
selection") for details. Maybe something similar is happening here ?
Not because of defconfig, presumably, but maybe there is some other
recursion.

Guenter

> >    #15 0x00007f4b41e2e2ef clone (/lib/x86_64-linux-gnu/libc.so.6+0xfd2e=
f)
> > >> /bin/bash: line 1: 169365 Aborted                 ld.lld -EL -maarch=
64elf -r -o fs/xfs/xfs.o fs/xfs/xfs_trace.o fs/xfs/libxfs/xfs_ag.o fs/xfs/l=
ibxfs/xfs_alloc.o fs/xfs/libxfs/xfs_alloc_btree.o fs/xfs/libxfs/xfs_attr.o =
fs/xfs/libxfs/xfs_attr_leaf.o fs/xfs/libxfs/xfs_attr_remote.o fs/xfs/libxfs=
/xfs_bit.o fs/xfs/libxfs/xfs_bmap.o fs/xfs/libxfs/xfs_bmap_btree.o fs/xfs/l=
ibxfs/xfs_btree.o fs/xfs/libxfs/xfs_da_btree.o fs/xfs/libxfs/xfs_da_format.=
o fs/xfs/libxfs/xfs_defer.o fs/xfs/libxfs/xfs_dir2.o fs/xfs/libxfs/xfs_dir2=
_block.o fs/xfs/libxfs/xfs_dir2_data.o fs/xfs/libxfs/xfs_dir2_leaf.o fs/xfs=
/libxfs/xfs_dir2_node.o fs/xfs/libxfs/xfs_dir2_sf.o fs/xfs/libxfs/xfs_dquot=
_buf.o fs/xfs/libxfs/xfs_ialloc.o fs/xfs/libxfs/xfs_ialloc_btree.o fs/xfs/l=
ibxfs/xfs_iext_tree.o fs/xfs/libxfs/xfs_inode_fork.o fs/xfs/libxfs/xfs_inod=
e_buf.o fs/xfs/libxfs/xfs_log_rlimit.o fs/xfs/libxfs/xfs_ag_resv.o fs/xfs/l=
ibxfs/xfs_rmap.o fs/xfs/libxfs/xfs_rmap_btree.o fs/xfs/libxfs/xfs_refcount.=
o fs/xfs/libxfs/xfs_refcount_btree.o fs/xfs/libxfs/xfs_sb.o fs/xfs/libxfs/x=
fs_symlink_remote.o fs/xfs/libxfs/xfs_trans_inode.o fs/xfs/libxfs/xfs_trans=
_resv.o fs/xfs/libxfs/xfs_types.o fs/xfs/xfs_aops.o fs/xfs/xfs_attr_inactiv=
e.o fs/xfs/xfs_attr_list.o fs/xfs/xfs_bmap_util.o fs/xfs/xfs_bio_io.o fs/xf=
s/xfs_buf.o fs/xfs/xfs_dir2_readdir.o fs/xfs/xfs_discard.o fs/xfs/xfs_error=
.o fs/xfs/xfs_export.o fs/xfs/xfs_extent_busy.o fs/xfs/xfs_file.o fs/xfs/xf=
s_filestream.o fs/xfs/xfs_fsmap.o fs/xfs/xfs_fsops.o fs/xfs/xfs_globals.o f=
s/xfs/xfs_health.o fs/xfs/xfs_icache.o fs/xfs/xfs_ioctl.o fs/xfs/xfs_iomap.=
o fs/xfs/xfs_iops.o fs/xfs/xfs_inode.o fs/xfs/xfs_itable.o fs/xfs/xfs_iwalk=
.o fs/xfs/xfs_message.o fs/xfs/xfs_mount.o fs/xfs/xfs_mru_cache.o fs/xfs/xf=
s_pwork.o fs/xfs/xfs_reflink.o fs/xfs/xfs_stats.o fs/xfs/xfs_super.o fs/xfs=
/xfs_symlink.o fs/xfs/xfs_sysfs.o fs/xfs/xfs_trans.o fs/xfs/xfs_xattr.o fs/=
xfs/kmem.o fs/xfs/xfs_log.o fs/xfs/xfs_log_cil.o fs/xfs/xfs_bmap_item.o fs/=
xfs/xfs_buf_item.o fs/xfs/xfs_extfree_item.o fs/xfs/xfs_icreate_item.o fs/x=
fs/xfs_inode_item.o fs/xfs/xfs_refcount_item.o fs/xfs/xfs_rmap_item.o fs/xf=
s/xfs_log_recover.o fs/xfs/xfs_trans_ail.o fs/xfs/xfs_trans_buf.o fs/xfs/xf=
s_sysctl.o fs/xfs/xfs_ioctl32.o fs/xfs/xfs_pnfs.o
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
gid/clang-built-linux/202004300910.89Gqs7ny%25lkp%40intel.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CABXOdTeUUKFqweBGnAEfZt4A%3DKYTUcMAcLG58W6Yvhr1mZ3RLg%40m=
ail.gmail.com.
