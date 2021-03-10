Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZ47UOBAMGQE52B54AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F40333FB3
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 14:55:52 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id p8sf8174173oto.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 05:55:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615384551; cv=pass;
        d=google.com; s=arc-20160816;
        b=miS/KKLIGU5NSOP1GSDcBgHdZ/vFtO5j/UEc769tXo4b50/4puOfVdDKZ165+poGoy
         iDMTuSaDYKs5h7BJCQgJZofmKQpTY4+hQowzViftE4CephRm+UkljlnqbP97eiqVUv3i
         BzlU66/spp+tz4zuWZzyKV3y/5hzAvy8tQU+4++uLbz4Mqc38xSu4jLDgsoRDqmdDNyK
         BLrzUAXoSE6O7uhkA7voazm++zMS5Dsq9ApTjdUVgjrCRC10NOCosK+kBb3qiw4GPtcU
         hqPDadU6BUZ3N7WVvgxzwie5ME0RBjZk+0EETjFZwh8In2RHbM541tSt3V1BWhNOUPS0
         mY1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=fqFBJ9VQfL5uTuoBj+Z4eoGDeeSmDLXQFdN7hHPbuY0=;
        b=norFVxJbBbOKEZPRVAg+qS3cvKWzAN7J/3bVv7rUjfNDIOPz6Onr6mgqMjPOGx7kxo
         EsvuW1xbTbMoTQqljrvfBvR632n9NRHr9eGcgAIx8uDXUHa82WbfmxQkHM03gHP1ig2d
         GG/YPTwAZrCYz575wgD8B9JWPZCaNoHfgY3SMUHnoL8Vz7fm0wT2ffdpnwijoYW+P9uN
         6UzJ/FMgQc9cSKkrFJM3rd/6QZdes0Y+LHFUJRAHcrYNlLTUWS83O8Gt2MMz7tRC4uZE
         tuAWflrNnRGswZ0EHdymTHGvOEFF1tX7jbRMBVR1FrY0o37sXSUyLL/CxY2tee+2M/86
         Jd0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qnEIu3bs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fqFBJ9VQfL5uTuoBj+Z4eoGDeeSmDLXQFdN7hHPbuY0=;
        b=b4OlLu/QnoSDAzGPeC0IG/DMKcpB5wfOz7RqIoOxqXUoz/xOc72Z+jWSQSk2ccnwVV
         rYNI+Os0g08QcrAX9+aNA/ZgrLbXlPgWkMg58mj0cZty2A4F9RolhlE0OO09UDc0FLxV
         nG0Zs+5KizPsKQw3ZSsMqafw9/XjmGVHzg2WvAAPpy1s5A+EumybYf1vsaFO0kDE7jwh
         Lqlz2O+HVQ441o7z/3u1Yp2rGzJUc6UZ828KkC7u9IKs49W898Kha9RSoPXRsjhha/Gi
         wGDaPF6JmFN61pgrpeK+88ziqYJj/WoAGVc2EEBCs6UK8uUhNrJYRYnrN5cW9yvO7WnC
         IBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fqFBJ9VQfL5uTuoBj+Z4eoGDeeSmDLXQFdN7hHPbuY0=;
        b=hYHe6a1IbH2aMX/WFLJel3mGkmiMnJu9K8xG8E/pEpSFARD0ck7UwzjW0IGMpt/wg4
         uzSXpIAR7yt3CiP0MbfYre8buMcf6BssstX9bJ9lL57mAbtHMuGCYKQNSyeFFZzhpEst
         NkCFsswf+AJ/0B3jIUaOpzjctaay+pRADF2s3SYGF9DYaaouGF61wn2Ja3drZs/y6ZeR
         R5iWC5V//utYZH0I8q9Dbb15QmA70xKttc7S12zR9vkzV8rmf1MKunolQFeMeboA/DqK
         SA537oMB2MYEalftIHKzzmAgP4lITlwKACcRhXieJsc8SpjznI3ZPYQJs8PUAFvJnmPj
         s6Qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QkL+RKQgj1BtioQUfV/lfosw4T+z76EBUjBRRyqIGXO6oXZSQ
	41yJ8Jt8Yv1hAGrzSw5O8+k=
X-Google-Smtp-Source: ABdhPJwP3SlnaFvL7WGFXTxmZdqV1Pws3Io78jscf4hF14GOAn4FLRZIhW4d8CA6TWQB9ysvWCJsDw==
X-Received: by 2002:a05:6808:1304:: with SMTP id y4mr2458882oiv.75.1615384551058;
        Wed, 10 Mar 2021 05:55:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c55:: with SMTP id z82ls300585oia.2.gmail; Wed, 10 Mar
 2021 05:55:50 -0800 (PST)
X-Received: by 2002:aca:31d7:: with SMTP id x206mr2329029oix.178.1615384550767;
        Wed, 10 Mar 2021 05:55:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615384550; cv=none;
        d=google.com; s=arc-20160816;
        b=vuHRTe4NsxvRY753ms7Z1GYrA96e1Kr9AMA78qva9o9Zvt89CeaQeTExJlaAkmqFoy
         O4M+eG+YeGkn33f704VejwfrgAY+bFlzgL8vLfi6UB5RoRQtlzjQ4SD2Y51OFHqC4mQ7
         +v2d8Xf73fyeWtwC1A2MHUNJNbL0XtBYSM4im+Qr5NPBFOLV22+2J/aGw0hkJHCXiXcH
         J4HjOsLxj35bB+2fKW+69WHSqVJ3B0F9awpl8vRuWGcNug6RL3LhaE6MoC4/uRIVjUrq
         ZdpQQE8jkcm0je3PjleySSRJYg/botZFjsFiZn2Q02yJeQz4pLwoNIoY/V0erTUZO6ot
         dbdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=9XvoYcFtafIRd7rGLHERUKU/O6dLqZIhlkxuvCI8qjM=;
        b=QCl7uxTODc1xXpN4RiaMAf/9XNeLBfrv4RUspVkXkFtGk7J9yAUJy7RVY8e/vb6QFH
         iEw8qtjK5MvuCCARPETcuD56FWkejy3Ni9uIH7r4PpCcx6HFdD04v0xEVwPpch/FKxkU
         V5lAsXQiDJvAIreyTlo2aHGYKcrOuFVXFvBM6P+qXtf44rMMrsg8XWIwj2MnR420gvtS
         R+Lj3mVTxrwWU9/jG6Dz7a3D27sxi3TqSy/whrg1N0sdcZzr5RWwvvdAuM9OHFdyAO1t
         lGKHtLABB9qyvl72t5g0Tkn/Id+SPdDX7d5YtfTTjAO6y1lmVXUWoRtPurFDx5S9tW+A
         h1Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qnEIu3bs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id i14si58284ots.4.2021.03.10.05.55.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 05:55:50 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 12ADtCAI025968;
	Wed, 10 Mar 2021 22:55:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 12ADtCAI025968
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: remove LLVM=1 test from HAS_LTO_CLANG
Date: Wed, 10 Mar 2021 22:54:22 +0900
Message-Id: <20210310135423.813041-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qnEIu3bs;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

As Documentation/kbuild/llvm.rst notes, LLVM=1 switches the default of
tools, but you can still override CC, LD, etc. individually. This LLVM=1
check is unneeded because each tool is already checked separately.

"make CC=clang LD=ld.lld NM=llvm-nm AR=llvm-ar LLVM_IAS=1 menuconfig"
should be able to enable Clang LTO.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
---

 arch/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 2e7139b39e8f..ecfd3520b676 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -632,7 +632,6 @@ config HAS_LTO_CLANG
 	def_bool y
 	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
 	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
-	depends on $(success,test $(LLVM) -eq 1)
 	depends on $(success,test $(LLVM_IAS) -eq 1)
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210310135423.813041-1-masahiroy%40kernel.org.
