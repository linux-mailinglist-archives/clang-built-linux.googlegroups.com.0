Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPMJTD7QKGQEUESVPCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8582E2BD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 16:26:55 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id q12sf2588315plr.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 07:26:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608910014; cv=pass;
        d=google.com; s=arc-20160816;
        b=0QzkW8PfcpL4K8e6LWocdE2BXkEP9byRoIKR6/6HAmtONyz+OrFZLw5IVtOa9LBh4u
         iosCPeMVjs/eHdNKnNuBIKLXuuS/MQOOWggck2LKWAsfkv5jU1kNhQK4RvMAUne0DRmJ
         aDWT4LkjNrXYOYeMVZy6S4OFh10LpFFE3gNteCy99odZ4v7yHrWG7kicXZ6PWnohR0kP
         +15Xq2Qnhke/yBvpbqr+r1HP3wwT5A26TB0ygN0RqfO2PfJeXbJUFgk6tII8YWGQaaUk
         WXC2okcMhY9CxzNmoodoZwvIndvN9oxf37JUeNGZZrMLfRxBBG0PRgvaMb022guUnbZF
         wCzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=JC7MpvTZGhdvJivUFEsmIK8wZcYboG4OXmJxSWXKTHc=;
        b=vX/Risy40wMbZkUhBxyv5NMldPZKJ6ZMKWAwUDKIgIDivmGKwT06wjEVVqOh/9VI93
         84TWO9AjK6CpoGmGPcbfvHgRpTEgHlEWFpf5Md+jCIbUXNKDdgVSRfzp2B3+BAwhqHns
         aYwyAIVD7qc2mERizak5Q4TzAgAP4g2RO0Mf1mX11DW0K1OSnLt2WZSaBnKMFFXgsRcV
         vr3+PPl9nM1YVm54FpfktfkPOt3Cf47jHnIjr2Q61ICAlTFjOpfN2lf5MoQaH4onxj72
         QtHFGbjCKuPbNfxckpQsJzrtcwTg+RSUp68We+2vevu/Vs87AOMqBk5ODm0I6JFvQR9d
         KGyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JC7MpvTZGhdvJivUFEsmIK8wZcYboG4OXmJxSWXKTHc=;
        b=sBd9+qeEwqlI1+nvA9Qe7ZYDPhJOE6V/B3nk3B0zBoUWs3AOHFiXXvTyz71Qup9Za/
         0k3yzN0VUxvjgIUkhVO5ulJNpVM3E2VrfHs7LgaBPrRFmR8dX5P6PXBxcbKDMOL6ggCe
         KjV9VUIWdbnKY+fucGtKx+VwI59BYaqT2Bjoqc3O8aR70nsMV3OTOGCK21eF59vgG541
         6mV2Rw+qXD0aunj6OnuW4fkhXdRzr5g2h3IHV5+HSEjDACi4rZyreUCG9lvinV3u0YQc
         b28BFxBPfZJY6+6Pg5YQbGNSetugmXIOUUF+xySo/A4K/efSKqknW49m3FZkpq63/dM5
         rN4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JC7MpvTZGhdvJivUFEsmIK8wZcYboG4OXmJxSWXKTHc=;
        b=dtAZ6539FFwSPBRzD8maafZ9d9kESmyIF9XzMxnd0lBWKx51YDMEQGSg3NW1bXjvzb
         lLt9Vi+fm3xey7jmQPcn3uxivzmv3mbZqKiXvP7Usxu6bOSh2YFUHe6H+aEqU0hJ6ahT
         kJj+GkpvuQ9UvbbGJeck7hN8J7N4BWh3lZVwNxr/1m95/oFeapK82UsNnqX/vlYXVXuN
         4TUjXdHF3Hldcq/KBq/l3XT2aatoaKZ6ZXlofCyGnbRmUe1ByBnR6T7nF0pLVmFSuKHx
         P2GJmCb9gYGhTyCMTfD85syghhsAPRJKW0o45hQC4R/M4PLXvTC2kYA7vBT/qTbza2Ii
         6RSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KkiTeH4Cab8nXvIdthgT8drOVa3/C5vQmNl9SD3xB/9+ijtLw
	38TPZX36xMkmvy1dEaHlPkQ=
X-Google-Smtp-Source: ABdhPJw+LhSOCDY4JkSmZ8ka/k7sDkQF/t4Jvhc3cF7ppTIMvcqkLvqFjfQ3xZe3508BGWFs98M4gg==
X-Received: by 2002:a17:902:8643:b029:da:d5f9:28f6 with SMTP id y3-20020a1709028643b02900dad5f928f6mr34414179plt.8.1608910013767;
        Fri, 25 Dec 2020 07:26:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f0f:: with SMTP id br15ls3240125pjb.3.canary-gmail;
 Fri, 25 Dec 2020 07:26:53 -0800 (PST)
X-Received: by 2002:a17:90b:ec2:: with SMTP id gz2mr9196993pjb.143.1608910013059;
        Fri, 25 Dec 2020 07:26:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608910013; cv=none;
        d=google.com; s=arc-20160816;
        b=cUHhJ0eVRG7dbS5WuAU4b4e0RkqhnFdPUYyhiAn3Amaqi8YaUnRA0NDqm36rBWpxoO
         5ZmmjW7ye5Bb0LFvv74ZYrpgggsHsC3ARWKJvY5V2YMq9JO0+nBEe7A+QqbOIx2Au3ZQ
         7slC2rC/ehGCvYb73+3zV+duSxaoICDzF3h44PO2xVV+EHct6fp3BGCNNqwqBvpnFDw5
         tgkHaBLMTEDXy065Og+LW9toTkoZM/vvdkGZZN2saFyTw5ltVJDr4MpxhWhAwvW6QMmB
         n0B3kcWP+3r8z0Fz8fINDeZEJ3bodeGt6sFfUgbFAF9XDMdynbsRucp8X8FlQPg5U+9V
         TgBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=+JcTAEG7qVcPNKMGsjSJV6OIc+7utBDLPPQzwHb0nQc=;
        b=MvFpQ2mbK8mMXQ3l/oqWIBb7551HWd6tTvsovGTEb55+Lpkv5EG8krylhvJNjt3EtY
         uzF2CB+4SE+zpBDQc8RuLBogjvpc7oZC/2Jvu30lEMXtjgkGCGoUCsdZuTCoVf3VnrDX
         VUZdqqWof7zVtAEFSPxV0q4QdpsgUs9wUFCf1hDmVULg9O4+ODx+ghQFni91uhBOvFST
         cDLpbw47vevUGTwva9fzkXOp8faNNegxseYToyIbwQC+CjlP25EdqaGOOD1LbScpB5gY
         a+ndaUIt5F4HbPPnOrYS7Of9Ntnq33jD2Z6xDnEMz/TkN/qB+dB2bNkcFBWVgHUF3vxQ
         mrvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id a17si188446pgd.4.2020.12.25.07.26.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Dec 2020 07:26:53 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: TBx7AXn6zXxzzG9KlLlqGB4tMGodPznpvT894ozoS1u3FNNs8Fe4p4054kIB3N/5MvD8eGi391
 Dc17+bkkpiSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9845"; a="194692656"
X-IronPort-AV: E=Sophos;i="5.78,448,1599548400"; 
   d="gz'50?scan'50,208,50";a="194692656"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Dec 2020 07:26:51 -0800
IronPort-SDR: IpR8Gdnxx78FG3hpt6+6kX2tr88mFlFy2BE0i+A3mY6wX2Qh+2yZO//s/nrlXUw9nbPvWnZ8nW
 oMyJ0y+gpAdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,448,1599548400"; 
   d="gz'50?scan'50,208,50";a="343013124"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 25 Dec 2020 07:26:48 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ksozP-0001be-TV; Fri, 25 Dec 2020 15:26:47 +0000
Date: Fri, 25 Dec 2020 23:25:48 +0800
From: kernel test robot <lkp@intel.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [linux-stable-rc:linux-4.19.y 978/9999]
 drivers/gpu/drm/i915/i915_gem.c:142:2: error: format string is not a string
 literal (potentially insecure)
Message-ID: <202012252333.IJTwhOui-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   e864f43593ccf9180c61738abdf1c1dde091367d
commit: 753328727cab4116410f2a3c150826ab6c555d6a [978/9999] compiler.h: give up __compiletime_assert_fallback()
config: x86_64-randconfig-a006-20201224 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=753328727cab4116410f2a3c150826ab6c555d6a
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout 753328727cab4116410f2a3c150826ab6c555d6a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_gem.c:142:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
           GEM_TRACE("\n");
           ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.c:142:2: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   drivers/gpu/drm/i915/i915_gem.c:186:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
           GEM_TRACE("\n");
           ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.c:186:2: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   drivers/gpu/drm/i915/i915_gem.c:200:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
           GEM_TRACE("\n");
           ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.c:200:2: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   drivers/gpu/drm/i915/i915_gem.c:3304:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
           GEM_TRACE("start\n");
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.c:3304:2: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   drivers/gpu/drm/i915/i915_gem.c:3373:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
           GEM_TRACE("end\n");
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.c:3373:2: note: treat the string as an argument to avoid this
--
>> drivers/gpu/drm/i915/intel_engine_cs.c:1089:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
           GEM_TRACE("\n");
           ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_engine_cs.c:1089:2: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   1 error generated.
--
   In file included from drivers/gpu/drm/i915/intel_lrc.c:2843:
>> drivers/gpu/drm/i915/selftests/intel_lrc.c:243:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/selftests/intel_lrc.c:243:4: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   In file included from drivers/gpu/drm/i915/intel_lrc.c:2843:
   drivers/gpu/drm/i915/selftests/intel_lrc.c:310:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("lo spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/selftests/intel_lrc.c:310:4: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   In file included from drivers/gpu/drm/i915/intel_lrc.c:2843:
   drivers/gpu/drm/i915/selftests/intel_lrc.c:327:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("hi spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/selftests/intel_lrc.c:327:4: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   In file included from drivers/gpu/drm/i915/intel_lrc.c:2843:
   drivers/gpu/drm/i915/selftests/intel_lrc.c:502:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("lo spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/selftests/intel_lrc.c:502:4: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:733:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   In file included from drivers/gpu/drm/i915/intel_lrc.c:2843:
   drivers/gpu/drm/i915/selftests/intel_lrc.c:538:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("hi spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:64:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:719:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +142 drivers/gpu/drm/i915/i915_gem.c

30dbf0c07ff4e3e Chris Wilson 2010-09-25  139  
e4d2006f8f04082 Chris Wilson 2018-04-06  140  static u32 __i915_gem_park(struct drm_i915_private *i915)
e4d2006f8f04082 Chris Wilson 2018-04-06  141  {
4dfacb0bcbee79f Chris Wilson 2018-05-31 @142  	GEM_TRACE("\n");
4dfacb0bcbee79f Chris Wilson 2018-05-31  143  
e4d2006f8f04082 Chris Wilson 2018-04-06  144  	lockdep_assert_held(&i915->drm.struct_mutex);
e4d2006f8f04082 Chris Wilson 2018-04-06  145  	GEM_BUG_ON(i915->gt.active_requests);
643b450a594e9cb Chris Wilson 2018-04-30  146  	GEM_BUG_ON(!list_empty(&i915->gt.active_rings));
e4d2006f8f04082 Chris Wilson 2018-04-06  147  
e4d2006f8f04082 Chris Wilson 2018-04-06  148  	if (!i915->gt.awake)
e4d2006f8f04082 Chris Wilson 2018-04-06  149  		return I915_EPOCH_INVALID;
e4d2006f8f04082 Chris Wilson 2018-04-06  150  
e4d2006f8f04082 Chris Wilson 2018-04-06  151  	GEM_BUG_ON(i915->gt.epoch == I915_EPOCH_INVALID);
e4d2006f8f04082 Chris Wilson 2018-04-06  152  
e4d2006f8f04082 Chris Wilson 2018-04-06  153  	/*
e4d2006f8f04082 Chris Wilson 2018-04-06  154  	 * Be paranoid and flush a concurrent interrupt to make sure
e4d2006f8f04082 Chris Wilson 2018-04-06  155  	 * we don't reactivate any irq tasklets after parking.
e4d2006f8f04082 Chris Wilson 2018-04-06  156  	 *
e4d2006f8f04082 Chris Wilson 2018-04-06  157  	 * FIXME: Note that even though we have waited for execlists to be idle,
e4d2006f8f04082 Chris Wilson 2018-04-06  158  	 * there may still be an in-flight interrupt even though the CSB
e4d2006f8f04082 Chris Wilson 2018-04-06  159  	 * is now empty. synchronize_irq() makes sure that a residual interrupt
e4d2006f8f04082 Chris Wilson 2018-04-06  160  	 * is completed before we continue, but it doesn't prevent the HW from
e4d2006f8f04082 Chris Wilson 2018-04-06  161  	 * raising a spurious interrupt later. To complete the shield we should
e4d2006f8f04082 Chris Wilson 2018-04-06  162  	 * coordinate disabling the CS irq with flushing the interrupts.
e4d2006f8f04082 Chris Wilson 2018-04-06  163  	 */
e4d2006f8f04082 Chris Wilson 2018-04-06  164  	synchronize_irq(i915->drm.irq);
e4d2006f8f04082 Chris Wilson 2018-04-06  165  
e4d2006f8f04082 Chris Wilson 2018-04-06  166  	intel_engines_park(i915);
a89d1f921c15932 Chris Wilson 2018-05-02  167  	i915_timelines_park(i915);
e4d2006f8f04082 Chris Wilson 2018-04-06  168  
e4d2006f8f04082 Chris Wilson 2018-04-06  169  	i915_pmu_gt_parked(i915);
3365e2268b6bc3d Chris Wilson 2018-05-03  170  	i915_vma_parked(i915);
e4d2006f8f04082 Chris Wilson 2018-04-06  171  
e4d2006f8f04082 Chris Wilson 2018-04-06  172  	i915->gt.awake = false;
e4d2006f8f04082 Chris Wilson 2018-04-06  173  
e4d2006f8f04082 Chris Wilson 2018-04-06  174  	if (INTEL_GEN(i915) >= 6)
e4d2006f8f04082 Chris Wilson 2018-04-06  175  		gen6_rps_idle(i915);
e4d2006f8f04082 Chris Wilson 2018-04-06  176  
e4d2006f8f04082 Chris Wilson 2018-04-06  177  	intel_display_power_put(i915, POWER_DOMAIN_GT_IRQ);
e4d2006f8f04082 Chris Wilson 2018-04-06  178  
e4d2006f8f04082 Chris Wilson 2018-04-06  179  	intel_runtime_pm_put(i915);
e4d2006f8f04082 Chris Wilson 2018-04-06  180  
e4d2006f8f04082 Chris Wilson 2018-04-06  181  	return i915->gt.epoch;
e4d2006f8f04082 Chris Wilson 2018-04-06  182  }
e4d2006f8f04082 Chris Wilson 2018-04-06  183  

:::::: The code at line 142 was first introduced by commit
:::::: 4dfacb0bcbee79fa2ef4b2e9e64a8f8a28598934 drm/i915: Switch to kernel context before idling at runtime

:::::: TO: Chris Wilson <chris@chris-wilson.co.uk>
:::::: CC: Chris Wilson <chris@chris-wilson.co.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012252333.IJTwhOui-lkp%40intel.com.

--UugvWAfsgieZRqgk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
LJ0tDnOGkUfXV2yKJk0PTJvKzmDkmzpNsphhbKtmvlxyM/Q36ebBXfwNgyalZrmhDZrV7JrX
pTQRbza/kLcUYMpbiNX11WxhM6oo9KbQui3BYbG4RXzHFVns724uLRIiTXOCUzkyxGIxY7pO
ZOF6Gi+XXF/koPBypdin/soLDywi+5A6XC3D6ZQZkmro9XMJ8eh6i6s1jSRYHSzhYya1n+Ji
2uiLGUV+lmnIW9aS0ofuUmp+a78PKBnGOiZL2RVPvQ38CyhTf/5rcj5+O/1rEkbvQN/71Z7/
Qj8sb2tFI2evnloKVgkbMqrZ4VDDCl9EbDjC8LkN9zkR8qAKsvLD6YnTClEglM8ZkDfcJT0r
NxviHC2pAt13/e41srE5m145fTU6HK1rTBfDCZglK6R5jiPwdSYHPUsD+B852IxJuO1+YCu0
cd3/RbHqiv1YVt71r2OO253kNCELaiJ58jbdAspXjX/YBHMl5u5CFLp6SygoDp4t04+x2Evp
zOpH3fyuhbl/kHPRqOy2oiF0kgjya36x6NmqJ3SiTx/3UDQ/ZD7pp+H1Qd97OgLuMULCdnUY
UnPPlEDMN/R3yvz7NhcfFuSZxF5IOnCxTw5YouqApsDgOCsXEctBlRpvB8ciSR+ypkFIOgKi
PVR2bVZ2/WZl1/+ksut/Xtn1P6vs+kJl13xl6cgBwfWVe+Tke24KS6rzKK2JoDKbxfZX8/2O
fW9Z7SwV2shKs18QwEPcW6O4DsnzuWp1hW97+r1lvPHltgZ7PkGrHhg5vdAcyH6aBSXvqT0I
2e8Z2DKCfdpDtQXoXfbsBKqHLSi9xzfkkk5PdYnv2bmK3K+b6ja1OmSXiG3ImXi7NadJqdlU
LW47AdtRyjnSdpaGat+tb0NC2BQS/gCiClg4jiedznGYz9YzZzk3kW4y7rcuu7Zp5ewNfFGb
hmL0ZIyzcm5aja5RK9J9vpiHK5iDnpMjX2CKIsSTwdgmeZKeuWR7ECmE4pstHVI4HKTE+OS6
KUEcH7vmqJkmqp2ujYMA9VGV5Fs5IloYjlMrz9vMby91PvLf2E+zKuGGmxod4Xy9+GmvcFjz
9TXvaiQl7qLr2dq5BBqhFEp3zbl9sspXRB1XkyTxyQ2FJJpRG0qh2MaZSEuQLuMPvIbjfoLL
3/qzhcevVJ3IrTVZTQk1ShbucR6Z0yvatnXkm9UDqoT4tMlxzsj62c5WaUoRqcno87HAygg0
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
zGP28wEA

--UugvWAfsgieZRqgk--
