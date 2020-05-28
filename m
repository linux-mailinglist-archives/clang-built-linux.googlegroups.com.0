Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXVHX33AKGQEQ6ET7RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA21E5D3A
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 12:35:12 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id p4sf695596pgf.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 03:35:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590662110; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKLvQkoZVlwC3VGlWlnUGcEhqee/pttpCB7TYrWsBpqLLyqjEevuqxKMmBm0jyYbpC
         r0sVGZIYR1X3ouRX9msmxaOM6dE+rU93kbo2LrTYYbRaTTo9uaQXu+P/yS77qG+6jMXd
         jgIGWeABZfGuJQc9Mygvy/HO3ngBPskqowhvTptupCfZ2fWU8EeBFHUPf+XxF/KXdB+E
         7GUyLHKI7740lp+LzRzYDdkgCYE+k5ptMozH9nN2ozJFHv6hM4M7cPAdaxJ9c3T60b5l
         V/ojbIslIpxkeCRUh80v7AceQX6kk6uLc5Y1ceI8FjQxVqy0ytFR8zTBIY/BeVvWqW28
         XEZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=4amhmxeuuWJil9KIg0HeNv0KDEvVKbleAak7t6CxHNk=;
        b=gZeVSQnHbZweCrCxrgCj0eS3GDQfG8wmMv+NDLoZBU6TTEtwXJS+W1jJAqh9ZU8MHe
         Y6CKbQXAFsY2FjCCGr7HlYdzBt/vIQM+40wXgb0nUXSDE/H6z6jejDOkYxbNGfM0KTum
         iu5DcUc8dYwG6j+EL1LjnbByJyeISOEHj6yxdT0xXZAbPDZ118aghPbzcHIcfdWmKd6F
         wjiK6yJf9mb9Kb0i9ecZDVmLBc4kBBSN5HP8p9imRnaX8f8K/DOhextbzofx3nIsz6Xc
         5f9AUVrM9lR6SvlKoraeOMzat9gWClsPymLV2qXRYktZv9RywWMPaRLclLGRpLOT0M5J
         H+Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4amhmxeuuWJil9KIg0HeNv0KDEvVKbleAak7t6CxHNk=;
        b=EvyKzIbhfrxm6ERPYjmY0f7RcEVO9noTUPG0fAhG12VSygBPu6Y16Uua1cBM9dRDBP
         pYKdHxt4MctQtBvVzyEV0KNWxV4g8Y27hYUoqz/lD0Hc6mc57ANh1M9knfjmgXVl/VOL
         8kT9uTZgr8w24wplExPF9CozX8tpcCdcFKAKyGxP1rxJdMCWtiWiua/QDlChRFIfM2K4
         2i1+1OQFPwUl+3xA+JSFMUZBh3Dh1PMLzYcIMB5edgF3zdYy/70kJUnrHUNKfuV3QI9o
         9gjk+emxMWnMNNX9d7QrtRKnB7WFvo9AvK17lGwY7gQ5kMHB7s5BP8fU0rd1fUMO1sK+
         cGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4amhmxeuuWJil9KIg0HeNv0KDEvVKbleAak7t6CxHNk=;
        b=Dku8YiYo6XET22t4iBZh1fNHGX5k72m7NOdiXVpRmLJtGiIulQfdbl4HPMu8DSlrj5
         HeWQKILYNgkucKZ8P0HpMqI+z88TH1s6szJsARcFo3jqzwwA5jC3BXlSKwlt04Kf3E92
         WYFrvScfx0LHdy85PHHmIhqsNStiTTw+AGrhgUnD88WBmxjkelVaQmNqqc4mAK43u8rS
         l7IdPlHHcuVkZwfdzWUCOJZpEtUPLflfXQuhOqIFvvLZ/b2nMEEuyryvlz+dbEtlklCW
         mkrc6CE9PyAgnvvZPyiOt5GChI/QcMFiy1Y5YJ2K8fq8aUHEtYMvGqcpG1HVGksGTQXe
         62Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IyiDSN8332efP/asDA51Ns7YBR/gb+IHJpopIh3p4pv+Wjo3B
	lxSSNZkqb1WaFYNq0cOJWcU=
X-Google-Smtp-Source: ABdhPJzhYg4i+oscwrSZuL3y732U+pSmxokkspLQDeoZWas18KSZYNNkga4t7LitXSKgZhSFjbM+dw==
X-Received: by 2002:a63:d70f:: with SMTP id d15mr2401425pgg.322.1590662110494;
        Thu, 28 May 2020 03:35:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c086:: with SMTP id o6ls936622pjs.0.canary-gmail;
 Thu, 28 May 2020 03:35:10 -0700 (PDT)
X-Received: by 2002:a17:902:bf02:: with SMTP id bi2mr2878622plb.330.1590662110020;
        Thu, 28 May 2020 03:35:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590662110; cv=none;
        d=google.com; s=arc-20160816;
        b=TLaUQGreV5ktUHUPzLEpgSzcpC4ixxDz+PsCs8w2GkWKGG648AeACg/VJ5ZrbGBOc9
         3n9ZRGCg/mQXnB21UIgvhZUIlIJSBZdriwaWVUX8dCevJjfJoI3fEEM4kCPYbXJS6tH1
         mOPljW/9bgaWuuSzl5sFLi00QbDVFT9ZvJ/cs0iyUb/2pD2jVl3ZjS/cUQZgeNmx0iyC
         wj/KknkgheLms4ChcNdqOvqCaZ43j8TJAg9iNl2odrv4lfC5qExSuqQmxeTKwJVs9hzB
         TAHtWVRURr3v4lPBxvg011judBizErJi3JHqQsadZBt324EdI4GZWEvFW11+ujGmZGPJ
         ZxUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=1DlZPbi2w0odRmPlArm2v+YyP0Q/TFDSWAGUoG4WfzM=;
        b=p9TPF5FOmUdHv6Jarvrd/F6ek1b2+rvKZHATnxgnp0IfoxmQHc5jGfNHJEKmXSSiig
         rsWmPrKxVrJ18TJA+oTVSzeMuGu5jPGAnWyZb1HkSn7fMQ3oSgXuST0mJr5v5vSTkdHf
         Nlz+0KmG/4L6E1ottoeb1w9Ywuj1zJujq29+rd8Cy6IhUpTmNiN/wg7dGPZ/c4l8KsaQ
         /4jrtMdUZ9OfbLkaKEKBQt4WE+XUbfppHDrK2YTgBjy5CUhqFQ+EGoWmtLUoFcvGHmu7
         Y4/Lf+pbWWYbIgrpsO5GIhh+pwZzfhxULv0QaIgOsEKLZcKNBp9+TEC95mA7N4qkvIfs
         hE+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id m81si532301pfd.2.2020.05.28.03.35.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 May 2020 03:35:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: f2OwUrGpn8qgIPVjgRGAPqyE++I6NmDBRlgZMQS+OmrIPlJkXBH4npoN4HY8OTTz5r5NovjTAv
 KwPTK5LOSFvA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2020 03:35:08 -0700
IronPort-SDR: KdFtw6TFYkCzBrxQS7kQZv8kS+gDhvoce5UaXJnzWtqnqJ+N2zp7s1mT8rLN8Qtb28MR/kitAl
 WPBgn+/xnRtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; 
   d="gz'50?scan'50,208,50";a="469088520"
Received: from lkp-server02.sh.intel.com (HELO 5e8f22f9921b) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 28 May 2020 03:35:07 -0700
Received: from kbuild by 5e8f22f9921b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jeFsQ-00004u-H0; Thu, 28 May 2020 10:35:06 +0000
Date: Thu, 28 May 2020 18:34:59 +0800
From: kbuild test robot <lkp@intel.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [userns:exec-testing 10/18] include/linux/security.h:580:9: error:
 implicit declaration of function 'cap_bprm_creds_from_file'
Message-ID: <202005281855.CjdycDG3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ebiederm/user-namespace.git exec-testing
head:   bb6108934507ef1ac534afdef0db20dcd242c5fa
commit: b5579c9de204da3aa3575aeaa46fd94ab19d77d0 [10/18] exec: Compute file based creds only once
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2d068e534f1671459e1b135852c1b3c10502e929)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout b5579c9de204da3aa3575aeaa46fd94ab19d77d0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from kernel/fork.c:50:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
1 error generated.
--
In file included from kernel/time/hrtimer.c:30:
In file included from include/linux/syscalls.h:85:
In file included from include/trace/syscall.h:7:
In file included from include/linux/trace_events.h:10:
In file included from include/linux/perf_event.h:59:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
kernel/time/hrtimer.c:120:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
[CLOCK_REALTIME]        = HRTIMER_BASE_REALTIME,
^~~~~~~~~~~~~~~~~~~~~
kernel/time/hrtimer.c:118:27: note: previous initialization is here
[0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
^~~~~~~~~~~~~~~~~~~~~~~
kernel/time/hrtimer.c:121:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
[CLOCK_MONOTONIC]       = HRTIMER_BASE_MONOTONIC,
^~~~~~~~~~~~~~~~~~~~~~
kernel/time/hrtimer.c:118:27: note: previous initialization is here
[0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
^~~~~~~~~~~~~~~~~~~~~~~
kernel/time/hrtimer.c:122:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
[CLOCK_BOOTTIME]        = HRTIMER_BASE_BOOTTIME,
^~~~~~~~~~~~~~~~~~~~~
kernel/time/hrtimer.c:118:27: note: previous initialization is here
[0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
^~~~~~~~~~~~~~~~~~~~~~~
kernel/time/hrtimer.c:123:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
[CLOCK_TAI]             = HRTIMER_BASE_TAI,
^~~~~~~~~~~~~~~~
kernel/time/hrtimer.c:118:27: note: previous initialization is here
[0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
^~~~~~~~~~~~~~~~~~~~~~~
4 warnings and 1 error generated.
--
In file included from kernel/time/posix-stubs.c:13:
In file included from include/linux/syscalls.h:85:
In file included from include/trace/syscall.h:7:
In file included from include/linux/trace_events.h:10:
In file included from include/linux/perf_event.h:59:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
kernel/time/posix-stubs.c:25:17: warning: no previous prototype for function 'sys_ni_posix_timers' [-Wmissing-prototypes]
asmlinkage long sys_ni_posix_timers(void)
^
kernel/time/posix-stubs.c:25:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
asmlinkage long sys_ni_posix_timers(void)
^
static
kernel/time/posix-stubs.c:73:5: warning: no previous prototype for function 'do_clock_gettime' [-Wmissing-prototypes]
int do_clock_gettime(clockid_t which_clock, struct timespec64 *tp)
^
kernel/time/posix-stubs.c:73:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
int do_clock_gettime(clockid_t which_clock, struct timespec64 *tp)
^
static
2 warnings and 1 error generated.
--
In file included from kernel/events/core.c:34:
In file included from include/linux/syscalls.h:85:
In file included from include/trace/syscall.h:7:
In file included from include/linux/trace_events.h:10:
In file included from include/linux/perf_event.h:59:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
kernel/events/core.c:6487:6: warning: no previous prototype for function 'perf_pmu_snapshot_aux' [-Wmissing-prototypes]
long perf_pmu_snapshot_aux(struct perf_buffer *rb,
^
kernel/events/core.c:6487:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
long perf_pmu_snapshot_aux(struct perf_buffer *rb,
^
static
1 warning and 1 error generated.
--
In file included from kernel/events/hw_breakpoint.c:36:
In file included from include/linux/hw_breakpoint.h:5:
In file included from include/linux/perf_event.h:59:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
kernel/events/hw_breakpoint.c:71:12: warning: no previous prototype for function 'hw_breakpoint_weight' [-Wmissing-prototypes]
__weak int hw_breakpoint_weight(struct perf_event *bp)
^
kernel/events/hw_breakpoint.c:71:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
__weak int hw_breakpoint_weight(struct perf_event *bp)
^
static
kernel/events/hw_breakpoint.c:219:13: warning: no previous prototype for function 'arch_unregister_hw_breakpoint' [-Wmissing-prototypes]
__weak void arch_unregister_hw_breakpoint(struct perf_event *bp)
^
kernel/events/hw_breakpoint.c:219:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
__weak void arch_unregister_hw_breakpoint(struct perf_event *bp)
^
static
2 warnings and 1 error generated.
--
In file included from kernel/printk/printk.c:34:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
In file included from kernel/printk/printk.c:61:
kernel/printk/internal.h:57:20: warning: no previous prototype for function 'vprintk_func' [-Wmissing-prototypes]
__printf(1, 0) int vprintk_func(const char *fmt, va_list args) { return 0; }
^
kernel/printk/internal.h:57:16: note: declare 'static' if the function is not intended to be used outside of this translation unit
__printf(1, 0) int vprintk_func(const char *fmt, va_list args) { return 0; }
^
static
kernel/printk/printk.c:175:5: warning: no previous prototype for function 'devkmsg_sysctl_set_loglvl' [-Wmissing-prototypes]
int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
^
kernel/printk/printk.c:175:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
^
static
kernel/printk/printk.c:2441:10: warning: 'sprintf' will always overflow; destination buffer has size 0, but format string expands to at least 33 [-Wfortify-source]
len = sprintf(text,
^
3 warnings and 1 error generated.
--
In file included from kernel/sched/fair.c:23:
In file included from kernel/sched/sched.h:61:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
kernel/sched/fair.c:5324:6: warning: no previous prototype for function 'init_cfs_bandwidth' [-Wmissing-prototypes]
void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
^
kernel/sched/fair.c:5324:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
^
static
kernel/sched/fair.c:11065:6: warning: no previous prototype for function 'free_fair_sched_group' [-Wmissing-prototypes]
void free_fair_sched_group(struct task_group *tg) { }
^
kernel/sched/fair.c:11065:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void free_fair_sched_group(struct task_group *tg) { }
^
static
kernel/sched/fair.c:11067:5: warning: no previous prototype for function 'alloc_fair_sched_group' [-Wmissing-prototypes]
int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
^
kernel/sched/fair.c:11067:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
^
static
kernel/sched/fair.c:11072:6: warning: no previous prototype for function 'online_fair_sched_group' [-Wmissing-prototypes]
void online_fair_sched_group(struct task_group *tg) { }
^
kernel/sched/fair.c:11072:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void online_fair_sched_group(struct task_group *tg) { }
^
static
kernel/sched/fair.c:11074:6: warning: no previous prototype for function 'unregister_fair_sched_group' [-Wmissing-prototypes]
void unregister_fair_sched_group(struct task_group *tg) { }
^
kernel/sched/fair.c:11074:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void unregister_fair_sched_group(struct task_group *tg) { }
^
static
5 warnings and 1 error generated.
--
In file included from kernel/sched/rt.c:6:
In file included from kernel/sched/sched.h:61:
>> include/linux/security.h:580:9: error: implicit declaration of function 'cap_bprm_creds_from_file' [-Werror,-Wimplicit-function-declaration]
return cap_bprm_creds_from_file(bprm);
^
include/linux/security.h:580:9: note: did you mean 'security_bprm_creds_from_file'?
include/linux/security.h:578:19: note: 'security_bprm_creds_from_file' declared here
static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
^
kernel/sched/rt.c:251:6: warning: no previous prototype for function 'free_rt_sched_group' [-Wmissing-prototypes]
void free_rt_sched_group(struct task_group *tg) { }
^
kernel/sched/rt.c:251:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void free_rt_sched_group(struct task_group *tg) { }
^
static
kernel/sched/rt.c:253:5: warning: no previous prototype for function 'alloc_rt_sched_group' [-Wmissing-prototypes]
int alloc_rt_sched_group(struct task_group *tg, struct task_group *parent)
^
kernel/sched/rt.c:253:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
int alloc_rt_sched_group(struct task_group *tg, struct task_group *parent)
^
static
kernel/sched/rt.c:666:6: warning: no previous prototype for function 'sched_rt_bandwidth_account' [-Wmissing-prototypes]
bool sched_rt_bandwidth_account(struct rt_rq *rt_rq)
^
kernel/sched/rt.c:666:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
bool sched_rt_bandwidth_account(struct rt_rq *rt_rq)
^
static
3 warnings and 1 error generated.

vim +/cap_bprm_creds_from_file +580 include/linux/security.h

   577	
   578	static inline int security_bprm_creds_from_file(struct linux_binprm *bprm)
   579	{
 > 580		return cap_bprm_creds_from_file(bprm);
   581	}
   582	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005281855.CjdycDG3%25lkp%40intel.com.

--ZGiS0Q5IWpPtfppv
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
GExPXrE6GOym6FTdHFz9BzGMBg1dagAA

--ZGiS0Q5IWpPtfppv--
