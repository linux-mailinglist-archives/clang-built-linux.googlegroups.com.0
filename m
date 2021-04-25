Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRGCSWCAMGQERF7HIAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB8936A734
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Apr 2021 14:32:05 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id x7-20020a05622a0007b029019d73c63053sf20139738qtw.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Apr 2021 05:32:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619353925; cv=pass;
        d=google.com; s=arc-20160816;
        b=nSFRzhnpMhdNcMwxS3J/wAbEFgfA1Gqdf5bKJ92LIPJtn/jsvklJ2CDyusoHSWuS1q
         GUEqrK02jwZy+p5aFXlKuGysexoIugPLZFnalqeYQeM4M4N/Bs/Grpq7NQatnZVnSf/U
         LPtgSDabtzIqwD4KUC4qb66u2WfNryxoQQ8NAPfrwSkqRXTnGbfOgryObIIPaNbgd6r/
         hDpDeZO6cyH7dEkFX/Uc+i6EAicrdTWtpIENpHoS9aKZWKvc/4SlrAJyTZsjcuFQYvFJ
         HafH33d9fx2ALcpF7a02mDV0YtdQhTPPIunsHug0WX686QHbjMaDuRnuaMQlQzo7cout
         /psA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=T8bhcu3iy2V8eOQfAziqzcvG4MUqO0Mo8EAgdDjBn+s=;
        b=E9wOklmoj/0aZ+8k9qzgEk4Z36IFcPu+0gWcsR3FQlPvogbXtY42Zb+o/PuiNnc9dF
         Za5hPyKFjXYyTLNP5dzhN1A4RTr36M3FaTdK1bnNxFdGlLMODlub1N6Qv7bq+er5k1B+
         IRBZktLEXlgvCEnDqtE+DG/2dysu1NQbWAQKx5feIKp9keJ5rU6Y4A6aeKrnKRZ8E4au
         H3oIOMQIm+spBeBEv+G7H0j56vDOo/GXbT5BSxHXKSVlOrRvwpiuBJWpE2p6WcFW1HmD
         MuS7WX6uquHWmEDdBtAPb4KDzq9uqa8Ul+zSoLPTInU0w3MIbJeIqytl3NOM/7wXQ+Tx
         0YLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T8bhcu3iy2V8eOQfAziqzcvG4MUqO0Mo8EAgdDjBn+s=;
        b=nJSGTXfaOqprOVj8mWCGo7/jAgkOhyTYr8dafHVX2We8TD+5moOYw4RF5v/Ov3NoMh
         JEdaAkZqx75GkEJH4wPY/Dk4PoBjacosgBP7zH+UglZcoWyVnC9od1GqrzJ3l1uJHbFp
         Od5MraKULXuIO3jOKF+uSlWKgjduWLZxI3ZlgfvfReSGT2erK8/t4gaeVkWhKurZbj5I
         0+0K6CNLacgCMt+GgyATkM0C4DpfwNLj0uTWLrl5+IIx1AvYpQOxknTp4a8YOifN/jWu
         F1u7n5cJBeDgofInz5F0U5HKPNV+IWh0tjo5eumUV+D/JhTiDTHNBNu7ZgydWxL+KWXb
         NpEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T8bhcu3iy2V8eOQfAziqzcvG4MUqO0Mo8EAgdDjBn+s=;
        b=iCy+j+l6KbYoDhr+ptEOSB9iU7M15EiOZlbRgLVFL6CoItWJopPXd3bND5Zeh5Ivfg
         HrDTjlsVch1ULuT0/Ot9yEZ6W6iYQoBmOgM+T40NCbQvVhxxRL1yhdE9MZu0wj+GxTDS
         DuM4qRTAY3xwu3SllL2sVD6/cAg3HgNJSLVNvmLNf9+ba3Zp8OXAxgbYt7f+OLNf7AT/
         DeWx+eS84ADIFeE5lSFRpethLOj6+9S224r/ieqaSXtvD96DIkosMboS4KuDLstKYZZI
         PAtv3nngmwtDhs5EItCsuCeoVqlp90SXFbSyMGq2cIkorDPtQo5Q8rX/SvIT5z5wa3zE
         7pbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fKGYZOd7t4bG4SR9+BqoZAob9VkYP2DFvQ2ggDk0cATTv6Pm5
	xz/ScJzJHgllcgpL2iK30uw=
X-Google-Smtp-Source: ABdhPJxzy8DxbWRoEQY6ZdG8SJ1Ku4WNM2xqtj2C701eJdVMEt8ZeQTAXiytJovD16Ijn08rE9kDuA==
X-Received: by 2002:a37:c209:: with SMTP id i9mr4431428qkm.363.1619353924922;
        Sun, 25 Apr 2021 05:32:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4a34:: with SMTP id n20ls914278qvz.11.gmail; Sun, 25 Apr
 2021 05:32:04 -0700 (PDT)
X-Received: by 2002:a05:6214:ace:: with SMTP id g14mr13125623qvi.43.1619353924320;
        Sun, 25 Apr 2021 05:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619353924; cv=none;
        d=google.com; s=arc-20160816;
        b=Lpy9ovoh2tUalcVNkoBG/hsD42904lVw7UiUyDfXPBQnffalBxLBAqvtADyyI46zBL
         9rkPtDikzR3oOMy9wLcMcPAEXyFYb1UT+tKOceecqsxWmRGur1cK6bE2Qkyc0cw8sBk3
         3JAIy5gojEAEuHCWIvZ7ijQD5OCyphs0ul9L5x8jzAYZW4Y90eheU+i1ogYEy50LhrWq
         v71lgM5d4XcoD04Gzbds1+wHeYlGGgd000NYv79nn++JFufXVTB7BnLfkXBneYH+ql3S
         tCrWfdyya7eZF6HMKQ9h5nUAxvJQJvz4CjRkVFb/jYSboXOowb9tETmbP2LvbKnWomV+
         0sJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=dMLNFmf2BbeWYQSFAamtVMWotK4AQ1zqQhHMVPw+088=;
        b=aPggTrvz6tzKTS7oIUBs++4i0hSg1SpH/8pphnfDH+QzBSvHf69CsF85N7gJzhFcO6
         8uRBphkHjKTcpglN4W7HmubbKg8aiw51vEh8esDmntSpyBiUjlal35tEua/IPCeXf0H4
         mG1fBx9RUUhDvkjeFdsAbfWe10tbKPtgOZBui/7bllEss9kp7r8u3cKtMNxpnI1hqPoc
         c5N1XOWt9F6EmlHBsWPJ5ZBwtIcsTYWOezPRzKmZxEtvPoCC2QQWny0FNjeSo/5+Wq44
         sGZUdLTI+MXqwnc3JtUvX2lsGJzZ8uClrjKHuZKh3+xFgq3F2rBWm2Av2ipY7RfyotN8
         Oq9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id k1si1672972qtg.2.2021.04.25.05.32.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 05:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: dasesUV035fTK3jIKf7XNbc+FpLVSyOrI/DAgDDsoUE/FTsRhG9kqnCDc1oyi7NPOHAaqMoocw
 oYJyIGu706nQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9964"; a="196290685"
X-IronPort-AV: E=Sophos;i="5.82,250,1613462400"; 
   d="gz'50?scan'50,208,50";a="196290685"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Apr 2021 05:32:02 -0700
IronPort-SDR: mPxRlmVJtSla1Tc2AkaEBurtmHEAA5InBcaQyaevwPPo3HcPYH6vSbihFXSUSuJ1bELuzmffx2
 H1Z8C5XnEUcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,250,1613462400"; 
   d="gz'50?scan'50,208,50";a="446998515"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 25 Apr 2021 05:31:59 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ladvb-0005Xl-39; Sun, 25 Apr 2021 12:31:59 +0000
Date: Sun, 25 Apr 2021 20:31:44 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Frederic Weisbecker <frederic@kernel.org>,
	Valentin Schneider <valentin.schneider@arm.com>
Subject: drivers/rtc/rtc-pcf8523.c:35:9: warning: 'REG_OFFSET' macro redefined
Message-ID: <202104252039.JgseN9vm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Thomas,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   2a1d7946fa53cea2083e5981ff55a8176ab2be6b
commit: 7fd70c65faacd39628ba5f670be6490010c8132f ARM: irqstat: Get rid of duplicated declaration
date:   5 months ago
config: arm-randconfig-r005-20210425 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6fca189532511da1b48e8c0d9aad8ff2edca382d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7fd70c65faacd39628ba5f670be6490010c8132f
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 7fd70c65faacd39628ba5f670be6490010c8132f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/rtc/rtc-pcf8523.c:35:9: warning: 'REG_OFFSET' macro redefined [-Wmacro-redefined]
   #define REG_OFFSET   0x0e
           ^
   arch/arm/mach-ixp4xx/include/mach/platform.h:23:9: note: previous definition is here
   #define REG_OFFSET      0
           ^
   1 warning generated.


vim +/REG_OFFSET +35 drivers/rtc/rtc-pcf8523.c

f803f0d079ded4 Thierry Reding 2012-12-17  34  
bc3bee02527252 Russell King   2017-09-29 @35  #define REG_OFFSET   0x0e
bc3bee02527252 Russell King   2017-09-29  36  #define REG_OFFSET_MODE BIT(7)
bc3bee02527252 Russell King   2017-09-29  37  

:::::: The code at line 35 was first introduced by commit
:::::: bc3bee0252725240ffa62180d387cc245179c549 rtc: pcf8523: add support for trimming the RTC oscillator

:::::: TO: Russell King <rmk+kernel@armlinux.org.uk>
:::::: CC: Alexandre Belloni <alexandre.belloni@free-electrons.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104252039.JgseN9vm-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
4eWexL6wBf1f1Pbz4lyEAQA=

--vkogqOf2sHV7VnPd--
