Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLOBTDZQKGQERMHLU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B39317DE03
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 11:55:43 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id l21sf6545813qtq.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 03:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583751342; cv=pass;
        d=google.com; s=arc-20160816;
        b=TT7grd/9ZfUAroLB67jKjI7JTlYxf7UnV6ALRIi8P7IsfffZHlVuLkNKdfs+YC/ym2
         Y6zp+U3UHGS0hrb5wohvXCsKPZLJi7pHCc6t7MMUBiu6Poy3uPxq0FJ8yWsR+/rwrokU
         FpNt+DIlq/1zj26OIzWQL0qtjto/cAAnUEObk6qVvN+Zx20XLZpbPRDxo0vnGl4xs/dH
         jRGKtF1zyt/Cwa1Lwzdexgb7uNYry856kuSDtrSN6422v1Fm9/xQALPDkLyHg0nSLdfb
         zipBJp6A4Pa8XIQoMkx+7fUeed7OubCMiBt0sl0tZwFfvb4KBEM/nzolaoRcU6eBBDoE
         79Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=frX7rZLaF/5Eh2XO0cEgaZGeoLuWF8VnubcHsZ52wU4=;
        b=kgvWSqxGTvmlvWeFXFjj7nc1gz38d+iI03elmueqEq/Sx1i09W2gUOFnSvpW7XrBog
         XdwJeYsDXtZ5a8jRcGqkVgaKif7p9Zwkht2/+peUhIkIMstGga+zfUZ0OlA86B+cYnLz
         0vmPZ5zVDoS90JKb9dE0vhWlxeMDRkOFOFI0Pn57D4gLs8mCGAA8LDQnvUxd+ypIseMy
         vSNa2oj85ukxgoxcnyW36VpUzNtq87RolWRws/n9sP85LaGerPu/zQfWHOJYqdNCqO5+
         DaW3ZOHynxJuutkltzLpmFwh/f4LP3FLjXPTkcEMzAAEWL4jLPoWh4waZcK4uRUb8UH5
         0YMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=frX7rZLaF/5Eh2XO0cEgaZGeoLuWF8VnubcHsZ52wU4=;
        b=lTZMtivUcFR2zFENS9r4CTgyjx8U4/kHp2fOAkcyflYBtMRl6nA3/8eyNhwNUF5Ksx
         xezVrdtQaBHGLwcA0uW+GEwkHjO4QvxFZXZlA7iYkRL8pEq75JIU47x9IzkNuaAlXVHj
         urLGGo3njdGPPWpO/fzwaWAHWaoGSFna6ITyJZuY525+F5+m4UtdvO8/EGcHFkZUgkk+
         1Yb6VsTE8k0FyzO8VN3QknB9laQvqiesHYNu41NXw0MTxdLS4GzIVaXUwuOy8E08y7lq
         QklhU4cUK1y19ulUMKb7VSCTPog/ZWGnFmsCBtcD7iUN+Gq3SV46Tkkg7vyo9fXi6Ztg
         u7cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=frX7rZLaF/5Eh2XO0cEgaZGeoLuWF8VnubcHsZ52wU4=;
        b=Qb8c1lV5eDY/Ig+oB1nLoE8C6SOQolAl7RzX4F657MOjV4UZMoms16zkBWIw654sYl
         J9/q43KNoHPjI1IHU/CafhyIK5COgBwFj4wVnI2vurGtKrtEKJh0Kt+rwzNsTrIkfS82
         3YrKqqE2kqH5lwK3Zs2qKerKeCgJpe26tf8AMO4jGXE7QIa8B3WXh56SeyYb+H+vZw2W
         +4ax5QckJ0tyF/rEcwBlW1KLkZ9WcfMVYwjxBR940GSo7R7V3x4HHnhjGDvt8nSqpe9N
         TZQHIRZNwhklDWw5gOcPBBC5+5pJFBh5cRQUy+8T0hHHd1s4QYFAPuMM0jIbGVSwKFHz
         QH0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0yjHye3zdgbxDBwTUQgUKDhPbSNRCAZlR3wQoVTDhv87ukxVEa
	NZkPbyAeFF8K1O7qcLzoWgc=
X-Google-Smtp-Source: ADFU+vsl9DysPjFCcb82piEK9FB5v9ftMpw+P1NcejGNJMs72e8AEdwD3RWlHk6dgLbpXnkuUvdzcA==
X-Received: by 2002:a37:79c6:: with SMTP id u189mr7988542qkc.96.1583751341678;
        Mon, 09 Mar 2020 03:55:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6714:: with SMTP id b20ls3902495qkc.5.gmail; Mon, 09 Mar
 2020 03:55:41 -0700 (PDT)
X-Received: by 2002:a37:678b:: with SMTP id b133mr7993220qkc.327.1583751341302;
        Mon, 09 Mar 2020 03:55:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583751341; cv=none;
        d=google.com; s=arc-20160816;
        b=0ZpDf2Vl5xjxTb6h8/9v8xOHWeFPCMYg0X36CTVtZ48dGpNpoKnl2pcBjwMbYjy+Yu
         o0TFp9RyyTGJLuIaK0EZweJ2AipdbYGwYgwPpVg4fM155M7n2+o1gYBy6gHQ9vs3dWWo
         slyRLvI9cJgzYuqLYnR8pog1PfyoVzUHH2GAZ7Yynhw9azpW58u9V8bMASvi55CrwIpJ
         z23cVgM0a8n54Oy1mdouiSu5hiiqyH7hVdQ3pRvAaQxE4qBHz/BF+EZsmj9VeSIBmpz/
         ORYKuYEtTB5WNptVsvhRDts/MbmUN6Hk3Q9wW2iwnJ3fx7he7NXIHpvU0ED0T5rC/3qR
         V+Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pCxilNV4WM3bqTKYB3rWWlMklnOEVTzJt76GYzZz6wk=;
        b=dkNHRwSaQhsoOKdMMBqJBXfCNX9qy0BWm1/EKA7lkU1vdoBPxy1RjFHh3WL0bvpTdh
         tRS5AFHwykoOopI6/MN5RRvBln02V1ebh3jjHwuXGn4RmS1EDqkUGQkPrWnXRZ4kCjUt
         G0j8Vi0negJX+7l2PUex3bLy/YoNqyREOTLZpgM4K48k+rwh01Oq++dWdz/4HWtNALHA
         nDUQQO21IZigXwkQsyblixP613GS6r4V7hn6YIsu0USNK1bff9s9WRC8PD83R0cl3GRA
         7p2BoesGp6FZCwzHVf0KH3/HcR/wW00gMVFMmCCTZEGMXHS1Vy92bHZMeSf5+rKJkExe
         lRuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id e26si495332qka.2.2020.03.09.03.55.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 03:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 03:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; 
   d="gz'50?scan'50,208,50";a="230885963"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 09 Mar 2020 03:55:35 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jBG4N-0006Zy-09; Mon, 09 Mar 2020 18:55:35 +0800
Date: Mon, 9 Mar 2020 18:55:06 +0800
From: kbuild test robot <lkp@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: kbuild-all@lists.01.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
	clang-built-linux@googlegroups.com,
	=?utf-8?B?Ru+/ve+/ve+/vW5nLXJ177+977+977+9IFPvv73vv73vv71uZw==?= <maskray@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH] kbuild: link lib-y objects to vmlinux forcibly when
 CONFIG_MODULES=y
Message-ID: <202003091801.6KQQKZ1Y%lkp@intel.com>
References: <20200309023910.25370-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
In-Reply-To: <20200309023910.25370-1-masahiroy@kernel.org>
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


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Masahiro,

I love your patch! Yet something to improve:

[auto build test ERROR on kbuild/for-next]
[also build test ERROR on linux/master linus/master v5.6-rc5 next-20200306]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Masahiro-Yamada/kbuild-link-lib-y-objects-to-vmlinux-forcibly-when-CONFIG_MODULES-y/20200309-115312
base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
config: sparc-defconfig (attached as .config)
compiler: sparc-linux-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=sparc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/sparc/lib/strlen.o: In function `strlen':
>> (.text+0x0): multiple definition of `strlen'
   lib/string.o:string.c:(.text+0x2b0): first defined here

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003091801.6KQQKZ1Y%25lkp%40intel.com.

--PNTmBPCT7hxwcZjr
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
RMiXU/8AZDgecPDMAAA=

--PNTmBPCT7hxwcZjr--
