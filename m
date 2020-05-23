Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBA5AU33AKGQE7CX7NKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2941DFB16
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 23:05:09 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id d6sf1630470ybn.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 14:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590267908; cv=pass;
        d=google.com; s=arc-20160816;
        b=JLmG6mpUcjq97seFZdtLmvKpvKuT21PRzjgyRdOMWC74z4EWWGNpT8431LUPR0Eb+x
         b1I424NGI2ZkvxsaFxG54Eny3mw9XESTZsqQ6Q3Ypgb8GmgL2Kq2BQl+MozuAeZ63l9d
         XCeqQMiBFFKsNVAOZrNi+BOrhRBV/aQHZ3awy6Axjoh62EWY83oPynC4s1t8Sb/4y39k
         KB8IJM8TDfzUm546G1pzQssJq2wYGDS1p/LR/9/TLXSi4mWf7sZc6abxCTUzrP75lVPN
         LAynfOKIDx7UV6bvooZKtDw3vyIb1NglfjrsBXUOs5Nk+BDtzBllx/DYE+KO8vG2bOIj
         kEfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=SZPplK7TlZIAFfp0IIZtGxNgtc2Wi2VxnM5tOwPCcX8=;
        b=04oIAfvi4Pz9GJ67clnunUXs5UGg3x1QsAn9qcPgnLh/UJe9LsLilayZKi4hWVgt/F
         8wuq05Kv9M7rjHUPDRF0ZLUXpOOwcu584oL+eJ9/cfAUTOS+uPNT6vbXAS9cIhDXrTwd
         ap/VuT6hqgVw5YBfjJUNJkpV23wm+zLcsz9IEeMXvxZLepJirNSaIcux/H11nyzQqZeq
         NdrHc3KHWgFKmgrAWglYyutKpVIgmvNz0a3IEjhBpr04bnyqBpW9qX71kVN0f0a9Rt0a
         Wq5LuFj3OtWrrDTcVe+VS/GAIU1GzorFmfJ31kMsIb3dIy73+8yCd2qqMVOUkPztYreQ
         4XDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=i4bg+pex;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 205.233.59.134 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SZPplK7TlZIAFfp0IIZtGxNgtc2Wi2VxnM5tOwPCcX8=;
        b=ngslh5lJDOpmA2jQRZxUdYDw/mZiH4tx9F8uYmSCX+SVR4K0Xmnuvucpx1D0vkvUMK
         pon34zDLo3n+goq5vodVzPq7FiMvK8xkxREXt38SQnMXR8AEHSjI7Wx0xg1RDTsPidYd
         vhIkBAAtipxdfqP1CPo/sAPb/NChybyrm6f2LkTD12V6cA0Wfvpb35ACbIiUA+RuUBQG
         +PLjr8zsvpBVYZxO6DwzX4p64eQXORtFVHvYORBDsPsbjaA5dJYAiCY2DGalOJW8uiBs
         DQZ9sPCuFf47mJOxnYg6KeHG8/iwZKSsGNyZpRguyC0eq/C2Xi1FOI7rYwWK6mKkLxa/
         QhfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SZPplK7TlZIAFfp0IIZtGxNgtc2Wi2VxnM5tOwPCcX8=;
        b=L6Kh7NEt4Ehdb6/wnwwHJsmbp0pm6Okn1WlCcHfjCciBH0OmCc+KDf361WjbIxdO5r
         An3twrqW8qyNemtxoUosrcBW/AaSb2t7aMrlGUlTfwo4X7TFNiuqYOG+X2tPw2lkgfrp
         l16UyJLsu7fxwh2p07H+m1g7UymyrC6eAn3XhHtM+lZIYHWsw1LRVUcfK6QsZ/S/aeks
         K4iRu5um0LEgvAPbFydKglG/0tLXbvaeSqQyP1COE8ztnu2HhF8L39ikhlh1ExNM0GTI
         qUM9QyNS9+b8PHa75RlDEWRZlbQ5yP/MirY3hjQBJNvn1e1Vb+I2uCi/s6pMHHKD2Yy/
         paLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PNdmNPgmGPzLF1aZkakaapRh66bvC0b/A762ZoK3ONsYOTMHd
	27fgcvW9mo1Vw3SRziZV20w=
X-Google-Smtp-Source: ABdhPJwO4izim+woC5unlxISSdOIUlWucuc8u3tFLnJOu6FNIFOWaAqkqzi0+EfQvoAN7Jz7Ak2TCw==
X-Received: by 2002:a5b:5c6:: with SMTP id w6mr34376604ybp.261.1590267907890;
        Sat, 23 May 2020 14:05:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd43:: with SMTP id d64ls1804545ybf.6.gmail; Sat, 23 May
 2020 14:05:07 -0700 (PDT)
X-Received: by 2002:a25:a1e1:: with SMTP id a88mr34674496ybi.237.1590267907271;
        Sat, 23 May 2020 14:05:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590267907; cv=none;
        d=google.com; s=arc-20160816;
        b=HPc535nHzRDOt768Fwxns3I0TONb7bRsdKPoCiAQi9Seo7M4NAYaMNwUiAlspnPMtq
         0silJAM/jKouiehTlN+cq2SqkmOEGktwxiy/4ysXhV+Z/NHRVNynalo0X1YYHDqoeHZ3
         rVDk7EqwxgIsUxYqNr7A6qKSZy29otgEGhlkgRTG/iB/yOBJfCNWSOV9fgUSDEaxknEw
         6l9nTQbQuoGDXA6v+Cbz4VVlAez2l0ENbEMsbRfdxVepeLYjbV1osBojdJu2QOmmidn0
         LCO6twMvtkqK3ug7YMyLucVW4HhDx/qO1oter9wNG2j/ta70TwM4weHGYdYmwqtD1qhE
         7W4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wmjz1A/M3GNBFxhM1zraFO6WuBwQZYAR4KwyozbQuKs=;
        b=bLk4QVfUg97claY/0MG51L/6A3c+urzyr0bc1wFdAQxlMfpe3CrCEesg1uZFwFhf63
         BtUGwX+30TKs3N22fGXQimQFJBiKYQmhVoS7rU+4eWEyI9m9R8O5Su1PL6jEb5rp2Zag
         QMQcMIg/ML4GVq8/Ys/xVpvmKgWpADWyfdaHoFEcjFTj0ySWWALt2N4kdGbwaJNCUJsn
         QiWhNhyBXm8ZahK12S17Op+/hwg+8XEieQ+ZQ/S1LDiefiNy+u2i+E9eVfBXuG1q0XD2
         RbISoE7jWKZzhOFzI4SabFBaDpYyATZXrxjdVMLnFryIZrhcRA0fZf4AibyNswivB9LO
         K/yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=i4bg+pex;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 205.233.59.134 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [205.233.59.134])
        by gmr-mx.google.com with ESMTPS id w190si754766ybe.2.2020.05.23.14.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 May 2020 14:05:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 205.233.59.134 as permitted sender) client-ip=205.233.59.134;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcbI1-0006pj-MP; Sat, 23 May 2020 21:02:42 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 341899834A3; Sat, 23 May 2020 23:02:31 +0200 (CEST)
Date: Sat, 23 May 2020 23:02:31 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: kbuild test robot <lkp@intel.com>
Cc: Oleg Nesterov <oleg@redhat.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [peterz-queue:sched/core 8/8] lib/math/div64.c:194:1: warning:
 attribute declaration must precede definition
Message-ID: <20200523210231.GC2483@worktop.programming.kicks-ass.net>
References: <202005231418.iVv6BaVV%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005231418.iVv6BaVV%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=i4bg+pex;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 205.233.59.134 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sat, May 23, 2020 at 02:50:21PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
> head:   42da62769d7de07bea28f81307723050f3339727
> commit: 42da62769d7de07bea28f81307723050f3339727 [8/8] sched/cputime: Improve cputime_adjust()
> config: x86_64-randconfig-a013-20200521 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 42da62769d7de07bea28f81307723050f3339727
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> lib/math/div64.c:194:1: warning: attribute declaration must precede definition [-Wignored-attributes]
> __weak u64 mul_u64_u64_div_u64(u64 a, u64 b, u64 c)
> ^
> include/linux/compiler_attributes.h:271:56: note: expanded from macro '__weak'
> #define __weak                          __attribute__((__weak__))
> ^
> arch/x86/include/asm/div64.h:81:28: note: previous definition is here
> extern __always_inline u64 mul_u64_u64_div_u64(u64 a, u64 mul, u64 div)
> ^
> 1 warning generated.

So what is that thing complaining about?

Why can't we have two fuctions with the same name and signature, one
'__weak' and one 'extern __always_inline' ? GCC likes it just fine.

clang folks?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200523210231.GC2483%40worktop.programming.kicks-ass.net.
