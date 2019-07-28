Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZP663UQKGQEUG4CVZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5756678032
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 17:29:41 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id m23sf36815879edr.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 08:29:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564327781; cv=pass;
        d=google.com; s=arc-20160816;
        b=W8FjyPkVeFNF30hReJf1H/lwAJ8t5oGEMgt8Ovzjpr4XXSSSv1hhz45N/uythzKqm5
         BHgRl2Tpjaxx+Jiz37QaA8EeF066qB3FEILH86JhHKLBeZJ8kwRSzvWhSI1gWHNEm69V
         MNNTfkeKPUKkgoTfTvy35Y6tLZKbmXFyLPPZu1Rf2ts9dkdXih0SFVpKXP2fbrqK9vCy
         R4AnXh17TlWX70qpLzcSuMuNPJElPB+02diKuXMXqGTVnxbkjaIb8NcEmfcJauh8J730
         MMCy8KGvoFhWPxof4W3aZ0lxTFnY56klsqc06nbhjKdj8iY3OgRLc1gJzZiih0wjCMNt
         4iRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=cvYMwOcHB8WXdUlaObDYw8ZbrGMr0ILgcSH69LS8w/o=;
        b=OrYyzEe+8JyPRB2HB7PHnUjn4jdTbjuS8zVKs2o0G8Vj5ssIihp2pTFHk6RfxUFQ41
         WDfykdcvdh606tSlQ4vUzDLK4YpTluwBG8Ey+iXgg4W9HX/0/cOL+QwwANOx11ydouPg
         BdzQUPgQ6TI3hKDuKCmfAYK2EIa6D4xKW/y/NYf6aVDXMFapIgITlCO1G1sUh5MYdVNa
         8td1gCNsg3xOsj5XZ7ZsNZiJawXXgUadSgqar7EJlalrHbHDXHxEXwD+CsrmN2cCvJ9w
         qH0680COx6eR2Yvwg5wIKn/4JwrpukBnKnQoJpwcQZ2mC2J39dEgH9SXGEJ06xW1+Trx
         7aLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cLWiaWRv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cvYMwOcHB8WXdUlaObDYw8ZbrGMr0ILgcSH69LS8w/o=;
        b=KB7M1rRLPD0qDxvJEU9fFlAKuy1RnbA4CSYCRuNS4yvDko8z2WZCjQlB01qIgEbDeg
         /E8DLIh/xX4egcwLVHDpL6DAVQlOWipIW2GRQTzUzXSwW9p/2/F7iKAIppR4mgakuo06
         BLR5hOaVXF1eVsL4UoswbHxHXp0KzO54hWiBpQw+In5c5TBHY0+GKjumwOn8ZPQlmYQd
         OO1rAS4GXKpJmM1gETtmOt1mabhAqihGPMuI5IA/TOvvzDKnMwL+OayhdDKawfeMP0BB
         K7zC3H0Pj9S4G+vcfYjeG6/xFfYtX3YjacZNxlxkIaaF/7M24pe9ZHMujLWS00eNot4G
         gv0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cvYMwOcHB8WXdUlaObDYw8ZbrGMr0ILgcSH69LS8w/o=;
        b=hRj2QEG4la+ibJ1fWv0WTuzhtJ5jus4xJesyT1Gb/vDQv00mw6xbCMygXz4EenKyvG
         v7C3BdCGKBQzyMNHXPRQdOjtSJC1zpyjM/h+GN9dlMIIDBV0WN0+U75NHnyZBDNJmDM9
         7i0GpSumH8CSk2u1IlXBemEj/3uhqNxyA8rZsOVKG7BwVWz6uZSPaNFQn8hH+ulAoLWJ
         4NwyJNAmcwurEh9p8bslU2IR+j71+f54nPKAFH5GBQu2PCgtHZ2IIcn1W76JaH9rVGzG
         6GR3rTPVm7xSq/XERPYX4y7DyPqI6mghx3OgG+CMN65/oh7X2RFNSprwMtYdv5VgYyAJ
         HNIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cvYMwOcHB8WXdUlaObDYw8ZbrGMr0ILgcSH69LS8w/o=;
        b=FbSiPZKjOFqhxjlyg+gfyi4kk5jC6KpuDGPFajOtgDDug8W994FqQWiDObBZrM/VjV
         KgQko9s3l6G9+cGIbcNbdpHB7I/Lz1k5QQNiOMed6EKGYbAg1tQ0W0xDkDfRJCLZHUXo
         IHAkiyezYhA+0vAd4a/ZjLU296Gw3u44jw2D5TMY0hvxj5UnjQf9p8i6QqgFDlzjWs1K
         3KTfIIJ8KnINdD8pkJG9fcbyeFvzQGnHa8AdJX+aQGwjDsObk6aHVgFoicbOawHmuqIL
         58h9cStcwb+cJrz27OsrbbC6Juugm22rnJTYxVOLWfTHZ08UdHJOV85yybINcRYzYr6N
         3rVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUtJrlDD2S2ywCcPFYvzfl1Lj1Xt0jBx7gGRWDkLpf1pva4QhIT
	tNcsHf6koRP/XE7FpzxEjEw=
X-Google-Smtp-Source: APXvYqymOnp75Kl6Baqi7Jmh8GrsCY6d7xkFgx4GijlaGekSxzZbt/RbjgGZKQ9o/hqL35XbZrA6mQ==
X-Received: by 2002:a17:906:a417:: with SMTP id l23mr69998508ejz.20.1564327781086;
        Sun, 28 Jul 2019 08:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:420c:: with SMTP id oh20ls11361239ejb.12.gmail; Sun,
 28 Jul 2019 08:29:40 -0700 (PDT)
X-Received: by 2002:a17:906:ad82:: with SMTP id la2mr13940892ejb.123.1564327780694;
        Sun, 28 Jul 2019 08:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564327780; cv=none;
        d=google.com; s=arc-20160816;
        b=AGS0qGGfav3lROvjxqF9oRymPW7scncSMnztlIcdjmZ08hEb+QNTQLiiQTwkehq7Mw
         h+KUE/i61I6tPHSrP09IDmI9xUHkfw6wEfgA+qKPXxITp/EfnYe8/Z5xkiuHndrwU+FE
         ImHl0eu6O/MN3asiohQIOjHyntmYTjk+PvR3oddEpRKxUrFR+G2/X0+qSLIGj4833qsk
         lNfl6p23d4MlRbm/5gMsDuTZUU6VDAu9Y6+44UJcGOgZ73bQAYPAtcob8tDjjtAdmj1Q
         g1yh3NxLwANuUlXWVWPYXOHqUiDIWf91NuJiZg1/ZnltKA6S+RzoqO0/kQ9imq2QP5u3
         JZSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wF3oVqSi0Dbhib8xp8czpLACn/F/O57mv+gZVgWPSKI=;
        b=KZSdcxLT0STbhCVjap4HhJNLopoDvff1DjIFUjpnuklGu9Jsm0ad2JNKq38WJFsLMC
         aVwmnHe0lZo/dwZyR2gcsIEYY5sFwxPz6ev6iuiNhEqiFBOGvRUF+cZdm5GA6A0g+PDZ
         DeDTOHefLqknTLlBaqSnvuWugMG/DmqKWz23AYiHrdC+1Wn+m4C3XrB5Mc4GUQVMK4jd
         HHcjbP5ibemqZT6hF+1q5irSVnt/gQ3NsXftXXnwnk+dNC9Cg1sQyVphs1Ch/Hg2SUl4
         RuYIaikowlDj6LHSvilE1CFf0OuIFOSItNgpALJPLBsTxAQ+purlANebDv1JF9rYtAzn
         vecA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cLWiaWRv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id k51si578771edd.0.2019.07.28.08.29.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 08:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id l2so51328121wmg.0
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jul 2019 08:29:40 -0700 (PDT)
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr95324332wms.8.1564327780097;
        Sun, 28 Jul 2019 08:29:40 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id t6sm64508033wmb.29.2019.07.28.08.29.39
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 28 Jul 2019 08:29:39 -0700 (PDT)
Date: Sun, 28 Jul 2019 08:29:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] sched/core: Don't use dying mm as active_mm for kernel
 threads
Message-ID: <20190728152938.GB103200@archlinux-threadripper>
References: <201907281344.Pa8w8dwJ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907281344.Pa8w8dwJ%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cLWiaWRv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Jul 28, 2019 at 01:39:26PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190726234541.3771-1-longman@redhat.com>
> References: <20190726234541.3771-1-longman@redhat.com>
> TO: Waiman Long <longman@redhat.com>
> CC: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>, Phil Auld <pauld@redhat.com>, Waiman Long <longman@redhat.com>
> CC: linux-kernel@vger.kernel.org, linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>, Phil Auld <pauld@redhat.com>, Waiman Long <longman@redhat.com>
> 
> Hi Waiman,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc1 next-20190726]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Waiman-Long/sched-core-Don-t-use-dying-mm-as-active_mm-for-kernel-threads/20190728-101948
> config: x86_64-allnoconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> kernel/sched/core.c:3240:20: error: no member named 'owner' in 'struct mm_struct'
>            if (!mm && oldmm->owner) {
>                       ~~~~~  ^
>    1 error generated.
> 
> vim +3240 kernel/sched/core.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

The author is already aware due to GCC reports:

https://lore.kernel.org/lkml/b89697ed-a7f0-bb41-25ae-8e9727875d33@redhat.com/

https://lore.kernel.org/lkml/201907281205.pfTYU4kC%25lkp@intel.com/

https://lore.kernel.org/lkml/201907281219.HBYCkD8G%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190728152938.GB103200%40archlinux-threadripper.
