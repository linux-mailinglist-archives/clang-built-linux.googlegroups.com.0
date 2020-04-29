Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB5FNUT2QKGQEMYGDY7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id C01D11BD445
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 07:56:05 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id s126sf1333282pgc.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 22:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588139764; cv=pass;
        d=google.com; s=arc-20160816;
        b=is4nVCUJ+x7VVnXMpQv4aBum9AIBQvwflQ54RYjODbdtxFfvAL9BSx9h4wrg4jnts7
         gdLbBvxvs+igkKHb4i4kCbpKfr7aWdlzstgAAtRGhsrCsyKlLFzbS54z4rkrzNtVeEVc
         5XH14YHKj8DqjZNTjcDjA1XvuHom5jcKvVzig0dcvpqo9zkMvwairRf6lNtX7AtZi17n
         IUBMTeGTQSNJIXiYvTQIZbykdeYxEIZofBGNf0vr0OvOjnJS+vg/5sQnTisZUBjcOxjU
         wgjEEGhuEOFDF89+aUzG9h75piPiX3eC2QhNvPrT1lkTMCbxFkUfG1+vj5gEulGaidl9
         we9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=kYgherZpxbdWp+jK8gCT9lWm84d+nbbxrkEqMIn+unM=;
        b=dpsaPyiUoPmx6CqIM7w2nS53XH7yzb5rRPEliPZkCjWWCzj4YLH+lkGrUqRbSfMt5/
         g3oZ0mkI1glICOh+ps79/u2r7Vsjg7fqB3kHCRtjmo2H3Sghz16/20yunmWlvgSjHjzT
         Z+ijo0xa5lTg1zA7uWmkEmc40ybb5ByDCYyzBSCHTuJkRVmCyOnqBT+tepplAiv8oo90
         6SiaA0A77NtxsKPCS83iLjvnq0SklLndhm+KLgYP9axjqDiLgNJSaEYo6AigaO1zyYyH
         ZyK5uATMGkl6ZK68Yt8x00jfBAFJw0IFWRQedI3Vl7JtnNODD9zuAR5QEg8vGwTX/tTh
         p2QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kYgherZpxbdWp+jK8gCT9lWm84d+nbbxrkEqMIn+unM=;
        b=pGSeRvdjBB0+0iwg6MH1CTaJjFm0BtOTWgr5aWRzCMHFytBss8yNc8n9bXzvuw9Evr
         1WExr/I8mh2yj3g9zulCHPEpw1oNjR81dmjwU1ccfrKq80t5ON2tNdWjiy0PNQ7v0CnE
         jIIFKE3QmeuIQOKmOSTIhgGdphFVUfDQshuJDQLSIgCCchHe4yoGcQpbjLwRADrn7C1C
         OJWhELgoa7aErfZ9hAbnIo/Ldn78roIonpsv3NbW1hpllSpcxcxu1E2iv0ZFwhxlgvwd
         dCLh6Ik6agdiQr8QHcld3XEh/RhaJKUYScGxliixp6AHl5OmOMgi0UxbdFc4wjbTl9Jt
         Klcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYgherZpxbdWp+jK8gCT9lWm84d+nbbxrkEqMIn+unM=;
        b=saJQxlQqESlsLGBTWH2wurUwNcW3liBv9dKUpFFPTI/QfxdalqiBEFHy61Q4kXc+zo
         REYR3j39h0dNIHZZVYoHkNqdJC3YiTGMuOSCEdDXKlS4ToizFZnYBoTi1YXLwLU/GuOY
         MyN9lGmew+XJ5cwaME2cKxPDeY5Do4qB0PgGmUBLgBRIqW5Sw8ne8QnjxRkkJoXnGDNt
         RQt8ANEWYR/Ao6LC1KXLd4Z3iwtVtvDRtyp9WRTor3NHF+xH6y1Hw7GtN6pqUDRteRUU
         vr2JkFh6wC33X9ofsML+9l1AuyAAhyYoLNe7xpsMUNJsEntAG/RmPWC56aoIfcFiNKd5
         /TTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYOs5KaGLSAcJU5HhSytNGxDBwN48wBEpMefAh0Nta2FASmCf3Z
	BbUF6Y0ToT+oWqfJZWpVDY4=
X-Google-Smtp-Source: APiQypLCxBKw1ZUMrecn4wQgb0zFKS86bLjvg93wo2aztvDlPstVSOCcCOQgRL5F4Ik44Mx5CXGDOA==
X-Received: by 2002:a17:90a:cb09:: with SMTP id z9mr1309767pjt.120.1588139764210;
        Tue, 28 Apr 2020 22:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1b0a:: with SMTP id b10ls4830436pgb.1.gmail; Tue, 28 Apr
 2020 22:56:03 -0700 (PDT)
X-Received: by 2002:a05:6a00:12:: with SMTP id h18mr33528504pfk.293.1588139763707;
        Tue, 28 Apr 2020 22:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588139763; cv=none;
        d=google.com; s=arc-20160816;
        b=eFWxfdq8l77g/PUJchpTqv4qjYPZnFzuaO5x/33iFB2kGSeIsdcwPrsdWcif7zvGu2
         kxfh714ySuVSZjihEQJKOXc7hmRpN3bXzr32pAFye0z6HUmgU8EJnFqn02ckAPxRNp28
         kEYtW5/At8lmWzSMV2gvmx7cFtMIhny4lkAlTjX6wrrzX1RYhddy4IVoY8N/9xMBcays
         5xF31pHU34yErUewrzruEvd6jA55y7qyEU1Uk4belw/NodCZQ1XuaJAhZoTPGKYpHtD0
         i6Q7xPRfSCg2a9eto+WwiHTtHr1rDV2Wpxgj0EW8YWRyfm6YovoKH9SJSdQmawoaXpMu
         7ahw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=XyDZ9PwLipynGYR+fxRCQ1FZ1cFVTWuxUOiB6E7wgXs=;
        b=cdTdTNqbTmoJANs5mGBpbAmuLDhgQMEQ04tqX4ndGihGP4mt7ilJdhDC+gcI3jjbYu
         oacCeACPTZU7b232l+i6TR0pIoLxtdHdetknwUVCK7VFRq5Ux6k66wI16mKOwLt3f3xf
         QXgjEIT+LZVrgnwMG3DYRe6CDZAx22EfZPKgo/YTUwA2ZuIlkYFCH4xDHIsqRB9CLg88
         H8da4qz7tiKUDc9Uk3HoJhDha9+o6DrYOYgPY9yEa1asFRWIk3QP0IaobSO9avX0J8j8
         s349ABO9EYQfO/gLlDs3qVg0hDj9Y42Ovk2aMUx79uYYSLu0tMIaNCHO4qyQzZpxnteN
         1LHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id k3si443473plt.1.2020.04.28.22.56.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2020 22:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: hg9tLtwxFXTsubmHc/c7YRkD5SYzNbuQn3sNu8QIR7cGoVt2qV5BRgwoQTfmPlf8UedVQ/OlS/
 O/Kwa8hMnduQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2020 22:56:03 -0700
IronPort-SDR: B0JgUffTQhGbcc8y2ebju1vSOWyPd1I6x0gAxzpXFVfuHVgDXbXZ0c9+RFYvMOq5InpKbxR5b7
 BT63GB7ZVryg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,330,1583222400"; 
   d="scan'208";a="459068728"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 28 Apr 2020 22:56:00 -0700
Date: Wed, 29 Apr 2020 13:54:04 +0800
From: Philip Li <philip.li@intel.com>
To: kbuild test robot <lkp@intel.com>
Cc: cros-kernel-buildreports@googlegroups.com,
	Guenter Roeck <groeck@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] [chrome-os:chromeos-5.4 1/8]
Message-ID: <20200429055404.GC17607@intel.com>
References: <202004291310.2Irtmsr3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202004291310.2Irtmsr3%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Apr 29, 2020 at 01:22:11PM +0800, kbuild test robot wrote:
> tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel c=
hromeos-5.4
> head:   7e2879120f0e620e811aa06f640349abceb757bb
> commit: 3ed857bc071c551114ae12c184e667a1acb9377f [1/8] FROMGIT: platform/=
chrome: typec: Fix ret value check error
> config: mips-randconfig-a001-20200424 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 10bc=
12588dac532fad044b2851dde8e7b9121e88)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         git checkout 3ed857bc071c551114ae12c184e667a1acb9377f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dmips=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
sorry, pls ignore this report, which should not send to chromeos side, we w=
ill fix
the problem asap.

>=20
>    terminate called after throwing an instance of 'std::system_error'
>      what():  Resource temporarily unavailable
>    PLEASE submit a bug report to https://bugs.llvm.org/ and include the c=
rash backtrace.
>    LLVM ERROR: out of memory
> >> /bin/bash: line 1: 99452 Aborted                 ld.lld -m elf32btsmip=
 -r -o fs/xfs/xfs.o fs/xfs/xfs_trace.o fs/xfs/libxfs/xfs_ag.o fs/xfs/libxfs=
/xfs_alloc.o fs/xfs/libxfs/xfs_alloc_btree.o fs/xfs/libxfs/xfs_attr.o fs/xf=
s/libxfs/xfs_attr_leaf.o fs/xfs/libxfs/xfs_attr_remote.o fs/xfs/libxfs/xfs_=
bit.o fs/xfs/libxfs/xfs_bmap.o fs/xfs/libxfs/xfs_bmap_btree.o fs/xfs/libxfs=
/xfs_btree.o fs/xfs/libxfs/xfs_da_btree.o fs/xfs/libxfs/xfs_da_format.o fs/=
xfs/libxfs/xfs_defer.o fs/xfs/libxfs/xfs_dir2.o fs/xfs/libxfs/xfs_dir2_bloc=
k.o fs/xfs/libxfs/xfs_dir2_data.o fs/xfs/libxfs/xfs_dir2_leaf.o fs/xfs/libx=
fs/xfs_dir2_node.o fs/xfs/libxfs/xfs_dir2_sf.o fs/xfs/libxfs/xfs_dquot_buf.=
o fs/xfs/libxfs/xfs_ialloc.o fs/xfs/libxfs/xfs_ialloc_btree.o fs/xfs/libxfs=
/xfs_iext_tree.o fs/xfs/libxfs/xfs_inode_fork.o fs/xfs/libxfs/xfs_inode_buf=
.o fs/xfs/libxfs/xfs_log_rlimit.o fs/xfs/libxfs/xfs_ag_resv.o fs/xfs/libxfs=
/xfs_rmap.o fs/xfs/libxfs/xfs_rmap_btree.o fs/xfs/libxfs/xfs_refcount.o fs/=
xfs/libxfs/xfs_refcount_btree.o fs/xfs/libxfs/xfs_sb.o fs/xfs/libxfs/xfs_sy=
mlink_remote.o fs/xfs/libxfs/xfs_trans_inode.o fs/xfs/libxfs/xfs_trans_resv=
.o fs/xfs/libxfs/xfs_types.o fs/xfs/libxfs/xfs_rtbitmap.o fs/xfs/xfs_aops.o=
 fs/xfs/xfs_attr_inactive.o fs/xfs/xfs_attr_list.o fs/xfs/xfs_bmap_util.o f=
s/xfs/xfs_bio_io.o fs/xfs/xfs_buf.o fs/xfs/xfs_dir2_readdir.o fs/xfs/xfs_di=
scard.o fs/xfs/xfs_error.o fs/xfs/xfs_export.o fs/xfs/xfs_extent_busy.o fs/=
xfs/xfs_file.o fs/xfs/xfs_filestream.o fs/xfs/xfs_fsmap.o fs/xfs/xfs_fsops.=
o fs/xfs/xfs_globals.o fs/xfs/xfs_health.o fs/xfs/xfs_icache.o fs/xfs/xfs_i=
octl.o fs/xfs/xfs_iomap.o fs/xfs/xfs_iops.o fs/xfs/xfs_inode.o fs/xfs/xfs_i=
table.o fs/xfs/xfs_iwalk.o fs/xfs/xfs_message.o fs/xfs/xfs_mount.o fs/xfs/x=
fs_mru_cache.o fs/xfs/xfs_pwork.o fs/xfs/xfs_reflink.o fs/xfs/xfs_stats.o f=
s/xfs/xfs_super.o fs/xfs/xfs_symlink.o fs/xfs/xfs_sysfs.o fs/xfs/xfs_trans.=
o fs/xfs/xfs_xattr.o fs/xfs/kmem.o fs/xfs/xfs_log.o fs/xfs/xfs_log_cil.o fs=
/xfs/xfs_bmap_item.o fs/xfs/xfs_buf_item.o fs/xfs/xfs_extfree_item.o fs/xfs=
/xfs_icreate_item.o fs/xfs/xfs_inode_item.o fs/xfs/xfs_refcount_item.o fs/x=
fs/xfs_rmap_item.o fs/xfs/xfs_log_recover.o fs/xfs/xfs_trans_ail.o fs/xfs/x=
fs_trans_buf.o fs/xfs/xfs_dquot.o fs/xfs/xfs_dquot_item.o fs/xfs/xfs_trans_=
dquot.o fs/xfs/xfs_qm_syscalls.o fs/xfs/xfs_qm_bhv.o fs/xfs/xfs_qm.o fs/xfs=
/xfs_quotaops.o fs/xfs/xfs_rtalloc.o fs/xfs/xfs_acl.o fs/xfs/xfs_sysctl.o f=
s/xfs/xfs_pnfs.o fs/xfs/scrub/trace.o fs/xfs/scrub/agheader.o fs/xfs/scrub/=
alloc.o fs/xfs/scrub/attr.o fs/xfs/scrub/bmap.o fs/xfs/scrub/btree.o fs/xfs=
/scrub/common.o fs/xfs/scrub/dabtree.o fs/xfs/scrub/dir.o fs/xfs/scrub/fsco=
unters.o fs/xfs/scrub/health.o fs/xfs/scrub/ialloc.o fs/xfs/scrub/inode.o f=
s/xfs/scrub/parent.o fs/xfs/scrub/refcount.o fs/xfs/scrub/rmap.o fs/xfs/scr=
ub/scrub.o fs/xfs/scrub/symlink.o fs/xfs/scrub/rtbitmap.o fs/xfs/scrub/quot=
a.o
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200429055404.GC17607%40intel.com.
