Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWWRSGEQMGQE3T634OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB423F56CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 05:34:52 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id o5-20020a6bf8050000b02905b026202a6fsf11384168ioh.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 20:34:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629776090; cv=pass;
        d=google.com; s=arc-20160816;
        b=oLk99GrpcxuEq2ophIcykoYw/DLhZ657uXfG7xN+tGOaXMdal9MK5iYnDT7nzAm8yL
         mAvRZIPVMcFmJPn8i/yG93wBHZ51jaGF3cwFQaMGnU7Gs4rQvjm091IbyOT4RW/c+4s0
         XumIgtElIoL+L8oN7tITS5VffUY9ald8L2yZtUa508PpOkkJo7bbr9KF5EEZDG01SjJ/
         bzFofhmCAgUzsajHhavdd9XgOsV/aXJiVv2lk/odlgjxZDeSRN+gYiDj2UHBB+CD4azv
         oBbVOXxPp3fOgWwfqDKTfMyhHt7Yj3M7X12y1+A7c1p6GfI6+bQkElZ5KbzsPhCqJs7t
         wNEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kwXLTDEKNgxBUfusPMqD7wknBuxY5CtieP9Uy+FoPV8=;
        b=zTdUz0fiOn3haPD+Z7ETGNkJWcKmJ9SJZvERlHADBD/KgBKPwR+Tr8smwA73/ujNbc
         PyikUuHMc3Rr75RPFqEagNYzJyvPiAnEYZl3FWCqlkNYbSu6bxf4fOIg6zg9Wc+nIanO
         5K8I8lyLgWdwip6RUMVLBTuXtiB8tqEGkKp89Irn5tJiLhCJ0S++klHonvVaW6p0Lb9F
         CV8XgR2LEnZtPqGflJQ7LA77ks/et1B37Kr0ra3+brVQN3zYgE2vDI/uHWQNuq4CBLAh
         +OKdWuC2E8q/aODDae9Z+/1m5FyQF3UKg8N6uQ84ql78KYXSW56mmi7+0XmNilN8NNVE
         M2dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kwXLTDEKNgxBUfusPMqD7wknBuxY5CtieP9Uy+FoPV8=;
        b=nfRYV6kBI7CImO7yTkvLveXGrimvfOzAQDxE11msk7vSoS6jG1OCI6b37SOObtAksO
         AbmDJ+dNNt8je1j9qd89jxJXiI0KbdPkWULRRgfcMKMz836RpvJywBMOvOzDgs/KrcNV
         jFz6Oix/IAe62ZlX40DP7nX+/V9Z/knSeKtI+JV8O15Otsi595Lr75SDeVLDz3PDs/DR
         ejhT1kz+jHY7n4vK8AIbZwYZ6Bz4iXw2PxfWCv5UGtD2fCG5d5BzFxNNom+YtX2IEIMh
         vy/DudWDBBP4rJyMZ5Jw4Se+w/poJYYRWOX/qh+1ROgbbzBt5VczL8+UFdpMpPvqZC/d
         RL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kwXLTDEKNgxBUfusPMqD7wknBuxY5CtieP9Uy+FoPV8=;
        b=gT87u0zt4KTMF0nmTft8ZOqLdejPCkmFnDuGkbB/e1R2jPg1gODVgBIV/4vhVou1BZ
         AZwWDskTIc2JfqrrD8NuoEDJc/eckBdzZ2aspLzYf8Pa37zCxAPZezOoRxm6QyPPlk+h
         7dbtnNNdEs84BSU2fVoGYVk9k5Do4t8xB10BHpBW77BS3urHt9YcSs03hbuVMIRAku0T
         rSRZ8CpuxAcFiDtjDB90lBcKNvMZo/B9jUukde1Yqe9rOgiz9ob5CGvlC5mYsYEJ0ysz
         Li1FW//SCbcXduUy+eCmedOBk86OfJF9MNqnOTmcNAZIY5Sm0bje5mtjsgnjaelU3ysT
         F+7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531C+I6wiXIAxB2nD6LSlRKVmTATMSK2sv+v6FOiMe2+qwMMX+w0
	hwqf1M1zkHve53aITappMxw=
X-Google-Smtp-Source: ABdhPJzZUXpxGqMFlhXkRoLjO2Auus7TKsyXcpEPwFIDwg5qAguwugILSrNMA+ToqyVS5u5GqHZ0wg==
X-Received: by 2002:a92:4b01:: with SMTP id m1mr23521907ilg.50.1629776090134;
        Mon, 23 Aug 2021 20:34:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f710:: with SMTP id k16ls2907981iog.4.gmail; Mon, 23 Aug
 2021 20:34:49 -0700 (PDT)
X-Received: by 2002:a6b:f214:: with SMTP id q20mr29950535ioh.84.1629776089551;
        Mon, 23 Aug 2021 20:34:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629776089; cv=none;
        d=google.com; s=arc-20160816;
        b=GEnVC7l4qnaqVvHCy2/Wm9FK6IU0m1b8g6yxiO4G+NsB7LqPqpLTJGUIkOwYUuuffR
         036ml8ssbmwI8bM1+KmXWxt3WCsypAfy0PxgkGigtNc0IBpk2vT9tNqjq1lnyMmlQePd
         1kcifELvwPIwnk+GViYy09dlIyTWvvFplFcNJdzRUBgkcWik5y0N/V1fPExRLH0vqZrp
         PYSTheCIviTJhsAgdJtMC4Qr/l+VikqOPsqNmBJ70bzWAZU0fMRGYTN7QGCoOmsuKvw/
         cU7IdwsE2OPLAM9SswLFTFULrhJLWqcyMR9xquDqIBtn7G44+t76UbVkP08kANtUD1hO
         TaKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=jRSVTjb5jJjC0VMUfD+zCmyBPlltIouWsK4BeXwk1YI=;
        b=Qlwk2WRDDTdW2qfvldJ1gpD7TrzNkCqEz0++PCZHhNQNEvIgiTQNweFnGFYchHe9OJ
         tV/C1tlgmivE7dWcp09tDHEYQlgIe3YcEzPTIq+x327iA+k+3m3dmunhT4Icqh/9xfnd
         SNzrTUlP9CE1lEAMQHl0z6dwrjSbefBLapZue2P6SsbR+71AuhlP2nA8/qISqmI83pn2
         ZWyxVc4CuwMDebmOp6SNBD3VLJz4WS8ldGMwE91XfrUIIGkjRUUiRt4x4E3ESewDDxoX
         RcKqs+XpirFTfFzacMfgjcUhDaZEXj1FyzRlAlykqyHO3NXIRifbCzuLJVRsHtBSo6Mf
         x/YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id b12si1094368ile.1.2021.08.23.20.34.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 20:34:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204424584"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="gz'50?scan'50,208,50";a="204424584"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 20:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="gz'50?scan'50,208,50";a="535617914"
Received: from lkp-server02.sh.intel.com (HELO 181e7be6f509) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2021 20:34:45 -0700
Received: from kbuild by 181e7be6f509 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIND3-0000D6-0E; Tue, 24 Aug 2021 03:34:45 +0000
Date: Tue, 24 Aug 2021 11:34:14 +0800
From: kernel test robot <lkp@intel.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: sound/soc/generic/simple-card.c:259:17: warning: Value stored to
 'dev' during its initialization is never read
 [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108241108.EJSE2QL8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   d5ae8d7f85b7f6f6e60f1af8ff4be52b0926fde1
commit: 6ad76b573bb63ef229cf60386cc38c6e7c7625d7 ASoC: simple-card: add sim=
ple_link_init()
date:   4 months ago
config: arm-randconfig-c002-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a9=
9a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D6ad76b573bb63ef229cf60386cc38c6e7c7625d7
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 6ad76b573bb63ef229cf60386cc38c6e7c7625d7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Darm clang-analyzer=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
   4 warnings generated.
   sound/soc/codecs/pcm186x.c:268:19: warning: Value stored to 'format' dur=
ing its initialization is never read [clang-analyzer-deadcode.DeadStores]
           snd_pcm_format_t format =3D params_format(params);
                            ^~~~~~   ~~~~~~~~~~~~~~~~~~~~~
   sound/soc/codecs/pcm186x.c:268:19: note: Value stored to 'format' during=
 its initialization is never read
           snd_pcm_format_t format =3D params_format(params);
                            ^~~~~~   ~~~~~~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   drivers/hid/hid-sensor-custom.c:407:3: warning: Value stored to 'ret' is=
 never read [clang-analyzer-deadcode.DeadStores]
                   ret =3D sensor_hub_set_feature(sensor_inst->hsdev, repor=
t_id,
                   ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
   drivers/hid/hid-sensor-custom.c:407:3: note: Value stored to 'ret' is ne=
ver read
                   ret =3D sensor_hub_set_feature(sensor_inst->hsdev, repor=
t_id,
                   ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
   Suppressed 3 warnings (2 in non-user code, 1 with check filters).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (2 in non-user code, 2 with check filters).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
>> sound/soc/generic/simple-card.c:259:17: warning: Value stored to 'dev' d=
uring its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct device *dev =3D simple_priv_to_dev(priv);
                          ^~~
   sound/soc/generic/simple-card.c:259:17: note: Value stored to 'dev' duri=
ng its initialization is never read
           struct device *dev =3D simple_priv_to_dev(priv);
                          ^~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   sound/soc/generic/audio-graph-card.c:367:17: warning: Value stored to 'd=
ev' during its initialization is never read [clang-analyzer-deadcode.DeadSt=
ores]
           struct device *dev =3D simple_priv_to_dev(priv);
                          ^~~
   sound/soc/generic/audio-graph-card.c:367:17: note: Value stored to 'dev'=
 during its initialization is never read
           struct device *dev =3D simple_priv_to_dev(priv);
                          ^~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   sound/core/seq/seq_clientmgr.c:1228:2: warning: Call to function 'strcpy=
' is insecure as it does not provide bounding of the memory buffer. Replace=
 unbounded copy functions with analogous functions that support length argu=
ments such as 'strlcpy'. CWE-119 [clang-analyzer-security.insecureAPI.strcp=
y]
           strcpy(info->name, cptr->name);
           ^~~~~~
   sound/core/seq/seq_clientmgr.c:1228:2: note: Call to function 'strcpy' i=
s insecure as it does not provide bounding of the memory buffer. Replace un=
bounded copy functions with analogous functions that support length argumen=
ts such as 'strlcpy'. CWE-119
           strcpy(info->name, cptr->name);
           ^~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   arch/arm/include/asm/uaccess.h:567:2: warning: Null pointer passed as 2n=
d argument to memory copy function [clang-analyzer-unix.cstring.NullArg]
           memcpy(to, (const void __force *)from, n);
           ^
   sound/core/seq/seq_memory.c:291:6: note: Assuming the condition is true
           if (snd_seq_ev_is_variable(event)) {
               ^
   include/sound/asequencer.h:55:37: note: expanded from macro 'snd_seq_ev_=
is_variable'
   #define snd_seq_ev_is_variable(ev)      (snd_seq_ev_length_type(ev) =3D=
=3D SNDRV_SEQ_EVENT_LENGTH_VARIABLE)
                                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/sound/asequencer.h:53:36: note: expanded from macro 'snd_seq_ev_=
length_type'
   #define snd_seq_ev_length_type(ev)      ((ev)->flags & SNDRV_SEQ_EVENT_L=
ENGTH_MASK)
                                           ^
   sound/core/seq/seq_memory.c:291:2: note: Taking true branch
           if (snd_seq_ev_is_variable(event)) {
           ^
   sound/core/seq/seq_memory.c:295:6: note: Assuming 'ncells' is < field 't=
otal_elements'
           if (ncells >=3D pool->total_elements)
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/core/seq/seq_memory.c:295:2: note: Taking false branch
           if (ncells >=3D pool->total_elements)
           ^
   sound/core/seq/seq_memory.c:299:6: note: Assuming 'err' is >=3D 0
           if (err < 0)
               ^~~~~~~
   sound/core/seq/seq_memory.c:299:2: note: Taking false branch
           if (err < 0)
           ^
   sound/core/seq/seq_memory.c:306:2: note: Taking true branch
           if (snd_seq_ev_is_variable(event)) {
           ^
   sound/core/seq/seq_memory.c:317:3: note: The value of 'src' is assigned =
to 'buf'
                   buf =3D (char *)event->data.ext.ptr;
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/core/seq/seq_memory.c:320:10: note: Assuming the condition is true
                   while (ncells-- > 0) {
                          ^~~~~~~~~~~~
   sound/core/seq/seq_memory.c:320:3: note: Loop condition is true.  Enteri=
ng loop body
                   while (ncells-- > 0) {
                   ^
   sound/core/seq/seq_memory.c:322:8: note: Assuming 'len' is >=3D 'size'
                           if (len < size)

vim +/dev +259 sound/soc/generic/simple-card.c

da215354eb55c3 Kuninori Morimoto   2018-12-14  252 =20
e59289cda8dec0 Kuninori Morimoto   2019-03-20  253  static int simple_dai_l=
ink_of(struct asoc_simple_priv *priv,
d947cdfd4be29c Kuninori Morimoto   2018-12-20  254  			      struct device_=
node *np,
d947cdfd4be29c Kuninori Morimoto   2018-12-20  255  			      struct device_=
node *codec,
17029e494edc68 Kuninori Morimoto   2018-12-20  256  			      struct link_in=
fo *li,
d947cdfd4be29c Kuninori Morimoto   2018-12-20  257  			      bool is_top)
6a91a17bd7b92b Jean-Francois Moine 2014-03-20  258  {
f531913f01a072 Kuninori Morimoto   2014-09-09 @259  	struct device *dev =3D=
 simple_priv_to_dev(priv);
17029e494edc68 Kuninori Morimoto   2018-12-20  260  	struct snd_soc_dai_lin=
k *dai_link =3D simple_priv_to_link(priv, li->link);
5bb5ac71e3f4f8 Kuninori Morimoto   2021-04-14  261  	struct snd_soc_dai_lin=
k_component *cpus =3D asoc_link_to_cpu(dai_link, 0);
5bb5ac71e3f4f8 Kuninori Morimoto   2021-04-14  262  	struct snd_soc_dai_lin=
k_component *codecs =3D asoc_link_to_codec(dai_link, 0);
5bb5ac71e3f4f8 Kuninori Morimoto   2021-04-14  263  	struct snd_soc_dai_lin=
k_component *platforms =3D asoc_link_to_platform(dai_link, 0);
1b5721b24306c2 Kuninori Morimoto   2014-10-27  264  	struct device_node *cp=
u =3D NULL;
d947cdfd4be29c Kuninori Morimoto   2018-12-20  265  	struct device_node *no=
de =3D NULL;
e0ae225b7e96e5 Jun Nie             2015-04-29  266  	struct device_node *pl=
at =3D NULL;
6ad76b573bb63e Kuninori Morimoto   2021-05-11  267  	char dai_name[64];
b3ca11ff59bc58 Jyri Sarha          2014-03-24  268  	char prop[128];
b3ca11ff59bc58 Jyri Sarha          2014-03-24  269  	char *prefix =3D "";
25c4a9b614f101 Mark Brown          2021-04-23  270  	int ret, single_cpu =
=3D 0;
6a91a17bd7b92b Jean-Francois Moine 2014-03-20  271 =20
d947cdfd4be29c Kuninori Morimoto   2018-12-20  272  	cpu  =3D np;
d947cdfd4be29c Kuninori Morimoto   2018-12-20  273  	node =3D of_get_parent=
(np);
17029e494edc68 Kuninori Morimoto   2018-12-20  274 =20
17029e494edc68 Kuninori Morimoto   2018-12-20  275  	dev_dbg(dev, "link_of =
(%pOF)\n", node);
17029e494edc68 Kuninori Morimoto   2018-12-20  276 =20
2080437d375f4d Xiubo Li            2014-09-03  277  	/* For single DAI link=
 & old style of DT node */
d947cdfd4be29c Kuninori Morimoto   2018-12-20  278  	if (is_top)
548563fa3e430c Kuninori Morimoto   2016-05-31  279  		prefix =3D PREFIX;
b3ca11ff59bc58 Jyri Sarha          2014-03-24  280 =20
e0ae225b7e96e5 Jun Nie             2015-04-29  281  	snprintf(prop, sizeof(=
prop), "%splat", prefix);
e0ae225b7e96e5 Jun Nie             2015-04-29  282  	plat =3D of_get_child_=
by_name(node, prop);
e0ae225b7e96e5 Jun Nie             2015-04-29  283 =20
0919a3acc0c870 Kuninori Morimoto   2021-05-11  284  	ret =3D simple_parse_n=
ode(priv, cpu, li, prefix, &single_cpu);
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  285  	if (ret < 0)
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  286  		goto dai_link_of_err;
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  287 =20
0919a3acc0c870 Kuninori Morimoto   2021-05-11  288  	ret =3D simple_parse_n=
ode(priv, codec, li, prefix, NULL);
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  289  	if (ret < 0)
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  290  		goto dai_link_of_err;
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  291 =20
5bb5ac71e3f4f8 Kuninori Morimoto   2021-04-14  292  	ret =3D asoc_simple_pa=
rse_dai(plat, platforms, NULL);
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  293  	if (ret < 0)
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  294  		goto dai_link_of_err;
44c16af1fa8a5b Kuninori Morimoto   2016-08-08  295 =20
6ad76b573bb63e Kuninori Morimoto   2021-05-11  296  	snprintf(dai_name, siz=
eof(dai_name),
6ad76b573bb63e Kuninori Morimoto   2021-05-11  297  		 "%s-%s", cpus->dai_n=
ame, codecs->dai_name);
25c4a9b614f101 Mark Brown          2021-04-23  298 =20
25c4a9b614f101 Mark Brown          2021-04-23  299  	asoc_simple_canonicali=
ze_cpu(cpus, single_cpu);
25c4a9b614f101 Mark Brown          2021-04-23  300  	asoc_simple_canonicali=
ze_platform(platforms, cpus);
25c4a9b614f101 Mark Brown          2021-04-23  301 =20
6ad76b573bb63e Kuninori Morimoto   2021-05-11  302  	ret =3D simple_link_in=
it(priv, node, codec, li, prefix, dai_name);
6ad76b573bb63e Kuninori Morimoto   2021-05-11  303 =20
b3ca11ff59bc58 Jyri Sarha          2014-03-24  304  dai_link_of_err:
44662f90cda7ce Takashi Iwai        2019-02-19  305  	of_node_put(plat);
d947cdfd4be29c Kuninori Morimoto   2018-12-20  306  	of_node_put(node);
1b5721b24306c2 Kuninori Morimoto   2014-10-27  307 =20
0919a3acc0c870 Kuninori Morimoto   2021-05-11  308  	li->link++;
0919a3acc0c870 Kuninori Morimoto   2021-05-11  309 =20
6a91a17bd7b92b Jean-Francois Moine 2014-03-20  310  	return ret;
6a91a17bd7b92b Jean-Francois Moine 2014-03-20  311  }
6a91a17bd7b92b Jean-Francois Moine 2014-03-20  312 =20

:::::: The code at line 259 was first introduced by commit
:::::: f531913f01a07253d013a9c67a80df11154e7ae2 ASoC: simple-card: tidyup u=
se priv in parameter

:::::: TO: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108241108.EJSE2QL8-lkp%40intel.com.

--tThc/1wpZn/ma/RB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--tThc/1wpZn/ma/RB--
