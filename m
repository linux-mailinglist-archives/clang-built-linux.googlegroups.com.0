Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT7VXPVAKGQE74RK53I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3441F88C66
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 19:11:45 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id z2sf8378383qkf.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 10:11:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565457104; cv=pass;
        d=google.com; s=arc-20160816;
        b=hON7+mKBZKqlFTsp/f1sM9GhkCgya1EBN09pG5kkoJSsaYaAMT1Un5/q5QkDJpCet3
         lE7P/oMT65ND3h7dp0SEbOp0dgME1BgI8/XtL6dTMED2jAKjhTPsWW02IKNZRycfVRu0
         q8YVdkaD0CbkTyadyruPNepZ/+DVN0CpyV3ddOPS+BQmOwTcclYBMjnBJ5LC3IhcFZoS
         KgZEz7c9FeC8ngovv1nYnvadgKkW0cVubTHOXez9w17s2CjAthPRNzzfACDyAZBH4ec9
         ajb7KyErC4yGvpJpp3LOmzWFJZalH7t+MeUd7LXQNrLtLAIvT39tPyI/SdHW09Wzt73q
         sO8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ObHBXcnmzdmkoUjo71RYMCTWG7g8eTDAaA/8Cd8BBqo=;
        b=vN9iewdduj9iByy1d9ZXWa3Xn3iuXkrVkFvxKoh/dD/FF+Cu25RR/1qb5wtUVEMCjR
         AqFTLHmVrv/dlCFc6GkExo4oYzFoNh6fBrld6wdIfPYF4XtoH4MAd0H0gz8s/bpLFZpR
         V93LgsDpQc3rEWQ0iJQW0bJcbC2dup4UOJX530cs6NOww+8V1RGepOBWv2uEd2fnVP2d
         0SAaaJgxPnumxl4VxSXky1DdlpxRuVoYuSIoq9PGefsUKox7raaSOwQa3aHeJ2IdEc1x
         9szNJevqbtv4vgllTqpoGwaBowln1aTORMGI3XaRpfIQEk0Xw50CNLRIqxyBbyGsotcc
         e8DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ObHBXcnmzdmkoUjo71RYMCTWG7g8eTDAaA/8Cd8BBqo=;
        b=etcTRkQhyKqXiJNolGYbk0PO30w05Vn9KaymJ7pFvESFzs2c0M/d7GoNUklxYGEAIn
         Sy9mB2u5Amtk4ZdokPgtTI1MuzC+q1OhPKrjJiCSrsFhpjxORjBoaTxw38jnbujPU2ts
         t0ZYeyL1PrRmP+nc4Bqxup9RbGKMs7gnHRp/FkD9xgC3ZLcNYKd+3/EZeRiPwK2NPE4Q
         iqiXW6kmS3S2tUwtiGGmA8NF0gAS95ggCw+KqAPLtB0WVlxtkNt1jhZLsHYdM+6wu/9f
         X22PkmMwDwRQxwn2s6nCwh3qGsj578/qhGApdemkzm5fF/V6d2tYz1gXkSzeyCUjluxf
         1Q1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ObHBXcnmzdmkoUjo71RYMCTWG7g8eTDAaA/8Cd8BBqo=;
        b=CUPtrp4ffOUthsVFKL7xvQYuhLlumR/G4uJaNlulDpOjH2+rCSq8fVERp5oTq78H5Z
         SMMMDJKLZ+b2NAkIBYmx8+6xBTYNRYOHBTQoeYkP5eZvTcII16KDaM91FSE8HLRgL+xn
         pFm4NqU63k1Vy4A/w77AUmmFQrGFq4Jt4riQHt+SoNGPjvjMYvkYK9ce7ri/eQRDZiUf
         ZyyMDyAjGyjgVzMFfehRn0N10lGnHBZR/rK2ZGUrkuxy/6TwOoOzTQwHIp7/6gRkRls9
         HUbXBWWX6k0FMed3LPJ2dtYHYyY4I4ZpQ/nya/nFk1IL1sPIp1FCyGq6ddjSUZb1rBKS
         5JPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNUUZUiO4+34oTE8qhGwp4u1BQ2RJtSKC1u1KnUK0CEVFZTkv7
	Ubx8eAS71nlGkCcYBDB6B/I=
X-Google-Smtp-Source: APXvYqz0roRyQ7e37du3ZMV4le8MNVDeMM2rfcGBKD5K/xJGH1s7sti5xQ9gCfrgJlh1We90cCIVTQ==
X-Received: by 2002:a37:b82:: with SMTP id 124mr22845537qkl.260.1565457103755;
        Sat, 10 Aug 2019 10:11:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f511:: with SMTP id l17ls4718121qkk.6.gmail; Sat, 10 Aug
 2019 10:11:43 -0700 (PDT)
X-Received: by 2002:a37:a16:: with SMTP id 22mr12213369qkk.85.1565457103377;
        Sat, 10 Aug 2019 10:11:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565457103; cv=none;
        d=google.com; s=arc-20160816;
        b=UKQgul14PjlCS9yAn0lWqVWc3VPDn5+JVF/DcKj+lL9vug/IzS4XkAQdz65ABxXMIf
         tgNxp1E6WOtL2zDp0Wp8wIQ+RKTCl/H/R9L+AICPjDbohUZHUJ8wFjqVMGnvMY9KpFrF
         +pFnwGyRTJczFo/ZDqN+UvL1qTGV9K/QGkSvXrsy/LxypssRn7x+Kyth+ZSYc1NaLpbG
         whETbU3hfW6r4zHajxUdOcKzSCG/SqDYjioyhguVKYfDYnjaFXQEcg6RVWJIMDGPNjXy
         K/cnbM1PXlS7bHf3tFxRstpNp+FXG9yDNYJDgsf4eGd9FuHqNLLYpPL+O0/AUy/LZ4R4
         zT0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=xAPCJ/jQeT6dRjW4vozdTM0TnUyw8TnNPhZFcO4rPX0=;
        b=nb3pX+M6UAzqiVf7wK+M/hBZJ1OlbulxnbFvvXpq03A+ORyuvnUWPX9PzICKxuGJix
         n/l9IE272QGSDbGl5llFS/LvaI3YhkU7oPvZTXU/MnBRTdMlOMeRHIRrgxOBeJDsaO5a
         WLb1yOYRl2RQyKeNrAtR46dAL1e4U0BHf6h7mk/fzYWOk0Kxk5T9+B2rTqMUl2OzsNzO
         g4FVSiB37tdHuq64H0Zl1v2ozYAmTL/+6awlwDQW9hg3eJozdoFXyJcwW+3TXi8ax/ql
         3Nuk1V4cngthXbarTkJp6NJBfENq/2AYoC7dkGysPdJ+w0ILet3En9ptDB9ENa199kyQ
         GabQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id w2si628007qth.4.2019.08.10.10.11.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 10:11:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Aug 2019 10:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,370,1559545200"; 
   d="gz'50?scan'50,208,50";a="166298141"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 10 Aug 2019 10:11:14 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hwUte-000ESy-0G; Sun, 11 Aug 2019 01:11:14 +0800
Date: Sun, 11 Aug 2019 01:11:03 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [gpio:gpio-descriptors-spi 5/5] drivers//spi/spi-pl022.c:442:22:
 error: no member named 'cur_cs' in 'struct pl022'; did you mean 'cur_msg'?
Message-ID: <201908110127.OT2ld8BV%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zhk2wfhxxqdxpgq4"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--zhk2wfhxxqdxpgq4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: linux-gpio@vger.kernel.org
TO: Linus Walleij <linus.walleij@linaro.org>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/linusw/linux-gpio.git gpio-descriptors-spi
head:   6e5614b6476001adb8ce6e2859bc2ca0a4339398
commit: 6e5614b6476001adb8ce6e2859bc2ca0a4339398 [5/5] slask
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 6e5614b6476001adb8ce6e2859bc2ca0a4339398
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers//spi/spi-pl022.c:442:22: error: no member named 'cur_cs' in 'struct pl022'; did you mean 'cur_msg'?
                   tmp &= ~BIT(pl022->cur_cs);
                                      ^~~~~~
                                      cur_msg
   include/linux/bits.h:8:30: note: expanded from macro 'BIT'
   #define BIT(nr)                 (UL(1) << (nr))
                                              ^
   drivers//spi/spi-pl022.c:370:23: note: 'cur_msg' declared here
           struct spi_message              *cur_msg;
                                            ^
>> drivers//spi/spi-pl022.c:442:11: error: invalid operands to binary expression ('unsigned long' and 'struct spi_message *')
                   tmp &= ~BIT(pl022->cur_cs);
                           ^~~~~~~~~~~~~~~~~~
   include/linux/bits.h:8:26: note: expanded from macro 'BIT'
   #define BIT(nr)                 (UL(1) << (nr))
                                    ~~~~~ ^  ~~~~
   drivers//spi/spi-pl022.c:444:21: error: no member named 'cur_cs' in 'struct pl022'; did you mean 'cur_msg'?
                   tmp |= BIT(pl022->cur_cs);
                                     ^~~~~~
                                     cur_msg
   include/linux/bits.h:8:30: note: expanded from macro 'BIT'
   #define BIT(nr)                 (UL(1) << (nr))
                                              ^
   drivers//spi/spi-pl022.c:370:23: note: 'cur_msg' declared here
           struct spi_message              *cur_msg;
                                            ^
   drivers//spi/spi-pl022.c:444:10: error: invalid operands to binary expression ('unsigned long' and 'struct spi_message *')
                   tmp |= BIT(pl022->cur_cs);
                          ^~~~~~~~~~~~~~~~~~
   include/linux/bits.h:8:26: note: expanded from macro 'BIT'
   #define BIT(nr)                 (UL(1) << (nr))
                                    ~~~~~ ^  ~~~~
>> drivers//spi/spi-pl022.c:493:4: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                           pl022_cs_control(pl022, SSP_CHIP_DESELECT);
                           ^
   drivers//spi/spi-pl022.c:834:3: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                   pl022_cs_control(pl022, SSP_CHIP_DESELECT);
                   ^
   drivers//spi/spi-pl022.c:1305:4: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                           pl022_cs_control(pl022, SSP_CHIP_DESELECT);
                           ^
   drivers//spi/spi-pl022.c:1388:4: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                           pl022_cs_control(pl022, SSP_CHIP_SELECT);
                           ^
   drivers//spi/spi-pl022.c:1427:3: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                   pl022_cs_control(pl022, SSP_CHIP_SELECT);
                   ^
   drivers//spi/spi-pl022.c:1501:5: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                                   pl022_cs_control(pl022, SSP_CHIP_SELECT);
                                   ^
   drivers//spi/spi-pl022.c:1506:5: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                                   pl022_cs_control(pl022, SSP_CHIP_SELECT);
                                   ^
   drivers//spi/spi-pl022.c:1542:4: error: implicit declaration of function 'pl022_cs_control' [-Werror,-Wimplicit-function-declaration]
                           pl022_cs_control(pl022, SSP_CHIP_DESELECT);
                           ^
>> drivers//spi/spi-pl022.c:1571:25: error: no member named 'chipselects' in 'struct pl022'
           pl022->cur_cs = pl022->chipselects[msg->spi->chip_select];
                           ~~~~~  ^
   drivers//spi/spi-pl022.c:1571:9: error: no member named 'cur_cs' in 'struct pl022'; did you mean 'cur_msg'?
           pl022->cur_cs = pl022->chipselects[msg->spi->chip_select];
                  ^~~~~~
                  cur_msg
   drivers//spi/spi-pl022.c:370:23: note: 'cur_msg' declared here
           struct spi_message              *cur_msg;
                                            ^
>> drivers//spi/spi-pl022.c:1852:4: error: implicit declaration of function 'of_property_read_u32' [-Werror,-Wimplicit-function-declaration]
                           of_property_read_u32(np, "pl022,interface",
                           ^
>> drivers//spi/spi-pl022.c:1914:7: error: implicit declaration of function 'gpio_is_valid' [-Werror,-Wimplicit-function-declaration]
           if (!gpio_is_valid(pl022->chipselects[spi->chip_select]))
                ^
   drivers//spi/spi-pl022.c:1914:7: note: did you mean 'uuid_is_valid'?
   include/linux/uuid.h:71:19: note: 'uuid_is_valid' declared here
   bool __must_check uuid_is_valid(const char *uuid);
                     ^
   drivers//spi/spi-pl022.c:1914:28: error: no member named 'chipselects' in 'struct pl022'
           if (!gpio_is_valid(pl022->chipselects[spi->chip_select]))
                              ~~~~~  ^
   drivers//spi/spi-pl022.c:2077:2: error: implicit declaration of function 'of_property_read_u32' [-Werror,-Wimplicit-function-declaration]
           of_property_read_u32(np, "num-cs", &tmp);
           ^
>> drivers//spi/spi-pl022.c:2081:11: error: implicit declaration of function 'of_property_read_bool' [-Werror,-Wimplicit-function-declaration]
           pd->rt = of_property_read_bool(np, "pl022,rt");
                    ^
   drivers//spi/spi-pl022.c:2081:11: note: did you mean 'of_property_read_u32'?
   drivers//spi/spi-pl022.c:1852:4: note: 'of_property_read_u32' declared here
                           of_property_read_u32(np, "pl022,interface",
                           ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.

vim +442 drivers//spi/spi-pl022.c

b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  329  
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  330  /**
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  331   * struct pl022 - This is the private SSP driver data structure
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  332   * @adev: AMBA device model hookup
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  333   * @vendor: vendor data for the IP block
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  334   * @phybase: the physical memory where the SSP device resides
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  335   * @virtbase: the virtual memory where the SSP is mapped
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  336   * @clk: outgoing clock "SPICLK" for the SPI bus
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  337   * @master: SPI framework hookup
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  338   * @master_info: controller-specific data from machine setup
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  339   * @pump_transfers: Tasklet used in Interrupt Transfer mode
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  340   * @cur_msg: Pointer to current spi_message being processed
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  341   * @cur_transfer: Pointer to current spi_transfer
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  342   * @cur_chip: pointer to current clients chip(assigned from controller_state)
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  343   * @next_msg_cs_active: the next message in the queue has been examined
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  344   *  and it was found that it uses the same chip select as the previous
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  345   *  message, so we left it active after the previous transfer, and it's
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  346   *  active already.
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  347   * @tx: current position in TX buffer to be read
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  348   * @tx_end: end position in TX buffer to be read
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  349   * @rx: current position in RX buffer to be written
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  350   * @rx_end: end position in RX buffer to be written
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  351   * @read: the type of read currently going on
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  352   * @write: the type of write currently going on
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  353   * @exp_fifo_level: expected FIFO level
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  354   * @dma_rx_channel: optional channel for RX DMA
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  355   * @dma_tx_channel: optional channel for TX DMA
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  356   * @sgt_rx: scattertable for the RX transfer
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  357   * @sgt_tx: scattertable for the TX transfer
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  358   * @dummypage: a dummy page used for driving data on the bus with DMA
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  359   */
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  360  struct pl022 {
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  361  	struct amba_device		*adev;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  362  	struct vendor_data		*vendor;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  363  	resource_size_t			phybase;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  364  	void __iomem			*virtbase;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  365  	struct clk			*clk;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  366  	struct spi_master		*master;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  367  	struct pl022_ssp_controller	*master_info;
ffbbdd21329f3e drivers/spi/spi-pl022.c  Linus Walleij            2012-02-22  368  	/* Message per-transfer pump */
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  369  	struct tasklet_struct		pump_transfers;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09 @370  	struct spi_message		*cur_msg;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  371  	struct spi_transfer		*cur_transfer;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  372  	struct chip_data		*cur_chip;
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  373  	bool				next_msg_cs_active;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  374  	void				*tx;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  375  	void				*tx_end;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  376  	void				*rx;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  377  	void				*rx_end;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  378  	enum ssp_reading		read;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  379  	enum ssp_writing		write;
fc05475f867624 drivers/spi/amba-pl022.c Linus Walleij            2010-01-22  380  	u32				exp_fifo_level;
083be3f05371b8 drivers/spi/spi-pl022.c  Linus Walleij            2011-06-16  381  	enum ssp_rx_level_trig		rx_lev_trig;
083be3f05371b8 drivers/spi/spi-pl022.c  Linus Walleij            2011-06-16  382  	enum ssp_tx_level_trig		tx_lev_trig;
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  383  	/* DMA settings */
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  384  #ifdef CONFIG_DMA_ENGINE
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  385  	struct dma_chan			*dma_rx_channel;
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  386  	struct dma_chan			*dma_tx_channel;
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  387  	struct sg_table			sgt_rx;
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  388  	struct sg_table			sgt_tx;
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  389  	char				*dummypage;
ffbbdd21329f3e drivers/spi/spi-pl022.c  Linus Walleij            2012-02-22  390  	bool				dma_running;
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  391  #endif
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  392  };
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  393  
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  394  /**
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  395   * struct chip_data - To maintain runtime state of SSP for each client chip
556f4aeb7d9dfa drivers/spi/amba-pl022.c Linus Walleij            2010-05-05  396   * @cr0: Value of control register CR0 of SSP - on later ST variants this
556f4aeb7d9dfa drivers/spi/amba-pl022.c Linus Walleij            2010-05-05  397   *       register is 32 bits wide rather than just 16
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  398   * @cr1: Value of control register CR1 of SSP
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  399   * @dmacr: Value of DMA control Register of SSP
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  400   * @cpsr: Value of Clock prescale register
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  401   * @n_bytes: how many bytes(power of 2) reqd for a given data width of client
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  402   * @enable_dma: Whether to enable DMA or not
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  403   * @read: function ptr to be used to read when doing xfer for this chip
12e8b325f28a87 drivers/spi/amba-pl022.c Linus Walleij            2011-02-08  404   * @write: function ptr to be used to write when doing xfer for this chip
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  405   * @xfer_type: polling/interrupt/DMA
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  406   *
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  407   * Runtime state of the SSP controller, maintained per chip,
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  408   * This would be set according to the current message that would be served
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  409   */
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  410  struct chip_data {
556f4aeb7d9dfa drivers/spi/amba-pl022.c Linus Walleij            2010-05-05  411  	u32 cr0;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  412  	u16 cr1;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  413  	u16 dmacr;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  414  	u16 cpsr;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  415  	u8 n_bytes;
b1b6b9aa6fd32d drivers/spi/amba-pl022.c Linus Walleij            2010-09-29  416  	bool enable_dma;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  417  	enum ssp_reading read;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  418  	enum ssp_writing write;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  419  	int xfer_type;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  420  };
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  421  
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  422  static void pl022_set_cs(struct spi_device *spi, bool enable)
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  423  {
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  424  	struct pl022 *pl022 = spi_controller_get_devdata(spi->controller);
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  425  	u32 tmp;
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  426  
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  427  	/*
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  428  	 * This callback will ONLY be called of no GPIO descriptors were found
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  429  	 * for the device, so we know we are dealing exclusively with variants
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  430  	 * that have internal CS control here, but just to be sure: extra check
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  431  	 * for now.
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  432  	 */
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  433  	if (!pl022->vendor->internal_cs_ctrl) {
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  434  		dev_err(&spi->dev,
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  435  			"called internal CS control on unsupported device\n");
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  436  		return;
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  437  	}
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  438  
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  439  	/* We draw a line low here to imply we enable it */
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  440  	tmp = readw(SSP_CSR(pl022->virtbase));
6e5614b6476001 drivers/spi/spi-pl022.c  Linus Walleij            2019-06-25  441  	if (enable)
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17 @442  		tmp &= ~BIT(pl022->cur_cs);
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  443  	else
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  444  		tmp |= BIT(pl022->cur_cs);
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  445  	writew(tmp, SSP_CSR(pl022->virtbase));
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  446  }
db4fa45ed3182d drivers/spi/spi-pl022.c  Anders Berg              2014-09-17  447  
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  448  /**
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  449   * giveback - current spi_message is over, schedule next message and call
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  450   * callback of this message. Assumes that caller already
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  451   * set message->status; dma and pio irqs are blocked
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  452   * @pl022: SSP driver private data structure
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  453   */
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  454  static void giveback(struct pl022 *pl022)
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  455  {
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  456  	struct spi_transfer *last_transfer;
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  457  	pl022->next_msg_cs_active = false;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  458  
23e2c2aa45a213 drivers/spi/spi-pl022.c  Axel Lin                 2014-02-12  459  	last_transfer = list_last_entry(&pl022->cur_msg->transfers,
23e2c2aa45a213 drivers/spi/spi-pl022.c  Axel Lin                 2014-02-12  460  					struct spi_transfer, transfer_list);
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  461  
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  462  	/* Delay if requested before any change in chip select */
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  463  	if (last_transfer->delay_usecs)
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  464  		/*
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  465  		 * FIXME: This runs in interrupt context.
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  466  		 * Is this really smart?
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  467  		 */
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  468  		udelay(last_transfer->delay_usecs);
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  469  
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  470  	if (!last_transfer->cs_change) {
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  471  		struct spi_message *next_msg;
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  472  
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  473  		/*
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  474  		 * cs_change was not set. We can keep the chip select
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  475  		 * enabled if there is message in the queue and it is
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  476  		 * for the same spi device.
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  477  		 *
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  478  		 * We cannot postpone this until pump_messages, because
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  479  		 * after calling msg->complete (below) the driver that
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  480  		 * sent the current message could be unloaded, which
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  481  		 * could invalidate the cs_control() callback...
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  482  		 */
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  483  		/* get a pointer to the next message, if any */
ffbbdd21329f3e drivers/spi/spi-pl022.c  Linus Walleij            2012-02-22  484  		next_msg = spi_get_next_queued_message(pl022->master);
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  485  
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  486  		/*
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  487  		 * see if the next and current messages point
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  488  		 * to the same spi device.
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  489  		 */
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  490  		if (next_msg && next_msg->spi != pl022->cur_msg->spi)
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  491  			next_msg = NULL;
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  492  		if (!next_msg || pl022->cur_msg->state == STATE_ERROR)
f6f46de1063c88 drivers/spi/spi-pl022.c  Roland Stigge            2012-08-22 @493  			pl022_cs_control(pl022, SSP_CHIP_DESELECT);
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  494  		else
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  495  			pl022->next_msg_cs_active = true;
ffbbdd21329f3e drivers/spi/spi-pl022.c  Linus Walleij            2012-02-22  496  
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  497  	}
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  498  
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  499  	pl022->cur_msg = NULL;
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  500  	pl022->cur_transfer = NULL;
8b8d719161c386 drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2011-11-10  501  	pl022->cur_chip = NULL;
fd316941cfee1f drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2012-06-12  502  
fd316941cfee1f drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2012-06-12  503  	/* disable the SPI/SSP operation */
fd316941cfee1f drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2012-06-12  504  	writew((readw(SSP_CR1(pl022->virtbase)) &
fd316941cfee1f drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2012-06-12  505  		(~SSP_CR1_MASK_SSE)), SSP_CR1(pl022->virtbase));
fd316941cfee1f drivers/spi/spi-pl022.c  Virupax Sadashivpetimath 2012-06-12  506  
cd6fa8d2ca53ca drivers/spi/spi-pl022.c  Alexander Sverdlin       2015-02-27  507  	spi_finalize_current_message(pl022->master);
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  508  }
b43d65f7e81848 drivers/spi/amba-pl022.c Linus Walleij            2009-06-09  509  

:::::: The code at line 442 was first introduced by commit
:::::: db4fa45ed3182d8206af241811dfc99369ffa849 spi: pl022: Add support for chip select extension

:::::: TO: Anders Berg <anders.berg@avagotech.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908110127.OT2ld8BV%25lkp%40intel.com.

--zhk2wfhxxqdxpgq4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--zhk2wfhxxqdxpgq4--
