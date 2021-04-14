Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVEE3GBQMGQEM5RKZII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C62FD35EA3F
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 03:16:05 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id l186-20020a1fedc30000b02901d8ea264cc4sf19448vkh.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 18:16:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618362964; cv=pass;
        d=google.com; s=arc-20160816;
        b=cSmLNCFkIfXyHpp37hqC4TmQkq8UDNUiInCy/TLZfpbZMd4Nrt+TMjMtWwl6s44/5z
         bfFYwrDD4tc15rXnRakL1I+f3XqsfdPjLkiBiRiCxcY5lTBG1ULXMiUH3oZqRbfF0NnW
         /Tu75KTiCg2p7KJhzfkDi6JQP9uo97ZZtPOXPGEoGk05AxZ7AO1Iyq0RrdMKZeSwQ2pQ
         ktumbcnecEG5+/snubuo44SR2HVwsrABKnJBE0M3ekwCA1BeD0ueRfuSj6grWc8NFf7Y
         IlQPTDl7zsVsSNU/GaFQH9YZXAwAqtny57riekel2qFMbiqbVmP8cidBZFTrFPd5FyG5
         kGUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=CmheOSGH5+wdqeY6+iIrYG9xuaPp9DSxGYtJy7AfBLw=;
        b=BGQ/PYwG1KCKMhBN8aYgKKcMVaX7wd9x2N3Ytlhfl/kHY7Yl03Vv/i2/CE+VXTDqvb
         uiNNZbJ9OY8M+SJRqPXJVJgmRhX47GdREoF8lKL3lXxSZKP9V8e29dkV5qiDBC+TY2dF
         Gjof7qEda51fQkR4T7jmAKNKfCo9Zs0olxlg8OuHEWulsz9yHZyTUAYOVcE86XRx5h70
         tycCdNPTxacLkoFwD4dYY3sU+0124PtxxaF1VoVxiX60vvFVBEAVWUppyRun3z2jZadc
         c4mAeLL6u9CrBNUupzsuFPVftQ7kIyGwTs11U9RBFvam0u+trjmn53ahsG4qMJECMZad
         DRMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CmheOSGH5+wdqeY6+iIrYG9xuaPp9DSxGYtJy7AfBLw=;
        b=teu0FuJghxiqoGH/bHPFdDIBmMROV+9XlFPi8j8svG82wPKHzbSGnU39rxDrtbFQCD
         X3weflAv4mOUAkIn70rZXp3HCfAqwfZiwCCx5co42rCUhBuVtRtQjB7f67jOd8kp2k5V
         2B7lbLqCcvTVJLkiGS+CQU0hIamfQy9pWqix3tMCFm6FhYg/Do5kyzNntNgfuu306s5p
         evCw6srRJHsb9K5Uvs8EgZEyMdtNZqUXPLe/IAJQj0ATBeiQgwtwM1GqR0GePvlALsLp
         yR/CSNpzPe+bnPs2DOErlC10Yojd449+XPCz89Tg0AVbuB4112PuUTnyq9leDooS3b/g
         kG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CmheOSGH5+wdqeY6+iIrYG9xuaPp9DSxGYtJy7AfBLw=;
        b=GisXItZrh4mlYHh6q7w7PBXjS+ey+LjhES29seystydXk5X87XlClu/DxueTYfK9Em
         7COoNwV/EuIKc/g+GCxFt6YB13U7JeLDe8o9HBgOLuPiHqTMvG/iQ8XnoMTOvejrH2Ut
         +/ma+MoXDVUi6KQFkfWWbh3n+p5SXHvuh4tiMPBH4/hlXrN1XRLmMckGyObAfMrkd2Zi
         ECQiskJlvDtPvZtQZesUYyE6o2kiZYvPGLyHS2KCxaZu3Y72S48QQurevIsr5h+LiY+2
         jxlrWGlGNpo8FJKM8u6QnC9IMi+H1MNdELenPEYZpFaZnBYTDWSIkCfoghkYGQx5nzT2
         jxxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339/B9HjYNb2kC3RZn2Q5Fh/gv2hjwqjClghQQcgwHN3SAB6cvz
	fwoxPsJlqGjNoVnza8fm/+s=
X-Google-Smtp-Source: ABdhPJxdkd/SfLrzmLSKUfMS0Y5r8UHrQ+kphDM8Bbn8sRKJFQJY1q8ZcU5suB3hdVBz2QCNQr8VrA==
X-Received: by 2002:a67:f84a:: with SMTP id b10mr27615898vsp.10.1618362964607;
        Tue, 13 Apr 2021 18:16:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2702:: with SMTP id n2ls119123vsn.2.gmail; Tue, 13 Apr
 2021 18:16:04 -0700 (PDT)
X-Received: by 2002:a67:cc5:: with SMTP id 188mr27333246vsm.4.1618362963957;
        Tue, 13 Apr 2021 18:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618362963; cv=none;
        d=google.com; s=arc-20160816;
        b=oTETdV6cWnR+f2DHWQqkiVk/rhi+EDU6kC+HI4VxzTyL/biq+i8rN+b2J6OabJfw+U
         PAPc3oLDHp9L07bcgBLfQHuqNDzldevTn/652gpzh78jadZV9Lxe+VGcASw92AkWhh1Q
         Kphx91a1/UgP5BPATU7c7BGYv3eGflOMOUj0Eyl9Wu+8GCH+He9Auz8z5UciMVCPEqUS
         t5jflnWTpF+zQ57KkYKw8pkFnV2sedakVvmyqskXl00kFNErizSVLZfuhTF85eoJGHA4
         9f5inM88meV0R6/r37Om1fae8T9/PwuYIxuu3tai4nX0BfIdcV0PMDCMhzJsE5Ng1Y5w
         DqXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=ntKQ89IN2p49BtyinLfad/ebLQQowFYBBsgNuE5K0WY=;
        b=iN7MZGGt/salVcA99Th7GWPy8dBL7o/z8PNBvZM+DPaw49BmI+UIU+Bs/ibvK3ptR3
         AmkCVJzxX9iHhepKFxp08qntWonK0orjlH65B1fQi3eXesRQmaUkePhAevVIKdfhm3gL
         4JNa4NDBnEPgDpSOSIdBku7H/6o549PI/CQhfQ1XFj7h/qAfXHbD8Un9Ofq7ZgbYAocx
         yv7XqADgQ1JHn/aSgFPCz3vm6Ivhq8bk64y4OFv0HYyCUSVoLUxwsL1dBselngyTZVAG
         q4GGsr9Gp/MP10Zt82HtkffTnndBO22x7enuVV10bWdB5qcO7Q2JiY2bRndLUFczjsls
         Jvmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id v23si899665uak.0.2021.04.13.18.16.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 18:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: I2FQRx4ajHOOwurDvYDxlLlaCrGRLlmZdGVNitAUk2PavI9dZ4YUY8/CJlPfU9B2o36zRv4dbD
 bDYuuQkxrMog==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194565482"
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="194565482"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 18:16:00 -0700
IronPort-SDR: dy83zDItHGxeVzqxNjJpAPqQgh0LpivTTivgLhzG8cQxOvA0kF16ni5iCWkCD3xzR9cXbmTE4G
 NI5qFAhQ1+Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="460799362"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 13 Apr 2021 18:15:58 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWU8M-0001Py-4b; Wed, 14 Apr 2021 01:15:58 +0000
Date: Wed, 14 Apr 2021 09:15:33 +0800
From: kernel test robot <lkp@intel.com>
To: Faycal Benmlih <faycal.benmlih@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: =?iso-8859-1?Q?=5Bmchinth=3A=A0sep=5Fsocwa?=
 =?iso-8859-1?B?dGNoX2xpbnV4XzVfOSAxOS80MV0gZHJpdmVycy9wbGF0Zm9ybS94ODYv?=
 =?iso-8859-1?Q?socwatch=2Fsw=5Foutput=5Fbuffer=2Ec=3A398=3A6=3A_warning?=
 =?iso-8859-1?B?OiBu?= =?iso-8859-1?Q?o?= previous prototype for function
 'reset_output_buffers'
Message-ID: <202104140925.axURYV4Q-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://github.com/mchinth/linux =C2=A0sep_socwatch_linux_5_9
head:   7296486889985b9d9895a39f551764a4b0425bea
commit: e65547c5a9bb37e907edecece4da7cb12dadea96 [19/41] platform/x86: Use =
$(srctree) instead of $(src) to adapt to kbuild regression
config: x86_64-randconfig-r016-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5=
e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/mchinth/linux/commit/e65547c5a9bb37e907edecece=
4da7cb12dadea96
        git remote add mchinth https://github.com/mchinth/linux
        git fetch --no-tags mchinth =C2=A0sep_socwatch_linux_5_9
        git checkout e65547c5a9bb37e907edecece4da7cb12dadea96
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/platform/x86/socwatch/sw_output_buffer.c:398:6: warning: no prev=
ious prototype for function 'reset_output_buffers' [-Wmissing-prototypes]
   void reset_output_buffers(void)
        ^
   drivers/platform/x86/socwatch/sw_output_buffer.c:398:1: note: declare 's=
tatic' if the function is not intended to be used outside of this translati=
on unit
   void reset_output_buffers(void)
   ^
   static=20
   1 warning generated.
--
>> drivers/platform/x86/socwatch/sw_collector.c:86:1: warning: no previous =
prototype for function 'sw_copy_driver_interface_info_i' [-Wmissing-prototy=
pes]
   sw_copy_driver_interface_info_i(const struct sw_driver_interface_info *i=
nfo)
   ^
   drivers/platform/x86/socwatch/sw_collector.c:85:1: note: declare 'static=
' if the function is not intended to be used outside of this translation un=
it
   struct sw_driver_interface_info *
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:116:5: warning: no previous=
 prototype for function 'sw_init_driver_interface_info_i' [-Wmissing-protot=
ypes]
   int sw_init_driver_interface_info_i(struct sw_driver_interface_info *inf=
o)
       ^
   drivers/platform/x86/socwatch/sw_collector.c:116:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   int sw_init_driver_interface_info_i(struct sw_driver_interface_info *inf=
o)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:138:5: warning: no previous=
 prototype for function 'sw_init_ops_i' [-Wmissing-prototypes]
   int sw_init_ops_i(const struct sw_hw_ops **ops,
       ^
   drivers/platform/x86/socwatch/sw_collector.c:138:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   int sw_init_ops_i(const struct sw_hw_ops **ops,
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:157:8: warning: no previous=
 prototype for function 'sw_get_payload_size_i' [-Wmissing-prototypes]
   size_t sw_get_payload_size_i(const struct sw_driver_interface_info *info=
)
          ^
   drivers/platform/x86/socwatch/sw_collector.c:157:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   size_t sw_get_payload_size_i(const struct sw_driver_interface_info *info=
)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:175:1: warning: no previous=
 prototype for function 'sw_alloc_collector_msg_i' [-Wmissing-prototypes]
   sw_alloc_collector_msg_i(const struct sw_driver_interface_info *info,
   ^
   drivers/platform/x86/socwatch/sw_collector.c:174:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   sw_driver_msg_t *
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:211:26: warning: no previou=
s prototype for function 'sw_alloc_ops_i' [-Wmissing-prototypes]
   const struct sw_hw_ops **sw_alloc_ops_i(pw_u16_t num_io_descriptors)
                            ^
   drivers/platform/x86/socwatch/sw_collector.c:211:7: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   const struct sw_hw_ops **sw_alloc_ops_i(pw_u16_t num_io_descriptors)
         ^
         static=20
>> drivers/platform/x86/socwatch/sw_collector.c:323:6: warning: no previous=
 prototype for function 'sw_free_driver_interface_info_i' [-Wmissing-protot=
ypes]
   void sw_free_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:323:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_free_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:329:6: warning: no previous=
 prototype for function 'sw_free_ops_i' [-Wmissing-prototypes]
   void sw_free_ops_i(const struct sw_hw_ops **ops)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:329:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_free_ops_i(const struct sw_hw_ops **ops)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:335:5: warning: no previous=
 prototype for function 'sw_reset_driver_interface_info_i' [-Wmissing-proto=
types]
   int sw_reset_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
       ^
   drivers/platform/x86/socwatch/sw_collector.c:335:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   int sw_reset_driver_interface_info_i(struct sw_driver_interface_info *in=
fo)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:453:6: warning: no previous=
 prototype for function 'sw_free_collector_msg_i' [-Wmissing-prototypes]
   void sw_free_collector_msg_i(sw_driver_msg_t *msg)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:453:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_free_collector_msg_i(sw_driver_msg_t *msg)
   ^
   static=20
>> drivers/platform/x86/socwatch/sw_collector.c:459:6: warning: no previous=
 prototype for function 'sw_handle_per_cpu_msg_i' [-Wmissing-prototypes]
   void sw_handle_per_cpu_msg_i(void *info, enum sw_wakeup_action action)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:459:1: note: declare 'stati=
c' if the function is not intended to be used outside of this translation u=
nit
   void sw_handle_per_cpu_msg_i(void *info, enum sw_wakeup_action action)
   ^
   static=20
   11 warnings generated.
--
   drivers/platform/x86/socwatch/sw_telem.c:239:32: error: implicit declara=
tion of function 'ioremap_nocache' [-Werror,-Wimplicit-function-declaration=
]
           s_punitInterfaceAddr =3D (u64 *)ioremap_nocache(
                                         ^
   drivers/platform/x86/socwatch/sw_telem.c:239:32: note: did you mean 'ior=
emap_cache'?
   arch/x86/include/asm/io.h:185:22: note: 'ioremap_cache' declared here
   extern void __iomem *ioremap_cache(resource_size_t offset, unsigned long=
 size);
                        ^
   drivers/platform/x86/socwatch/sw_telem.c:239:25: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_punitInterfaceAddr =3D (u64 *)ioremap_nocache(
                                  ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:242:20: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_punitDataAddr =3D (u64 *)ioremap_nocache(
                             ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:245:50: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_telemEventInfo[TELEM_PUNIT].ssram_virt_addr =3D (u64 *)ioremap=
_nocache(
                                                           ^~~~~~~~~~~~~~~~=
~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:280:27: error: implicit declara=
tion of function 'ioremap_nocache' [-Werror,-Wimplicit-function-declaration=
]
           s_pmcIPCCmdAddr =3D (u64 *)ioremap_nocache(
                                    ^
   drivers/platform/x86/socwatch/sw_telem.c:280:20: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCCmdAddr =3D (u64 *)ioremap_nocache(
                             ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:283:20: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCStsAddr =3D (u64 *)ioremap_nocache(
                             ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:286:21: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCWBufAddr =3D (u64 *)ioremap_nocache(
                              ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:289:21: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_pmcIPCRBufAddr =3D (u64 *)ioremap_nocache(
                              ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/socwatch/sw_telem.c:292:48: warning: cast to 'u64 *=
' (aka 'unsigned long long *') from smaller integer type 'int' [-Wint-to-po=
inter-cast]
           s_telemEventInfo[TELEM_PMC].ssram_virt_addr =3D (u64 *)ioremap_n=
ocache(
                                                         ^~~~~~~~~~~~~~~~~~=
~~~~~
>> drivers/platform/x86/socwatch/sw_telem.c:671:5: warning: no previous pro=
totype for function 'read_telem' [-Wmissing-prototypes]
   int read_telem(u64 *dst, enum telemetry_unit unit, bool should_retry)
       ^
   drivers/platform/x86/socwatch/sw_telem.c:671:1: note: declare 'static' i=
f the function is not intended to be used outside of this translation unit
   int read_telem(u64 *dst, enum telemetry_unit unit, bool should_retry)
   ^
   static=20
   9 warnings and 2 errors generated.


vim +/reset_output_buffers +398 drivers/platform/x86/socwatch/sw_output_buf=
fer.c

688e338c753b33c Faycal Benmlih 2019-04-23  397 =20
688e338c753b33c Faycal Benmlih 2019-04-23 @398  void reset_output_buffers(v=
oid)
688e338c753b33c Faycal Benmlih 2019-04-23  399  {
688e338c753b33c Faycal Benmlih 2019-04-23  400  	buffer.read_index =3D buff=
er.write_index =3D 0;
688e338c753b33c Faycal Benmlih 2019-04-23  401  }
688e338c753b33c Faycal Benmlih 2019-04-23  402 =20

:::::: The code at line 398 was first introduced by commit
:::::: 688e338c753b33c023de3b774f7347effbf537a4 Platform/x86: Update SoCWat=
ch driver code to 2.10

:::::: TO: Faycal Benmlih <faycal.benmlih@intel.com>
:::::: CC: Faycal Benmlih <faycal.benmlih@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202104140925.axURYV4Q-lkp%40intel.com.

--2fHTh5uZTiUOsy+g
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICLAwdmAAAy5jb25maWcAjFxLe9s2s973V+hJN/0WTW3HUZNzHi8gEpRQkQQLgLLkDR5H
ZlKf+pJPltvm358ZgBcABJV2kZqYwYXAXN4ZDPXjDz/OyOvx+fH2eL+/fXj4NvvSPDWH22Nz
N/t8/9D87yzls5KrGU2ZegvM+f3T6z+//PNhrueXs/dvP749+/mwn8/WzeGpeZglz0+f77+8
Qv/756cffvwh4WXGljpJ9IYKyXipFd2qqzf7h9unL7O/msML8M3O3709e3s2++nL/fF/fvkF
/n28PxyeD788PPz1qL8env+v2R9nHz9cfPz8vpl/Ov+0v/34aX7efN7PLz7++uvZ3cWHT58+
np1f3jX7y/f/edPNuhymvTrrGvN03AZ8TOokJ+Xy6pvDCI15ng5NhqPvfv7uDP5zxkhIqXNW
rp0OQ6OWiiiWeLQVkZrIQi+54pMEzWtV1SpKZyUMTR0SL6USdaK4kEMrE7/ray6cdS1qlqeK
FVQrssipllw4E6iVoATevsw4/AMsErvCaf44WxrheJi9NMfXr8P5LgRf01LD8cqiciYumdK0
3GgiYD9ZwdTVuwsYpV9tUTGYXVGpZvcvs6fnIw7cHwBPSN5t9ps3sWZNanfnzGtpSXLl8K/I
huo1FSXN9fKGOctzKQugXMRJ+U1B4pTtzVQPPkW4jBNupEI567fGWa+7MyHdrPoUA679FH17
c7o3j5yL9y5hF3yRSJ+UZqTOlZEI52y65hWXqiQFvXrz09PzUwMq3I8rd3LDqiS6zIpLttXF
7zWtaWTSa6KSlTZUR0UEl1IXtOBip4lSJFkNxFrSnC3c1yI12L3I2ObwiIDxDQesEqQy79QE
NG728vrp5dvLsXkc1GRJSypYYhSyEnzhLMslyRW/dsVEpNAqtbzWgkpapvFeycqVbWxJeUFY
6bdJVsSY9IpRga+zGw9eSIack4TRPO6qCqIEnBHsDagtmKU4F76X2IB9BJUueEr9JWZcJDRt
zRJzbbSsiJC0XV1/Zu7IKV3Uy0z64tM83c2ePwenNBh5nqwlr2FOK0Epd2Y0R+6yGIn+Fuu8
ITlLiaI6J1LpZJfkkfM2RngziE9ANuPRDS2VPElEC0zSBCY6zVbAUZP0tzrKV3Cp6wqXHBgp
q2dJVZvlCmlcQuBSTvIYpVD3j+DvY3oBfnENzoOC4DvrKrle3aCTKHjpHi80VrBgnrIkopi2
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

--2fHTh5uZTiUOsy+g--
