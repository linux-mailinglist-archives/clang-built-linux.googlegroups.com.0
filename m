Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6UQ474QKGQEJPOIYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 260DD245A29
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 01:59:56 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id j9sf7440060oom.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 16:59:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597622395; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOZvzkRAJPunAr+AM/veyn/BmVZ9Ps9uApTALDfF2hWeBk0YKUBV+IzMFqBGhqw/zy
         A3h5YHx8fH9sh9xbhMxiHw7Ut9Q3JLiExsBtPoaOjBNj4X7ftUMGzxaEArzRiSi3dhz4
         o1HdBc8ezyNr87hO31Ep3WJT9HelwuQpOkZrJe4Oz6OOtQUq6nizMjPxhWDIyNI3y2Hx
         BSdC4c9QAyER6tXCM6kSAjXpW8wF3YRe3IvkguaV326GL6rfX48s736/ezqUdRHG1kYu
         i2KVCjRJPuk7RZixNq44lomF+Il1hu2iKkpQHIpkqjiYkExN5XaVVEtvbP8pz56fzDJ9
         trDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ugNM04EraVaOLZXKcVWEm+YVfxcRbUfwZBOGyKxUAhA=;
        b=l8YcJUqfxLzECUHlq0r4cF26qGCc7Zlw8XgNz/GX6A0pXh0Wo/D26kev/r9qaYitXr
         YO8EZGTrua6yoOSpwcyk0zwahneHjmokh0OoD0tgpwasQ+uVoCj8VM6T/OtbXUhi7j46
         CLHc8Lk9k9Rx+QYhTFslE+ip729eQejxRCGN3lxGrQqev1HXCvMwLmZiSoOnkNrtODZ8
         X/zzMqgjJ1jdJC4nRUBOb8NXZipEhNFNHYdWYrnt0aRoN0C7NmyjmC/pRYzaSgVTcdu8
         g5BHg9vb8kple5JzefiJHIIF9l9gFvrcHbmwS45pd5SwV/JOPDtFfYgHZPUdVKY3qYdY
         tG3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugNM04EraVaOLZXKcVWEm+YVfxcRbUfwZBOGyKxUAhA=;
        b=o7AL2wEL3aBAcrRjl4jDlzgnvoCOlNMIJWFp1R70AeGne2V9c8PHjfkd8/GWHItUpc
         CA6AbAkon51ZF9CrJFPSZaXVMjHx0nr23NtYw+l6bpZkGVjAscnf3LJ4YU1g9tfWY/ry
         31ojOA3lt7rqDi5F6ymR8JTUsGK4jvte4uo1C6W4EdazAxE0FpYP1/ua5LnE2876Zdlo
         8SgSlu3d7edsJ8IZ6Z61IApW/wxx+gL12MAiFB0GA76nu+282PBDf7/jQMCpmVtAQsw1
         1LfwqynNXa7N7a5pewtNRBl0wAtxHbfBS5m1X/fpCF4Cjr/aPvXNrGkD+KMpEgwAdYmY
         fryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugNM04EraVaOLZXKcVWEm+YVfxcRbUfwZBOGyKxUAhA=;
        b=HugLmPXMz3AAtNu9W8YTFWVPCH0oYR/+A+QBE12kGnt6Ft7vjnKRyB9vnfJxOhncFX
         wg1NXYNgN0WpS0RRpJGgtAAZcIKZELQWwHG2p/JN6htXdYHW6uJvl1vfHYYwoXBvN1jl
         oQ2T1mDZz7c/1VR/BPReUB4MQNjO0mDP3BspW4tVEacd9bJo46bNQjN+S9Hcf304Tfen
         iB9YW6H/PgBN/JHcksdZ6vEPZodqHmyBzZ7AFVUSh81opo6hyOOhF48dC0DJHhomQJVh
         GncqGrSI3mW811GViRlWeUIQPztiBTcSWYeYtm+6C3nQkK3iciB3G0GM3BCEer6S1FiL
         O3eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OXrzMa1nZv6fIphLcOVFGQulUVP1qDlrojyv/ZHAV0oG88rEp
	zfmPz1BjNVlzkbzNKZdlZ7w=
X-Google-Smtp-Source: ABdhPJxgUmSVV0TL8xrT42gkWrGz5xt1FSOKBfl3SU8nZIfuYLrorbOP4PelNsreOLF/wX715uyP9g==
X-Received: by 2002:aca:889:: with SMTP id 131mr7564281oii.112.1597622394847;
        Sun, 16 Aug 2020 16:59:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d658:: with SMTP id n85ls2964511oig.7.gmail; Sun, 16 Aug
 2020 16:59:54 -0700 (PDT)
X-Received: by 2002:a05:6808:b03:: with SMTP id s3mr8113719oij.154.1597622394358;
        Sun, 16 Aug 2020 16:59:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597622394; cv=none;
        d=google.com; s=arc-20160816;
        b=CoJySZtUWMhqunV1/pmGKCBs5WyMnwymhAnrOxaI9dUu0q/yD2dSNo8z9tGU+RVQWh
         kIocVa88flta5MF/fC5HZWkaZPBgExlVBfv6NcuaMRcKOu4Q9TWqvb/p2Du4GQStVAby
         l72adJMxkq9lLJE5R2tvEVRib3KhvA09Wi91IIy9e0VzzrlnQWlgT0g/6ssqstebwgpd
         nauFyIiXL/hmHY9bfylL2GbiuJkvDuefFXvhVIaK8NqS7SckRVGkRAcmrOtZnp0hYpW7
         MSUMLbYEPDTFGc9Db9WpgaV8i36W37GH8RyocxRSkVfO/gK8wC0SyJw37O9Eun1JcMw1
         jGRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=IaLSF/3IT3kN1aES5r0bMOWGgTmtcIXmm7IIxB9EMKw=;
        b=cj05NwVbBcj/DsKi2c2aPqYcQt/md2/wFZEtgfZcZ58gET3ocU9UD45WMM+BRoSkeX
         nG/wYkbzv13mUfkXAYpskpHivrlCYsCFhzDzQjLuanZAc5/5w8wwXgXnzGVpjXnWWvsg
         FgRaPtY8c81MLnC+VHb4Hc7J6++e4E8lOv4yaD5WtbDXstc9hOBkeDCTd1xcqTE3OqQ2
         9kPlGymaEKdy1oZIRc7EvpVGoWxyenUCl57J8ehrGNmL5GofT6gA/EkTKR0lTyezz8hn
         oBiwmmlPYVcyHvhG1Tme2lGJxJATGmhAxKuLUFdTUEMR3O4TKBNvyvvnliVhK3fjSwZW
         q9ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id i19si893269oie.3.2020.08.16.16.59.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Aug 2020 16:59:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 8T+HTUmE4N/5JgPu3z56BDkA+zXKVNqg2+6yHz2zgzre0MayFORSirgi22GQ0H9AMEMCPvZigJ
 i4KgPUw04I+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="153867827"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="gz'50?scan'50,208,50";a="153867827"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2020 16:59:52 -0700
IronPort-SDR: y/5HQ9vN3uwk2+Lab/xz5BHGqWoKGoIBPNkiOqUtjlwSTiCsWS34oajeUljFskNGNJ2k1d0Krj
 WbBSFUvOBNcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="gz'50?scan'50,208,50";a="399988390"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2020 16:59:49 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k7SZ2-0000Gr-LT; Sun, 16 Aug 2020 23:59:48 +0000
Date: Mon, 17 Aug 2020 07:58:50 +0800
From: kernel test robot <lkp@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Randy Dunlap <rdunlap@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH] seqlock: <linux/seqlock.h>: fix multiple kernel-doc
 warnings
Message-ID: <202008170748.Qwpursg2%lkp@intel.com>
References: <20200816222602.437-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
In-Reply-To: <20200816222602.437-1-rdunlap@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Randy,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.9-rc1 next-20200814]
[cannot apply to tip/locking/core linux/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Randy-Dunlap/seqlock-linux-seqlock-h-fix-multiple-kernel-doc-warnings/20200817-062836
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 9123e3a74ec7b934a4a099e98af6a61c2f80bbf5
config: x86_64-randconfig-a013-20200817 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab9fc8bae805c785066779e76e7846aabad5609e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:156:8: error: 'inline' can only appear on functions
   static __always_inline void                                             \
          ^
   include/linux/compiler_attributes.h:70:41: note: expanded from macro '__always_inline'
   #define __always_inline                 inline __attribute__((__always_inline__))
                                           ^
   include/linux/compiler_types.h:144:16: note: expanded from macro 'inline'
   #define inline inline __gnu_inline __inline_maybe_unused notrace
                  ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:156:8: warning: '__gnu_inline__' attribute only applies to functions [-Wignored-attributes]
   include/linux/compiler_attributes.h:70:41: note: expanded from macro '__always_inline'
   #define __always_inline                 inline __attribute__((__always_inline__))
                                           ^
   include/linux/compiler_types.h:144:23: note: expanded from macro 'inline'
   #define inline inline __gnu_inline __inline_maybe_unused notrace
                         ^
   include/linux/compiler_attributes.h:167:56: note: expanded from macro '__gnu_inline'
   #define __gnu_inline                    __attribute__((__gnu_inline__))
                                                          ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:156:8: warning: 'no_instrument_function' attribute only applies to functions [-Wignored-attributes]
   include/linux/compiler_attributes.h:70:41: note: expanded from macro '__always_inline'
   #define __always_inline                 inline __attribute__((__always_inline__))
                                           ^
   include/linux/compiler_types.h:144:58: note: expanded from macro 'inline'
   #define inline inline __gnu_inline __inline_maybe_unused notrace
                                                            ^
   arch/x86/include/asm/linkage.h:8:32: note: expanded from macro 'notrace'
   #define notrace __attribute__((no_instrument_function))
                                  ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:156:8: warning: '__always_inline__' attribute only applies to functions [-Wignored-attributes]
   include/linux/compiler_attributes.h:70:63: note: expanded from macro '__always_inline'
   #define __always_inline                 inline __attribute__((__always_inline__))
                                                                 ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:156:34: error: variable has incomplete type 'void'
   static __always_inline void                                             \
                                                                           ^
>> include/linux/seqlock.h:157:10: error: expected ';' after top level declarator
   seqcount_##lockname##_init(seqcount_##lockname##_t *s, locktype *lock)  \
            ^
            ;
>> include/linux/seqlock.h:213:1: error: unknown type name 'seqcount_raw_spinlock_t'
   SEQCOUNT_LOCKTYPE(raw_spinlock_t,       raw_spinlock,   false,  s->lock)
   ^
   include/linux/seqlock.h:177:29: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   __seqcount_##lockname##_ptr(seqcount_##lockname##_t *s)                 \
                               ^
   <scratch space>:103:1: note: expanded from here
   seqcount_raw_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:213:1: error: unknown type name 'seqcount_raw_spinlock_t'
   include/linux/seqlock.h:183:37: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   __seqcount_##lockname##_preemptible(seqcount_##lockname##_t *s)         \
                                       ^
   <scratch space>:107:1: note: expanded from here
   seqcount_raw_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:213:1: error: unknown type name 'seqcount_raw_spinlock_t'
   include/linux/seqlock.h:189:32: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   __seqcount_##lockname##_assert(seqcount_##lockname##_t *s)              \
                                  ^
   <scratch space>:111:1: note: expanded from here
   seqcount_raw_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
>> include/linux/seqlock.h:751:17: error: implicit declaration of function '__seqcount_ptr' [-Werror,-Wimplicit-function-declaration]
           unsigned ret = read_seqcount_begin(&sl->seqcount);
                          ^
   include/linux/seqlock.h:306:24: note: expanded from macro 'read_seqcount_begin'
           read_seqcount_t_begin(__seqcount_ptr(s))
                                 ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:241:15: note: expanded from macro '__seqprop'
           seqcount_t:             __seqcount_##prop((void *)(s)),         \
                                   ^
   <scratch space>:184:1: note: expanded from here
   __seqcount_ptr
   ^
   include/linux/seqlock.h:751:17: note: did you mean '__seqcount_init'?
   include/linux/seqlock.h:306:24: note: expanded from macro 'read_seqcount_begin'
           read_seqcount_t_begin(__seqcount_ptr(s))
                                 ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:241:15: note: expanded from macro '__seqprop'
           seqcount_t:             __seqcount_##prop((void *)(s)),         \
                                   ^
   <scratch space>:184:1: note: expanded from here
   __seqcount_ptr
   ^
   include/linux/seqlock.h:71:20: note: '__seqcount_init' declared here
   static inline void __seqcount_init(seqcount_t *s, const char *name,
                      ^
   include/linux/seqlock.h:751:17: error: unknown type name 'seqcount_raw_spinlock_t'; did you mean 'seqcount_spinlock_t'?
           unsigned ret = read_seqcount_begin(&sl->seqcount);
                          ^
   include/linux/seqlock.h:306:24: note: expanded from macro 'read_seqcount_begin'
           read_seqcount_t_begin(__seqcount_ptr(s))
                                 ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:242:2: note: expanded from macro '__seqprop'
           __seqprop_case((s),     raw_spinlock,   prop),                  \
           ^
   include/linux/seqlock.h:238:2: note: expanded from macro '__seqprop_case'
           seqcount_##lockname##_t: __seqcount_##lockname##_##prop((void *)(s))
           ^
   <scratch space>:186:1: note: expanded from here
   seqcount_raw_spinlock_t
   ^
   include/linux/seqlock.h:214:1: note: 'seqcount_spinlock_t' declared here
   SEQCOUNT_LOCKTYPE(spinlock_t,           spinlock,       false,  s->lock)
   ^
   include/linux/seqlock.h:174:3: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   } seqcount_##lockname##_t;                                              \
     ^
   <scratch space>:114:1: note: expanded from here
   seqcount_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
   include/linux/seqlock.h:777:9: error: implicit declaration of function '__seqcount_ptr' [-Werror,-Wimplicit-function-declaration]
           return read_seqcount_retry(&sl->seqcount, start);
                  ^
   include/linux/seqlock.h:401:24: note: expanded from macro 'read_seqcount_retry'
           read_seqcount_t_retry(__seqcount_ptr(s), start)
                                 ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:241:15: note: expanded from macro '__seqprop'
           seqcount_t:             __seqcount_##prop((void *)(s)),         \
                                   ^
   <scratch space>:210:1: note: expanded from here
   __seqcount_ptr
   ^
   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
   include/linux/seqlock.h:777:9: error: unknown type name 'seqcount_raw_spinlock_t'; did you mean 'seqcount_spinlock_t'?
   include/linux/seqlock.h:401:24: note: expanded from macro 'read_seqcount_retry'
           read_seqcount_t_retry(__seqcount_ptr(s), start)
                                 ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:242:2: note: expanded from macro '__seqprop'
           __seqprop_case((s),     raw_spinlock,   prop),                  \
           ^
   include/linux/seqlock.h:238:2: note: expanded from macro '__seqprop_case'
           seqcount_##lockname##_t: __seqcount_##lockname##_##prop((void *)(s))
           ^
   <scratch space>:212:1: note: expanded from here
   seqcount_raw_spinlock_t
   ^
   include/linux/seqlock.h:214:1: note: 'seqcount_spinlock_t' declared here
   SEQCOUNT_LOCKTYPE(spinlock_t,           spinlock,       false,  s->lock)
   ^
   include/linux/seqlock.h:174:3: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   } seqcount_##lockname##_t;                                              \
     ^
   <scratch space>:114:1: note: expanded from here
   seqcount_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:20:
>> include/linux/hrtimer.h:163:2: error: unknown type name 'seqcount_raw_spinlock_t'; did you mean 'seqcount_spinlock_t'?
           seqcount_raw_spinlock_t seq;
           ^~~~~~~~~~~~~~~~~~~~~~~
           seqcount_spinlock_t
   include/linux/seqlock.h:214:1: note: 'seqcount_spinlock_t' declared here
   SEQCOUNT_LOCKTYPE(spinlock_t,           spinlock,       false,  s->lock)
   ^
   include/linux/seqlock.h:174:3: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   } seqcount_##lockname##_t;                                              \
     ^
   <scratch space>:114:1: note: expanded from here
   seqcount_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   In file included from include/linux/bpf.h:13:
>> include/linux/rbtree_latch.h:148:2: error: implicit declaration of function '__seqcount_ptr' [-Werror,-Wimplicit-function-declaration]
           raw_write_seqcount_latch(&root->seq);
           ^
   include/linux/seqlock.h:696:29: note: expanded from macro 'raw_write_seqcount_latch'
           raw_write_seqcount_t_latch(__seqcount_ptr(s))
                                      ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:241:15: note: expanded from macro '__seqprop'
           seqcount_t:             __seqcount_##prop((void *)(s)),         \
                                   ^
   <scratch space>:23:1: note: expanded from here
   __seqcount_ptr
   ^
   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   In file included from include/linux/bpf.h:13:
>> include/linux/rbtree_latch.h:148:2: error: unknown type name 'seqcount_raw_spinlock_t'; did you mean 'seqcount_spinlock_t'?
   include/linux/seqlock.h:696:29: note: expanded from macro 'raw_write_seqcount_latch'
           raw_write_seqcount_t_latch(__seqcount_ptr(s))
                                      ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:242:2: note: expanded from macro '__seqprop'
           __seqprop_case((s),     raw_spinlock,   prop),                  \
           ^
   include/linux/seqlock.h:238:2: note: expanded from macro '__seqprop_case'
           seqcount_##lockname##_t: __seqcount_##lockname##_##prop((void *)(s))
           ^
   <scratch space>:25:1: note: expanded from here
   seqcount_raw_spinlock_t
   ^
   include/linux/seqlock.h:214:1: note: 'seqcount_spinlock_t' declared here
   SEQCOUNT_LOCKTYPE(spinlock_t,           spinlock,       false,  s->lock)
   ^
   include/linux/seqlock.h:174:3: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   } seqcount_##lockname##_t;                                              \
     ^
   <scratch space>:114:1: note: expanded from here
   seqcount_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   In file included from include/linux/bpf.h:13:
   include/linux/rbtree_latch.h:150:2: error: unknown type name 'seqcount_raw_spinlock_t'; did you mean 'seqcount_spinlock_t'?
           raw_write_seqcount_latch(&root->seq);
           ^
   include/linux/seqlock.h:696:29: note: expanded from macro 'raw_write_seqcount_latch'
           raw_write_seqcount_t_latch(__seqcount_ptr(s))
                                      ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:242:2: note: expanded from macro '__seqprop'
           __seqprop_case((s),     raw_spinlock,   prop),                  \
           ^
   include/linux/seqlock.h:238:2: note: expanded from macro '__seqprop_case'
           seqcount_##lockname##_t: __seqcount_##lockname##_##prop((void *)(s))
           ^
   <scratch space>:51:1: note: expanded from here
   seqcount_raw_spinlock_t
   ^
   include/linux/seqlock.h:214:1: note: 'seqcount_spinlock_t' declared here
   SEQCOUNT_LOCKTYPE(spinlock_t,           spinlock,       false,  s->lock)
   ^
   include/linux/seqlock.h:174:3: note: expanded from macro 'SEQCOUNT_LOCKTYPE'
   } seqcount_##lockname##_t;                                              \
     ^
   <scratch space>:114:1: note: expanded from here
   seqcount_spinlock_t
   ^
   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   In file included from include/linux/bpf.h:13:
   include/linux/rbtree_latch.h:175:2: error: implicit declaration of function '__seqcount_ptr' [-Werror,-Wimplicit-function-declaration]
           raw_write_seqcount_latch(&root->seq);
           ^
   include/linux/seqlock.h:696:29: note: expanded from macro 'raw_write_seqcount_latch'
           raw_write_seqcount_t_latch(__seqcount_ptr(s))
                                      ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:241:15: note: expanded from macro '__seqprop'
           seqcount_t:             __seqcount_##prop((void *)(s)),         \
                                   ^
   <scratch space>:75:1: note: expanded from here
   __seqcount_ptr
   ^
   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   In file included from include/linux/bpf.h:13:
   include/linux/rbtree_latch.h:175:2: error: unknown type name 'seqcount_raw_spinlock_t'; did you mean 'seqcount_spinlock_t'?
   include/linux/seqlock.h:696:29: note: expanded from macro 'raw_write_seqcount_latch'
           raw_write_seqcount_t_latch(__seqcount_ptr(s))
                                      ^
   include/linux/seqlock.h:248:28: note: expanded from macro '__seqcount_ptr'
   #define __seqcount_ptr(s)               __seqprop(s, ptr)
                                           ^
   include/linux/seqlock.h:242:2: note: expanded from macro '__seqprop'
           __seqprop_case((s),     raw_spinlock,   prop),                  \
           ^

# https://github.com/0day-ci/linux/commit/360da27b2632939e5188f48d211b8a39cfdb8cde
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Randy-Dunlap/seqlock-linux-seqlock-h-fix-multiple-kernel-doc-warnings/20200817-062836
git checkout 360da27b2632939e5188f48d211b8a39cfdb8cde
vim +/inline +156 include/linux/seqlock.h

   139	
   140	/**
   141	 * typedef seqcount_LOCKNAME_t - sequence counter with LOCKTYPE associated
   142	 * @seqcount:	The real sequence counter
   143	 * @lock:	Pointer to the associated spinlock
   144	 *
   145	 * A plain sequence counter with external writer synchronization by a
   146	 * spinlock. The spinlock is associated to the sequence count in the
   147	 * static initializer or init function. This enables lockdep to validate
   148	 * that the write side critical section is properly serialized.
   149	 */
   150	
   151	/*
   152	 * seqcount_LOCKNAME_init() - runtime initializer for seqcount_LOCKNAME_t
   153	 * @s:		Pointer to the seqcount_LOCKNAME_t instance
   154	 * @lock:	Pointer to the associated LOCKTYPE
   155	 */
 > 156	static __always_inline void						\
 > 157	seqcount_##lockname##_init(seqcount_##lockname##_t *s, locktype *lock)	\
   158	{									\
   159		seqcount_init(&s->seqcount);					\
   160		__SEQ_LOCK(s->lock = lock);					\
   161	}									\
   162	
   163	/*
   164	 * SEQCOUNT_LOCKTYPE() - Instantiate seqcount_LOCKNAME_t and helpers
   165	 * @locktype:		actual typename
   166	 * @lockname:		name
   167	 * @preemptible:	preemptibility of above locktype
   168	 * @lockmember:		argument for lockdep_assert_held()
   169	 */
   170	#define SEQCOUNT_LOCKTYPE(locktype, lockname, preemptible, lockmember)	\
   171	typedef struct seqcount_##lockname {					\
   172		seqcount_t		seqcount;				\
   173		__SEQ_LOCK(locktype	*lock);					\
   174	} seqcount_##lockname##_t;						\
   175										\
   176	static __always_inline seqcount_t *					\
   177	__seqcount_##lockname##_ptr(seqcount_##lockname##_t *s)			\
   178	{									\
   179		return &s->seqcount;						\
   180	}									\
   181										\
   182	static __always_inline bool						\
   183	__seqcount_##lockname##_preemptible(seqcount_##lockname##_t *s)		\
   184	{									\
   185		return preemptible;						\
   186	}									\
   187										\
   188	static __always_inline void						\
   189	__seqcount_##lockname##_assert(seqcount_##lockname##_t *s)		\
   190	{									\
   191		__SEQ_LOCK(lockdep_assert_held(lockmember));			\
   192	}
   193	
   194	/*
   195	 * __seqprop() for seqcount_t
   196	 */
   197	
   198	static inline seqcount_t *__seqcount_ptr(seqcount_t *s)
   199	{
   200		return s;
   201	}
   202	
   203	static inline bool __seqcount_preemptible(seqcount_t *s)
   204	{
   205		return false;
   206	}
   207	
   208	static inline void __seqcount_assert(seqcount_t *s)
   209	{
   210		lockdep_assert_preemption_disabled();
   211	}
   212	
 > 213	SEQCOUNT_LOCKTYPE(raw_spinlock_t,	raw_spinlock,	false,	s->lock)
   214	SEQCOUNT_LOCKTYPE(spinlock_t,		spinlock,	false,	s->lock)
   215	SEQCOUNT_LOCKTYPE(rwlock_t,		rwlock,		false,	s->lock)
   216	SEQCOUNT_LOCKTYPE(struct mutex,		mutex,		true,	s->lock)
   217	SEQCOUNT_LOCKTYPE(struct ww_mutex,	ww_mutex,	true,	&s->lock->base)
   218	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008170748.Qwpursg2%25lkp%40intel.com.

--HlL+5n6rz5pIUxbD
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HlL+5n6rz5pIUxbD--
