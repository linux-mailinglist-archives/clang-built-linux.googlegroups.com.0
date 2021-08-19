Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT4Z7OEAMGQEKCGTPWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3FC3F223D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 23:27:45 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id r13-20020a17090a4dcdb0290176dc35536asf3047217pjl.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 14:27:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629408464; cv=pass;
        d=google.com; s=arc-20160816;
        b=OMKoaxELGGznaKx5VvQVybza6tgWWju8Tb37ZXC/hyzyREg4L93Eu8pvCCAFYEsni4
         tdQFzB48A7cEuMVNVKfo4CGboqzdIk6NLQPwdB7z5fAZj75jNWnro4GBSryjD0P9T0Gz
         8N6zTJtjeFSwcZN8+urVmZJXd8yxvwn/GduJYSBcP3xh85AQBR6eyORc0OpBR+IiENdH
         A7zYHRnMsXGVlEFdgBodCq8im7XdaWKGvHJOeUm334atUBHpVkzijYrTBf3x5rIp2MKQ
         Nn9YnA8ypX9wdI7fPu1nWdwFjC42CZ84fnnqGRlZAtiee/4EP+0P8iq8KWG8XHdkhhvo
         ldwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fpVTJYwB9e/BqKjBovmAY/M+pVobJMNHPt+8ptyZCx0=;
        b=LHVzTx1zAXoklzp8BxZeOEn379lQ6hhDYe5ckDo9eJ3p+BGO7k6ilCMETyRnFujnfh
         01GsU7H4INI92WIXfwc+Ysru2NoKT3afqmJcp0lOWLxw+BVLcevEk+i6RKl7FJ+wCCzX
         XB6hw3llRWIX7nmwaRN8LKePfxQxqzy/WgZpi66PjyFa6LP5XJhZ5SOY6Z9uI7wawVpy
         8GiC40PbxlJR5FhNVzxgNDpDhX3ClUg8wYrunZqpqKkc5Zzkpt+QWGePtaS/UZX1P5XR
         KrdNPH39p3zMgQ1z3rQBkiTt8JbtdLa5pO1HrQb92sm4lZAJBY7hAMMDxjtp0JQkdbHq
         jghg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fpVTJYwB9e/BqKjBovmAY/M+pVobJMNHPt+8ptyZCx0=;
        b=g5RT/IMGqfCmmDlhwq02fHbTonU0ioIFh2MEiUV90fv8ogSMitAyey04hTJ/OzT24B
         HTQFEXq2PksHlZMTDQAwIC2wxtrFVkkpPa0oDDeRTuyE2wQvkhdEen7T/0X472yNYB3h
         fN7WYvWLNzRGG3L1dVP4JgRdwT5ntKxA9ZF/8JC3bv3yqDtUWcTztCNEVXIPk6K/1611
         4Z6CX5NdrUS0yiJ6uvXXFpNL3voGvIaFdKZXcHdO+FPcHCerk6AnZBQcNgR0Gb1GNoXq
         LsvRV+IQPTzSmdPNGe+WwN6Irj7rQCUUZnqvxvbbUUHLy8oOlK4cY8+GmjnAJRyCZdTt
         wgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fpVTJYwB9e/BqKjBovmAY/M+pVobJMNHPt+8ptyZCx0=;
        b=f2rYZZKjFjQJSWt300CHYezEe4+CJVBL9Qq4w64vknt5MIoGa4fCsBuPbxbyjFSEr0
         vjlqt4loz5pj+fgw7HFS812472jyODqZwCeMFDs6UAEu/U8jlXbfmdiP0PnJxCB14k7g
         spYBf0XklG/u2xTPKcP1Mde7iThRuVGdkuCIi/kbOAdjRL1O5dnU+2tZ6gHwgxM8R9Zx
         XftNc+wrQwt7+ZjrKsg05GPLLYIexRJibtIteSdfVK9Eisl8ztHpbogj/u4au2fLCPeE
         50sXOjhqz//qkd5b8RsJ5eILYX7pN0gVxUTcM++xMNixELLwiJ6C5cerpnCe2PyP4nz/
         1xow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333d0fLq4VlcNm2x+zT4a377Q9eJ3WUICCDApdyBXk/oT3FnqjR
	rD7kqg1jwIypnZAfMUrPWF4=
X-Google-Smtp-Source: ABdhPJyiASfkQ9HyrlCv80cfymThkdnG7hzx/6KjtICMckgTNw+mjiljCz0QehWHXqcn5Pc3kQaYBA==
X-Received: by 2002:a17:902:c192:b0:12d:c674:8054 with SMTP id d18-20020a170902c19200b0012dc6748054mr13601631pld.11.1629408463627;
        Thu, 19 Aug 2021 14:27:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bf47:: with SMTP id u7ls3449850pls.11.gmail; Thu, 19
 Aug 2021 14:27:43 -0700 (PDT)
X-Received: by 2002:a17:902:8c83:b029:129:17e5:a1cc with SMTP id t3-20020a1709028c83b029012917e5a1ccmr13419677plo.49.1629408462805;
        Thu, 19 Aug 2021 14:27:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629408462; cv=none;
        d=google.com; s=arc-20160816;
        b=yudT9zkpQFGNgfukeIlkEY+h/z5XS1iF63GAdUw+jng6Je+WyLPqH0QqSUE4+vaMpB
         MFKr540dVte8PZXEnhF4RiHSpzK7NpNlhbwz/gfjjSdP+LpcYRYADwK5RBNSq9EcFcGF
         /LVKTaIhVQ3x0N3SOI2XP3qgencG+dz7J8oJupylSwk7xeRrDHqNCjkYsGlyH2AVTRT1
         v23KurRNGDGUUEMHNcXvjuAfw1s+AMSaKLs/gCjd7LEkqXFiGTQ85DZlbz2ScV2l+pbb
         BK7WaXJmPQfNz8c1lsmbfDl3IU3ui4IAATiFeoAE9hsujOLdkRgL4GAJaZBn4VPuVkiP
         3iLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=XAFKuPpqH9oRZ3JmkCosk8mFs3/XoYPQn6k9BQUddqE=;
        b=LZPLnF0bz8cMRoUYt3YdumKMrEMBeTSRSBOYlrJoXa1XvSuNTLJc77K7mN2T9g8+Yd
         NeZKaH/EAbVnwPKt7nnPnMBVTon9R4w8rM+0vCYB1VtS/j/RlzzfEi62WkWimlr2M/f9
         wXpxSJ2RhWQ/xZnUa8tKQ0Vm2hSok9AaeVK8fUk+Vk/yY80YEF2O0AOLo1U0Y4FZign3
         XEz0+WbsaN/bsEnfOjhN0QJ177t/Z5ByaZ6eadJqXwJp9hvvyBGFnUzKzTr21Dwxbgxs
         UUpxoFuK0xYxymWLuXsAG6fW5NP7JheoDofCa+ZBWM5vYwGfngdFFtRuzetR7xQaTULk
         OWqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id b14si445666pjg.2.2021.08.19.14.27.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 14:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="216651363"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; 
   d="gz'50?scan'50,208,50";a="216651363"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 14:27:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; 
   d="gz'50?scan'50,208,50";a="512278041"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 14:27:39 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGpZa-000UIi-Db; Thu, 19 Aug 2021 21:27:38 +0000
Date: Fri, 20 Aug 2021 05:27:07 +0800
From: kernel test robot <lkp@intel.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [PATCH 03/11] coresight: config: Add configuration and feature
 generic functions
Message-ID: <202108200551.cswjj26m-lkp@intel.com>
References: <20210818194022.379573-4-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
In-Reply-To: <20210818194022.379573-4-mathieu.poirier@linaro.org>
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Mathieu,

I love your patch! Perhaps something to improve:

[auto build test WARNING on soc/for-next]
[also build test WARNING on linux/master linus/master v5.14-rc6 next-20210819]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Mathieu-Poirier/coresight-Patches-for-v5-15/20210819-034401
base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
config: arm-randconfig-c002-20210818 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574a4dea5b718e4386bf2e26af0126e5978ce)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/832a1a28927177c3641fb635e4f623ff0652d3e1
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Mathieu-Poirier/coresight-Patches-for-v5-15/20210819-034401
        git checkout 832a1a28927177c3641fb635e4f623ff0652d3e1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
           if (err < 0)
           ^
   drivers/hwmon/nct6775.c:2347:26: note: Calling 'LM75_TEMP_TO_REG'
           data->temp[index][nr] = LM75_TEMP_TO_REG(val);
                                   ^~~~~~~~~~~~~~~~~~~~~
   drivers/hwmon/lm75.h:27:14: note: Assuming '__UNIQUE_ID___x175' is <= '__UNIQUE_ID___y176'
           int ntemp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
                       ^
   include/linux/minmax.h:137:32: note: expanded from macro 'clamp_val'
   #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:124:48: note: expanded from macro 'clamp_t'
   #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi)
                                      ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:112:27: note: expanded from macro 'max_t'
   #define max_t(type, x, y)       __careful_cmp((type)(x), (type)(y), >)
                                   ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/minmax.h:104:48: note: expanded from macro 'min_t'
   #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                   ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
   include/linux/minmax.h:38:14: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                   ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:31:25: note: expanded from macro '__cmp_once'
                   typeof(x) unique_x = (x);               \
                                         ^
   drivers/hwmon/lm75.h:27:14: note: '?' condition is false
           int ntemp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
                       ^
   include/linux/minmax.h:137:32: note: expanded from macro 'clamp_val'
   #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                  ^
   include/linux/minmax.h:124:48: note: expanded from macro 'clamp_t'
   #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi)
                                                  ^
   include/linux/minmax.h:112:27: note: expanded from macro 'max_t'
   #define max_t(type, x, y)       __careful_cmp((type)(x), (type)(y), >)
                                   ^
   include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                   ^
   include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                   __cmp(unique_x, unique_y, op); })
                   ^
   include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
   #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                            ^
   drivers/hwmon/lm75.h:27:14: note: '__UNIQUE_ID___x177' is < '__UNIQUE_ID___y178'
           int ntemp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
                       ^
   include/linux/minmax.h:137:32: note: expanded from macro 'clamp_val'
   #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:124:36: note: expanded from macro 'clamp_t'
   #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:104:27: note: expanded from macro 'min_t'
   #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                   __cmp(unique_x, unique_y, op); })
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
   #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                            ^~~
   drivers/hwmon/lm75.h:27:14: note: '?' condition is true
           int ntemp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
                       ^
   include/linux/minmax.h:137:32: note: expanded from macro 'clamp_val'
   #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                  ^
   include/linux/minmax.h:124:36: note: expanded from macro 'clamp_t'
   #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi)
                                      ^
   include/linux/minmax.h:104:27: note: expanded from macro 'min_t'
   #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                   ^
   include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                   ^
   include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                   __cmp(unique_x, unique_y, op); })
                   ^
   include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
   #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                            ^
   drivers/hwmon/lm75.h:29:12: note: 'ntemp' is < 0
           ntemp += (ntemp < 0 ? -250 : 250);
                     ^~~~~
   drivers/hwmon/lm75.h:29:12: note: '?' condition is true
   drivers/hwmon/lm75.h:30:29: note: The result of the left shift is undefined because the left operand is negative
           return (u16)((ntemp / 500) << 7);
                        ~~~~~~~~~~~~~ ^
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   9 warnings generated.
>> drivers/hwtracing/coresight/coresight-config.c:167:4: warning: Value stored to 'name' is never read [clang-analyzer-deadcode.DeadStores]
                           name = feat_csdev->feat_desc->params_desc[j].name;
                           ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hwtracing/coresight/coresight-config.c:167:4: note: Value stored to 'name' is never read
                           name = feat_csdev->feat_desc->params_desc[j].name;
                           ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hwtracing/coresight/coresight-config.c:206:4: warning: Value stored to 'name' is never read [clang-analyzer-deadcode.DeadStores]
                           name = feat_csdev->feat_desc->params_desc[j].name;
                           ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hwtracing/coresight/coresight-config.c:206:4: note: Value stored to 'name' is never read
                           name = feat_csdev->feat_desc->params_desc[j].name;
                           ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/hwtracing/coresight/coresight-config.c:234:3: warning: Value stored to 'csdev' is never read [clang-analyzer-deadcode.DeadStores]
                   csdev = feat_csdev->csdev;
                   ^       ~~~~~~~~~~~~~~~~~
   drivers/hwtracing/coresight/coresight-config.c:234:3: note: Value stored to 'csdev' is never read
                   csdev = feat_csdev->csdev;
                   ^       ~~~~~~~~~~~~~~~~~
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   6 warnings generated.
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   6 warnings generated.
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   10 warnings generated.
   drivers/hwtracing/coresight/coresight-tmc-etr.c:763:33: warning: Value stored to 'etr' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct coresight_device *tmp, *etr = drvdata->csdev;
                                          ^~~   ~~~~~~~~~~~~~~
   drivers/hwtracing/coresight/coresight-tmc-etr.c:763:33: note: Value stored to 'etr' during its initialization is never read
           struct coresight_device *tmp, *etr = drvdata->csdev;
                                          ^~~   ~~~~~~~~~~~~~~
   drivers/hwtracing/coresight/coresight-tmc-etr.c:902:2: warning: Called function pointer is null (null dereference) [clang-analyzer-core.CallAndMessage]
           etr_buf->ops->free(etr_buf);
           ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:1408:6: note: Assuming 'etr_buf' is non-null
           if (!etr_buf)
               ^~~~~~~~
   drivers/hwtracing/coresight/coresight-tmc-etr.c:1408:2: note: Taking false branch
           if (!etr_buf)
           ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:1413:2: note: Taking false branch
           if (!refcount_dec_and_test(&etr_buf->refcount)) {
           ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:1426:6: note: Assuming 'buf' is null
           if (buf && WARN_ON(buf != etr_buf))
               ^~~
   drivers/hwtracing/coresight/coresight-tmc-etr.c:1426:10: note: Left side of '&&' is false
           if (buf && WARN_ON(buf != etr_buf))
                   ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:1429:2: note: Calling 'tmc_free_etr_buf'
           tmc_free_etr_buf(etr_perf->etr_buf);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hwtracing/coresight/coresight-tmc-etr.c:901:10: note: Assuming field 'ops' is non-null
           WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
                   ^
   include/asm-generic/bug.h:121:25: note: expanded from macro 'WARN_ON'
           int __ret_warn_on = !!(condition);                              \
                                  ^~~~~~~~~
   drivers/hwtracing/coresight/coresight-tmc-etr.c:901:10: note: Left side of '||' is false
           WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
                   ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:901:27: note: Assuming field 'free' is null
           WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
                                    ^
   include/asm-generic/bug.h:121:25: note: expanded from macro 'WARN_ON'
           int __ret_warn_on = !!(condition);                              \
                                  ^~~~~~~~~
   drivers/hwtracing/coresight/coresight-tmc-etr.c:901:2: note: Taking true branch
           WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
           ^
   include/asm-generic/bug.h:122:2: note: expanded from macro 'WARN_ON'
           if (unlikely(__ret_warn_on))                                    \
           ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:901:2: note: Loop condition is false.  Exiting loop
           WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
           ^
   include/asm-generic/bug.h:123:3: note: expanded from macro 'WARN_ON'
                   __WARN();                                               \
                   ^
   include/asm-generic/bug.h:88:19: note: expanded from macro '__WARN'
   #define __WARN()                __WARN_printf(TAINT_WARN, NULL)
                                   ^
   include/asm-generic/bug.h:90:3: note: expanded from macro '__WARN_printf'
                   instrumentation_begin();                                \
                   ^
   include/linux/instrumentation.h:57:34: note: expanded from macro 'instrumentation_begin'
   # define instrumentation_begin()        do { } while(0)
                                           ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:901:2: note: Loop condition is false.  Exiting loop
           WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
           ^
   include/asm-generic/bug.h:123:3: note: expanded from macro 'WARN_ON'
                   __WARN();                                               \
                   ^
   include/asm-generic/bug.h:88:19: note: expanded from macro '__WARN'
   #define __WARN()                __WARN_printf(TAINT_WARN, NULL)
                                   ^
   include/asm-generic/bug.h:92:3: note: expanded from macro '__WARN_printf'
                   instrumentation_end();                                  \
                   ^
   include/linux/instrumentation.h:58:33: note: expanded from macro 'instrumentation_end'
   # define instrumentation_end()          do { } while(0)
                                           ^
   drivers/hwtracing/coresight/coresight-tmc-etr.c:901:2: note: Loop condition is false.  Exiting loop
           WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
           ^
   include/asm-generic/bug.h:123:3: note: expanded from macro 'WARN_ON'
                   __WARN();                                               \
                   ^
   include/asm-generic/bug.h:88:19: note: expanded from macro '__WARN'
   #define __WARN()                __WARN_printf(TAINT_WARN, NULL)

vim +/name +167 drivers/hwtracing/coresight/coresight-config.c

   133	
   134	/*
   135	 * For the selected presets, we set the register associated with the parameter, to
   136	 * the value of the preset index associated with the parameter.
   137	 */
   138	static int cscfg_update_presets(struct cscfg_config_csdev *config_csdev, int preset)
   139	{
   140		int i, j, val_idx = 0, nr_cfg_params;
   141		struct cscfg_parameter_csdev *param_csdev;
   142		struct cscfg_feature_csdev *feat_csdev;
   143		const struct cscfg_config_desc *config_desc = config_csdev->config_desc;
   144		const char *name;
   145		const u64 *preset_base;
   146		u64 val;
   147	
   148		/* preset in range 1 to nr_presets */
   149		if (preset < 1 || preset > config_desc->nr_presets)
   150			return -EINVAL;
   151		/*
   152		 * Go through the array of features, assigning preset values to
   153		 * feature parameters in the order they appear.
   154		 * There should be precisely the same number of preset values as the
   155		 * sum of number of parameters over all the features - but we will
   156		 * ensure there is no overrun.
   157		 */
   158		nr_cfg_params = config_desc->nr_total_params;
   159		preset_base = &config_desc->presets[(preset - 1) * nr_cfg_params];
   160		for (i = 0; i < config_csdev->nr_feat; i++) {
   161			feat_csdev = config_csdev->feats_csdev[i];
   162			if (!feat_csdev->nr_params)
   163				continue;
   164	
   165			for (j = 0; j < feat_csdev->nr_params; j++) {
   166				param_csdev = &feat_csdev->params_csdev[j];
 > 167				name = feat_csdev->feat_desc->params_desc[j].name;
   168				val = preset_base[val_idx++];
   169				if (param_csdev->val64) {
   170					dev_dbg(&config_csdev->csdev->dev,
   171						"set param %s (%lld)", name, val);
   172					param_csdev->reg_csdev->reg_desc.val64 = val;
   173				} else {
   174					param_csdev->reg_csdev->reg_desc.val32 = (u32)val;
   175					dev_dbg(&config_csdev->csdev->dev,
   176						"set param %s (%d)", name, (u32)val);
   177				}
   178			}
   179	
   180			/* exit early if all params filled */
   181			if (val_idx >= nr_cfg_params)
   182				break;
   183		}
   184		return 0;
   185	}
   186	
   187	/*
   188	 * if we are not using a preset, then need to update the feature params
   189	 * with current values. This sets the register associated with the parameter
   190	 * with the current value of that parameter.
   191	 */
   192	static int cscfg_update_curr_params(struct cscfg_config_csdev *config_csdev)
   193	{
   194		int i, j;
   195		struct cscfg_feature_csdev *feat_csdev;
   196		struct cscfg_parameter_csdev *param_csdev;
   197		const char *name;
   198		u64 val;
   199	
   200		for (i = 0; i < config_csdev->nr_feat; i++) {
   201			feat_csdev = config_csdev->feats_csdev[i];
   202			if (!feat_csdev->nr_params)
   203				continue;
   204			for (j = 0; j < feat_csdev->nr_params; j++) {
   205				param_csdev = &feat_csdev->params_csdev[j];
   206				name = feat_csdev->feat_desc->params_desc[j].name;
   207				val = param_csdev->current_value;
   208				if (param_csdev->val64) {
   209					dev_dbg(&config_csdev->csdev->dev,
   210						"set param %s (%lld)", name, val);
   211					param_csdev->reg_csdev->reg_desc.val64 = val;
   212				} else {
   213					param_csdev->reg_csdev->reg_desc.val32 = (u32)val;
   214					dev_dbg(&config_csdev->csdev->dev,
   215						"set param %s (%d)", name, (u32)val);
   216				}
   217			}
   218		}
   219		return 0;
   220	}
   221	
   222	/*
   223	 * Configuration values will be programmed into the driver locations if enabling, or read
   224	 * from relevant locations on disable.
   225	 */
   226	static int cscfg_prog_config(struct cscfg_config_csdev *config_csdev, bool enable)
   227	{
   228		int i, err = 0;
   229		struct cscfg_feature_csdev *feat_csdev;
   230		struct coresight_device *csdev;
   231	
   232		for (i = 0; i < config_csdev->nr_feat; i++) {
   233			feat_csdev = config_csdev->feats_csdev[i];
 > 234			csdev = feat_csdev->csdev;
   235			dev_dbg(&csdev->dev, "cfg %s;  %s feature:%s", config_csdev->config_desc->name,
   236				enable ? "enable" : "disable", feat_csdev->feat_desc->name);
   237	
   238			if (enable)
   239				err = cscfg_set_on_enable(feat_csdev);
   240			else
   241				cscfg_save_on_disable(feat_csdev);
   242	
   243			if (err)
   244				break;
   245		}
   246		return err;
   247	}
   248	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108200551.cswjj26m-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/j9GFCfaXPkBAA==

--VS++wcV0S1rZb1Fb--
