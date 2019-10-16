Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7FYT3WQKGQERKCKJVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id A3818DA1A4
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 00:41:02 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id s14sf222601qkg.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 15:41:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571265661; cv=pass;
        d=google.com; s=arc-20160816;
        b=fs1fjFxQ9nK80hcKnNyHAif26W4aVvPhZl0Eq9gYfG99WQMCTvEU7gvc9YuG3I2Jio
         AI2m9BUFAiggmjkzQlcC/BtHP0sZNjC+wFLvyvWvehCuXKO/53+2hoYgluxfrPJnV29o
         vE1y6y2NO+QWRToZlHfWWiumppiR2DncdcGSF4G5+1DjbVtNm52wvCqBgVGRoIL5P3QY
         zdQd5SSVdtE0g2+mkFRTc+OHQdtjSdB4/gnwlekFGDHG+MYwDTxrfUjdUHBzVpsIeHiE
         SuI4GxCegelK56bsCCwkHMbbZS5H9GSIoioeorAPuzsIogn1mMskfHSrPVvxNzKr699s
         ty/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=M/EQ95lEIEpaZtUWedAN6h0qYdq+xaChH+X6VQGL5Xo=;
        b=tszZidwMvaUnKiaIHwhLadxPxqt7x/jPXELnEq2bhxFomCh7ox6UPEpfWOv4238VQ2
         ty4Csxz8XLX+EiO0Y2nFD4Icj7SvHdY4lMrIDHiGLcDx5FE0rX4J9yeXOSjnPN3BIPaA
         dthYC+i3ptoBYW6foJVPkupGLdp84v4vU78ETbd/P7T/2/7qqEBUG5DDYy9kwwKESpEj
         4CuTDbpbAalgC0AHiFUd7oLcpCW5M062f3kNqhkoMpBwY501G8ZKl1aOgEpUblJWL3p6
         IufiKdJi6USzcPuiFLFmmltd62xn4L+5YkL5D7CBcVAoxPqTQ2jMZ3//XIkAFhETFdMi
         bB4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M/EQ95lEIEpaZtUWedAN6h0qYdq+xaChH+X6VQGL5Xo=;
        b=g07R0sqtcG22mVqHDXkcKGCDSCTCHvHb6z0o4Dy1Izs3u2d5Uq7WWhF09cFOKfduUw
         6k6BjcSJHmracwDGXzeFNB3lS/AHYimYq2fj9LfNaux4yBWRQUHSBrGr6loBk2W+57H4
         siAvRw5SPtpyABRW1HT2+XaZxNeC2d/vNFr6VoBe7lP0M6dfm1KikyBUstzAoDVjocAN
         9/EdYU0AfmY1mb7XWJc8K8Nk/H5AiSp5+vsECKh8n18yOgnbTRrEjfafNsqFn1f8/ZNL
         /iBpiwwRMjIYu0vuboesjJejMCPaSrI7OM7gCRfsNYZvxrcGWTLEmA36sgXJ7OsGfm4O
         65JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M/EQ95lEIEpaZtUWedAN6h0qYdq+xaChH+X6VQGL5Xo=;
        b=HNnc37vGC0UabqwLi3ASdmuRRP6FkkHYyhtmXgI4oSjc6CMam1974fIkRPAepn6X/N
         yjqWRMwhuBAICfcg41oVv8FjPcom4lONriCYC6ar0vbClLsZYJ/o+E0Wfe5TmM2Js5tz
         /dun0NtiW0DympUmA2drP9VWw88rBggzld9yDShdNzr3/NBeAfgdpIqFcYAVmUHlgg87
         41be/Mr2lODF/fzQO8cR/8Ia1uDFfJkCj5+fQLrUJkw4kKPzgCQvdOkhWt2vQqGcJdrZ
         sQJzNLJHOsXQRuzhZMAe2fUZQe6PG1tScxO9tHapMEqkyxFXBWX/FYxtSBWmDR3PkIal
         t84g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVrLdYRDGE8zv9A+2Oh4Kqg2d3GZWQQYLz71yWg0pPQHOWTwnvo
	iYgF4mPAO7+t0evHkHiN0VM=
X-Google-Smtp-Source: APXvYqwbHDvE+35bB4KMxlD/lFtCAQc5rSvOiwl/HJEopyCAVDS9CQvDcjPC7xJzxuljlQfZlbDWnA==
X-Received: by 2002:a0c:fde8:: with SMTP id m8mr597280qvu.4.1571265660662;
        Wed, 16 Oct 2019 15:41:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4852:: with SMTP id v79ls74235qka.2.gmail; Wed, 16 Oct
 2019 15:41:00 -0700 (PDT)
X-Received: by 2002:ae9:ed57:: with SMTP id c84mr331838qkg.426.1571265660145;
        Wed, 16 Oct 2019 15:41:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571265660; cv=none;
        d=google.com; s=arc-20160816;
        b=fuG7+GhjOCN1jrTgJUvpPYDoVbNFxOSqdq+6vGWyj0dAsI4r6Lt/fCOSSDGAuO1pPO
         uVToOiskuAt9YfGC6TnmpFYkzfRdaUl1vk0rdJ+/QqI+yMlkZk8qI2Zz99ZlGvDpTRRg
         eEHDtDT11p6ce+c0ZzUYq+zuZ4uIOFTSmX7XewlnFb8TsGHl4wyN2lpJ+EyNofrW92pB
         tGF2QaG9rIvQSboguUolYyk+/zxqXwPougx+R9VAca9daKtWIwmclMxLM25DKSHfZgUq
         fxkFtwXkn5ukkpsBdDYT6YpVXHEhMqvQcX02TLV3j7WcRG9asPpcrs33ojMPC0Mz7+tA
         rn6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=/wiJ65tCCwaXlhldDV02/0ILnbQ3PWCMS7MHA/4NFxE=;
        b=Z7UbzznHp8HHhvr9Nztczoumme/NbxIdOjKoheWoxqwul48KLAR4NG+73MQyZjA1vf
         nGBeErSkphb7a5KsuM6iEX3ijoACj12kUJ8Uw08B1pPWedbSQBc1RSh+A+IImZNrdQIF
         XTPCuyAvmgq8KvfaBSzKV3CISyFkeV5YMUvoZcsryzeENeJCN0Bv5gol19WouI4hNn1k
         S6Du32qh3MzH9w5OIUNQbvpEoHhXLrzVukpnxigKczj8X2EODB14xalkiMPmVN9H/iz9
         hb+cMpqKL2CUJiPRABl2kBhN3h2zrBFHanKFKXaCjxHOVqFv9ZnGJ+7FeTGk7t4lbIjm
         oTtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id t53si20701qte.2.2019.10.16.15.40.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Oct 2019 15:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2019 15:40:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,305,1566889200"; 
   d="gz'50?scan'50,208,50";a="370947286"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 16 Oct 2019 15:40:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iKryQ-000C3K-UP; Thu, 17 Oct 2019 06:40:54 +0800
Date: Thu, 17 Oct 2019 06:39:57 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [peterz-queue:x86/static_call 29/34]
 drivers/usb/typec/ucsi/./trace.h:29:1: error: implicit declaration of
 function 'STATIC_CALL_TRAMP_ADDR'
Message-ID: <201910170656.rdKFkgH3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pwi47mvlpptiypi4"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--pwi47mvlpptiypi4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
CC: Peter Zijlstra <peterz@infradead.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/static_call
head:   814cfbceba54e980b1f949a13d04b1909bbe80da
commit: 742ae762f81fd75c8bbcbfb3a807502aabd75291 [29/34] tracepoints: Use static_call
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 1f5823b788037b0dc8c846a22ef6a5a8a0714af7)
reproduce:
        git checkout 742ae762f81fd75c8bbcbfb3a807502aabd75291
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
>> drivers/usb/typec/ucsi/./trace.h:29:1: error: implicit declaration of function 'STATIC_CALL_TRAMP_ADDR' [-Werror,-Wimplicit-function-declaration]
   DEFINE_EVENT(ucsi_log_ack, ucsi_ack,
   ^
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
>> drivers/usb/typec/ucsi/./trace.h:29:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_EVENT(ucsi_log_ack, ucsi_ack,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
>> drivers/usb/typec/ucsi/./trace.h:29:1: error: initializer element is not a compile-time constant
   DEFINE_EVENT(ucsi_log_ack, ucsi_ack,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
   drivers/usb/typec/ucsi/./trace.h:47:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_EVENT(ucsi_log_control, ucsi_command,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
   drivers/usb/typec/ucsi/./trace.h:47:1: error: initializer element is not a compile-time constant
   DEFINE_EVENT(ucsi_log_control, ucsi_command,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
   drivers/usb/typec/ucsi/./trace.h:68:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_EVENT(ucsi_log_command, ucsi_run_command,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
   drivers/usb/typec/ucsi/./trace.h:68:1: error: initializer element is not a compile-time constant
   DEFINE_EVENT(ucsi_log_command, ucsi_run_command,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
   drivers/usb/typec/ucsi/./trace.h:73:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_EVENT(ucsi_log_command, ucsi_reset_ppm,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/usb/typec/ucsi/trace.c:4:
   In file included from drivers/usb/typec/ucsi/./trace.h:173:
   In file included from include/trace/define_trace.h:95:
   drivers/usb/typec/ucsi/./trace.h:73:1: error: initializer element is not a compile-time constant
   DEFINE_EVENT(ucsi_log_command, ucsi_reset_ppm,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:57:2: note: expanded from macro 'DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
--
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
>> fs/cifs/./trace.h:59:1: error: implicit declaration of function 'STATIC_CALL_TRAMP_ADDR' [-Werror,-Wimplicit-function-declaration]
   DEFINE_SMB3_RW_ERR_EVENT(write_err);
   ^
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
   include/trace/define_trace.h:57:2: note: expanded from macro '\
   DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
>> fs/cifs/./trace.h:59:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_SMB3_RW_ERR_EVENT(write_err);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
   include/trace/define_trace.h:57:2: note: expanded from macro '\
   DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
>> fs/cifs/./trace.h:59:1: error: initializer element is not a compile-time constant
   DEFINE_SMB3_RW_ERR_EVENT(write_err);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
   include/trace/define_trace.h:57:2: note: expanded from macro '\
   DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
   fs/cifs/./trace.h:60:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_SMB3_RW_ERR_EVENT(read_err);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
   include/trace/define_trace.h:57:2: note: expanded from macro '\
   DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
   fs/cifs/./trace.h:60:1: error: initializer element is not a compile-time constant
   DEFINE_SMB3_RW_ERR_EVENT(read_err);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
   include/trace/define_trace.h:57:2: note: expanded from macro '\
   DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
   fs/cifs/./trace.h:61:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_SMB3_RW_ERR_EVENT(query_dir_err);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
   include/trace/define_trace.h:57:2: note: expanded from macro '\
   DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
   fs/cifs/./trace.h:61:1: error: initializer element is not a compile-time constant
   DEFINE_SMB3_RW_ERR_EVENT(query_dir_err);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
   include/trace/define_trace.h:57:2: note: expanded from macro '\
   DEFINE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/trace.c:8:
   In file included from fs/cifs/./trace.h:884:
   In file included from include/trace/define_trace.h:95:
   fs/cifs/./trace.h:62:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   DEFINE_SMB3_RW_ERR_EVENT(zero_err);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/cifs/./trace.h:48:49: note: expanded from macro 'DEFINE_SMB3_RW_ERR_EVENT'
   #define DEFINE_SMB3_RW_ERR_EVENT(name)          \
                                                   ^
--
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
>> fs/gfs2/./trace_gfs2.h:91:1: error: implicit declaration of function 'STATIC_CALL_TRAMP_ADDR' [-Werror,-Wimplicit-function-declaration]
   TRACE_EVENT(gfs2_glock_state_change,
   ^
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
>> fs/gfs2/./trace_gfs2.h:91:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   TRACE_EVENT(gfs2_glock_state_change,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
>> fs/gfs2/./trace_gfs2.h:91:1: error: initializer element is not a compile-time constant
   TRACE_EVENT(gfs2_glock_state_change,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
   fs/gfs2/./trace_gfs2.h:130:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   TRACE_EVENT(gfs2_glock_put,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
   fs/gfs2/./trace_gfs2.h:130:1: error: initializer element is not a compile-time constant
   TRACE_EVENT(gfs2_glock_put,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
   fs/gfs2/./trace_gfs2.h:162:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   TRACE_EVENT(gfs2_demote_rq,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
   fs/gfs2/./trace_gfs2.h:162:1: error: initializer element is not a compile-time constant
   TRACE_EVENT(gfs2_demote_rq,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
   fs/gfs2/./trace_gfs2.h:199:1: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
   TRACE_EVENT(gfs2_promote,
   ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/gfs2/glock.c:49:
   In file included from fs/gfs2/./trace_gfs2.h:632:
   In file included from include/trace/define_trace.h:95:
   fs/gfs2/./trace_gfs2.h:199:1: error: initializer element is not a compile-time constant
   TRACE_EVENT(gfs2_promote,
   ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:28:2: note: expanded from macro 'TRACE_EVENT'
           DEFINE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:313:2: note: expanded from macro 'DEFINE_TRACE'
           DEFINE_TRACE_FN(name, NULL, NULL, PARAMS(proto), PARAMS(args));
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:292:5: note: expanded from macro 'DEFINE_TRACE_FN'
                     STATIC_CALL_TRAMP_ADDR(tp_func_##name),               \
..

vim +/STATIC_CALL_TRAMP_ADDR +29 drivers/usb/typec/ucsi/./trace.h

c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   28  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  @29  DEFINE_EVENT(ucsi_log_ack, ucsi_ack,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   30  	TP_PROTO(u8 ack),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   31  	TP_ARGS(ack)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   32  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   33  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   34  DECLARE_EVENT_CLASS(ucsi_log_control,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   35  	TP_PROTO(struct ucsi_control *ctrl),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   36  	TP_ARGS(ctrl),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   37  	TP_STRUCT__entry(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   38  		__field(u64, ctrl)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   39  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   40  	TP_fast_assign(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   41  		__entry->ctrl = ctrl->raw_cmd;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   42  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   43  	TP_printk("control=%08llx (%s)", __entry->ctrl,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   44  		ucsi_cmd_str(__entry->ctrl))
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   45  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   46  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   47  DEFINE_EVENT(ucsi_log_control, ucsi_command,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   48  	TP_PROTO(struct ucsi_control *ctrl),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   49  	TP_ARGS(ctrl)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   50  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   51  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   52  DECLARE_EVENT_CLASS(ucsi_log_command,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   53  	TP_PROTO(struct ucsi_control *ctrl, int ret),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   54  	TP_ARGS(ctrl, ret),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   55  	TP_STRUCT__entry(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   56  		__field(u64, ctrl)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   57  		__field(int, ret)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   58  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   59  	TP_fast_assign(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   60  		__entry->ctrl = ctrl->raw_cmd;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   61  		__entry->ret = ret;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   62  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   63  	TP_printk("%s -> %s (err=%d)", ucsi_cmd_str(__entry->ctrl),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   64  		__entry->ret < 0 ? "FAIL" : "OK",
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   65  		__entry->ret < 0 ? __entry->ret : 0)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   66  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   67  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   68  DEFINE_EVENT(ucsi_log_command, ucsi_run_command,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   69  	TP_PROTO(struct ucsi_control *ctrl, int ret),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   70  	TP_ARGS(ctrl, ret)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   71  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   72  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   73  DEFINE_EVENT(ucsi_log_command, ucsi_reset_ppm,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   74  	TP_PROTO(struct ucsi_control *ctrl, int ret),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   75  	TP_ARGS(ctrl, ret)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   76  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   77  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   78  DECLARE_EVENT_CLASS(ucsi_log_cci,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   79  	TP_PROTO(u32 cci),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   80  	TP_ARGS(cci),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   81  	TP_STRUCT__entry(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   82  		__field(u32, cci)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   83  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   84  	TP_fast_assign(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   85  		__entry->cci = cci;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   86  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   87  	TP_printk("CCI=%08x %s", __entry->cci, ucsi_cci_str(__entry->cci))
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   88  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   89  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   90  DEFINE_EVENT(ucsi_log_cci, ucsi_notify,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   91  	TP_PROTO(u32 cci),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   92  	TP_ARGS(cci)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   93  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   94  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   95  DECLARE_EVENT_CLASS(ucsi_log_connector_status,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   96  	TP_PROTO(int port, struct ucsi_connector_status *status),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   97  	TP_ARGS(port, status),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   98  	TP_STRUCT__entry(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16   99  		__field(int, port)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  100  		__field(u16, change)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  101  		__field(u8, opmode)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  102  		__field(u8, connected)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  103  		__field(u8, pwr_dir)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  104  		__field(u8, partner_flags)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  105  		__field(u8, partner_type)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  106  		__field(u32, request_data_obj)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  107  		__field(u8, bc_status)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  108  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  109  	TP_fast_assign(
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  110  		__entry->port = port - 1;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  111  		__entry->change = status->change;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  112  		__entry->opmode = status->pwr_op_mode;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  113  		__entry->connected = status->connected;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  114  		__entry->pwr_dir = status->pwr_dir;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  115  		__entry->partner_flags = status->partner_flags;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  116  		__entry->partner_type = status->partner_type;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  117  		__entry->request_data_obj = status->request_data_obj;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  118  		__entry->bc_status = status->bc_status;
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  119  	),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  120  	TP_printk("port%d status: change=%04x, opmode=%x, connected=%d, "
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  121  		"sourcing=%d, partner_flags=%x, partner_type=%x, "
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  122  		"request_data_obj=%08x, BC status=%x", __entry->port,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  123  		__entry->change, __entry->opmode, __entry->connected,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  124  		__entry->pwr_dir, __entry->partner_flags, __entry->partner_type,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  125  		__entry->request_data_obj, __entry->bc_status)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  126  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  127  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  128  DEFINE_EVENT(ucsi_log_connector_status, ucsi_connector_change,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  129  	TP_PROTO(int port, struct ucsi_connector_status *status),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  130  	TP_ARGS(port, status)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  131  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  132  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  133  DEFINE_EVENT(ucsi_log_connector_status, ucsi_register_port,
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  134  	TP_PROTO(int port, struct ucsi_connector_status *status),
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  135  	TP_ARGS(port, status)
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  136  );
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  137  
ad74b8649beaf1 Heikki Krogerus 2019-04-23  138  DECLARE_EVENT_CLASS(ucsi_log_register_altmode,
ad74b8649beaf1 Heikki Krogerus 2019-04-23  139  	TP_PROTO(u8 recipient, struct typec_altmode *alt),
ad74b8649beaf1 Heikki Krogerus 2019-04-23  140  	TP_ARGS(recipient, alt),
ad74b8649beaf1 Heikki Krogerus 2019-04-23  141  	TP_STRUCT__entry(
ad74b8649beaf1 Heikki Krogerus 2019-04-23  142  		__field(u8, recipient)
ad74b8649beaf1 Heikki Krogerus 2019-04-23  143  		__field(u16, svid)
ad74b8649beaf1 Heikki Krogerus 2019-04-23  144  		__field(u8, mode)
ad74b8649beaf1 Heikki Krogerus 2019-04-23  145  		__field(u32, vdo)
ad74b8649beaf1 Heikki Krogerus 2019-04-23  146  	),
ad74b8649beaf1 Heikki Krogerus 2019-04-23  147  	TP_fast_assign(
ad74b8649beaf1 Heikki Krogerus 2019-04-23  148  		__entry->recipient = recipient;
ad74b8649beaf1 Heikki Krogerus 2019-04-23  149  		__entry->svid = alt->svid;
ad74b8649beaf1 Heikki Krogerus 2019-04-23  150  		__entry->mode = alt->mode;
ad74b8649beaf1 Heikki Krogerus 2019-04-23  151  		__entry->vdo = alt->vdo;
ad74b8649beaf1 Heikki Krogerus 2019-04-23  152  	),
ad74b8649beaf1 Heikki Krogerus 2019-04-23  153  	TP_printk("%s alt mode: svid %04x, mode %d vdo %x",
ad74b8649beaf1 Heikki Krogerus 2019-04-23  154  		  ucsi_recipient_str(__entry->recipient), __entry->svid,
ad74b8649beaf1 Heikki Krogerus 2019-04-23  155  		  __entry->mode, __entry->vdo)
ad74b8649beaf1 Heikki Krogerus 2019-04-23  156  );
ad74b8649beaf1 Heikki Krogerus 2019-04-23  157  
ad74b8649beaf1 Heikki Krogerus 2019-04-23  158  DEFINE_EVENT(ucsi_log_register_altmode, ucsi_register_altmode,
ad74b8649beaf1 Heikki Krogerus 2019-04-23  159  	TP_PROTO(u8 recipient, struct typec_altmode *alt),
ad74b8649beaf1 Heikki Krogerus 2019-04-23  160  	TP_ARGS(recipient, alt)
ad74b8649beaf1 Heikki Krogerus 2019-04-23  161  );
ad74b8649beaf1 Heikki Krogerus 2019-04-23  162  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  163  #endif /* __UCSI_TRACE_H */
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  164  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  165  /* This part must be outside protection */
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  166  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  167  #undef TRACE_INCLUDE_PATH
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  168  #define TRACE_INCLUDE_PATH .
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  169  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  170  #undef TRACE_INCLUDE_FILE
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  171  #define TRACE_INCLUDE_FILE trace
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16  172  
c1b0bc2dabfa88 Heikki Krogerus 2017-06-16 @173  #include <trace/define_trace.h>

:::::: The code at line 29 was first introduced by commit
:::::: c1b0bc2dabfa884dea49c02adaf3cd6b52b33d2f usb: typec: Add support for UCSI interface

:::::: TO: Heikki Krogerus <heikki.krogerus@linux.intel.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910170656.rdKFkgH3%25lkp%40intel.com.

--pwi47mvlpptiypi4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--pwi47mvlpptiypi4--
