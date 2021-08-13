Return-Path: <clang-built-linux+bncBD26TVH6RINBBKNC3GEAMGQEWHOPLWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id D69443EB454
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 13:02:02 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id e2-20020a17090a3b8200b001791a53ce87sf4138893pjc.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 04:02:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628852521; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5FHKCdJ32GoPO6g4RpIJ1x1iuCt6Ns4TQgY8F4LUckbV3gvk/mgCeUvZJpOGege1x
         MyTgTZ8pxiWp6DrEOUNNUGxDHCJR4t05GUO1YLR8/7OMzrLD9HkH0KJ8vkBcAoF2qUAx
         qbH1s7PgSgAEIWcOMmashXw9fPkMAsYSmxp4UdEh2vXcgKqXomuie0jkqh41EagaF2oh
         9X/VI7SHn7KCjwuYdh5ZJwbzUdq3ztvKFEJNL66TXMe61U2xzmiU7Elh7F+i9FuSa2PU
         8d8rWECMr+EQNK0ilzTpRQQDO3lLGCtaRD9ABLwohkyIVZUT2gFWG9q+N3CxQdoauvPx
         Cwtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:to:references
         :subject:sender:dkim-signature;
        bh=8KqYehSW3E9GnplcH9YZFzIpA+z8wmyi4HLadZPbFw0=;
        b=Ilv7ypYGSD20xuOvpF6KI0fzc9sfsWZ8UcTlk15F2erenqRJuV356++FRW7yedg2Bm
         5Oy7nnoJf0aN5C3eXgvcCaFg4ssYnN9TPA8U3hx62LkVhMlv9EpG/cNmGRVKsRjz2l1b
         7RjasOCYzXOV16E09Mc01DdQYTvojfrWGizMcerCkbtm8H7Rle/Trhhgjh+wNiF20aQT
         SS1kIgWVBq6LO3LcWf90Q99vp9jYAcl7CssS46bWHJ/fA09oCvpVLfd7J4JKEqpZfPFB
         Lb+43mZchExC/N4dvq8oOTEVFq12ap5xPBYReNNpTXICyzt5zVEwoHUlPStoVXbQVyp6
         cBtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8KqYehSW3E9GnplcH9YZFzIpA+z8wmyi4HLadZPbFw0=;
        b=eGPaup5Dj9v7W5pcC4KqYDeWKliI8h+w+zDsMIfHbnvop9pGNjOqBEman2KWL/0htE
         MhZW9pmDCaap34DJgKQDQ6gDuXOLQedT6oX7hCenzyLG4HRSHSx62GBKByX0yLDs3flB
         XX74bf3nqDCRGDc0fKHCHH1A8+al+j+prmgUwVeCqFFLYHFeTMGkzvpbhifTyTeRl4rd
         yjLDO356bAKy226eaLj5HkVWmOv7J8K3hcsd31O+oTYW1rUpaOtYZ8c63MnVQvsc+E8k
         sLg5xRlsIkB0oYOErdr4MuMUWWo4COcixentHwv8GgY2o6X5m+uhQoOzKJjTQgSW/LOb
         6Fvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8KqYehSW3E9GnplcH9YZFzIpA+z8wmyi4HLadZPbFw0=;
        b=sXL134EpcsYVTcrUDGLIM6LNA+oj042rIb7iFx1UA1cOfjVkpZmisYX8Iwrk7TfrSI
         2+gCaR/bD3eBhr1x7YLFwjVN69rldaU9x0U5hYMuv7ZtfRWXoNTjJaegTvaMvG44798g
         kbDHIOOOQjQS2c98llNeWDsqc/QY7VVaNR9AcrpF11QUmLHhBvUlBzO6aTBajPSUQzWU
         Qz3ZL4IaFV4+UNRaAJJdhkqjXDaXWGr9/70B2V2Xigh46ZIXhU48Rk8ww5k0J3vjb2Rf
         nQQQ5nzyDkqs6HKFXY76hqLM1ejcQ4BJSGdbtVCHHQ1f49etBJYSF2f313GBFQJmgrR+
         C6KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RN3RuDDf17HlBSPaqYuxw/2QqZy+RFKF1NdG84weSFseH+Hh3
	tSRErN9gXeqmJFGWkQ/BCso=
X-Google-Smtp-Source: ABdhPJyWrx7ynbb75nWg0lr/NBDi4Dn/b3JKrWueS+G1EzFdfIeXSMeFrWQpYtwOMEEfkqkI4Jiokw==
X-Received: by 2002:a63:a58:: with SMTP id z24mr1852809pgk.175.1628852521415;
        Fri, 13 Aug 2021 04:02:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e80a:: with SMTP id u10ls607171plg.9.gmail; Fri, 13
 Aug 2021 04:02:00 -0700 (PDT)
X-Received: by 2002:a17:90b:4acb:: with SMTP id mh11mr2220895pjb.20.1628852520574;
        Fri, 13 Aug 2021 04:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628852520; cv=none;
        d=google.com; s=arc-20160816;
        b=xApWA9/1iCFgn1Hin30fWDv25uTnXMChw9KU5HmfIlVV3Hq7rQx8HrpYGQSur4nSLP
         sX3XqEw+1Fw5aekcME/Xfa0yauc3IEEUmhZtSVk+SuI/YtyxTrtgMyqHsGe0k9dsTIlx
         dSuwmVEt6IrZaSHlyWrxG54AhZR9BoF/DN9oX7wLiUNwdWDglQPzzYeH+LLl2Vt6nKDb
         VCP6F37Mkuj1AfCp4rMBbqZgnWa/qQunT2xp1A0YwfWsgi4H0QodrH99SEQFoERlVuB8
         GCVSCymiEHupeI+FzNFi40VjiyY4Ag4e3c5C05Af3AmNlyxwS+WJntXFAPKUqX+Otkh6
         9CkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:references:subject;
        bh=GVd1GYmKiOZVe83exnUYvYVXffIsaEog6jsqIWRQ1H8=;
        b=02+p8VBltLDZlkEi9zdXIIzRm/Pq4sxOwTiVKgqdYiJap29fyys0Xtk/TDuXW7qqos
         p4gdXEP0yGUEkY4O5FOL0MvfWfE21EKf/m09UkuhyuAlnjJnDko+aLsfm1GJhILpPNBX
         EN8UmzJkq62iwYbiNyYPMgXBzNp+iOfWpcn+uIzcoRaFKj+ZEWOkwr9/PKtCZ7U2Ulwx
         qvvk9njF+GgE9QCAYoy4BjDzwCY7pyQGVcn2zYuXD+rLVCAzD+dbGO1B737ZEAv54dO3
         lr747LNIwyAHSnSYo+/fe5skFmaB431OE0HMhimx1nDD/Ba81EoAAsIkhnnZ9zu9f7Nf
         uskw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id g2si65888pji.0.2021.08.13.04.02.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 04:02:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="202702328"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="202702328"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 04:01:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="517992081"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.30.82]) ([10.255.30.82])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 04:01:58 -0700
Subject: [xlnx:xlnx_rebase_v5.10 626/1760] drivers/fpga/fpga-mgr.c:451:2:
 warning: Call to function 'strcpy' is insecure as it does not provide
 bounding of the memory buffer. Replace unbounded copy functions with
 analogous functions that support length arguments such as 'strlcpy'. CWE-119
 [clang-a...
References: <202108120544.arnNGJI0-lkp@intel.com>
To: Michal Simek <monstr@monstr.eu>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202108120544.arnNGJI0-lkp@intel.com>
Message-ID: <c24ac855-581f-d368-6865-c1e9670fd458@intel.com>
Date: Fri, 13 Aug 2021 19:01:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202108120544.arnNGJI0-lkp@intel.com>
Content-Type: multipart/mixed;
 boundary="------------FF674F6547EDE8415110C37A"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

This is a multi-part message in MIME format.
--------------FF674F6547EDE8415110C37A
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.10
head:   bf98c1493fb23bfd7e2678498b7e337ce2cd1d53
commit: 824faebe34d034969fc79852a2999fdc11c5cd33 [626/1760] fpga: Add=20
firmware store function
:::::: branch date: 14 hours ago
:::::: commit date: 3 months ago
config: x86_64-randconfig-c001-20210810 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project=20
d39ebdae674c8efc84ebe8dc32716ec353220530)
reproduce (this is a W=3D1 build):
         wget=20
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=20
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         #=20
https://github.com/Xilinx/linux-xlnx/commit/824faebe34d034969fc79852a2999fd=
c11c5cd33
         git remote add xlnx https://github.com/Xilinx/linux-xlnx
         git fetch --no-tags xlnx xlnx_rebase_v5.10
         git checkout 824faebe34d034969fc79852a2999fdc11c5cd33
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=20
ARCH=3Dx86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                    ^~~~~~~~~~~
    mm/hugetlb.c:1900:9: note: Returning from 'alloc_surplus_huge_page'
            page =3D alloc_surplus_huge_page(h, gfp_mask, nid, nodemask);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    mm/hugetlb.c:1903:2: note: Returning null pointer (loaded from=20
'page'), which participates in a condition later
            return page;
            ^~~~~~~~~~~
    mm/hugetlb.c:2327:10: note: Returning from=20
'alloc_buddy_huge_page_with_mpol'
                    page =3D alloc_buddy_huge_page_with_mpol(h, vma, addr);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    mm/hugetlb.c:2328:8: note: 'page' is null
                    if (!page)
                         ^~~~
    mm/hugetlb.c:2328:3: note: Taking true branch
                    if (!page)
                    ^
    mm/hugetlb.c:2329:4: note: Control jumps to line 2373
                            goto out_uncharge_cgroup;
                            ^
    mm/hugetlb.c:2373:2: note: 3rd function call argument is an=20
uninitialized value
            hugetlb_cgroup_uncharge_cgroup(idx, pages_per_huge_page(h),=20
h_cg);
            ^                                                           ~~~=
~
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    fs/crypto/keysetup_v1.c:82:2: warning: Potential leak of memory=20
pointed to by 'req' [clang-analyzer-unix.Malloc]
            crypto_free_skcipher(tfm);
            ^
    fs/crypto/keysetup_v1.c:307:30: note: Left side of '&&' is false
            if (key =3D=3D ERR_PTR(-ENOKEY) &&=20
ci->ci_inode->i_sb->s_cop->key_prefix) {
                                        ^
    fs/crypto/keysetup_v1.c:312:2: note: Taking false branch
            if (IS_ERR(key))
            ^
    fs/crypto/keysetup_v1.c:315:8: note: Calling 'fscrypt_setup_v1_file_key=
'
            err =3D fscrypt_setup_v1_file_key(ci, payload->raw);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/crypto/keysetup_v1.c:292:6: note: Assuming the condition is false
            if (ci->ci_policy.v1.flags & FSCRYPT_POLICY_FLAG_DIRECT_KEY)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/crypto/keysetup_v1.c:292:2: note: Taking false branch
            if (ci->ci_policy.v1.flags & FSCRYPT_POLICY_FLAG_DIRECT_KEY)
            ^
    fs/crypto/keysetup_v1.c:295:10: note: Calling=20
'setup_v1_file_key_derived'
                    return setup_v1_file_key_derived(ci, raw_master_key);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/crypto/keysetup_v1.c:276:6: note: Assuming 'derived_key' is non-null
            if (!derived_key)
                ^~~~~~~~~~~~
    fs/crypto/keysetup_v1.c:276:2: note: Taking false branch
            if (!derived_key)
            ^
    fs/crypto/keysetup_v1.c:279:8: note: Calling 'derive_key_aes'
            err =3D derive_key_aes(raw_master_key, ci->ci_nonce,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/crypto/keysetup_v1.c:57:2: note: Taking false branch
            if (IS_ERR(tfm)) {
            ^
    fs/crypto/keysetup_v1.c:63:8: note: Calling 'skcipher_request_alloc'
            req =3D skcipher_request_alloc(tfm, GFP_KERNEL);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/crypto/skcipher.h:496:8: note: Memory is allocated
            req =3D kmalloc(sizeof(struct skcipher_request) +
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/crypto/skcipher.h:499:6: note: Assuming 'req' is non-null
            if (likely(req))
                ^
    include/linux/compiler.h:77:38: note: expanded from macro 'likely'
    # define likely(x)      __builtin_expect(!!(x), 1)
                                              ^~~~
    include/crypto/skcipher.h:499:2: note: Taking true branch
            if (likely(req))
            ^
    fs/crypto/keysetup_v1.c:63:8: note: Returned allocated memory
            req =3D skcipher_request_alloc(tfm, GFP_KERNEL);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/crypto/keysetup_v1.c:64:7: note: 'req' is non-null
            if (!req) {
                 ^~~
    fs/crypto/keysetup_v1.c:64:2: note: Taking false branch
            if (!req) {
            ^
    fs/crypto/keysetup_v1.c:72:6: note: Assuming 'res' is < 0
            if (res < 0)
                ^~~~~~~
    fs/crypto/keysetup_v1.c:72:2: note: Taking true branch
            if (res < 0)
            ^
    fs/crypto/keysetup_v1.c:73:3: note: Control jumps to line 81
                    goto out;
                    ^
    fs/crypto/keysetup_v1.c:82:2: note: Potential leak of memory pointed=20
to by 'req'
            crypto_free_skcipher(tfm);
            ^
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
>> drivers/fpga/fpga-mgr.c:451:2: warning: Call to function 'strcpy' is ins=
ecure as it does not provide bounding of the memory buffer. Replace unbound=
ed copy functions with analogous functions that support length arguments su=
ch as 'strlcpy'. CWE-119 [clang-analyzer-security.insecureAPI.strcpy]
            strcpy(image_name, buf);
            ^~~~~~
    drivers/fpga/fpga-mgr.c:451:2: note: Call to function 'strcpy' is=20
insecure as it does not provide bounding of the memory buffer. Replace=20
unbounded copy functions with analogous functions that support length=20
arguments such as 'strlcpy'. CWE-119
            strcpy(image_name, buf);
            ^~~~~~
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    11 warnings generated.
    drivers/fsi/fsi-core.c:719:4: warning: Value stored to 'rc' is never=20
read [clang-analyzer-deadcode.DeadStores]
                            rc =3D -EFAULT;
                            ^    ~~~~~~~
    drivers/fsi/fsi-core.c:719:4: note: Value stored to 'rc' is never read
                            rc =3D -EFAULT;
                            ^    ~~~~~~~
    drivers/fsi/fsi-core.c:724:2: warning: Value stored to 'rc' is never=20
read [clang-analyzer-deadcode.DeadStores]
            rc =3D count;
            ^    ~~~~~
    drivers/fsi/fsi-core.c:724:2: note: Value stored to 'rc' is never read
            rc =3D count;
            ^    ~~~~~
    drivers/fsi/fsi-core.c:753:4: warning: Value stored to 'rc' is never=20
read [clang-analyzer-deadcode.DeadStores]
                            rc =3D -EFAULT;
                            ^    ~~~~~~~
    drivers/fsi/fsi-core.c:753:4: note: Value stored to 'rc' is never read
                            rc =3D -EFAULT;
                            ^    ~~~~~~~
    drivers/fsi/fsi-core.c:761:2: warning: Value stored to 'rc' is never=20
read [clang-analyzer-deadcode.DeadStores]
            rc =3D count;
            ^    ~~~~~
    drivers/fsi/fsi-core.c:761:2: note: Value stored to 'rc' is never read
            rc =3D count;
            ^    ~~~~~
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    drivers/fsi/fsi-scom.c:356:17: warning: Value stored to 'dev' during=20
its initialization is never read [clang-analyzer-deadcode.DeadStores]
            struct device *dev =3D &scom->fsi_dev->dev;
                           ^~~   ~~~~~~~~~~~~~~~~~~~
    drivers/fsi/fsi-scom.c:356:17: note: Value stored to 'dev' during=20
its initialization is never read
            struct device *dev =3D &scom->fsi_dev->dev;
                           ^~~   ~~~~~~~~~~~~~~~~~~~
    drivers/fsi/fsi-scom.c:386:17: warning: Value stored to 'dev' during=20
its initialization is never read [clang-analyzer-deadcode.DeadStores]
            struct device *dev =3D &scom->fsi_dev->dev;
                           ^~~   ~~~~~~~~~~~~~~~~~~~
    drivers/fsi/fsi-scom.c:386:17: note: Value stored to 'dev' during=20
its initialization is never read
            struct device *dev =3D &scom->fsi_dev->dev;
                           ^~~   ~~~~~~~~~~~~~~~~~~~
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    13 warnings generated.
    Suppressed 13 warnings (13 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    18 warnings generated.
    drivers/net/xen-netfront.c:105:8: warning: Excessive padding in=20
'struct netfront_queue' (96 padding bytes, where 32 is optimal).=20
Optimal fields order:    xdp_rxq,    rx_lock,    info,    xdp_prog,=20
page_pool,    tx,    rx,    tx_lock,    rx_refill_timer,    napi,=20
tx_skbs,    grant_tx_page,    rx_skbs,    id,    tx_evtchn,=20
rx_evtchn,    tx_irq,    rx_irq,    tx_ring_ref,    gref_tx_head,=20
tx_skb_freelist,    rx_ring_ref,    gref_rx_head,    grant_tx_ref,=20
grant_rx_ref,    name,    tx_irq_name,    rx_irq_name,    consider=20
reordering the fields or adding explicit padding members=20
[clang-analyzer-optin.performance.Padding]
    struct netfront_queue {
    ~~~~~~~^~~~~~~~~~~~~~~~
    drivers/net/xen-netfront.c:105:8: note: Excessive padding in 'struct=20
netfront_queue' (96 padding bytes, where 32 is optimal). Optimal fields=20
order: xdp_rxq, rx_lock, info, xdp_prog, page_pool, tx, rx, tx_lock,=20
rx_refill_timer, napi, tx_skbs, grant_tx_page, rx_skbs, id, tx_evtchn,=20
rx_evtchn, tx_irq, rx_irq, tx_ring_ref, gref_tx_head, tx_skb_freelist,=20
rx_ring_ref, gref_rx_head, grant_tx_ref, grant_rx_ref, name,=20
tx_irq_name, rx_irq_name, consider reordering the fields or adding=20
explicit padding members
    struct netfront_queue {
    ~~~~~~~^~~~~~~~~~~~~~~~
    drivers/net/xen-netfront.c:299:11: warning: Value stored to=20
'req_prod' during its initialization is never read=20
[clang-analyzer-deadcode.DeadStores]
            RING_IDX req_prod =3D queue->rx.req_prod_pvt;
                     ^~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~
    drivers/net/xen-netfront.c:299:11: note: Value stored to 'req_prod'=20
during its initialization is never read
            RING_IDX req_prod =3D queue->rx.req_prod_pvt;

vim +451 drivers/fpga/fpga-mgr.c

ecb5fbe299dfaa Wu Hao       2018-06-30  437  824faebe34d034 Michal Simek=20
2019-12-31  438  static ssize_t firmware_store(struct device *dev,
824faebe34d034 Michal Simek 2019-12-31  439  			      struct=20
device_attribute *attr,
824faebe34d034 Michal Simek 2019-12-31  440  			      const char *buf,=20
size_t count)
824faebe34d034 Michal Simek 2019-12-31  441  {
824faebe34d034 Michal Simek 2019-12-31  442  	struct fpga_manager *mgr =3D=
=20
to_fpga_manager(dev);
824faebe34d034 Michal Simek 2019-12-31  443  	unsigned int len;
824faebe34d034 Michal Simek 2019-12-31  444  	char image_name[NAME_MAX];
824faebe34d034 Michal Simek 2019-12-31  445  	int ret;
824faebe34d034 Michal Simek 2019-12-31  446  824faebe34d034 Michal Simek=20
2019-12-31  447  	/* struct with information about the FPGA image to=20
program. */
824faebe34d034 Michal Simek 2019-12-31  448  	struct fpga_image_info=20
info =3D {0};
824faebe34d034 Michal Simek 2019-12-31  449  824faebe34d034 Michal Simek=20
2019-12-31  450  	/* lose terminating \n */
824faebe34d034 Michal Simek 2019-12-31 @451  	strcpy(image_name, buf);
824faebe34d034 Michal Simek 2019-12-31  452  	len =3D strlen(image_name);
824faebe34d034 Michal Simek 2019-12-31  453  	if (image_name[len - 1] =3D=
=3D=20
'\n')
824faebe34d034 Michal Simek 2019-12-31  454  		image_name[len - 1] =3D 0;
824faebe34d034 Michal Simek 2019-12-31  455  824faebe34d034 Michal Simek=20
2019-12-31  456  	ret =3D fpga_mgr_firmware_load(mgr, &info, image_name);
824faebe34d034 Michal Simek 2019-12-31  457  	if (ret)
824faebe34d034 Michal Simek 2019-12-31  458  		return ret;
824faebe34d034 Michal Simek 2019-12-31  459  824faebe34d034 Michal Simek=20
2019-12-31  460  	return count;
824faebe34d034 Michal Simek 2019-12-31  461  }
824faebe34d034 Michal Simek 2019-12-31  462
---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c24ac855-581f-d368-6865-c1e9670fd458%40intel.com.

--------------FF674F6547EDE8415110C37A
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

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
qFd2LHEeAgA=
--------------FF674F6547EDE8415110C37A
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org


--------------FF674F6547EDE8415110C37A--
