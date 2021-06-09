Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRHAQCDAMGQEIHCORCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 717F83A0A78
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 05:06:45 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id t19-20020a4ae4130000b029023950cb8d35sf14547361oov.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 20:06:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623208004; cv=pass;
        d=google.com; s=arc-20160816;
        b=r8qbMy0zbvmSLKnFK2F+FygBJjH+QQoLY3CAvQCh3Iul/jrwA/30E/9e9lyYZMx8/R
         eD2FIS0VMfLasOd2hmBw29Zw8MV0DjsisQTrvKOMHtJTPkFXVV0zNvDCvm2hz4QbMTnR
         5n2bwCDVNwx+Znw9YXO9jqpQ4Y0QHwKSMV/zxDySlr3PquMQ1DOOQMENsmJldwcsFWK4
         Ubp/E+THMgEA8HKlpMhS5YtnX7yG+1imjKeFzEIMUpFWEIlMLe794sTZlwsnAzyDGgnT
         qapg4WduVap5z9V3STWFQzOojKbGneenedxytpcsz1x97aCuHX1oVx+Sd/CCz30n0GDJ
         U4sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=UgPDlWYm68XnYkaWNpGkm+OeYMCY7bAr5VDdi6Ppaws=;
        b=UEwzLcDOVsdgNEQFiNtj9e2JyXr2He8+KtBiA4ymIYqvncICQOnWxoNvzqZvC6ZS5D
         oD0pjIANxfLf9gVUMlpI3iIkIgz9u0d/9DlPoL3/lMaasFXr18+eRk6ja4Kp+5wiwAwJ
         /p3gdOLBVcrm01/yMZZoZxeFuQARmj8AtgCIGBDaCkdWVq9HPP9D0n0GTQPajqWIfH5l
         c1DXNt36/qFeZTSTAwI8em656zLs2FLqygFmRFF28mX1Vcx6R2I3wzXhmL31kbVqk/Is
         J6jz5oAJNdxvS7nd16NZ9Lz/H5FGuOdkeQmoZAxKDlrpxQdNz7+zOOjYsgkVmT1OooUZ
         Aa9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UgPDlWYm68XnYkaWNpGkm+OeYMCY7bAr5VDdi6Ppaws=;
        b=Pz1dTboRPIA1uSWpXtOa4DYjDCClBnJTcvafcylVKYyNVS5kOl9jD+AKkdnmNJFeZD
         9eVfzCRW3G2KwUvJmmgEHb3P+xHfrFxWlY1ogo3ScAUDoK/YcvvWZJ7S+TpQRT9ilOhW
         XozaxuwTnFc6ZHwrQqItsoqjWhzdX5F7ybQ7bFCE6DLxYUTjfIxm5PCo3yJEG3IOJ7mM
         9kxe8Ew8DQOCgEpT+6KtukVXc2PkiXr5yXqbHlCe4y5H7l7YKncMmgEn0zpMztw9Zo8Z
         5jpWA06zEm8pVi3KhNIRgq7bM37D2KA09T4Emi77z2XTmdD4K906CTTa33HXRfThx9xW
         EZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UgPDlWYm68XnYkaWNpGkm+OeYMCY7bAr5VDdi6Ppaws=;
        b=NCEGJ9RrA6IDrbTZqIf3NXN6GSMrF/RgZcemy8QTEpjVCobO6I8W1BYUrb2XVDK5kJ
         D5bvY9CtKDHhbIrT3YKt5HLrEvLS/GkKXP+zXpsQZ5Awe39MdDVYktRcfAOGTqIDqsEF
         4cwACwkn8HAz9TE+SENcAcOo46DoLWOcFdeqKdQheHtJypnTJTJg1Bp9mJCwlTMLaZyA
         Njx2xo/WrRcBB9Pqk+NPe2fCY4++loEays4F23hEMV17DGHM/rDKCHPwRONdS5I/OLyv
         39dRwiFDMHjzDJdG8VBoBnQW561eBvMsKpY68SyMqGaijINy5QLDr+n/FgZfhFnQWIbC
         avkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tw3zraDiKIlQ76t3B9PjcgG6vswm75+gy0KiPEkQPBsH4vmZt
	yOStkN7mH4GszmdXH4a5MRk=
X-Google-Smtp-Source: ABdhPJxQsZgKDtMmmuroMgEnIhXcKxKFhGLWuOv/yG4jxK9y3+s99Q23KJbPXugiUjuEVWYisRB0Rw==
X-Received: by 2002:aca:4bd7:: with SMTP id y206mr5132999oia.40.1623208004184;
        Tue, 08 Jun 2021 20:06:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:6285:: with SMTP id w127ls261452oib.4.gmail; Tue, 08 Jun
 2021 20:06:43 -0700 (PDT)
X-Received: by 2002:a05:6808:10cd:: with SMTP id s13mr5150454ois.113.1623208003711;
        Tue, 08 Jun 2021 20:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623208003; cv=none;
        d=google.com; s=arc-20160816;
        b=BuD25ERlb6UvcI/nfLZp7cG+tZeLLqvCp7LxJ44RO8qs2ihduDcIvBYC4J44lMO9dq
         d3xbHMMbPWHNvcrRDFjACDpTC5KIO2dE494BAMKtqtd1e0K9KgL7ypSou280VU/yxOFE
         ahrXAvhCXiNF8lyWNN73FXmhXnioc7cEBMd7aA0+0ai3MufJZgyAkYMKNXHY+3UjokWR
         I7lmWNgqewf1SpL+sJi44dNonrzvQFw6IgbcrbKmKEZ2n+lIDEVj2NRWYdb5fnrIPJlV
         U4UGUncK2CeYHOyNmzHoxP2JfZ3g33vRhYR5eaER5ib5ZXvVhzmzJpHmtZdek92qshcq
         cUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=SANEV5ogxG6rTrdz/O0GusvGP59ldNhRau499qwNWW4=;
        b=qtU4mWo2K3n4U2f7fcHymBjYICqQ4YJ5PBZCJN/5PQmktr0+Zu8I/y5sdRMeVS+CeP
         t6q7Ytv/hX9OHGTvpDyvlmvgSAfHvd5TW5A0DX/u8CLqD0BFtAtqwv67k18po5e/zh6c
         aVrplkmgVBfQ1wCA5jbjKSwwWWZSufpF56YX6QhDb98uSPXJSPaikrCRA4I3T3HmqZu2
         6T5vPbzOpOBC/Fz5DwLm4WngZ4YnBz2JK+xhq7P17ZSr7wo7fOuCfD0zeilZMkKtAAtJ
         ekVZ+Ho96rG4sMAgDpUW0Km3QT3KNiZVxU+t+JCJ+w64q5bprQO3IcuLolHKb9tTzRF7
         /gYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id t15si1195452oiw.4.2021.06.08.20.06.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 20:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: trnWKujHHfDT0Vv+vQuWrBHQWOBY+D7xaOsymozJE2j8cZ+MbKWbTt4lMb3eHZRIqDZJAQpEc+
 mJD9oEEfssIQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="185366134"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; 
   d="gz'50?scan'50,208,50";a="185366134"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 20:06:25 -0700
IronPort-SDR: jZKLVmhG5YN/JkS1Z0mOQIqA5X/7dy7oIVe7objvskWB5ytOMd8PWEnGfmlnBcTM0td8NkRaQk
 PwC8OEGMViOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; 
   d="gz'50?scan'50,208,50";a="402294779"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 08 Jun 2021 20:06:21 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lqoXs-0009LI-SX; Wed, 09 Jun 2021 03:06:20 +0000
Date: Wed, 9 Jun 2021 11:05:29 +0800
From: kernel test robot <lkp@intel.com>
To: Vadym Kochan <vadym.kochan@plvision.eu>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Robert Marko <robert.marko@sartura.hr>,
	Vadym Kochan <vadym.kochan@plvision.eu>
Subject: Re: [PATCH v2 1/3] nvmem: core: introduce cells parser
Message-ID: <202106091032.JY0QCred-lkp@intel.com>
References: <20210608190327.22071-2-vadym.kochan@plvision.eu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wRRV7LY7NUeQGEoC"
Content-Disposition: inline
In-Reply-To: <20210608190327.22071-2-vadym.kochan@plvision.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Vadym,

I love your patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linux/master linus/master v5.13-rc5 next-20210608]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Vadym-Kochan/nvmem-add-ONIE-NVMEM-cells-parser/20210609-031008
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: s390-randconfig-r012-20210608 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/e7cd03f23c4980914d9de330fd018cb733f84d8f
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Vadym-Kochan/nvmem-add-ONIE-NVMEM-cells-parser/20210609-031008
        git checkout e7cd03f23c4980914d9de330fd018cb733f84d8f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from lib/vsprintf.c:36:
   In file included from include/linux/rtc.h:18:
>> include/linux/nvmem-provider.h:183:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct nvmem_parser *' [-Wint-conversion]
           return -EOPNOTSUPP;
                  ^~~~~~~~~~~
   In file included from lib/vsprintf.c:40:
   In file included from include/net/addrconf.h:50:
   In file included from include/linux/ipv6.h:88:
   In file included from include/linux/tcp.h:17:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from lib/vsprintf.c:40:
   In file included from include/net/addrconf.h:50:
   In file included from include/linux/ipv6.h:88:
   In file included from include/linux/tcp.h:17:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from lib/vsprintf.c:40:
   In file included from include/net/addrconf.h:50:
   In file included from include/linux/ipv6.h:88:
   In file included from include/linux/tcp.h:17:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   13 warnings generated.
--
   In file included from lib/test_printf.c:13:
   In file included from include/linux/rtc.h:18:
>> include/linux/nvmem-provider.h:183:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct nvmem_parser *' [-Wint-conversion]
           return -EOPNOTSUPP;
                  ^~~~~~~~~~~
   lib/test_printf.c:157:52: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
           test("0|1|1|128|255", "%hhu|%hhu|%hhu|%hhu|%hhu", 0, 1, 257, 128, -1);
                                  ~~~~                       ^
                                  %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:157:55: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
           test("0|1|1|128|255", "%hhu|%hhu|%hhu|%hhu|%hhu", 0, 1, 257, 128, -1);
                                       ~~~~                     ^
                                       %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:157:58: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
           test("0|1|1|128|255", "%hhu|%hhu|%hhu|%hhu|%hhu", 0, 1, 257, 128, -1);
                                            ~~~~                   ^~~
                                            %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:157:63: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
           test("0|1|1|128|255", "%hhu|%hhu|%hhu|%hhu|%hhu", 0, 1, 257, 128, -1);
                                                 ~~~~                   ^~~
                                                 %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:157:68: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
           test("0|1|1|128|255", "%hhu|%hhu|%hhu|%hhu|%hhu", 0, 1, 257, 128, -1);
                                                      ~~~~                   ^~
                                                      %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:158:52: warning: format specifies type 'char' but the argument has type 'int' [-Wformat]
           test("0|1|1|-128|-1", "%hhd|%hhd|%hhd|%hhd|%hhd", 0, 1, 257, 128, -1);
                                  ~~~~                       ^
                                  %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:158:55: warning: format specifies type 'char' but the argument has type 'int' [-Wformat]
           test("0|1|1|-128|-1", "%hhd|%hhd|%hhd|%hhd|%hhd", 0, 1, 257, 128, -1);
                                       ~~~~                     ^
                                       %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:158:58: warning: format specifies type 'char' but the argument has type 'int' [-Wformat]
           test("0|1|1|-128|-1", "%hhd|%hhd|%hhd|%hhd|%hhd", 0, 1, 257, 128, -1);
                                            ~~~~                   ^~~
                                            %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:158:63: warning: format specifies type 'char' but the argument has type 'int' [-Wformat]
           test("0|1|1|-128|-1", "%hhd|%hhd|%hhd|%hhd|%hhd", 0, 1, 257, 128, -1);
                                                 ~~~~                   ^~~
                                                 %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:158:68: warning: format specifies type 'char' but the argument has type 'int' [-Wformat]
           test("0|1|1|-128|-1", "%hhd|%hhd|%hhd|%hhd|%hhd", 0, 1, 257, 128, -1);
                                                      ~~~~                   ^~
                                                      %d
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:159:41: warning: format specifies type 'unsigned short' but the argument has type 'int' [-Wformat]
           test("2015122420151225", "%ho%ho%#ho", 1037, 5282, -11627);
                                     ~~~          ^~~~
                                     %o
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:159:47: warning: format specifies type 'unsigned short' but the argument has type 'int' [-Wformat]
           test("2015122420151225", "%ho%ho%#ho", 1037, 5282, -11627);
                                        ~~~             ^~~~
                                        %o
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   lib/test_printf.c:159:53: warning: format specifies type 'unsigned short' but the argument has type 'int' [-Wformat]
           test("2015122420151225", "%ho%ho%#ho", 1037, 5282, -11627);
                                           ~~~~               ^~~~~~
                                           %#o
   lib/test_printf.c:137:40: note: expanded from macro 'test'
           __test(expect, strlen(expect), fmt, ##__VA_ARGS__)
                                          ~~~    ^~~~~~~~~~~
   14 warnings generated.
--
   In file included from block/partitions/msdos.c:31:
   In file included from block/partitions/check.h:3:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from block/partitions/msdos.c:31:
   In file included from block/partitions/check.h:3:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from block/partitions/msdos.c:31:
   In file included from block/partitions/check.h:3:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from block/partitions/msdos.c:32:
   In file included from block/partitions/efi.h:20:
   In file included from include/linux/efi.h:20:
   In file included from include/linux/rtc.h:18:
>> include/linux/nvmem-provider.h:183:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct nvmem_parser *' [-Wint-conversion]
           return -EOPNOTSUPP;
                  ^~~~~~~~~~~
   13 warnings generated.
--
   In file included from kernel/time/ntp.c:10:
   In file included from include/linux/clocksource.h:22:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/time/ntp.c:10:
   In file included from include/linux/clocksource.h:22:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/time/ntp.c:10:
   In file included from include/linux/clocksource.h:22:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from kernel/time/ntp.c:19:
   In file included from include/linux/rtc.h:18:
>> include/linux/nvmem-provider.h:183:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct nvmem_parser *' [-Wint-conversion]
           return -EOPNOTSUPP;
                  ^~~~~~~~~~~
   kernel/time/ntp.c:245:19: warning: unused function 'ntp_synced' [-Wunused-function]
   static inline int ntp_synced(void)
                     ^
   14 warnings generated.
..


vim +183 include/linux/nvmem-provider.h

   179	
   180	static inline struct nvmem_parser *
   181	nvmem_parser_register(const struct nvmem_parser_config *config)
   182	{
 > 183		return -EOPNOTSUPP;
   184	}
   185	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106091032.JY0QCred-lkp%40intel.com.

--wRRV7LY7NUeQGEoC
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yP8BvNus5IjeAAA=

--wRRV7LY7NUeQGEoC--
