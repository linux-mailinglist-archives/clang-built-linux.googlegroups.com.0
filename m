Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVFH5T3QKGQECKONG7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D00D20F2B3
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 12:28:37 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id 75sf5212340uai.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 03:28:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593512916; cv=pass;
        d=google.com; s=arc-20160816;
        b=AyX30xM6uWJtiskyEgQimAK2S930m/CQRJu9+uzEeKUVinRrSCz/JyxUjfHDiXV0xL
         5C1cyopGQDW3L3JI9QJAXlnpuV352U5SS+xSihvxBewybCgMwXT7uemcMkRj1RFSGiqh
         HA378ZDV0v9iwPG9UlDerZR9XltxzOQ3MLrTQseKXQWfX5Y+QImwur1C9ZsepD4EZTeZ
         8vWVSXFQUiazcp0y9sXqs7fc1uHGV6egpp1N4Nhu5rql42QQ1ks4jh/REIDWDXJPijqa
         xU0LRGOZuuflb+80v+bl+RVQe8dBtdatfcEVAm+5LnAdbtsi21zLbQAUw9Cf1K2dpIe2
         BzjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=QP3DyuUEBPPv7B5k8IIfcmJxbbyWQZ5+OTFA/ZpMZXo=;
        b=HZxblc46g4expq5OZyQVRxUyxn8KNBuaIl/XPaybctKRRIF9YI3jIsZEc2PJpeVxRc
         baoMWvXuBj9bYllh3X6noxgaPchmKgZw/kY+Elx7al3JkwKBy+bREnfJKv6XEIDJGYSQ
         F8/8hz4k0hPbFFnxdDy+QiL2drrVJNpfwT3usjCJbtRxg+uY9saixGvOScE2HY7oN1CL
         pYK2iW9Io3KLE5NkQa8CZBMDwa4hkOCUyCL+s8arf8u9zyVbsBS6EMDDZ/U74+nfzpbS
         VBpPUwNRqrtWbpd5V9rTFSE8SUD/iSccFwMjErE0PgufCoH5zSZ7vmD2dWnPY3074aap
         j8IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QP3DyuUEBPPv7B5k8IIfcmJxbbyWQZ5+OTFA/ZpMZXo=;
        b=rjJxmoB+8kzvPKtsioYe7bVgnOoHS+GfUSUK2rOsltXi7rKFWWakneHsxhf/owf1ET
         TxJVAy7NrRgbtn/vxcN69824t/LJXfPq9cZ3wdSH7sP/ETfIMXGgLrbXyZ9tcorJw3kR
         VkfpgxWk/nI5xhjNkbhWnnSRs+nV7jLXoZbeGF7gvD9B2N+Jr0xtTZHnoX6KlUT2l5DW
         /M9hYf5NnWpAggpwuk6b90o3PFN7656Y7bwqH2bPbhygruXlpJ+Mfj0je4uwKeynN4zr
         qkb7mA6ZW0uQ5BVijNr4DAm87H8khKXuK1pWXUU9Ps4O7A6fdUoE+QcE7IDN/4KMZ9EP
         tZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QP3DyuUEBPPv7B5k8IIfcmJxbbyWQZ5+OTFA/ZpMZXo=;
        b=YiL4ftrvVNdzFEhn5U3MoZ46zd8fludcKfSGM3znVgwBt08HDhmRzPlfmT8Y6psZBF
         o1VdwUYOFgWYz+z0lpRXjOwYb7nBmNmpFdqpoCccLrIxwreHbUbQJdhYaQGHyLd3RyBh
         Di9psU26smcbkDPhrkR7XzLNLhZTmn04NeCU2D6wBns41NPZjEfDPxjmRI0upQ3xJn43
         trggCpwcG7U2cLslDu6xjJzCm19N2tk8Us/IbpsQbbhcNpCV4Lnn6sPuHNIE/1UuP47M
         bJ4b/d2eGbO5rbTTtSbYX/ELFQcJzbkYtcBzfPDAfgBo55BeME8fA+OYeVy69EPFkuwp
         eHuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533docgNgYldr92V8auQ1wQzNV07IHEusoC26QhEwn1S5INb+UvB
	vg6jp46fmYN/g0/S+QvOE2w=
X-Google-Smtp-Source: ABdhPJx4lBz4TIIXXVDz35JUs0Dt/dOpl08s2CrS3EsoNqZuuZ5/QRGstib6VpqQGb7xhXHJMz5r/w==
X-Received: by 2002:a1f:1e0b:: with SMTP id e11mr12972287vke.55.1593512916358;
        Tue, 30 Jun 2020 03:28:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:15eb:: with SMTP id j40ls1332615uae.9.gmail; Tue, 30 Jun
 2020 03:28:36 -0700 (PDT)
X-Received: by 2002:ab0:130f:: with SMTP id g15mr13281568uae.112.1593512915975;
        Tue, 30 Jun 2020 03:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593512915; cv=none;
        d=google.com; s=arc-20160816;
        b=NswYoZ78e5TX9fR01u/3HS5t60AEfAeTbR4gU0g3VnXMuuuf0eFCtLnOsBVgEfe71h
         H7rcK5ukPWsfhORO/KnIjL71VCDKBZgQOkbsjzyNNvho6i1IM0gZ3B84AQ9JKl3u6z2g
         86UJVxg4nrDCIw3C9Q5fjuvaJqlHVgoYrQWxihcxofAQKww94gysFrmjIPZktau5Kye9
         RlJ2K+ABe3rfle7KvK51NHyqJBrPAzo1xZGGcA+VWfnOwJVRzqEnwtES3OQg0h+qk558
         3E8/jYmz5a2CxRFgTys2S54VXfPOcoNrRyAPPpT95ejlmWggN0JpfFNMScF5/yqSnpqH
         brXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=pRBhVKx9Rw5OlFNrqooLPq9bOJlIIAyXEq5223Ue8Mo=;
        b=adwP/iOMlkK/8tWobZARB03yTj3nwcTnk6+OwLlK1rJH8CxM4gM4z9FfDbrkaMvQTt
         8sAlmdynDGfC8QktJ0oz1FDJiQKje1LIh319t3M8xTPBS7MShHDtCbetLgujXlNkCEqA
         4beay5lQzu2vNAxSOZuBF83j/dstWjkNHhI58Yr44GFLfLG2GajV2bdtcV2EFmglsaol
         rVbSGSjLJ9/efLoSYKIVAuRm7f8Xm6rXcDUdh3Nx+6/dopoW8H2nyfn3dRvYu0iQkDvN
         jZd+1voeNDYerFbVSCf1oOULzlj21DYt33RX2CEnCRQ5z4/lPK82IbknKB1t721o/z+2
         +BmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id y197si160841vky.3.2020.06.30.03.28.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 03:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: ch4LtF93Hz1BGd/p5lU9O+5IAkTfXbfkaXRWglri7PAShKcY2mAsmRS6+mjw5RHlQnbRltN4ZF
 +uuwnMmM9/9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="211261465"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="211261465"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2020 03:28:34 -0700
IronPort-SDR: DOFoHbEcQuHcXHYkoP3SMWoQMkbva+7uN2ugGNgNB+vV6ZdxBq9Qf/7DqNgcCMcUCd35MKREkX
 p6dI7khz1msQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="320889582"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 30 Jun 2020 03:28:31 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jqDV9-0001QH-9n; Tue, 30 Jun 2020 10:28:31 +0000
Date: Tue, 30 Jun 2020 18:28:25 +0800
From: kernel test robot <lkp@intel.com>
To: Su Hui <sh_def@163.com>, akpm@linux-foundation.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH] mm: remove the redundancy code
Message-ID: <202006301807.ODS5tScL%lkp@intel.com>
References: <20200629173047.GA38128@ubuntu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline
In-Reply-To: <20200629173047.GA38128@ubuntu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Su,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on mmotm/master]

url:    https://github.com/0day-ci/linux/commits/Su-Hui/mm-remove-the-redundancy-code/20200630-013137
base:   git://git.cmpxchg.org/linux-mmotm.git master
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d04484344be52ada8178e41d18fd15a9b880c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   ^
   case 1: ^include/linux/signal.h
   :133:2: note: expanded from macro '_SIG_SET_BINOP'
   case 2: ^
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
   case 1: ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels
   _SIG_SET_OP(signotset, _sig_not)
   ^
   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
   case 2: = ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels
   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
   case 1: = ^
>> include/linux/signal.h:150:1: warning: include/linux/signal.h:unannotated fall-through between switch labels warning: unannotated fall-through between switch labels
   case 1: = 0;
--
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-through
   case 1: = -1;
   ^
   break;
   include/linux/signal.h:233:2: warning: unannotated fall-through between switch labels
   case 1: ;
   ^
   kernel//irq/handle.c:170:3: warning: unannotated fall-through between switch labels
   case IRQ_HANDLED:
   ^
   3kernel//irq/handle.cinclude/linux/signal.h:233:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 1: ;
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-through
   case 1: ;
   ^
   break;
   include/linux/signal.h:245:2: warning: unannotated fall-through between switch labels
   case 1: ;
   ^
   :170:3: note: insert '__attribute__((fallthrough));' to silence this warning
   case IRQ_HANDLED:
   ^
   __attribute__((fallthrough));
   kernel//irq/handle.c:170:3: note: insert 'break;' to avoid fall-through
   case IRQ_HANDLED:
   ^
   break;
   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 1: ;
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-through
   case 1: ;
   ^
   break;
   warnings generated.
   In file included from kernel//events/core.c:24:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
   case 2: ^
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
   case 1: ^
   include/linux/signal.h:150:1: warning: unannotated fall-through between switch labels
   _SIG_SET_BINOP(sigandsets, _sig_and)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
   case 2: ^
   include/linux/signal.h:150:1: warning: unannotated fall-through between switch labels
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
   case 1: ^
   include/linux/signal.h:153:1: warning: unannotated fall-through between switch labels
   _SIG_SET_BINOP(sigandnsets, _sig_andn)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
   case 2: ^
   include/linux/signal.h:153:1: warning: unannotated fall-through between switch labels
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
   case 1: ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels
   _SIG_SET_OP(signotset, _sig_not)
   ^
   include/linux/signal.h:167:2: note: expanded from macro '_SIG_SET_OP'
   case 2: = ^
   include/linux/signal.h:177:1: warning: unannotated fall-through between switch labels
   include/linux/signal.h:169:2: note: expanded from macro '_SIG_SET_OP'
   case 1: = ^
   include/linux/signal.h:190:2: warning: unannotated fall-through between switch labels
   case 1: = 0;
   ^
   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 1: = 0;
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-through
   case 1: = 0;
   ^
   break;
   include/linux/signal.h:203:2: warning: unannotated fall-through between switch labels
   case 1: = -1;
   ^
   In file included from kernel//locking/semaphore.c:34:
   In file included from include/linux/ftrace.h:11:
   In file included from include/linux/kallsyms.h:12:
   include/linux/mm.h:162:2: warning: unannotated fall-through between switch labels
   case 72:
   ^
   In file included from kernel//time/time.c:33:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:6:
   In file included from include/linux/ring_buffer.h:5:
>> include/linux/mm.h:162:2: warning: include/linux/signal.hunannotated fall-through between switch labels
   : case 72:203
   ^:
   2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 1: = -1;
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:203:2: note: insert 'break;' to avoid fall-through
   case 1: = -1;
   ^
   break;
   include/linux/signal.h:233:2: warning: unannotated fall-through between switch labels
   case 1: ;
   ^
   include/linux/signal.hinclude/linux/mm.h:162:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 72:
   ^
   __attribute__((fallthrough));
   include/linux/mm.h:162:2: note: insert 'break;' to avoid fall-through
   case 72:
   ^
   break;
   include/linux/mm.h:164:2: warning: unannotated fall-through between switch labels
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
   include/linux/mm.h:166:2: warning: unannotated fall-through between switch labels
   case 56:
   ^
   :233:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 1: ;
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:233:2: note: insert 'break;' to avoid fall-through
   case 1: ;
   ^
   break;
   include/linux/signal.h:245:2: warning: unannotated fall-through between switch labels
   case 1: ;
   ^
   include/linux/mm.h:166:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 56:
   ^
   __attribute__((fallthrough));
   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-through
   case 56:
   ^
   break;
   include/linux/mm.h:162:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 72:
   ^
   __attribute__((fallthrough));
   include/linux/mm.h:162:2: note: insert 'break;' to avoid fall-through
   case 72:
   ^
   break;
   include/linux/mm.h:164:2: warning: unannotated fall-through between switch labels
   case 64:
   ^
   12 warnings generated.
   include/linux/signal.h:245:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 1: ;
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:245:2: note: insert 'break;' to avoid fall-through
   case 1: ;
   ^
   break;
   1 warning generated.
   include/linux/mm.h:164:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 64:
   ^
   __attribute__((fallthrough));
   include/linux/mm.h:164:2: note: insert 'break;' to avoid fall-through
   case 64:
   ^
   break;
   include/linux/mm.h:166:2: warning: unannotated fall-through between switch labels
   case 56:
   ^
   In file included from kernel//sched/loadavg.c:9:
   In file included from kernel//sched/sched.h:11:
   In file included from include/linux/sched/cputime.h:5:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^
   include/linux/signal.h:133:2: note: expanded from macro '_SIG_SET_BINOP'
   case 2: ^
   include/linux/signal.h:147:1: warning: unannotated fall-through between switch labels
   include/linux/signal.h:137:2: note: expanded from macro '_SIG_SET_BINOP'
   case 1: ^
   include/linux/signal.h:150:1: warning: unannotated fall-through between switch labels
   _SIG_SET_BINOP(sigandsets, _sig_and)

vim +150 include/linux/signal.h

^1da177e4c3f41 Linus Torvalds 2005-04-16  148  
^1da177e4c3f41 Linus Torvalds 2005-04-16  149  #define _sig_and(x,y)	((x) & (y))
^1da177e4c3f41 Linus Torvalds 2005-04-16 @150  _SIG_SET_BINOP(sigandsets, _sig_and)
^1da177e4c3f41 Linus Torvalds 2005-04-16  151  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006301807.ODS5tScL%25lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
h1fuKnTTRtuMoZrgKz8Bp4Ul1XZpAAA=

--45Z9DzgjV8m4Oswq--
