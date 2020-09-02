Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3E7XX5AKGQEB5JLSWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 9686A25A713
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 09:55:26 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id d30sf2862079qve.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 00:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599033325; cv=pass;
        d=google.com; s=arc-20160816;
        b=hJ+FOAPGoG6fjeqtylVngopz3OPkwIUPUiP1XKFM6JVgGoLqpJHHS063iW5ZkCAfi7
         3IVP0+M4/Ar9qn3Dx/OJTTC41aML5xWOe4mfPaXkrbGHRp/JlvaSy57CmbooOsEHlB6b
         j9zwFjbSJR4Dw1vXwIAbmqplo/KfZRs9vrHHwYHs0euAZI/+66b9eC/8eKRr4P86iHyp
         ruQ9LZsebvwvzuM24CyNE6IVPOqS+M3yFnpTMZA62uCn+PpOEupf9BMS6cXigi9PtLqt
         UujwrGOJeO9EQuUsLD4MY5an3OdhyFzW3JvDhVTaHpaOtrCxEOmRQEPR8EEnBwLT5X4H
         bUfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=cmvDhQVcgbsOHWyrMROb2zs2EwbvLPVeQhmVfLRqGXs=;
        b=HNGUoHkhOz1/NDQxtst0afBlRlWaPtekQriqfvTNAdkwRFSimzlQLLFIYegL7smstE
         bXjFYDWq/7gPHPSkMo/SEIr5nUgrzGVul0Xmhav7SmUWM1SU9cyKAIya0CgyA4eNMNgb
         1dktYTAfIOT+VzSFuDU1sfVJf3uTYPS/HwoeupvRLSFpFW+OjFSBImDaFly/xf5jwtSd
         Kg7PshNdSS/bY7QHWxdAYI5ESMAz6Wv2Sh6lV2/1rwVXTTTTIClTuEsFyU0+1p/eR1ic
         DcwTrkvV0x7dJxWhAC/8/lgfbQy714kKiLBKVDspA1jBazLCSfBpYOjbw0z2iWBoelxn
         5GCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cmvDhQVcgbsOHWyrMROb2zs2EwbvLPVeQhmVfLRqGXs=;
        b=A0tTBPxIycsXKW7+XC0c4mbjmIsZCWg0Mgi87gkTH7vvjax+4DSpJiPbZ0wMQpiXTs
         kaxsBhHjd6hpy6oFcNCfDrpkQt5K7AhJUzYOuuk0mAZtGGaVADZSKOjuV7rQFoo9Qozl
         MzfPYZSL4YdhrVsue+gtfDhP6OtV1RvtsYSqnAPZBmU0gcs+c6ZJK4uvZDQPlnKjIQGc
         v12AaloSwk/7UZG99cdHTwxgm+b9rGzh/9gYNHk4/ehsni/PFGiKerguACrdI6+36DpG
         JiTkXloR4M+wg94DrePZZ6Q4U+7Vz0pcpDeLDG9/qBOUb8RZ25AGG5AbcYN3ZqscqfKO
         OrfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cmvDhQVcgbsOHWyrMROb2zs2EwbvLPVeQhmVfLRqGXs=;
        b=GtjKjDmXDcvTdZhJyuund4mq9fQm3ygibBrcmhpFVmG/1cgxJvs8l79ujRXBWbKHQy
         elCJq1Y1+Rk/fv795goMZeWXpewkgjVamvzD5c+/a93TxOlg5bRAaq4gMnLuTIiXzBGf
         swFGP4PIvOWHWjFEYrTzLANbMG6Lt5T40m9W/1fggAkR3pQqKLWwVkVxR88QHSrsUxt9
         nd+90Up12Lsrr1a7zr0N7/K+GXfABg5Y+ZWPiesAkLRBBS9b4xiZNcldjCYqsBEeMyX+
         ntOymFRV20+fo0wkW0yXZ13lt/cWrwlidMMPvL+J/8xaI36KnxkUlz2KbJJ0B+haM23z
         GEBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TrDWeBOyG0iT10T9ny31eh8M+g+vLuykrx6g9BA2naVTO2kBt
	sdFajzyui2aI5rPnaXfdPvA=
X-Google-Smtp-Source: ABdhPJwaOIhBr0L4ZS0/yA1+zMl9PosSrjzuCVggCIpFSFdjW2Hv8YXA6LNzwd+LP63lhJElHbh1TA==
X-Received: by 2002:ac8:7646:: with SMTP id i6mr5695744qtr.275.1599033325018;
        Wed, 02 Sep 2020 00:55:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9a09:: with SMTP id c9ls818459qke.3.gmail; Wed, 02 Sep
 2020 00:55:24 -0700 (PDT)
X-Received: by 2002:ae9:df85:: with SMTP id t127mr5950716qkf.265.1599033324549;
        Wed, 02 Sep 2020 00:55:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599033324; cv=none;
        d=google.com; s=arc-20160816;
        b=CrQqsRE6WYSssyOfSxjCf/eWDQGgoVi+zjytJMp5ujs/xEi+rsZRyElCRi/0uP98IW
         zyAEKuioO9jfT8lywgsW4x+7xN5wtYub8aVu5MFhYhJUx47Nbr6L2vbKr3rZMqn4/tiy
         zkLEqXb/y5Dn48yV8M/TEMcFvcul83O8/57js2xkPyErvCn+FH3DcYB5J/MLNq20hhsn
         CHgtPGJ7rMWqRroO9hF6MxOEWNToGamlyiCgEtCAI/SsoIJz0Ejf5DlCEvowXxUNpTsi
         NEGT1BNYodgnhyTZ4xBa+12o9LyqC24ZKYi8uaCj/6DcrYfsNmTFCSfG0E/zluLsG5Tr
         NwXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=7lNIvYL6EmsjdpYz4W4N3AOAORuZqs/pafxzPj1iYgE=;
        b=NMJVT4OUc9WbrAX7Q2CzG8ATJnKvnbKIVKRzeinsVfJ1va3sTs+u8jUERPgtoceiL4
         Ysmio9/K6ehKIRzp0jgMTDdorJI8ozKBoTCCfSKqri90Xb0kzYks29h/pXTT6w2d9HaD
         YGctHajri9PaaN+oPvbAoow8nKzjhTVGIT4cryqOwCTPAOyn2qiJ7rw7pXMKkjx2xsMO
         M5LkgOIBomiMJLcLCWBBrz5WY3QY8idNNqw52kxyG/eWAXbYJoMvu5Hsi50irmGu6xDi
         Cxkl0E4Ls11SuoKXOye7XSIhuUi/Y3ZlIMFrg2tgYeTCtFNBfhfR079ciX020ttKhEQe
         UwgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id j6si234029qko.1.2020.09.02.00.55.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 00:55:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 8kofDZqMPe+jWSATfvAvWG6kxIlb38WxFwZ5zgwxy4isDOd8FfA9sR47dvUMu6oh4BbM2GhNXd
 SqQ0CUeVoSKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="218893962"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; 
   d="gz'50?scan'50,208,50";a="218893962"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2020 00:55:23 -0700
IronPort-SDR: exqlXiUHrbSQ4lFhpkP0eLcHq330TIq+qX65msdt4cIKTFPjFyUei2+HMQ8HNfIYd8CQpw24QV
 pozoIjpDKp/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; 
   d="gz'50?scan'50,208,50";a="375449021"
Received: from lkp-server02.sh.intel.com (HELO eb469fda2af7) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 02 Sep 2020 00:55:21 -0700
Received: from kbuild by eb469fda2af7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kDNc0-00000M-I2; Wed, 02 Sep 2020 07:55:20 +0000
Date: Wed, 2 Sep 2020 15:54:20 +0800
From: kernel test robot <lkp@intel.com>
To: Boqun Feng <boqun.feng@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC v2 09/11] HID: hyperv: Make ringbuffer at least take two
 pages
Message-ID: <202009021538.rFUfiH6X%lkp@intel.com>
References: <20200902030107.33380-10-boqun.feng@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
In-Reply-To: <20200902030107.33380-10-boqun.feng@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Boqun,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on mkp-scsi/for-next]
[also build test WARNING on scsi/for-next linus/master v5.9-rc3 next-20200828]
[cannot apply to input/next jikos-hid/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Boqun-Feng/Hyper-V-Support-PAGE_SIZE-larger-than-4K/20200902-110406
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
config: x86_64-randconfig-a015-20200901 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 224d8153b53b16cf535ea1a55afdfe1ec5b1374f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/hid/hid-hyperv.c:461:3: warning: comparison of distinct pointer types ('typeof (40 * 1024) *' (aka 'int *') and 'typeof (2 * ((1UL) << 12)) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
                   INPUTVSC_SEND_RING_BUFFER_SIZE,
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hid/hid-hyperv.c:107:41: note: expanded from macro 'INPUTVSC_SEND_RING_BUFFER_SIZE'
   #define INPUTVSC_SEND_RING_BUFFER_SIZE          max(40 * 1024, 2 * PAGE_SIZE)
                                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:890:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:874:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:864:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:850:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   drivers/hid/hid-hyperv.c:462:3: warning: comparison of distinct pointer types ('typeof (40 * 1024) *' (aka 'int *') and 'typeof (2 * ((1UL) << 12)) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
                   INPUTVSC_RECV_RING_BUFFER_SIZE,
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hid/hid-hyperv.c:108:41: note: expanded from macro 'INPUTVSC_RECV_RING_BUFFER_SIZE'
   #define INPUTVSC_RECV_RING_BUFFER_SIZE          max(40 * 1024, 2 * PAGE_SIZE)
                                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:890:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:874:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:864:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:850:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   drivers/hid/hid-hyperv.c:562:5: warning: comparison of distinct pointer types ('typeof (40 * 1024) *' (aka 'int *') and 'typeof (2 * ((1UL) << 12)) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
                            INPUTVSC_SEND_RING_BUFFER_SIZE,
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hid/hid-hyperv.c:107:41: note: expanded from macro 'INPUTVSC_SEND_RING_BUFFER_SIZE'
   #define INPUTVSC_SEND_RING_BUFFER_SIZE          max(40 * 1024, 2 * PAGE_SIZE)
                                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:890:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:874:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:864:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:850:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   drivers/hid/hid-hyperv.c:563:5: warning: comparison of distinct pointer types ('typeof (40 * 1024) *' (aka 'int *') and 'typeof (2 * ((1UL) << 12)) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
                            INPUTVSC_RECV_RING_BUFFER_SIZE,
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hid/hid-hyperv.c:108:41: note: expanded from macro 'INPUTVSC_RECV_RING_BUFFER_SIZE'
   #define INPUTVSC_RECV_RING_BUFFER_SIZE          max(40 * 1024, 2 * PAGE_SIZE)
                                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:890:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:874:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:864:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:850:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   4 warnings generated.

# https://github.com/0day-ci/linux/commit/ec2aac3d927fd18d45bb493d854ddbb3b8620cae
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Boqun-Feng/Hyper-V-Support-PAGE_SIZE-larger-than-4K/20200902-110406
git checkout ec2aac3d927fd18d45bb493d854ddbb3b8620cae
vim +461 drivers/hid/hid-hyperv.c

b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  447  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  448  static int mousevsc_probe(struct hv_device *device,
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  449  			const struct hv_vmbus_device_id *dev_id)
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  450  {
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  451  	int ret;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  452  	struct mousevsc_dev *input_dev;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  453  	struct hid_device *hid_dev;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  454  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  455  	input_dev = mousevsc_alloc_device(device);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  456  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  457  	if (!input_dev)
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  458  		return -ENOMEM;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  459  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  460  	ret = vmbus_open(device->channel,
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17 @461  		INPUTVSC_SEND_RING_BUFFER_SIZE,
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  462  		INPUTVSC_RECV_RING_BUFFER_SIZE,
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  463  		NULL,
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  464  		0,
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  465  		mousevsc_on_channel_callback,
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  466  		device
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  467  		);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  468  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  469  	if (ret)
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  470  		goto probe_err0;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  471  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  472  	ret = mousevsc_connect_to_vsp(device);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  473  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  474  	if (ret)
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  475  		goto probe_err1;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  476  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  477  	/* workaround SA-167 */
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  478  	if (input_dev->report_desc[14] == 0x25)
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  479  		input_dev->report_desc[14] = 0x29;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  480  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  481  	hid_dev = hid_allocate_device();
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  482  	if (IS_ERR(hid_dev)) {
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  483  		ret = PTR_ERR(hid_dev);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  484  		goto probe_err1;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  485  	}
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  486  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  487  	hid_dev->ll_driver = &mousevsc_ll_driver;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  488  	hid_dev->driver = &mousevsc_hid_driver;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  489  	hid_dev->bus = BUS_VIRTUAL;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  490  	hid_dev->vendor = input_dev->hid_dev_info.vendor;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  491  	hid_dev->product = input_dev->hid_dev_info.product;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  492  	hid_dev->version = input_dev->hid_dev_info.version;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  493  	input_dev->hid_device = hid_dev;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  494  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  495  	sprintf(hid_dev->name, "%s", "Microsoft Vmbus HID-compliant Mouse");
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  496  
b565a3906a92fe K. Y. Srinivasan 2012-05-16  497  	hid_set_drvdata(hid_dev, device);
b565a3906a92fe K. Y. Srinivasan 2012-05-16  498  
74c4fb058083b4 K. Y. Srinivasan 2011-11-30  499  	ret = hid_add_device(hid_dev);
74c4fb058083b4 K. Y. Srinivasan 2011-11-30  500  	if (ret)
74c4fb058083b4 K. Y. Srinivasan 2011-11-30  501  		goto probe_err1;
74c4fb058083b4 K. Y. Srinivasan 2011-11-30  502  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  503  
07d9ab4f0e52cb Henrik Rydberg   2012-04-22  504  	ret = hid_parse(hid_dev);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  505  	if (ret) {
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  506  		hid_err(hid_dev, "parse failed\n");
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  507  		goto probe_err2;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  508  	}
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  509  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  510  	ret = hid_hw_start(hid_dev, HID_CONNECT_HIDINPUT | HID_CONNECT_HIDDEV);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  511  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  512  	if (ret) {
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  513  		hid_err(hid_dev, "hw start failed\n");
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  514  		goto probe_err2;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  515  	}
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  516  
f1210455e78a61 Dexuan Cui       2014-08-01  517  	device_init_wakeup(&device->device, true);
f1210455e78a61 Dexuan Cui       2014-08-01  518  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  519  	input_dev->connected = true;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  520  	input_dev->init_complete = true;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  521  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  522  	return ret;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  523  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  524  probe_err2:
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  525  	hid_destroy_device(hid_dev);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  526  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  527  probe_err1:
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  528  	vmbus_close(device->channel);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  529  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  530  probe_err0:
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  531  	mousevsc_free_device(input_dev);
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  532  
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  533  	return ret;
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  534  }
b95f5bcb811e39 K. Y. Srinivasan 2011-11-17  535  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009021538.rFUfiH6X%25lkp%40intel.com.

--MGYHOYXEY6WxJCY8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--MGYHOYXEY6WxJCY8--
