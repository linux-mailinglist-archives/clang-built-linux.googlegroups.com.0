Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOW32PWAKGQEV7F6DNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ED2C90ED
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 20:34:35 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id p10sf2580929vsn.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 11:34:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570041274; cv=pass;
        d=google.com; s=arc-20160816;
        b=NEXpGEyhe5n6qb290be+yJOhmeePuj+P7dKVi80NqITYLXNS+SegCteXyppjQ5EZh3
         l4G0fc9XHr5uHDcROxjkd37B7DV8tM0C7TtRedoy4iWQ8feANEe6Iep2M2U5vOHlnDa2
         isROKomSZ4TKvCYQEnchjQytOGvy+Wx0KX9/tOkMp5E6g2EPuUNz7xHO/7wZPeFs/3BX
         luOPPQYlpt/jf7lEuJrTQipoVfY9T5hCaMRxqA8CxgqXn/EZAr/cLraOqJSWCE5qLbmb
         RxxBkpGapeXyO5TIIxtHXhgUMyW/kRVmNYX+EkFI7Kws6rwmwi57nWEB1Ut4jfHHvpCf
         Zzjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8Z8qt6lbTuVxWFsvXEWkPLbOKFDUSOrdW0TXgzSRIro=;
        b=YjV6rigkysv3NZqUqVy7Wq5pSToFB+8+1bbpjQ0L/N9gi2ToWP88ohf7fA5tBgw9y3
         v9VQNSlSkZ57WorNXJIVWhB443iCC5Lql+GfxdBAHxu1KCIB4ccqc4PURMxBMmHgKYYH
         qdvagcWH86Ji8EAa/tlVvBeSi8qk/V2WoCWc97hl3U/21sx/gej/1cpEQwe05SgTPL1A
         97gHPICkrE+6TdJggadVECXeZBfnHqcdg4aGlA9BdbFyJ/+bvyaYiPX/pHPd0khHlz8r
         cKSfue4XF8rCqgAyVJl5LayBraHNBpmOKxLqxPcZpCmxiUCmieBjelTBE636sFclxsib
         4nCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Z8qt6lbTuVxWFsvXEWkPLbOKFDUSOrdW0TXgzSRIro=;
        b=QAA+i3vG397I+RHZnUhIPSOLMWPlIe4tyLIo5CXk7Dp3DTzlff59vrXU+lLN2JJQLd
         SUUjxrjjffnuhOwwIpy6rctxlRPPwz5VrRwN39WokpNdGOGLYi9i9a1qt1E7zHk+mtJK
         5q5YpMWeGr9iO5PKMadkeuuNN5u8/mg7XqtQNE7subuA1U+4KLC0WrGBUUbBjJbU2iOX
         w4Ypqdum5eMbSzh4CbPhRl9igF0wWZc+NOU879SWLwuQUU5r47wZBp6By+1jAjvYuJEX
         zxmCg8C7tY58Jxl7oxaSPj96+/PDRGaf0C4cOQRKlOQsLTZTSKFkX3G6rTbb2PoEN2CC
         Y9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Z8qt6lbTuVxWFsvXEWkPLbOKFDUSOrdW0TXgzSRIro=;
        b=Jq9e5LvE76zT3IwLlE5I6DJ1TFYI9WRXH6gREWITtb2/n/LNj+0yF0AzvLsmx1Rk2A
         AjrGuQVzmzcmY26UaPmi2LcOqaueQH35RqNDdyk2kgTe6MIz57Kvwu9mn7jBtPzmYGCt
         5v1JjGsEzKKr34zKxALG7XBe6vvFXNaEHX+80W2Y1xWki3gGbAY/XLCIq3fK5D29COSM
         E4rA7/aHRJhxGBUC/8HNdTVWlDCGY3yLmSwhi3k0PfR6qsQ41JM1czsDoBvDMQIA3465
         PbCO8TCHrf3xFg7GxPsQkWAoAhZWnsmCxmaq41ARYjAviXXO/OBNr0MH8SJx5I0PVGDe
         cepA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUnOV1372IwPK8fj1Wh81ny5vSXC0BHQC+TCXZhlzzo5ev6va4K
	n+hblbfFqcD2KnVMm5Dp8VM=
X-Google-Smtp-Source: APXvYqwwYT4se+G2jbVQ+vSYyV35tBRdHzkrKje/jY9a1+ixajg9Kf9aImxF9W/HAeDov5S4OILvew==
X-Received: by 2002:a67:d817:: with SMTP id e23mr2760597vsj.8.1570041274188;
        Wed, 02 Oct 2019 11:34:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:efd2:: with SMTP id s18ls349715vsp.6.gmail; Wed, 02 Oct
 2019 11:34:33 -0700 (PDT)
X-Received: by 2002:a67:cd95:: with SMTP id r21mr2878047vsl.100.1570041273805;
        Wed, 02 Oct 2019 11:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570041273; cv=none;
        d=google.com; s=arc-20160816;
        b=IRhZ0IooN3T+Xwf2tqaO0Keki94r+1rbsw/fmIvMHvrg0N6EjVt9bATHhh5Rhh5Qmc
         I2cM7cFUNYLoVn7dbYVaxEM6EOxrcXSbBNKy4aAu4aJnRSXBaEs+fXE4b5syf8SsGvCj
         lHKxmRe7bqIt9iUxlTHZQk5QlCTnnQ/X3MBYJ6bjdoqmPhQWsmRU5IHBvA189BDEzt+i
         VSQhmmcT4pmcbZ7jwRLXLWNgLt5uHHIJiurIVKZJXac2qT/bH6MMR8kKz+AZzS63mrvV
         rXmHxdh3V5OwlD2mNwnSniJotJmN2R9Hkq3I/+WhmIFlRcO7lZQ83LApDKXeUoxplzmK
         DlGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=NvsYvByLMjniBF4pCD+u39bs+uyUCOkwxaEtFPRwbSo=;
        b=wUGf9il45Hc8HsYbrXqfvpTZw9uBAfPg/mev+JC5g+mLz+MOylHTsG9uOcygSFFl1N
         Wbf0HlT/jf2mmnq8bm0B1PEZOtjCqVC6h+sD6QE9wAStZGz8oKOGSz+ebSF5sZN07apC
         vHDcedqPGe4NlOneD2T13BMDTfSXxgt8bXz5EGQarGeA41r1U/F2p2pqT0Anx5pC9Xpp
         XiVslRCP50vkkv/N5/af3rlrR3OQMx6uTB+WGFzi5JocMQs9NEwsClbXWd5G8b/bffiS
         CtZzmOC6f0V8FhY1WumuxNH/RH1cR65b0iO36S+5ie+Yj9agGKKOdioATlqBfQ3aTgBm
         0+Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id i13si15270uan.1.2019.10.02.11.34.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 11:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2019 11:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; 
   d="gz'50?scan'50,208,50";a="391671013"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 02 Oct 2019 11:34:30 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iFjSH-000Ine-Oy; Thu, 03 Oct 2019 02:34:29 +0800
Date: Thu, 3 Oct 2019 02:34:18 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [radeon-alex:amd-mainline-dkms-5.0 3808/3821]
 include/kcl/kcl_drm.h:635:20: error: static declaration of
 'drm_mode_is_420_only' follows non-static declaration
Message-ID: <201910030215.73g6vGeP%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uukh6fuhgf73mhro"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--uukh6fuhgf73mhro
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: dri-devel@lists.freedesktop.org
TO: Flora Cui <flora.cui@amd.com>
CC: Feifei Xu <Feifei Xu@amd.com>

tree:   git://people.freedesktop.org/~agd5f/linux.git amd-mainline-dkms-5.0
head:   e971bfc1faa0fa4df97ecca7a867a194455f26fd
commit: 13a2da823a67d53982d85b4d28a9a2532fede843 [3808/3821] drm/amd/autoconf: check drm_mode_is_420_xxx() is available
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project a77c3ef03c821d448296ba2abb658288800494ac)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 13a2da823a67d53982d85b4d28a9a2532fede843
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   include/kcl/kcl_drm.h:308:17: error: too few arguments to function call, expected at least 5, have 4
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
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
>> include/kcl/kcl_drm.h:635:20: error: static declaration of 'drm_mode_is_420_only' follows non-static declaration
   static inline bool drm_mode_is_420_only(const struct drm_display_info *display,
                      ^
   include/drm/drm_modes.h:471:6: note: previous declaration is here
   bool drm_mode_is_420_only(const struct drm_display_info *display,
        ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:6:
>> include/kcl/kcl_drm.h:642:20: error: static declaration of 'drm_mode_is_420_also' follows non-static declaration
   static inline bool drm_mode_is_420_also(const struct drm_display_info *display,
                      ^
   include/drm/drm_modes.h:473:6: note: previous declaration is here
   bool drm_mode_is_420_also(const struct drm_display_info *display,
        ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:9:
   include/kcl/kcl_kref.h:7:28: error: redefinition of 'kref_read'
   static inline unsigned int kref_read(const struct kref *kref)
                              ^
   include/linux/kref.h:36:28: note: previous definition is here
   static inline unsigned int kref_read(const struct kref *kref)
                              ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:9:
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
   In file included from drivers/gpu/drm/ttm/backport/backport.h:9:
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
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                      ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:9:
   include/kcl/kcl_kref.h:9:9: error: no member named 'counter' in 'struct refcount_struct'
           return atomic_read(&kref->refcount);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/atomic.h:45:41: note: expanded from macro 'atomic_read'
   #define atomic_read(v)                  READ_ONCE((v)->counter)
                                           ~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:261:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                        ~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:255:42: note: expanded from macro '__READ_ONCE'
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                                          ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:9:
   include/kcl/kcl_kref.h:9:9: error: no member named 'counter' in 'struct refcount_struct'
           return atomic_read(&kref->refcount);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/atomic.h:45:41: note: expanded from macro 'atomic_read'
   #define atomic_read(v)                  READ_ONCE((v)->counter)
                                           ~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:261:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                        ~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:257:30: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                              ^
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/ttm/backport/backport.h:9:
   include/kcl/kcl_kref.h:9:9: error: no member named 'counter' in 'struct refcount_struct'
           return atomic_read(&kref->refcount);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/atomic.h:45:41: note: expanded from macro 'atomic_read'
   #define atomic_read(v)                  READ_ONCE((v)->counter)
                                           ~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:261:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                        ~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:257:50: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                                                  ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   49 warnings and 20 errors generated.

vim +/drm_mode_is_420_only +635 include/kcl/kcl_drm.h

   526	
   527	#if !defined(HAVE_DRM_DEBUG_PRINTER)
   528	extern void __drm_printfn_debug(struct drm_printer *p, struct va_format *vaf);
   529	/**
   530	 * drm_debug_printer - construct a &drm_printer that outputs to pr_debug()
   531	 * @prefix: debug output prefix
   532	 *
   533	 * RETURNS:
   534	 * The &drm_printer object
   535	 */
 > 536	static inline struct drm_printer drm_debug_printer(const char *prefix)
   537	{
   538		struct drm_printer p = {
   539			.printfn = __drm_printfn_debug,
   540	#if !defined(HAVE_DRM_PRINTER)
   541			.prefix = prefix
   542	#endif
   543		};
   544		return p;
   545	}
   546	#endif
   547	
   548	#ifndef for_each_if
   549	/* helper for handling conditionals in various for_each macros */
   550	#define for_each_if(condition) if (!(condition)) {} else
   551	#endif
   552	
   553	#if !defined(HAVE_DRM_SEND_EVENT_LOCKED)
   554	void drm_send_event_locked(struct drm_device *dev, struct drm_pending_event *e);
   555	#endif
   556	
   557	#ifndef _DRM_PRINTK
   558	#define _DRM_PRINTK(once, level, fmt, ...)				\
   559		do {								\
   560			printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
   561				     ##__VA_ARGS__);				\
   562		} while (0)
   563	#endif
   564	
   565	#ifndef DRM_WARN
   566	#define DRM_WARN(fmt, ...)						\
   567		_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
   568	#endif
   569	
   570	#ifndef DP_LANE0_1_STATUS_ESI
   571	#define DP_LANE0_1_STATUS_ESI                  0x200c /* status same as 0x202 */
   572	#endif
   573	#ifndef DP_LANE2_3_STATUS_ESI
   574	#define DP_LANE2_3_STATUS_ESI                  0x200d /* status same as 0x203 */
   575	#endif
   576	#ifndef DP_LANE_ALIGN_STATUS_UPDATED_ESI
   577	#define DP_LANE_ALIGN_STATUS_UPDATED_ESI       0x200e /* status same as 0x204 */
   578	#endif
   579	#ifndef DP_SINK_STATUS_ESI
   580	#define DP_SINK_STATUS_ESI                     0x200f /* status same as 0x205 */
   581	#endif
   582	
   583	#if !defined(HAVE_DRM_ENCODER_FIND_VALID_WITH_FILE)
   584	#define drm_encoder_find(dev, file, id) drm_encoder_find(dev, id)
   585	#endif
   586	
   587	#ifndef DRM_DEV_DEBUG
   588	#define DRM_DEV_DEBUG	dev_dbg
   589	#endif
   590	#ifndef DRM_DEV_ERROR
   591	#define DRM_DEV_ERROR	dev_err
   592	#endif
   593	
   594	#ifndef drm_for_each_plane
   595	#define drm_for_each_plane(plane, dev) \
   596		list_for_each_entry(plane, &(dev)->mode_config.plane_list, head)
   597	#endif
   598	
   599	#ifndef drm_for_each_crtc
   600	#define drm_for_each_crtc(crtc, dev) \
   601		list_for_each_entry(crtc, &(dev)->mode_config.crtc_list, head)
   602	#endif
   603	
   604	#ifndef drm_for_each_connector
   605	#define drm_for_each_connector(connector, dev) \
   606		list_for_each_entry(connector, &(dev)->mode_config.connector_list, head)
   607	#endif
   608	
   609	#ifndef drm_for_each_encoder
   610	#define drm_for_each_encoder(encoder, dev) \
   611		list_for_each_entry(encoder, &(dev)->mode_config.encoder_list, head)
   612	#endif
   613	
   614	#ifndef drm_for_each_fb
   615	#define drm_for_each_fb(fb, dev) \
   616		list_for_each_entry(fb, &(dev)->mode_config.fb_list, head)
   617	#endif
   618	
   619	#ifndef HAVE_DRM_DEV_PUT
   620	#define drm_dev_put drm_dev_unref
   621	#endif
   622	
   623	static inline u64 kcl_drm_crtc_accurate_vblank_count(struct drm_crtc *crtc) {
   624	#if defined(HAVE_DRM_CRTC_ACCURATE_VBLANK_COUNT)
   625		return drm_crtc_accurate_vblank_count(crtc);
   626	#elif defined(HAVE_DRM_ACCURATE_VBLANK_COUNT)
   627		return drm_accurate_vblank_count(crtc);
   628	#else
   629		WARN_ONCE(1, "drm_crtc_accurate_vblank_count is not supported");
   630		return 0;
   631	#endif
   632	}
   633	
   634	#ifndef HAVE_DRM_MODE_IS_420_XXX
 > 635	static inline bool drm_mode_is_420_only(const struct drm_display_info *display,
   636				  const struct drm_display_mode *mode)
   637	{
   638		/* DRM < 4.4 ,un-support this pixel format */
   639		printk_once(KERN_WARNING "This kernel version not support API: drm_mode_is_420_only!\n");
   640		return false;
   641	}
 > 642	static inline bool drm_mode_is_420_also(const struct drm_display_info *display,

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910030215.73g6vGeP%25lkp%40intel.com.

--uukh6fuhgf73mhro
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--uukh6fuhgf73mhro--
