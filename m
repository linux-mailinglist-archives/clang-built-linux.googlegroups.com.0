Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOMTVHWAKGQEIV45QCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 476DBBCDE9
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:52:10 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id f9sf4032230ioh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:52:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343929; cv=pass;
        d=google.com; s=arc-20160816;
        b=pnRaTn4mSCVr7qUz8YhXduHgJjFrFJc0ZkQod2+SE/zlhon6uS3rA5QwLlKT+abJ0K
         jbOEp+vkgZEBCOonUolPDiuzwOAOQsVOLBcqZI6ZJImxQs9etkA1xCE+i2WpJGv/qdLm
         U1wkEetxesqzpJQIteXSaz/QOZkz6bXDkpi5SYPr7O1mR7uIcBu+2pLfJxhTvCm41pCo
         31uL1yEBTcIZ1ywUpw7VJuLTsPkN0A4+SbbzOyx9GcxHLVOcE+jlYSHw6SpoildtdTbl
         CjXvF8B8Z+FhJa3l6WX8KW1t464Pfn9XoluwNrMSPqa+hta7aufeeAKd7G+aiPUktkjl
         LwFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9vhheyKpdEBml9bTv8skDEi1h45iEK3Wyo9tkNArKSQ=;
        b=I4UVlb4IfCjFKckLq2u1rXKj2jeXw4J7QtKJRyjAXQkwMDJQNFFidJ8f5WilW5s1YR
         175c4KMzlxtPbd5rr6VUXp0QRyJS3urZ2Ql5GXzb8rVQpRpg2o4E3IPfaT+MKRM385kr
         baP3jV3isz4Zq2YVNOiaHwBOie2ZskbdPM3TFFl7CYJrhLB9HxLz+MUXVOUDgrdklSPe
         JeczFPTifOHFSD5SCy8Cuu77JF4wPCBPjXG9LjMgO4SB72ra6i52sgQf67D5b5lWoOWJ
         ldZmkrI5hCY6TeMU4hV3dF7GN6tuqIk7qM3b3M8dcKKcvuER+yP7B9EimJteWm3bmJZq
         mtlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QPidKPPD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9vhheyKpdEBml9bTv8skDEi1h45iEK3Wyo9tkNArKSQ=;
        b=MGoMp1a5roTDv4aWfzlCW6v94NCzYcvYCDC9OP3MxulGPw+KTfKovdq83IBLX7ksbI
         VDIy3YlewrVOh780TBAQ9E/aCGeOeZxhnGi/uC8Q9w4MsHPdUK+Ma9116wvl0+DK2Wfn
         Mrmyt2AIWqLJuVQ5pIts4IHtIiY4azp1GLxvFHousAl3xA/WEek0O8aqR/FnLXkCgws8
         XNki5KaBMvo7NloDwGJ2rYvsY9vn080QfJKuyNzFjS9GcKNzvmewgu3FcxbVnTExrBkr
         3G0ooi4h1+6FBTSUaoq6gsH2QU4lNOzZusBcvYIEhnfbiSCi0jgp7WlKTxUoutJDIBKW
         sJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9vhheyKpdEBml9bTv8skDEi1h45iEK3Wyo9tkNArKSQ=;
        b=R1bprD0a05/+YfoPhF1pKrxv01igF6IP3nhTgaJPLnLsbWfxcn82bxx44NBt9qAVr3
         YbX2Wo7maZMOjBgiQp0ecGpDXJMG2CgvGKReziSEtLuUNMciP6vQYffsQIqPqBPPV/D7
         KAE8YrlUOQw5c12wysSoXg2m0rUwBCEqyI3hdW+Rxd3jnXK1sfk96g8XbM1EfoNyyzH9
         DtvfKFkUyjN15Od5+SU1h0cTktIs2ajv4Ex+YV4m+XTxOgkOhgB8SspNZ4utxT0BheFm
         mwFXOYjc3A2nydCkwrH+oeStof/M+eOj4O2Vt8hmWxJDr3PdPERjto8N0BB3RTA8pM5X
         vZfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiEvIkSEUk/Tvvsaoyk0fePPduRzT/rCUPsYHflYbVWBi5xP5C
	RPPqW50FrCAc8geiiuqqMWg=
X-Google-Smtp-Source: APXvYqwv8oNcYVlfDNiDzG7H50FTDvg1ocP5Epo7fzwbpUEoAtPxP1B7fD19DezDh7XCQwueO5lD4A==
X-Received: by 2002:a6b:fa14:: with SMTP id p20mr4094054ioh.15.1569343929229;
        Tue, 24 Sep 2019 09:52:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:140f:: with SMTP id 15ls715949iou.6.gmail; Tue, 24 Sep
 2019 09:52:08 -0700 (PDT)
X-Received: by 2002:a05:6602:10a:: with SMTP id s10mr4549821iot.171.1569343928902;
        Tue, 24 Sep 2019 09:52:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343928; cv=none;
        d=google.com; s=arc-20160816;
        b=Nmy7bqVcD+RlYhiTe4Jd1als42B8TelZZEtL6FAPVWwftbQlclur0OLKuk08gbgaKA
         FYHLgnGz6VLuPhwXRmXob2lbyWsgZNkWT/bqYNAZgzr3gKEfg13xBNyn7Snb/qk64gyx
         YZZhkmiff1n6H4bT8j8WgeHkfwm5vy9Ofn8BAY400s5B9D5zIYQh0n8M1hBv94dAE7CJ
         NMpVm44WDtcRdD89DlGvM1oz0h5zS3cLc4PH/4U5IH0rvSZRsBlBcwxbCjKOzsdfEE0k
         T4Cc0VP1m5Qg8NLJNQ6JZvz9TNa/PPjXc4l0ozlBjy08CF3uNsV58KYeRfgVLV+tiqL8
         anFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nu6WUCNHoxvwUe4wk3IhUh6y+aEXlY1t3n05O8Yub9U=;
        b=S67A2w7NV09DRkevWbb6LFkpODxGjsu7e+fIck+TvpeulEYCm+DSFAS4f5mQHxN6g3
         8KXcQxCkFOC9nZ3AV1W87tR/0HaAA6bRTpytPVv+Jq07VSVD8q96oajg6bsbNWlRnoAe
         +uJNsem7Mqd+B06jTgxJOVERvEVOrwn1VuBn4p5G0rC0opeFVqCiKgI8Z2Z0ozvtfyAw
         tzPPe0mC23CByLS7hQhmWrRu5viCrATsiKi2VvLDJS/XROxvBvnNfn0+zm1EoWJiwz9s
         HfYMEJEFRhaAZUVBGTEJGzY1k49quNUIQ8p3Uq3qPwQ4VMYVMrN0r3Hfn/ojK5KCd/oF
         yr0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QPidKPPD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s5si118646iol.1.2019.09.24.09.52.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:52:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44E8C217D9;
	Tue, 24 Sep 2019 16:52:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Will Deacon <will@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 17/19] arm64: fix unreachable code issue with cmpxchg
Date: Tue, 24 Sep 2019 12:51:28 -0400
Message-Id: <20190924165130.28625-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924165130.28625-1-sashal@kernel.org>
References: <20190924165130.28625-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QPidKPPD;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 920fdab7b3ce98c14c840261e364f490f3679a62 ]

On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
when CONFIG_OPTIMIZE_INLINING is set.
Clang then fails a compile-time assertion, because it cannot tell at
compile time what the size of the argument is:

mm/memcontrol.o: In function `__cmpxchg_mb':
memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'

Mark all of the cmpxchg() style functions as __always_inline to
ensure that the compiler can see the result.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/648
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/cmpxchg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index 0f2e1ab5e1666..9b2e2e2e728ae 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -73,7 +73,7 @@ __XCHG_CASE( ,  ,  mb_8, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -115,7 +115,7 @@ __XCHG_GEN(_mb)
 #define xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -248,7 +248,7 @@ __CMPWAIT_CASE( ,  , 8);
 #undef __CMPWAIT_CASE
 
 #define __CMPWAIT_GEN(sfx)						\
-static inline void __cmpwait##sfx(volatile void *ptr,			\
+static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
 				  unsigned long val,			\
 				  int size)				\
 {									\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924165130.28625-17-sashal%40kernel.org.
