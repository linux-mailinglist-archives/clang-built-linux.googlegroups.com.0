Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5MW5TZQKGQEBU6UR3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 597051921D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 08:42:47 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id 5sf578926uah.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 00:42:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585122166; cv=pass;
        d=google.com; s=arc-20160816;
        b=pKRM8YWaCXlblTRgzzC7LKkR6o72s1cmLPPnSYKmsYX537bOtxtqrjwclAv7v6p+Ui
         YOZIwFfy3Gu0UsYAtV11ccfjYWVuMZ1FZriskBxxq2izGpLtb9TRBIpK/KLMWJfv+SRT
         TrHxukk/wK6B3RQlgZPlicryjd/KOpm8AT4vprueVheujU/PXy3iQqDeV+eBy8kRNTtX
         txovXDAl3ZzJxRgk+61PvBrxBYoxFDjbQ46fA6anXcE+ks+CE7oKixwkqB8cojIPtixA
         1Uupn02Y39/je0lHEPoyY9TqtQ4W0mGzVHT6peR3W9QshfeEse3p3fNo45zzKWQ3Hq3m
         b3Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0+r6mTamaOAhiq3Sc6KtcbyTignhEIwE7814mAK1gso=;
        b=soEL9Y+Imf6YXBOgwWF9pSzePxPui2aEbfYsIrivkY9573akMFg5LJgb9WmYL5lJHE
         YD4DlYVdoSzEm2YbhkNlYXcGgEbpVUIE+2ti9XjkLIXYkgxWZKNu25oWOJWKjqdy1rUR
         ut71LeMUlW9inlyBLPJDutI8+tLPUmqlRQkiBRXJrgrTs924yJkpY3MrELZkNl30phf1
         wiy19Dyjfd9liHHtAn7k3GaL8r4k7OesxBn65ikJ2DFXATtzy2kFOmI30H8RjmvnxwtL
         t4cjRjKfRD8UksewJMXHalvYEHshleD77zM73Ooq6Wva+iix4CiBgVFP4WzgRvAcqSRQ
         SZAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0+r6mTamaOAhiq3Sc6KtcbyTignhEIwE7814mAK1gso=;
        b=Rrnbkh8MIfeUr9O9KC9FXMajoGivKOx9g5U8ghbEHy6etrBfbtWYOJ72wHXuAna2P3
         06WNdmul52kl+8B5rcAiHwwsQ9E3UuXZNwWowupjC6K4DqcdgqmCdlyBX6s9sgtIKeiG
         Dufv2LymsXNXD/GuWUjcAsL8JYvaUiVZpZUjXALy8JNOLQHz8/8IpKQx38tPdKc8X+pA
         AiiSmsF0zyVfTcLe9fOegiFoxmt2Kk5iOWisa4UBUp9e4L/EHo886fw+A8fNZ5buhdZb
         Oc5fN+f/BWeLD9zCsq5MYoJsJs8nVhv+ZPs3NvYLSq5xefghly1NGXmhywFiUGGaWT/Z
         teLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0+r6mTamaOAhiq3Sc6KtcbyTignhEIwE7814mAK1gso=;
        b=HoTjAbs6ZrtyfUqzeTBzBk/2S+PEDIJNjbvL0TF+Sf2wZEsuBRFUnmgITtBmNjMRY3
         Pef5OF2Ntf+AgmK4mpi0xAWRvHM24DFPmyzoKecT7cWQ8b44VQQO6I4pv3xP2LDMm1tJ
         1KG7G4RC9LMp9/X0aAPwScOnL4IBDrhBvZ7S+RArPU8IK4EtVwUnKXFnLsASV9RDDroW
         UP78p/BCQv5xdn7wqbKrLmNa7/LuEPnysyf11ZUVjoQKpvXf81ebHdFGOvJfQW6YaPyk
         gJx7eo5flKa9UnNku7WOaAECe50Zs0EpOFHSMk640xIzCdoXDYdi0fIW7iw1f++0hMjP
         St5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1GIXRYgCYc7E94iFQzT8JJgmJIrrOFYn6ecImV94fHTkA3PcSS
	ufjvLSpADYVLl9K3PnqRHfs=
X-Google-Smtp-Source: ADFU+vs0glpw08d6uQCMmfuNy4VYh/37JqJKV8I8wONASrZe+gYDGsYXIJ4+BEbHeeOsiumC5o2qZw==
X-Received: by 2002:a67:a06:: with SMTP id 6mr1483849vsk.22.1585122165695;
        Wed, 25 Mar 2020 00:42:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:8e:: with SMTP id t14ls130688vsp.5.gmail; Wed, 25
 Mar 2020 00:42:45 -0700 (PDT)
X-Received: by 2002:a67:1447:: with SMTP id 68mr1394769vsu.163.1585122165243;
        Wed, 25 Mar 2020 00:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585122165; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3NiSUNhu3QBL1pZieR1zJlytm8nIu5FuO+ZtgRu7lyeIjl3+c7iEBOh2NIgyHlJOf
         ljs+57pImKG6I6k3Jq028qm2R8k2tIPiyY/ONYr4odzSCUSV2b85J5UzAVDf8UD0Oanj
         SscsdosDleDRVM4/sePlyoGFr7VEXemyAJDIe4fj2qxXfrTPK6MGvIquCPkWXavQFZeh
         wMGfdOiTJJOF6s/Axu4HXo23AWoqqlmTiYGaK/LXUuEIrh+cgcWeyldrGq0+vzR08Yx2
         ULMKQFk37UdS/LpsmIK2p2egOIWfgtu8PZEbcdv6HOUsdJCaxmCA5mYmyKcCOymJYjC0
         m03w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=iQkeKTk2q38YSEm9QDsxXEIRY7x/KB8sYWpGRWqR4tg=;
        b=NXfAmXN/gwanhECkIiCtetyf8EBRCTmF3pAsoRBJBAxCCKqtdABBojNEnuqkW8fcXs
         MW/cS6TJGAJ/vwJQ6H2OkJo9m0Nllw5j/wjQO3dmbnopHsFZXJdEjwGVx88t1hb1dufo
         4UE6nOBi1W5L+wHp1Njyvl58jeVklDlC8LwplaJB7Tzxls/LKhxEwty3bsff2c+mgOEu
         y6f/6wlUx3CPEFFSziuwi+W4IOoZhnpdRe8oRrw9l6TnUrWT8TXmpIPorFMT8gRSUbOf
         3fzLtja9FoFi8MOB6QnmCALbfcfjuOMJvpw1FC4z73JW9oJaMCwDtNhpSxl6Ps8qujBd
         q1EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id i13si1583792vkk.5.2020.03.25.00.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: Xfwj5F4E9DETZAp6SAQC9y/WhVsogzVKj1LqokcafKGj64TitUzJXrnbA2yQTXBZDWgx2UF/+1
 MKLzun4tZTpQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2020 00:42:42 -0700
IronPort-SDR: J9iLF2Irlcq+GJB+wopPA2ajemYZTBIa2i5esopKdQmr0rwWZsEXJZAwtizp12ZePUvq+aHOaq
 S5n9x3koLH0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,303,1580803200"; 
   d="gz'50?scan'50,208,50";a="448189867"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 25 Mar 2020 00:42:40 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jH0gR-000Cvr-SA; Wed, 25 Mar 2020 15:42:39 +0800
Date: Wed, 25 Mar 2020 15:41:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Dirk Mueller <dmueller@suse.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: [linux-next:pending-fixes 86/277]
 arch/powerpc/platforms/powermac/smp.c:664:26: error: unused variable
 'core99_l2_cache'
Message-ID: <202003251537.N3F2RWO7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--9amGYk9869ThD9tj
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Dirk,

First bad commit (maybe !=3D root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
 pending-fixes
head:   1e07787fb89ded7f9b290af70c788c9f82f13cc1
commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [86/277] Remove redundant =
YYLOC global declaration
config: powerpc-defconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1ac403=
bd145dadfa1004af29bd6c77f871caf42c)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
        # save the attached .config to linux build tree
        COMPILER=3Dclang make.cross ARCH=3Dpowerpc=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

Note: the linux-next/pending-fixes HEAD 1e07787fb89ded7f9b290af70c788c9f82f=
13cc1 builds fine.
      It only hurts bisectibility.

All error/warnings (new ones prefixed by >>):

>> arch/powerpc/platforms/powermac/smp.c:664:26: error: unused variable 'co=
re99_l2_cache' [-Werror,-Wunused-variable]
   volatile static long int core99_l2_cache;
                            ^
>> arch/powerpc/platforms/powermac/smp.c:665:26: error: unused variable 'co=
re99_l3_cache' [-Werror,-Wunused-variable]
   volatile static long int core99_l3_cache;
                            ^
   2 errors generated.
--
>> arch/powerpc/platforms/maple/setup.c:365:1: error: attribute declaration=
 must precede definition [-Werror,-Wignored-attributes]
   machine_device_initcall(maple, maple_cpc925_edac_setup);
   ^
   arch/powerpc/include/asm/machdep.h:294:43: note: expanded from macro 'ma=
chine_device_initcall'
   #define machine_device_initcall(mach, fn)       __define_machine_initcal=
l(mach, fn, 6)
                                                   ^
   arch/powerpc/include/asm/machdep.h:277:7: note: expanded from macro '__d=
efine_machine_initcall'
                   if (machine_is(mach)) return fn(); \
                       ^
   arch/powerpc/include/asm/machdep.h:248:19: note: expanded from macro 'ma=
chine_is'
                           __attribute__((weak));           \
                                          ^
   arch/powerpc/platforms/maple/setup.c:294:1: note: previous definition is=
 here
   define_machine(maple) {
   ^
   arch/powerpc/include/asm/machdep.h:243:23: note: expanded from macro 'de=
fine_machine'
           struct machdep_calls mach_##name __machine_desc =3D
                                ^
   <scratch space>:203:1: note: expanded from here
   mach_maple
   ^
   1 error generated.
--
>> drivers/scsi/qla2xxx/qla_nx2.c:3226:1: warning: stack frame size of 2208=
 bytes in function 'qla8044_collect_md_data' [-Wframe-larger-than=3D]
   qla8044_collect_md_data(struct scsi_qla_host *vha)
   ^
   1 warning generated.
--
   Stack dump:
   0. Program arguments: /opt/cross/clang-1ac403bd14/bin/clang-11 -cc1 -tri=
ple powerpc64-unknown-linux-gnu -S -disable-free -disable-llvm-verifier -di=
scard-value-names -main-file-name be_cmds.c -mrelocation-model static -mthr=
ead-model posix -fno-delete-null-pointer-checks -mllvm -warn-stack-size=3D2=
048 -mframe-pointer=3Dall -relaxed-aliasing -fmath-errno -fno-rounding-math=
 -masm-verbose -no-integrated-as -mconstructor-aliases -mcmodel=3Dlarge -ta=
rget-cpu pwr5 -target-feature -altivec -target-feature -vsx -target-feature=
 -spe -target-feature -hard-float -msoft-float -mfloat-abi soft -target-abi=
 elfv1 -dwarf-column-info -fno-split-dwarf-inlining -debugger-tuning=3Dgdb =
-nostdsysteminc -nobuiltininc -resource-dir /opt/cross/clang-1ac403bd14/lib=
/clang/11.0.0 -dependency-file drivers/net/ethernet/emulex/benet/.be_cmds.o=
.d -MT drivers/net/ethernet/emulex/benet/be_cmds.o -sys-header-deps -isyste=
m /opt/cross/clang-1ac403bd14/lib/clang/11.0.0/include -include include/lin=
ux/kconfig.h -include include/linux/compiler_types.h -I arch/powerpc/includ=
e -I ./arch/powerpc/include/generated -I include -I ./include -I arch/power=
pc/include/uapi -I ./arch/powerpc/include/generated/uapi -I include/uapi -I=
 ./include/generated/uapi -D __KERNEL__ -I arch/powerpc -D HAVE_AS_ATHIGH=
=3D1 -D _TASK_CPU=3D300 -I drivers/net/ethernet/emulex/benet -I ./drivers/n=
et/ethernet/emulex/benet -D MODULE -D KBUILD_BASENAME=3D"be_cmds" -D KBUILD=
_MODNAME=3D"be2net" -fmacro-prefix-map=3D=3D -O2 -Wall -Wundef -Werror=3Dst=
rict-prototypes -Wno-trigraphs -Werror=3Dimplicit-function-declaration -Wer=
ror=3Dimplicit-int -Wno-format-security -Werror=3Dunknown-warning-option -W=
no-frame-address -Wno-address-of-packed-member -Wno-format-invalid-specifie=
r -Wno-gnu -Wno-tautological-compare -Wno-unused-const-variable -Wdeclarati=
on-after-statement -Wvla -Wno-pointer-sign -Werror=3Ddate-time -Werror=3Din=
compatible-pointer-types -Wno-initializer-overrides -Wno-format -Wno-sign-c=
ompare -Wno-format-zero-length -std=3Dgnu89 -fno-dwarf-directory-asm -fdebu=
g-compilation-dir /kbuild/obj/consumer/powerpc-defconfig -ferror-limit 19 -=
fmessage-length 0 -pg -fwrapv -fno-signed-char -fwchar-type=3Dshort -fno-si=
gned-wchar -fgnuc-version=3D4.2.1 -fobjc-runtime=3Dgcc -fdiagnostics-show-o=
ption -vectorize-loops -vectorize-slp -o /tmp/be_cmds-0947a8.s -x c drivers=
/net/ethernet/emulex/benet/be_cmds.c
   1. <eof> parser at end of file
   2. Code generation
   3. Running pass 'Function Pass Manager' on module 'drivers/net/ethernet/=
emulex/benet/be_cmds.c'.
   4. Running pass 'PowerPC DAG->DAG Pattern Instruction Selection' on func=
tion '@be_cmd_rss_config'
   #0 0x000055be8ef26dca llvm::sys::PrintStackTrace(llvm::raw_ostream&) (/o=
pt/cross/clang-1ac403bd14/bin/clang-11+0x2a88dca)
   #1 0x000055be8ef24b15 llvm::sys::RunSignalHandlers() (/opt/cross/clang-1=
ac403bd14/bin/clang-11+0x2a86b15)
   #2 0x000055be8ef24c32 SignalHandler(int) (/opt/cross/clang-1ac403bd14/bi=
n/clang-11+0x2a86c32)
   #3 0x00007f4da2022520 __restore_rt (/lib/x86_64-linux-gnu/libpthread.so.=
0+0x13520)
   #4 0x000055be8fb009be llvm::TargetLowering::SimplifyDemandedBits(llvm::S=
DValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::Tar=
getLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/clan=
g-1ac403bd14/bin/clang-11+0x36629be)
   #5 0x000055be8fb043a2 llvm::TargetLowering::SimplifyDemandedBits(llvm::S=
DValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::Tar=
getLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/clan=
g-1ac403bd14/bin/clang-11+0x36663a2)
   #6 0x000055be8f9ddfae (anonymous namespace)::DAGCombiner::SimplifyDemand=
edBits(llvm::SDValue) (.constprop.857) (/opt/cross/clang-1ac403bd14/bin/cla=
ng-11+0x353ffae)
   #7 0x000055be8f9e59d2 (anonymous (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x35479d2)
   #8 0x000055be8f9e6a8a (anonymous (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x3548a8a)
   #9 0x000055be8fa1313e (anonymous (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x357513e)
   #10 0x000055be8fa13edc (anonymous (/opt/cross/clang-1ac403bd14/bin/clang=
-11+0x3575edc)
   #11 0x000055be8fa159c1 llvm::SelectionDAG::Combine(llvm::CombineLevel, l=
lvm::CodeGenOpt::Level) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x35779c1=
)
   #12 0x000055be8fadfc1b llvm::SelectionDAGISel::CodeGenAndEmitDAG() (/opt=
/cross/clang-1ac403bd14/bin/clang-11+0x3641c1b)
   #13 0x000055be8fae3e62 llvm::SelectionDAGISel::SelectAllBasicBlocks(llvm=
::Function const&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3645e62)
   #14 0x000055be8fae5a0d llvm::SelectionDAGISel::runOnMachineFunction(llvm=
::MachineFunction&) (.part.816) (/opt/cross/clang-1ac403bd14/bin/clang-11+0=
x3647a0d)
   #15 0x000055be8dd97f55 (anonymous namespace)::PPCDAGToDAGISel::runOnMach=
ineFunction(llvm::MachineFunction&) (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x18f9f55)
   #16 0x000055be8e595467 llvm::MachineFunctionPass::runOnFunction(llvm::Fu=
nction&) (.part.40) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x20f7467)
   #17 0x000055be8e8f1dfb llvm::FPPassManager::runOnFunction(llvm::Function=
&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x2453dfb)
   #18 0x000055be8e8f2493 llvm::FPPassManager::runOnModule(llvm::Module&) (=
/opt/cross/clang-1ac403bd14/bin/clang-11+0x2454493)
   #19 0x000055be8e8f27eb llvm::legacy::PassManagerImpl::run(llvm::Module&)=
 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x24547eb)
   #20 0x000055be8f143228 (anonymous namespace)::EmitAssemblyHelper::EmitAs=
sembly(clang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std::=
default_delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/bin=
/clang-11+0x2ca5228)
   #21 0x000055be8f144b85 clang::EmitBackendOutput(clang::DiagnosticsEngine=
&, clang::HeaderSearchOptions const&, clang::CodeGenOptions const&, clang::=
TargetOptions const&, clang::LangOptions const&, llvm::DataLayout const&, c=
lang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std::default_=
delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/bin/clang-1=
1+0x2ca6b85)
   #22 0x000055be8fbd5425 clang::BackendConsumer::HandleTranslationUnit(cla=
ng::ASTContext&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3737425)
   #23 0x000055be903d5909 clang::ParseAST(clang::Sema&, bool, bool) (/opt/c=
ross/clang-1ac403bd14/bin/clang-11+0x3f37909)
   #24 0x000055be8f66c8a1 clang::FrontendAction::Execute() (/opt/cross/clan=
g-1ac403bd14/bin/clang-11+0x31ce8a1)
   #25 0x000055be8f62dd08 clang::CompilerInstance::ExecuteAction(clang::Fro=
ntendAction&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x318fd08)
   #26 0x000055be8f711ed9 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3273e=
d9)
   #27 0x000055be8d3471ec cc1_main(llvm::ArrayRef<char char (/opt/cross/cla=
ng-1ac403bd14/bin/clang-11+0xea91ec)
   #28 0x000055be8d3442e7 ExecuteCC1Tool(llvm::SmallVectorImpl<char (/opt/c=
ross/clang-1ac403bd14/bin/clang-11+0xea62e7)
   #29 0x000055be8d289523 main (/opt/cross/clang-1ac403bd14/bin/clang-11+0x=
deb523)
   #30 0x00007f4da1b37bbb __libc_start_main (/lib/x86_64-linux-gnu/libc.so.=
6+0x26bbb)
   #31 0x000055be8d343d6a _start (/opt/cross/clang-1ac403bd14/bin/clang-11+=
0xea5d6a)
>> clang-11: error: unable to execute command: Segmentation fault
>> clang-11: error: clang frontend command failed due to signal (use -v to =
see invocation)
   clang version 11.0.0 (git://gitmirror/llvm_project 1ac403bd145dadfa1004a=
f29bd6c77f871caf42c)
   Target: powerpc64-unknown-linux-gnu
   Thread model: posix
   InstalledDir: /opt/cross/clang-latest/bin
   clang-11: note: diagnostic msg: PLEASE submit a bug report to https://bu=
gs.llvm.org/ and include the crash backtrace, preprocessed source, and asso=
ciated run script.
   clang-11: note: diagnostic msg:
   Makefile arch drivers include kernel null.dwo scripts source usr virt
--
   Stack dump:
   0. Program arguments: /opt/cross/clang-1ac403bd14/bin/clang-11 -cc1 -tri=
ple powerpc64-unknown-linux-gnu -S -disable-free -disable-llvm-verifier -di=
scard-value-names -main-file-name be_cmds.c -mrelocation-model static -mthr=
ead-model posix -fno-delete-null-pointer-checks -mllvm -warn-stack-size=3D2=
048 -mframe-pointer=3Dall -relaxed-aliasing -fmath-errno -fno-rounding-math=
 -masm-verbose -no-integrated-as -mconstructor-aliases -mcmodel=3Dlarge -ta=
rget-cpu pwr5 -target-feature -altivec -target-feature -vsx -target-feature=
 -spe -target-feature -hard-float -msoft-float -mfloat-abi soft -target-abi=
 elfv1 -dwarf-column-info -fno-split-dwarf-inlining -debugger-tuning=3Dgdb =
-nostdsysteminc -nobuiltininc -resource-dir /opt/cross/clang-1ac403bd14/lib=
/clang/11.0.0 -dependency-file drivers/net/ethernet/emulex/benet/.be_cmds.o=
.d -MT drivers/net/ethernet/emulex/benet/be_cmds.o -sys-header-deps -isyste=
m /opt/cross/clang-1ac403bd14/lib/clang/11.0.0/include -include include/lin=
ux/kconfig.h -include include/linux/compiler_types.h -I arch/powerpc/includ=
e -I ./arch/powerpc/include/generated -I include -I ./include -I arch/power=
pc/include/uapi -I ./arch/powerpc/include/generated/uapi -I include/uapi -I=
 ./include/generated/uapi -D __KERNEL__ -I arch/powerpc -D HAVE_AS_ATHIGH=
=3D1 -D _TASK_CPU=3D300 -D MODULE -D KBUILD_BASENAME=3D"be_cmds" -D KBUILD_=
MODNAME=3D"be2net" -fmacro-prefix-map=3D=3D -O2 -Wall -Wundef -Werror=3Dstr=
ict-prototypes -Wno-trigraphs -Werror=3Dimplicit-function-declaration -Werr=
or=3Dimplicit-int -Wno-format-security -Werror=3Dunknown-warning-option -Wn=
o-frame-address -Wno-address-of-packed-member -Wno-format-invalid-specifier=
 -Wno-gnu -Wno-tautological-compare -Wno-unused-const-variable -Wdeclaratio=
n-after-statement -Wvla -Wno-pointer-sign -Werror=3Ddate-time -Werror=3Dinc=
ompatible-pointer-types -Wno-initializer-overrides -Wno-format -Wno-sign-co=
mpare -Wno-format-zero-length -std=3Dgnu89 -fno-dwarf-directory-asm -fdebug=
-compilation-dir /kbuild/obj/consumer/powerpc-defconfig -ferror-limit 19 -f=
message-length 0 -pg -fwrapv -fno-signed-char -fwchar-type=3Dshort -fno-sig=
ned-wchar -fgnuc-version=3D4.2.1 -fobjc-runtime=3Dgcc -fdiagnostics-show-op=
tion -vectorize-loops -vectorize-slp -o /tmp/be_cmds-26db70.s -x c drivers/=
net/ethernet/emulex/benet/be_cmds.c
   1. <eof> parser at end of file
   2. Code generation
   3. Running pass 'Function Pass Manager' on module 'drivers/net/ethernet/=
emulex/benet/be_cmds.c'.
   4. Running pass 'PowerPC DAG->DAG Pattern Instruction Selection' on func=
tion '@be_cmd_rss_config'
   #0 0x000055c3204acdca llvm::sys::PrintStackTrace(llvm::raw_ostream&) (/o=
pt/cross/clang-1ac403bd14/bin/clang-11+0x2a88dca)
   #1 0x000055c3204aab15 llvm::sys::RunSignalHandlers() (/opt/cross/clang-1=
ac403bd14/bin/clang-11+0x2a86b15)
   #2 0x000055c3204aac32 SignalHandler(int) (/opt/cross/clang-1ac403bd14/bi=
n/clang-11+0x2a86c32)
   #3 0x00007f1e26d93520 __restore_rt (/lib/x86_64-linux-gnu/libpthread.so.=
0+0x13520)
   #4 0x000055c3210869be llvm::TargetLowering::SimplifyDemandedBits(llvm::S=
DValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::Tar=
getLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/clan=
g-1ac403bd14/bin/clang-11+0x36629be)
   #5 0x000055c32108a3a2 llvm::TargetLowering::SimplifyDemandedBits(llvm::S=
DValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::Tar=
getLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/clan=
g-1ac403bd14/bin/clang-11+0x36663a2)
   #6 0x000055c320f63fae (anonymous namespace)::DAGCombiner::SimplifyDemand=
edBits(llvm::SDValue) (.constprop.857) (/opt/cross/clang-1ac403bd14/bin/cla=
ng-11+0x353ffae)
   #7 0x000055c320f6b9d2 (anonymous (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x35479d2)
   #8 0x000055c320f6ca8a (anonymous (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x3548a8a)
   #9 0x000055c320f9913e (anonymous (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x357513e)
   #10 0x000055c320f99edc (anonymous (/opt/cross/clang-1ac403bd14/bin/clang=
-11+0x3575edc)
   #11 0x000055c320f9b9c1 llvm::SelectionDAG::Combine(llvm::CombineLevel, l=
lvm::CodeGenOpt::Level) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x35779c1=
)
   #12 0x000055c321065c1b llvm::SelectionDAGISel::CodeGenAndEmitDAG() (/opt=
/cross/clang-1ac403bd14/bin/clang-11+0x3641c1b)
   #13 0x000055c321069e62 llvm::SelectionDAGISel::SelectAllBasicBlocks(llvm=
::Function const&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3645e62)
   #14 0x000055c32106ba0d llvm::SelectionDAGISel::runOnMachineFunction(llvm=
::MachineFunction&) (.part.816) (/opt/cross/clang-1ac403bd14/bin/clang-11+0=
x3647a0d)
   #15 0x000055c31f31df55 (anonymous namespace)::PPCDAGToDAGISel::runOnMach=
ineFunction(llvm::MachineFunction&) (/opt/cross/clang-1ac403bd14/bin/clang-=
11+0x18f9f55)
   #16 0x000055c31fb1b467 llvm::MachineFunctionPass::runOnFunction(llvm::Fu=
nction&) (.part.40) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x20f7467)
   #17 0x000055c31fe77dfb llvm::FPPassManager::runOnFunction(llvm::Function=
&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x2453dfb)
   #18 0x000055c31fe78493 llvm::FPPassManager::runOnModule(llvm::Module&) (=
/opt/cross/clang-1ac403bd14/bin/clang-11+0x2454493)
   #19 0x000055c31fe787eb llvm::legacy::PassManagerImpl::run(llvm::Module&)=
 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x24547eb)
   #20 0x000055c3206c9228 (anonymous namespace)::EmitAssemblyHelper::EmitAs=
sembly(clang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std::=
default_delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/bin=
/clang-11+0x2ca5228)
   #21 0x000055c3206cab85 clang::EmitBackendOutput(clang::DiagnosticsEngine=
&, clang::HeaderSearchOptions const&, clang::CodeGenOptions const&, clang::=
TargetOptions const&, clang::LangOptions const&, llvm::DataLayout const&, c=
lang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std::default_=
delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/bin/clang-1=
1+0x2ca6b85)
   #22 0x000055c32115b425 clang::BackendConsumer::HandleTranslationUnit(cla=
ng::ASTContext&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3737425)
   #23 0x000055c32195b909 clang::ParseAST(clang::Sema&, bool, bool) (/opt/c=
ross/clang-1ac403bd14/bin/clang-11+0x3f37909)
   #24 0x000055c320bf28a1 clang::FrontendAction::Execute() (/opt/cross/clan=
g-1ac403bd14/bin/clang-11+0x31ce8a1)
   #25 0x000055c320bb3d08 clang::CompilerInstance::ExecuteAction(clang::Fro=
ntendAction&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x318fd08)
   #26 0x000055c320c97ed9 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3273e=
d9)
   #27 0x000055c31e8cd1ec cc1_main(llvm::ArrayRef<char char (/opt/cross/cla=
ng-1ac403bd14/bin/clang-11+0xea91ec)
   #28 0x000055c31e8ca2e7 ExecuteCC1Tool(llvm::SmallVectorImpl<char (/opt/c=
ross/clang-1ac403bd14/bin/clang-11+0xea62e7)
   #29 0x000055c31e80f523 main (/opt/cross/clang-1ac403bd14/bin/clang-11+0x=
deb523)
   #30 0x00007f1e268a8bbb __libc_start_main (/lib/x86_64-linux-gnu/libc.so.=
6+0x26bbb)
   #31 0x000055c31e8c9d6a _start (/opt/cross/clang-1ac403bd14/bin/clang-11+=
0xea5d6a)
>> clang-11: error: unable to execute command: Segmentation fault
>> clang-11: error: clang frontend command failed due to signal (use -v to =
see invocation)
   clang version 11.0.0 (git://gitmirror/llvm_project 1ac403bd145dadfa1004a=
f29bd6c77f871caf42c)
   Target: powerpc64-unknown-linux-gnu
   Thread model: posix
   InstalledDir: /opt/cross/clang-latest/bin
   clang-11: note: diagnostic msg: PLEASE submit a bug report to https://bu=
gs.llvm.org/ and include the crash backtrace, preprocessed source, and asso=
ciated run script.
   clang-11: note: diagnostic msg:
   Makefile arch drivers include kernel null.dwo scripts source usr virt

vim +/core99_l2_cache +664 arch/powerpc/platforms/powermac/smp.c

5b9ca526917b7b Benjamin Herrenschmidt 2006-01-07  662 =20
35499c0195e46f Paul Mackerras         2005-10-22  663  /* L2 and L3 cache s=
ettings to pass from CPU0 to CPU1 on G4 cpus */
35499c0195e46f Paul Mackerras         2005-10-22 @664  volatile static long=
 int core99_l2_cache;
35499c0195e46f Paul Mackerras         2005-10-22 @665  volatile static long=
 int core99_l3_cache;
35499c0195e46f Paul Mackerras         2005-10-22  666 =20

:::::: The code at line 664 was first introduced by commit
:::::: 35499c0195e46f479cf6ac16ad8d3f394b5fcc10 powerpc: Merge in 64-bit po=
wermac support.

:::::: TO: Paul Mackerras <paulus@samba.org>
:::::: CC: Paul Mackerras <paulus@samba.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202003251537.N3F2RWO7%25lkp%40intel.com.

--9amGYk9869ThD9tj
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
hAUAjb15Gt1DHBNP+SL9f1qvnXENpAEA

--9amGYk9869ThD9tj--
