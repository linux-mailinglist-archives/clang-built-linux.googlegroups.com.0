Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB56A27WAKGQEU6CWEWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 468CAC9DC2
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 13:50:18 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id h145sf954914vke.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 04:50:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570103417; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0KNobrt4Eae36hWH0pP99HpDduBXoNrzBSOTocJyn2X3s6x8O8U3+8FSHDAGv4iA9
         bOoJVfPHa/TMPpZtndUjlc9xAzgDDW7l6Ho/5z4LxAR6YXphNAu9zXs1Y834OALLMkGe
         2Ze66FoNR3XfeXv4ousPvC/rTb/hL+cmR5FWHnKB7P2/Lveod5CmmF77wI8MhWyeBM95
         O7KNK0cyx+Wa2Q342CrRml6KtbobWMWe2//cnZ904bJxH+8hn28uDRrHIr6MY/fPvgsl
         5h4SFRTGQPFYI8lTJ25wDr03bv/yh2iju419njVs5FoKo6Ik0XM/oEL7xpqsMpmuZTeV
         Sayw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zxWD62HK1yBP6+8uLKLmyWKug1B3egFoXldFdPxjU9A=;
        b=gV2eFLCt8TEwekAzaG+PfqpgmbDnCL654KdDiSUEnUlxYhWNLgtjbWz3S8f4saOhtL
         0RgtNirXbRF9lj1Vmfo3Wz1uZfGoqYABWjkGcosGql7lxoNNqkybBcBV/fa2IZKRVm8K
         vzAiZC4wtsRAFimiPNAaJ3mAp4VGqBHS8CMr7PrCEocVb7j6Qan6oK+TngF8XTaCUY8W
         TvvCYasqm8pLeRMU1ZWc76DtAVXfl/bBOwLMo9xPGD7lPqO0iLIswQffhCWogqGTWals
         Dm2JcoLFbaQCn4csDO73PGPmde67fjsz6hmoK4hmf5UtpajcoSgaBqEyLy73lkn9TUkm
         NtyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zxWD62HK1yBP6+8uLKLmyWKug1B3egFoXldFdPxjU9A=;
        b=VOMXyO2/OXpy5BYvUgqcrUv8sEaGkVlZJmFiOHML8qI//LmXJhNlQKUpGEuBA2F87r
         A2UKyiDcMeL4+nuJwwrleHTEBe99EMiFFhTBYEqt35do+gexeB+QCpwfxBicH82C81lu
         oZESCOg/SZiXhPeQudjM4VSEUM/LsCCYdhSXXqQ6LEMnMBwFQOPbwLAO8G9WfJwlOpZQ
         Kdvg2tbdPY3Xrkg7QTG2bboduK+Vl8E75DsTG6xEnERMKToGIGLddJzEVE+lo+qGDbC8
         kmsUOG+P6pTLWzSMjTJnDg0exLpVAnXntidAcDpBrDZE5xlS2bcvPNB8bFp+CDW3oKR7
         h8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zxWD62HK1yBP6+8uLKLmyWKug1B3egFoXldFdPxjU9A=;
        b=E3sTY6WDKjpqjPwqWYiTo8JxDkQ13yJVpvaGEfiF4AoNI1mrAbGa/JGhterkvP0uDF
         ecWpt6yuUdhAP4ZfRDv9vRS4g9C8d8JvjVASout7iv0KaaFVNTHJxOzDHBiMKsZGAg8M
         ZXZiiMQkbIH6lxclQDaoRWs4J0e2TUTFANzVoHyG4wUtiPCBaXaXNu+Ye/XdHRxpAJ2n
         Fwl3/Z++dpVJd+cRfMQ26E/qxuyDYgrpPTR1WOoa/WRrLspTzjVw6GlkfwBH4zQvzuqA
         gTqZDpLKe0hxQ70v0QIku1pEAgsBFBCM4Jf7hbEXD9HGtN7qxusUUdbgePnvVENSrdVN
         xlNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXGRYl62cz7uZPklC5rMdpAU3FDpx1su8Gi00oXFdAqcjcJtfl/
	3/1k1kwpiLEzUQkGsMEQ6IE=
X-Google-Smtp-Source: APXvYqxgZqPOm3ftg51SjnBaYVR/vM6yAEligqLBe/qE6gGm2gYbgxYtyGzNf2WMq6Jr/Y4Bqhqy9g==
X-Received: by 2002:ab0:247:: with SMTP id 65mr4544449uas.13.1570103415622;
        Thu, 03 Oct 2019 04:50:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e891:: with SMTP id x17ls606601vsn.13.gmail; Thu, 03 Oct
 2019 04:50:15 -0700 (PDT)
X-Received: by 2002:a67:f5ca:: with SMTP id t10mr4569331vso.239.1570103415240;
        Thu, 03 Oct 2019 04:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570103415; cv=none;
        d=google.com; s=arc-20160816;
        b=Tgc6/uvMFOs6+F3piaQnRfkbUtQkdxtS0Y6wDxgontFLAoPIkS9fCXXO/f+aTg1iF/
         zWmFYxPxgP3rsaWmQJxLOK79rcNXK1SG7Zm7TbCwWHQmV8uG4rWNvDF90Gdh5N+95zkA
         DG/jMqtPoZFDsXQuse3T2mMFN85hzPTfIm8FNaGSq5ZRAZNJDK0T9QziKy9zopk/OnEc
         dc7HePS4vtFtLcmHuLL/IcNh2Q3mk1rbxXYGeBetkFSeuq/R1i8qU62vyfr1kbV/73IP
         VHeVz9N8g0e/1x546wrHQV9H31AsjcRlo/AoHyraJHTyg6KmrhYmP7e/0FVSFglLRgUB
         nNTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=MHrSBr2JrUIdyhcrI7NOvDPt4CsjD+YnE4ZKMzn2F6c=;
        b=aXmTQZ5qol23P26lzn9yjWMEVEXmFsOBO0aMCRsm1Q6srPvXSFtYiwpEzj0jNT5SSL
         hy7rTTbzOZelniGTBbkyykWVjE7ZkWjBQfDh8kvPSX2Gbn/1Y7UreZBA+y/PJDgqiRJl
         og6yLmn2YHmDexzDyCJKi0C4QZtAB0Lxn7/Mt3c76tjV9ZfO0mfq+VbWp66eRAHM3oA2
         xK296ej8dvahh+2qHxRncD9DqI2yL8+sIRcFQCOa3L/szY8isrxMKsRIDyoAWMcFpmgv
         jBFbAJ0v8PEwei+6UB9JpLROS/+ArxBd6XV53cLCHqROOJ0dcgSveMIVK3btTmiQxfUh
         Xlqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id h184si137032vka.3.2019.10.03.04.50.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 04:50:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2019 04:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; 
   d="gz'50?scan'50,208,50";a="216785957"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 03 Oct 2019 04:50:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iFzcX-0007rg-Cn; Thu, 03 Oct 2019 19:50:09 +0800
Date: Thu, 3 Oct 2019 19:49:24 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [ast:btf_vmlinux 1/7] include/trace/events/rtc.h:38:1: warning:
 redefinition of typedef 'btf_trace_rtc_time_alarm_class' is a C11 feature
Message-ID: <201910031913.5bP81ECm%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rhwuhzjpxqnbnygl"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--rhwuhzjpxqnbnygl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Alexei Starovoitov <ast@kernel.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git btf_vmlinux
head:   cc9b0a180111f856b93a805fdfc2fb288c41fab2
commit: 82b70116b6ba453e1dda06c7126e100d594b8e0a [1/7] bpf: add typecast to help vmlinux BTF generation
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 38ac6bdb83a9bb76c109901960c20d1714339891)
reproduce:
        git checkout 82b70116b6ba453e1dda06c7126e100d594b8e0a
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers//rtc/interface.c:18:
   In file included from include/trace/events/rtc.h:206:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
>> include/trace/events/rtc.h:38:1: warning: redefinition of typedef 'btf_trace_rtc_time_alarm_class' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(rtc_time_alarm_class, rtc_read_time,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:93:1: note: expanded from here
   btf_trace_rtc_time_alarm_class
   ^
   include/trace/events/rtc.h:31:1: note: previous definition is here
   DEFINE_EVENT(rtc_time_alarm_class, rtc_set_time,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:85:1: note: expanded from here
   btf_trace_rtc_time_alarm_class
   ^
   In file included from drivers//rtc/interface.c:18:
   In file included from include/trace/events/rtc.h:206:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
   include/trace/events/rtc.h:45:1: warning: redefinition of typedef 'btf_trace_rtc_time_alarm_class' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(rtc_time_alarm_class, rtc_set_alarm,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:101:1: note: expanded from here
   btf_trace_rtc_time_alarm_class
   ^
   include/trace/events/rtc.h:38:1: note: previous definition is here
   DEFINE_EVENT(rtc_time_alarm_class, rtc_read_time,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:93:1: note: expanded from here
   btf_trace_rtc_time_alarm_class
   ^
   In file included from drivers//rtc/interface.c:18:
   In file included from include/trace/events/rtc.h:206:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
   include/trace/events/rtc.h:52:1: warning: redefinition of typedef 'btf_trace_rtc_time_alarm_class' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(rtc_time_alarm_class, rtc_read_alarm,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:109:1: note: expanded from here
   btf_trace_rtc_time_alarm_class
   ^
   include/trace/events/rtc.h:45:1: note: previous definition is here
   DEFINE_EVENT(rtc_time_alarm_class, rtc_set_alarm,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:101:1: note: expanded from here
   btf_trace_rtc_time_alarm_class
   ^
   In file included from drivers//rtc/interface.c:18:
   In file included from include/trace/events/rtc.h:206:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
>> include/trace/events/rtc.h:152:1: warning: redefinition of typedef 'btf_trace_rtc_offset_class' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(rtc_offset_class, rtc_read_offset,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:36:1: note: expanded from here
   btf_trace_rtc_offset_class
   ^
   include/trace/events/rtc.h:145:1: note: previous definition is here
   DEFINE_EVENT(rtc_offset_class, rtc_set_offset,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:28:1: note: expanded from here
   btf_trace_rtc_offset_class
   ^
   In file included from drivers//rtc/interface.c:18:
   In file included from include/trace/events/rtc.h:206:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
>> include/trace/events/rtc.h:189:1: warning: redefinition of typedef 'btf_trace_rtc_timer_class' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(rtc_timer_class, rtc_timer_dequeue,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:55:1: note: expanded from here
   btf_trace_rtc_timer_class
   ^
   include/trace/events/rtc.h:182:1: note: previous definition is here
   DEFINE_EVENT(rtc_timer_class, rtc_timer_enqueue,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:47:1: note: expanded from here
   btf_trace_rtc_timer_class
   ^
   In file included from drivers//rtc/interface.c:18:
   In file included from include/trace/events/rtc.h:206:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
   include/trace/events/rtc.h:196:1: warning: redefinition of typedef 'btf_trace_rtc_timer_class' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(rtc_timer_class, rtc_timer_fired,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:63:1: note: expanded from here
   btf_trace_rtc_timer_class
   ^
   include/trace/events/rtc.h:189:1: note: previous definition is here
   DEFINE_EVENT(rtc_timer_class, rtc_timer_dequeue,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:55:1: note: expanded from here
   btf_trace_rtc_timer_class
   ^
   6 warnings generated.
--
   In file included from drivers//scsi/scsi_transport_iscsi.c:28:
   In file included from include/trace/events/iscsi.h:107:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
>> include/trace/events/iscsi.h:53:1: warning: redefinition of typedef 'btf_trace_iscsi_log_msg' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_session,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:83:1: note: expanded from here
   btf_trace_iscsi_log_msg
   ^
   include/trace/events/iscsi.h:44:1: note: previous definition is here
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_conn,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:75:1: note: expanded from here
   btf_trace_iscsi_log_msg
   ^
   In file included from drivers//scsi/scsi_transport_iscsi.c:28:
   In file included from include/trace/events/iscsi.h:107:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
   include/trace/events/iscsi.h:62:1: warning: redefinition of typedef 'btf_trace_iscsi_log_msg' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_eh,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:91:1: note: expanded from here
   btf_trace_iscsi_log_msg
   ^
   include/trace/events/iscsi.h:53:1: note: previous definition is here
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_session,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:83:1: note: expanded from here
   btf_trace_iscsi_log_msg
   ^
   In file included from drivers//scsi/scsi_transport_iscsi.c:28:
   In file included from include/trace/events/iscsi.h:107:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
   include/trace/events/iscsi.h:71:1: warning: redefinition of typedef 'btf_trace_iscsi_log_msg' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_tcp,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:99:1: note: expanded from here
   btf_trace_iscsi_log_msg
   ^
   include/trace/events/iscsi.h:62:1: note: previous definition is here
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_eh,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:91:1: note: expanded from here
   btf_trace_iscsi_log_msg
   ^
   In file included from drivers//scsi/scsi_transport_iscsi.c:28:
   In file included from include/trace/events/iscsi.h:107:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
   include/trace/events/iscsi.h:80:1: warning: redefinition of typedef 'btf_trace_iscsi_log_msg' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_sw_tcp,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:107:1: note: expanded from here
   btf_trace_iscsi_log_msg
   ^
   include/trace/events/iscsi.h:71:1: note: previous definition is here
   DEFINE_EVENT(iscsi_log_msg, iscsi_dbg_tcp,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
--
   In file included from drivers//scsi/scsi.c:74:
   In file included from include/trace/events/scsi.h:364:
   In file included from include/trace/define_trace.h:104:
   In file included from include/trace/bpf_probe.h:110:
>> include/trace/events/scsi.h:340:1: warning: redefinition of typedef 'btf_trace_scsi_cmd_done_timeout_template' is a C11 feature [-Wtypedef-redefinition]
   DEFINE_EVENT(scsi_cmd_done_timeout_template, scsi_dispatch_cmd_timeout,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:4:1: note: expanded from here
   btf_trace_scsi_cmd_done_timeout_template
   ^
   include/trace/events/scsi.h:336:1: note: previous definition is here
   DEFINE_EVENT(scsi_cmd_done_timeout_template, scsi_dispatch_cmd_done,
   ^
   include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
           __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
           ^
   include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
   typedef void (*btf_trace_##template)(void *__data, proto);              \
                  ^
   <scratch space>:20:1: note: expanded from here
   btf_trace_scsi_cmd_done_timeout_template
   ^
   1 warning generated.
..

vim +/btf_trace_rtc_time_alarm_class +38 include/trace/events/rtc.h

29a1f599c0cc37 Baolin Wang 2017-12-14   37  
29a1f599c0cc37 Baolin Wang 2017-12-14  @38  DEFINE_EVENT(rtc_time_alarm_class, rtc_read_time,
29a1f599c0cc37 Baolin Wang 2017-12-14   39  
29a1f599c0cc37 Baolin Wang 2017-12-14   40  	TP_PROTO(time64_t secs, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14   41  
29a1f599c0cc37 Baolin Wang 2017-12-14   42  	TP_ARGS(secs, err)
29a1f599c0cc37 Baolin Wang 2017-12-14   43  );
29a1f599c0cc37 Baolin Wang 2017-12-14   44  
29a1f599c0cc37 Baolin Wang 2017-12-14   45  DEFINE_EVENT(rtc_time_alarm_class, rtc_set_alarm,
29a1f599c0cc37 Baolin Wang 2017-12-14   46  
29a1f599c0cc37 Baolin Wang 2017-12-14   47  	TP_PROTO(time64_t secs, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14   48  
29a1f599c0cc37 Baolin Wang 2017-12-14   49  	TP_ARGS(secs, err)
29a1f599c0cc37 Baolin Wang 2017-12-14   50  );
29a1f599c0cc37 Baolin Wang 2017-12-14   51  
29a1f599c0cc37 Baolin Wang 2017-12-14   52  DEFINE_EVENT(rtc_time_alarm_class, rtc_read_alarm,
29a1f599c0cc37 Baolin Wang 2017-12-14   53  
29a1f599c0cc37 Baolin Wang 2017-12-14   54  	TP_PROTO(time64_t secs, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14   55  
29a1f599c0cc37 Baolin Wang 2017-12-14   56  	TP_ARGS(secs, err)
29a1f599c0cc37 Baolin Wang 2017-12-14   57  );
29a1f599c0cc37 Baolin Wang 2017-12-14   58  
29a1f599c0cc37 Baolin Wang 2017-12-14   59  TRACE_EVENT(rtc_irq_set_freq,
29a1f599c0cc37 Baolin Wang 2017-12-14   60  
29a1f599c0cc37 Baolin Wang 2017-12-14   61  	TP_PROTO(int freq, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14   62  
29a1f599c0cc37 Baolin Wang 2017-12-14   63  	TP_ARGS(freq, err),
29a1f599c0cc37 Baolin Wang 2017-12-14   64  
29a1f599c0cc37 Baolin Wang 2017-12-14   65  	TP_STRUCT__entry(
29a1f599c0cc37 Baolin Wang 2017-12-14   66  		__field(int, freq)
29a1f599c0cc37 Baolin Wang 2017-12-14   67  		__field(int, err)
29a1f599c0cc37 Baolin Wang 2017-12-14   68  	),
29a1f599c0cc37 Baolin Wang 2017-12-14   69  
29a1f599c0cc37 Baolin Wang 2017-12-14   70  	TP_fast_assign(
29a1f599c0cc37 Baolin Wang 2017-12-14   71  		__entry->freq = freq;
29a1f599c0cc37 Baolin Wang 2017-12-14   72  		__entry->err = err;
29a1f599c0cc37 Baolin Wang 2017-12-14   73  	),
29a1f599c0cc37 Baolin Wang 2017-12-14   74  
29a1f599c0cc37 Baolin Wang 2017-12-14   75  	TP_printk("set RTC periodic IRQ frequency:%u (%d)",
29a1f599c0cc37 Baolin Wang 2017-12-14   76  		  __entry->freq, __entry->err
29a1f599c0cc37 Baolin Wang 2017-12-14   77  	)
29a1f599c0cc37 Baolin Wang 2017-12-14   78  );
29a1f599c0cc37 Baolin Wang 2017-12-14   79  
29a1f599c0cc37 Baolin Wang 2017-12-14   80  TRACE_EVENT(rtc_irq_set_state,
29a1f599c0cc37 Baolin Wang 2017-12-14   81  
29a1f599c0cc37 Baolin Wang 2017-12-14   82  	TP_PROTO(int enabled, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14   83  
29a1f599c0cc37 Baolin Wang 2017-12-14   84  	TP_ARGS(enabled, err),
29a1f599c0cc37 Baolin Wang 2017-12-14   85  
29a1f599c0cc37 Baolin Wang 2017-12-14   86  	TP_STRUCT__entry(
29a1f599c0cc37 Baolin Wang 2017-12-14   87  		__field(int, enabled)
29a1f599c0cc37 Baolin Wang 2017-12-14   88  		__field(int, err)
29a1f599c0cc37 Baolin Wang 2017-12-14   89  	),
29a1f599c0cc37 Baolin Wang 2017-12-14   90  
29a1f599c0cc37 Baolin Wang 2017-12-14   91  	TP_fast_assign(
29a1f599c0cc37 Baolin Wang 2017-12-14   92  		__entry->enabled = enabled;
29a1f599c0cc37 Baolin Wang 2017-12-14   93  		__entry->err = err;
29a1f599c0cc37 Baolin Wang 2017-12-14   94  	),
29a1f599c0cc37 Baolin Wang 2017-12-14   95  
29a1f599c0cc37 Baolin Wang 2017-12-14   96  	TP_printk("%s RTC 2^N Hz periodic IRQs (%d)",
29a1f599c0cc37 Baolin Wang 2017-12-14   97  		  __entry->enabled ? "enable" : "disable",
29a1f599c0cc37 Baolin Wang 2017-12-14   98  		  __entry->err
29a1f599c0cc37 Baolin Wang 2017-12-14   99  	)
29a1f599c0cc37 Baolin Wang 2017-12-14  100  );
29a1f599c0cc37 Baolin Wang 2017-12-14  101  
29a1f599c0cc37 Baolin Wang 2017-12-14  102  TRACE_EVENT(rtc_alarm_irq_enable,
29a1f599c0cc37 Baolin Wang 2017-12-14  103  
29a1f599c0cc37 Baolin Wang 2017-12-14  104  	TP_PROTO(unsigned int enabled, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14  105  
29a1f599c0cc37 Baolin Wang 2017-12-14  106  	TP_ARGS(enabled, err),
29a1f599c0cc37 Baolin Wang 2017-12-14  107  
29a1f599c0cc37 Baolin Wang 2017-12-14  108  	TP_STRUCT__entry(
29a1f599c0cc37 Baolin Wang 2017-12-14  109  		__field(unsigned int, enabled)
29a1f599c0cc37 Baolin Wang 2017-12-14  110  		__field(int, err)
29a1f599c0cc37 Baolin Wang 2017-12-14  111  	),
29a1f599c0cc37 Baolin Wang 2017-12-14  112  
29a1f599c0cc37 Baolin Wang 2017-12-14  113  	TP_fast_assign(
29a1f599c0cc37 Baolin Wang 2017-12-14  114  		__entry->enabled = enabled;
29a1f599c0cc37 Baolin Wang 2017-12-14  115  		__entry->err = err;
29a1f599c0cc37 Baolin Wang 2017-12-14  116  	),
29a1f599c0cc37 Baolin Wang 2017-12-14  117  
29a1f599c0cc37 Baolin Wang 2017-12-14  118  	TP_printk("%s RTC alarm IRQ (%d)",
29a1f599c0cc37 Baolin Wang 2017-12-14  119  		  __entry->enabled ? "enable" : "disable",
29a1f599c0cc37 Baolin Wang 2017-12-14  120  		  __entry->err
29a1f599c0cc37 Baolin Wang 2017-12-14  121  	)
29a1f599c0cc37 Baolin Wang 2017-12-14  122  );
29a1f599c0cc37 Baolin Wang 2017-12-14  123  
29a1f599c0cc37 Baolin Wang 2017-12-14  124  DECLARE_EVENT_CLASS(rtc_offset_class,
29a1f599c0cc37 Baolin Wang 2017-12-14  125  
29a1f599c0cc37 Baolin Wang 2017-12-14  126  	TP_PROTO(long offset, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14  127  
29a1f599c0cc37 Baolin Wang 2017-12-14  128  	TP_ARGS(offset, err),
29a1f599c0cc37 Baolin Wang 2017-12-14  129  
29a1f599c0cc37 Baolin Wang 2017-12-14  130  	TP_STRUCT__entry(
29a1f599c0cc37 Baolin Wang 2017-12-14  131  		__field(long, offset)
29a1f599c0cc37 Baolin Wang 2017-12-14  132  		__field(int, err)
29a1f599c0cc37 Baolin Wang 2017-12-14  133  	),
29a1f599c0cc37 Baolin Wang 2017-12-14  134  
29a1f599c0cc37 Baolin Wang 2017-12-14  135  	TP_fast_assign(
29a1f599c0cc37 Baolin Wang 2017-12-14  136  		__entry->offset = offset;
29a1f599c0cc37 Baolin Wang 2017-12-14  137  		__entry->err = err;
29a1f599c0cc37 Baolin Wang 2017-12-14  138  	),
29a1f599c0cc37 Baolin Wang 2017-12-14  139  
29a1f599c0cc37 Baolin Wang 2017-12-14  140  	TP_printk("RTC offset: %ld (%d)",
29a1f599c0cc37 Baolin Wang 2017-12-14  141  		  __entry->offset, __entry->err
29a1f599c0cc37 Baolin Wang 2017-12-14  142  	)
29a1f599c0cc37 Baolin Wang 2017-12-14  143  );
29a1f599c0cc37 Baolin Wang 2017-12-14  144  
29a1f599c0cc37 Baolin Wang 2017-12-14  145  DEFINE_EVENT(rtc_offset_class, rtc_set_offset,
29a1f599c0cc37 Baolin Wang 2017-12-14  146  
29a1f599c0cc37 Baolin Wang 2017-12-14  147  	TP_PROTO(long offset, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14  148  
29a1f599c0cc37 Baolin Wang 2017-12-14  149  	TP_ARGS(offset, err)
29a1f599c0cc37 Baolin Wang 2017-12-14  150  );
29a1f599c0cc37 Baolin Wang 2017-12-14  151  
29a1f599c0cc37 Baolin Wang 2017-12-14 @152  DEFINE_EVENT(rtc_offset_class, rtc_read_offset,
29a1f599c0cc37 Baolin Wang 2017-12-14  153  
29a1f599c0cc37 Baolin Wang 2017-12-14  154  	TP_PROTO(long offset, int err),
29a1f599c0cc37 Baolin Wang 2017-12-14  155  
29a1f599c0cc37 Baolin Wang 2017-12-14  156  	TP_ARGS(offset, err)
29a1f599c0cc37 Baolin Wang 2017-12-14  157  );
29a1f599c0cc37 Baolin Wang 2017-12-14  158  
29a1f599c0cc37 Baolin Wang 2017-12-14  159  DECLARE_EVENT_CLASS(rtc_timer_class,
29a1f599c0cc37 Baolin Wang 2017-12-14  160  
29a1f599c0cc37 Baolin Wang 2017-12-14  161  	TP_PROTO(struct rtc_timer *timer),
29a1f599c0cc37 Baolin Wang 2017-12-14  162  
29a1f599c0cc37 Baolin Wang 2017-12-14  163  	TP_ARGS(timer),
29a1f599c0cc37 Baolin Wang 2017-12-14  164  
29a1f599c0cc37 Baolin Wang 2017-12-14  165  	TP_STRUCT__entry(
29a1f599c0cc37 Baolin Wang 2017-12-14  166  		__field(struct rtc_timer *, timer)
29a1f599c0cc37 Baolin Wang 2017-12-14  167  		__field(ktime_t, expires)
29a1f599c0cc37 Baolin Wang 2017-12-14  168  		__field(ktime_t, period)
29a1f599c0cc37 Baolin Wang 2017-12-14  169  	),
29a1f599c0cc37 Baolin Wang 2017-12-14  170  
29a1f599c0cc37 Baolin Wang 2017-12-14  171  	TP_fast_assign(
29a1f599c0cc37 Baolin Wang 2017-12-14  172  		__entry->timer = timer;
29a1f599c0cc37 Baolin Wang 2017-12-14  173  		__entry->expires = timer->node.expires;
29a1f599c0cc37 Baolin Wang 2017-12-14  174  		__entry->period = timer->period;
29a1f599c0cc37 Baolin Wang 2017-12-14  175  	),
29a1f599c0cc37 Baolin Wang 2017-12-14  176  
29a1f599c0cc37 Baolin Wang 2017-12-14  177  	TP_printk("RTC timer:(%p) expires:%lld period:%lld",
29a1f599c0cc37 Baolin Wang 2017-12-14  178  		  __entry->timer, __entry->expires, __entry->period
29a1f599c0cc37 Baolin Wang 2017-12-14  179  	)
29a1f599c0cc37 Baolin Wang 2017-12-14  180  );
29a1f599c0cc37 Baolin Wang 2017-12-14  181  
29a1f599c0cc37 Baolin Wang 2017-12-14  182  DEFINE_EVENT(rtc_timer_class, rtc_timer_enqueue,
29a1f599c0cc37 Baolin Wang 2017-12-14  183  
29a1f599c0cc37 Baolin Wang 2017-12-14  184  	TP_PROTO(struct rtc_timer *timer),
29a1f599c0cc37 Baolin Wang 2017-12-14  185  
29a1f599c0cc37 Baolin Wang 2017-12-14  186  	TP_ARGS(timer)
29a1f599c0cc37 Baolin Wang 2017-12-14  187  );
29a1f599c0cc37 Baolin Wang 2017-12-14  188  
29a1f599c0cc37 Baolin Wang 2017-12-14 @189  DEFINE_EVENT(rtc_timer_class, rtc_timer_dequeue,
29a1f599c0cc37 Baolin Wang 2017-12-14  190  
29a1f599c0cc37 Baolin Wang 2017-12-14  191  	TP_PROTO(struct rtc_timer *timer),
29a1f599c0cc37 Baolin Wang 2017-12-14  192  
29a1f599c0cc37 Baolin Wang 2017-12-14  193  	TP_ARGS(timer)
29a1f599c0cc37 Baolin Wang 2017-12-14  194  );
29a1f599c0cc37 Baolin Wang 2017-12-14  195  
29a1f599c0cc37 Baolin Wang 2017-12-14  196  DEFINE_EVENT(rtc_timer_class, rtc_timer_fired,
29a1f599c0cc37 Baolin Wang 2017-12-14  197  
29a1f599c0cc37 Baolin Wang 2017-12-14  198  	TP_PROTO(struct rtc_timer *timer),
29a1f599c0cc37 Baolin Wang 2017-12-14  199  
29a1f599c0cc37 Baolin Wang 2017-12-14  200  	TP_ARGS(timer)
29a1f599c0cc37 Baolin Wang 2017-12-14  201  );
29a1f599c0cc37 Baolin Wang 2017-12-14  202  
29a1f599c0cc37 Baolin Wang 2017-12-14  203  #endif /* _TRACE_RTC_H */
29a1f599c0cc37 Baolin Wang 2017-12-14  204  
29a1f599c0cc37 Baolin Wang 2017-12-14  205  /* This part must be outside protection */
29a1f599c0cc37 Baolin Wang 2017-12-14 @206  #include <trace/define_trace.h>

:::::: The code at line 38 was first introduced by commit
:::::: 29a1f599c0cc37004f92ba455d1ccda3db0b6a94 rtc: Add tracepoints for RTC system

:::::: TO: Baolin Wang <baolin.wang@linaro.org>
:::::: CC: Alexandre Belloni <alexandre.belloni@bootlin.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910031913.5bP81ECm%25lkp%40intel.com.

--rhwuhzjpxqnbnygl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--rhwuhzjpxqnbnygl--
