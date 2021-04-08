Return-Path: <clang-built-linux+bncBC2ORX645YPRB4MWXWBQMGQEOLNIIUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F96F358C39
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:07 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id p18sf1760611pjo.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906546; cv=pass;
        d=google.com; s=arc-20160816;
        b=sYnzf1CVC+qqgSrLbF/IcfyPHoXmNv3qtru8AYKm4Gg4BLeEBPPU3Q8w4sQdaCNXou
         sZCcTkaj4vG+yxQqmS7OBK3+dCz33nr4VmcDBOGpmC0/SfgTcFg15FxoynMJZyObJxE2
         BV6Ieh+DxYmwXFuI6P48OIz02h5BorDrhquTLFUss3hEKkDExfW66cyb8Gs5ZnejEHV6
         z/JCpwPGqCsYAPBlnjEY3FUu01ztPJEvCRpwUKHbQ3OjenqOCMp7KlFaRtBz4EfpCF1E
         6ouy2Jm+28qhBCJ4imCj6Dvd7h6xBQ/UHtP/GkCAFFwbL1Tdnco4t3UaD3Tz8/HXgfe5
         w6TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=xDPGpWCbLfUyk/KpTXDnjJpnvrIYxmQA0TuVzq/maRY=;
        b=zBbJBchQ37KLJp3tYnxkBKOmRRMDQfnc0+ElrjoAi1CvyQfXT7nTnvFvLq53PkghGL
         WX+14Zy2YknV+Z9ne4WFKQpfL2XG/s5X9YLQqwZF5sq5sWgivg5sZPpg2DS/DEzCzJUZ
         CLBfOf+nHnm+n7vrv2fopl07bwPxJhj9u90jdWm5j1QanWuAWbQpReJh68rfCFvgP36e
         2Wc5eiiq7DV00wnezu2+z57U9GoswbPAbWRVuaukbN9IqjwF3/w8SFtJIPZ/KzAQVL7/
         GlsM6STEbcyW7N1LG4fCqov6r0g+zHAq4uTtOrXdLjqWqIBVnGO50P90NtQkU79yYQ5U
         vlgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rt9fOxKn;
       spf=pass (google.com: domain of 3cetvyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cEtvYAwKAM0Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xDPGpWCbLfUyk/KpTXDnjJpnvrIYxmQA0TuVzq/maRY=;
        b=CFopTFUS3Pc/kMczeGUjyB+XTSYsz5P+SbfBT2PQjFPpPXKdgy+90XeqmQWn8AZnP6
         y1bk4R01jCXDwp99LaxJbh40VURQ8KLdgio0QZVcrWthYHAMO2/8bV5Wxek7EHoom+N5
         HmF6DAlKTfNjqEmgH3aGh1DDYJT6I3NzPEO7lY+DaMCko072TRUIOgBIWDUVzuerT9NC
         rIxyJ1nc2tgTFyyl3YbuY2JxZFKUdKClnqyNefTP6g5YeYHp/tUeI3EBLeoqSrD2QdgU
         l6UF+2vislVtd9jRPfoqz5/DT4GSo4gP/e8r4hicRyoGB77kiOv6OzprqDwCWlZN18wv
         JoqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xDPGpWCbLfUyk/KpTXDnjJpnvrIYxmQA0TuVzq/maRY=;
        b=S1DbMo5s8Oo/xW9oilsjQ/QbEAr7OyzzTrQ3Xmw8UELDjADl3dsYFOxYZIr8GPe+yW
         GdrGlgqUgM8rRwWf1L8jg46Ybl/MeJeuu7FhUSbxpiUs/zqBNQ8+mKJLo5SpgVVQ/+Mo
         veVK9c9n8b1feQ33LRi/NhRUMO6Kd/B1RFtn1kpoyHjmL2jpS47jXA6p5x0Lp+15PNb/
         rcXW5+cX11KXIj+KN5PiH+Sms8BDd+QAsGw86Y56W8MOTbsJrqv7gj5AWq4larYee25Y
         7SRav5p0hZ2wU/KIlIbSaGEtw5F6UWnZVHx0htVY3vjhWqdRCurExSzRFjQUHeVuETkF
         zh0w==
X-Gm-Message-State: AOAM531q7asD9eAeOJ1fCWXr0XxQWFXaWO2646i6mafWcvuAyWwbUVVE
	fvZdApumqP/LjHaaac76bEA=
X-Google-Smtp-Source: ABdhPJx785bFTgNCMLqLDhRx5X8UIWNm9lms0Hpmr/sOfF4eYlfCYEy+L/ljxUvldFT8dutplc+Oag==
X-Received: by 2002:a17:90b:295:: with SMTP id az21mr9778463pjb.11.1617906546044;
        Thu, 08 Apr 2021 11:29:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1656:: with SMTP id 22ls2645751pgw.1.gmail; Thu, 08 Apr
 2021 11:29:05 -0700 (PDT)
X-Received: by 2002:aa7:814e:0:b029:20e:f3fa:2900 with SMTP id d14-20020aa7814e0000b029020ef3fa2900mr8947146pfn.62.1617906545476;
        Thu, 08 Apr 2021 11:29:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906545; cv=none;
        d=google.com; s=arc-20160816;
        b=PTiRkSNFJcL3A5rr1pF5Y3kTMB+HmTeBs5APeAdD1cl+ubUD56Wl+eaiOCJnuFTIEP
         Azt370N+4XcQcUJQfQqWeN4t/9RK5N7LhggtiEADtYFM8qZIUmrLNqgn3KGyn5bglv37
         AIvMhBoN1Txj93G6UVsuhZwri2M9oA7IakxNgVWiVJmXPWtr+AUvIPkt9/+DRD+r3SSq
         gh0MuVjUqyf5CYZZnPXX14WXXHVpD4R5DLqnvTtqk7lElp2F/y8OZBzsfdStDmYSSaLA
         HZ5Bk6dSKjyf004UtvGGkaNJ23dstAe9zfAlILmF+OizE+ocp9lxopW0IXqqo+/4Tg8X
         sM0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=A4KMkUZrl4YbLTqlF2GjjNGTYuxFr+/F8S0sGB79SBc=;
        b=FA6IsxvpXiBrBsRVmvThvNL0KI5GRUISkSaI6vWkRxRdA5k7RKNFr37Qf9jb6NROWt
         gBrwDAo/OW70IzmQHe0TtWMuOKYCmzTxI9hCI66aNCdcldUfmh2ZTewd8NEEXdDfgc/K
         A6R/+AM7Q59hgNYEoSmNTCifmCLTdfA6p2LPXnk/IrT0TAuQ3Jw8WdzR1UzLIN7MNyy2
         diiVHTLimEYrcrfr1Nh2YB8WmMEzCRvJ+K1Z/rn86CkWOYrc6AYu6tYvYvIgyELPDcUu
         Fe+OcAnwPaSk2LJBL/YebfGO2zTGThmKT/2Z5epDrazY16YwTAQuBQMEgvmATkMRm05q
         EKuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rt9fOxKn;
       spf=pass (google.com: domain of 3cetvyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cEtvYAwKAM0Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id k8si848413pjq.1.2021.04.08.11.29.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cetvyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id v6so2857755ybk.9
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:05 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:ea44:: with SMTP id
 o4mr9706249ybe.506.1617906544646; Thu, 08 Apr 2021 11:29:04 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:35 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 10/18] lkdtm: use function_nocfi
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rt9fOxKn;       spf=pass
 (google.com: domain of 3cetvyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cEtvYAwKAM0Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

To ensure we take the actual address of a function in kernel text,
use function_nocfi. Otherwise, with CONFIG_CFI_CLANG, the compiler
replaces the address with a pointer to the CFI jump table, which is
actually in the module when compiled with CONFIG_LKDTM=m.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/misc/lkdtm/usercopy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/lkdtm/usercopy.c b/drivers/misc/lkdtm/usercopy.c
index 109e8d4302c1..15d220ef35a5 100644
--- a/drivers/misc/lkdtm/usercopy.c
+++ b/drivers/misc/lkdtm/usercopy.c
@@ -314,7 +314,7 @@ void lkdtm_USERCOPY_KERNEL(void)
 
 	pr_info("attempting bad copy_to_user from kernel text: %px\n",
 		vm_mmap);
-	if (copy_to_user((void __user *)user_addr, vm_mmap,
+	if (copy_to_user((void __user *)user_addr, function_nocfi(vm_mmap),
 			 unconst + PAGE_SIZE)) {
 		pr_warn("copy_to_user failed, but lacked Oops\n");
 		goto free_user;
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-11-samitolvanen%40google.com.
