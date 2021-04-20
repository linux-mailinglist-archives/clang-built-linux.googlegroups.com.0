Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5UV7GBQMGQEUAC3WVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0893650E3
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 05:31:04 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id h4-20020a4abb840000b02901e59b65fba8sf6793693oop.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 20:31:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618889463; cv=pass;
        d=google.com; s=arc-20160816;
        b=cy4Swg390nJXHp8PbCp8M2rM3UIDXGNmkeh4Ii2ljBo2gj29cjzyNe1Vw+3Z5rBTdW
         ULc4sypGrE6ME+/zq2yZWpLsbbaa4/J+FcFfBu47nE/JHpEjenm/BqqENsJ+fAnfVIqg
         gmXl0aqiwdgoUv4eskuXxXbYqaZoH+yRaXd514htEYR033Pfzs2Xj5tkHAcPy1G6jnea
         K/YAQg7bZEYQBmhmJcDoxwjiWXCWkqh9/VaFab6QKH//JMLP7SYeetAYiYMm15/JGiKv
         AqWMNi8kwMbRyT069UqSmM01AadiwV91zVGVWaQtbkkBcUldsw8kVwfhm3+tgDdicXPa
         e/KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=kFm+Z4YuJgmiE0rWAVtkpSFd327ixx+MM4eNyJ1aSDk=;
        b=uZPxMQiSl1SlANqJAn4Yi0KV5FpUj/rKR21d6+aCiV7riEUoHOGRD9fla/bXPplHAe
         2uMzWhQghP+H/2iM2sepxpuehBgULQ+n3eAgSdUeNn1aO6HPIC5XoWje7n62phaMYjLo
         bBVGHGR6nNPnSeHVWPK9CfjgV5yf177mXe1L4QyqRNbrasVVOT4QPDaGMa53EgplteFv
         nf3mWBkcqOmzdyUCnO8ooKFVwUG7GrkyKkihrzPD/aIyCeE3bXEBdUbun1nQOdpEQDSU
         /PGnn1kNG7kkGTYBFnJbSPL8/i2XCi29CVOUEQmW7gb3A5TCDZBw84s5nSuW+mQsnbQM
         c3Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kFm+Z4YuJgmiE0rWAVtkpSFd327ixx+MM4eNyJ1aSDk=;
        b=PfGh16TZ6IQs+yGn0LryQK3x5aqkkHWBx91IBPvQc/RjUTLtAIvWsLt8nb2wjySOmp
         GDHEpZFdS2Wpi6hXBnAUzt8u2uMq3MgGNkOY8jeSdh6KjH1RtJPKRhWXFTHytoLG62Sz
         37pVr236RuCh6YLsukjCjuNy3QrXut6pNNxpStLbFmaHo99I6ylTkE3yZc648/sNUCNJ
         w8qQ0ZKd8PoCsVUfyhLjfZZ+rbsBznF/pzDX9XDIuiquz4f7+mT5DB0V3Xcmkev1XcFS
         MKG9wmm8Xw//RqrImJG94QJ5faXqWrVqqZq+IZkFP1PqUWlp2aNO2MryUcIvifNqTD0g
         p//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kFm+Z4YuJgmiE0rWAVtkpSFd327ixx+MM4eNyJ1aSDk=;
        b=FjFZJJtauoK66lHpoJJ61wyJp3eqaLtOP1+YFrXdXW/Tvq0fo4KWx9hoNqjRBTgjGs
         CA91JgTZAZazbLfHe7mwxKEKmr4SK1tYG4ddezYmBcfjYXWVl+yJY70XrhjIHCIjpKvI
         kVBY4hYWgRmeB5L+SKB0agRpAnHBvOqi7uSCVBnaOLppqJtPxxj0nRY0rGoRixmfLcNt
         a5hUJ90I6e+g8UwuIzaWHft5ksqujyK+ve1S5gDDfY0D5h7WlBHXxhYhjV2jM4E89uEO
         tyA7RyTWPJb2do5dudsuZSDHKNuTV99I7XXqasUQhK7OUsU3KTeGFx1ikPxr/hx0jKeZ
         Vvyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531l81uELEsQ6HtFXrRcOzFxeU/wtUQO/e05idYeru7J50+CgIED
	UkOcBdynp6yzbLkE7RpH3o0=
X-Google-Smtp-Source: ABdhPJxwZOuciX6LNBMr70pwyhMs36K3XfDiQe+7tZ6JqtlEcJx/18x34cpMx7qqv5oCb8e2YWQ7HQ==
X-Received: by 2002:aca:4b44:: with SMTP id y65mr1651252oia.53.1618889462774;
        Mon, 19 Apr 2021 20:31:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6154:: with SMTP id c20ls518011otk.1.gmail; Mon, 19 Apr
 2021 20:31:02 -0700 (PDT)
X-Received: by 2002:a9d:172e:: with SMTP id i46mr17289018ota.154.1618889462086;
        Mon, 19 Apr 2021 20:31:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618889462; cv=none;
        d=google.com; s=arc-20160816;
        b=YvOMBsY+/o5Iz5Hi/dHDJDbxT3W6JFxD3w1xW0ZHxPhrRIbzASMXFLdwFTk/Xbzf/S
         Fro7XyDfBuvduXyCBOHvDMwSz6jTnXEuXoKaEdCiSgc2Mc14gySxfiys3tsa1bkFTbEy
         sH5haFMPeELJ3OfxtQWROkUmEvtR5KvwxwmamXsKNUHGqM5F3KGguP33PqxD7KzMrzfU
         kmPNz0vDgrRHRLdKaImgRw1hz2+2d3nBEWOO8dImuILsZIdlBV7nR6NuiE9IseUd27t3
         6GdRz3CblVF9TcmQMo3jP7isfZbMDgZIUcdAb4iIB9yd7/9XAxQZaNGUhMeb2wdRvhMW
         aiIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=P8EPmoP/NPJT5MKjKqys9OEiMp8ZfDCkziQXB/d72lc=;
        b=CJxFYka96Fk1DEVx9lgf6lBl8qAHqRPd/coJNf5GhS3lnsmBZPRM7jrnAJZo5Mv8p1
         VE5ffKnG5QCDfh6y+BwlQ5oDNWxr1r0KhSCpBzTzjkgsqK35VvfxIeRH1/lSbGjBHzDg
         USsWdUcjjiQaOfBL61ZMPyFOTXDJ9Ih5w9gCq0dDNhZSKfOCh74B2aSTBIrkO7ZJRszZ
         27XaE5h6TE/MCRdUgMolb1RCLKvfLvAnwmoaZFrWy2YDFcQCpkZeIhco8jIN0HMJkyi1
         t2aiYQreAX22FSMwhRqVKak2Qf9Vgc2wwSetQ9WcIwzDX7kpf0lRFSR0aK8otSWfUU9/
         VYAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id a7si1051873oiw.3.2021.04.19.20.31.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 20:31:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: tCLuUPQAZbvBwuZaziK3NW5UIMYzhHKssIAxHksRVE1Af0DA86cUMIEUfI4y+wTdUkPeH+OQB3
 phg8+lzvRGPg==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="192248994"
X-IronPort-AV: E=Sophos;i="5.82,235,1613462400"; 
   d="gz'50?scan'50,208,50";a="192248994"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2021 20:31:00 -0700
IronPort-SDR: Z6NHeM/v1JCqG65PIkn0rJSYtitWoiQx7CoEjcKR1YiZQKAgw5/e6a9zAagZk5HFDiONHpy/Rh
 bLleHkoDNhRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,235,1613462400"; 
   d="gz'50?scan'50,208,50";a="445375795"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 19 Apr 2021 20:30:55 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lYh6E-00025W-Fq; Tue, 20 Apr 2021 03:30:54 +0000
Date: Tue, 20 Apr 2021 11:30:25 +0800
From: kernel test robot <lkp@intel.com>
To: Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Michal Simek <monstr@monstr.eu>
Subject: [xlnx:master 20/33] drivers/usb/dwc3/core.h:1421:6: warning: no
 previous prototype for function 'dwc3_mask_phy_reset'
Message-ID: <202104201115.Rh19els6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx master
head:   5fd22595ae63ccd63022971d869da5cb90447a29
commit: 31d7800cc8d815f78d1bfa30655799f5733a4f59 [20/33] usb: dwc3: Add support for masking phy reset signal
config: x86_64-randconfig-r025-20210419 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2b50f5a4343f8fb06acaa5c36355bcf58092c9cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/Xilinx/linux-xlnx/commit/31d7800cc8d815f78d1bfa30655799f5733a4f59
        git remote add xlnx https://github.com/Xilinx/linux-xlnx
        git fetch --no-tags xlnx master
        git checkout 31d7800cc8d815f78d1bfa30655799f5733a4f59
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/usb/dwc3/core.c:11:
   In file included from include/linux/clk.h:17:
   In file included from include/linux/notifier.h:15:
   In file included from include/linux/rwsem.h:16:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   arch/x86/include/asm/cpufeature.h:164:2: error: implicit declaration of function 'asm_volatile_goto' [-Werror,-Wimplicit-function-declaration]
           asm_volatile_goto("1: jmp 6f\n"
           ^
   arch/x86/include/asm/cpufeature.h:195:4: error: expected ')'
                    : : [feature]  "i" (bit),
                    ^
   arch/x86/include/asm/cpufeature.h:164:19: note: to match this '('
           asm_volatile_goto("1: jmp 6f\n"
                            ^
   In file included from drivers/usb/dwc3/core.c:36:
   drivers/usb/dwc3/core.h:1413:6: warning: no previous prototype for function 'dwc3_simple_wakeup_capable' [-Wmissing-prototypes]
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
        ^
   drivers/usb/dwc3/core.h:1413:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
   ^
   static 
   drivers/usb/dwc3/core.h:1415:6: warning: no previous prototype for function 'dwc3_set_simple_data' [-Wmissing-prototypes]
   void dwc3_set_simple_data(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1415:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_set_simple_data(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1417:6: warning: no previous prototype for function 'dwc3_simple_check_quirks' [-Wmissing-prototypes]
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1417:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1419:5: warning: no previous prototype for function 'dwc3_set_usb_core_power' [-Wmissing-prototypes]
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
       ^
   drivers/usb/dwc3/core.h:1419:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
   ^
   static 
>> drivers/usb/dwc3/core.h:1421:6: warning: no previous prototype for function 'dwc3_mask_phy_reset' [-Wmissing-prototypes]
   void dwc3_mask_phy_reset(struct device *dev, bool mask)
        ^
   drivers/usb/dwc3/core.h:1421:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_mask_phy_reset(struct device *dev, bool mask)
   ^
   static 
   5 warnings and 2 errors generated.
--
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/trace.h:17:
   In file included from include/linux/tracepoint.h:18:
   In file included from include/linux/srcu.h:33:
   In file included from include/linux/rcupdate.h:40:
   In file included from include/linux/preempt.h:81:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   arch/x86/include/asm/cpufeature.h:164:2: error: implicit declaration of function 'asm_volatile_goto' [-Werror,-Wimplicit-function-declaration]
           asm_volatile_goto("1: jmp 6f\n"
           ^
   arch/x86/include/asm/cpufeature.h:195:4: error: expected ')'
                    : : [feature]  "i" (bit),
                    ^
   arch/x86/include/asm/cpufeature.h:164:19: note: to match this '('
           asm_volatile_goto("1: jmp 6f\n"
                            ^
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/trace.h:19:
   drivers/usb/dwc3/core.h:1413:6: warning: no previous prototype for function 'dwc3_simple_wakeup_capable' [-Wmissing-prototypes]
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
        ^
   drivers/usb/dwc3/core.h:1413:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
   ^
   static 
   drivers/usb/dwc3/core.h:1415:6: warning: no previous prototype for function 'dwc3_set_simple_data' [-Wmissing-prototypes]
   void dwc3_set_simple_data(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1415:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_set_simple_data(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1417:6: warning: no previous prototype for function 'dwc3_simple_check_quirks' [-Wmissing-prototypes]
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1417:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1419:5: warning: no previous prototype for function 'dwc3_set_usb_core_power' [-Wmissing-prototypes]
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
       ^
   drivers/usb/dwc3/core.h:1419:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
   ^
   static 
>> drivers/usb/dwc3/core.h:1421:6: warning: no previous prototype for function 'dwc3_mask_phy_reset' [-Wmissing-prototypes]
   void dwc3_mask_phy_reset(struct device *dev, bool mask)
        ^
   drivers/usb/dwc3/core.h:1421:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_mask_phy_reset(struct device *dev, bool mask)
   ^
   static 
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/./trace.h:341:
   In file included from include/trace/define_trace.h:96:
   In file included from include/trace/trace_events.h:20:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:18:
   In file included from include/uapi/linux/bpf_perf_event.h:11:
   In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
   In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:83:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/./trace.h:341:
   In file included from include/trace/define_trace.h:96:
   In file included from include/trace/trace_events.h:20:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:18:
   In file included from include/uapi/linux/bpf_perf_event.h:11:
   In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
   In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:83:25: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                                         ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/./trace.h:341:
   In file included from include/trace/define_trace.h:96:
   In file included from include/trace/trace_events.h:20:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:18:
   In file included from include/uapi/linux/bpf_perf_event.h:11:
   In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
   In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:84:4: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/./trace.h:341:
   In file included from include/trace/define_trace.h:96:
   In file included from include/trace/trace_events.h:20:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:18:
   In file included from include/uapi/linux/bpf_perf_event.h:11:
   In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
   In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:86:11: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/./trace.h:341:
   In file included from include/trace/define_trace.h:96:
   In file included from include/trace/trace_events.h:20:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:18:
   In file included from include/uapi/linux/bpf_perf_event.h:11:
   In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
   In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:99:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/trace.c:11:
   In file included from drivers/usb/dwc3/./trace.h:341:
   In file included from include/trace/define_trace.h:96:
   In file included from include/trace/trace_events.h:20:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:18:
   In file included from include/uapi/linux/bpf_perf_event.h:11:
   In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
   In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
--
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:159:3: note: expanded from macro '_SIG_SET_OP'
                   set->sig[2] = op(set->sig[2]);                          \
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/debugfs.c:13:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:169:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:160:27: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
                                    ^        ~
   include/linux/signal.h:168:24: note: expanded from macro '_sig_not'
   #define _sig_not(x)     (~(x))
                              ^
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/debugfs.c:13:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:169:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:160:10: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/debugfs.c:13:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:180:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = 0;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/debugfs.c:13:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:192:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = -1;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/debugfs.c:13:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:222:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = 0;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/debugfs.c:13:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:234:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = -1;
                   ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/usb/dwc3/debugfs.c:23:
   drivers/usb/dwc3/core.h:1413:6: warning: no previous prototype for function 'dwc3_simple_wakeup_capable' [-Wmissing-prototypes]
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
        ^
   drivers/usb/dwc3/core.h:1413:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
   ^
   static 
   drivers/usb/dwc3/core.h:1415:6: warning: no previous prototype for function 'dwc3_set_simple_data' [-Wmissing-prototypes]
   void dwc3_set_simple_data(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1415:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_set_simple_data(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1417:6: warning: no previous prototype for function 'dwc3_simple_check_quirks' [-Wmissing-prototypes]
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1417:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1419:5: warning: no previous prototype for function 'dwc3_set_usb_core_power' [-Wmissing-prototypes]
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
       ^
   drivers/usb/dwc3/core.h:1419:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
   ^
   static 
>> drivers/usb/dwc3/core.h:1421:6: warning: no previous prototype for function 'dwc3_mask_phy_reset' [-Wmissing-prototypes]
   void dwc3_mask_phy_reset(struct device *dev, bool mask)
        ^
   drivers/usb/dwc3/core.h:1421:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_mask_phy_reset(struct device *dev, bool mask)
   ^
   static 
   54 warnings and 2 errors generated.


vim +/dwc3_mask_phy_reset +1421 drivers/usb/dwc3/core.h

  1402	
  1403	#if IS_ENABLED(CONFIG_USB_DWC3_OF_SIMPLE)
  1404	int dwc3_enable_hw_coherency(struct device *dev);
  1405	void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup);
  1406	void dwc3_set_simple_data(struct dwc3 *dwc);
  1407	void dwc3_simple_check_quirks(struct dwc3 *dwc);
  1408	int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on);
  1409	void dwc3_mask_phy_reset(struct device *dev, bool mask);
  1410	#else
  1411	static inline int dwc3_enable_hw_coherency(struct device *dev)
  1412	{ return 1; }
  1413	void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
  1414	{ ; }
  1415	void dwc3_set_simple_data(struct dwc3 *dwc)
  1416	{ ; }
  1417	void dwc3_simple_check_quirks(struct dwc3 *dwc)
  1418	{ ; }
> 1419	int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
  1420	{ ; }
> 1421	void dwc3_mask_phy_reset(struct device *dev, bool mask)
  1422	{ ; }
  1423	#endif
  1424	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104201115.Rh19els6-lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--sdtB3X0nJg68CQEu--
