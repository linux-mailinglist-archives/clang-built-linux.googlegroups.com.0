Return-Path: <clang-built-linux+bncBCVLFUWIZIBBBGMPQ3YAKGQEG4D2LOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F382129D14
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 04:35:54 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id e22sf7551042ote.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 19:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nWfiHRQxoleZkCieRWFvDFlSNNxkgf037gYUC4YsjgM=;
        b=s5ndqcDh7i21ZJqaH6bUdkucQxOREdv/F4BECi/65Y9G/bKuDmA/QS++sZJlSbbws0
         kZP0ugk/FJiN0brw4DlOQk/4EQHmSMNAhtAQJcus460Z4KFqdH+wEKzgx5vicrckad6Z
         e5L6+q7HaD1MN7qdYK3Xl/uqVEyD1sJgX8kFRPHPvMJUJDeFfAonzI/RZIwCA+T0Uco9
         pEfLbgPmALqj6OtBUo7chifSk+uTemarV1V1rZAiNF1hnoTeD4KJvst6hXd0Qp80NNvc
         /9g9tgXdK+ArB6t5aM796QGcUmQf3HOPwOM7wEiY7CDKc2fzEMx5Z/U0v2vXcclYS8wN
         7Pqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nWfiHRQxoleZkCieRWFvDFlSNNxkgf037gYUC4YsjgM=;
        b=UkAmaIHyzmDb9coiCWnCvyt8AImPDYYe+eviIqgieaQybfQfSKmEIQP+sf0c3y/YKj
         XNcm3uVogR25hJTs4iKz00jhcm3lNDY+RwonPs+Oxlqv2xyh/pIcCTyGBY/vUxVazyVi
         JZBVtwPd/Wwr3/aylc+FJxAZIY/dtSeXSKyunb/OOk4XTBDMAiI6xxFA0k+6ptuXRuJk
         SZRITWf8ATF/hcmJFJwU6fLUQukmTg3mWp7tIQiccoJkvULZq87HJ/WPbixZD/MWDo0C
         do/0i3Z9EBGa/GOZuQVM/LHlhChf/6Jccxrb4mFuxRlm9hSJ5VsR/8YiXhEblyvhZYfP
         Idvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsGGwtyBvPtnV84SDOlhiseat+GebsRkIRV/Fsnu6KgpZFNksz
	WULpiM4UQVx+rku7tOZF8QM=
X-Google-Smtp-Source: APXvYqw5Z6ILmUDVdzciaVSD6CvgYvUN5pOtGh6wk4nkZ2skiyZpsWh/SY6Lng/F/JJiswLFUfbfJA==
X-Received: by 2002:a05:6830:1bf8:: with SMTP id k24mr21531736otb.215.1577158553083;
        Mon, 23 Dec 2019 19:35:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7198:: with SMTP id o24ls3533773otj.10.gmail; Mon, 23
 Dec 2019 19:35:52 -0800 (PST)
X-Received: by 2002:a9d:f26:: with SMTP id 35mr37883702ott.260.1577158552592;
        Mon, 23 Dec 2019 19:35:52 -0800 (PST)
Date: Mon, 23 Dec 2019 19:35:52 -0800 (PST)
From: yan <hyouyan@126.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <68970e42-1632-4894-a2ad-c9e68ed5192d@googlegroups.com>
Subject: Compile qualcomm qcm2150 android kernel driver module with
 scan-build,report  Error: no such instruction: `cbnz %di,1b'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1085_1415947186.1577158552008"
X-Original-Sender: hyouyan@126.com
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

------=_Part_1085_1415947186.1577158552008
Content-Type: multipart/alternative; 
	boundary="----=_Part_1086_341073525.1577158552008"

------=_Part_1086_341073525.1577158552008
Content-Type: text/plain; charset="UTF-8"

Hi all:
       I want to use clang static analyzer to check my linux driver on 
qualcomm qcm2150. I have successfully build my driver use clang, but when I 
use scan-build, report a lot of error(no such instruction):
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h: 
Assembler messages:
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:292: 
Error: no such instruction: `prfm pstl1strm,%rax'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:293: 
Error: no such instruction: `ldxr %si,%rax'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:294: 
Error: no such instruction: `eor %di,%si,%dx'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:295: 
Error: no such instruction: `cbnz %di,2f'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:296: 
Error: no such instruction: `stlxr %di,%cx,%rax'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:297: 
Error: no such instruction: `cbnz %di,1b'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:298: 
Error: no such instruction: `dmb ish'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:292: 
Error: no such instruction: `prfm pstl1strm,%rax'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:293: 
Error: no such instruction: `ldxr %r9w,%rax'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:294: 
Error: no such instruction: `eor %dx,%r9w,%si'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:295: 
Error: no such instruction: `cbnz %dx,2f'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:296: 
Error: no such instruction: `stlxr %dx,%cx,%rax'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:297: 
Error: no such instruction: `cbnz %dx,1b'
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h:298: 
Error: no such instructio

I compile ti use module build solution:
the makefile:
ifeq ($(obj),)
obj=.
endif

ifeq ($(KDIR),)
KDIR := 
/home/huangyy/workspace/qcm2150/out/target/product/msm8937_64/obj/KERNEL_OBJ
endif
include $(KDIR)/.config

obj-m += se_driver.o

PWD := $(shell pwd)

all:
$(MAKE) ARCH=arm64 
CROSS_COMPILE=/home/huangyy/workspace/qcm2150/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android- 
REAL_CC=/home/workspace/huangyy/qcm2150/vendor/qcom/proprietary/llvm-arm-toolchain-ship/8.0/bin/clang 
CLANG_TRIPLE=aarch64-linux-gnu- -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
$(MAKE) -C $(KDIR) M=`pwd` clean


build command:
./vendor/qcom/proprietary/llvm-arm-toolchain-ship/8.0/bin/scan-build make 
-C kernel/msm-4.9/drivers/misc/se_driver/

How can I fix it? 




thanks and best regards 
youyan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/68970e42-1632-4894-a2ad-c9e68ed5192d%40googlegroups.com.

------=_Part_1086_341073525.1577158552008
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all:<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0I want to use clang=
 static analyzer to check my linux driver on qualcomm qcm2150. I have succe=
ssfully build my driver use clang, but when I use scan-build, report a lot =
of error(no such instruction):</div><div><div>/home/workspace/huangyy/qcm21=
50/kernel/msm-4.9/arch/arm64/include/asm/atomic_ll_sc.h: Assembler messages=
:</div><div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/inclu=
de/asm/atomic_ll_sc.h:292: Error: no such instruction: `prfm pstl1strm,%rax=
&#39;</div><div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/i=
nclude/asm/atomic_ll_sc.h:293: Error: no such instruction: `ldxr %si,%rax&#=
39;</div><div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/inc=
lude/asm/atomic_ll_sc.h:294: Error: no such instruction: `eor %di,%si,%dx&#=
39;</div><div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/inc=
lude/asm/atomic_ll_sc.h:295: Error: no such instruction: `cbnz %di,2f&#39;<=
/div><div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include=
/asm/atomic_ll_sc.h:296: Error: no such instruction: `stlxr %di,%cx,%rax&#3=
9;</div><div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/incl=
ude/asm/atomic_ll_sc.h:297: Error: no such instruction: `cbnz %di,1b&#39;</=
div><div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/=
asm/atomic_ll_sc.h:298: Error: no such instruction: `dmb ish&#39;</div><div=
>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atom=
ic_ll_sc.h:292: Error: no such instruction: `prfm pstl1strm,%rax&#39;</div>=
<div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/=
atomic_ll_sc.h:293: Error: no such instruction: `ldxr %r9w,%rax&#39;</div><=
div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/a=
tomic_ll_sc.h:294: Error: no such instruction: `eor %dx,%r9w,%si&#39;</div>=
<div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/=
atomic_ll_sc.h:295: Error: no such instruction: `cbnz %dx,2f&#39;</div><div=
>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atom=
ic_ll_sc.h:296: Error: no such instruction: `stlxr %dx,%cx,%rax&#39;</div><=
div>/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/a=
tomic_ll_sc.h:297: Error: no such instruction: `cbnz %dx,1b&#39;</div><div>=
/home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/atomi=
c_ll_sc.h:298: Error: no such instructio</div></div><div><br></div><div>I c=
ompile ti use module build solution:</div><div>the makefile:</div><div><div=
>ifeq ($(obj),)</div><div><span style=3D"white-space:pre">	</span>obj=3D.</=
div><div>endif</div><div><br></div><div>ifeq ($(KDIR),)</div><div>KDIR :=3D=
 /home/huangyy/workspace/qcm2150/out/target/product/msm8937_64/obj/KERNEL_O=
BJ</div><div>endif</div><div>include $(KDIR)/.config</div><div><br></div><d=
iv>obj-m +=3D se_driver.o</div><div><br></div><div>PWD :=3D $(shell pwd)</d=
iv><div><br></div><div>all:</div><div><span style=3D"white-space:pre">	</sp=
an>$(MAKE) ARCH=3Darm64 CROSS_COMPILE=3D/home/huangyy/workspace/qcm2150/pre=
builts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-an=
droid- REAL_CC=3D/home/workspace/huangyy/qcm2150/vendor/qcom/proprietary/ll=
vm-arm-toolchain-ship/8.0/bin/clang CLANG_TRIPLE=3Daarch64-linux-gnu- -C $(=
KDIR) SUBDIRS=3D$(PWD) modules</div><div><br></div><div>clean:</div><div><s=
pan style=3D"white-space:pre">	</span>$(MAKE) -C $(KDIR) M=3D`pwd` clean</d=
iv></div><div><br></div><div><br></div><div>build command:</div><div>./vend=
or/qcom/proprietary/llvm-arm-toolchain-ship/8.0/bin/scan-build make -C kern=
el/msm-4.9/drivers/misc/se_driver/<br></div><div><br></div><div>How can I f=
ix it?=C2=A0</div><div><br></div><div><br></div><div><br></div><div><br></d=
iv><div>thanks and best regards=C2=A0</div><div>youyan</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/68970e42-1632-4894-a2ad-c9e68ed5192d%40googleg=
roups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com=
/d/msgid/clang-built-linux/68970e42-1632-4894-a2ad-c9e68ed5192d%40googlegro=
ups.com</a>.<br />

------=_Part_1086_341073525.1577158552008--

------=_Part_1085_1415947186.1577158552008--
