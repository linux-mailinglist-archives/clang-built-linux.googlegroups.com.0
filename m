Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJNWZH4QKGQEG5BURQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ECA241870
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 10:47:34 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 4sf9912251pfd.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 01:47:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597135653; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZJs1R6Idf1KFXzV/ZRVzA57RXPu7CHevnhvsIQjlNkgM7qVHI+ypNbbFEyKqDnaylF
         ryLbPFrnrsn+kQfQzQkNE57uAISTlK4YiUO+HqmnVwhBgrVCyXxELn9o7py8rLmFIMO2
         UaWbvMfzuGlTLQSohlxY3EjxKnWYx9LOd7SHsLAxbm6WBmHTlXKzReZSJSzaaqcojTun
         Z+hY5kugqko1t6mlz6CyTa/M9gLhiFt4ozGjDW7F1pzD6NKUxZzDwF8X549+irNk3oQG
         PcalgKOg4jwNbT5PYbdolzzuVgwnzllGjVfUg6HhoWVf/PEWsrEXXk5jMpRq9Pk7BD9W
         jMiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=J+juX5aMPgZgJ7gdAovW3QzY0WBDvE6bxYKe7TSvGQc=;
        b=Ba3EcmaVzHscGCTLtDgP3B1Pj7n8YFvWRzhXfaF9hEgtcb71jNG/XEnK7TrW0UanrY
         xPx2iKyO8R7duuSAgIQmw5rEOXitbcFsKr2+KQHnctkNKxq1M1MN7CCdO1e461ONpqXE
         6W7VIjZgnL/tCBRuD3rjPqSRi66wwonfwp87sVTBoRbAWaaPwioQousKsLoQYFgaQleS
         s4J6hMovHnfHGZTuA92NCJQ6Ivxon1tMpZFNcyfqiLImijVwmGWcdDAq88dLhTQJRc/0
         p9dJXc8XnaaxcKwcsdx0YMSciM1xY2dziGqt9MNKMTO2KNgGKspK44BWqv7DlJ9xdspr
         GaQQ==
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
        bh=J+juX5aMPgZgJ7gdAovW3QzY0WBDvE6bxYKe7TSvGQc=;
        b=HWckq3i/5DMLJCSl2NPb7yHDrB09Qq2uMWegTBh59IXhZKOOoEEKcxj+45L2Gh+Y2P
         icWgmCHtkBhglsw8eBvsWksqbqQFDeL6Jnf51+kc0nOeU/EmP5nQJYBnhLC+RHHOMxQn
         0L4CGoe8js9elv1DRBVWkn3AHtdigwlg2vMAJAyw1cWBNAjrHDAelm+I98r/AzFock01
         wmh0qeRBg5fsH5CPR35gP/gma8r4VMQRNDsrReWrgjUX0xDUfO6JlRTOixqgKplqpIGP
         FKknj1SxnOONUfZ6ZzMiJtstN9iTCy/u28oh9vNludGvqlBNzq8ktmOeIE5gOoDN66Sk
         BHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J+juX5aMPgZgJ7gdAovW3QzY0WBDvE6bxYKe7TSvGQc=;
        b=qw/zg5EsDS7NBUzn9jn6l3n+2IgL3RqmMuJ/UYI4DLtOfhS11A6dUjadRsU322ixYL
         cVcdB2W7JJF8GVDqCIl/hRdjlmX/CWijeHCGM+Ri/HmheQ4b0/vgya09uZVmqTeaqmVm
         oTjQYVdYjK2I5X4nU1hkyoSUvfZSUoC36TWagaxNC7SHcfN/pPIOIWW0L7pjD4TuFwzs
         cJ/JoPBuhqnmBjt1i4KKBW9bGekij4A842i8EljMkxr9uDkilkKRvFJT6nvPlO2pBs+C
         XtHwNZ+oku7GOjacTXmJyfRMHTE5GGz0y/X5TTZUE9jBNULzqHBkWZzRyxQLryIljQ6a
         /Scg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BbhArUUnKN6GdXa05ABBVCGR4c6J8Eqs8TltMxOOoUiy4tZtv
	BJdq+esLNFTPI/6W2tu9jEI=
X-Google-Smtp-Source: ABdhPJyK9lhBQyPSr8RBGHsTK41fbGIQZSlI143WTqnlUuMjwIH5J/Rtv0fxAeYVsPQvayr/EWQqLQ==
X-Received: by 2002:a17:902:322:: with SMTP id 31mr27361010pld.33.1597135653185;
        Tue, 11 Aug 2020 01:47:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:720b:: with SMTP id ba11ls3312597plb.0.gmail; Tue,
 11 Aug 2020 01:47:32 -0700 (PDT)
X-Received: by 2002:a17:90a:4d0b:: with SMTP id c11mr55999pjg.147.1597135652662;
        Tue, 11 Aug 2020 01:47:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597135652; cv=none;
        d=google.com; s=arc-20160816;
        b=Et2skeCVrlo8Y44bXNhI4ud6r/Txe+1gc4Nd3M5tPz2YFzoPA5Bm0PY7BkqSnMcID/
         lzSKMrEAh2ZhwjpZTi/7W+oMIoyvN6gFVC0M9g4G5Fz5EMCjBIEqGbSE+IYU6S0kXw12
         dUUr9WFf/zMdg+1W1ONRVAY8QpaO0j1g01asR41d3v4yTPYIkNfqCaJgv9g2loyp3fD/
         SQWzjaz1GwIe1JY3xG1qbc4uGIHv3N5KL68o2/NQxkdXJqAEnpNG4+o1vY851sh+D31u
         oKbljgcakAM+adLcl7xff06plG4x5Y4GjpwKATwOrr27D+5ZXnR1hGrWxGpCHgFUdNyl
         9RsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=C2B34L3jM2gUxbYSkVfHI3Joe22N9B8A3z/uT38e108=;
        b=OUfRVRM01FRFp5+ICMeDZjOtJ4LNCm8EGRGBH4I7lnY9ceweCyRLoxNalCfNsCTUxZ
         SP74/BdhLPpQ1k9iD93bKcNfPLTpHTRTtldw3LD5eNF3xT5I8o6mSJZJTgipEfzIxMUF
         BOMboLjrhsqhfP26YEXtUJBkB6bs4nyDUPtsX6kOEpCNTShwcv11laReRthMAk2w2MB9
         TaTHk6NWDMt64TBRoQkT7a1N+MzTnFxhdpMv8yjRqtU+mHpwAI7eV9Z3DebrM24eg+XC
         fmMDqk8412KewBN2R5hgudZILeJe5MXxBb2S6EmNooUuwCQ2ImIiaHWG3L9gRlc/iWj6
         H/+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id n2si1554785pfo.5.2020.08.11.01.47.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Aug 2020 01:47:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 2hOAx3Bsg7i08j89rTd/BY4oUffnTHbatyzeT+idhX5PerwSJCUM/CW/V/CMmFNT3D6vXIWcF5
 PR1vY2JYL3og==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="153670170"
X-IronPort-AV: E=Sophos;i="5.75,460,1589266800"; 
   d="gz'50?scan'50,208,50";a="153670170"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2020 01:47:30 -0700
IronPort-SDR: akVLzrzjJuMyfm1rcr7mbTytDY8zcrz3JfH+MnH6WGtcNzX1bVH8XBNJOWtUviEhuuYeF2o1hM
 7jdjn25Qnjag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,460,1589266800"; 
   d="gz'50?scan'50,208,50";a="438978706"
Received: from lkp-server01.sh.intel.com (HELO 71729f5ca340) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 11 Aug 2020 01:47:28 -0700
Received: from kbuild by 71729f5ca340 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k5PwN-0000TI-Js; Tue, 11 Aug 2020 08:47:27 +0000
Date: Tue, 11 Aug 2020 16:47:18 +0800
From: kernel test robot <lkp@intel.com>
To: weideng <wei.a.deng@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Zhou Furong <furong.zhou@intel.com>, kwang13 <kai.z.wang@intel.com>,
	chunmei <chunmei.liu@intel.com>
Subject: [intel-linux-intel-lts:5.4/yocto 39/9195]
 drivers/trusty/trusty.c:282:9: warning: no previous prototype for function
 'trusty_version_show'
Message-ID: <202008111614.pXgT1KFb%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://github.com/intel/linux-intel-lts.git 5.4/yocto
head:   87241c08286384feb3ddc57d4cb0daca4be1e384
commit: 7e855c11a2297ad72d2952f075dd82640f3cd70a [39/9195] Modify Google's =
trusty drivers so as to support Intel platform
config: x86_64-randconfig-r023-20200811 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4f2ad1=
5db535873dda9bfe248a2771023b64a43c)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 7e855c11a2297ad72d2952f075dd82640f3cd70a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/trusty/trusty.c:282:9: warning: no previous prototype for functi=
on 'trusty_version_show' [-Wmissing-prototypes]
   ssize_t trusty_version_show(struct device *dev, struct device_attribute =
*attr,
           ^
   drivers/trusty/trusty.c:282:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
   ssize_t trusty_version_show(struct device *dev, struct device_attribute =
*attr,
   ^
   static=20
>> drivers/trusty/trusty.c:439:6: warning: no previous prototype for functi=
on 'trusty_dev_release' [-Wmissing-prototypes]
   void    trusty_dev_release(struct device *dev)
           ^
   drivers/trusty/trusty.c:439:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
   void    trusty_dev_release(struct device *dev)
   ^
   static=20
   2 warnings generated.
--
   drivers/trusty/trusty-irq.c:214:13: warning: no previous prototype for f=
unction 'trusty_irq_handler' [-Wmissing-prototypes]
   irqreturn_t trusty_irq_handler(int irq, void *data)
               ^
   drivers/trusty/trusty-irq.c:214:1: note: declare 'static' if the functio=
n is not intended to be used outside of this translation unit
   irqreturn_t trusty_irq_handler(int irq, void *data)
   ^
   static=20
   drivers/trusty/trusty-irq.c:282:20: error: use of undeclared identifier =
'CPU_TASKS_FROZEN'
           switch (action & ~CPU_TASKS_FROZEN) {
                             ^
>> drivers/trusty/trusty-irq.c:394:6: warning: no previous prototype for fu=
nction 'trusty_irq_eoi' [-Wmissing-prototypes]
   void trusty_irq_eoi(struct irq_data *data)
        ^
   drivers/trusty/trusty-irq.c:394:1: note: declare 'static' if the functio=
n is not intended to be used outside of this translation unit
   void trusty_irq_eoi(struct irq_data *data)
   ^
   static=20
   drivers/trusty/trusty-irq.c:637:8: error: implicit declaration of functi=
on 'register_hotcpu_notifier' [-Werror,-Wimplicit-function-declaration]
           ret =3D register_hotcpu_notifier(&is->cpu_notifier);
                 ^
   drivers/trusty/trusty-irq.c:637:8: note: did you mean 'register_module_n=
otifier'?
   include/linux/module.h:662:5: note: 'register_module_notifier' declared =
here
   int register_module_notifier(struct notifier_block *nb);
       ^
   drivers/trusty/trusty-irq.c:642:6: error: assigning to 'int' from incomp=
atible type 'void'
           ret =3D on_each_cpu(trusty_irq_cpu_up, is, 0);
               ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/trusty/trusty-irq.c:651:2: error: implicit declaration of functi=
on 'unregister_hotcpu_notifier' [-Werror,-Wimplicit-function-declaration]
           unregister_hotcpu_notifier(&is->cpu_notifier);
           ^
   drivers/trusty/trusty-irq.c:651:2: note: did you mean 'register_hotcpu_n=
otifier'?
   drivers/trusty/trusty-irq.c:637:8: note: 'register_hotcpu_notifier' decl=
ared here
           ret =3D register_hotcpu_notifier(&is->cpu_notifier);
                 ^
   drivers/trusty/trusty-irq.c:687:2: error: implicit declaration of functi=
on 'unregister_hotcpu_notifier' [-Werror,-Wimplicit-function-declaration]
           unregister_hotcpu_notifier(&is->cpu_notifier);
           ^
   drivers/trusty/trusty-irq.c:688:6: error: assigning to 'int' from incomp=
atible type 'void'
           ret =3D on_each_cpu(trusty_irq_cpu_down, is, 1);
               ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/trusty/trusty-irq.c:283:7: error: use of undeclared identifier '=
CPU_STARTING'
           case CPU_STARTING:
                ^
   drivers/trusty/trusty-irq.c:286:7: error: use of undeclared identifier '=
CPU_DYING'
           case CPU_DYING:
                ^
   2 warnings and 8 errors generated.
--
   drivers/trusty/trusty-virtio.c:323:17: error: no member named 'reserved'=
 in 'struct fw_rsc_vdev_vring'
           tvr->vr_descr->reserved =3D (u32)(pa >> 32);
           ~~~~~~~~~~~~~  ^
   drivers/trusty/trusty-virtio.c:330:47: error: too few arguments to funct=
ion call, expected 10, have 9
                                         trusty_virtio_notify, callback, na=
me);
                                                                           =
  ^
   include/linux/virtio_ring.h:94:19: note: 'vring_new_virtqueue' declared =
here
   struct virtqueue *vring_new_virtqueue(unsigned int index,
                     ^
   drivers/trusty/trusty-virtio.c:380:14: error: incompatible function poin=
ter types initializing 'int (*)(struct virtio_device *, unsigned int, struc=
t virtqueue **, vq_callback_t **, const char *const *, const bool *, struct=
 irq_affinity *)' (aka 'int (*)(struct virtio_device *, unsigned int, struc=
t virtqueue **, void (**)(struct virtqueue *), const char *const *, const _=
Bool *, struct irq_affinity *)') with an expression of type 'int (struct vi=
rtio_device *, unsigned int, struct virtqueue **, vq_callback_t **, const c=
har **)' (aka 'int (struct virtio_device *, unsigned int, struct virtqueue =
**, void (**)(struct virtqueue *), const char **)') [-Werror,-Wincompatible=
-function-pointer-types]
           .find_vqs =3D trusty_virtio_find_vqs,
                       ^~~~~~~~~~~~~~~~~~~~~~
>> drivers/trusty/trusty-virtio.c:385:6: warning: no previous prototype for=
 function 'virtio_vdev_release' [-Wmissing-prototypes]
   void virtio_vdev_release(struct device *dev)
        ^
   drivers/trusty/trusty-virtio.c:385:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   void virtio_vdev_release(struct device *dev)
   ^
   static=20
   1 warning and 3 errors generated.

vim +/trusty_version_show +282 drivers/trusty/trusty.c

86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  281 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09 @282  ssize_t trusty_ver=
sion_show(struct device *dev, struct device_attribute *attr,
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  283  			    char *buf)
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  284  {
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  285  	struct trusty_sta=
te *s =3D platform_get_drvdata(to_platform_device(dev));
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  286 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  287  	return scnprintf(=
buf, PAGE_SIZE, "%s\n", s->version_str);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  288  }
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  289 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  290  DEVICE_ATTR(trusty=
_version, S_IRUSR, trusty_version_show, NULL);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  291 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  292  const char *trusty=
_version_str_get(struct device *dev)
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  293  {
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  294  	struct trusty_sta=
te *s =3D platform_get_drvdata(to_platform_device(dev));
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  295 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  296  	return s->version=
_str;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  297  }
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  298  EXPORT_SYMBOL(trus=
ty_version_str_get);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  299 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  300  static void trusty=
_init_version(struct trusty_state *s, struct device *dev)
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  301  {
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  302  	int ret;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  303  	int i;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  304  	int version_str_l=
en;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  305 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  306  	ret =3D trusty_fa=
st_call32(dev, SMC_FC_GET_VERSION_STR, -1, 0, 0);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  307  	if (ret <=3D 0)
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  308  		goto err_get_siz=
e;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  309 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  310  	version_str_len =
=3D ret;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  311 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  312  	s->version_str =
=3D kmalloc(version_str_len + 1, GFP_KERNEL);
7e855c11a2297a weideng        2016-10-28  313  	if (!s->version_str)
7e855c11a2297a weideng        2016-10-28  314  		goto err_get_size;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  315  	for (i =3D 0; i <=
 version_str_len; i++) {
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  316  		ret =3D trusty_f=
ast_call32(dev, SMC_FC_GET_VERSION_STR, i, 0, 0);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  317  		if (ret < 0)
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  318  			goto err_get_ch=
ar;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  319  		s->version_str[i=
] =3D ret;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  320  	}
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  321  	s->version_str[i]=
 =3D '\0';
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  322 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  323  	dev_info(dev, "tr=
usty version: %s\n", s->version_str);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  324 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  325  	ret =3D device_cr=
eate_file(dev, &dev_attr_trusty_version);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  326  	if (ret)
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  327  		goto err_create_=
file;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  328  	return;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  329 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  330  err_create_file:
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  331  err_get_char:
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  332  	kfree(s->version_=
str);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  333  	s->version_str =
=3D NULL;
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  334  err_get_size:
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  335  	dev_err(dev, "fai=
led to get version: %d\n", ret);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  336  }
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  337 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  338  u32 trusty_get_api=
_version(struct device *dev)
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  339  {
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  340  	struct trusty_sta=
te *s =3D platform_get_drvdata(to_platform_device(dev));
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  341 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  342  	return s->api_ver=
sion;
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  343  }
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  344  EXPORT_SYMBOL(trus=
ty_get_api_version);
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  345 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  346  static int trusty_=
init_api_version(struct trusty_state *s, struct device *dev)
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  347  {
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  348  	u32 api_version;
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  349  	api_version =3D t=
rusty_fast_call32(dev, SMC_FC_API_VERSION,
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  350  					 TRUSTY_API_V=
ERSION_CURRENT, 0, 0);
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  351  	if (api_version =
=3D=3D SM_ERR_UNDEFINED_SMC)
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  352  		api_version =3D =
0;
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  353 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  354  	if (api_version >=
 TRUSTY_API_VERSION_CURRENT) {
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  355  		dev_err(dev, "un=
supported api version %u > %u\n",
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  356  			api_version, TR=
USTY_API_VERSION_CURRENT);
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  357  		return -EINVAL;
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  358  	}
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  359 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  360  	dev_info(dev, "se=
lected api version: %u (requested %u)\n",
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  361  		 api_version, TR=
USTY_API_VERSION_CURRENT);
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  362  	s->api_version =
=3D api_version;
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  363 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  364  	return 0;
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  365  }
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  366 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  367  static int trusty_=
probe(struct platform_device *pdev)
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  368  {
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  369  	int ret;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  370  	struct trusty_sta=
te *s;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  371  	struct device_nod=
e *node =3D pdev->dev.of_node;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  372 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  373  	if (!node) {
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  374  		dev_err(&pdev->d=
ev, "of_node required\n");
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  375  		return -EINVAL;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  376  	}
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  377 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  378  	s =3D kzalloc(siz=
eof(*s), GFP_KERNEL);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  379  	if (!s) {
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  380  		ret =3D -ENOMEM;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  381  		goto err_allocat=
e_state;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  382  	}
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  383  	mutex_init(&s->sm=
c_lock);
0bead160edaa03 Arve Hj=C3=B8nnev=C3=A5g 2016-05-05  384  	ATOMIC_INIT_NOTIF=
IER_HEAD(&s->notifier);
2680cdd3b9cc6b Arve Hj=C3=B8nnev=C3=A5g 2015-01-23  385  	init_completion(&=
s->cpu_idle_completion);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  386  	platform_set_drvd=
ata(pdev, s);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  387 =20
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  388  	trusty_init_versi=
on(s, &pdev->dev);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  389 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  390  	ret =3D trusty_in=
it_api_version(s, &pdev->dev);
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  391  	if (ret < 0)
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  392  		goto err_api_ver=
sion;
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  393 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  394  	return 0;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  395 =20
f734a5b21364b1 Arve Hj=C3=B8nnev=C3=A5g 2015-06-11  396  err_api_version:
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  397  	if (s->version_st=
r) {
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  398  		device_remove_fi=
le(&pdev->dev, &dev_attr_trusty_version);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  399  		kfree(s->version=
_str);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  400  	}
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  401  	device_for_each_c=
hild(&pdev->dev, NULL, trusty_remove_child);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  402  	mutex_destroy(&s-=
>smc_lock);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  403  	kfree(s);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  404  err_allocate_state=
:
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  405  	return ret;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  406  }
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  407 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  408  static int trusty_=
remove(struct platform_device *pdev)
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  409  {
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  410  	struct trusty_sta=
te *s =3D platform_get_drvdata(pdev);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  411 =20
7e855c11a2297a weideng        2016-10-28  412  	dev_dbg(&(pdev->dev), "%s()=
 is called\n", __func__);
7e855c11a2297a weideng        2016-10-28  413 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  414  	device_for_each_c=
hild(&pdev->dev, NULL, trusty_remove_child);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  415  	mutex_destroy(&s-=
>smc_lock);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  416  	if (s->version_st=
r) {
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  417  		device_remove_fi=
le(&pdev->dev, &dev_attr_trusty_version);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  418  		kfree(s->version=
_str);
3db108326d2fe8 Arve Hj=C3=B8nnev=C3=A5g 2014-10-09  419  	}
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  420  	kfree(s);
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  421  	return 0;
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  422  }
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  423 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  424  static const struc=
t of_device_id trusty_of_match[] =3D {
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  425  	{ .compatible =3D=
 "android,trusty-smc-v1", },
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  426  	{},
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  427  };
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  428 =20
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  429  static struct plat=
form_driver trusty_driver =3D {
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  430  	.probe =3D trusty=
_probe,
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  431  	.remove =3D trust=
y_remove,
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  432  	.driver	=3D {
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  433  		.name =3D "trust=
y",
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  434  		.owner =3D THIS_=
MODULE,
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  435  		.of_match_table =
=3D trusty_of_match,
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  436  	},
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  437  };
86d0dcf35966f0 Arve Hj=C3=B8nnev=C3=A5g 2013-11-18  438 =20
7e855c11a2297a weideng        2016-10-28 @439  void	trusty_dev_release(stru=
ct device *dev)
7e855c11a2297a weideng        2016-10-28  440  {
7e855c11a2297a weideng        2016-10-28  441  	dev_dbg(dev, "%s() is calle=
d()\n", __func__);
7e855c11a2297a weideng        2016-10-28  442  	return;
7e855c11a2297a weideng        2016-10-28  443  }
7e855c11a2297a weideng        2016-10-28  444 =20

:::::: The code at line 282 was first introduced by commit
:::::: 3db108326d2fe8a24470ecb267fb202ac09f663a trusty: Get version string =
from trusty

:::::: TO: Arve Hj=C3=B8nnev=C3=A5g <arve@android.com>
:::::: CC: Zhou Furong <furong.zhou@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202008111614.pXgT1KFb%25lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--dDRMvlgZJXvWKvBx--
