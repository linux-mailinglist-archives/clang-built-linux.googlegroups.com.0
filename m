Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6UXTDXAKGQE3LRQWHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 297C5F5C79
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Nov 2019 01:44:44 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id k185sf6619037ybk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 16:44:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573260283; cv=pass;
        d=google.com; s=arc-20160816;
        b=bTOngu64aWvA6yv3QgrZqWfCX/j+1JpTc1EOnBBiP49wEQoRkRCR6JgqGxtZ4JOe/H
         4th0G9vsdd7AvDQLz27wW/FlH42rnqI1SVtz5fcCLg5Ko40IPh5ZbKHHR0I3w9RxYzOL
         g4imldn8x1w+Af69+R9MIPBGFHuOwfgp8RdNFaGE95gzWnxZjbil9SUiXEGzDfvJprb2
         VF9chtSwRrGg5tImkjZ3AwdecY6ZGcxXFnT34nz2FRDJ2OC2xcPQbV5+ZAqZ1RjT+lUR
         H2VMpDCna8FxdZuqJhJ+XAih+51RZv8XnNDxvvoWtHDenfe7ePMkBvtNTtqm3RrKAQOR
         /Omw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=onE42lZ8YFCGFpVqtjLUVBzSoOqZHx5LoczyIzMj4FA=;
        b=XSbI1MKJ0twfKlBasGNljLI3uOCK7E8jHCzGrai+d5dDid0BemF0lowphdoxmucxm/
         DPPgtwHY52HmkgeeKctqp+8q9xvwd6qGS3eb8sPGC7dgAXRqe70tlxiykxqqaunwGujn
         s62AMx6D2P6TteNyA+NX6BhZKeSmuIZuZNalhrh4FcylJpH+MY3w3ecIw6SvLRt5M4Lu
         yajHUqGmjVBqpDVdXvnjkSlxxA9T+NDOc1ouxoIhGYBpjI5/AouGkZaYjZCA9Jl2Cjgp
         jEtNdC70qdpBtjUoLAovXXgRNCNn+FSKiHkQmqsNUD46WZ34vPsym8mEyHf2DOFJVL8B
         3ODQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=onE42lZ8YFCGFpVqtjLUVBzSoOqZHx5LoczyIzMj4FA=;
        b=MqiiTxlqG8xKsbG+aWl/1ScxgMaZfPHtdmXGt9IGI0e9VAlwJqNBWjw4BiwjDxyFrr
         eimg2+aeJe105meCKAO83DrStZTHvkXxVMpDkJiT7RCMfkL0R/L3XfT0FnzsCR7YGPnF
         6/I7jPmVF8PPMkGRa3Din9CZXkwMF84c9aL+J6ZRqZv9XydXOUl9NB5HHVsfBYblQEEO
         IuDu8HeE63Cc4PUBcp5oa4nBckpenEY955z8eQbFjXJDadsW4c8Jf239xxxpKe5DXPIW
         xKlc4Cy+VX6VzHxjqjLgA0/sJWm0FZ4o4ydLp8nYT+hyFGkzf6CSkVD0aC7MYUmWUtpm
         aYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=onE42lZ8YFCGFpVqtjLUVBzSoOqZHx5LoczyIzMj4FA=;
        b=d0UaAEahJRlydhQp0IPZnR5hyQqTUQqszMg5jjUqDISh7EyG/mpO6lwqlQFHBhxJxa
         JNdf0XKR9LMhtfi9orxTBkPFBoLjxmyuS8+A/wqLufrGr/BhzevMHxRM0q0oGeqp5yIB
         UygZJyyYpMtGY4rWSyIpknElBrpBUySvHUfA57dlzV3XkzHbwsVAEhwNLyOgJ+mHWPyQ
         lQ2qPVh4wGfG1s3GpqKmxdo3YgSZsgHRZk3pa/9rJsNcTHCO7/bd08bnWP5MujuSjSfZ
         PsrxMxltNZtEZ2dd3i0hqODh4XlOdqFAjY99gbirz4z2WcH6DzNdpSvUfRrgcLR7EVoa
         G+nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/UKpspevnwIrfSLHEyjguRCW7EuSi0QNAPD7s9vIz5pPh6s5D
	NKY3ziJmPwCDSWzTZrG9Ars=
X-Google-Smtp-Source: APXvYqwAevnErP0u8+JRjDHBTmatV5HUaPD5ZCxW09+Nw4uFBb4iF3wTab0OvOKWRanb24FzGsq7OQ==
X-Received: by 2002:a25:1385:: with SMTP id 127mr11744406ybt.523.1573260282785;
        Fri, 08 Nov 2019 16:44:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5986:: with SMTP id n128ls1750078ywb.7.gmail; Fri, 08
 Nov 2019 16:44:42 -0800 (PST)
X-Received: by 2002:a0d:cb91:: with SMTP id n139mr9843112ywd.194.1573260282126;
        Fri, 08 Nov 2019 16:44:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573260282; cv=none;
        d=google.com; s=arc-20160816;
        b=N96aMK+zIHvACtG2WUu7P6PX9DQbSIPP0xZW8i48VYdF1Sy0w5vAXXbINNPHLzmQJg
         vuPDaQQ5PIduoIxNkzgRkinXrnAvJr5BT15hXk1nEG0HVLTYOBpofP/8Cma+ooaqRTh9
         Hum6oyE88oKV7HEpopkYBytoo3MpB6CNUGnFkB4Sj2GwqwgXsc1Q9a04H9Om5TsHJyQJ
         y3GiVedUU+fJlITvTDb/Cl4z4UDm5EN2KVytqhH7f+uASKLhYfDhm3igjczc9U89s0Iq
         FbvxXSUFPqm4+or26IxiJxu9bwy41S0jYPnEwwfJs9bqyd9UD+TmQ+fcUuWdMemRk6Ai
         DcOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=9Fp7fInvDeFGcndk4GjkKsmzjp3NPtYgBB5hK6N9xsE=;
        b=js7FDaoRd+koqXMgRY036IKMhKBMrZbZgmMT+d714hDoAyuGBPOadC5eZ+/wBulu5n
         KogDDJPc3/9gocx1ZSNFdX7EvDeE9keqmA6sVp2Bjvr5yWqYV6AjUkxdLnlJTxol4coZ
         ItEd9MzkzxdDT3OnE1jGEBz94E2BYP+FeU4ViBMUdvkDV8VeeQd/a6Pigon4S/F/cOH+
         YkUgOQT/d9QIfEka4vIM7bR6TEiIWB4GmIMrC24lAlvVTsvjyr7Wfio1a4ASJYEEq/YD
         2H7ZT/owkqR1XZbGCgirO7hctcArdsMDvhkcWJF0JPev+mAUC9eJtUb4c3mLgQaRLoUS
         rnmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id 63si463529ybe.4.2019.11.08.16.44.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 16:44:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Nov 2019 16:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; 
   d="gz'50?scan'50,208,50";a="206164576"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 08 Nov 2019 16:44:37 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iTErl-000Ai7-Cz; Sat, 09 Nov 2019 08:44:37 +0800
Date: Sat, 9 Nov 2019 08:43:56 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [radeon-alex:amd-mainline-dkms-5.0 3697/4201]
 include/kcl/kcl_drm.h:308:17: error: too few arguments to function call,
 expected at least 5, have 4
Message-ID: <201911090847.kEJoC9mZ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cresale2bmvyu2gc"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--cresale2bmvyu2gc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
CC: dri-devel@lists.freedesktop.org
TO: Flora Cui <flora.cui@amd.com>
CC: Feifei Xu <Feifei.Xu@amd.com>

tree:   git://people.freedesktop.org/~agd5f/linux.git amd-mainline-dkms-5.0
head:   7af3b66aba4c3982167d540c01ea71735e9a1264
commit: f460c248a3f0bca3a875602cf40693de672485c4 [3697/4201] drm/amd/autoconf: refactor dma_fence header check
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 03b84e4f6d0e1c04f22d69cc445f36e1f713beb4)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout f460c248a3f0bca3a875602cf40693de672485c4
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                                    ^        ~
   include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
   #define _sig_not(x)     (~(x))
                              ^
   include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   In file included from include/kcl/kcl_drm.h:6:
   In file included from include/drm/drmP.h:40:
   In file included from include/linux/highmem.h:12:
   In file included from arch/arm64/include/asm/cacheflush.h:22:
   In file included from include/linux/kgdb.h:20:
   In file included from arch/arm64/include/asm/kgdb.h:25:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:177:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:167:10: note: expanded from macro '_SIG_SET_OP'
           case 2: set->sig[1] = op(set->sig[1]);                          \
                   ^        ~
   include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   In file included from include/kcl/kcl_drm.h:6:
   In file included from include/drm/drmP.h:40:
   In file included from include/linux/highmem.h:12:
   In file included from arch/arm64/include/asm/cacheflush.h:22:
   In file included from include/linux/kgdb.h:20:
   In file included from arch/arm64/include/asm/kgdb.h:25:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:188:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = 0;
                   ^        ~
   include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   In file included from include/kcl/kcl_drm.h:6:
   In file included from include/drm/drmP.h:40:
   In file included from include/linux/highmem.h:12:
   In file included from arch/arm64/include/asm/cacheflush.h:22:
   In file included from include/linux/kgdb.h:20:
   In file included from arch/arm64/include/asm/kgdb.h:25:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:201:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = -1;
                   ^        ~
   include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   In file included from include/kcl/kcl_drm.h:6:
   In file included from include/drm/drmP.h:40:
   In file included from include/linux/highmem.h:12:
   In file included from arch/arm64/include/asm/cacheflush.h:22:
   In file included from include/linux/kgdb.h:20:
   In file included from arch/arm64/include/asm/kgdb.h:25:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:232:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = 0;
                   ^        ~
   include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   In file included from include/kcl/kcl_drm.h:6:
   In file included from include/drm/drmP.h:40:
   In file included from include/linux/highmem.h:12:
   In file included from arch/arm64/include/asm/cacheflush.h:22:
   In file included from include/linux/kgdb.h:20:
   In file included from arch/arm64/include/asm/kgdb.h:25:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:244:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: set->sig[1] = -1;
                   ^        ~
   include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   include/kcl/kcl_drm.h:167:1: error: redefinition of 'drm_fb_helper_remove_conflicting_pci_framebuffers'
   drm_fb_helper_remove_conflicting_pci_framebuffers(struct pci_dev *pdev,
   ^
   include/drm/drm_fb_helper.h:641:1: note: previous definition is here
   drm_fb_helper_remove_conflicting_pci_framebuffers(struct pci_dev *pdev,
   ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
>> include/kcl/kcl_drm.h:308:17: error: too few arguments to function call, expected at least 5, have 4
                            encoder_type);
                                        ^
   include/drm/drm_encoder.h:182:1: note: 'drm_encoder_init' declared here
   __printf(5, 6)
   ^
   include/linux/compiler_attributes.h:143:41: note: expanded from macro '__printf'
   #define __printf(a, b)                  __attribute__((__format__(printf, a, b)))
                                           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   include/kcl/kcl_drm.h:323:19: error: too few arguments to function call, expected at least 6, have 5
                                    cursor, funcs);
                                                 ^
   include/drm/drm_crtc.h:1119:1: note: 'drm_crtc_init_with_planes' declared here
   __printf(6, 7)
   ^
   include/linux/compiler_attributes.h:143:41: note: expanded from macro '__printf'
   #define __printf(a, b)                  __attribute__((__format__(printf, a, b)))
                                           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   include/kcl/kcl_drm.h:343:33: error: too few arguments to function call, expected at least 9, have 7
                                    formats, format_count, type);
                                                               ^
   include/drm/drm_plane.h:712:1: note: 'drm_universal_plane_init' declared here
   __printf(9, 10)
   ^
   include/linux/compiler_attributes.h:143:41: note: expanded from macro '__printf'
   #define __printf(a, b)                  __attribute__((__format__(printf, a, b)))
                                           ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   include/kcl/kcl_drm.h:354:43: error: too many arguments to function call, expected 2, have 3
                   return drm_gem_object_lookup(dev, filp, handle);
                          ~~~~~~~~~~~~~~~~~~~~~            ^~~~~~
   include/drm/drm_gem.h:365:1: note: 'drm_gem_object_lookup' declared here
   struct drm_gem_object *drm_gem_object_lookup(struct drm_file *filp, u32 handle);
   ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   include/kcl/kcl_drm.h:390:8: error: redefinition of 'drm_format_name_buf'
   struct drm_format_name_buf {
          ^
   include/drm/drm_fourcc.h:142:8: note: previous definition is here
   struct drm_format_name_buf {
          ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   include/kcl/kcl_drm.h:422:9: error: implicit declaration of function 'drm_gem_object_unreference_unlocked' [-Werror,-Wimplicit-function-declaration]
           return drm_gem_object_unreference_unlocked(obj);
                  ^
   include/kcl/kcl_drm.h:422:9: note: did you mean 'drm_gem_object_put_unlocked'?
   include/drm/drm_gem.h:348:6: note: 'drm_gem_object_put_unlocked' declared here
   void drm_gem_object_put_unlocked(struct drm_gem_object *obj);
        ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
   include/kcl/kcl_drm.h:422:2: error: void function 'kcl_drm_gem_object_put_unlocked' should not return a value [-Wreturn-type]
           return drm_gem_object_unreference_unlocked(obj);
           ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/kcl/kcl_drm.h:536:34: error: redefinition of 'drm_debug_printer'
   static inline struct drm_printer drm_debug_printer(const char *prefix)
                                    ^
   include/drm/drm_print.h:217:34: note: previous definition is here
   static inline struct drm_printer drm_debug_printer(const char *prefix)
                                    ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:8:
   include/kcl/kcl_kref.h:7:28: error: redefinition of 'kref_read'
   static inline unsigned int kref_read(const struct kref *kref)
                              ^
   include/linux/kref.h:36:28: note: previous definition is here
   static inline unsigned int kref_read(const struct kref *kref)
                              ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:8:
   include/kcl/kcl_kref.h:9:9: error: no member named 'counter' in 'struct refcount_struct'
           return atomic_read(&kref->refcount);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/atomic.h:45:41: note: expanded from macro 'atomic_read'
   #define atomic_read(v)                  READ_ONCE((v)->counter)
                                           ~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:261:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                        ~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:253:17: note: expanded from macro '__READ_ONCE'
           union { typeof(x) __val; char __c[1]; } __u;                    \
                          ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:8:
   include/kcl/kcl_kref.h:9:9: error: no member named 'counter' in 'struct refcount_struct'
           return atomic_read(&kref->refcount);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/atomic.h:45:41: note: expanded from macro 'atomic_read'
   #define atomic_read(v)                  READ_ONCE((v)->counter)
                                           ~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:261:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                        ~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:255:22: note: expanded from macro '__READ_ONCE'

vim +308 include/kcl/kcl_drm.h

1bebc270578bf8 Evan Quan      2019-02-18  160  
1bebc270578bf8 Evan Quan      2019-02-18  161  #define IS_REACHABLE(option) __or(IS_BUILTIN(option), \
1bebc270578bf8 Evan Quan      2019-02-18  162  				__and(IS_MODULE(option), __is_defined(MODULE)))
1bebc270578bf8 Evan Quan      2019-02-18  163  #endif
b2200d5806eb20 Flora Cui      2019-09-05  164  extern int remove_conflicting_pci_framebuffers(struct pci_dev *pdev, int res_id,
b2200d5806eb20 Flora Cui      2019-09-05  165  					       const char *name);
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  166  static inline int
b2200d5806eb20 Flora Cui      2019-09-05 @167  drm_fb_helper_remove_conflicting_pci_framebuffers(struct pci_dev *pdev,
b2200d5806eb20 Flora Cui      2019-09-05  168  						  int resource_id,
b2200d5806eb20 Flora Cui      2019-09-05  169  						  const char *name)
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  170  {
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  171  #if IS_REACHABLE(CONFIG_FB)
b2200d5806eb20 Flora Cui      2019-09-05  172  	return remove_conflicting_pci_framebuffers(pdev, resource_id, name);
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  173  #else
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  174  	return 0;
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  175  #endif
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  176  }
1bebc270578bf8 Evan Quan      2019-02-18  177  #endif
5d75fe0f8f98c6 Junwei Zhang   2016-12-26  178  
ca15ec98d6ee42 Junwei Zhang   2016-12-23  179  static inline void kcl_drm_fb_helper_cfb_fillrect(struct fb_info *info,
ca15ec98d6ee42 Junwei Zhang   2016-12-23  180  				const struct fb_fillrect *rect)
ca15ec98d6ee42 Junwei Zhang   2016-12-23  181  {
901313e3af14f8 Chengming Gui  2019-08-21  182  #ifndef HAVE_DRM_FB_HELPER_CFB_XX
ca15ec98d6ee42 Junwei Zhang   2016-12-23  183  	_kcl_drm_fb_helper_cfb_fillrect(info, rect);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  184  #else
ca15ec98d6ee42 Junwei Zhang   2016-12-23  185  	drm_fb_helper_cfb_fillrect(info, rect);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  186  #endif
ca15ec98d6ee42 Junwei Zhang   2016-12-23  187  }
ca15ec98d6ee42 Junwei Zhang   2016-12-23  188  
ca15ec98d6ee42 Junwei Zhang   2016-12-23  189  static inline void kcl_drm_fb_helper_cfb_copyarea(struct fb_info *info,
ca15ec98d6ee42 Junwei Zhang   2016-12-23  190  				const struct fb_copyarea *area)
ca15ec98d6ee42 Junwei Zhang   2016-12-23  191  {
901313e3af14f8 Chengming Gui  2019-08-21  192  #ifndef HAVE_DRM_FB_HELPER_CFB_XX
ca15ec98d6ee42 Junwei Zhang   2016-12-23  193  	_kcl_drm_fb_helper_cfb_copyarea(info, area);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  194  #else
ca15ec98d6ee42 Junwei Zhang   2016-12-23  195  	drm_fb_helper_cfb_copyarea(info, area);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  196  #endif
ca15ec98d6ee42 Junwei Zhang   2016-12-23  197  }
ca15ec98d6ee42 Junwei Zhang   2016-12-23  198  
ca15ec98d6ee42 Junwei Zhang   2016-12-23  199  static inline void kcl_drm_fb_helper_cfb_imageblit(struct fb_info *info,
ca15ec98d6ee42 Junwei Zhang   2016-12-23  200  				 const struct fb_image *image)
ca15ec98d6ee42 Junwei Zhang   2016-12-23  201  {
901313e3af14f8 Chengming Gui  2019-08-21  202  #ifndef HAVE_DRM_FB_HELPER_CFB_XX
ca15ec98d6ee42 Junwei Zhang   2016-12-23  203  	_kcl_drm_fb_helper_cfb_imageblit(info, image);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  204  #else
ca15ec98d6ee42 Junwei Zhang   2016-12-23  205  	drm_fb_helper_cfb_imageblit(info, image);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  206  #endif
ca15ec98d6ee42 Junwei Zhang   2016-12-23  207  }
ca15ec98d6ee42 Junwei Zhang   2016-12-23  208  
ca15ec98d6ee42 Junwei Zhang   2016-12-23  209  static inline struct fb_info *kcl_drm_fb_helper_alloc_fbi(struct drm_fb_helper *fb_helper)
ca15ec98d6ee42 Junwei Zhang   2016-12-23  210  {
2da42db0ef9ae5 Chengming Gui  2019-08-21  211  #ifndef HAVE_DRM_FB_HELPER_XX_FBI
ca15ec98d6ee42 Junwei Zhang   2016-12-23  212  	return _kcl_drm_fb_helper_alloc_fbi(fb_helper);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  213  #else
ca15ec98d6ee42 Junwei Zhang   2016-12-23  214  	return drm_fb_helper_alloc_fbi(fb_helper);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  215  #endif
ca15ec98d6ee42 Junwei Zhang   2016-12-23  216  }
ca15ec98d6ee42 Junwei Zhang   2016-12-23  217  
ca15ec98d6ee42 Junwei Zhang   2016-12-23  218  static inline void kcl_drm_fb_helper_unregister_fbi(struct drm_fb_helper *fb_helper)
ca15ec98d6ee42 Junwei Zhang   2016-12-23  219  {
2da42db0ef9ae5 Chengming Gui  2019-08-21  220  #ifndef HAVE_DRM_FB_HELPER_XX_FBI
ca15ec98d6ee42 Junwei Zhang   2016-12-23  221  	_kcl_drm_fb_helper_unregister_fbi(fb_helper);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  222  #else
ca15ec98d6ee42 Junwei Zhang   2016-12-23  223  	drm_fb_helper_unregister_fbi(fb_helper);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  224  #endif
ca15ec98d6ee42 Junwei Zhang   2016-12-23  225  }
ca15ec98d6ee42 Junwei Zhang   2016-12-23  226  
546f1401e5dd8f Jim Qu         2018-11-01  227  static inline void kcl_drm_fb_helper_set_suspend_unlocked(struct drm_fb_helper *fb_helper, int state)
ca15ec98d6ee42 Junwei Zhang   2016-12-23  228  {
99dcb8a7f58e2a Chengming Gui  2019-08-22  229  #ifndef HAVE_DRM_FB_HELPER_SET_SUSPEND_UNLOCKED
546f1401e5dd8f Jim Qu         2018-11-01  230  	_kcl_drm_fb_helper_set_suspend_unlocked(fb_helper, state);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  231  #else
546f1401e5dd8f Jim Qu         2018-11-01  232  	drm_fb_helper_set_suspend_unlocked(fb_helper, state);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  233  #endif
ca15ec98d6ee42 Junwei Zhang   2016-12-23  234  }
ca15ec98d6ee42 Junwei Zhang   2016-12-23  235  
ca15ec98d6ee42 Junwei Zhang   2016-12-23  236  static inline void
ca15ec98d6ee42 Junwei Zhang   2016-12-23  237  kcl_drm_atomic_helper_update_legacy_modeset_state(struct drm_device *dev,
ca15ec98d6ee42 Junwei Zhang   2016-12-23  238  					      struct drm_atomic_state *old_state)
ca15ec98d6ee42 Junwei Zhang   2016-12-23  239  {
33ac06561ad3a2 Flora Cui      2019-08-26  240  #ifndef HAVE_DRM_ATOMIC_HELPER_UPDATE_LEGACY_MODESET_STATE
ca15ec98d6ee42 Junwei Zhang   2016-12-23  241  	_kcl_drm_atomic_helper_update_legacy_modeset_state(dev, old_state);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  242  #else
ca15ec98d6ee42 Junwei Zhang   2016-12-23  243  	drm_atomic_helper_update_legacy_modeset_state(dev, old_state);
ca15ec98d6ee42 Junwei Zhang   2016-12-23  244  #endif
ca15ec98d6ee42 Junwei Zhang   2016-12-23  245  }
ca15ec98d6ee42 Junwei Zhang   2016-12-23  246  
f9a44a45935e86 Junwei Zhang   2016-12-23  247  #ifndef DRM_DEBUG_VBL
f9a44a45935e86 Junwei Zhang   2016-12-23  248  #define DRM_UT_VBL		0x20
f9a44a45935e86 Junwei Zhang   2016-12-23  249  #define DRM_DEBUG_VBL(fmt, args...)					\
f9a44a45935e86 Junwei Zhang   2016-12-23  250  	do {								\
f9a44a45935e86 Junwei Zhang   2016-12-23  251  		if (unlikely(drm_debug & DRM_UT_VBL))			\
f9a44a45935e86 Junwei Zhang   2016-12-23  252  			drm_ut_debug_printk(__func__, fmt, ##args);	\
f9a44a45935e86 Junwei Zhang   2016-12-23  253  	} while (0)
f9a44a45935e86 Junwei Zhang   2016-12-23  254  #endif
f9a44a45935e86 Junwei Zhang   2016-12-23  255  
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  256  static inline bool kcl_drm_arch_can_wc_memory(void)
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  257  {
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  258  #if defined(CONFIG_PPC) && !defined(CONFIG_NOT_COHERENT_CACHE)
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  259  	return false;
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  260  #elif defined(CONFIG_MIPS) && defined(CONFIG_CPU_LOONGSON3)
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  261  	return false;
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  262  #else
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  263  	return true;
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  264  #endif
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  265  }
71bf0ed3e5fa57 Junwei Zhang   2016-12-23  266  
ff4aec9dd97cab Yifan Zhang    2019-07-30  267  #if defined(HAVE_CHUNK_ID_SYNOBJ_IN_OUT)
c7fb4c949175cd changzhu       2019-04-03  268  static inline int kcl_drm_syncobj_find_fence(struct drm_file *file_private,
c7fb4c949175cd changzhu       2019-04-03  269  						u32 handle, u64 point, u64 flags,
c7fb4c949175cd changzhu       2019-04-03  270  						struct dma_fence **fence)
c7fb4c949175cd changzhu       2019-04-03  271  {
c63fade5581cf2 Slava Grigorev 2019-05-08  272  #if defined(HAVE_DRM_SYNCOBJ_FENCE_GET)
c7fb4c949175cd changzhu       2019-04-03  273  	return drm_syncobj_fence_get(file_private, handle, fence);
37bca97f0b6220 Slava Grigorev 2019-05-09  274  #elif defined(HAVE_3ARGS_DRM_SYNCOBJ_FIND_FENCE)
c7fb4c949175cd changzhu       2019-04-03  275  	return drm_syncobj_find_fence(file_private, handle, fence);
37bca97f0b6220 Slava Grigorev 2019-05-09  276  #elif defined(HAVE_4ARGS_DRM_SYNCOBJ_FIND_FENCE)
c7fb4c949175cd changzhu       2019-04-03  277  	return drm_syncobj_find_fence(file_private, handle, point, fence);
c7fb4c949175cd changzhu       2019-04-03  278  #else
c7fb4c949175cd changzhu       2019-04-03  279  	return drm_syncobj_find_fence(file_private, handle, point, flags, fence);
c7fb4c949175cd changzhu       2019-04-03  280  #endif
c7fb4c949175cd changzhu       2019-04-03  281  }
c7fb4c949175cd changzhu       2019-04-03  282  #endif
c7fb4c949175cd changzhu       2019-04-03  283  
ff98cbaf0adf72 Slava Grigorev 2019-07-30  284  #if defined(HAVE_DRM_COLOR_LUT) && !defined(HAVE_DRM_COLOR_LUT_SIZE)
491c874156b24a changzhu       2019-06-13  285  /**
491c874156b24a changzhu       2019-06-13  286   * drm_color_lut_size - calculate the number of entries in the LUT
491c874156b24a changzhu       2019-06-13  287   * @blob: blob containing the LUT
491c874156b24a changzhu       2019-06-13  288   *
491c874156b24a changzhu       2019-06-13  289   * Returns:
491c874156b24a changzhu       2019-06-13  290   * The number of entries in the color LUT stored in @blob.
491c874156b24a changzhu       2019-06-13  291   */
491c874156b24a changzhu       2019-06-13  292  static inline int drm_color_lut_size(const struct drm_property_blob *blob)
491c874156b24a changzhu       2019-06-13  293  {
491c874156b24a changzhu       2019-06-13  294  	return blob->length / sizeof(struct drm_color_lut);
491c874156b24a changzhu       2019-06-13  295  }
491c874156b24a changzhu       2019-06-13  296  #endif
491c874156b24a changzhu       2019-06-13  297  
593428bcfeb90e Junwei Zhang   2016-12-23  298  static inline int kcl_drm_encoder_init(struct drm_device *dev,
593428bcfeb90e Junwei Zhang   2016-12-23  299  		      struct drm_encoder *encoder,
593428bcfeb90e Junwei Zhang   2016-12-23  300  		      const struct drm_encoder_funcs *funcs,
593428bcfeb90e Junwei Zhang   2016-12-23  301  		      int encoder_type, const char *name, ...)
593428bcfeb90e Junwei Zhang   2016-12-23  302  {
252ed7e203fd07 Yifan Zhang    2019-07-15  303  #if defined(HAVE_DRM_ENCODER_INIT_VALID_WITH_NAME)
593428bcfeb90e Junwei Zhang   2016-12-23  304  	return drm_encoder_init(dev, encoder, funcs,
593428bcfeb90e Junwei Zhang   2016-12-23  305  			 encoder_type, name);
593428bcfeb90e Junwei Zhang   2016-12-23  306  #else
593428bcfeb90e Junwei Zhang   2016-12-23  307  	return drm_encoder_init(dev, encoder, funcs,
593428bcfeb90e Junwei Zhang   2016-12-23 @308  			 encoder_type);
593428bcfeb90e Junwei Zhang   2016-12-23  309  #endif
593428bcfeb90e Junwei Zhang   2016-12-23  310  }
593428bcfeb90e Junwei Zhang   2016-12-23  311  

:::::: The code at line 308 was first introduced by commit
:::::: 593428bcfeb90e93621b66dbb2909b91da999344 drm/amdkcl: [4.5] fix drm encoder and plane functions

:::::: TO: Junwei Zhang <Jerry.Zhang@amd.com>
:::::: CC: tianci yin <tianci.yin@amd.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911090847.kEJoC9mZ%25lkp%40intel.com.

--cresale2bmvyu2gc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--cresale2bmvyu2gc--
