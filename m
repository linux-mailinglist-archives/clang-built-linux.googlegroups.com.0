Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6H25SEAMGQENWVUDFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id C05C83EE5C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 06:39:21 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id o23-20020a17090a4217b02901774c248202sf1373036pjg.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 21:39:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629175160; cv=pass;
        d=google.com; s=arc-20160816;
        b=QKnx02UTgaCyz4qyBukoknW82dyAalrESycl8OXpeGWmpjmrq0DKQyogguLmebfNxF
         NDRZCE+zP7yvmZ9GHGamaj5uDJjEf6Gq9YpD8yXEz0vwDm29KzkFaF0J5kNwLcrWFRpf
         50QmSesDzrJkV93Z0j3NnLaYBGTio90pX4h4cO/vI1gT/jmI4Z/6e8vxWpgcKm0b9+Ac
         SeBFBj2U31iJ47HQ3ltX6OTNE/u+UDkUBQYwu4mwlaYJ1d5rHcqvkG20/cAJ+kaB29QL
         eBO5/BXgT+fiR07Ta/1MuTSL0qqnUasceKT5ADC0dvFJPKD/mzsh+SIIwcAURkRqmlcv
         wDww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YKPHF5HTrpPDLpSTY/e4oz9PkJqhzvwckzYlKm4uKTs=;
        b=N+SAOdr7dcWmNVR/AfWIN+1E25Oi62Pl2xbjHv4Oze3EiW+dzJgRCXOVYMObxmP9UL
         00g7wn+9pkN66L97xdRPNaKKhEIJW3aRmJlct3Md1sri9/F6Zk5KcWOdw/asYBhx1LVF
         4F/Lky++Ss8FQDq3ZbISMIVHUYYi8WECNRdkdHkVze77GYIN0NhmYhgep3sOWdlUTY2j
         UZu+/e0QHyLskD342l21gxuPRrs/sMyXLlpQcIpKK82o/aJNqertz1nuS4ass3LVnVE/
         6bGZK6Pcy4fEnpLSznhPVH1XDr6vTacdyOql5sE9kaCXMAiqMdsjr58p9JKyndF6w8jt
         lj0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YKPHF5HTrpPDLpSTY/e4oz9PkJqhzvwckzYlKm4uKTs=;
        b=hzxT0HvO40Gs2ds9mRw+brbO6H0m83/135n/ar2M8f3KA5CwJ3dRq68SQqAona9JZO
         HplmfeqoOPvOubHPjPF+RZ9TFy7fnA8RIzE3Xh7xF4g0xcxEtF9LBqgLKPfqLxbegWc+
         Dt7H9yl6KFoGNA/aB84MCvXupUBWQdACnqo669ibbhjt6NlKwUGFAV4apuB1lzwtnz0s
         9FzYqw+HJcrCW5iyzvh0FYCxsZKPhiCPS1YHtKyiQtGnac8fNEC4Q+ORfHyvC+ZCpDCn
         xLdA40Pl8Or1/YAE73TPqbKqe/Kfu8soSPIu3CvYws2Ju2if2MY7sOSCQvK+Gx9ZyGZX
         TfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YKPHF5HTrpPDLpSTY/e4oz9PkJqhzvwckzYlKm4uKTs=;
        b=O35uYR0OxOlsEhbDvVRcMGK+NJWNdlpo77XrhZ/fDGLutOW5nXe0Ca9kD2S4jD7ZYX
         K0a/0bDc7hOcRzCV4U7v1CqlH27aj/nC4KPbD1TXwVEoHYe5SUP8Q/Ez8RPVrz245+pC
         vpm8idv+A9lA2iQd3x4qywx8101Fl5b8qsw777a7mLQeVPN0oRGnVsHoBrkssOGaHx5s
         7egB0PIWPc0LpP7/589ZYFI8RqXr2H9x+2JRBYW0CTknhMfIRV69lSbDPAzZ/lfVEEQT
         OahU2w4hoBLkxtz/YBfw0cP7lFp2Z/z5drC+8k3DpscTvf/jOcxfSlzy4/Cq0mq37+cs
         oX1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JSqfnJSGrax60yNOCEMIiDQHYFQ8jnTmSAaeHQfzhdcKoaOIt
	DXDRwI2X4zKJuwRAQDWHn/4=
X-Google-Smtp-Source: ABdhPJwI9zuErm/ecNqrZZuSP72JsunTb9aWiCFaITnc1VW7XJO6V/iMM/PknCQ1penyMySonzDWLQ==
X-Received: by 2002:a05:6a00:124b:b029:358:fcd2:fa37 with SMTP id u11-20020a056a00124bb0290358fcd2fa37mr1585842pfi.35.1629175160331;
        Mon, 16 Aug 2021 21:39:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a38c:: with SMTP id x12ls535639pla.6.gmail; Mon, 16
 Aug 2021 21:39:19 -0700 (PDT)
X-Received: by 2002:a17:902:6bc7:b0:12d:aa67:695e with SMTP id m7-20020a1709026bc700b0012daa67695emr1333527plt.76.1629175159498;
        Mon, 16 Aug 2021 21:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629175159; cv=none;
        d=google.com; s=arc-20160816;
        b=o/VJNtu0QIF83iWnmo/nqjLGfd/Ls1Bpvn2+DGpF38N0m2Hibg66p9WYZcudDnkRNL
         ibujJ/DKSX+hSrnuXuiBpzJtKoCeQif08UBS6ZA9dP+XANMyhLjPnV6DAlWkC5Tlnbwm
         QqI38ujJcFJ0v+h9UiwkKCQsIwm5AVbJK//kW7p45x2HmF43gQbii+mdFfaPwP5NKwo3
         Q9zfYOeQaWicG/LP5tm5dLuMt8ABCDunkoLuL58JgiI4YyrTTAH15p0XOmrbgmkuVC8k
         r7QGSG8erUiRZXlwSyPv4O71iQqUlpU9qb3QjpApigBXx+HDY2QhH+4EQf6stFOQ5m/2
         pdAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=BqwydX64SB6tdKg2D+wf8mroIfmWsS5tyU6NG/5NfUg=;
        b=AJaxVeBWDDDUCMOlHwBz0R5VtIuvzN5eH60WSkKOh0hZOoEVQhF67gqijYEoLk8aPL
         Hv49HwUWhLKe09VvUpR1jcZ8aHJO/1m1s7qmzFV9INtduW0CMlLcueiM132CWBxteL94
         anDznfKDWEp/J3eEyhWd0sQ6xOmjFqwOOIW+xj0cdCI6KV/WsV1Xa6pL6STmX0sPiUxu
         zlShJVPq5GwntBdiFeUg1WNL+kVTPvNce/7jKBstXeNhv0LKCXKpCTUKHgguPD2C3zuM
         ffhcw3t6keRVz5OFZfkv/uZV8NvPUKM/WoIIt48+1riSr+mY1SngMwP3k7hb3+sjGy2E
         qWFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id o2si71592pjj.1.2021.08.16.21.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 21:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="203192360"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
   d="gz'50?scan'50,208,50";a="203192360"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 21:39:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
   d="gz'50?scan'50,208,50";a="510226524"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2021 21:39:15 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFqsd-000RJo-74; Tue, 17 Aug 2021 04:39:15 +0000
Date: Tue, 17 Aug 2021 12:39:08 +0800
From: kernel test robot <lkp@intel.com>
To: Wesley Cheng <wcheng@codeaurora.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-usb@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb:usb-testing 3/89] drivers/usb/dwc3/gadget.c:687:2: warning:
 Value stored to 'dep' is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108171206.kZrE9r0u-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
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


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
head:   0d45a1373e669880b8beaecc8765f44cb0241e47
commit: 9f607a309fbe95fc1f77acce5af70766a7142537 [3/89] usb: dwc3: Resize TX FIFOs to meet EP bursting requirements
config: x86_64-randconfig-c007-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=9f607a309fbe95fc1f77acce5af70766a7142537
        git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
        git fetch --no-tags usb usb-testing
        git checkout 9f607a309fbe95fc1f77acce5af70766a7142537
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
           ^
   drivers/hid/hid-dr.c:259:7: note: Assuming the condition is false
                   if (field->flags & HID_MAIN_ITEM_RELATIVE)
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hid/hid-dr.c:259:3: note: Taking false branch
                   if (field->flags & HID_MAIN_ITEM_RELATIVE)
                   ^
   drivers/hid/hid-dr.c:262:4: note: Calling 'hid_map_usage'
                           map_abs(usage->hid & 0xf);
                           ^
   drivers/hid/hid-dr.c:245:25: note: expanded from macro 'map_abs'
   #define map_abs(c)      hid_map_usage(hi, usage, bit, max, EV_ABS, (c))
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/hid.h:982:2: note: 'input' initialized here
           struct input_dev *input = hidinput->input;
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/hid.h:986:2: note: Control jumps to 'case 3:'  at line 987
           switch (type) {
           ^
   include/linux/hid.h:990:3: note:  Execution continues on line 1005
                   break;
                   ^
   include/linux/hid.h:1005:15: note: 'c' is <= 'limit'
           if (unlikely(c > limit || !bmap)) {
                        ^
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   include/linux/hid.h:1005:15: note: Left side of '||' is false
           if (unlikely(c > limit || !bmap)) {
                        ^
   include/linux/hid.h:1005:28: note: Assuming 'bmap' is null
           if (unlikely(c > limit || !bmap)) {
                                     ^
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   include/linux/hid.h:1005:2: note: Taking true branch
           if (unlikely(c > limit || !bmap)) {
           ^
   include/linux/hid.h:1006:3: note: Assuming the condition is true
                   pr_warn_ratelimited("%s: Invalid code %d type %d\n",
                   ^
   include/linux/printk.h:557:2: note: expanded from macro 'pr_warn_ratelimited'
           printk_ratelimited(KERN_WARNING pr_fmt(fmt), ##__VA_ARGS__)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/printk.h:540:6: note: expanded from macro 'printk_ratelimited'
           if (__ratelimit(&_rs))                                          \
               ^~~~~~~~~~~~~~~~~
   include/linux/ratelimit_types.h:41:28: note: expanded from macro '__ratelimit'
   #define __ratelimit(state) ___ratelimit(state, __func__)
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/hid.h:1006:3: note: Taking true branch
                   pr_warn_ratelimited("%s: Invalid code %d type %d\n",
                   ^
   include/linux/printk.h:557:2: note: expanded from macro 'pr_warn_ratelimited'
           printk_ratelimited(KERN_WARNING pr_fmt(fmt), ##__VA_ARGS__)
           ^
   include/linux/printk.h:540:2: note: expanded from macro 'printk_ratelimited'
           if (__ratelimit(&_rs))                                          \
           ^
   include/linux/hid.h:1007:9: note: Access to field 'name' results in a dereference of a null pointer (loaded from variable 'input')
                                       input->name, c, type);
                                       ^
   include/linux/printk.h:557:49: note: expanded from macro 'pr_warn_ratelimited'
           printk_ratelimited(KERN_WARNING pr_fmt(fmt), ##__VA_ARGS__)
                                                          ^~~~~~~~~~~
   include/linux/printk.h:541:17: note: expanded from macro 'printk_ratelimited'
                   printk(fmt, ##__VA_ARGS__);                             \
                                 ^~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   11 warnings generated.
   Suppressed 11 warnings (11 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   7 warnings generated.
>> drivers/usb/dwc3/gadget.c:687:2: warning: Value stored to 'dep' is never read [clang-analyzer-deadcode.DeadStores]
           dep = dwc->eps[1];
           ^     ~~~~~~~~~~~
   drivers/usb/dwc3/gadget.c:687:2: note: Value stored to 'dep' is never read
           dep = dwc->eps[1];
           ^     ~~~~~~~~~~~
   drivers/usb/dwc3/gadget.c:698:3: warning: Value stored to 'dep' is never read [clang-analyzer-deadcode.DeadStores]
                   dep = dwc->eps[num];
                   ^     ~~~~~~~~~~~~~
   drivers/usb/dwc3/gadget.c:698:3: note: Value stored to 'dep' is never read
                   dep = dwc->eps[num];
                   ^     ~~~~~~~~~~~~~
   drivers/usb/dwc3/gadget.c:3110:19: warning: Value stored to 'trb' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct dwc3_trb *trb = &dep->trb_pool[dep->trb_dequeue];
                            ^~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/dwc3/gadget.c:3110:19: note: Value stored to 'trb' during its initialization is never read
           struct dwc3_trb *trb = &dep->trb_pool[dep->trb_dequeue];
                            ^~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 4 warnings (3 in non-user code, 1 with check filters).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   11 warnings generated.
   drivers/regulator/core.c:1109:2: warning: Value stored to 'count' is never read [clang-analyzer-deadcode.DeadStores]
           count += scnprintf(buf + count, len - count, ", %s",
           ^        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/regulator/core.c:1109:2: note: Value stored to 'count' is never read
           count += scnprintf(buf + count, len - count, ", %s",
           ^        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/regulator/core.c:3791:3: warning: Value stored to 'possible_uV' is never read [clang-analyzer-deadcode.DeadStores]
                   possible_uV = desired_min_uV;
                   ^             ~~~~~~~~~~~~~~
   drivers/regulator/core.c:3791:3: note: Value stored to 'possible_uV' is never read
                   possible_uV = desired_min_uV;
                   ^             ~~~~~~~~~~~~~~
   Suppressed 9 warnings (9 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   7 warnings generated.
   Suppressed 7 warnings (7 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   8 warnings generated.
   Suppressed 8 warnings (8 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   8 warnings generated.
   drivers/usb/host/xhci-dbgcap.c:828:4: warning: Value stored to 'ctrl' is never read [clang-analyzer-deadcode.DeadStores]
                           ctrl = readl(&dbc->regs->control);
                           ^
   drivers/usb/host/xhci-dbgcap.c:828:4: note: Value stored to 'ctrl' is never read
   Suppressed 7 warnings (7 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   7 warnings generated.
   Suppressed 7 warnings (7 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   7 warnings generated.
   Suppressed 7 warnings (7 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   5 warnings generated.
   include/uapi/linux/phonet.h:176:9: warning: 1st function call argument is an uninitialized value [clang-analyzer-core.CallAndMessage]
           return pn_object(spn->spn_dev, spn->spn_obj);
                  ^
   net/phonet/pep.c:776:6: note: Assuming 'skb' is non-null
           if (!skb)
               ^~~~
   net/phonet/pep.c:776:2: note: Taking false branch
           if (!skb)
           ^
   net/phonet/pep.c:780:6: note: Assuming field 'skc_state' is equal to TCP_LISTEN
           if (sk->sk_state != TCP_LISTEN) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~
   net/phonet/pep.c:780:2: note: Taking false branch

vim +/dep +687 drivers/usb/dwc3/gadget.c

   668	
   669	/**
   670	 * dwc3_gadget_clear_tx_fifo_size - Clears txfifo allocation
   671	 * @dwc: pointer to the DWC3 context
   672	 *
   673	 * Iterates through all the endpoint registers and clears the previous txfifo
   674	 * allocations.
   675	 */
   676	void dwc3_gadget_clear_tx_fifos(struct dwc3 *dwc)
   677	{
   678		struct dwc3_ep *dep;
   679		int fifo_depth;
   680		int size;
   681		int num;
   682	
   683		if (!dwc->do_fifo_resize)
   684			return;
   685	
   686		/* Read ep0IN related TXFIFO size */
 > 687		dep = dwc->eps[1];
   688		size = dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(0));
   689		if (DWC3_IP_IS(DWC3))
   690			fifo_depth = DWC3_GTXFIFOSIZ_TXFDEP(size);
   691		else
   692			fifo_depth = DWC31_GTXFIFOSIZ_TXFDEP(size);
   693	
   694		dwc->last_fifo_depth = fifo_depth;
   695		/* Clear existing TXFIFO for all IN eps except ep0 */
   696		for (num = 3; num < min_t(int, dwc->num_eps, DWC3_ENDPOINTS_NUM);
   697		     num += 2) {
   698			dep = dwc->eps[num];
   699			/* Don't change TXFRAMNUM on usb31 version */
   700			size = DWC3_IP_IS(DWC3) ? 0 :
   701				dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(num >> 1)) &
   702					   DWC31_GTXFIFOSIZ_TXFRAMNUM;
   703	
   704			dwc3_writel(dwc->regs, DWC3_GTXFIFOSIZ(num >> 1), size);
   705		}
   706		dwc->num_ep_resized = 0;
   707	}
   708	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108171206.kZrE9r0u-lkp%40intel.com.

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
KQIA

--sm4nu43k4a2Rpi4c--
