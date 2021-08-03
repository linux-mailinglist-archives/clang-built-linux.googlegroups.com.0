Return-Path: <clang-built-linux+bncBD26TVH6RINBBLMPUSEAMGQEQWSFPSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C3E3DE97D
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 11:09:02 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id l2-20020a6b7f020000b0290439ea50822esf13799669ioq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 02:09:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627981741; cv=pass;
        d=google.com; s=arc-20160816;
        b=PAHvPhtORImF757H7JoyHKLKaPZcLF3OqVUBCKMmatRWeah2oWI2XPoLrXi8TxNsUv
         90lDPt/FGxWGMW6QvuqnRWDmTOrFU3W4k1RtGhup4r2d0xSwtBSQqO6pNthP3U6T0IeH
         VriTORuUFkd+sV7+EQd8pxhdbCt43ZA4+JLes73bhxz2u13n2emu9oI/WnOzWhOCOwM9
         AJXhQ6umqL+yGt3+/3GK9y2cyekmtjqrQptrxr/gHuP380xO+A7Cmrx+vvLA3PjvFN7I
         j1nJQxp4Lh64kYyYASu3V0KzRRpbOSxKsWhLkkP8e+AnYDKO+dXSPx3RxDGGJsEhld3b
         ysAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:from:cc:to:in-reply-to:references
         :subject:sender:dkim-signature;
        bh=a5XibLfHKgF7K99MTmPRhDjtbNyGuVAF59dObl3ne3Y=;
        b=yWSO356YIdehtRw3LJ6DMVyyQ13ii8G2Ie41iTs4Q5s52YD7HccpTEUO8LGsaLRmm3
         slbkTz0ehPMbRwuzMrU/Z9vQRRr97OKXJIGNbnD/GYQG2MyEFgT4B7jrrvd06FHxs4gz
         AGT7xXdUWQtdcSUfHa0GtH/f9HYMhwOjR7+3uymHROLquR5PQjOrRc8YuOpw7rXVsiCM
         1OIUWApC9C9Wpgh4guUJ4KYYokWO+mqeOegmCttcNgtxJEwblQsEVzNWM47nKKgNrYiz
         DldwXhNOlfqxmAs1qwIYy2OU1IkhFD+8Y+xx7wwmKXG4PuYJ07ZNhgur47vYTjpCAzKS
         zL0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:in-reply-to:to:cc:from:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a5XibLfHKgF7K99MTmPRhDjtbNyGuVAF59dObl3ne3Y=;
        b=bUrTxzRi3zFLvmLRkgrtYOPDnNWXqsEidoQdB78mk4jdlLoVAtlRyer6Sa5wfUvrIk
         5S1/mRZO84IZBEvZh6PwmxoFpvNzSlafnoEA/hEmIfXnevX5lCDJVAMOPVehIzj+PG5C
         VNUtPgLM88zKv/TUJBdRZoGmZK93d3d2fZHkESPD7QKwOTe6IcAB4kM8dn2JwO6gSS5y
         OAOo78udZAA0BCNFuQl3CZlJDBT8D7CzjvjCZhZf7APABPXJLcptnLqw1xOYXKKxKFgO
         V5JfknWjmmiGXhyZBIL31kUIyx9T1Iw0ac/aplZsO8XyUMxsH9bVFDHJLh0v/5BVn2dX
         FoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:in-reply-to:to:cc:from
         :message-id:date:user-agent:mime-version:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a5XibLfHKgF7K99MTmPRhDjtbNyGuVAF59dObl3ne3Y=;
        b=nvEttifT6b7iymv1K+8XJJyrnTJydUGIUw1jqYWdLVIJVE0SuwjONlyDK9TZ1lHtir
         HV38+tCLqIeiNqcr8kFFYwgXeb4ZvsoLxaFw069Vz78MhTcQFRdn1261DV7wfZaWkDqf
         PsKANSyLAjYYkVX7Avtqy04VXTwwJUgcuGIAUEQ/DfxeGXT6uxIV0V8afQTeqFxwd5u7
         JUE7ZNnKg3DakYZ/NmEsG6t+UMuQhT6QXzZFVGT2RSnUOBkS38/Nr04+1SeTZXbSZsu6
         1qqHr8nH7LhBVCRZHk5pLGj1lluwfye3hXBkj5FFcOoYia4jzDk2ema5J0+VyL5Dr9/B
         S3aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532onqZGxJxHL/kVfLdap235qN6H5bP2aUgsIw5QSaNYWERf56MH
	s13T4C954o9NJmj0fi+QppU=
X-Google-Smtp-Source: ABdhPJx/BO4NSJmoUk1W5bKBC4zyPgL13w8aHlpilJqDO8G4m2Anqga8GwDI0fzTiTe7nunxu0cBrA==
X-Received: by 2002:a05:6638:4115:: with SMTP id ay21mr18450478jab.13.1627981741108;
        Tue, 03 Aug 2021 02:09:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:144b:: with SMTP id p11ls2571598ilo.8.gmail; Tue,
 03 Aug 2021 02:09:00 -0700 (PDT)
X-Received: by 2002:a92:c949:: with SMTP id i9mr34036ilq.19.1627981740469;
        Tue, 03 Aug 2021 02:09:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627981740; cv=none;
        d=google.com; s=arc-20160816;
        b=B3+4TrNAKPuS8qhF59ae+yiSmarJ8G4K0BDMxjMpMA1pVWpBXR9KAHuJgASSqLnwZR
         hCdWzarq/OnX6YbIEuT9wcixLmeWtOauElNzlYA51eWZbJFj4HtTK/Cw4JiGngkZ/oIc
         0QciyZuqqgWOxPZ3J/7wMWaDysDvRGKWIU3ZjJKHuZ0Ae6wjUVbDfK+dMLDZr4NbKZdu
         ZWgKPg9PQrm88mIWVkj/ArMUHdlR/SFdazq0zQ4RuxRZJcPmvnVMGBYRnpsoRr2bqPJV
         NYZ6uPJFeurnWG+q0T1/YXGaWGuzZ9d8VCSbQbPKnTYEBX7MslUxiwOKphvyH8dcyVz+
         hsmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:mime-version:user-agent:date:message-id:from:cc:to
         :in-reply-to:references:subject;
        bh=WrBQxADAEyi+jC4umsWsn1r8y355yHsvkLYW+RpBz/4=;
        b=oTsNA8xBW8uwXVqX9gGWrtiV9DteVYcw92H2Ox9JSe7GKZUWHgdSEMCD+sCbvaSCDD
         ptem+PLxPIHJbxoRqy44gvq1uVXXK500z5q4NKsOyO8JEWbtH06BKtFY40q1oYoYyjRm
         1F+RO3LQvmbYqENNGsP5xjhBQiebpuAypRwL2nPIzeIoT1SzgwF/+uWCzn8j3eLsFJCn
         wV4a1qJWdNW/bw8hRYUmXZ8nvS8+RmNATmuXIp2pnqAEnNqUpkOUfzGRgykriLKIVrC/
         0ESu52VSRQskQGtvyfqk8AOrn+vBRH+4juFUqUWSs4DvMTdGMS7MNt3J8E5HcdVQAIiB
         Ew7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id k10si594511iow.3.2021.08.03.02.08.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 02:09:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="277397542"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="gz'50?scan'50,208,50";a="277397542"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 02:08:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="gz'50?scan'50,208,50";a="510955974"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.29.84]) ([10.255.29.84])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 02:08:54 -0700
Subject: Re: [PATCH 2/7] libata: cleanup ata_dev_configure()
References: <202108030231.7Ta42o7Q-lkp@intel.com>
In-Reply-To: <202108030231.7Ta42o7Q-lkp@intel.com>
To: Damien Le Moal <damien.lemoal@wdc.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-ide@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202108030231.7Ta42o7Q-lkp@intel.com>
Message-ID: <b67cfc18-088e-aaa9-ca36-50c2251742cf@intel.com>
Date: Tue, 3 Aug 2021 17:08:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------9C91DD5B7CB551D80168205A"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as
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
--------------9C91DD5B7CB551D80168205A
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable


Hi Damien,

I love your patch! Perhaps something to improve:

[auto build test WARNING on block/for-next]
[also build test WARNING on mkp-scsi/for-next scsi/for-next v5.14-rc3=20
next-20210730]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:=20
https://github.com/0day-ci/linux/commits/Damien-Le-Moal/libata-cleanups-and=
-improvements/20210802-170443
base:=20
https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git=20
for-next
:::::: branch date: 9 hours ago
:::::: commit date: 9 hours ago
config: x86_64-randconfig-c001-20210802 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=20
4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
reproduce (this is a W=3D1 build):
         wget=20
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=20
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         #=20
https://github.com/0day-ci/linux/commit/5622af0f73c9776b5bdf272dee77d57d62e=
a03fa
         git remote add linux-review https://github.com/0day-ci/linux
         git fetch --no-tags linux-review=20
Damien-Le-Moal/libata-cleanups-and-improvements/20210802-170443
         git checkout 5622af0f73c9776b5bdf272dee77d57d62ea03fa
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=20
ARCH=3Dx86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
    note: (skipping 3 expansions in backtrace; use=20
-fmacro-backtrace-limit=3D0 to see all)
    include/linux/minmax.h:104:48: note: expanded from macro 'min_t'
    #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                    ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
    include/linux/minmax.h:38:14: note: expanded from macro '__careful_cmp'
                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y),=20
op))
                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
    include/linux/minmax.h:31:25: note: expanded from macro '__cmp_once'
                    typeof(x) unique_x =3D (x);               \
                                          ^
    drivers/hwmon/max6621.c:321:10: note: '?' condition is false
                            val =3D clamp_val(val, MAX6621_TEMP_INPUT_MIN,
                                  ^
    include/linux/minmax.h:137:32: note: expanded from macro 'clamp_val'
    #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                   ^
    include/linux/minmax.h:124:48: note: expanded from macro 'clamp_t'
    #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi=
)
                                                   ^
    include/linux/minmax.h:112:27: note: expanded from macro 'max_t'
    #define max_t(type, x, y)       __careful_cmp((type)(x), (type)(y), >)
                                    ^
    include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y),=20
op))
                    ^
    include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                    __cmp(unique_x, unique_y, op); })
                    ^
    include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
    #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                             ^
    drivers/hwmon/max6621.c:321:10: note: '__UNIQUE_ID___x523' is <=20
'__UNIQUE_ID___y524'
                            val =3D clamp_val(val, MAX6621_TEMP_INPUT_MIN,
                                  ^
    include/linux/minmax.h:137:32: note: expanded from macro 'clamp_val'
    #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/minmax.h:124:36: note: expanded from macro 'clamp_t'
    #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi=
)
                                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
    include/linux/minmax.h:104:27: note: expanded from macro 'min_t'
    #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y),=20
op))
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
    include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                    __cmp(unique_x, unique_y, op); })
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
    #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                             ^~~
    drivers/hwmon/max6621.c:321:10: note: '?' condition is true
                            val =3D clamp_val(val, MAX6621_TEMP_INPUT_MIN,
                                  ^
    include/linux/minmax.h:137:32: note: expanded from macro 'clamp_val'
    #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                   ^
    include/linux/minmax.h:124:36: note: expanded from macro 'clamp_t'
    #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi=
)
                                       ^
    include/linux/minmax.h:104:27: note: expanded from macro 'min_t'
    #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                    ^
    include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y),=20
op))
                    ^
    include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                    __cmp(unique_x, unique_y, op); })
                    ^
    include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
    #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                             ^
    drivers/hwmon/max6621.c:323:10: note: Calling 'max6621_temp_mc2reg'
                            val =3D max6621_temp_mc2reg(val);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~
    drivers/hwmon/max6621.c:135:23: note: The result of the left shift=20
is undefined because the left operand is negative
            return (val / 1000L) << MAX6621_REG_TEMP_SHIFT;
                   ~~~~~~~~~~~~~ ^
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    9 warnings generated.
    Suppressed 9 warnings (8 in non-user code, 1 with check filters).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    9 warnings generated.
    Suppressed 9 warnings (8 in non-user code, 1 with check filters).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    9 warnings generated.
    Suppressed 9 warnings (8 in non-user code, 1 with check filters).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    12 warnings generated.
    drivers/nvme/target/fcloop.c:1226:3: warning: Value stored to 'ret'=20
is never read [clang-analyzer-deadcode.DeadStores]
                    ret =3D -EINVAL;
                    ^     ~~~~~~~
    drivers/nvme/target/fcloop.c:1226:3: note: Value stored to 'ret' is=20
never read
                    ret =3D -EINVAL;
                    ^     ~~~~~~~
    Suppressed 11 warnings (11 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    15 warnings generated.
>> drivers/ata/libata-core.c:2376:3: warning: Call to function 'strcpy' is =
insecure as it does not provide bounding of the memory buffer. Replace unbo=
unded copy functions with analogous functions that support length arguments=
 such as 'strlcpy'. CWE-119 [clang-analyzer-security.insecureAPI.strcpy]
                    strcpy(info, "LBA48 ");
                    ^~~~~~
    drivers/ata/libata-core.c:2376:3: note: Call to function 'strcpy' is=20
insecure as it does not provide bounding of the memory buffer. Replace=20
unbounded copy functions with analogous functions that support length=20
arguments such as 'strlcpy'. CWE-119
                    strcpy(info, "LBA48 ");
                    ^~~~~~
    drivers/ata/libata-core.c:2382:3: warning: Call to function 'strcpy'=20
is insecure as it does not provide bounding of the memory buffer.=20
Replace unbounded copy functions with analogous functions that support=20
length arguments such as 'strlcpy'. CWE-119=20
[clang-analyzer-security.insecureAPI.strcpy]
                    strcpy(info, "LBA ");
                    ^~~~~~
    drivers/ata/libata-core.c:2382:3: note: Call to function 'strcpy' is=20
insecure as it does not provide bounding of the memory buffer. Replace=20
unbounded copy functions with analogous functions that support length=20
arguments such as 'strlcpy'. CWE-119
                    strcpy(info, "LBA ");
                    ^~~~~~
    drivers/ata/libata-core.c:5471:18: warning: Access to field=20
'pio_mask' results in a dereference of a null pointer (loaded from=20
variable 'pi') [clang-analyzer-core.NullDereference]
                    ap->pio_mask =3D pi->pio_mask;
                                   ^~
    drivers/ata/libata-core.c:5462:6: note: Assuming 'host' is non-null
            if (!host)
                ^~~~~
    drivers/ata/libata-core.c:5462:2: note: Taking false branch
            if (!host)
            ^
    drivers/ata/libata-core.c:5465:21: note: Null pointer value stored=20
to 'pi'
            for (i =3D 0, j =3D 0, pi =3D NULL; i < host->n_ports; i++) {
                               ^~~~~~~~~
    drivers/ata/libata-core.c:5465:32: note: Assuming 'i' is < field=20
'n_ports'
            for (i =3D 0, j =3D 0, pi =3D NULL; i < host->n_ports; i++) {
                                          ^~~~~~~~~~~~~~~~~
    drivers/ata/libata-core.c:5465:2: note: Loop condition is true.=20
Entering loop body
            for (i =3D 0, j =3D 0, pi =3D NULL; i < host->n_ports; i++) {
            ^
    drivers/ata/libata-core.c:5468:7: note: Assuming the condition is false
                    if (ppi[j])
                        ^~~~~~
    drivers/ata/libata-core.c:5468:3: note: Taking false branch
                    if (ppi[j])
                    ^
    drivers/ata/libata-core.c:5471:18: note: Access to field 'pio_mask'=20
results in a dereference of a null pointer (loaded from variable 'pi')
                    ap->pio_mask =3D pi->pio_mask;
                                   ^~
    drivers/ata/libata-core.c:5593:6: warning: Access to field=20
'host_stop' results in a dereference of a null pointer (loaded from=20
field 'ops') [clang-analyzer-core.NullDereference]
            if (host->ops->host_stop)
                ^
    drivers/ata/libata-core.c:5840:7: note: Calling 'ata_host_start'
            rc =3D ata_host_start(host);
                 ^~~~~~~~~~~~~~~~~~~~
    drivers/ata/libata-core.c:5576:6: note: Assuming the condition is false
            if (host->flags & ATA_HOST_STARTED)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/ata/libata-core.c:5576:2: note: Taking false branch
            if (host->flags & ATA_HOST_STARTED)
            ^
    drivers/ata/libata-core.c:5581:14: note: Assuming 'i' is < field=20
'n_ports'
            for (i =3D 0; i < host->n_ports; i++) {
                        ^~~~~~~~~~~~~~~~~
    drivers/ata/libata-core.c:5581:2: note: Loop condition is true.=20
Entering loop body
            for (i =3D 0; i < host->n_ports; i++) {
            ^
    drivers/ata/libata-core.c:5586:7: note: Assuming field 'ops' is null
                    if (!host->ops && !ata_port_is_dummy(ap))
                        ^~~~~~~~~~
    drivers/ata/libata-core.c:5586:7: note: Assuming pointer value is null
                    if (!host->ops && !ata_port_is_dummy(ap))
                        ^~~~~~~~~~
    drivers/ata/libata-core.c:5586:7: note: Left side of '&&' is true
    drivers/ata/libata-core.c:5586:21: note: Assuming the condition is fals=
e
                    if (!host->ops && !ata_port_is_dummy(ap))
                                      ^~~~~~~~~~~~~~~~~~~~~~
    drivers/ata/libata-core.c:5586:3: note: Taking false branch
                    if (!host->ops && !ata_port_is_dummy(ap))
                    ^
    drivers/ata/libata-core.c:5589:7: note: Assuming field 'port_stop'=20
is null
                    if (ap->ops->port_stop)
                        ^~~~~~~~~~~~~~~~~~
    drivers/ata/libata-core.c:5589:3: note: Taking false branch
                    if (ap->ops->port_stop)
                    ^
    drivers/ata/libata-core.c:5581:14: note: Assuming 'i' is >=3D field=20
'n_ports'
            for (i =3D 0; i < host->n_ports; i++) {
                        ^~~~~~~~~~~~~~~~~
    drivers/ata/libata-core.c:5581:2: note: Loop condition is false.=20
Execution continues on line 5593
            for (i =3D 0; i < host->n_ports; i++) {
            ^
    drivers/ata/libata-core.c:5593:6: note: Access to field 'host_stop'=20
results in a dereference of a null pointer (loaded from field 'ops')
            if (host->ops->host_stop)
                ^     ~~~
    Suppressed 11 warnings (11 in non-user code).
    Use -header-filter=3D.* to display errors from all non-system headers.=
=20
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    include/linux/hid.h:1007:9: warning: Access to field 'name' results=20
in a dereference of a null pointer (loaded from variable 'input')=20
[clang-analyzer-core.NullDereference]
                                        input->name, c, type);
                                        ^
    drivers/hid/hid-lenovo.c:321:2: note: Control jumps to 'case 12544:'=20
  at line 329
            switch (hdev->product) {
            ^
    drivers/hid/hid-lenovo.c:335:10: note: Calling=20
'lenovo_input_mapping_scrollpoint'
                    return lenovo_input_mapping_scrollpoint(hdev, hi, field=
,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
    drivers/hid/hid-lenovo.c:224:6: note: Assuming field 'hid' is equal=20
to HID_GD_Z
            if (usage->hid =3D=3D HID_GD_Z) {
                ^~~~~~~~~~~~~~~~~~~~~~
    drivers/hid/hid-lenovo.c:224:2: note: Taking true branch

vim +2376 drivers/ata/libata-core.c

818831c8b22f75 Christoph Hellwig 2017-06-04  2365  5622af0f73c977 Damien=20
Le Moal    2021-08-02  2366  static int ata_dev_config_lba(struct=20
ata_device *dev,
5622af0f73c977 Damien Le Moal    2021-08-02  2367  			      char *info,=20
size_t infosz)
5622af0f73c977 Damien Le Moal    2021-08-02  2368  {
5622af0f73c977 Damien Le Moal    2021-08-02  2369  	const u16 *id =3D dev->=
id;
5622af0f73c977 Damien Le Moal    2021-08-02  2370  	int info_ofst;
5622af0f73c977 Damien Le Moal    2021-08-02  2371  5622af0f73c977 Damien=20
Le Moal    2021-08-02  2372  	dev->flags |=3D ATA_DFLAG_LBA;
5622af0f73c977 Damien Le Moal    2021-08-02  2373  5622af0f73c977 Damien=20
Le Moal    2021-08-02  2374  	if (ata_id_has_lba48(id)) {
5622af0f73c977 Damien Le Moal    2021-08-02  2375  		dev->flags |=3D=20
ATA_DFLAG_LBA48;
5622af0f73c977 Damien Le Moal    2021-08-02 @2376  		strcpy(info, "LBA48 ")=
;
5622af0f73c977 Damien Le Moal    2021-08-02  2377  5622af0f73c977 Damien=20
Le Moal    2021-08-02  2378  		if (dev->n_sectors >=3D (1UL << 28) &&
5622af0f73c977 Damien Le Moal    2021-08-02  2379  		=20
ata_id_has_flush_ext(id))
5622af0f73c977 Damien Le Moal    2021-08-02  2380  			dev->flags |=3D=20
ATA_DFLAG_FLUSH_EXT;
5622af0f73c977 Damien Le Moal    2021-08-02  2381  	} else {
5622af0f73c977 Damien Le Moal    2021-08-02  2382  		strcpy(info, "LBA ");
5622af0f73c977 Damien Le Moal    2021-08-02  2383  	}
5622af0f73c977 Damien Le Moal    2021-08-02  2384  	info_ofst =3D=20
strlen(info);
5622af0f73c977 Damien Le Moal    2021-08-02  2385  5622af0f73c977 Damien=20
Le Moal    2021-08-02  2386  	/* config NCQ */
5622af0f73c977 Damien Le Moal    2021-08-02  2387  	return=20
ata_dev_config_ncq(dev, info + info_ofst,
5622af0f73c977 Damien Le Moal    2021-08-02  2388  				  infosz -=20
info_ofst);
5622af0f73c977 Damien Le Moal    2021-08-02  2389  }
5622af0f73c977 Damien Le Moal    2021-08-02  2390
---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b67cfc18-088e-aaa9-ca36-50c2251742cf%40intel.com.

--------------9C91DD5B7CB551D80168205A
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

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
w+eBsbhrNDf4CVb0rxJkYeFAtv8DII+Ix2gYAgA=
--------------9C91DD5B7CB551D80168205A
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org


--------------9C91DD5B7CB551D80168205A--
