Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVHOQ2BAMGQE2SSC5WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 603E332E0D5
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 05:45:10 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id g7sf739839pll.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 20:45:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614919509; cv=pass;
        d=google.com; s=arc-20160816;
        b=He2kKvGGLDw7VA1K3DhA/38bw7X8KDMhSt3XDnd9/YU1/uOgQmz8x7geMtBxnMgre8
         zZHdYjfTMy0EzPEL/C6gY9VIGvv+dRN2QcCHnYaZROncj1GV92BHtmMfPRTqUL4AxgQ7
         9KqzP5lz0vp00Zw4pVneanVbqRq7I7Rc+TjpBpM1Z9LNweZCElQpSxs7X5yMrZ45/krp
         1aRENWlClqoOgxVXzm8A/TzUpMqLq1IZuuAGxqjds5+1EXByv0lPglbt+HSiyPWQq/6A
         akFhTk1HHbbloCW0rwOCEmvtRx1WkHNtWbxH8uBh2/zKp/o8UGpQnN4pMQw+Bt7LWSn7
         5m1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=17oZgIAlNrgWmMHzTf4HdDlDqjjvw4hW9GbJvVLT7Js=;
        b=xhciAhC2NOuqKjKEp/phei3u5pTfV/6/KcOLIT3pMw2dE/PMDVz1CcLFsUG1KvovJO
         VxGwSN71FeHLY/MDo79/T+I3FupGx3pEv4fGaaZ1Dn95kct5P75QFtoJKTIxBdDmfZPD
         jQWNZhZ2yxOLtlx/uFahut/+kcxAttoo8zI+h4JR1cjT51cJ+7M/OxnHQcrkn9+i6ldx
         Da5B6GbA8PI8UtMrmKh1JppZJtRW6+AZ4Tf3NO0iLdiMw/k8ufPhmxqTDq/OHVRQq4aQ
         5zCEJ6ZmnpbAxt4CIstatJQTdzE/HIsp7MCu8gpxEG8UAViBvmku1XcdoUUJQYoIk8Il
         7iyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=17oZgIAlNrgWmMHzTf4HdDlDqjjvw4hW9GbJvVLT7Js=;
        b=bBH0Sr1OISymrCzo8x0+DkrdsL7CLX3Y9JvQzf5DTRZBgluv4dwo6PDacRE7f/afv4
         e2rVGMk7ntdGZJVc3fLXdBEfNkLWVLia9uo7tzedImDL0BKqRwwHDdQxlm2IWP600uJn
         OhhdIgyjzyMY0bmWgFP665ui8IrZvBAG/5xsZTjmBaX7QI++cHfvRl9qwOM1UCgrP08N
         B9BS6oM1Q2z4Zp9JTD/TbN79ayD6KvFoGazmbCQkaaquQlFWZCfzOXLmhKCHnhtapwW0
         KU6OJXabmgyJKCLuTaQpn1h/ZFYYttll5UOuCnobOZT51sXYqa5cMfK1pV11KbJjXQMz
         bcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=17oZgIAlNrgWmMHzTf4HdDlDqjjvw4hW9GbJvVLT7Js=;
        b=emBfMn1P4eJCkjwCvyhDkwHWqP5B03ltIgGQ0Q2CQxVQRaepa9Lh9Eh0eTe7AYatCh
         GNHW1iYEc/wiO4K1PeD63+0CLaF1Ypd4tVBoPl2XaVqsJypBWYzNvEaiCeIFj+2rttUF
         igz+hv+iAf5JBJ6iz0fF4WUC8tGReTwKm9U4i6rqz6YfVPhDVn6QzKTlxStyN7LUkS4J
         FAKwfPIiHn3++PYwJYHQf5dFW4gt6QUmJDP+tw8bzSIfkpBHTcJesFo5hANN5KiaTsDU
         luh+o82WpLqdkMuRUeeSh8FYxj/NQRgeJRZM0RrycwwQIN/waAz9vqVz/YZvp4xnVeP+
         aRrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zvLnYQ2UMvQc9yBwp77e4yZVsnmIdKehHPMQYrnAZeoCEW1gc
	BBcsT2AZRq8O0SR2lR74DIQ=
X-Google-Smtp-Source: ABdhPJyA8vXjyHn0RrmGQbpuOikx9a9lNwmvjgEJrMNQENmpnAy7+WfIHGKI4UjP1dbQbu7rahQoTg==
X-Received: by 2002:a17:90a:1990:: with SMTP id 16mr7996359pji.26.1614919509003;
        Thu, 04 Mar 2021 20:45:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da86:: with SMTP id j6ls973171plx.8.gmail; Thu, 04
 Mar 2021 20:45:08 -0800 (PST)
X-Received: by 2002:a17:90a:bf07:: with SMTP id c7mr8837358pjs.15.1614919508277;
        Thu, 04 Mar 2021 20:45:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614919508; cv=none;
        d=google.com; s=arc-20160816;
        b=Jc0nUF2ULZ6+T6YF+AL0U/n5teb5hNfVXX8SZo2wKNqFcGlB4m4F7PH+BT5a5uRNSR
         MVC7s0yrbUuW8D0Ric+td29vWVs/CyPRNMfNtUlSIAdRyCKhwfmkARhJxe33w0HJm4K6
         2M9ClnjwqMQS51Ueh9yNHs/wC5TTRf0MMne6rBLUiPVzAdBMpj2b+Kq3pKnwJG8DNp12
         Mhk3K3p2oRtsppw9XRMgInkn8y8awCyDBUY2R8UXGKlOoIkQJg1yEQxCbgzXG2KLFie0
         qu+z3ojrfyHx6LB2V+UOVwZ1o3mLRfFexShRRCjjQ2+ncIHdjbhyB06nRYG6Zigg4csF
         shpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=R1efzv3BDZCBc0+MMst9kZT3BtxZoJnwfig+nnRk+T0=;
        b=NL86Ial8n6yhe7H3HBPQdXq7ADcVqDpQi6xLmNWKdcC0i5Qs9rl0mLF8W8DrMKxswk
         FEAhvSblQ74DsmR5WGDWFAVYfTpZ7QhR2KSaRaenGtmqD/+5yqJCN3irWBbFTNMV6A7Y
         dkL+nkpQQPf8zkpz7uya35ZoGLtEsFfzWaTRmp3HbszL6JL/bgtskfzP//g9++X+EJ8s
         PFdyKW9jvZw4age4w895Js3zX8MFO3Rq/QFi/Vj8eqI9l5TW7KnlPqYtt2yV3HhxX4Fl
         L9CAbimCP4Kkui+lDIId6KShVAJUhyKzFd/5sY1sqCJD6UVchpeLy5tXeOXZE58ReFAJ
         zYQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id v19si91289plo.2.2021.03.04.20.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 20:45:08 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: AF2Ym3MA533RBeWCCVLuQzR+u8kaCiMdSc03YNSuBmQGmgRK72ip1hwaBUOW7jKyp5y+fUyUb2
 /Oq768gIG7eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="186919824"
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="186919824"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2021 20:45:00 -0800
IronPort-SDR: h/YnJMqx2Vy/B2BwA+p3SCfqlxb4OPfXcv4djY99HHIWa4FPVupXG3XVTBUobIrqagHJEENf4e
 EtLt4gUiupRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="429079105"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 04 Mar 2021 20:44:57 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lI2Kf-0002aL-5N; Fri, 05 Mar 2021 04:44:57 +0000
Date: Fri, 5 Mar 2021 12:44:53 +0800
From: kernel test robot <lkp@intel.com>
To: Tom Zanussi <zanussi@kernel.org>
Cc: kbuild-all@01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>
Subject: kernel/trace/trace_events_hist.c:3495:12: warning: stack frame size
 of 2112 bytes in function 'action_create'
Message-ID: <202103051251.3Cwt3EZX-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   3cb60ee6323968b694208c4cbd56a7176396e931
commit: bd82631d7ccdc894af2738e47abcba2cb6e7dea9 tracing: Add support for dynamic strings to synthetic events
date:   5 months ago
config: powerpc-randconfig-r035-20210305 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4d90e460bcc7b3e5ff6c7e2e05e974772489c4b8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bd82631d7ccdc894af2738e47abcba2cb6e7dea9
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout bd82631d7ccdc894af2738e47abcba2cb6e7dea9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:213:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:215:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:217:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:219:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:221:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   kernel/trace/trace_events_hist.c:4729:12: warning: stack frame size of 2592 bytes in function 'hist_show' [-Wframe-larger-than=]
   static int hist_show(struct seq_file *m, void *v)
              ^
>> kernel/trace/trace_events_hist.c:3495:12: warning: stack frame size of 2112 bytes in function 'action_create' [-Wframe-larger-than=]
   static int action_create(struct hist_trigger_data *hist_data,
              ^
   14 warnings generated.


vim +/action_create +3495 kernel/trace/trace_events_hist.c

c282a386a39771 Tom Zanussi             2018-01-15  3494  
7d18a10c316783 Tom Zanussi             2019-02-13 @3495  static int action_create(struct hist_trigger_data *hist_data,
7d18a10c316783 Tom Zanussi             2019-02-13  3496  			 struct action_data *data)
7d18a10c316783 Tom Zanussi             2019-02-13  3497  {
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3498  	struct trace_event_file *file = hist_data->event_file;
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3499) 	struct trace_array *tr = file->tr;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3500  	struct track_data *track_data;
7d18a10c316783 Tom Zanussi             2019-02-13  3501  	struct field_var *field_var;
7d18a10c316783 Tom Zanussi             2019-02-13  3502  	unsigned int i;
7d18a10c316783 Tom Zanussi             2019-02-13  3503  	char *param;
7d18a10c316783 Tom Zanussi             2019-02-13  3504  	int ret = 0;
7d18a10c316783 Tom Zanussi             2019-02-13  3505  
7d18a10c316783 Tom Zanussi             2019-02-13  3506  	if (data->action == ACTION_TRACE)
7d18a10c316783 Tom Zanussi             2019-02-13  3507  		return trace_action_create(hist_data, data);
7d18a10c316783 Tom Zanussi             2019-02-13  3508  
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3509  	if (data->action == ACTION_SNAPSHOT) {
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3510  		track_data = track_data_alloc(hist_data->key_size, data, hist_data);
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3511  		if (IS_ERR(track_data)) {
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3512  			ret = PTR_ERR(track_data);
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3513  			goto out;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3514  		}
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3515  
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3516  		ret = tracing_snapshot_cond_enable(file->tr, track_data,
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3517  						   cond_snapshot_update);
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3518  		if (ret)
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3519  			track_data_free(track_data);
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3520  
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3521  		goto out;
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3522  	}
a3785b7eca8fd4 Tom Zanussi             2019-02-13  3523  
7d18a10c316783 Tom Zanussi             2019-02-13  3524  	if (data->action == ACTION_SAVE) {
7d18a10c316783 Tom Zanussi             2019-02-13  3525  		if (hist_data->n_save_vars) {
7d18a10c316783 Tom Zanussi             2019-02-13  3526  			ret = -EEXIST;
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3527) 			hist_err(tr, HIST_ERR_TOO_MANY_SAVE_ACTIONS, 0);
7d18a10c316783 Tom Zanussi             2019-02-13  3528  			goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3529  		}
7d18a10c316783 Tom Zanussi             2019-02-13  3530  
7d18a10c316783 Tom Zanussi             2019-02-13  3531  		for (i = 0; i < data->n_params; i++) {
7d18a10c316783 Tom Zanussi             2019-02-13  3532  			param = kstrdup(data->params[i], GFP_KERNEL);
7d18a10c316783 Tom Zanussi             2019-02-13  3533  			if (!param) {
7d18a10c316783 Tom Zanussi             2019-02-13  3534  				ret = -ENOMEM;
7d18a10c316783 Tom Zanussi             2019-02-13  3535  				goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3536  			}
7d18a10c316783 Tom Zanussi             2019-02-13  3537  
7d18a10c316783 Tom Zanussi             2019-02-13  3538  			field_var = create_target_field_var(hist_data, NULL, NULL, param);
7d18a10c316783 Tom Zanussi             2019-02-13  3539  			if (IS_ERR(field_var)) {
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3540) 				hist_err(tr, HIST_ERR_FIELD_VAR_CREATE_FAIL,
d0cd871ba0d613 Steven Rostedt (VMware  2019-04-01  3541) 					 errpos(param));
7d18a10c316783 Tom Zanussi             2019-02-13  3542  				ret = PTR_ERR(field_var);
7d18a10c316783 Tom Zanussi             2019-02-13  3543  				kfree(param);
7d18a10c316783 Tom Zanussi             2019-02-13  3544  				goto out;
7d18a10c316783 Tom Zanussi             2019-02-13  3545  			}
7d18a10c316783 Tom Zanussi             2019-02-13  3546  
7d18a10c316783 Tom Zanussi             2019-02-13  3547  			hist_data->save_vars[hist_data->n_save_vars++] = field_var;
7d18a10c316783 Tom Zanussi             2019-02-13  3548  			if (field_var->val->flags & HIST_FIELD_FL_STRING)
7d18a10c316783 Tom Zanussi             2019-02-13  3549  				hist_data->n_save_var_str++;
7d18a10c316783 Tom Zanussi             2019-02-13  3550  			kfree(param);
7d18a10c316783 Tom Zanussi             2019-02-13  3551  		}
7d18a10c316783 Tom Zanussi             2019-02-13  3552  	}
7d18a10c316783 Tom Zanussi             2019-02-13  3553   out:
7d18a10c316783 Tom Zanussi             2019-02-13  3554  	return ret;
7d18a10c316783 Tom Zanussi             2019-02-13  3555  }
7d18a10c316783 Tom Zanussi             2019-02-13  3556  

:::::: The code at line 3495 was first introduced by commit
:::::: 7d18a10c316783357fb1b2b649cfcf97c70a7bee tracing: Refactor hist trigger action code

:::::: TO: Tom Zanussi <tom.zanussi@linux.intel.com>
:::::: CC: Steven Rostedt (VMware) <rostedt@goodmis.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103051251.3Cwt3EZX-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
CdZh3+F/jftOf4AnAQA=

--envbJBWh7q8WU6mo--
