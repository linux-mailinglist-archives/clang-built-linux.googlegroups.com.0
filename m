Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWUXVT2QKGQEHSWLHNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD791C03ED
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 19:33:17 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id 9sf2271810pjz.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 10:33:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588267996; cv=pass;
        d=google.com; s=arc-20160816;
        b=US432caDNKKxZ9/2MI95AtDCFFvSNAb9xC47/QXoeL312MOaA4KCMEqOKI+8NQ2AQw
         AV9uOHTsHT5Jhsuk3ORbHAsvk2yFs63M5mWoHvdl+/hzJ1yxSEkw666PsJtGDSI8i60A
         4G6rwBiZo0hI09rQhW74ddQ64n9+K+h+78bvUZFfbnxNtFdE89bZfsHZ3k7liQ6C8cj+
         AeQP8SOqjboOvAuC2cFseia9eTqGZSTlKEnJoeC5hDZIcN61bZ6GUExYtjSR+8MZfude
         8kVS2OdWW7lC/nHuY5ydTKSHqh334n1L8W5Q+gOmEciEo65mqn8/qrSRRklMlxOTVgEt
         olrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=53wCh+Y7BS8P3on5tBkX22c60dve8MhLGwIUzxMsvIU=;
        b=U8yeA4TZASwxSvDM53iyYwoYKvujvUW9hhheUr/y4c7enpm9wKdVVADF3LyslcQARm
         BPQpgUVz3rfMZtggypvdrfXHlzJj60dmgMdLr79am2r1LIqf7oFzdThk80pU4Ib6EdkZ
         HcrtG9NrXGRw0b9UEDNl+TzNicPF+GE0+8j8mGGE1mn3t9q/wZ0VYLecjEWWAIJz2bgr
         JItsqOSvzXTR13Ju5B5CnkMlokkvWU0+flvuHD9xTCgzm848JMpT/y2OMtLeaUL4wupZ
         aiCsvguNiWwa8vQt6uqjiXSFlYPgrGeTv5eSZYWkXFiQUkh3wc25GtwWkK/c4lFyKd9y
         lX2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DXJhIosv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=53wCh+Y7BS8P3on5tBkX22c60dve8MhLGwIUzxMsvIU=;
        b=WdSUwzy8I0eT16qojqN9kCLe2FuCJm1qucKF2t7ZjTJiRZ0vm0NpGkx1ND2shfqmF9
         uX2BnOELIC6XPoIh+j06Czt+7ebgGzN6DRfcF91VArbJ6hKGyUPVR5kV3M6KNfxHIWl9
         Zk1BW6kZv1ly70RJ+H9NgUPn53NxiKhr8M5r0x9ldlSGmzGLgfJ4lAHdO/QmiS19NzRj
         kJh/1Nux9EEfJPFksJMkUMGV8O96fkokLwzAr4IO3mtXo1QGXAvaLB2Zi45jHKRO6uoO
         IgqMMJvEgmoW3WRc8C3cwVcUOuJzktRwDVTNfK560xWEDNj9mIlmvcVEPMTZJJcPe/9Q
         60lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=53wCh+Y7BS8P3on5tBkX22c60dve8MhLGwIUzxMsvIU=;
        b=i0mYHrdOfyFrIKvsuJzwMb/CeuCYWawchhRojYvUJMPCk1vLvaBDoIcesfF/rkAokO
         LAg3Hqj0LbOdKC2zEjCCW4Ouwfq5Ig56EfvcklaYBeA4Jr7SEVsKOwtZzhWpxqlUv6ZH
         XU/noKy/BUycH/XdlvkVBk6/p1Rgzo9b1mF7NO9/Z29yvcDJpyIzmwyFEsgeQZH4SZeR
         kkqJ7IqzRK8RCJPVMfEMBxm3bMooQUmsYhA1mAm8vl2c03tsPLKMth4FwbK1T7dZaCrh
         H24UAlTcFxplQRTUODdz3iqMLhQTms8kSsMmBLgTcp7Toh6O+4BcbTnyzOn+ZqIg//NV
         cdVQ==
X-Gm-Message-State: AGi0PuZ6JmqfBqPsPSS5wUD31pcYZFFjllulHEi7S21R2zVr5862YvQ8
	gESS6CcHA/g1Y9H1UbCGANM=
X-Google-Smtp-Source: APiQypK32ztRTlgwIbwTeyY8mufF38tDtX0SZWPRUQx45RodYu51o64iJ3bv4YetTVgYZEL2t3t7WA==
X-Received: by 2002:a62:7ece:: with SMTP id z197mr444790pfc.244.1588267994956;
        Thu, 30 Apr 2020 10:33:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c713:: with SMTP id o19ls2928380pjt.1.gmail; Thu, 30
 Apr 2020 10:33:14 -0700 (PDT)
X-Received: by 2002:a17:902:a40e:: with SMTP id p14mr34521plq.297.1588267994462;
        Thu, 30 Apr 2020 10:33:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588267994; cv=none;
        d=google.com; s=arc-20160816;
        b=A5bwP3byzmLexjzgyurTI3w0SQENYbbhyD8eIWq3AoTU+yHOWgtTxXGjcG53mWDPDB
         GCiMoKeVl+U9HqUtYAp5uwnZ7s/sxJEphpBihFCL8udTHoL2577uWZuJ3j3IEMuczhhA
         qMlAjOa+YFcUqQ0qvVr+qhToRyxh/iWa+EqQ3m0r61KUxDlxeqdrtxOstwSvyYclSkX8
         sryhETNZUxiq59Ar72FyC9RamVkSNHGMFYui0jRcTYXyI3Cebr1E0cKQ7TL3R0bBvEdV
         v7D9T885wvx5mv67Zxy9DAQr/xemBsoQp0gSZuTGjKwrX0JMUWiPotsJZVBUEdDuKEGO
         ltBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZTKrKN96kk2UpGqRVwicQX8u/rD8oUY34WZJT26QaTM=;
        b=kaC12O772/dAei9m85DYKbqhwXyJ76PrsnB9jsaG2B/N5+Ce9+4drDyoVmvGOdVmpe
         05p/ydUjJyDQL4Vq6QAHdJCEe1Jrecmv9sxwrxSe/BdMc114bowgeI3lcQrRma2wKp6Q
         LRYmIGh4jRMrNLPT1oum3+/XRk+wbmihTvq/fE8UJwn8BuNNf6z5tjyR+Enl9Z+QGxSe
         Os6pqms3zjgrB6nEwenf3m9lL4FfvESVYoUcyLOh5sPGTfq+qwvQuvl6svKXalVhlD5f
         G5VrHghj8ZIW1xIK6L2JhdoSsMxPP04ZotEtKAqrRX0cW/h9IX4jslooxyOgd5NN3Mn9
         Uwkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DXJhIosv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id t141si69748pfc.5.2020.04.30.10.33.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 10:33:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id y25so121273pfn.5
        for <clang-built-linux@googlegroups.com>; Thu, 30 Apr 2020 10:33:14 -0700 (PDT)
X-Received: by 2002:aa7:9535:: with SMTP id c21mr391709pfp.39.1588267993818;
 Thu, 30 Apr 2020 10:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <202004300910.89Gqs7ny%lkp@intel.com> <20200430023120.GA24491@intel.com>
In-Reply-To: <20200430023120.GA24491@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 30 Apr 2020 10:33:03 -0700
Message-ID: <CAKwvOdmC7Fvk8KczMrDw9w7PT=VmAhXbcsmHpZk3wTL5xqFkCQ@mail.gmail.com>
Subject: Re: [kbuild-all] [chrome-os:chromeos-5.4 7926/8251] /bin/bash: line
 1: 169365 Aborted ld.lld -EL -maarch64elf -r -o fs/xfs/xfs.o
 fs/xfs/xfs_trace.o fs/xfs/libxfs/xfs_ag.o fs/xfs/libxfs/xfs_alloc.o
 fs/xfs/libxfs/xfs_alloc_btree.o fs/xfs/libxfs/xfs_attr.o fs/xfs/libxfs/xfs_attr_leaf.o
 fs/xfs/libxfs/xfs_attr_remote.o fs/xfs/libxfs/xfs_bit.o fs/xfs/libxfs/xfs_bmap.o
 fs/xfs/libxfs/xfs_bmap_btree.o fs/xfs/libxfs/xfs_btree.o fs/xfs/libxfs/xfs_da_btree.o
 fs/xfs/libxfs/xfs_da_format.o fs/xfs/libxfs/xfs_defer.o fs/xfs/libxfs/xfs_dir2.o
 fs/xfs/libxfs/xfs_dir2_block.o fs/xfs/libxfs/xfs_dir2_data.o
 fs/xfs/libxfs/xfs_dir2_leaf.o fs/xfs/libxfs/xfs_dir2_node.o
 fs/xfs/libxfs/xfs_dir2_sf.o fs/xfs/libxfs/xfs_dquot_buf.o fs/xfs/libxfs/xfs_ialloc.o
 fs/xfs/libxfs/xfs_ialloc_btree.o fs/xfs/libxfs/xfs_iext_tree.o
 fs/xfs/libxfs/xfs_inode_fork.o fs/xfs/libxfs/xfs_inode_buf.o
 fs/xfs/libxfs/xfs_log_rlimit.o fs/xfs/libxfs/xfs_ag_resv.o
 fs/xfs/libxfs/xfs_rmap.o fs/xfs/libxfs/xfs_rmap_btree.o fs/xf
To: Philip Li <philip.li@intel.com>
Cc: kbuild test robot <lkp@intel.com>, cros-kernel-buildreports@googlegroups.com, 
	Guenter Roeck <groeck@google.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DXJhIosv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e
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

On Wed, Apr 29, 2020 at 7:33 PM Philip Li <philip.li@intel.com> wrote:
>
> On Thu, Apr 30, 2020 at 09:59:11AM +0800, kbuild test robot wrote:
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
> sorry, kindly ignore this noise, we will add more patterns to handle this
> to only send to clang mailing list.
>
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

^ boom that's twice now. Hmmm

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
>
>
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20200430023120.GA24491%40intel.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmC7Fvk8KczMrDw9w7PT%3DVmAhXbcsmHpZk3wTL5xqFkCQ%40m=
ail.gmail.com.
