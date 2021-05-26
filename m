Return-Path: <clang-built-linux+bncBD26TVH6RINBBGMGXCCQMGQELQ7R7PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4F639121C
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 10:13:14 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id b19-20020ac84f130000b02901d543c52248sf204035qte.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 01:13:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622016793; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAceEgSzvpOSaOv4qiKxcXCAMo7hiGp3FbOuYJa1zMyqPDjkLfVYBB3isJ8ZIDLV2g
         wRVRk91HyfIfi+LtryvgLdZQo0iZTmTbmJyLClQRBPD0PmXBsnpETkEIQ4zWRwSq9WAW
         Ue0oaz0C4hDGp2XGoZLoAR07Pk7tbRTP2mUyjdW9BWmbl2QLjUZ+dGgslZtlaA1QOWc/
         ZVc93RiacP/jcTbNoR59IKD5sd0kmIzH6MBzv8fWlhp+uYbU3x2hUNm4375VL9DCFWiA
         risGEtYYpZTZdSEK3QxOvBNL89OM+W9LY/zBhxvzsoyVxUc5NLQyZemfbqU+LcdywJJ8
         vXmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=oqZ9fSSeG3GwLWz5ijzhN0SS4Amby0qHSY3JmGsAzSQ=;
        b=PPdPol7a+FXyYxP/vUsb4L2xZ6/KCDt4TThchc0Vu6hUNOLWoAD1pVu9IuRZevEtct
         heLivoYKZb0VdCSIJ89y4uaCFD0rMn5+++Nq4x0k3ksbqeD9piBJwhbj/s8ke/Yp4n/3
         1g2gvBnt4n0rjWqFD3F+80g5PTb1tFxvTXPPcBXNWvQvaIzxl+oQ7bN3VdpTs7IGRG/j
         zjb+Pmoh9hd5ZgHGcnqAxSA1yGe5fwZ98I4n7OvauY+mdR32lO/z5kxuJjhEZZzcfpXm
         EaK56D9fp+gXm18CI0mLvQeDZ3GmtpDfmBwHl27+ZOWbvQB3NftVWML+CgkHMgLMP04S
         COtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqZ9fSSeG3GwLWz5ijzhN0SS4Amby0qHSY3JmGsAzSQ=;
        b=c0QXcxKXW3LSMo4NBRmNgTArJ5zpjKVA0IzLPAMnKrfUMVCDrlyRuW6aHM3mWDGPuU
         qkH1NbrvwiBGAJMSXXov04JGoodHlXgmhgkFSK//zAod7jgE3OkmNN5r7wbSR9DukU67
         Cs8C94/Ua1kEkZZxSczHYBIQYyOn5KUmNu3B7rMSnUBe1tLLRr6AOw5k6z8enSU5V1kY
         QUxFq63DhxrY2hK4kJjmMKA3OL2pHMx8IpBdKit5kNuoJWALzoqpBenfUJACEJxwA2dc
         hN9EmCw6h18QCCQC+eP6gU0hg7ULJGwbeenQkgLhdqKwwg4xFbI1dN23Pmdxsd2YocUZ
         b8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oqZ9fSSeG3GwLWz5ijzhN0SS4Amby0qHSY3JmGsAzSQ=;
        b=WnSJlqKrrME0pRjR95KF86CtOPIzxXShN2r/VlmFqbohbdm58w4yGSSr/o3jpN1tXk
         SwfYZMhgb8pOFz9wGIWXm4A/297WBgSRSTDt1EJ/l8yZi3J2LMoKQh7xyL6XZZCNfUhR
         AEkYssbvmzbcEvamMvh3kdLMP9ru2tLdwLPwf8F8Bm8yUO7yhVj/Ig0xdmJXRwqV7/4s
         rkaMGRNZONyC05mqD88pYRsskwYMNILWfrezX21IirFKfUits65qIyrxjWB+vHMa2lmo
         +/zjt15MxxZ0465WTXTyxt+3+DEWE1HB1uv5+XUSRM3lnN9CYlq+UEmqZ/wGWE04ZADM
         l3Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o1ZpHjaL2jkw2AbZ4oSlhFdlRpxEm1CvP3TbdArLDJur7jtzM
	2+64qWJ74OIThEtoaKMnnWo=
X-Google-Smtp-Source: ABdhPJwlsCcP+r8c061Be3dnRkcvARGgJ2+EMzd/9oycGpRDs4cZcl3CaMWw66oyap/1x1gnQlGfwA==
X-Received: by 2002:ac8:5fc1:: with SMTP id k1mr36034610qta.275.1622016793477;
        Wed, 26 May 2021 01:13:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:59c8:: with SMTP id f8ls8838498qtf.7.gmail; Wed, 26 May
 2021 01:13:13 -0700 (PDT)
X-Received: by 2002:ac8:65da:: with SMTP id t26mr18734442qto.382.1622016793014;
        Wed, 26 May 2021 01:13:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622016793; cv=none;
        d=google.com; s=arc-20160816;
        b=tldIHccOplHqNvkEDSsYZqMurIKqRD6PAkmpeAv6HhSwT2b7oJ3RLHbSpfZNBlgvr2
         Dvc39+OARbjdVrP3OIU89g1bT48YyABexPzB/1zqMUdNeaa5OI6xYMDYzgiE6j9oDMc1
         qXHMHK/ZQefdmZh3g11HIsKOVYO0p4wGSIYJzN5s1oRwNDzvK5Dhm5IzI6h6mX5KeGDp
         58D/T8hY74BQSrECQdk7CDJURr6OYofp8HNneK4hFeQuEIY3d0SAyFSgei6J4i2DovS5
         b1ngvM31FUasLor1zTiU1WhoMdybSa/OQq4+MfTE1W/napH6/gL3P5LnUFA3jfVX6Acv
         sDjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=FFkiga/x3TgJJM8kvXYJhRBpvEwO5H0AmS1Xw9/n3VI=;
        b=W0QmlQLjYeVfMg6DwMb+gBTQfX3dCWL3JyMdqSLhj3/k+sfN7dbtTPVvMA7RJqREFE
         pgcDmxKpgdL+/gdGNM17LTfx6koBt7yfF3n3xfbwTxpKJWCfsk048tbAVwL546KPkX1f
         Mrig9jAIKg8JrNMzm1JQ2W/DB0z1+MAhh+1IU/PShGIn7EmHcLnA1C18V46tMR1x178u
         I914wpBxaFuRao9o7sFDYhOL9Rqb8wiXg/OEfD5nN5zh5/ZwD6c1W9a6y4UpHUx4kX9B
         nxrWUxQapa6xMLiWh97o9R77m4M1krhkn6vSXC5gaDAAXpC1gZb70BGEVHv75fOUbNes
         adeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id v64si82308qkc.1.2021.05.26.01.13.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 01:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: GWp8mO9K5fW2lVGFYdUAH/X1zUCD+VMvfZLdtYPnPp5AQAHqYMkN5wjz+S1+yJzmRJDItUg/HO
 wJ3GNaCIfpTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="266304630"
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; 
   d="scan'208";a="266304630"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2021 01:13:08 -0700
IronPort-SDR: zr2kQKDzF9wdSZcCuhXI6/J+hEJWyKn4o5NLKO9pSytsxONkOdzjZEqbcjDkhpK5pxypxVDco9
 IYGranyz7VuQ==
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; 
   d="scan'208";a="476823976"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2021 01:13:05 -0700
Subject: Re: [kbuild-all] Re: [PATCH] kcov: add __no_sanitize_coverage to fix
 noinstr for all architectures
To: Marco Elver <elver@google.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Kees Cook <keescook@chromium.org>, Andrew Morton
 <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
References: <20210525175819.699786-1-elver@google.com>
 <202105260629.X6n5yc4D-lkp@intel.com>
 <CANpmjNMT=HQQpK9U4bnoGb-=+KJC246dSZ3u2VB0TXw4itsB-w@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <f213338f-a98d-27a2-a785-821f60c4d708@intel.com>
Date: Wed, 26 May 2021 16:11:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANpmjNMT=HQQpK9U4bnoGb-=+KJC246dSZ3u2VB0TXw4itsB-w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
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



On 5/26/21 6:29 AM, Marco Elver wrote:
> On Wed, 26 May 2021 at 00:23, kernel test robot <lkp@intel.com> wrote:
> [...]
>> [auto build test WARNING on linux/master]
>> [also build test WARNING on kees/for-next/pstore linus/master v5.13-rc3 next-20210525]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Marco-Elver/kcov-add-__no_sanitize_coverage-to-fix-noinstr-for-all-architectures/20210526-020046
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git dd860052c99b1e088352bdd4fb7aef46f8d2ef47
>> config: s390-randconfig-r002-20210525 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
> ^^^ you're using a Clang pre-release, breakages are expected until
> Clang 13 is final.

Hi Marco,

I really appreciate for your comment, we'll update clang to the latest 
version.

Best Regards,
Rong Chen

>
> I think there was a thread about this at some point. I guess LKP has
> decided that testing Clang pre-releases is fair game? I guess it's
> useful, but this warning here needs to be ignored. It'll go away when
> you rebuild your pre-release Clang 13 from the latest LLVM main
> branch.
>
> [...]
>>>> arch/s390/kernel/nmi.c:182:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
>>     void noinstr s390_handle_mcck(void)
>>          ^
>>     include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
>>             __no_kcsan __no_sanitize_address __no_sanitize_coverage
>>                                              ^
>>     include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
>>     #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
>>                                                               ^
> Clang 13 will support the attribute, but this is a pre-release Clang
> 13 -- so please ignore the report. FWIW, I tested my patch of course
> with a version of Clang 13 that supports the attribute. :-)
>
> Thanks,
> -- Marco
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f213338f-a98d-27a2-a785-821f60c4d708%40intel.com.
