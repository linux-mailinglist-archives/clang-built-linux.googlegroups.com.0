Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMEXVT2QKGQEXVVBE6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CA26A1C03EC
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 19:32:33 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id v2sf7217739qvy.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 10:32:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588267953; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ln0xNobMb/gPcujFkBtPtbnayC3Lv/ND9DbkZm0N987PpoDClUT629KcQRYE86RN4C
         sLLUfTwOV2MgV67jDXIriGjJ+8xrkPIRx1KGbesdBwqYUCQ5xN5zswDzwklswlrT5X1M
         LJum4Q0PQg9DQb8jAOF20OzvIuYGHQ2RSJLdSdiZIvG3ZgUvfdMTCUKFXQRNR9QMilBC
         6YSqC1O9erss6zkna2oUzuW0bYUNt2tOam//6YHhhJA3Gn40WBT6guVj4S6puwOayo3l
         a+yuBr2VafaKracek9ScbbnXYu47ooisTdyS892XfzR+vT3Z8FDTVqIKwczsebk1X1cw
         tRmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n9WhGK2Uy4iBTrE1aAKMN/2/aIdoXCCAwHIV1XR10xw=;
        b=zk8H0Ry3Pr2jygM2bEVURQMQaHlz2tvjZG/PZt/He1Rbrt23fswTzcW49/dnMBDRps
         q8xWWknkRzmzRf+LJKGefR5MpcOeBAfisr3g7VbWj1aukjejMEkisNek17wYBfuX9aN9
         T1fgS0a8p86eSBbvfMxGXT2QAaCCMMGu+4hna4gLRPmMCHJKjNJZSYDG7qSr3Yzf+vef
         2+ZixCdKd3anbeOomPFQfZ3pi5cn98xicM0EkGufLrs/mLhml5gQmhoBfIw64CKDIetE
         x5frZEthcPnj+Ma7oYXOWEHaqf2PKsI8I7bjSz/s6ku0ku4hdqPAtCV1NsibDNcnU4TA
         gSSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CZhuqkgH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=n9WhGK2Uy4iBTrE1aAKMN/2/aIdoXCCAwHIV1XR10xw=;
        b=JdfGgA4VA6vQydnVP2IzVdxvwh8Ym3x7EBaTwZ7pXTDBmxY5Il9NPvidX4DWMVPZDb
         IUi5vmFu559SnEAoSOS26ipFfh0HCrfqBll7FFKf6O7Y/BWEzrMcQwnhfz56QMt30ggP
         qjPkxBKMv/hkVJsEIW0BURduVnjPMANr0K6gKKjVDEdWS2enURGGBM9C3VegwrC1TIJU
         zPxSz4eyLaVw0c2QucEvCdQKcEkfi5+qhKx1K+skCuZUVRxR5YcKPVcP5prpI9TtbzpP
         m4MtWfLhkOB+QzMNDFYnl7X61mSKGPMWOucAHomwOOES0o07N5UPCjUeUXnXGdqIYx+E
         W4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9WhGK2Uy4iBTrE1aAKMN/2/aIdoXCCAwHIV1XR10xw=;
        b=OahRHqQFKHjtU0jy+LSr8/apnWR6vhJur2LfLnUhXd1g1oorT2mSPrseXEn60isJDb
         7h6/B0KKMvczHfgo9/YSZVZGvLJkJ0OMLtM/P2EmUeSuEZ9khuQQcOGrMxqSeFufqnvr
         WzYWhMRFwDfC929Ht8MWuBOG5+usoMWK12k/xIohjtXPKE1uJKlHPjzOZO8tEb9ktozT
         NyM2a8YoTFbnCOnQQS9dySQmTvHfdnoFXU5PGSvcrwkNB1df43LOJnLEHU+7MzXoKZHU
         mLmMOSGF8RKJ/tloe7l0ASJ0mtLRRCY0Xe33eJ7wTkKHm8soF8Y4SKlN1JPgHkknWd4O
         MNBA==
X-Gm-Message-State: AGi0Pub+6AnLsuxUYvNX792WyQ7SW+TBEHabRCSCts/m/T0mQcPQtZtf
	hkREJZESbz4oPc2ITNGcLx4=
X-Google-Smtp-Source: APiQypJ8pz9I6EAhqCr5NRnyuQerPYo+RiEtT1rtjjTgQbqwXb40WTWl/HLOFFIl1T4XBG6D/H+9Zg==
X-Received: by 2002:ac8:6799:: with SMTP id b25mr4908987qtp.54.1588267952820;
        Thu, 30 Apr 2020 10:32:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2208:: with SMTP id o8ls1809056qto.10.gmail; Thu, 30 Apr
 2020 10:32:32 -0700 (PDT)
X-Received: by 2002:aed:312a:: with SMTP id 39mr4924033qtg.6.1588267952222;
        Thu, 30 Apr 2020 10:32:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588267952; cv=none;
        d=google.com; s=arc-20160816;
        b=rETT4qeelh8Oe/ZgugeLPwOkDN2Cd3nvoJCWan4bw6yPjqi1hgTitdr6FtpyjUFdpx
         XpBHmxIf+gkwjODA0whXNfklU0qg+FtiNSagthoQT+BhDoqhf/UcIBms0gT2skvREdxj
         Zq8CeRm0fmYeIj/tCMdKYkLkmT9bHl9LzmKl4ROu7tPCn2hbHqUxa1mJeRemMPVa+8Cy
         w+RmpgabV4vXczJdoUCHapakW6RYKs6NkUsbebUewhryfie9lmkq1rQpOiMbzWpUPVia
         uyqRjlqRVo5JMq8B2lH68eMvxk9DbuQHhd9eu9n9/v/iQIb/6dzzLJvBkImChqMNF9M+
         UKsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=54rW8zjZ0nhB5m+/YPK255hFe+Nj0yQcBG155Sl4ITk=;
        b=TqSfZ/f799S6SBq5Y61RFnwJaDJJF21TlF/ngi3JAl5nx8ivz7mKRKJvvZaOPWbh3/
         JSSo4rrGVHFwnRkLpAqud5Bz8c1q9ijQXXiFS0LOKv+ieOKdBjyqyy4RNec0f3zA2jDY
         0s/4/uNfruOUUC4SdrA6znUYBMu5Yok6pqIuqQpfoy/Go/DoOuD1irU+Ctbeqb/m8loK
         l1IHgJ2jyBwqxnWxarMMCHc5g+Zj1YzIjfilx8d/o/xuT27NJsPrGxtxj1joF0doXLbC
         LFwxkpKboZTXB6gk9gbHsni4MJByAJvDgF0GpbPZr2JWAR9nAFLw+WOlgJqrE/6Fc02g
         4WLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CZhuqkgH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id f16si56118qte.3.2020.04.30.10.32.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 10:32:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id t9so983933pjw.0
        for <clang-built-linux@googlegroups.com>; Thu, 30 Apr 2020 10:32:32 -0700 (PDT)
X-Received: by 2002:a17:90a:f194:: with SMTP id bv20mr4307634pjb.27.1588267950887;
 Thu, 30 Apr 2020 10:32:30 -0700 (PDT)
MIME-Version: 1.0
References: <202004300910.89Gqs7ny%lkp@intel.com>
In-Reply-To: <202004300910.89Gqs7ny%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 30 Apr 2020 10:32:20 -0700
Message-ID: <CAKwvOdnio2btiaR_TXskHnwXRUBkajSGtQC-8ZEU2mYY4Vt-UA@mail.gmail.com>
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
To: kbuild test robot <lkp@intel.com>
Cc: cros-kernel-buildreports@googlegroups.com, 
	Guenter Roeck <groeck@google.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CZhuqkgH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

On Wed, Apr 29, 2020 at 7:00 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel c=
hromeos-5.4
> head:   4000df1bae9f7f207866ae217aeacd5791fb27dc
> commit: f885388f865117e996d062da443facb91bc95bf2 [7926/8251] Revert "BACK=
PORT: FROMGIT: ASoC: Intel: sof_rt5682: Add rt1015 speaker amp support"
> config: arm64-randconfig-a001-20200429 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f304=
16fdde922eaa655934e050026930fefbd260)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout f885388f865117e996d062da443facb91bc95bf2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> Note: the chrome-os/chromeos-5.4 HEAD 4000df1bae9f7f207866ae217aeacd5791f=
b27dc builds fine.
>       It only hurts bisectibility.
>
> All errors (new ones prefixed by >>):
>
>    terminate called after throwing an instance of 'std::system_error'
>      what():  Resource temporarily unavailable
>    PLEASE submit a bug report to https://bugs.llvm.org/ and include the c=
rash backtrace.
>     #0 0x0000558db9447c0a llvm::sys::PrintStackTrace(llvm::raw_ostream&) =
(/opt/cross/clang-1ccde53342/bin/lld+0x896c0a)
>     #1 0x0000558db9445b55 llvm::sys::RunSignalHandlers() (/opt/cross/clan=
g-1ccde53342/bin/lld+0x894b55)
>     #2 0x0000558db9445c72 SignalHandler(int) (/opt/cross/clang-1ccde53342=
/bin/lld+0x894c72)
>     #3 0x00007f4b42246110 __restore_rt (/lib/x86_64-linux-gnu/libpthread.=
so.0+0x14110)
>     #4 0x00007f4b41d6c761 raise (/lib/x86_64-linux-gnu/libc.so.6+0x3b761)
>     #5 0x00007f4b41d5655b abort (/lib/x86_64-linux-gnu/libc.so.6+0x2555b)
>     #6 0x00007f4b420ef80c (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x9a8=
0c)
>     #7 0x00007f4b420fa8f6 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa58=
f6)
>     #8 0x00007f4b420fa961 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa59=
61)
>     #9 0x00007f4b420fabf5 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa5b=
f5)
>    #10 0x00007f4b420f2478 std::__throw_system_error(int) (/usr/lib/x86_64=
-linux-gnu/libstdc++.so.6+0x9d478)
>    #11 0x00007f4b42123e69 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xcee=
69)
>    #12 0x0000558dbbcbd264 std::thread::_State_impl<std::_Bind_simple<llvm=
::parallel::detail::(anonymous namespace)::ThreadPoolExecutor::ThreadPoolEx=
ecutor(llvm::ThreadPoolStrategy)::'lambda'() ()> >::_M_run() (/opt/cross/cl=
ang-1ccde53342/bin/lld+0x310c264)
>    #13 0x00007f4b42123be0 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xceb=
e0)
>    #14 0x00007f4b4223af27 start_thread (/lib/x86_64-linux-gnu/libpthread.=
so.0+0x8f27)

^ LLD failed to start a thread. First time I've seen such a failure,
will keep my eye out to see if we see this again.

>    #15 0x00007f4b41e2e2ef clone (/lib/x86_64-linux-gnu/libc.so.6+0xfd2ef)
> >> /bin/bash: line 1: 169365 Aborted                 ld.lld -EL -maarch64=
elf -r -o fs/xfs/xfs.o fs/xfs/xfs_trace.o fs/xfs/libxfs/xfs_ag.o fs/xfs/lib=
xfs/xfs_alloc.o fs/xfs/libxfs/xfs_alloc_btree.o fs/xfs/libxfs/xfs_attr.o fs=
/xfs/libxfs/xfs_attr_leaf.o fs/xfs/libxfs/xfs_attr_remote.o fs/xfs/libxfs/x=
fs_bit.o fs/xfs/libxfs/xfs_bmap.o fs/xfs/libxfs/xfs_bmap_btree.o fs/xfs/lib=
xfs/xfs_btree.o fs/xfs/libxfs/xfs_da_btree.o fs/xfs/libxfs/xfs_da_format.o =
fs/xfs/libxfs/xfs_defer.o fs/xfs/libxfs/xfs_dir2.o fs/xfs/libxfs/xfs_dir2_b=
lock.o fs/xfs/libxfs/xfs_dir2_data.o fs/xfs/libxfs/xfs_dir2_leaf.o fs/xfs/l=
ibxfs/xfs_dir2_node.o fs/xfs/libxfs/xfs_dir2_sf.o fs/xfs/libxfs/xfs_dquot_b=
uf.o fs/xfs/libxfs/xfs_ialloc.o fs/xfs/libxfs/xfs_ialloc_btree.o fs/xfs/lib=
xfs/xfs_iext_tree.o fs/xfs/libxfs/xfs_inode_fork.o fs/xfs/libxfs/xfs_inode_=
buf.o fs/xfs/libxfs/xfs_log_rlimit.o fs/xfs/libxfs/xfs_ag_resv.o fs/xfs/lib=
xfs/xfs_rmap.o fs/xfs/libxfs/xfs_rmap_btree.o fs/xfs/libxfs/xfs_refcount.o =
fs/xfs/libxfs/xfs_refcount_btree.o fs/xfs/libxfs/xfs_sb.o fs/xfs/libxfs/xfs=
_symlink_remote.o fs/xfs/libxfs/xfs_trans_inode.o fs/xfs/libxfs/xfs_trans_r=
esv.o fs/xfs/libxfs/xfs_types.o fs/xfs/xfs_aops.o fs/xfs/xfs_attr_inactive.=
o fs/xfs/xfs_attr_list.o fs/xfs/xfs_bmap_util.o fs/xfs/xfs_bio_io.o fs/xfs/=
xfs_buf.o fs/xfs/xfs_dir2_readdir.o fs/xfs/xfs_discard.o fs/xfs/xfs_error.o=
 fs/xfs/xfs_export.o fs/xfs/xfs_extent_busy.o fs/xfs/xfs_file.o fs/xfs/xfs_=
filestream.o fs/xfs/xfs_fsmap.o fs/xfs/xfs_fsops.o fs/xfs/xfs_globals.o fs/=
xfs/xfs_health.o fs/xfs/xfs_icache.o fs/xfs/xfs_ioctl.o fs/xfs/xfs_iomap.o =
fs/xfs/xfs_iops.o fs/xfs/xfs_inode.o fs/xfs/xfs_itable.o fs/xfs/xfs_iwalk.o=
 fs/xfs/xfs_message.o fs/xfs/xfs_mount.o fs/xfs/xfs_mru_cache.o fs/xfs/xfs_=
pwork.o fs/xfs/xfs_reflink.o fs/xfs/xfs_stats.o fs/xfs/xfs_super.o fs/xfs/x=
fs_symlink.o fs/xfs/xfs_sysfs.o fs/xfs/xfs_trans.o fs/xfs/xfs_xattr.o fs/xf=
s/kmem.o fs/xfs/xfs_log.o fs/xfs/xfs_log_cil.o fs/xfs/xfs_bmap_item.o fs/xf=
s/xfs_buf_item.o fs/xfs/xfs_extfree_item.o fs/xfs/xfs_icreate_item.o fs/xfs=
/xfs_inode_item.o fs/xfs/xfs_refcount_item.o fs/xfs/xfs_rmap_item.o fs/xfs/=
xfs_log_recover.o fs/xfs/xfs_trans_ail.o fs/xfs/xfs_trans_buf.o fs/xfs/xfs_=
sysctl.o fs/xfs/xfs_ioctl32.o fs/xfs/xfs_pnfs.o
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
d/clang-built-linux/202004300910.89Gqs7ny%25lkp%40intel.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnio2btiaR_TXskHnwXRUBkajSGtQC-8ZEU2mYY4Vt-UA%40mai=
l.gmail.com.
