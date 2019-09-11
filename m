Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQPW4TVQKGQE6EZA7UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EDAB0383
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 20:21:53 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id n5sf4642991lfi.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 11:21:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568226113; cv=pass;
        d=google.com; s=arc-20160816;
        b=IHdedR7x0Tfd55zFLy3erC4oG/LkFgwgwnhg+htzsMHkOKW0qTY5O2LPg5fhTdE699
         RN8fbu367mBmTK2z09668+AzotOkaXqgistStPhiYpLR/gMs8QQp23lu+kvW7PAoijkX
         h7OM8SiYmarDWSJ7YIvSMbz23riY95Pr3It7MD5rvBJWml/jU5TS4Nj9TnmFBznpOF3s
         GE87mVtqrogrmdyoTwTWMZ+5jyRvwD/pRB1ti5hpU50YYkDO8V0YIsv39KJX1fTrhd8M
         jDWplsG7s5mk9lW8kRAjuFadbA/LesOhD0OsKcNuPEG7yAV3sqU0cpy5WrOm6iQ4UJ6f
         JVeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=wTx72GikeBd/MQTcdwJkBDmyWa4utyR7jEUD6adzIbA=;
        b=hG+OA7pVCawe90QfKNgodbXjLmaQ/bXEVmA1OGFAjcRASVX2dIQ19hv1yi3oNkmi51
         XFhWv41U1dWO7l4XdRVZeWFWcURJuRkg5PU3sUuPG/U0Ld22+HpWl1A50fepSM0TuY8W
         E7F29JH1Q5iT9kpSvlX1NvyrjNladYqcOuWOi5nx8djmJfMy9Ls9HyqC+Ns+rgS7FT5u
         AwP3iCivoE8w5GOiNtJlh1Zpf3R7e3sBSAyWn4HotgAZX626996AdL2vJIfv/L+hgHOh
         UW3ZYKBatMkEqds7JUso49Br/5TyDut6YAnDrrNd/mmpSlTCXgQU8sT6hYt1/D5DYwbW
         8b8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l4IwgBxd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTx72GikeBd/MQTcdwJkBDmyWa4utyR7jEUD6adzIbA=;
        b=UvlDPOraADz4oY8eZ76cJ9Hs4Msgn6O1VoOv6dZ5KOVknCvmoXwYcIuL7pq6Lb1b4R
         cZrGeqjdwfvdJhfc3yRuC7N9BhjdQxfNst3R0j95d44k85f+TcIiHRA++FiUYU1dIh/7
         Q+0/MXojaWS0ilmET14HWdeTNebaHUsmPP5wvqi0s7rj/vSdEhVxdbAh+gISqb3+NxUI
         54XSkEyqwfptNp7xw/Ijxeyg5I9y7dtvgepLG0DiTdKLJ4+W3URwLFhKkAtmQ8GDGZOQ
         XwPdm9E7TEh+AqD/PVETldjqWc1M0dusAKMaQwEl1Uk9xCJ5+04IeJiP/pyyEA2+2/Gv
         Ezgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTx72GikeBd/MQTcdwJkBDmyWa4utyR7jEUD6adzIbA=;
        b=qgtD+3xRCFHxmUzvGORS1vwLgfRFZyUfY1ccwFW53CfB1irZR1w1P0swbA2E7Cb55C
         c7Zohav6a0T/TuCo4Yk1/Lfs/jyI69WAn6pMQ9Yxg78nsIyng5OrwGsfVdojMQ8hZkvc
         omw9eG0MZX0rHNrPsEk0RbsIm2GRcHkgxu0+1+rWU4fPpt+xCBpEL0zBPcw2Yy9WoBxw
         ig64mBFA98Xs/nXdldboTcT8jeO0pxfwXCBcZSJCSNcX+OEnGnp+buB6PmeSk0lrjOLt
         Mg5x7rlh88RnhChnTTTkIcZZIIB31VhH+s9foYuBqPyzSUcnSmu1DXeHaU8tVec4TuOj
         DEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTx72GikeBd/MQTcdwJkBDmyWa4utyR7jEUD6adzIbA=;
        b=iPuKfmug61yiwqayCYRzpT7AAvLjBY1aP8IWmn3gtGTYkm9prCsJJ/z5xLhANzsF2k
         W+QT88dT8rOhVQ8zB4knULrQfBZ35M96FaPkHd7HDnrKSg9FIsc7buc+3LCAy5BFuFh0
         KqLO22IEoq1qGc6x4fIFaUrdT2orX4EyFL0cj3CJNwuo/Q/hmjNvOqRbqew7z48arM5Z
         KMUUaFGOl0INb5XL1oSBIR92pCbNRIFVxwpXZRJ0umagnJ0I+w7svsCUWOrFMr9zPmxw
         yhfEUfoMayq/M/FM5kO03UqVIN3wTDK3HBNlXx/s2l6XUi4Unypej5uSmmU3YsRqrGjG
         LjMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+xCjnN5ucfgtnrIfyzYGEpjpyWdSC8DyxLG6geSABcZD7uXlt
	SJ+WE1oXUcgVwsigpTbXeJE=
X-Google-Smtp-Source: APXvYqxIxGg460/9BKAQBHVjLgm0HUkPZI/KiW1KU2W+sL4Az9Z78r8C6feDG2JzUJ28LBPvNJzedw==
X-Received: by 2002:a2e:6e18:: with SMTP id j24mr16664569ljc.158.1568226113204;
        Wed, 11 Sep 2019 11:21:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8586:: with SMTP id b6ls2671185lji.12.gmail; Wed, 11 Sep
 2019 11:21:52 -0700 (PDT)
X-Received: by 2002:a2e:81d7:: with SMTP id s23mr3041811ljg.175.1568226112736;
        Wed, 11 Sep 2019 11:21:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568226112; cv=none;
        d=google.com; s=arc-20160816;
        b=NeX8cv2U2QB/D6unFblAaOpr6mXmQfe5Z1p3b8vwmmuvUvP4yCap5+wxs6EDBg5kf6
         d+NvaxWrGSht9oahpLISpdL8EJIHpdMz2y9lMXweRJX38gckPbhoi1vQA4AbaM5iRvyC
         E6syv/laZIrByMbWQaD+LtQ5MYndipw2Y47ItYZbQsRDzVecuQ+2EAGz+N0v9EZFoPdX
         zfr+jt+zWgzzP0VLVV4OhV1Uap3U0Wl72sikKdpqvmZt15Fg3fHw/QVGDDJ0T33eHb3V
         A00CQvepiwS2EsOWxjaoN0IJCzj7LX010sghae3WAhwrBegqmWQwUfLXSUowtKXIRg5O
         xc9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dnHA0tTLl+z1GnDOySHFBaJDRWZSuAxJ6rG0Ra7iSAY=;
        b=vPATMyVeO16br1rMEa5P2GheGe7HyjaeZrAHZl9ryAlFf3f9P9Y38CAjX46gV3kpPW
         xnDE+DNQc0iF5W96EtgabGJK+klsWcI2u3wigu7/JC/2AtTSslgwUfEp7iKS1VMrLmv0
         TMA14EB6H3V8sxUcRxdu4mc/ekHeSp7f5Wgx/60F0IratLtyaomghlWyz/a5jsML3xso
         UC0Q53SevfOxjsgcarc4QQILxSNMMjLi/wUanUd1I9mDFZEsslHa6TlSTlkU07l9awzb
         /L5xOkEErz5YNUKR+0DqVaxZYZavVe7oNlUSIkU/svjEqJjV1vJC41dEAvlmvAOxQhi7
         k9QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l4IwgBxd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d3si1193103lfq.1.2019.09.11.11.21.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 11:21:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q17so20968545wrx.10
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 11:21:52 -0700 (PDT)
X-Received: by 2002:adf:804d:: with SMTP id 71mr3414246wrk.3.1568226112313;
        Wed, 11 Sep 2019 11:21:52 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q9sm2356753wmq.15.2019.09.11.11.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2019 11:21:51 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v3 3/3] powerpc/prom_init: Use -ffreestanding to avoid a reference to bcmp
Date: Wed, 11 Sep 2019 11:20:52 -0700
Message-Id: <20190911182049.77853-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911182049.77853-1-natechancellor@gmail.com>
References: <20190911182049.77853-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l4IwgBxd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

r370454 gives LLVM the ability to convert certain loops into a reference
to bcmp as an optimization; this breaks prom_init_check.sh:

  CALL    arch/powerpc/kernel/prom_init_check.sh
Error: External symbol 'bcmp' referenced from prom_init.c
make[2]: *** [arch/powerpc/kernel/Makefile:196: prom_init_check] Error 1

bcmp is defined in lib/string.c as a wrapper for memcmp so this could be
added to the whitelist. However, commit 450e7dd4001f ("powerpc/prom_init:
don't use string functions from lib/") copied memcmp as prom_memcmp to
avoid KASAN instrumentation so having bcmp be resolved to regular memcmp
would break that assumption. Furthermore, because the compiler is the
one that inserted bcmp, we cannot provide something like prom_bcmp.

To prevent LLVM from being clever with optimizations like this, use
-ffreestanding to tell LLVM we are not hosted so it is not free to make
transformations like this.

Link: https://github.com/ClangBuiltLinux/linux/issues/647
Link: https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e002
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

New patch in the series so no previous version.

 arch/powerpc/kernel/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index 19f19c8c874b..aa78b3f6271e 100644
--- a/arch/powerpc/kernel/Makefile
+++ b/arch/powerpc/kernel/Makefile
@@ -21,7 +21,7 @@ CFLAGS_prom_init.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 CFLAGS_btext.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 CFLAGS_prom.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 
-CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector)
+CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector) -ffreestanding
 
 ifdef CONFIG_FUNCTION_TRACER
 # Do not trace early boot code
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190911182049.77853-4-natechancellor%40gmail.com.
