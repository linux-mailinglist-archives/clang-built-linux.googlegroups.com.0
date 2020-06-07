Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUGN6H3AKGQEE4YMDFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 425391F097B
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Jun 2020 06:02:26 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id r9sf4455023oia.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Jun 2020 21:02:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591502545; cv=pass;
        d=google.com; s=arc-20160816;
        b=rs/IpwBdmQVqWzOGVfe8fcqirekeNXNxxSDiwIFcDbyXE0x4OFtXjK7WcSYkcdhor+
         4IM/ekWIJzb0xhKRUbi0gwUtIy+qkJk2Raw2r2tg7bWS0xUwNumWvrIROLfXSPAdPckm
         2P6D7r35MDuScOcLCoAYaglN4vIe2QUv8564oQM+2NjJ3zVILAZAVkV5xlAxa1dKh1Hg
         2URu1fsKt93/IDffDQB5TwZiF4fIfJfX7KpOc9HmBtNWbfseh6CEShgwDoyVJcFpCciT
         RAhxNbDz+D2el2rUTus88jlGaRNFfwyYDoq359yOsf7XkPRPypZkvN7V8r/2DOD02YVz
         WVhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=a71TnEGiZ8pHhcM0npgQBjy9W5soPKJkX4cwzdm9J44=;
        b=ajb4gXO2TKiIiG8vdqso5UXO85NZR8N03Lg+HHn6ZIqrueTuZshwVSN7ltBQ0uhh5U
         K9o3twyz/HM8B3N9XI6BxCbT3VapUU6d2EvhgGRRSO8kVs0KKzcwgw7jDccjcTsbgIWE
         ICakAKNjkCtWUICR0zKJYCNBOwvvA7QJ2P2lcxESIVTQatS/wULx/HInK3yzM7gNNhKr
         W5DgoSoj8oG68K9bLXOmQ4rbfc0KFoo8sGrJZd1niAXBT1C4yxNRd7F7b43XkCANujqt
         icxgT5c7mSi1xiNbqpsBwAVDB/4Yb1MLe3c85OmVzUeVWze2GGFpoEPAHdyvC2RftoCG
         SnSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=W4d3vej7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a71TnEGiZ8pHhcM0npgQBjy9W5soPKJkX4cwzdm9J44=;
        b=XoEnvPwjJBiSBDQRpaeKafR3D5Squ02UhutjE1LFHpHq3T+dBoRFGmUfTT7CNPzUxi
         V6hqCfGB1SMLh5TBleOhjjNGq8PZ3H07ogS+6Hfs+eDzCPs+30q8Gypy7pT8dwuenNiy
         rTZ7BPW2Y+pL+8Q4r+LzQ3946YPAsEovnyq8/PkqutaYpiNRInj9gZbd7xZGWdLV6L29
         1ChGKYJmiKgM0b/K1Oo2YWS18IHE+bAUVROdYc4XJV/zZlYCc+Yhunqwf9BfnRiQfvya
         eL6liOYFWcrs4DdoBwjpuvYhvGit2/qyjO7ewYQX2o8wu7RgSzRRm+YvnVjwze0OoIuR
         rUlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a71TnEGiZ8pHhcM0npgQBjy9W5soPKJkX4cwzdm9J44=;
        b=jmDdWlgQmluhmUUiroQLDBTjchObj4nT1Cea3gXNBL1zkXMiPTEP/md8u3cg4zXyhF
         oi3jdi4AJ0m8pq9UNdObOsVgPXe5kWxfBxKYOP9nSn8m0qFN1bkq4I4YHS/1cShDch1f
         2xrsF75qDfD4TSxwlSHXlVGJGlEKj6/C2Wug99SXPPItolgsCRMJzjG3VOalrOCrL5G5
         GHOftFYu5TC9Bdeal8JOiPEAOnKmDP5Z0STMgkhBOO3A/pl3vI6qafKONCEXBEVsGgU2
         tgd89gLg5pVik0kO1FIPu2NtYanx1cEJxSx012/Y95qsalqFAbt+32OYcGjYVqDEi6+5
         yxLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QrnlHQaEZCSV7aT81hI2k9zRYMn2Y12mogzynv9zc4JgY1pyB
	u2dQqbCfu740EtRSvBlFkks=
X-Google-Smtp-Source: ABdhPJxZAnoOFkNbmwChroFPBXzvK7j3+k6bPNqO6UNpb1LSzGi4AIoWr+LKWxsIQb9MafBUNN13QQ==
X-Received: by 2002:a4a:d05:: with SMTP id 5mr12955111oob.29.1591502544880;
        Sat, 06 Jun 2020 21:02:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:460f:: with SMTP id p15ls2527894oip.7.gmail; Sat, 06 Jun
 2020 21:02:24 -0700 (PDT)
X-Received: by 2002:aca:b945:: with SMTP id j66mr6763886oif.69.1591502544602;
        Sat, 06 Jun 2020 21:02:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591502544; cv=none;
        d=google.com; s=arc-20160816;
        b=yu+UTw+oddEv0oBwI3Of/khDtUH2pANd5t6ifKgKh8NgiSGKY+f/lNSYQ4FxU+fNsh
         sbAPlzocxKwFOcq7GQlZn2nN0w9wLbYba4Dqd8yIIJHbF4LoaEUtGUp7flLizP1dLHVh
         29m2sfWRc69UShpmLju+slpF93uMRoJf1UdixlmnP/zldEz9EKYeHhluy+DF1nhpW5vh
         1qeDpnI3JxqHKTzI79OawSzcZVu7IdqfUUER0ktT6M5MXEzKrbLRIPm36PnIhltHgDEd
         +5/PK7cIeuiD8i1SC6kwIMfk3kdln1lW4KP8UN6XqP5Yx3vLPxomVl5Puiv0N+eDlHls
         Yazg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xHQzaF2M3YTkPV+7Gbq4lGoOeRDC+hTeXIJwJW9l0LE=;
        b=pfrEuQf0OT38ADDbFGIQl2dG1ZLeZyEU1pyjUXS9AkhIe4SLfP0ENwiiQEa8RAUNGe
         9Kix+jtyBUPcpmCjZbGcVs0Mzj8PRmpM+t4uZzt3mymIu6z3PpTVF5vZaj/Bo52reoSo
         XQy+fF11ucs7C+EpDFpCSY7G9lnHC67+8MqtFoPg+KRdlSCRyXUSxasmTsfbrYvt+3uZ
         qJdkfwi3vEI8V0u0xaiPRz19h4tIfqDu/T5NnMoVIDUE8jA3/g8xFNg3ScMh1IrPdSC+
         mGLLq1dIPtm1MCCzhytalEukASSxTxtOTnollJTndNdm0Nb7rrMnKWLrLK4pMgEkzUMu
         BfbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=W4d3vej7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id e23si247720oti.4.2020.06.06.21.02.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jun 2020 21:02:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id x11so5300377plv.9
        for <clang-built-linux@googlegroups.com>; Sat, 06 Jun 2020 21:02:24 -0700 (PDT)
X-Received: by 2002:a17:90a:dd43:: with SMTP id u3mr9949301pjv.221.1591502543336;
        Sat, 06 Jun 2020 21:02:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p190sm3487044pfp.207.2020.06.06.21.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jun 2020 21:02:21 -0700 (PDT)
Date: Sat, 6 Jun 2020 21:02:20 -0700
From: Kees Cook <keescook@chromium.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: mm/slub.o: warning: objtool: kmem_cache_alloc()+0x26d:
 unreachable instruction
Message-ID: <202006062100.5003A90F@keescook>
References: <202006070422.YLLaSc6y%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006070422.YLLaSc6y%lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=W4d3vej7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sun, Jun 07, 2020 at 04:48:26AM +0800, kernel test robot wrote:
> CC: linux-kernel@vger.kernel.org
> TO: Kees Cook <keescook@chromium.org>
> CC: Andrew Morton <akpm@linux-foundation.org>
> CC: Linux Memory Management List <linux-mm@kvack.org>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   b170290c2836c40ab565736ba37681eb3dfd79b8
> commit: 0887a7ebc97770c7870abf3075a2e8cd502a7f52 ubsan: add trap instrumentation option
> date:   9 weeks ago
> config: x86_64-randconfig-a012-20200607 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 0887a7ebc97770c7870abf3075a2e8cd502a7f52
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> mm/slub.o: warning: objtool: kmem_cache_alloc()+0x26d: unreachable instruction

Known problem, fixed by:

9380ce246a05 ("ubsan: entirely disable alignment checks under UBSAN_TRAP")

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9380ce246a052a1e00121cd480028b6907aeae38

-Kees

> --
> >> mm/kasan/init.o: warning: objtool: kasan_remove_zero_shadow()+0xa52: unreachable instruction
> --
> >> mm/kasan/report.o: warning: objtool: kasan_report_invalid_free()+0xbd: unreachable instruction
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006070422.YLLaSc6y%25lkp%40intel.com.



-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006062100.5003A90F%40keescook.
