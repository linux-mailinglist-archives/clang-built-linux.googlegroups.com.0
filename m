Return-Path: <clang-built-linux+bncBCVJLOHTTUCBBI435PZQKGQEOR3L47I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC67191FA2
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 04:19:00 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id r1sf1337789ybf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 20:19:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585106339; cv=pass;
        d=google.com; s=arc-20160816;
        b=U/f9ygOMk/IOOX9CVBwWYYp7AgzC5KzhwtwdfRyyQtelneYJywTffbq2CT1u6ZfEvv
         Jc4EbtzK+M8PyeV+WAQxaT2vOQdffXHCSgd3cyLfRJCwPR5eNcLYrLue8B44voMbpELN
         hTceLoYymC3wSGkSDyLfBgeb7J8nBTtMFpv9jokLZ01ot5mRDWPqmBrHfS497/jx7rAg
         AwKWirN7Ha38vKtQJTrMBe7hLhC2U/8AvjZrleUM2f/zmMQFMOBhCii8MsLgHJ7z9T2J
         pPv9DyJPWw+bbEf1biL6FtoFIweAaxe4Zfic8WwgriOn5p9YTKCPXjKxhcbFvUfr+2JK
         gq8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=Pkzv9NhMVVp10sF4CZNa5OdXi7AQMYv5qUVDnkUSMi4=;
        b=WQ1ByVLtfxIobO/n4Md1GCnWMa8ZJi/nIaxxFd1tRxWL7GxEtGnT6qLkz7HomL3vEV
         WVBsE9N3QD23La43a4o6cfTT7CsbVjgtMEqgDwXp0SnGJrwqAhDioug82BxYlho22+/Q
         Px3wGPl/Z9wKI2uUIxb6rlB7eXbnpdsR5FJrWMquPHMlJ01Gg3lk+3e89Ex5AYWH527a
         QvbdmpA7HMfK0I0KtqjOjAIOocebjzHw2nGbGNPpV90xfAcPLeps1wb+SS489N04qiyD
         luCegFT7rgdGBQi0yCJdbWMYIrtB9TouxTwSatqpRlEUE2owhpjERX968Ds+B/RME4tQ
         qt+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yidingx.liu@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=yidingx.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pkzv9NhMVVp10sF4CZNa5OdXi7AQMYv5qUVDnkUSMi4=;
        b=OcqiW4OqTOkqMzaMaOcuOETjg5VnDfrKe9bCC+qb8yXKD1/8gMgFXqMpGLgHD/nSBI
         JweUJGHRMlFqXJRHChQXKNWqXyb6b36HSOG2LsTI0xPxP1pXqnDj7hYn6xD39lEsahnK
         B6UHDfk6xSCuGp6VBEUZenfJfpchaui7Yg/yuAjx7j/M6CQp/FUYQXxHAgNuCHWV8Nm9
         K6GEhr7LCuliS7ZhPgFgMBlWscDoLppr2zo4/fqZqsRX/vGc8+QC8o60IhFEDGlFKrA+
         PigFdUZW02Ajpu/k6ck9jplzWozO3uBDzQpep1TH7QHl65f4N2l3C0XaPB0756VWTlsV
         Occg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pkzv9NhMVVp10sF4CZNa5OdXi7AQMYv5qUVDnkUSMi4=;
        b=pXTKZiDTYPX89Qn4TnJlGr4rU75ZEmO9/4xcZtQz+F9Q7Hvh8zQP2hMPazk+P69SiQ
         44rd41zHTDfEJx/wzqn1Af6qA4Ln7VwRTC9tJZ5bKQzErsb8eTg0H/1hXk/k3f2/QJ0E
         VRaV362IQqBjjlIUoRZoyLY40UIOG3pg0wYC7cy5JYaFEYy+iVBbtHiG1HHdCWtMH932
         n8CFGf+JXYK1EgvztgZbXH0MiuQGWL7UspmnEGwV+rvZM9Ri2PlpPBjtV7VUtZWSqiF2
         UhHZmwcIh1bReCFgKBZlCPp1TRzUHWfBViEBHscVQhV6IhWn5QW9KUbmupsIWMpDNuXC
         CYSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0YZNbnlj+uz8cMffs4NfEcIxnUkJM0kxCj95kpzc/1XPzfyU8t
	bqMKpEYtHxr9kNzIdb1Cwjc=
X-Google-Smtp-Source: ADFU+vvQtlILh+xey1jJ6JiRsF+ABBtWYOjmO1xUQ1qcBXdBKhdBpnOnwqsxtcy8HsUjwW3cwjbMCg==
X-Received: by 2002:a25:f201:: with SMTP id i1mr2437838ybe.371.1585106339670;
        Tue, 24 Mar 2020 20:18:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls321185ybi.2.gmail; Tue, 24 Mar
 2020 20:18:59 -0700 (PDT)
X-Received: by 2002:a25:d658:: with SMTP id n85mr2509759ybg.128.1585106339253;
        Tue, 24 Mar 2020 20:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585106339; cv=none;
        d=google.com; s=arc-20160816;
        b=esZfSumh9dWriIgmw1qneTzp1BNZsomSabb19kca6i/TruTmeg01QP7JNuClxtpsFs
         i7olYyrqva6C/380kHL0KGjlOM1zXXzC2dqF8cj0LNYCFZu7v6pMUetqo66+hiuJ7Ukb
         YraODQKcQb7P7lmGGu1c6CYox1AtdXlw4BfcqWR6Ab2f5pumfJcVwBx6XLbesQfbp8Aw
         gIPsXXVAupq79nphuYCUA8IxPw8DZfe6WjZnWDnmcXc0Y/EubgGqsBUXxU8mG+I0P/mf
         W6WPe2cIJ67dmEhZlivjBpX/soTOtjXj3aTJVUjdiZQ6anklnzTBY1rrZ2+h+puV4Eyy
         2Wvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=atlzxMKWpR6andQsfiFv4Wk0fBj5PJ3tTmqYUL76Zjg=;
        b=IEv/GIERArVN1w4hsW1ocKLFCkAPZSm2ZeRJE1xuSsBC2ipSRbqHceVW7hIq7sOqag
         Zi+N+sNGgaLGIAbDDhcs5cut3ybXtpR+pSiIYeFqwq0ln8vtr4kCaEFj7f6BNC43zalF
         yVpixAxd0jqrTb4edYfq4Cxh6K/EMhFjqgDYssLUAl1GiYtxpPXNwZzqB/DL/uhy715W
         QQ0sCsTZ6gJ5QJA9SYbJBv8yB1GebPFBU90ofxBvz2b/wlFTlCChjgipGSRlKlltnPQv
         tRRFKbVPxh7uaGCpsVVOyoG0kk29U7TydGmbO93f+pVU8GSzneGktbzKq50hne/6NHBx
         8uQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yidingx.liu@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=yidingx.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id d72si427052ybh.5.2020.03.24.20.18.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 20:18:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of yidingx.liu@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: ebgPJs0jn9lND2sNC9gJODxKHMV8AUfgGyMlL7Qf7RC9Nc8hd6vMoH20XSKflwSkS5761AwuYl
 jxcvGhVKXf3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 20:18:58 -0700
IronPort-SDR: KRjcym9RLtzoxsdb/Rt1vNsd/JJ7zIjR9KVDzHmYTn6f/ho7011PrNNBG9fa5mGAliZl+FvoM7
 4EIfdv9bJ/8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; 
   d="scan'208";a="448129499"
Received: from yzeng14-mobl.ccr.corp.intel.com (HELO [10.255.30.229]) ([10.255.30.229])
  by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 20:18:55 -0700
Subject: Re: [kbuild-all] Re: [linux-next:master 8211/10629] clang-11: error:
 assembler command failed with exit code 1 (use -v to see invocation)
To: Philip Li <philip.li@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <202003210848.qj0RGHwY%lkp@intel.com>
 <CAKwvOd=4euJP5xkAvYzaopiNQD3hNatX-6DFA2ubkCMK83GuDA@mail.gmail.com>
 <20200321005717.GA19135@intel.com>
 <CAKwvOdko3Bw9ZyzGNm0yghNW+0F_6atWCO09EjGz=-d=AJ+NCg@mail.gmail.com>
 <20200323231230.GA27448@intel.com>
From: Liu Yiding <yidingx.liu@intel.com>
Message-ID: <09a4cec7-535a-e538-c3ea-91236bc790b4@intel.com>
Date: Wed, 25 Mar 2020 11:18:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <20200323231230.GA27448@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: yidingx.liu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yidingx.liu@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=yidingx.liu@intel.com;       dmarc=pass
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

Hi, All.

On 3/24/20 7:12 AM, Philip Li wrote:
> On Mon, Mar 23, 2020 at 03:09:43PM -0700, Nick Desaulniers wrote:
>> DTC folks to bcc
>>
>> On Fri, Mar 20, 2020 at 5:58 PM Philip Li <philip.li@intel.com> wrote:
>>> On Fri, Mar 20, 2020 at 05:30:45PM -0700, Nick Desaulniers wrote:
>>>> Known issue, please ignore: https://github.com/ClangBuiltLinux/linux/i=
ssues/675
>>> thanks for info, 0-day ci will blacklist this error.
>> I'd rather not blacklist it.  So it looks like we don't see this in
>> our CI (example:
>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs=
/301119543).
>> It seems related to which config you compile with.  With the attached
>> config, I was not able to reproduce:
>>
>> $ gunzip config.gz
>> $ cp config .config
>> $ ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc-linux-gnu- make CC=3Dclang -j71
>> olddefconfig # note this shouldn't be needed
>> $ ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc-linux-gnu- make CC=3Dclang -j71
>> scripts/mod/empty.o
>>
>> Doesn't produce anything, no error from make about being an invalid
>> target, but also no -mpower4 warning.  I also don't understand why the
>> provided config doesn't set or unset many configs in linux-next.
>>
>> Can you please triple check? I want to make sure the steps to
>> reproduce are reproducible.
> got it, we will check this to see what is wrong.


Check build log, we missed CROSS_COMPILE when make prepare

```

/usr/bin/timeout -k 100 2h /usr/bin/make HOSTCC=3Dclang-11 CC=3Dclang-11=20
-j32 -C source O=3D/kbuild/obj/consumer/powerpc-lyd-reproduce ARCH=3Dpowerp=
c=20
prepare
[snip]

```

Reproduce it locally.

```

root@liuyd-ubuntu1804:/home/liuyd/linux-next# make=20
HOSTCC=3D/root/0day/clang-latest/bin/clang=20
CC=3D/root/0day/clang-latest/bin/clang -j8 ARCH=3Dpowerpc prepare
scripts/kconfig/conf=C2=A0 --syncconfig Kconfig
[snip]

./include/linux/string.h:159:12: note: 'bcmp' is a builtin with type=20
'int (const void *, const void *, unsigned long)'
15 warnings generated.
/usr/bin/as: unrecognized option '-mpower4'
clang: error: assembler command failed with exit code 1 (use -v to see=20
invocation)

```


>
>>>> On Fri, Mar 20, 2020 at 5:16 PM kbuild test robot <lkp@intel.com> wrot=
e:
>>>>> Hi Dirk,
>>>>>
>>>>> FYI, the error/warning still remains.
>>>>>
>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-ne=
xt.git master
>>>>> head:   d8f289c16fbb72e17b783175c1fb0942816264fd
>>>>> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [8211/10629] Remove =
redundant YYLOC global declaration
>>>>> config: powerpc-defconfig (attached as .config)
>> 'powerpc-defconfig' doesn't seem to be a named config.  Seems I must
>> use the attachment?
>>
>>>>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project =
1993f95f2b1eb2d8da7f1a01e977d8fe06314bcf)
>>>>> reproduce:
>>>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
>>>>>          chmod +x ~/bin/make.cross
>>>>>          git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
>>>>>          # save the attached .config to linux build tree
>>>>>          COMPILER=3Dclang make.cross ARCH=3Dpowerpc
>> Hi Philip, I tried the above commands to reproduce, but I see:
>>
>> $ COMPILER=3Dclang make.cross ARCH=3Dpowerpc
>> E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13:
>> Permission denied)
>> E: Unable to acquire the dpkg frontend lock
>> (/var/lib/dpkg/lock-frontend), are you root?
>> cross tool binutils-powerpc-linux-gnu install failed
>> Please ensure powerpc cross tools has been installed.
>> Please install: xz-utils lftp
>> Install clang compiler failed
>> setup_crosstool failed
>> $ sudo apt install binutils-powerpc-linux-gnu
>> binutils-powerpc-linux-gnu is already the newest version (2.33.1-2).
>>
>> Should install_cross_packages() check for these first, instead of
>> always trying to install them?
>>
>>>>> If you fix the issue, kindly add following tag
>>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>>
>>>>> All errors (new ones prefixed by >>):
>>>>>
>>>>>     /usr/bin/as: unrecognized option '-mpower4'
>>>>>>> clang-11: error: assembler command failed with exit code 1 (use -v =
to see invocation)
>>>>>     make[2]: *** [scripts/Makefile.build:268: scripts/mod/empty.o] Er=
ror 1
>>>>>     make[2]: Target '__build' not remade because of errors.
>>>>>     make[1]: *** [Makefile:1111: prepare0] Error 2
>>>>>     make[1]: Target 'prepare' not remade because of errors.
>>>>>     make: *** [Makefile:179: sub-make] Error 2
>>>>>     34 real  9 user  19 sys  84.67% cpu  make prepare
>>>>>
>>>>> ---
>>>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>>>
>>>>> --
>>>>> You received this message because you are subscribed to the Google Gr=
oups "Clang Built Linux" group.
>>>>> To unsubscribe from this group and stop receiving emails from it, sen=
d an email to clang-built-linux+unsubscribe@googlegroups.com.
>>>>> To view this discussion on the web visit https://groups.google.com/d/=
msgid/clang-built-linux/202003210848.qj0RGHwY%25lkp%40intel.com.
>>>>
>>>>
>>>> --
>>>> Thanks,
>>>> ~Nick Desaulniers
>>>> _______________________________________________
>>>> kbuild-all mailing list -- kbuild-all@lists.01.org
>>>> To unsubscribe send an email to kbuild-all-leave@lists.01.org
>>
>>
>> --=20
>> Thanks,
>> ~Nick Desaulniers

--=20
Best regards.
Liu Yiding

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/09a4cec7-535a-e538-c3ea-91236bc790b4%40intel.com.
