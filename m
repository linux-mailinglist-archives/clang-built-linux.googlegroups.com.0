Return-Path: <clang-built-linux+bncBDMLVQOUXQNRBBOCXP6QKGQE2ZCR5PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 340762B24B0
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:39:50 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id h64sf11952680ybc.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:39:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605296389; cv=pass;
        d=google.com; s=arc-20160816;
        b=vlrWSFWJ7kA0FBHfkzaI8W40m8ne4PYT9S99Gwz1SMBX9YZY6KW4YSkHfsvA4pHwyb
         LTDOw0/qxuSuZwjWOYhPxGBUPGrJhK1zELj1DeJh0WG+eUK6F6tWufrhXvTcldFnBn53
         k7k/UVgb8gaungf2lR4xgijT6FBuVPxye4JwtnimzR5lTqxv6awwEXZ1rpNHlbiz0pmN
         bppXlXm1bcRFA8AzB/OvKEpEoqIs6fnqXXOAyktMR/ilHT1T3mvcKf1tpyqxmKxYL55S
         UhogvWASLMwVH46qWLBrzMhgwl0dPoVhUuEgznlYTFKKoIJyLICUPP8hkjMBOtc/qa5n
         LeyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yLic7Q7rjpsl6s0zq8YnxSGiS+mE0uelHeGt1SufOxI=;
        b=g1MIDcuS+mfwYrBdI0FrTPyPnvJUQ5Wy9EsCyLwG/9rPLS81aDnt5xRXKWac5xPTzn
         A0pXAdi88/5Dv8gtnuQLXXACNjijWOmSzaFeV03R7i29/ARewHZ8C7BGwXOALaCIgFpx
         xtvtgZU6vipUKsGa8dmutAWVVMN9n5DKbH6kZpFr5x2Jc8yiFB+4Zubt0IG3eb2DE6yi
         WojoR7pX3AE0/KAAx0P2xMD3sFZd/IytUgc6CSxFj7pFr0WBV2RFGtJEGJBtRurarMVv
         XRJUGi0nUdi+EqnN0xC8RCTxmWdWZkvTOMbZGCMk30H47D5ts19AwnfZBN3NVtuLbNhp
         o68g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="LMjj8m/b";
       spf=pass (google.com: domain of alexandre.chartre@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=alexandre.chartre@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yLic7Q7rjpsl6s0zq8YnxSGiS+mE0uelHeGt1SufOxI=;
        b=ov+Ykc7N+rPUuphGlWVoIZ4VP0AX5aKSpoR5ocBuG722DZ9R6cwHj2QysbpAnhq952
         Tvtg9yZRt7IOYf+9au1DM0C/hicbzj5onlfdwmTXRTO+zaH73yKFCZwTxL+H8OuBr15U
         MQ+XoudoeR4tUOArqB0eMno2lVjG0DtObXGR1W4qRNNTYLuggzEozYofL79RUqbTmzSd
         H0QEXmya87OfRpRWBKAqBBRQnmDj9gAZh5rZ/H+4sFKl2r2JYSJiv0xct03pxNKmlThg
         38J1Wm1BCegi6jlrWmB/83rfdPfZNlqBb5OOk4rUxzE/WjX45t3sweKUmO8q4wuFwtZH
         AmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yLic7Q7rjpsl6s0zq8YnxSGiS+mE0uelHeGt1SufOxI=;
        b=nYfJj58pehzqywHWzgD0D4WOWAQDscOsygaAG7zUZwaI7Pb8J4p9DgbjCc5M75qJxY
         zmjBI8WVPXy7aJlqoMyU6oM4d1J8gWlfnNL099VMx01PZTAkZxaLNVz0Fo23Z7YBnmb8
         auwC2amFVQWts68WCUjsUAf0D27+EKIrW6XCrD5PoEuzHW0D2SFXYSjxOr+OF8RPZrDZ
         bh7ccB7xTyJnj3uXVdthP4+nYaFrBV6tnHO1Pa3lpFZIY/GI3gS11YABKh9cI1AA5D/v
         /oZ7t7Xcf7ne6WA3qx7ZBXLK34BBRq7LkmxEUYFBdv6c3Ihu1DZlUUnO7jXSq8RXzmCo
         tVnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JNTNUI/2zw8Doh8rBW91vXWAXqZ3k89M1yU2cVfXZCBZz0pKr
	FphlPYFurGj0XIdq0UJwJKE=
X-Google-Smtp-Source: ABdhPJzUoX9yG9A1BgXc0RuGqOoVaLWh39uwL91w9zdl1Kv3nkWPkGo4Jkgcw8o9UKRvYbElHGUqiA==
X-Received: by 2002:a25:c68c:: with SMTP id k134mr6106873ybf.451.1605296389143;
        Fri, 13 Nov 2020 11:39:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:4cd:: with SMTP id u13ls3794834ybp.9.gmail; Fri, 13 Nov
 2020 11:39:48 -0800 (PST)
X-Received: by 2002:a05:6902:72d:: with SMTP id l13mr5158782ybt.374.1605296388634;
        Fri, 13 Nov 2020 11:39:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605296388; cv=none;
        d=google.com; s=arc-20160816;
        b=SZFbe2CImUDBzw7FOiXtv6hQnXIj4O/QDKRitTEJCZXthDCoFuYaF6gsvj46vhb6oE
         741eUyzYGOpCGnmJIvq9IlJhPAPK6OSH0FTQhZvz1K/O5Qv2tL2tNlzVDY6z9ypS7u1/
         4KG9zcQU49f9e7LWXc+gXhYyLeENncRDW4rj1inbQVfuN23QGTBwRfI8GMBq40tPxuPb
         f6uuFHwri/UMzKyATtyAkMBjVd/aB/24hup0/oGmtnKUSUkfjT6oey5M42RKlnADEhRw
         Vjlerg8ilG47Gj/l5KkCduKU3GGiyqlITjGg66A5pLxL/JTkt1GM0mGv8NTvgXAT5VcB
         LQ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mR+ICCcQYiIk0bTaivOXjxpJmpis0xh/rO3FFm6LUbM=;
        b=riaN1IqM+vCafaqAcBVVYNp6g0KoQj03gqJ9uONe8BpMaDV1uoFkqMnVlUs1PuHIDP
         6UbnEpprI+fvXkPA3YLFgWTaQYv/enqVRQ6MsTLK0+Hni1N/FK0pIPuojWTswTiPaD7j
         HRd/fVwZiopBY0+lUE9j9WeIzB9WWuG1uf7myKVbkuDgY4G7VRJ26wQyM5WCvn+Kt1fm
         dIGw3ERovvQOcl18GLpiqHUcHJ9/JKt/q6DtBYAmq+osE6WF4GHszq0J62b+KZ618Whr
         fZGH/a50L1wmwtdwi+SHuo8NfmBzJXT5SYV2AZBGsK4LIsAfALV1rCJzvC4JRIVib7jD
         wqCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="LMjj8m/b";
       spf=pass (google.com: domain of alexandre.chartre@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=alexandre.chartre@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id g36si567923ybj.5.2020.11.13.11.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:39:48 -0800 (PST)
Received-SPF: pass (google.com: domain of alexandre.chartre@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0ADJYF5d187324;
	Fri, 13 Nov 2020 19:39:42 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 34nkhmbyhy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 13 Nov 2020 19:39:42 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0ADJZGrd031878;
	Fri, 13 Nov 2020 19:37:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 34rt58dxyy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Nov 2020 19:37:41 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0ADJbZNv005000;
	Fri, 13 Nov 2020 19:37:35 GMT
Received: from linux.home (/92.157.91.83)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 13 Nov 2020 11:37:34 -0800
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Ard Biesheuvel <ardb@kernel.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Segher Boessenkool <segher@kernel.crashing.org>
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com>
 <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
From: Alexandre Chartre <alexandre.chartre@oracle.com>
Message-ID: <0bcf6613-372b-8192-8a7d-c61659b852a9@oracle.com>
Date: Fri, 13 Nov 2020 20:39:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9804 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxscore=0
 mlxlogscore=999 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011130126
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9804 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 spamscore=0
 malwarescore=0 adultscore=0 clxscore=1011 bulkscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011130126
X-Original-Sender: alexandre.chartre@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="LMjj8m/b";
       spf=pass (google.com: domain of alexandre.chartre@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=alexandre.chartre@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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



On 11/13/20 7:59 PM, Nick Desaulniers wrote:
> On Thu, Nov 12, 2020 at 11:59 PM kernel test robot <lkp@intel.com> wrote:
>>
>> Hi Alexandre,
>>
>> [FYI, it's a private test report for your RFC patch.]
>> [auto build test WARNING on tip/x86/mm]
>> [also build test WARNING on v5.10-rc3]
>> [cannot apply to tip/x86/core tip/x86/asm next-20201112]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Alexandre-Chartre/x86-pti-Defer-CR3-switch-to-C-code/20201109-225007
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 1fcd009102ee02e217f2e7635ab65517d785da8e
>> config: x86_64-randconfig-a011-20201109 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install x86_64 cross compiling tool for clang build
>>          # apt-get install binutils-x86-64-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/1095b6a7acb8dc568c474cd3b3d1c8393fb49728
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Alexandre-Chartre/x86-pti-Defer-CR3-switch-to-C-code/20201109-225007
>>          git checkout 1095b6a7acb8dc568c474cd3b3d1c8393fb49728
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> arch/x86/kernel/cpu/mce/core.c:2023:1: warning: unknown attribute 'optimize' ignored [-Wunknown-attributes]
>>     DEFINE_IDTENTRY_MCE(exc_machine_check)
>>     ^
>>     arch/x86/include/asm/idtentry.h:539:30: note: expanded from macro 'DEFINE_IDTENTRY_MCE'
>>     #define DEFINE_IDTENTRY_MCE             DEFINE_IDTENTRY_IST
>>                                             ^
>>     arch/x86/include/asm/idtentry.h:428:2: note: expanded from macro 'DEFINE_IDTENTRY_IST'
>>             no_stack_protector DEFINE_IDTENTRY_RAW(func)
>>             ^
>>     arch/x86/include/asm/idtentry.h:110:18: note: expanded from macro 'no_stack_protector'
>>             __attribute__ ((optimize("-O2,-fno-stack-protector,-fno-omit-frame-pointer")))
>>                             ^
> 
> Hi Alexandre,
> The `optimize` attribute is both non-portable across toolchains (hence
> this warning) and a little quirky in GCC.  It's advised that you do
> not use it.  If you can describe the issue you're trying to solve with
> it, we likely have a better way to fix.

Yeah, I feared this wouldn't be portable. However, I am going to remove that
patch; I am making a change which doesn't require to disable stack protector
anymore.


> If it's removing a stack protector, -fno-stack-protector for the whole
> translation unit is the only portable solution today. (GCC 10 just
> gained the no_stack_protector attribute, but the kernel needs to
> support older versions of GCC).

I needed to disable stack protector for particular functions. Good to know
that GCC 10 will provide an attribute to do that. In the meantime, if I still
need it, I guess I would group functions into a file and disable stack protector
for that file.

Thanks.

alex.

>>     1 warning generated.
>>
>> vim +/optimize +2023 arch/x86/kernel/cpu/mce/core.c
>>
>> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2020
>> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2021  #ifdef CONFIG_X86_64
>> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2022  /* MCE hit kernel mode */
>> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25 @2023  DEFINE_IDTENTRY_MCE(exc_machine_check)
>> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2024  {
>> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2025        unsigned long dr7;
>> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2026
>> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2027        dr7 = local_db_save();
>> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2028        exc_machine_check_kernel(regs);
>> cd840e424f27fc arch/x86/kernel/cpu/mce/core.c   Peter Zijlstra  2020-05-29  2029        local_db_restore(dr7);
>> 4c0dcd8350a03c arch/x86/kernel/cpu/mce/core.c   Thomas Gleixner 2020-02-25  2030  }
>> 9eda8cb3ac2352 arch/x86/kernel/cpu/mcheck/mce.c Andi Kleen      2009-07-09  2031
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011131552.4kvOb9Id-lkp%40intel.com.
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0bcf6613-372b-8192-8a7d-c61659b852a9%40oracle.com.
