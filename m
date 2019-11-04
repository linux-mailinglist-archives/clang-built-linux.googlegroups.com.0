Return-Path: <clang-built-linux+bncBAABBDEV77WQKGQETSHTL7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2AEED928
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 07:51:56 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id s15sf11578386edj.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 03 Nov 2019 22:51:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572850316; cv=pass;
        d=google.com; s=arc-20160816;
        b=0XR2+Lns2K5dndi8rCzMoizXXLw4jzpmq4Ou7+ItTrqW9ds9UlZ61yo24Oo0ugU39M
         2abLYQcLTaCG5yYebZT8D6VMfzbJRHPzxSNQ/RwC2fITurWyK89B+7/bU6l/fUvqqxmd
         /J9jEJEJzR7F3Hzssqf0LFl7LoVzk892ypD4Is1kFEhwHZVmgDVEPAY2JCqMsDLw/00H
         0Jdv6jc9exRUOcgrH0GkG91u/CpPCtkk3AMiA+THUsXoKlkRY2BPRyCSIt+a4N4hOtVN
         2SP/b+RWQMUmwrU26TOjGBFLeSKDTxQAGmyQEDXV3wYWVWnbNtOerfUGpUq9YifpAui3
         UbuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=T8eILPyLoQq558uq0RIGNGEK+Wvj8zzwAcm2o8faRCo=;
        b=Fm76x9XuUUiUIheH22P0c4m2JlzGPemNPWdhrFeU3mpPJxmK+7t/S57vNN6/UKzq0/
         WMpSxe6M4sZeZeUvQPc9diAey17TiAo3J8laNo+2vJELaQupb+0B4j855CxrYL/G1Dhc
         INCqI66K4vlH2s5UK1zOHWnBUY28Ts1u3GL5sb5SpqvouCpR0Ht7KaO79bq26JgdCA/Y
         j8PpSH8NBRLUAqe8zjmjivJOFjCJLj7sHDtcXem/WkU06mvwlFoHvOYVOEKHfAhEdxNK
         xBnjHIeaI2Wc3nw+a0tME+TVy5vHme8GhjP9n5O44++wvBJo/IiJx2I/oJKX4XJSFkmg
         zTjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=12112fbd93=matti.vaittinen@fi.rohmeurope.com designates 178.15.145.194 as permitted sender) smtp.mailfrom="prvs=12112fbd93=Matti.Vaittinen@fi.rohmeurope.com"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8eILPyLoQq558uq0RIGNGEK+Wvj8zzwAcm2o8faRCo=;
        b=FFvKzueTDlL7qIsxOlbL7Zl6Y/zqmhEwoJolwOXrnpfCVKPzyfiMC87t/vpewClVw7
         tmLCo+9JmJ2y80qc//dpS5/6LEMblmK9evlwQkMeOPQ3UfIKnnOTNvPcrZC+AzMD++Pc
         grMfjY0xNJsTJl+/3YA7CNPxmmD1iss7XJcHN581zaZIZWHB3VCzrwIfOPfvSephbhrQ
         /wqljLjtswcDm1cP82sHggPgLkR/z79ECCperIvNyaVt0wyIt/VIX8lh8PahJd3lCAQB
         3c0iDL7ZvcafscYEttMAoFD3vv9iw9gurUNWKXZsBvMlD6KGEMTFgglHilZNzuQfcOqo
         Ebsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8eILPyLoQq558uq0RIGNGEK+Wvj8zzwAcm2o8faRCo=;
        b=Eoc0KIctnY0BS9Kn/g4mSRE2oQuhKeQU7+xRFpbgwLaIIO+0O1kMwPtOxM1aea6qW4
         MuZQ4UtHcN2u5RUjkTjFzGmQ8+DrYNkZCFe1OBQB89EiqGkKN+kR17bKePdASwNDcpaO
         70N+KGS+bukglOrSC149KD0nr7dz4pGxnKRFbzzPUTetgHfVJaFBvDmGUynnVtDYse6q
         RKuPMhdykYLDt6ki79B0oZn4K6JRiUlobiJQfy7klXHmt5vflxA1TNBuX8a2jMrKJ1mK
         7+fpTlntjXk9+bRZAX2PLCFG3XiNB3acgQasxG1QfStvCY669gFjJpxiSXbh9OrVUL/g
         72gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBW8j4ft1cDo4zBGtnIDevNhQ3NGGkjSR7lnbYxig93JcK2ipy
	kKHbNJZZG21WHzVYaW3gfi4=
X-Google-Smtp-Source: APXvYqxHlw9otcbZpqroAqiijizIYlTR494fjyIymJUuyTTR/u2rR2pq8rWe+pr6cbyatZbiZvrukA==
X-Received: by 2002:a17:906:7fcb:: with SMTP id r11mr4646918ejs.85.1572850316530;
        Sun, 03 Nov 2019 22:51:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c790:: with SMTP id n16ls3833049eds.5.gmail; Sun, 03 Nov
 2019 22:51:56 -0800 (PST)
X-Received: by 2002:a50:ff19:: with SMTP id a25mr27381837edu.181.1572850316185;
        Sun, 03 Nov 2019 22:51:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572850316; cv=none;
        d=google.com; s=arc-20160816;
        b=xXz9a4uvOfHKHN3PiWXaBLvzDePEGBIgU0hJdzf2SUyvN9rSOUn0RE7qv5saKA8xtI
         tSFkaAGw+RaoxmNJ64OBfevLs6a522w3vDhFjjEiEnYwgoTGxm40T2o7KQEHR1bEJrNF
         v47XKM+gGWycj+Fhh5SiEPKx8v2LtheqIe81un53v9M8eHtYherJqBSjF60OmY6D8i5q
         TRDiR9FUmungRwmmgeH9nz03qoHT/2Uk8sy3rX9yk+Pc/XX/7KI3o4HfIRlAii6dTsMc
         P399Vp/qQRi6SsBxaKhqmmy/5qQVQEfCysj3H0yH5e8+5fzI66/Latr+qGXz6h9Xb9Ud
         nEzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=DxHlUU6QVC5eqv3Lr3wTG+zkxof+X+Csx148NtWIJpw=;
        b=P3Fy0nl3HjUdyXRTvlGUS9359kdfXHIw8GDOlaFWE/EkA9ZFWzEpKCc0xVSJXiJEU3
         lYcKP3TihRJjNKn6k5JNNL1LUHBMcpioQdC1kZ0gmTENIgoOjZ7trjQb6huVuzMrBrdM
         iU5B0fbBcTvhnCb6M5DY0nVWiGPxkMD5OyLI/t32pbqQDySN1AWUpt1JXNv9aMNj+2UE
         XS7LNk2aU8RaF7mae/zVLqtS/XQ6NVBfG+Fzzr5HwRau0mBVFGdofVXQyoWKBWeWc7oH
         8oz29bma+KRwMS/rcpCOuOacBcxCs+tzw6ORvGh/M1DhVO2/0jREpYvPnm27Glxg4cze
         Hbuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=12112fbd93=matti.vaittinen@fi.rohmeurope.com designates 178.15.145.194 as permitted sender) smtp.mailfrom="prvs=12112fbd93=Matti.Vaittinen@fi.rohmeurope.com"
Received: from mailgate1.rohmeurope.com (mailgate1.rohmeurope.com. [178.15.145.194])
        by gmr-mx.google.com with ESMTP id z18si830180edd.5.2019.11.03.22.51.56
        for <clang-built-linux@googlegroups.com>;
        Sun, 03 Nov 2019 22:51:56 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=12112fbd93=matti.vaittinen@fi.rohmeurope.com designates 178.15.145.194 as permitted sender) client-ip=178.15.145.194;
X-AuditID: c0a8fbf4-199ff70000001fa6-4e-5dbfca8b1159
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com [192.168.251.178])
	by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id 5A.CB.08102.B8ACFBD5; Mon,  4 Nov 2019 07:51:55 +0100 (CET)
Received: from WILL-MAIL002.REu.RohmEu.com ([fe80::e0c3:e88c:5f22:d174]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Mon, 4 Nov 2019 07:51:45 +0100
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>, "kbuild@lists.01.org"
	<kbuild@lists.01.org>, "lkp@intel.com" <lkp@intel.com>
Subject: Re: [RFC PATCH v3 14/15] gpio: Add definition for GPIO direction
Thread-Topic: [RFC PATCH v3 14/15] gpio: Add definition for GPIO direction
Thread-Index: AQHVkaa1hdqKw9vEbUql9O/haZZyiad6hJ4A
Date: Mon, 4 Nov 2019 06:51:44 +0000
Message-ID: <f86cd49e9da9fec5643b42141ccdeeb90280c3b7.camel@fi.rohmeurope.com>
References: <201911030009.jfBGqgTX%lkp@intel.com>
	 <20191102175528.GA49760@ubuntu-m2-xlarge-x86>
In-Reply-To: <20191102175528.GA49760@ubuntu-m2-xlarge-x86>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-Type: text/plain; charset="UTF-8"
Content-ID: <F4E08838FCEB594CAF1032A830D060EB@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SW0gUYRjln5mdHS8j46rt75YPuwWSoKZFrCYpvbRqSNBLSYuN7uSI7q7M
	7ob2tGKs6RJoeR0RxMxLUsYq0UVdWzXTRCmUktA0pVQ0L2R2Q5txvb2cOfznO985MB+Byspx
	BZFhMDOcgc5S4Z5Yd9NfR6h90Kk9UdYerJ5arMbVLdYniHoh/wuuXlkyq1eKt5A4ieY5PyHV
	1Dosmo6SAVxzv2Me0dirN7GLkmSvmFTafONSRroh/Ow1L9bWX4Blv4/Kmbttw62gVF0EPAhI
	nYJNs3mIyGXUGIA9zswi4CnwfgCHPtrRIkAQOBUDi8al4ow/FQW/jTqk4gxKjQL40/kZEwU/
	Kh46/w3uDCXA0tpu1M0jYUNXBS5yjDoGW6xOIHKSSoLtpW8xd3AqbGyc2573oKLhZol9ewZQ
	QbDQ+n27HErJoePrhsRdmoL1HSOomwfA+ZnNnXcV7Pw9jYmdUeo4bH0R7rbGwZlbfTtrlLDU
	Pi11V/CFA1WzWDE4xB9I4Pfd/AE3f8DNH3DXAslDAPV0RlY6bWYiwjjGEsYZWb3wSTPqHcD9
	J388A1uueBdACOACgQSiCiDrPnRpZT6pRl0uS5vYFM6SxZhcABKoyp98V9mplZE6Ovcmwxl3
	pcMEppKTwdMlWhklZmUyTDbD7apHCEIFyaoBp1bmyzHpTM71jCzzvowQHuJyT4W/iTHoGI62
	mNkU8TxSTMJ9iJK3kIsI5yYjTdm0Xnh1WwdBPFE8X1OHEouP6gVc2sbxZRF7ax4IaJucELBA
	RBlmMBoYhZw8I/agxEWsxbBXYwHICaDyI4ffCKq3cOx7KQtCAUQocGGmSyxgpvclhRU00j3R
	yefCfdcCC0PWpsZazlda4pXKWF2QPEUnUTy1FTQPXB6MXM4//fpKWdTipVf56y//5BSsmvi0
	4UA2gU2azQQrQfq+o8W8NHazGd5tm3SMuboeL68lxcINutXYmtfwSVtu5RNXq2OH0JhfFfeU
	iTG966Ftd65G+oycXFBhJpaOCEE5E/0fcfSZO6kDAAA=
X-Original-Sender: matti.vaittinen@fi.rohmeurope.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of prvs=12112fbd93=matti.vaittinen@fi.rohmeurope.com
 designates 178.15.145.194 as permitted sender) smtp.mailfrom="prvs=12112fbd93=Matti.Vaittinen@fi.rohmeurope.com"
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

Hello Nathan

On Sat, 2019-11-02 at 10:55 -0700, Nathan Chancellor wrote:
> On Sun, Nov 03, 2019 at 12:44:35AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@lists.01.org
> > In-Reply-To: <
> > f08d265c12ebf185c0e1dbbfe0a3f86de4907194.1572606437.git.matti.vaittinen@fi.rohmeurope.com
> > >
> > References: <
> > f08d265c12ebf185c0e1dbbfe0a3f86de4907194.1572606437.git.matti.vaittinen@fi.rohmeurope.com
> > >
> > TO: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> > 
> > Hi Matti,
> > 
> > [FYI, it's a private test report for your RFC patch.]
> > [auto build test WARNING on ljones-mfd/for-mfd-next]
> > [also build test WARNING on v5.4-rc5 next-20191031]
> > [if your patch is applied to the wrong git tree, please drop us a
> > note to help
> > improve the system. BTW, we also suggest to use '--base' option to
> > specify the
> > base tree in git format-patch, please see 
> > https://stackoverflow.com/a/37406982]
> > 
> > url:    
> > https://github.com/0day-ci/linux/commits/Matti-Vaittinen/Support-ROHM-BD71828-PMIC/20191102-222004
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git
> >  for-mfd-next
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> > cecc0d27ad58c0aed8ef9ed99bbf691e137a0f26)
> > reproduce:
> >         wget 
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > > > drivers//gpio/gpio-tegra.c:35:9: warning: 'GPIO_OUT' macro
> > > > redefined [-Wmacro-redefined]
> >    #define GPIO_OUT(t, x)          (GPIO_REG(t, x) + 0X20)
> >            ^
> >    include/linux/gpio/driver.h:26:9: note: previous definition is
> > here
> >    #define GPIO_OUT        0
> >            ^
> > > > drivers//gpio/gpio-tegra.c:36:9: warning: 'GPIO_IN' macro
> > > > redefined [-Wmacro-redefined]
> >    #define GPIO_IN(t, x)           (GPIO_REG(t, x) + 0x30)
> >            ^
> >    include/linux/gpio/driver.h:25:9: note: previous definition is
> > here
> >    #define GPIO_IN         1
> >            ^
> >    2 warnings generated.
> > 
> > vim +/GPIO_OUT +35 drivers//gpio/gpio-tegra.c
> > 
> > 3c92db9ac0ca3e arch/arm/mach-tegra/gpio.c Erik Gilling    2010-03-
> > 15  29  
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  30  #define GPIO_REG(tgi, x)	(GPIO_BANK(x) * tgi->soc-
> > >bank_stride + \
> > 5c1e2c9dc684f2 drivers/gpio/gpio-tegra.c  Stephen Warren  2012-03-
> > 16  31  					GPIO_PORT(x) * 4)
> > 3c92db9ac0ca3e arch/arm/mach-tegra/gpio.c Erik Gilling    2010-03-
> > 15  32  
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  33  #define GPIO_CNF(t, x)		(GPIO_REG(t, x) + 0x00)
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  34  #define GPIO_OE(t, x)		(GPIO_REG(t, x) + 0x10)
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25 @35  #define GPIO_OUT(t, x)		(GPIO_REG(t, x) + 0X20)
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25 @36  #define GPIO_IN(t, x)		(GPIO_REG(t, x) + 0x30)
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  37  #define GPIO_INT_STA(t, x)	(GPIO_REG(t, x) + 0x40)
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  38  #define GPIO_INT_ENB(t, x)	(GPIO_REG(t, x) + 0x50)
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  39  #define GPIO_INT_LVL(t, x)	(GPIO_REG(t, x) + 0x60)
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  40  #define GPIO_INT_CLR(t, x)	(GPIO_REG(t, x) + 0x70)
> > 3737de42afb8d7 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  41  #define GPIO_DBC_CNT(t, x)	(GPIO_REG(t, x) + 0xF0)
> > 3737de42afb8d7 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  42  
> > b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-
> > 25  43  
> > 
> > :::::: The code at line 35 was first introduced by commit
> > :::::: b546be0db955840e2c14aae5d8e5f93a456f9982 gpio: tegra: Get
> > rid of all file scoped global variables
> > 
> > :::::: TO: Laxman Dewangan <ldewangan@nvidia.com>
> > :::::: CC: Linus Walleij <linus.walleij@linaro.org>
> > 
> > ---
> > 0-DAY kernel test infrastructure                Open Source
> > Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel
> > Corporation
> > 
> 
> Hi Matti,
> 
> The 0day team has been doing clang builds for us and sending them to
> our
> mailing list for triage; this one popped up from one of your patches.
> It
> appears that some drivers define this macro already. Mind taking a
> look
> to see how you could resolve this? I did not CC any mailing lists
> aside
> from our own because your patch cc'd six mailing lists and I am not
> sure
> they would find this interesting.

I'll change the define to something less generic :)

Br,
	Matti Vaittinen

> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f86cd49e9da9fec5643b42141ccdeeb90280c3b7.camel%40fi.rohmeurope.com.
