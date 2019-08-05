Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYH6T7VAKGQEDP23VMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FD48165B
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Aug 2019 12:05:21 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id j8sf7603746ybm.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Aug 2019 03:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564999521; cv=pass;
        d=google.com; s=arc-20160816;
        b=l9hBIOWXO+z02vH5ks9Rn8IqgOIGHXlN3ApDHM6uqtTa7ayvyjKSxFmtGBL2DxyI5O
         bC+CsNMBQy1o+igCNcj8CiDmFQd3GAWS/AZ0IkUvz541MCBOhbJbAZ1VZkziYENqSGIZ
         jfD75g9ugCbWaCrWhOiiPU6CYm+hQ/GOAtFc+HlU436Giu6+fGOczCi5vND63WopwO6/
         fO85+t61S+x5f49YYVawUZbr9wUZ7fUDk2iypSJ8AJIB4ot5kq1troi0OuuitpxOYfB5
         d+golLrjQ/zwVnByIhF0p+Rs0xVonF/9gKwI5yXR6SF+AWn2Nyv3r8emY7LYXGao6ikx
         ek8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=stS99hPnhSK2EQGdRXd6DPp/uKV7bL38jQdNEKAwEkk=;
        b=ZxUQcs0RZ1UAWrttVvBGEXGysJ6PkirzfaRwVQ8amJaur2pZiaT9B1/wDz21aITY0F
         fwJt4KELJD1OWxPPmt7GwmhunMbbXpv3gjjQB9v7EoiEQGXRX/I4ORpZ336iRy4o2m1+
         rY2yjgz44yy5qI7i9iAk9njqheTr+ryyjycu3ddwigmrGBLkosBQQVzGYmEtqzFAI6Ge
         Gcc8JVkluvlR9jL3c7zk6+fjHq0PX03W/QmHnIVg5IY0fuDkgJwoeBzA31B03yZZ+th4
         3+26+M6fRHYIcn2mFWEa0QmmpOq1k5CW+3kqqKtT0gHwa54i7hTbHNDHbNRfDZQ0b78U
         Vttw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=stS99hPnhSK2EQGdRXd6DPp/uKV7bL38jQdNEKAwEkk=;
        b=B+atgMhsB3I8WcPCH6KkceyqvxuvEKBw/Chyz1l5WGBdZrdrdhIWUAbPlz53gyvPF0
         uNYLqQy2OAFRG/PYNGVuPlsifMPDuHyL/68ujS1CoMP1uwGvALpFbU6ZEnJEn8S+CzuE
         Jen4bDmG89AkS9Bs05pCAq9QTo4J78bYhAGSl7tATX+ec6hA9FlxK8u5JZFLkpflSsqr
         lzGSkUyGl5G2C8jI0MpQFD3YEW9q9Iv7iD7kPEIgrmjwod7SysLuamwRIvWFpa2rOD0y
         j7OecYPjqidTnWaFbVlncIb7kOOmEJE1Q8ARpgNQ9Qh52t8iC2Mkb64S+XVzQgVzIzOB
         RlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=stS99hPnhSK2EQGdRXd6DPp/uKV7bL38jQdNEKAwEkk=;
        b=bQtDh/UPd3XryNANLNSEOmaca5g+gdKTNup9vSddfayO33LXSZfnVnav+0fYwbIkiT
         SWrxS5bx07Sm1XVD/5mr/A0WWwrxNBR5QwlUd6e6MwjxCHzgVnR0XhHPPM1WTnpQgK0X
         +VjLPfXDWS4drAY/EOvlKL3vFjb0jJ1Yx4OpPoZYlTrBoayr6TOyc0ZFx5hhLrinp5xL
         V373ijSeAMVP3jwU8sEVrRQUN1p5TWjuvV8lUZrJLP07a6XSo0OiRYR9fhAhUs2m5r9p
         iri13oJmtwTjCg6K/sxws2Afzr8F9bEU/LHsuqQ8CvkTTpMtG72GiA1mLhyqldpk7vcT
         hTVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1dofUNhUtJNBduQF75uGi5Zn8yFVV2fzInR2k7EoGYBEKXoMG
	FKO26b9aV6lphEPvEO0QXfE=
X-Google-Smtp-Source: APXvYqymjOSUvH3iW3sRHdPZXpTIDZn0gTlRRDscmLO+wRlojjgU5DVr4vILIKXhweJedHgxdXmXhA==
X-Received: by 2002:a25:d80f:: with SMTP id p15mr84759225ybg.145.1564999520627;
        Mon, 05 Aug 2019 03:05:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a087:: with SMTP id x129ls153632ywg.14.gmail; Mon, 05
 Aug 2019 03:05:20 -0700 (PDT)
X-Received: by 2002:a81:3cc2:: with SMTP id j185mr95970471ywa.28.1564999520274;
        Mon, 05 Aug 2019 03:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564999520; cv=none;
        d=google.com; s=arc-20160816;
        b=ft3njv6P3jVDswmk4jPdCoAoCtj8SdTp17pipKlOJOEjNExvR9olFNH68G3DAIguHg
         +KGM3sOnOlBMzC0i4wg+bR6ZKnGnicbT3JzSt+DCh0k7TNXVO+k3ehwXCs0wWS+UQdPB
         cfpl3KXOyhrx+1yZoViDSnQ/O8G4su/5EvXKsFtKxEiUuD7CcgLvnKGcISvcQE+6XVIF
         CHTNfpFEkl7S6ZgxK5HzGFYuk6LGd6+kOgYdiO9Yc1k2wSTHieoJEkZE9EtSJn6mP/BL
         o46GU6FTX1zbbmjPqMOzfh3jmMzxr507UBzeXY7lOR7n2vts4P5EDjSP7czK0sU1ali4
         1UpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=vM6magDiZNd0Kln7/R1EhOycCWd6T8CNQCnXgHUxgxg=;
        b=bINFQZ4KY8zK3blj2OAzAJYhwbr0uIZbZWz77Avvov33r+ZNC4CGROsBtXlGWkirE+
         dqVnr1Kh6/SsDoW34PehK9cAldDqUOXGZyIiuw6S1iMdo1IG/pvzZMqWJGdu2pvbehUi
         Td03Fk1EZ6i5wRI82e3geFqkNyR8F+pvGbAIyr4mzdFdTVbhZ4MTVjtnyVM5tMamFZgQ
         DEtb+XjfG6JMib7/kvBaOOpUtu4igbEzI4hyGziT/uq4TLpTf5ftF2qZgsM+/XOeUA3N
         B9X3p7wc9ufrMbyTnY3U7Smt1O8AN38LBmYQ5Fk7MUpNdeskhRu1G9xBbnFmdD6Oecsa
         ebTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id x65si309099ybg.3.2019.08.05.03.05.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2019 03:05:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Aug 2019 03:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; 
   d="gz'50?scan'50,208,50";a="164609228"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 05 Aug 2019 03:05:15 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1huZrf-000A8S-Bk; Mon, 05 Aug 2019 18:05:15 +0800
Date: Mon, 5 Aug 2019 18:04:33 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [gpio:devel-gpio-driver-isolation 13/14]
 drivers//media/dvb-frontends/cxd2820r_priv.h:46:19: error: field has
 incomplete type 'struct gpio_chip'
Message-ID: <201908051808.aT1SXLAi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="w4bshb6vlgevnyhg"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--w4bshb6vlgevnyhg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: linux-gpio@vger.kernel.org
TO: Linus Walleij <linus.walleij@linaro.org>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/linusw/linux-gpio.git devel-gpio-driver-isolation
head:   e1db9bf671ed01b4f9fc33bbaa57d0c493c0389f
commit: 79f925bb1584cc0ad4af9a37cd2e6bb5ed51ab5a [13/14] gpio: Drop driver header from legacy header include
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 79f925bb1584cc0ad4af9a37cd2e6bb5ed51ab5a
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from drivers//media/dvb-frontends/cxd2820r_c.c:9:
   In file included from drivers//media/dvb-frontends/cxd2820r_priv.h:16:
   In file included from include/linux/gpio.h:62:
   include/asm-generic/gpio.h:60:9: error: implicit declaration of function 'gpiod_to_chip' [-Werror,-Wimplicit-function-declaration]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^
   include/asm-generic/gpio.h:60:9: note: did you mean 'gpio_to_chip'?
   include/asm-generic/gpio.h:58:33: note: 'gpio_to_chip' declared here
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                                   ^
   include/asm-generic/gpio.h:60:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct gpio_chip *' [-Wint-conversion]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers//media/dvb-frontends/cxd2820r_c.c:9:
>> drivers//media/dvb-frontends/cxd2820r_priv.h:46:19: error: field has incomplete type 'struct gpio_chip'
           struct gpio_chip gpio_chip;
                            ^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
   1 warning and 2 errors generated.
--
   In file included from drivers//media/dvb-frontends/cxd2820r_core.c:9:
   In file included from drivers//media/dvb-frontends/cxd2820r_priv.h:16:
   In file included from include/linux/gpio.h:62:
   include/asm-generic/gpio.h:60:9: error: implicit declaration of function 'gpiod_to_chip' [-Werror,-Wimplicit-function-declaration]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^
   include/asm-generic/gpio.h:60:9: note: did you mean 'gpio_to_chip'?
   include/asm-generic/gpio.h:58:33: note: 'gpio_to_chip' declared here
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                                   ^
   include/asm-generic/gpio.h:60:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct gpio_chip *' [-Wint-conversion]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers//media/dvb-frontends/cxd2820r_core.c:9:
>> drivers//media/dvb-frontends/cxd2820r_priv.h:46:19: error: field has incomplete type 'struct gpio_chip'
           struct gpio_chip gpio_chip;
                            ^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
>> drivers//media/dvb-frontends/cxd2820r_core.c:424:31: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct cxd2820r_priv *priv = gpiochip_get_data(chip);
                                        ^
>> drivers//media/dvb-frontends/cxd2820r_core.c:424:24: warning: incompatible integer to pointer conversion initializing 'struct cxd2820r_priv *' with an expression of type 'int' [-Wint-conversion]
           struct cxd2820r_priv *priv = gpiochip_get_data(chip);
                                 ^      ~~~~~~~~~~~~~~~~~~~~~~~
   drivers//media/dvb-frontends/cxd2820r_core.c:438:31: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct cxd2820r_priv *priv = gpiochip_get_data(chip);
                                        ^
   drivers//media/dvb-frontends/cxd2820r_core.c:438:24: warning: incompatible integer to pointer conversion initializing 'struct cxd2820r_priv *' with an expression of type 'int' [-Wint-conversion]
           struct cxd2820r_priv *priv = gpiochip_get_data(chip);
                                 ^      ~~~~~~~~~~~~~~~~~~~~~~~
   drivers//media/dvb-frontends/cxd2820r_core.c:454:31: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct cxd2820r_priv *priv = gpiochip_get_data(chip);
                                        ^
   drivers//media/dvb-frontends/cxd2820r_core.c:454:24: warning: incompatible integer to pointer conversion initializing 'struct cxd2820r_priv *' with an expression of type 'int' [-Wint-conversion]
           struct cxd2820r_priv *priv = gpiochip_get_data(chip);
                                 ^      ~~~~~~~~~~~~~~~~~~~~~~~
>> drivers//media/dvb-frontends/cxd2820r_core.c:661:9: error: implicit declaration of function 'gpiochip_add_data' [-Werror,-Wimplicit-function-declaration]
                   ret = gpiochip_add_data(&priv->gpio_chip, priv);
                         ^
>> drivers//media/dvb-frontends/cxd2820r_core.c:717:3: error: implicit declaration of function 'gpiochip_remove' [-Werror,-Wimplicit-function-declaration]
                   gpiochip_remove(&priv->gpio_chip);
                   ^
   drivers//media/dvb-frontends/cxd2820r_core.c:717:3: note: did you mean 'proc_remove'?
   include/linux/proc_fs.h:54:13: note: 'proc_remove' declared here
   extern void proc_remove(struct proc_dir_entry *);
               ^
   4 warnings and 7 errors generated.
--
   In file included from drivers//mfd/sm501.c:37:
   In file included from include/linux/gpio.h:62:
   include/asm-generic/gpio.h:60:9: error: implicit declaration of function 'gpiod_to_chip' [-Werror,-Wimplicit-function-declaration]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^
   include/asm-generic/gpio.h:60:9: note: did you mean 'gpio_to_chip'?
   include/asm-generic/gpio.h:58:33: note: 'gpio_to_chip' declared here
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                                   ^
   include/asm-generic/gpio.h:60:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct gpio_chip *' [-Wint-conversion]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers//mfd/sm501.c:40:19: error: field has incomplete type 'struct gpio_chip'
           struct gpio_chip        gpio;
                                   ^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
>> drivers//mfd/sm501.c:889:35: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sm501_gpio_chip *smgpio = gpiochip_get_data(chip);
                                            ^
>> drivers//mfd/sm501.c:889:26: warning: incompatible integer to pointer conversion initializing 'struct sm501_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct sm501_gpio_chip *smgpio = gpiochip_get_data(chip);
                                   ^        ~~~~~~~~~~~~~~~~~~~~~~~
   drivers//mfd/sm501.c:920:35: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sm501_gpio_chip *smchip = gpiochip_get_data(chip);
                                            ^
   drivers//mfd/sm501.c:920:26: warning: incompatible integer to pointer conversion initializing 'struct sm501_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct sm501_gpio_chip *smchip = gpiochip_get_data(chip);
                                   ^        ~~~~~~~~~~~~~~~~~~~~~~~
   drivers//mfd/sm501.c:945:35: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sm501_gpio_chip *smchip = gpiochip_get_data(chip);
                                            ^
   drivers//mfd/sm501.c:945:26: warning: incompatible integer to pointer conversion initializing 'struct sm501_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct sm501_gpio_chip *smchip = gpiochip_get_data(chip);
                                   ^        ~~~~~~~~~~~~~~~~~~~~~~~
   drivers//mfd/sm501.c:971:35: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sm501_gpio_chip *smchip = gpiochip_get_data(chip);
                                            ^
   drivers//mfd/sm501.c:971:26: warning: incompatible integer to pointer conversion initializing 'struct sm501_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct sm501_gpio_chip *smchip = gpiochip_get_data(chip);
                                   ^        ~~~~~~~~~~~~~~~~~~~~~~~
>> drivers//mfd/sm501.c:1003:31: error: variable has incomplete type 'const struct gpio_chip'
   static const struct gpio_chip gpio_chip_template = {
                                 ^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
>> drivers//mfd/sm501.c:1026:8: error: incomplete definition of type 'struct gpio_chip'
                   gchip->label  = "SM501-HIGH";
                   ~~~~~^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
   drivers//mfd/sm501.c:1030:8: error: incomplete definition of type 'struct gpio_chip'
                   gchip->label  = "SM501-LOW";
                   ~~~~~^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
   drivers//mfd/sm501.c:1033:7: error: incomplete definition of type 'struct gpio_chip'
           gchip->base   = base;
           ~~~~~^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
>> drivers//mfd/sm501.c:1036:9: error: implicit declaration of function 'gpiochip_add_data' [-Werror,-Wimplicit-function-declaration]
           return gpiochip_add_data(gchip, chip);
                  ^
>> drivers//mfd/sm501.c:1082:2: error: implicit declaration of function 'gpiochip_remove' [-Werror,-Wimplicit-function-declaration]
           gpiochip_remove(&gpio->low.gpio);
           ^
   drivers//mfd/sm501.c:1101:2: error: implicit declaration of function 'gpiochip_remove' [-Werror,-Wimplicit-function-declaration]
           gpiochip_remove(&gpio->low.gpio);
           ^
   5 warnings and 13 errors generated.
--
   In file included from drivers//net/ethernet/broadcom/b44.c:31:
   In file included from include/linux/ssb/ssb.h:10:
   In file included from include/linux/gpio.h:62:
   include/asm-generic/gpio.h:60:9: error: implicit declaration of function 'gpiod_to_chip' [-Werror,-Wimplicit-function-declaration]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^
   include/asm-generic/gpio.h:60:9: note: did you mean 'gpio_to_chip'?
   include/asm-generic/gpio.h:58:33: note: 'gpio_to_chip' declared here
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                                   ^
   include/asm-generic/gpio.h:60:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct gpio_chip *' [-Wint-conversion]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers//net/ethernet/broadcom/b44.c:31:
>> include/linux/ssb/ssb.h:496:19: error: field has incomplete type 'struct gpio_chip'
           struct gpio_chip gpio;
                            ^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
   1 warning and 2 errors generated.
--
   In file included from drivers//net/ethernet/broadcom/tg3.c:54:
   In file included from include/linux/ssb/ssb_driver_gige.h:5:
   In file included from include/linux/ssb/ssb.h:10:
   In file included from include/linux/gpio.h:62:
   include/asm-generic/gpio.h:60:9: error: implicit declaration of function 'gpiod_to_chip' [-Werror,-Wimplicit-function-declaration]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^
   include/asm-generic/gpio.h:60:9: note: did you mean 'gpio_to_chip'?
   include/asm-generic/gpio.h:58:33: note: 'gpio_to_chip' declared here
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                                   ^
   include/asm-generic/gpio.h:60:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct gpio_chip *' [-Wint-conversion]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers//net/ethernet/broadcom/tg3.c:54:
   In file included from include/linux/ssb/ssb_driver_gige.h:5:
>> include/linux/ssb/ssb.h:496:19: error: field has incomplete type 'struct gpio_chip'
           struct gpio_chip gpio;
                            ^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
>> drivers//net/ethernet/broadcom/tg3.c:17763:33: warning: shift count >= width of type [-Wshift-count-overflow]
                   persist_dma_mask = dma_mask = DMA_BIT_MASK(64);
                                                 ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:141:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 2 errors generated.
--
   In file included from drivers//ssb/sdio.c:15:
   In file included from drivers//ssb/ssb_private.h:8:
   In file included from include/linux/ssb/ssb.h:10:
   In file included from include/linux/gpio.h:62:
   include/asm-generic/gpio.h:60:9: error: implicit declaration of function 'gpiod_to_chip' [-Werror,-Wimplicit-function-declaration]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^
   include/asm-generic/gpio.h:60:9: note: did you mean 'gpio_to_chip'?
   include/asm-generic/gpio.h:58:33: note: 'gpio_to_chip' declared here
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                                   ^
   include/asm-generic/gpio.h:60:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct gpio_chip *' [-Wint-conversion]
           return gpiod_to_chip(gpio_to_desc(gpio));
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers//ssb/sdio.c:15:
   In file included from drivers//ssb/ssb_private.h:8:
>> include/linux/ssb/ssb.h:496:19: error: field has incomplete type 'struct gpio_chip'
           struct gpio_chip gpio;
                            ^
   include/asm-generic/gpio.h:58:22: note: forward declaration of 'struct gpio_chip'
   static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
                        ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
   In file included from include/linux/netlink.h:9:
   In file included from include/net/scm.h:11:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
   In file included from include/linux/netlink.h:9:
   In file included from include/net/scm.h:11:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                                         ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
   In file included from include/linux/netlink.h:9:
   In file included from include/net/scm.h:11:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:88:4: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
   In file included from include/linux/netlink.h:9:
   In file included from include/net/scm.h:11:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:90:11: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
   In file included from include/linux/netlink.h:9:
   In file included from include/net/scm.h:11:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
   In file included from include/linux/netlink.h:9:
   In file included from include/net/scm.h:11:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
   In file included from include/linux/netlink.h:9:
   In file included from include/net/scm.h:11:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers//ssb/sdio.c:20:
   In file included from include/linux/etherdevice.h:21:
   In file included from include/linux/netdevice.h:46:
   In file included from include/uapi/linux/neighbour.h:6:
..

vim +46 drivers//media/dvb-frontends/cxd2820r_priv.h

fcd09f6592cc1d5 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-08   27  
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07   28  struct cxd2820r_priv {
07fdf7d9f19fb60 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-09   29  	struct i2c_client *client[2];
43e2ea63eb9781b drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-13   30  	struct regmap *regmap[2];
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07   31  	struct i2c_adapter *i2c;
14c038627e275f7 drivers/media/dvb/frontends/cxd2820r_priv.h Manu Abraham          2011-11-24   32  	struct dvb_frontend fe;
07fdf7d9f19fb60 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-09   33  	u8 ts_mode;
07fdf7d9f19fb60 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-09   34  	bool ts_clk_inv;
07fdf7d9f19fb60 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-09   35  	bool if_agc_polarity;
07fdf7d9f19fb60 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-09   36  	bool spec_inv;
07fdf7d9f19fb60 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-09   37  
4aa4fd86bca5769 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-09   38  	u64 post_bit_error_prev_dvbv3;
2832fd3177d7d98 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-08   39  	u64 post_bit_error;
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07   40  
1d44ccb9ea7fc05 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-05-25   41  	bool ber_running;
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07   42  
1e8f31f31726148 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2012-07-19   43  #define GPIO_COUNT 3
1e8f31f31726148 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2012-07-19   44  	u8 gpio[GPIO_COUNT];
1e8f31f31726148 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2012-07-19   45  #ifdef CONFIG_GPIOLIB
1e8f31f31726148 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2012-07-19  @46  	struct gpio_chip gpio_chip;
1e8f31f31726148 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2012-07-19   47  #endif
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07   48  
0df289a209e02f0 drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2015-06-07   49  	enum fe_delivery_system delivery_system;
1d44ccb9ea7fc05 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-05-25   50  	bool last_tune_failed; /* for switch between T and T2 tune */
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07   51  };
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07   52  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   53  /* cxd2820r_core.c */
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   54  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   55  extern int cxd2820r_debug;
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   56  
1e8f31f31726148 drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2012-07-19   57  int cxd2820r_gpio(struct dvb_frontend *fe, u8 *gpio);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   58  
43e2ea63eb9781b drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-13   59  int cxd2820r_wr_reg_val_mask_tab(struct cxd2820r_priv *priv,
43e2ea63eb9781b drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-13   60  				 const struct reg_val_mask *tab, int tab_len);
43e2ea63eb9781b drivers/media/dvb-frontends/cxd2820r_priv.h Antti Palosaari       2016-08-13   61  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   62  int cxd2820r_wr_reg_mask(struct cxd2820r_priv *priv, u32 reg, u8 val,
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   63  	u8 mask);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   64  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   65  int cxd2820r_wr_regs(struct cxd2820r_priv *priv, u32 reginfo, u8 *val,
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   66  	int len);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   67  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   68  int cxd2820r_wr_regs(struct cxd2820r_priv *priv, u32 reginfo, u8 *val,
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   69  	int len);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   70  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   71  int cxd2820r_rd_regs(struct cxd2820r_priv *priv, u32 reginfo, u8 *val,
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   72  	int len);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   73  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   74  int cxd2820r_wr_reg(struct cxd2820r_priv *priv, u32 reg, u8 val);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   75  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   76  int cxd2820r_rd_reg(struct cxd2820r_priv *priv, u32 reg, u8 *val);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   77  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   78  /* cxd2820r_c.c */
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   79  
7e3e68bcfd7713f drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2016-02-04   80  int cxd2820r_get_frontend_c(struct dvb_frontend *fe,
7e3e68bcfd7713f drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2016-02-04   81  			    struct dtv_frontend_properties *p);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   82  
f311f68abba6334 drivers/media/dvb/frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2011-12-30   83  int cxd2820r_set_frontend_c(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   84  
0df289a209e02f0 drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2015-06-07   85  int cxd2820r_read_status_c(struct dvb_frontend *fe, enum fe_status *status);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   86  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   87  int cxd2820r_init_c(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   88  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   89  int cxd2820r_sleep_c(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   90  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   91  int cxd2820r_get_tune_settings_c(struct dvb_frontend *fe,
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   92  	struct dvb_frontend_tune_settings *s);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   93  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   94  /* cxd2820r_t.c */
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   95  
7e3e68bcfd7713f drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2016-02-04   96  int cxd2820r_get_frontend_t(struct dvb_frontend *fe,
7e3e68bcfd7713f drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2016-02-04   97  			    struct dtv_frontend_properties *p);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02   98  
f311f68abba6334 drivers/media/dvb/frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2011-12-30   99  int cxd2820r_set_frontend_t(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  100  
0df289a209e02f0 drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2015-06-07  101  int cxd2820r_read_status_t(struct dvb_frontend *fe, enum fe_status *status);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  102  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  103  int cxd2820r_init_t(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  104  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  105  int cxd2820r_sleep_t(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  106  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  107  int cxd2820r_get_tune_settings_t(struct dvb_frontend *fe,
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  108  	struct dvb_frontend_tune_settings *s);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  109  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  110  /* cxd2820r_t2.c */
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  111  
7e3e68bcfd7713f drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2016-02-04  112  int cxd2820r_get_frontend_t2(struct dvb_frontend *fe,
7e3e68bcfd7713f drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2016-02-04  113  			     struct dtv_frontend_properties *p);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  114  
f311f68abba6334 drivers/media/dvb/frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2011-12-30  115  int cxd2820r_set_frontend_t2(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  116  
0df289a209e02f0 drivers/media/dvb-frontends/cxd2820r_priv.h Mauro Carvalho Chehab 2015-06-07  117  int cxd2820r_read_status_t2(struct dvb_frontend *fe, enum fe_status *status);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  118  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  119  int cxd2820r_init_t2(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  120  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  121  int cxd2820r_sleep_t2(struct dvb_frontend *fe);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  122  
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  123  int cxd2820r_get_tune_settings_t2(struct dvb_frontend *fe,
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  124  	struct dvb_frontend_tune_settings *s);
9ac51c5e53d6b16 drivers/media/dvb/frontends/cxd2820r_priv.h Steve Kerrison        2011-05-02  125  
27cfc85e3dae187 drivers/media/dvb/frontends/cxd2820r_priv.h Antti Palosaari       2011-04-07  126  #endif /* CXD2820R_PRIV_H */

:::::: The code at line 46 was first introduced by commit
:::::: 1e8f31f31726148c27de1ff4692c76c9bcff9860 [media] cxd2820r: use Kernel GPIO for GPIO access

:::::: TO: Antti Palosaari <crope@iki.fi>
:::::: CC: Mauro Carvalho Chehab <mchehab@redhat.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908051808.aT1SXLAi%25lkp%40intel.com.

--w4bshb6vlgevnyhg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--w4bshb6vlgevnyhg--
