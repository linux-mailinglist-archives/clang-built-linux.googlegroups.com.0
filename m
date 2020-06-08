Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHEK7P3AKGQE4ZVET7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 728221F2282
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:09:19 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id d5sf13776307qvo.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:09:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591657757; cv=pass;
        d=google.com; s=arc-20160816;
        b=nC4ZM7yBnqTenT+ha9fkgwGahzNa9uRSmYkpJ1Szjj32Rjc4iEeoV3F9wURfyYxEzG
         R7o2VuOY2GiJgP1BpsYdFjO+4H0ggplD28XRXutl5Okk11rZ7ZSW4qzdwhuOwsZ+uW+Z
         oweR4hNYajnT8nWtP7E/g1RkihTkiLb4SMY9WhYS12j5Pvfgi4zgJZqlCrQ3hjoXkIsL
         6yH+oDcrwgyNMBqt7q1KJq6e0PQeklZjOYgETnj08vzkog27swSI5werOvh1JA5bkPAG
         JPtfzv8Cnjx0LRaCvlt69IJo6Uo3dmwqPiSy0ASHsMVT1E7QemhMzorbTAilWZKm3xUC
         QBmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hZzRlimwD0CRG302r8gpX9JMA/J6EMZGptS38G5iN/I=;
        b=bygTmVM2OO8AFKUQxwBhUjzVO1AzdNWcxL7a+fRE+8lEKUbTamMLIIg24FNHYLvswV
         mi/JI34BD3UcwhgmzzfStY1CMNwZQLwnrZAnTCaAY+WO8M85hYEn7iziV0RQkriAEgbf
         SBB8C/YILcjq4SNbjRTwhaef+Baff+vQ82CaEA8Kb6fyqXe8eHKqLubLobVDDKw5PJdR
         QASbYsxTmPB99TungejORa0JECEkqJK1ispJfbUNZtY3DVMZRnHDzbWuflnzjxrKPWzl
         02mWXBZK8EJHFP419aJIuo0XhDAyBQFy0z8h480l7EmJyfnMcfXF2YcsdLAUT7Wx51LB
         6+tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iFs9iKl+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hZzRlimwD0CRG302r8gpX9JMA/J6EMZGptS38G5iN/I=;
        b=mwdH336FU29qwEReIcgzWVn7SR7m46xDiJFHHaXxHUIGcGI1Wyn3ZJBLviEN25oLUj
         wJ6nMTLMPWKZU8BsvBXky4zgT19+bWMp51YUYai2P1hbdd3mmu6hik+OJ2zaHvo6Sx8H
         i8bIHZL5ihfKkWDTMAQ8anu0T/WN8LEoFPJEW/72ad2AzvnbxCOFKmw6WOr0yCqvy4Ng
         MiIUAZq+Yu75qm+fY3rY5oRjfXvTUyOQbGZHSLP8Lm9PlXo2tk7/hw1CMLlimYVrhLKa
         yh1jCxwO3H7kiRnDWeXSlcnbbFtzR/Rw2Mi8sByIUVFGMddOxU1PfHHupxDBjFAelNrX
         BAjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hZzRlimwD0CRG302r8gpX9JMA/J6EMZGptS38G5iN/I=;
        b=KRAjuRUuHsVlSc5hy16T0nq6twTjSCW3f1+QdmZq0q4HTHS5BTWhJkQxvadu8neTPN
         snG7b8Ecn+Cz+BgM+L+axEafyh36VAm9/oSEXfNlPJj68jvtFoFOjF96FivoLk4ZteiJ
         aaa9exsbMgu01EheoMvUAjxcefTn7/LWpe1oXKMgE7GFa+KfXBoSq3gpT7pRgiPEStkQ
         iZGESm48XwwLQnm+tkPjdzu7GvLUZHg3FlSN21qMgmccTmmv0HZVXAXpy1FIdZLcBJux
         gqqbVBHCuzMIKW+5anL0eXQfU/MxderyIS3XGbTSlTdFc2OZfrYmHFzmlsu3cqj5CJFh
         TUng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dHNNW8AExSlTmnBugXc62fSV6tlQy98AM66ppcsMfXAe9qOYK
	BHUMwJeAYAIqzWFXiu9l5Fo=
X-Google-Smtp-Source: ABdhPJxyRgCF0y2MG7AV2zl59QUM/ZUIp/0RBXbjDSf/Ap67JKVekV0g2aF+aHPoM3o4dnN8sSHikQ==
X-Received: by 2002:a05:620a:1114:: with SMTP id o20mr11615393qkk.120.1591657756897;
        Mon, 08 Jun 2020 16:09:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e56:: with SMTP id e22ls7035100qtw.3.gmail; Mon, 08 Jun
 2020 16:09:16 -0700 (PDT)
X-Received: by 2002:ac8:4e2f:: with SMTP id d15mr26018826qtw.196.1591657756557;
        Mon, 08 Jun 2020 16:09:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591657756; cv=none;
        d=google.com; s=arc-20160816;
        b=muV5ia1DTdZyuSkhpLbjSla8TEeUG/WH733UT3/NOEc95ebTtbNY1Fel57xIOAcfHt
         5yeFkLWGTiqr4SQseRY21MqKZ+Ip1Xwyo0wZA7Ibu/NIanZeZD5k1/iGFfBvfyUrNNuW
         qbhEOS6MMpXO5KinLKxH/axXX1tU71sGg2w9WsYCG/qTBmenwR3pdFmVIejxZx3ePIi7
         VdbWS61UKqMRIh1ROBwtiE9CzGnKzlP7GM+BWCTqCjzyRf2haPA8zQw4KuuR65Vm3TEv
         u3kHdbwAI6cJrluCB3dhWQJt8SfXPp3z6yB5BHvfBtLyClcnMO29RIbktasgig28Spup
         OaHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vlulF8haCBRq4xRq19eQFeilth61ttv7PowdOH//y4s=;
        b=zZDZBh6FQeJzm53GdBs/GVPF4w8OiXReNusF81s1UXwWu3aPRseCdDEcx4XWFjo4+J
         q4fTKWZ1WU+l4ByYNU8c86CLyWIXBcZPmUUxX8J6VinuKCWmQtZNGzMio9UhgF8x4Fgu
         nhtKEQ1Oy/jXkOcrs6/hFctCjkGG8aKuz//bSjMlrurnihKgkSvvQLSr/gftsMw/xicT
         sMGJoyIG7XOyVD+JXmGVRUV1VAQDPDG2AXZVmjYPyKqBxwrkr2AX5O73M16RI/zhGLSN
         bpys9HAcQ8P0cBNXPE2dgCM9xYpmfgm/WZT6CM7X/oAmn6pXdhtVjV+a/mF21QS6P8iO
         IvUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iFs9iKl+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si428348qtg.0.2020.06.08.16.09.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:09:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B1E2120890;
	Mon,  8 Jun 2020 23:09:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 141/274] lib/mpi: Fix 64-bit MIPS build with Clang
Date: Mon,  8 Jun 2020 19:03:54 -0400
Message-Id: <20200608230607.3361041-141-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iFs9iKl+;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 18f1ca46858eac22437819937ae44aa9a8f9f2fa ]

When building 64r6_defconfig with CONFIG_MIPS32_O32 disabled and
CONFIG_CRYPTO_RSA enabled:

lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:664:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w0))
                         ~~~~~~~~~~^~~
lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:668:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w1))
                         ~~~~~~~~~~^~~
2 errors generated.

This special case for umul_ppmm for MIPS64r6 was added in
commit bbc25bee37d2b ("lib/mpi: Fix umul_ppmm() for MIPS64r6"), due to
GCC being inefficient and emitting a __multi3 intrinsic.

There is no such issue with clang; with this patch applied, I can build
this configuration without any problems and there are no link errors
like mentioned in the commit above (which I can still reproduce with
GCC 9.3.0 when that commit is reverted). Only use this definition when
GCC is being used.

This really should have been caught by commit b0c091ae04f67 ("lib/mpi:
Eliminate unused umul_ppmm definitions for MIPS") when I was messing
around in this area but I was not testing 64-bit MIPS at the time.

Link: https://github.com/ClangBuiltLinux/linux/issues/885
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/mpi/longlong.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index 891e1c3549c4..afbd99987cf8 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -653,7 +653,7 @@ do {						\
 	**************  MIPS/64  **************
 	***************************************/
 #if (defined(__mips) && __mips >= 3) && W_TYPE_SIZE == 64
-#if defined(__mips_isa_rev) && __mips_isa_rev >= 6
+#if defined(__mips_isa_rev) && __mips_isa_rev >= 6 && defined(CONFIG_CC_IS_GCC)
 /*
  * GCC ends up emitting a __multi3 intrinsic call for MIPS64r6 with the plain C
  * code below, so we special case MIPS64r6 until the compiler can do better.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608230607.3361041-141-sashal%40kernel.org.
