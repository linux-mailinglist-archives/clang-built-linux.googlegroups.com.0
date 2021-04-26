Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGWITSCAMGQE5ZBUKCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8FD36BABE
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 22:35:39 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id 3-20020a6717030000b029016d08542c7dsf11379350vsx.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 13:35:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619469338; cv=pass;
        d=google.com; s=arc-20160816;
        b=fSwIxKFTVNGUsdsYnZvHbpa+0Azi7CYDgiqNpqdn5siF+XlCGLv8ibgHNaavkpo2/g
         nIpVffkLbuOXb29AWRWg+uXn+nhS+rA19zhs4+wYeUX6IjQQtQuZDz5yn6PJeBAczZOc
         GiaVVv9rlobCrrOQfzm845zsgOf1F0I9avcE+zeGkAXBrEU2gaALZFTU1Xb6YGrkwuzE
         VMQpordy5NB9lGwXweeuk8cj0F7XiwpTz8xBUA1tvhRZMDmi9qpoAH8rikJLklsWB+Tw
         Wc7EdSu5S9sosP3BPs5azoEYooqT5B3h44YNI27eett2XGN4PCYY8pFWkl4Qb3y4/zmb
         h2EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=EzQP8ABxtZeD3w1aN0y3DtqRyyV2s1pnKcSlu4MoLGc=;
        b=ZCCty6KTGsXdNYO5c8q9dHcZ+hfwGU2vuhllU0gtB5dY4wDtUTHsc90R1APh5KdY3K
         22mEUHYki4R+sd0jdXLFdnfu9So1JmGWXE7AJXTslu+IA4k5DlIQuaw89r0dIJPj2noM
         /ifuL9u3vFvlENZoe3X/lnepVJCwa+HzyKIUy92NO09Copw1zHDYVEoVV+n2k1sfUMAd
         AFU1HtyCGHLHIQ5yJEZw7DFUXOMWbz3W8bJSN4YWPTJRPt+KCUDujocSx3Rd6L4weW9U
         UjYTiLLkrAIL5fMgIeUEvUOoaeMFc252203OpRjtWhiPiGSKt6Vj033QRQwT6WKLBohc
         AU9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JZKpcTWI;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EzQP8ABxtZeD3w1aN0y3DtqRyyV2s1pnKcSlu4MoLGc=;
        b=iJmBMD8aydkOWZknH6dOHQECYPDONLEjFvN2IFBtC/L5Ygsx74pwt3OcAbeuh8jCYs
         jK2PrE7FMgi7YOXytBXKvmIponEV3RhNF6Euwa/vmUAxD23WpHD2YtS8v2Eb9Pm7Pz6n
         MS19hQSSU9hncQyHWOfEkX3B/v8AaIhDXWXCHdUE8DuaOyA4qccFCoT1/xs9jecKUjoT
         eMcbDJ15Nuk/H8pIW74U6lfkKDvVsBvfQolvqhN4GSvL1r771gzmjDogB9GoXtDIledY
         mzHRj4BRhljuiDMkJpzT3VwYsYBXgxLu+Y56sjYFuAtshQxt5VLjBiYlZA/T5JXBY+Vv
         wipA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EzQP8ABxtZeD3w1aN0y3DtqRyyV2s1pnKcSlu4MoLGc=;
        b=E9jyiRZ42cCjScbP1saNxY0lO3HDLN++4tGb1y4IajhKU/1NkVZduY0nifvvicJiSo
         U6CTc2vjWRWKREAee0n1JdkTVSDJfVAq6tece9Es1XqJTORbgtS97Lg28CjeptoE1jjh
         PPnmlN+WhoZ7oIU9FtArRcekDS/VzVpEE5dDUGCgLk5kkNUc/renjvmoygTXmbygm0PV
         MkfpzORdkAcV0cgTtHkL4ww18deGol4a8Vc+/LXDX1LZ0lFZzuZvBn2HjhtP410YViUp
         yv+E0ZR50aoWaupX5E5VUXBloE6EW5oX39+VZMCrwevyvVGD63leCtzJG+NLo29iW9oJ
         X3vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+LmxRYSjoxZSK3yDHeVe+5I9EbdH/n8m2YYGZi1O8+DHBeXRy
	/fE7qWnoRqIMVHWDb0GT1CU=
X-Google-Smtp-Source: ABdhPJymX+iG70jMKr390XRwTMxLbWW/bHK/XwXRotXga/EzuzeRwIk8QEDUXlDcXtxxd4N+4nnScA==
X-Received: by 2002:a67:bd01:: with SMTP id y1mr14621289vsq.50.1619469338273;
        Mon, 26 Apr 2021 13:35:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:d1:: with SMTP id u17ls2904251vsp.3.gmail; Mon, 26
 Apr 2021 13:35:37 -0700 (PDT)
X-Received: by 2002:a67:1ac4:: with SMTP id a187mr15232113vsa.15.1619469337690;
        Mon, 26 Apr 2021 13:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619469337; cv=none;
        d=google.com; s=arc-20160816;
        b=s9NBvMxhVKM1Ri9sGKhi31CtIB9TsUQWNbr6c0iPPjnyH7ra5LI73XbGR+FhSdfIoE
         nRLp+7jIVX5abPIRRCKjfKvJhMmWArGrM3r6IY4nET/glRKM9mLRbfoilQNux9CTpHNY
         zEC/aAc5V8dt7lqdahjn4lj6UL3v4V6xLTwwT0TI1b9kFe1VOWwk32HD7C/++InPh8Bi
         qSpTGDp/ovsTsHRTG98le69YjEAIUz2a7Bp1u5I8jk50r7aZI0VPpEzGaaaalpjvVY9j
         YahS2dLGlfnAXcs8m7SLF96ltAE/7CC/tgKqdHLRq6fQeDlJb+3KeArMQoFFy96TYfkV
         suSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=SMaKaN6KDo3+h2alQ6vBBbjFmmDNZkOaFQbM2OVHh4Q=;
        b=pn4bUW1X34tBh/tmGqVfN7UfQ4M0+W0mC6QE8xFGgZwuvfvYeM1e/LGlSMLNiqPqZm
         wzN313wrMEkVQ0dzz2SEGqrgV/VjLWahruahK5SeRbZ8Siqp+eNS1aqq4m7nnDBZocdq
         eccnM7AUtJal1a7BRUFYu1k15Boks7TKfDMSEE2Xf9h4P3tit1qOiG8hOqWnq3jok9cB
         Eg/9p24AOUBv+L+E4YWIicmyjxH4EF50kwvEnawvAcvcoY9fb4q2B7NwYr4WOgR7DDjy
         PNT5n6141JWn/sYy8bs9JfJMqqUfr5Us8YyxaL0tbMILfU066JmrqUyLsHLQVQtOcnqu
         dKrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JZKpcTWI;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si1725135uad.1.2021.04.26.13.35.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 13:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E89D1601FC;
	Mon, 26 Apr 2021 20:35:34 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] powerpc: Avoid clang uninitialized warning in __get_user_size_allowed
Date: Mon, 26 Apr 2021 13:35:18 -0700
Message-Id: <20210426203518.981550-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.362.g311531c9de
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JZKpcTWI;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Commit 9975f852ce1b ("powerpc/uaccess: Remove calls to __get_user_bad()
and __put_user_bad()") switch to BUILD_BUG() in the default case, which
leaves x uninitialized. This will not be an issue because the build will
be broken in that case but clang does static analysis before it realizes
the default case will be done so it warns about x being uninitialized
(trimmed for brevity):

 In file included from mm/mprotect.c:13:
 In file included from ./include/linux/hugetlb.h:28:
 In file included from ./include/linux/mempolicy.h:16:
 ./include/linux/pagemap.h:772:16: warning: variable '__gu_val' is used
 uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
                 if (unlikely(__get_user(c, uaddr) != 0))
                              ^~~~~~~~~~~~~~~~~~~~
 ./arch/powerpc/include/asm/uaccess.h:266:2: note: expanded from macro '__get_user'
         __get_user_size_allowed(__gu_val, __gu_addr, __gu_size, __gu_err);      \
         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 ./arch/powerpc/include/asm/uaccess.h:235:2: note: expanded from macro
 '__get_user_size_allowed'
        default: BUILD_BUG();                                   \
        ^~~~~~~

Commit 5cd29b1fd3e8 ("powerpc/uaccess: Use asm goto for get_user when
compiler supports it") added an initialization for x because of the same
reason. Do the same thing here so there is no warning across all
versions of clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/1359
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/powerpc/include/asm/uaccess.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/include/asm/uaccess.h b/arch/powerpc/include/asm/uaccess.h
index a4e791bcd3fe..a09e4240c5b1 100644
--- a/arch/powerpc/include/asm/uaccess.h
+++ b/arch/powerpc/include/asm/uaccess.h
@@ -232,7 +232,7 @@ do {								\
 	case 2: __get_user_asm(x, (u16 __user *)ptr, retval, "lhz"); break;	\
 	case 4: __get_user_asm(x, (u32 __user *)ptr, retval, "lwz"); break;	\
 	case 8: __get_user_asm2(x, (u64 __user *)ptr, retval);  break;	\
-	default: BUILD_BUG();					\
+	default: x = 0; BUILD_BUG();				\
 	}							\
 } while (0)
 

base-commit: ee6b25fa7c037e42cc5f3b5c024b2a779edab6dd
-- 
2.31.1.362.g311531c9de

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210426203518.981550-1-nathan%40kernel.org.
