Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCNDVHWAKGQEUUEPCHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FE2BD08B
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 19:25:31 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id x10sf1962234pfr.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 10:25:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569345930; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4zSGyUx1zh6c2h/ZbZd7xhyj74YXKB+RBJ5REppNWDxKVjt5hgzVoVpVD/28BZGYW
         SKJglEzWbURV+ePohFtdzyvTckWQg7n8AyzKZ5vbYfspXt7wFhOdGKKtioev8KUTvzX8
         XqaotY7EhGRpIjgcRDFZaYvZa/sGViwtiira051GRgmEXucZQTlBZH9KLmlPIqJW04MG
         vtUoVx+fGFH9HLZ8skwnJrQ75rlw/8JBQIjcf3zqchSooWmqPkcNA1T5hQxHw592Y7Tf
         eALnjHInzTQTS3GRkWCyXKWVcIAbNDK2R1rK7ezv4RZRuiK5xAXfMWFiRIc+Mtw7As+2
         CMpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ks2ZRLIunjos+QYgCL8my/EJtD1vO0ce1wfRujNEMBY=;
        b=wdt+u/m7vWGEi/oiAkPhEY2HXTy5RWxAjpBPxYD9+DQ5nMwQc1BixJIfwGTnwfzN6x
         fvDJPUITioUwGZk91D/nGNllypsNAid9rTtbzNdMbF/aAODUSM5JEILjtirPWbgaaxU3
         q8EXXaRrkTrKgEI+sT2rPaV5LqbxN/UlfAHyhAY20ExxJZx+RqMGm93u99CG/hg9RrCR
         dhkOFBsHbO+aq9590aC4ZAs1kJDLOMfAss4V2aWroLyk2AUHjOARDnHUUbURv2OXB1dx
         covmQGCK24TvdztdXoTzXcINvOi7NUUuILJBeb/6RpoRFUJeEtdOhrf7ViJQM1cHsjPy
         Rvkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ks2ZRLIunjos+QYgCL8my/EJtD1vO0ce1wfRujNEMBY=;
        b=UJh55sN7qeG/04odG41EKhnli8241/MBduEIMi39L35kY2IJfLqO+tAnUBPOlbLQbK
         liZyvA3L3D0n/86oAoQpbEpxnASg3EyF5e1yvCT0Xw+csEa+a0x+hPW+Kz4opDnktC9p
         QpHXs8+dq57xlHYptKcw0LKCn5Wd5KiRhpErPD2kQMnoru9ffLN8+HLMxRK0XxSMhDE0
         2sITtuE5qXOCXsPJFQ2+g7C0X4rsgYsxLHumU8RfXm2pH7v1f2d+pX8i4eHReBjvUC3R
         GNVlpqF7v3xy5Ay1ELT2S9FsPPg9grXJYlaGfgTBzHWbBsuq+sbNbJiTAfyDdb++f3VH
         usFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ks2ZRLIunjos+QYgCL8my/EJtD1vO0ce1wfRujNEMBY=;
        b=VPadsNb7po9E6vfG06tq0ipjH3Qi3A2guNxcv9o2O5BZv6C1Ut7TQCVRjFpHdC4Edv
         1Ft8XHTh6JykRFyFTajsqRGCVCKIsdAd/UV4GbLP6q8IFpM+zldP6IZ6qr74nyE1E+4s
         MAG0YZIOqGZcg+px/HeqH7/HfR8QrNtf99NCRsMgx6YgAUQQPpYDs/aEeheqoVDOImLv
         0Lji2+egwHic6Vz4IwDVDhlK3QeDRQi56hFd8cNn61rcBxTV9xd2PBp2ssz9YtiMkVcr
         DU2jObEPZLH3SwLKs2NVpIFLYakdZpeRPJTBAcH/n98aDs2Y8X5Qqx8o3wBiGs6svEn8
         F7uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvot/8YR+lEBOD3pM84O+znjbtuYAS5WxRv4Z8CCTs5bDznuNs
	qDuaLHAF/KA9eLzongmPYd4=
X-Google-Smtp-Source: APXvYqz5X0PAEDHzsw/P4/Mdiix2NQBOYJ6Q+i9CeN4L7KMJOj2vRas+gmVxreZKx+VCIuz8pqZOaQ==
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr1219874pjf.61.1569345930067;
        Tue, 24 Sep 2019 10:25:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d86:: with SMTP id v6ls699539plo.11.gmail; Tue, 24
 Sep 2019 10:25:29 -0700 (PDT)
X-Received: by 2002:a17:902:7785:: with SMTP id o5mr4551177pll.30.1569345929678;
        Tue, 24 Sep 2019 10:25:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569345929; cv=none;
        d=google.com; s=arc-20160816;
        b=zUCwlAq8O1Zxby7L5sPbEmZ6k1yJxIp+mEyipBldHS3KXe6jvy4U5pf0z6JSzR/WQF
         nESGjgTWRsIQAocMeaUq25kdGFNc3R0axCrxngpsWHKSeaApd/IWD93qjk83XQmhgPbN
         MpzzfGFsYf41wfVfC6Iiaqu1n3P2pQohr0BVXnRNRIQZ7ugpFfUgz5CINS7N/zGqkRwA
         YXXiC7ZBxCeR/wL3l2Knpt/fC+lliMWDNt1f9o6+KpRzUI4EiAlPuziDbATZLPNJv/4d
         /yLZ6sQZN+folz1B9p2q4rBHcV3dw/8Yq8xSLB7L4mPkdyMvwoVTc91li4HkaPkRkboA
         OTTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=hYFl3UOfmkrhyS3q+SIUkKunhGQpdaU1M0VFvlk+4Yk=;
        b=HWfcFr/ZI7GXgn1FzJdkTV3smgwv9fUEm2rHbLC/XKZdjs1jTWtDFaS5KOCBNMiaiE
         yx/AVHLdcR3oZZhQOHmCow5zy/0CF8qShxrAb9MQiEj9MpUQUVZBY4KjYMiU9nPzPIFs
         cWv1X1zAJlEgoXoovxGPl1TdGInWiklDIoEAQe7zQsVWWmcKbcsQ8y1xNphQk3OG6S3g
         oY/Ngo8WXhDtPAVkB+lM5vumdjBnol66+6yPr+B85iMJPBNswUzgVZuLeERmE1EL1nW/
         6du72VIrHG+KBAGx8clG9y0Jjy28OOERzBha1I6m/ANzy+4PLXG1QF4O6CCT2PLDw+YH
         DLFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id x137si181535pfd.1.2019.09.24.10.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 10:25:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Sep 2019 10:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; 
   d="gz'50?scan'50,208,50";a="364073396"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 24 Sep 2019 10:25:27 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iCoZ5-00098R-2A; Wed, 25 Sep 2019 01:25:27 +0800
Date: Wed, 25 Sep 2019 01:25:05 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1 2/5] ACPI / utils: Introduce acpi_dev_hid_uid_match()
 helper
Message-ID: <201909250101.9fikbQnx%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ctz3zdno42yjdrgc"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--ctz3zdno42yjdrgc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20190924120153.8382-2-andriy.shevchenko@linux.intel.com>
References: <20190924120153.8382-2-andriy.shevchenko@linux.intel.com>
TO: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
CC: Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org, Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Hi Andy,

I love your patch! Perhaps something to improve:

[auto build test WARNING on pm/linux-next]
[cannot apply to v5.3 next-20190920]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Andy-Shevchenko/ACPI-utils-Describe-function-parameters-in-kernel-doc/20190924-230504
base:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 144276bfe43b088390ad11ba0c82cab9158e42e6)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
           case 2:                                                         \
           ^
   include/linux/signal.h:153:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
           case 1:                                                         \
           ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_OP(signotset, _sig_not)
   ^
   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
           ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
           case 1: set->sig[0] = op(set->sig[0]);                          \
           ^
   include/linux/signal.h:190:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: set->sig[0] = 0;
           ^
   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: set->sig[0] = 0;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-through
           case 1: set->sig[0] = 0;
           ^
           break; 
   include/linux/signal.h:203:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: set->sig[0] = -1;
           ^
   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: set->sig[0] = -1;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-through
           case 1: set->sig[0] = -1;
           ^
           break; 
   include/linux/signal.h:233:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:233:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:245:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   In file included from init/main.c:21:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:6:
   In file included from include/linux/ring_buffer.h:5:
   include/linux/mm.h:162:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 72:
           ^
   include/linux/mm.h:162:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 72:
           ^
           __attribute__((fallthrough)); 
   include/linux/mm.h:162:2: note: insert 'break;' to avoid fall-through
           case 72:
           ^
           break; 
   include/linux/mm.h:164:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 64:
           ^
   include/linux/mm.h:164:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 64:
           ^
           __attribute__((fallthrough)); 
   include/linux/mm.h:164:2: note: insert 'break;' to avoid fall-through
           case 64:
           ^
           break; 
   include/linux/mm.h:166:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 56:
           ^
   include/linux/mm.h:166:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 56:
           ^
           __attribute__((fallthrough)); 
   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-through
           case 56:
           ^
           break; 
   In file included from init/main.c:30:
>> include/linux/acpi.h:665:50: warning: declaration of 'struct acpi_device' will not be visible outside of this function [-Wvisibility]
   static inline bool acpi_dev_hid_uid_match(struct acpi_device *adev,
                                                    ^
   16 warnings generated.
--
   In file included from arch/x86/kernel/setup.c:26:
   include/linux/mm.h:162:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 72:
           ^
   include/linux/mm.h:162:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 72:
           ^
           __attribute__((fallthrough)); 
   include/linux/mm.h:162:2: note: insert 'break;' to avoid fall-through
           case 72:
           ^
           break; 
   include/linux/mm.h:164:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 64:
           ^
   include/linux/mm.h:164:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 64:
           ^
           __attribute__((fallthrough)); 
   include/linux/mm.h:164:2: note: insert 'break;' to avoid fall-through
           case 64:
           ^
           break; 
   include/linux/mm.h:166:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 56:
           ^
   include/linux/mm.h:166:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 56:
           ^
           __attribute__((fallthrough)); 
   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-through
           case 56:
           ^
           break; 
   In file included from arch/x86/kernel/setup.c:30:
>> include/linux/acpi.h:665:50: warning: declaration of 'struct acpi_device' will not be visible outside of this function [-Wvisibility]
   static inline bool acpi_dev_hid_uid_match(struct acpi_device *adev,
                                                    ^
   In file included from arch/x86/kernel/setup.c:45:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:10:
   In file included from include/uapi/linux/elfcore.h:6:
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
           case 2:                                                         \
           ^
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
           case 1:                                                         \
           ^
   include/linux/signal.h:150:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_BINOP(sigandsets, _sig_and)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
           case 2:                                                         \
           ^
   include/linux/signal.h:150:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
           case 1:                                                         \
           ^
   include/linux/signal.h:153:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_BINOP(sigandnsets, _sig_andn)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
           case 2:                                                         \
           ^
   include/linux/signal.h:153:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
           case 1:                                                         \
           ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_OP(signotset, _sig_not)
   ^
   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
           ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
           case 1: set->sig[0] = op(set->sig[0]);                          \
           ^
   include/linux/signal.h:190:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: set->sig[0] = 0;
           ^
   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: set->sig[0] = 0;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-through
           case 1: set->sig[0] = 0;
           ^
           break; 
   include/linux/signal.h:203:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: set->sig[0] = -1;
           ^
   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: set->sig[0] = -1;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-through
           case 1: set->sig[0] = -1;
           ^
           break; 
   include/linux/signal.h:233:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:233:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:245:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   16 warnings generated.
--
   In file included from arch/x86/kernel/i8259.c:4:
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
           case 2:                                                         \
           ^
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
           case 1:                                                         \
           ^
   include/linux/signal.h:150:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_BINOP(sigandsets, _sig_and)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
           case 2:                                                         \
           ^
   include/linux/signal.h:150:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
           case 1:                                                         \
           ^
   include/linux/signal.h:153:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_BINOP(sigandnsets, _sig_andn)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
           case 2:                                                         \
           ^
   include/linux/signal.h:153:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
           case 1:                                                         \
           ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   _SIG_SET_OP(signotset, _sig_not)
   ^
   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
           ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
           case 1: set->sig[0] = op(set->sig[0]);                          \
           ^
   include/linux/signal.h:190:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: set->sig[0] = 0;
           ^
   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: set->sig[0] = 0;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-through
           case 1: set->sig[0] = 0;
           ^
           break; 
   include/linux/signal.h:203:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: set->sig[0] = -1;
           ^
   include/linux/signal.h:203:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: set->sig[0] = -1;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-through
           case 1: set->sig[0] = -1;
           ^
           break; 
   include/linux/signal.h:233:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:233:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:245:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   In file included from arch/x86/kernel/i8259.c:15:
>> include/linux/acpi.h:665:50: warning: declaration of 'struct acpi_device' will not be visible outside of this function [-Wvisibility]
   static inline bool acpi_dev_hid_uid_match(struct acpi_device *adev,
                                                    ^
   13 warnings generated.
..

vim +665 include/linux/acpi.h

   664	
 > 665	static inline bool acpi_dev_hid_uid_match(struct acpi_device *adev,
   666						  const char *hid2, const char *uid2)
   667	{
   668		return false;
   669	}
   670	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909250101.9fikbQnx%25lkp%40intel.com.

--ctz3zdno42yjdrgc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ctz3zdno42yjdrgc--
