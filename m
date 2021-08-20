Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB74Q7SEAMGQEDXBNFNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4F53F2464
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 03:42:25 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id z11-20020a170902834b00b00130c1b330bcsf394157pln.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 18:42:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629423743; cv=pass;
        d=google.com; s=arc-20160816;
        b=s1uKo3ruuH9QTwGR6TRmjVjuoGb607cT70HHrwUOkJ3NZzr3uyeqk9K1MaKy0Zcb9R
         Y2Sp0zC/i/egipixQosDfhuh3zrflUTPV/wk9rf4SyPGhBloMAuUovdFH0hktGWqzvVd
         Lx48tAaQrceYYgmcEql3cyNmhl1M92s54IeYBL2tiSe8hlzHZo3P0D7TaXLfQ21PXZXm
         BMf47tK2BohKsYt4+6HU5rEzmI/ZhgP50DVrrdAH1ndvinJpiGVO6oxMJ7a0MC/Pt82S
         Ju+cDNuwzVnwXVtXtqs7LbpD5SqT6jRALYRRIe5zFHknMNRP2yFV5BhNheedKp8zjGpj
         uH1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=NVGjcdhSh3HXr5rY+fIsNReIAIJlkdoGm/CRK1yfx+g=;
        b=doRezFO8hyJHp25OXT32FO0VKppm1KxVbffkX2caxHtsbPdjJCv3U3BDS1/OS5YSDX
         GBNPsXtChWNbc5xS7XbMjxvAdqOBidxznYeD0ButOcVSxl0t1XqzfhaJAhaTnnDiDKBH
         W9FbUUyeEzdqJBNwQuPfBBHTfUzGMPZshBVUOnAbrim8QL2s6iTq9Rf0YrmkVehuEtv1
         ecGun8XwqiMetYNPp6HqavwblbGOm519FsSbVEauNJklc87SzNrau64K8AVa4/2Iy21E
         OY8JNeHEWDr46c3iUfnFBt6NkwaDKSL5EeKotlfVJYG40h4IX+6fn7+HSL0Fb5QPpY+8
         9o0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NVGjcdhSh3HXr5rY+fIsNReIAIJlkdoGm/CRK1yfx+g=;
        b=srfF4h4OoF8qTtEQTNqOXcX8LSv94cSyMrQKVv4SdxnA4jdw1ZpV5FutKMJhv+DraW
         vrFuyQEEyzwA7Us10kG6vUgVadn45v+Uf20MoxqNmlJ2fStAMsCw2fn338ffO35Y/mTc
         MKUR4B1ohO9gAFvTTapxg1Vb/E4scqQXRFpcxMfpEquq2egQWi9sifXpzb32MevNTRuk
         vlEZFd1BOmqetNOrP/HNhGrncRM95iecsWuMqLA4doCq/tz7rHxd2bbojcZkpKAr2s+M
         Oq/9zpHOaFK4cSYy7eYWdGJsf0r6tpmS2xPEHoUVpGjkZ4hnmHtESfBp283kRHtl56+h
         5c7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NVGjcdhSh3HXr5rY+fIsNReIAIJlkdoGm/CRK1yfx+g=;
        b=rVAjyOmSQyWLRjjJSXd8IoRM9qNd5hulp54+Ql8xzDFUAM+MO2HA8wE/273FCU9qHx
         gHF3MwjKiu5wLErOK8ugtmoVFerbFQavMWsVkr3Ryss2DkepkxhSu3kBcI6yCjXjRRk/
         oECbBMkreqbnpkzvkjy2GAtELojM3wETI/EKssQ8MjkC+TL2gg5TIySe5XHjIwXfWxDm
         dxe78qoK8CguGQlRJ05asjK6PazWXVtTsXTlUsTHimmfcI9/tOi0ezCbhg9ccFJVDSOq
         bGFGTb8v4gBo0+nF2YoNp4cjvqi5OvUC0VuqLTDlVdHO4nAG5Fg7E5Kf0qpCa0KTwy2c
         ml/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o6atkXW6rwAE6zEeLuBUPhNgsn4ysL5EnxCvVuE15Kkl6leI0
	G801ox9huJO3eo6Q/wsKoMs=
X-Google-Smtp-Source: ABdhPJxt3wtQVdvXqciyjKeyiJLmEoF4j2Uku6p6KbOj8+C1u7XYA7rn6slIgIOTBmSkix1pnsVuGw==
X-Received: by 2002:a17:90b:1e10:: with SMTP id pg16mr1873238pjb.233.1629423743630;
        Thu, 19 Aug 2021 18:42:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls3780542plj.2.gmail; Thu, 19
 Aug 2021 18:42:23 -0700 (PDT)
X-Received: by 2002:a17:90a:4418:: with SMTP id s24mr1914492pjg.222.1629423742992;
        Thu, 19 Aug 2021 18:42:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629423742; cv=none;
        d=google.com; s=arc-20160816;
        b=i9xqQkcREEwGJFRFg8NpZCooR6j60ljjK+/aBAwh55yBG/suMP7pf7/MGElFVUCWiH
         D5cESgynWbXRlIrGBLnFe8ewma5sxYaV2BadS86Rh1EuoJ/uwjD3LWxMKOnXpJjoXGk6
         uBUIix4AtEby81tnAI1BTpQDUBDh+0FX83o6gvzXuLQ19MNUSl2sPA0BPUzpG5hpfwja
         6X7ggpcuyJiLPt4YxWNkttV6JcCy7yXn5zn1sVEFTAIfoJgheuhWdg5fB2KUHvEqrLyY
         jERj0SMtsu20TxKekUZ+ZVP0A/Tvg13wT+GjhCTZBaD18COljt3N2CwWRLb/ZDzBajtn
         Gb3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=UGeQLbjgkTKWyyq/Y+SvgTXt6A1bCQ/Tbaipwe6SXaU=;
        b=hwA0fCIJRMuToCfKYJdc1RgVnNCYJlskAE2/XT/5Y70gsv3cK9UIVK5FzlKEMV0+g7
         GHlE6ATfMuY/USmus7B3hKl/MlBdwnXpxs7XUHfGCywwfSt6McNl3q8DQPGVD6l2SXqk
         R/sCFJCAl5fMbZKO6gD8zqSDESr90rdCkf7uDK2Zp/8FYIMrtgolyX3kQ29cHMgP60na
         MUJfpLcy4L1z0IJeTo8duU5BhBvELbV+/BbRgkaKjvkbh3EU6e5izYiinQswqeypYgtT
         YPMhQv5vyAK0vQuVwHrW1JbFgSB/gxmiwMNSd6qwydK927eQo9iLxzgv+/nWA3je1w6C
         cmew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id k15si288895pll.3.2021.08.19.18.42.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 18:42:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="213570668"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; 
   d="scan'208";a="213570668"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 18:42:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; 
   d="scan'208";a="522688586"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Aug 2021 18:42:19 -0700
Date: Fri, 20 Aug 2021 09:36:36 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, David Howells <dhowells@redhat.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: Re: [dhowells-fs:netfs-folio-regions 11/28]
 fs/netfs/read_helper.c:979:13: warning: variable 'folio' is uninitialized
 when used here
Message-ID: <20210820013636.GA1702258@pl-dbox>
References: <202108200354.7eThNmGj-lkp@intel.com>
 <YR64CsQVrynR4V/y@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YR64CsQVrynR4V/y@Ryzen-9-3900X.localdomain>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.93 as
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

On Thu, Aug 19, 2021 at 12:59:06PM -0700, Nathan Chancellor wrote:
> On Fri, Aug 20, 2021 at 03:07:06AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-=
fs.git netfs-folio-regions
> > head:   215a4ee495a95cc73256ed76f91cb78bcabd6b8e
> > commit: 90417b52931da8cb4eb670c3cc22bfa12aabe55c [11/28] netfs: Use a b=
uffer in netfs_read_request and add pages to it
> > config: hexagon-randconfig-r041-20210818 (attached as .config)
> > compiler: clang version 12.0.0
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linu=
x-fs.git/commit/?id=3D90417b52931da8cb4eb670c3cc22bfa12aabe55c
> >         git remote add dhowells-fs https://git.kernel.org/pub/scm/linux=
/kernel/git/dhowells/linux-fs.git
> >         git fetch --no-tags dhowells-fs netfs-folio-regions
> >         git checkout 90417b52931da8cb4eb670c3cc22bfa12aabe55c
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
O=3Dbuild_dir ARCH=3Dhexagon SHELL=3D/bin/bash fs/netfs/
> >=20
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >=20
> > All warnings (new ones prefixed by >>):
> >=20
> > >> fs/netfs/read_helper.c:979:13: warning: variable 'folio' is uninitia=
lized when used here
> >    folio_get(folio);
> >    ^~~~~
> >    fs/netfs/read_helper.c:932:21: note: initialize the variable 'folio'=
 to silence this warning
> >    struct folio
> >    ^
> >    =3D NULL
> >    fatal error: error in backend: Misaligned constant address: 0x000000=
1b has alignment 1, but the memory access requires 4
>=20
> This crash has been fixed in clang-13 [1]. Philip, would it be possible f=
or
> the robot to use the same clang version for Hexagon that you use for all =
of the
> other architectures? It should have no issues, as we are using it in our
got it Nathan, we will switch hexagon to the same as other archs today.

> CI. If there are, please let me know so I can try to get them triaged
> and fixed upstream,
>=20
> [1] https://bugs.llvm.org/show_bug.cgi?id=3D50838
>=20
> Cheers,
> Nathan
>=20
> >    PLEASE submit a bug report to https://bugs.llvm.org/ and include the=
 crash backtrace, preprocessed source, and associated run script.
> >    Stack dump:
> >    0. Program arguments: clang -Wp,-MMD,fs/netfs/.read_helper.o.d -nost=
dinc -isystem /opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl=
/x86_64-linux-gnu/lib/clang/12.0.0/include -Iarch/hexagon/include -I./arch/=
hexagon/include/generated -Iinclude -I./include -Iarch/hexagon/include/uapi=
 -I./arch/hexagon/include/generated/uapi -Iinclude/uapi -I./include/generat=
ed/uapi -include include/linux/compiler-version.h -include include/linux/kc=
onfig.h -include include/linux/compiler_types.h -D__KERNEL__ -Qunused-argum=
ents -fmacro-prefix-map=3D=3D -DKBUILD_EXTRA_WARN1 -Wall -Wundef -Werror=3D=
strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-w=
char -fno-PIE -Werror=3Dimplicit-function-declaration -Werror=3Dimplicit-in=
t -Werror=3Dreturn-type -Wno-format-security -std=3Dgnu89 --target=3Dhexago=
n-unknown-linux-musl -integrated-as -Werror=3Dunknown-warning-option -G0 -f=
no-short-enums -mlong-calls -ffixed-r19 -DTHREADINFO_REG=3Dr19 -D__linux__ =
-fno-delete-null-pointer-checks -Wno-frame-address -Wno-address-of-packed-m=
ember -O2 -Wframe-larger-than=3D1024 -fno-stack-protector -Wno-format-inval=
id-specifier -Wno-gnu -mno-global-merge -Wno-unused-const-variable -fno-omi=
t-frame-pointer -fno-optimize-sibling-calls -ftrivial-auto-var-init=3Dpatte=
rn -fno-stack-clash-protection -falign-functions=3D64 -Wdeclaration-after-s=
tatement -Wvla -Wno-pointer-sign -Wno-array-bounds -fno-strict-overflow -fn=
o-stack-check -Werror=3Ddate-time -Werror=3Dincompatible-pointer-types -Wex=
tra -Wunused -Wno-unused-parameter -Wmissing-declarations -Wmissing-format-=
attribute -Wmissing-prototypes -Wold-style-definition -Wmissing-include-dir=
s -Wunused-const-variable -Wno-missing-field-initializers -Wno-sign-compare=
 -Wno-type-limits -I fs/netfs -I ./fs/netfs -DKBUILD_MODFILE=3D"fs/netfs/ne=
tfs" -DKBUILD_BASENAME=3D"read_helper" -DKBUILD_MODNAME=3D"netfs" -D__KBUIL=
D_MODNAME=3Dkmod_netfs -c -o fs/netfs/read_helper.o fs/netfs/read_helper.c
> >    1. <eof> parser at end of file
> >    2. Code generation
> >    3. Running pass 'Function Pass Manager' on module 'fs/netfs/read_hel=
per.c'.
> >    4. Running pass 'Hexagon DAG->DAG Pattern Instruction Selection' on =
function '@netfs_rreq_set_up_buffer'
> >    #0 0x000000000355d1fc llvm::sys::PrintStackTrace(llvm::raw_ostream&,=
 int) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64=
-linux-gnu/bin/clang-12+0x355d1fc)
> >    #1 0x000000000355afbe llvm::sys::RunSignalHandlers() (/opt/cross/cla=
ng+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-=
12+0x355afbe)
> >    #2 0x000000000355c55d llvm::sys::CleanupOnSignal(unsigned long) (/op=
t/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu=
/bin/clang-12+0x355c55d)
> >    #3 0x00000000034d5aed (anonymous namespace)::CrashRecoveryContextImp=
l::HandleCrash(int, unsigned long) (/opt/cross/clang+llvm-12.0.0-cross-hexa=
gon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x34d5aed)
> >    #4 0x00000000034d5a79 llvm::CrashRecoveryContext::HandleExit(int) (/=
opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-g=
nu/bin/clang-12+0x34d5a79)
> >    #5 0x0000000003557e07 llvm::sys::Process::Exit(int, bool) (/opt/cros=
s/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/c=
lang-12+0x3557e07)
> >    #6 0x0000000002107e10 llvm::DenseMapBase<llvm::DenseMap<llvm::AliasS=
etTracker::ASTCallbackVH, llvm::AliasSetTracker::ASTCallbackVHDenseMapInfo,=
 llvm::detail::DenseMapPair<llvm::AliasSetTracker::ASTCallbackVH, >, llvm::=
AliasSetTracker::ASTCallbackVH, llvm::AliasSetTracker::ASTCallbackVHDenseMa=
pInfo, llvm::detail::DenseMapPair<llvm::AliasSetTracker::ASTCallbackVH, >::=
destroyAll() (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl=
/x86_64-linux-gnu/bin/clang-12+0x2107e10)
> >    #7 0x00000000034da319 llvm::report_fatal_error(llvm::Twine const&, b=
ool) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-=
linux-gnu/bin/clang-12+0x34da319)
> >    #8 0x00000000034da3e7 (/opt/cross/clang+llvm-12.0.0-cross-hexagon-un=
known-linux-musl/x86_64-linux-gnu/bin/clang-12+0x34da3e7)
> >    #9 0x0000000002411b46 (/opt/cross/clang+llvm-12.0.0-cross-hexagon-un=
known-linux-musl/x86_64-linux-gnu/bin/clang-12+0x2411b46)
> >    #10 0x00000000024183c0 llvm::HexagonTargetLowering::LowerLoad(llvm::=
SDValue, llvm::SelectionDAG&) const (/opt/cross/clang+llvm-12.0.0-cross-hex=
agon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x24183c0)
> >    #11 0x0000000002419cbb llvm::HexagonTargetLowering::LowerOperation(l=
lvm::SDValue, llvm::SelectionDAG&) const (/opt/cross/clang+llvm-12.0.0-cros=
s-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x2419cbb)
> >    #12 0x00000000042c3b6a (anonymous (/opt/cross/clang+llvm-12.0.0-cros=
s-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x42c3b6a)
> >    #13 0x00000000042a61af (anonymous (/opt/cross/clang+llvm-12.0.0-cros=
s-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x42a61af)
> >    #14 0x00000000042a5443 llvm::SelectionDAG::Legalize() (/opt/cross/cl=
ang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang=
-12+0x42a5443)
> >    #15 0x0000000004375361 llvm::SelectionDAGISel::CodeGenAndEmitDAG() (=
/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-=
gnu/bin/clang-12+0x4375361)
> >    #16 0x0000000004373545 llvm::SelectionDAGISel::SelectAllBasicBlocks(=
llvm::Function const&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-=
linux-musl/x86_64-linux-gnu/bin/clang-12+0x4373545)
> >    #17 0x00000000043703b7 llvm::SelectionDAGISel::runOnMachineFunction(=
llvm::MachineFunction&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown=
-linux-musl/x86_64-linux-gnu/bin/clang-12+0x43703b7)
> >    #18 0x00000000024690c4 llvm::HexagonDAGToDAGISel::runOnMachineFuncti=
on(llvm::MachineFunction&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unkn=
own-linux-musl/x86_64-linux-gnu/bin/clang-12+0x24690c4)
> >    #19 0x000000000290c1bd llvm::MachineFunctionPass::runOnFunction(llvm=
::Function&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl=
/x86_64-linux-gnu/bin/clang-12+0x290c1bd)
> >    #20 0x0000000002d6a745 llvm::FPPassManager::runOnFunction(llvm::Func=
tion&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_6=
4-linux-gnu/bin/clang-12+0x2d6a745)
> >    #21 0x0000000002d70c51 llvm::FPPassManager::runOnModule(llvm::Module=
&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-li=
nux-gnu/bin/clang-12+0x2d70c51)
> >    #22 0x0000000002d6adaa llvm::legacy::PassManagerImpl::run(llvm::Modu=
le&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-=
linux-gnu/bin/clang-12+0x2d6adaa)
> >    #23 0x000000000378e9a0 clang::EmitBackendOutput(clang::DiagnosticsEn=
gine&, clang::HeaderSearchOptions const&, clang::CodeGenOptions const&, cla=
ng::TargetOptions const&, clang::LangOptions const&, llvm::DataLayout const=
&, clang::BackendAction, std::__1::unique_ptr<llvm::raw_pwrite_stream, std:=
:__1::default_delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang+llvm-12.=
0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x378e9a=
0)
> >    #24 0x0000000003ebec56 clang::BackendConsumer::HandleTranslationUnit=
(clang::ASTContext&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-li=
nux-musl/x86_64-linux-gnu/bin/clang-12+0x3ebec56)
> >    #25 0x0000000004dbbc84 clang::ParseAST(clang::Sema&, bool, bool) (/o=
pt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gn=
u/bin/clang-12+0x4dbbc84)
> >    #26 0x0000000003e0d560 clang::FrontendAction::Execute() (/opt/cross/=
clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/cla=
ng-12+0x3e0d560)
> >    #27 0x0000000003d596da clang::CompilerInstance::ExecuteAction(clang:=
:FrontendAction&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux=
-musl/x86_64-linux-gnu/bin/clang-12+0x3d596da)
> >    #28 0x0000000003eb890e (/opt/cross/clang+llvm-12.0.0-cross-hexagon-u=
nknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x3eb890e)
> >    #29 0x0000000002107abe cc1_main(llvm::ArrayRef<char char (/opt/cross=
/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/cl=
ang-12+0x2107abe)
> >    #30 0x00000000021054ee ExecuteCC1Tool(llvm::SmallVectorImpl<char (/o=
pt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gn=
u/bin/clang-12+0x21054ee)
> >    #31 0x0000000003c04bd2 void llvm::function_ref<void ()>::callback_fn=
<clang::driver::CC1Command::Execute(llvm::ArrayRef<llvm::Optional<llvm::Str=
ingRef> >, std::__1::basic_string<char, std::__1::char_traits<char>, std::_=
_1::allocator<char> const::$_1>(long) (/opt/cross/clang+llvm-12.0.0-cross-h=
exagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x3c04bd2)
> >    #32 0x00000000034d5a2b llvm::CrashRecoveryContext::RunSafely(llvm::f=
unction_ref<void ()>) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-l=
inux-musl/x86_64-linux-gnu/bin/clang-12+0x34d5a2b)
> >    #33 0x0000000003c043c5 clang::driver::CC1Command::Execute(llvm::Arra=
yRef<llvm::Optional<llvm::StringRef> >, std::__1::basic_string<char, std::_=
_1::char_traits<char>, std::__1::allocator<char> const (/opt/cross/clang+ll=
vm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x=
3c043c5)
> >    #34 0x0000000003bcc196 clang::driver::Compilation::ExecuteCommand(cl=
ang::driver::Command const&, clang::driver::Command const (/opt/cross/clang=
+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12=
+0x3bcc196)
> >    #35 0x0000000003bcc617 clang::driver::Compilation::ExecuteJobs(clang=
::driver::JobList const&, llvm::SmallVectorImpl<std::__1::pair<int, clang::=
driver::Command >&) const (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unkno=
wn-linux-musl/x86_64-linux-gnu/bin/clang-12+0x3bcc617)
> >    #36 0x0000000003be5a81 clang::driver::Driver::ExecuteCompilation(cla=
ng::driver::Compilation&, llvm::SmallVectorImpl<std::__1::pair<int, clang::=
driver::Command >&) (/opt/cross/clang+llvm-12.0.0-cross-hexagon-unknown-lin=
ux-musl/x86_64-linux-gnu/bin/clang-12+0x3be5a81)
> >    #37 0x0000000002104e21 main (/opt/cross/clang+llvm-12.0.0-cross-hexa=
gon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x2104e21)
> >    #38 0x00007f04bb011d0a __libc_start_main (/lib/x86_64-linux-gnu/libc=
.so.6+0x26d0a)
> >    #39 0x0000000002102299 _start (/opt/cross/clang+llvm-12.0.0-cross-he=
xagon-unknown-linux-musl/x86_64-linux-gnu/bin/clang-12+0x2102299)
> >    clang-12: error: clang frontend command failed with exit code 70 (us=
e -v to see invocation)
> >    clang version 12.0.0
> >    Target: hexagon-unknown-linux-musl
> >    Thread model: posix
> >    InstalledDir: /opt/cross/clang_hexagon/x86_64-linux-gnu/bin
> >    clang-12: note: diagnostic msg:
> >    Makefile arch fs include kernel nr_bisected scripts source usr
> >=20
> >=20
> > vim +/folio +979 fs/netfs/read_helper.c
> >=20
> >    947=09
> >    948		ret =3D netfs_rreq_add_folios_to_buffer(rreq, want_index, have_=
index - 1,
> >    949						      gfp_mask);
> >    950		if (ret < 0)
> >    951			return ret;
> >    952		have_folios +=3D have_index - want_index;
> >    953=09
> >    954		ret =3D netfs_rreq_add_folios_to_buffer(rreq, have_index + have=
_folios,
> >    955						      want_index + want_folios - 1,
> >    956						      gfp_mask);
> >    957		if (ret < 0)
> >    958			return ret;
> >    959=09
> >    960		/* Transfer the folios proposed by the VM into the buffer and t=
ake refs
> >    961		 * on them.  The locks will be dropped in netfs_rreq_unlock().
> >    962		 */
> >    963		if (ractl) {
> >    964			while ((folio =3D readahead_folio(ractl))) {
> >    965				folio_get(folio);
> >    966				if (folio =3D=3D keep)
> >    967					folio_get(folio);
> >    968				ret =3D xa_insert_set_mark(&rreq->buffer,
> >    969							 folio_index(folio), folio,
> >    970							 XA_MARK_0, gfp_mask);
> >    971				if (ret < 0) {
> >    972					if (folio !=3D keep)
> >    973						folio_unlock(folio);
> >    974					folio_put(folio);
> >    975					return ret;
> >    976				}
> >    977			}
> >    978		} else {
> >  > 979			folio_get(folio);
> >    980			ret =3D xa_insert_set_mark(&rreq->buffer, keep->index, keep,
> >    981						 XA_MARK_0, gfp_mask);
> >    982			if (ret < 0) {
> >    983				folio_put(folio);
> >    984				return ret;
> >    985			}
> >    986		}
> >    987		return 0;
> >    988	}
> >    989=09
> >=20
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210820013636.GA1702258%40pl-dbox.
