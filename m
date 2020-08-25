Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYPISP5AKGQE7H6CPTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EA6251762
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 13:22:10 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id f197sf5742735oib.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 04:22:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598354529; cv=pass;
        d=google.com; s=arc-20160816;
        b=F1P28djivzQMqY9n8lfF0dAU9e+LX5cF8UNlIdclARwMSQD24lvRzczX30II0DgAJj
         RPNDGpnIEglv/ZZPl2SD0sEfZqesDyXISntcoP9/GnKZzUlv5GS+tBxKSzA/Ms4+4bRv
         WHzJJ44Ux5JF/cTxbk/sYZD6y7RRtqhtBb0C62thZdBad2hZCyp94Pp5FDAKtYLmh/co
         LFeICQlWAN+UvEKzvbfBxkKK2ZQns5cERC7Dp4Knp8G/dX73rjwkoS+zTJskOufBCqws
         egoaeqhpn+RQI1wPbaZjD6x0u5Q06lJuIcRhHpv7tTXKicPMm0P55evWFid5BusMsx5n
         XnrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0FmFWf4NniBtsjMNOIwedrUtNWt5LNe/q3DETglQL5Y=;
        b=ubL7hQFVWY9kEwdzvERAhBiSS+Re0yLDibFfBBqdxpd0zjJzL+85w3nbX+lT3gEA6+
         L0EzbehG6S7h8xr4m+oylyUcKD6Ug26WoNTfP2F7wMVp7qASY+m9892G51GzshH2fnk1
         30BdHil4kdG4sp5+i5q7eauXlKzGqJ0yuAz9yZEvJF32YToI473gFbx7ZLCXajWttzCx
         lBV5hJ7iyuEIxN9gMC1o+bPD3ii2UpWWIvZb/8FBr4150OnLy586ijv1SIB9CPxuH4fI
         LxoSNTDiGRYSIGyd9hH7hvYfwVh8Qml03E+nogKF4XCPvc3crLsYWt1kJ/RCW3ryUgNS
         rE6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0FmFWf4NniBtsjMNOIwedrUtNWt5LNe/q3DETglQL5Y=;
        b=d6D7zk3gseBJsfUfln7GOOS9S3NcL20QSWqaUdKgO0Xpis3pCgePHDBVDQyiQpCHs/
         UQbgcZzIHyHJl2odOZou4Qpa+IzCfzSMTkvDQ2KRXn2NtmEHIiJIx0HRVN6xmA7g4KCa
         6VewniZg2FObKEyYy7Mb/g8yEku4gUhf//5LN5vnwx/0xdPzNkOnj2P0BhiCLHhSM4jS
         3pkokW9EDc/5SE8GW0fruqqH4vgGG7KXEdO9eJJM54fnEjrMfE3dunDAOBoUu5+uJyp2
         EkCm5BFKuVAQXuPU0u4xkb3Ypth3sBTt9+weIXgH4FFTNsG/pQnoshpqfX+qkpB75AD7
         7XkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0FmFWf4NniBtsjMNOIwedrUtNWt5LNe/q3DETglQL5Y=;
        b=omHGvnQEbKsk+agAUCKcJTj+3Usa2CNr/FEmLlzRfU90TuPZ197JPV1TVlCRyXnWPO
         G4Z+v3+1Vao+87OXRxvXdwGZAe7fo4pl1yF8XbZ2w+khSiaxbyXxQhk/sbjGOcvf5m20
         LUIHDOnPOi139An0Hq+eZurGdaDjSLwAjJNH22CCDvee7zArg8XLHQvwQT1RIxT3ljOn
         gVZ3Q08JSDNOIS9+Swa1ahCGvHQdPYb6+sZf1hwfzlwfh1L9qEP+8OZGLFFFmNTctSVi
         fdoxWpTIqKbsmWQKTMtMsRHFu8NiJhZwlHXwc/zAaYtutPA3Lq/QtPiGM6lxrymrKAxa
         pe6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Y2+a5bFZAyfhr578p37/W9ArnHx12D9BItxmTgjkF+kzkWngC
	JaeZnUn6WOWfjRxoXa7IGmo=
X-Google-Smtp-Source: ABdhPJyXfJnlVGVOc0ixwt8tqeJKvnxymQONV4LNYWlERBDfqN4n+jf7HZUr5tWvG/8OlRpx2qO8tw==
X-Received: by 2002:a9d:61d6:: with SMTP id h22mr6583331otk.94.1598354529173;
        Tue, 25 Aug 2020 04:22:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310d:: with SMTP id b13ls2892518ots.0.gmail; Tue,
 25 Aug 2020 04:22:08 -0700 (PDT)
X-Received: by 2002:a9d:621:: with SMTP id 30mr6633880otn.261.1598354528735;
        Tue, 25 Aug 2020 04:22:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598354528; cv=none;
        d=google.com; s=arc-20160816;
        b=QRXnjNXvNcny/p1sGwszkHeT7Y6X1l3p37Z6ujiMgimFUn/DJzw/GR68atr1ES27bM
         4e2OrIyUONIam0YidMH7WWfXoea8B16WfXhtO2cYWwDFxy4/y+ZcZZFpVkgwIuWu8p1L
         4WuY2PkWgi91v6zfeC19h9x0McdQFZHLK8C/CDr33wLgWo6z67keCvP6Tq66EAelSqH6
         UV5YLLjixsQVJbElCz9RjZMzRQ7rvkPMowIyfZ9ekjsSTs6G0iFUGxW5ndpYyLa8ecck
         z0HTKW2gDSikB5SozYcjiwxP3ggasdeTf8s/eDaZEc809pmjKMg6axgNF7evTIoAO03X
         KSQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=qKbuZVwR3L49W81Cfn3kyESaNkH8AMZGbSVGy3ek63g=;
        b=ytdC0iIGZH5VPx1GYm+oCe/skaryBOdKnCemI1Fj96zlaSpk+vwNzE8UxZ+Pb+uIcs
         mGm3FxAP80NkXQHHsE1yvmtJVPUsvON1idXfyhwn9ZU8f98FGgOrnbVM9GELsjL6fPtT
         3g3gAvVU/slRTg4t2Kk+Em5KV6UNAhPEEgfGcKI0XCQzW9G8vr7i089XSnMyiK0FlDK9
         M4Eah7yUsqLb7LQCwHMUcnZ9/a9cvakUx2QcjSsqt6vf2P7zJ2RRv/x7cVbK/J8in7VH
         zGJOaHub/MOE8NZ008guPXEei57rhtKxAON7aDtL+DvavGKas1yvvXPrUxikK83lO8uM
         AmJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id c142si60398oig.2.2020.08.25.04.22.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Aug 2020 04:22:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: vsRNX222Y5zVuudVbeaVLg0kOCW0G6AOVDj+4I+91AbuWVjIiG4o9W0snb2pFZUuXFze8D3yaR
 EDA7KXsWRIhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="220350325"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; 
   d="gz'50?scan'50,208,50";a="220350325"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2020 04:22:06 -0700
IronPort-SDR: xQQ7QF9tZk+5ynQOEcKljhO3/GtAtoNkk9vIrXS+H75SCkqJeBI0Eh9pBKquKu+lHE9a0X7R+h
 QfFPSOue565Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; 
   d="gz'50?scan'50,208,50";a="299061210"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 25 Aug 2020 04:22:04 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kAX1g-0000L1-3k; Tue, 25 Aug 2020 11:22:04 +0000
Date: Tue, 25 Aug 2020 19:21:17 +0800
From: kernel test robot <lkp@intel.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Mark Brown <broonie@kernel.org>
Subject: [linux-next:master 1094/2998] sound/soc/sof/intel/hda-codec.c:182:1:
 warning: unused label 'error'
Message-ID: <202008251914.Yhis3pK7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   3a00d3dfd4b68b208ecd5405e676d06c8ad6bb63
commit: 11ec0edc6408a739dffca34ebbbe921817c3b10e [1094/2998] ASOC: SOF: Intel: hda-codec: move unused label to correct position
config: s390-randconfig-r012-20200825 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 77e5a195f818b9ace91f7b12ab948b21d7918238)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout 11ec0edc6408a739dffca34ebbbe921817c3b10e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from sound/soc/sof/intel/hda-codec.c:12:
   In file included from include/sound/hdaudio_ext.h:5:
   In file included from include/sound/hdaudio.h:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from sound/soc/sof/intel/hda-codec.c:12:
   In file included from include/sound/hdaudio_ext.h:5:
   In file included from include/sound/hdaudio.h:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from sound/soc/sof/intel/hda-codec.c:12:
   In file included from include/sound/hdaudio_ext.h:5:
   In file included from include/sound/hdaudio.h:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from sound/soc/sof/intel/hda-codec.c:12:
   In file included from include/sound/hdaudio_ext.h:5:
   In file included from include/sound/hdaudio.h:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from sound/soc/sof/intel/hda-codec.c:12:
   In file included from include/sound/hdaudio_ext.h:5:
   In file included from include/sound/hdaudio.h:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> sound/soc/sof/intel/hda-codec.c:182:1: warning: unused label 'error' [-Wunused-label]
   error:
   ^~~~~~
   21 warnings generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=11ec0edc6408a739dffca34ebbbe921817c3b10e
git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
git fetch --no-tags linux-next master
git checkout 11ec0edc6408a739dffca34ebbbe921817c3b10e
vim +/error +182 sound/soc/sof/intel/hda-codec.c

   112	
   113	/* probe individual codec */
   114	static int hda_codec_probe(struct snd_sof_dev *sdev, int address,
   115				   bool hda_codec_use_common_hdmi)
   116	{
   117	#if IS_ENABLED(CONFIG_SND_SOC_SOF_HDA_AUDIO_CODEC)
   118		struct hdac_hda_priv *hda_priv;
   119	#endif
   120		struct hda_bus *hbus = sof_to_hbus(sdev);
   121		struct hdac_device *hdev;
   122		struct hda_codec *codec;
   123		u32 hda_cmd = (address << 28) | (AC_NODE_ROOT << 20) |
   124			(AC_VERB_PARAMETERS << 8) | AC_PAR_VENDOR_ID;
   125		u32 resp = -1;
   126		int ret;
   127	
   128		mutex_lock(&hbus->core.cmd_mutex);
   129		snd_hdac_bus_send_cmd(&hbus->core, hda_cmd);
   130		snd_hdac_bus_get_response(&hbus->core, address, &resp);
   131		mutex_unlock(&hbus->core.cmd_mutex);
   132		if (resp == -1)
   133			return -EIO;
   134		dev_dbg(sdev->dev, "HDA codec #%d probed OK: response: %x\n",
   135			address, resp);
   136	
   137	#if IS_ENABLED(CONFIG_SND_SOC_SOF_HDA_AUDIO_CODEC)
   138		hda_priv = devm_kzalloc(sdev->dev, sizeof(*hda_priv), GFP_KERNEL);
   139		if (!hda_priv)
   140			return -ENOMEM;
   141	
   142		hda_priv->codec.bus = hbus;
   143		hdev = &hda_priv->codec.core;
   144		codec = &hda_priv->codec;
   145	
   146		ret = snd_hdac_ext_bus_device_init(&hbus->core, address, hdev);
   147		if (ret < 0)
   148			return ret;
   149	
   150		if ((resp & 0xFFFF0000) == IDISP_VID_INTEL) {
   151			if (!hdev->bus->audio_component) {
   152				dev_dbg(sdev->dev,
   153					"iDisp hw present but no driver\n");
   154				return -ENOENT;
   155			}
   156			hda_priv->need_display_power = true;
   157		}
   158	
   159		if (is_generic_config(hbus))
   160			codec->probe_id = HDA_CODEC_ID_GENERIC;
   161		else
   162			codec->probe_id = 0;
   163	
   164		/*
   165		 * if common HDMI codec driver is not used, codec load
   166		 * is skipped here and hdac_hdmi is used instead
   167		 */
   168		if (hda_codec_use_common_hdmi ||
   169		    (resp & 0xFFFF0000) != IDISP_VID_INTEL) {
   170			hdev->type = HDA_DEV_LEGACY;
   171			ret = hda_codec_load_module(codec);
   172			/*
   173			 * handle ret==0 (no driver bound) as an error, but pass
   174			 * other return codes without modification
   175			 */
   176			if (ret == 0)
   177				ret = -ENOENT;
   178		}
   179	
   180		return ret;
   181	
 > 182	error:
   183		snd_hdac_ext_bus_device_exit(hdev);
   184		return -ENOENT;
   185	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008251914.Yhis3pK7%25lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--C7zPtVaVf+AK4Oqc--
