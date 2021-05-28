Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHXNYSCQMGQE26G6FVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 685AD394708
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 20:29:51 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id s3-20020a0568080083b02901eee88a8f42sf2126875oic.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 11:29:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622226590; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzGFQLAdq4KyL+R3bCGYtywwr7V+tt+zs/ZuUqsdebVPdPcgmer08zlWCPM3+TAjyP
         qjPn9Wmv0K4ZC045LfsMAgamOzORu88+XKeBsPhVhh01HH3TtTz2ZKlj2YM0Bs1DQJHn
         u6w78eMQvvcrbg3yNeWmQULvKpjlzHL3oZhSQ62BtYwk6XoYlN9j66CAt2Hxbl2ck1yC
         RN7ftzR7m9RL/MhULYerAfBRMnAu7gYzKGXIAfWkJb0cWLJDPcageIZdeDMpfQXzpVvu
         JoKWcjSTHBx29qOItd56dadvozqfar9I61XUYUgIx25ojBXew/W1QWa1Y1YBOBAcQ5Fb
         Usaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=v5C9EuCt0sKLf33NqVM6K3+/NL9OV3vxe5G7Umw8wvw=;
        b=TKktvjfat046lIdGkL/cBBN4VnVRMhjfm+Li3MP/QN9qPRLiCb3bAYzFxGRvr7JoFz
         5HH1rc5STlOXSqXmNfuMyEv9hM5wSxbcu3viFdMBfy93iNwCaXz4NDziDPX9EwgMjZAd
         eo+z0njliPpXSEc9mbmwl0LUQlvu6FXXs4jHM+uQ5Pm0t4O2RL6zMgh2W7xu7jsE+xug
         /AvQY2HZ0v79QrNwjNDWnes0+hZbMx0Ncrdio1P/kUB46GvwilXQh2UTWdDfy4wCQYFi
         BpsV3w42ESYgGz93RkA32ZiGC5Sm8Z+uIBzUY0X+nJjp4hkEzFVFSEmMJfSvamAM6xsF
         mXOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hNQ+OCbF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5C9EuCt0sKLf33NqVM6K3+/NL9OV3vxe5G7Umw8wvw=;
        b=STNLFwxJYRfiDZzLYr9i2jYRfP+QITJnX0JGGiNkOljuhD7dh6O3r+dthyRu9uGM48
         eBufa0nkfCUvWp0wkcBUcKpLW3xxVsG1fmUrpTQrlobcVdnL5ekufNeF6SHgW3kle5OL
         0K4gsLGf/dMDlRKZ/SOO4wMIv1nwVKBDd+gz604L021xL3VC2APAHdhSGxS7gSjTh6b/
         ziJROTgk8mgXrc7cAfhWvfN9dYOIPbZXVwOIORdvuywzDBaKSr5DE1MDtRBPmFWGeOd6
         7Lsdr/t+kohcl7+5wbQ8Utxn3f3pJkqSlLpB/GNQWVoS3wqE0VTNL8UngyreJLGWz542
         y9AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v5C9EuCt0sKLf33NqVM6K3+/NL9OV3vxe5G7Umw8wvw=;
        b=fxG8Ss4hLh2ketMTgl2o3KZ73QTdeu8OI3mJ4GJ+QCsgey1AyXyboa/SYy9sbsUxFC
         qg/tW4rt7Zr/+641vZeJqzW5Kri8uu5SXihm7IL3mnopsaXESwqvmO0ysX+LGii8IP2y
         WsxZAFQKobqSl5L6XPrkE7jXX8SynNPxq+vBj66BpTCSE8fvupf9UU8zPAqIf/69Z5sq
         2t9nM9nF7mpoR3lYlR63qXRn/1XIoncti0vkfK4Ln5rTpRIyrY083PS4LcHWBa/i1kWh
         Odik/V2sIVhKV/pY8SkdekuroLV3kLgowfsmerDESDcW8hElaImAGqq4pAKlpQQ7Y7En
         BuaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Kcp525c5KetAuNkdGhATR7gQqfumzLABHdd1SmSai5vI7nuSV
	RG4CVAb+OzWXOdcX/X9e7Qc=
X-Google-Smtp-Source: ABdhPJw3M+enM4fYWS0TRQb5Jd287IMQIlQ+PjWi4rBjkoN83GQQyV6qAr3zc82r755Ye2PQP77l8g==
X-Received: by 2002:a05:6808:1448:: with SMTP id x8mr6848821oiv.148.1622226590150;
        Fri, 28 May 2021 11:29:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2812:: with SMTP id 18ls2279138oix.4.gmail; Fri, 28 May
 2021 11:29:49 -0700 (PDT)
X-Received: by 2002:a05:6808:1304:: with SMTP id y4mr10286914oiv.20.1622226589729;
        Fri, 28 May 2021 11:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622226589; cv=none;
        d=google.com; s=arc-20160816;
        b=ybom8z1xmtDLXOv2nXb/SxvCMwQ6xWOFzemQMSbrrfNuAlbGidYg6/4ef/VQaGSyYM
         bB3uJfMxDZ7tpPZ/tFwz7UYHzZEaVBDkfM17BRwgy+HLSV7XxtSufujAWovJM0Q73H5t
         dacX9AOQ7i7vRnM/rf+jBSl5Z/qNhhQ+E1jY4xEnbIzN1yyGThC7gTJgIPWQH6D6vHru
         gkIi/6RXHXnvfpPTlInnBcRxIA0vdtdIWVxGXry/2tK02QdPeedUmAhdig3jeJJAE7nl
         Dhl+3bIRXd2oF/cqzttRwcHJjM0znVvAwZc7vaqoH330a9a2YzFGF5a2B4ZBxycGkcBT
         bqfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UCEixsYx90N8c/JhthJCAXMPc4UC/tqNbnZHMWhUHiE=;
        b=yj3qjRsAjaYV3Co+yiE5ehX7N3xFdELFG3U+iUFZ1J0U4ffWHUSLz0fSjCdqRbTgsY
         3cHVBWQUzaay17xcMxdMjcJVS4oFfx9NY3uHxpvBhkjdtihU7KqI/siCorzU3wiSpx1I
         iSd8r44cPgGlX2mt9BxsF+Xwo8orQYkiL57oBLE4irhURR6Y8/dlltd7mcHVkpeAlsjF
         xO6S9BYpmETSrw2Ud0sIR9dNXsurHXdHgQYveP5rOJuB3spJRkpCUeEN8XTDcQ7StKKT
         GuLRce66GJ33wEt+7r6scQ9XbzJe1v7ESLfawCrH4tHyAqPeRSE5GPmy17aF1SlGGfR7
         Jc+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hNQ+OCbF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si689527oov.0.2021.05.28.11.29.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 May 2021 11:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 43175613B5;
	Fri, 28 May 2021 18:29:47 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH] powerpc/barrier: Avoid collision with clang's __lwsync macro
Date: Fri, 28 May 2021 11:27:52 -0700
Message-Id: <20210528182752.1852002-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hNQ+OCbF;       spf=pass
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

A change in clang 13 results in the __lwsync macro being defined as
__builtin_ppc_lwsync, which emits 'lwsync' or 'msync' depending on what
the target supports. This breaks the build because of -Werror in
arch/powerpc, along with thousands of warnings:

 In file included from arch/powerpc/kernel/pmc.c:12:
 In file included from include/linux/bug.h:5:
 In file included from arch/powerpc/include/asm/bug.h:109:
 In file included from include/asm-generic/bug.h:20:
 In file included from include/linux/kernel.h:12:
 In file included from include/linux/bitops.h:32:
 In file included from arch/powerpc/include/asm/bitops.h:62:
 arch/powerpc/include/asm/barrier.h:49:9: error: '__lwsync' macro redefined [-Werror,-Wmacro-redefined]
 #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
        ^
 <built-in>:308:9: note: previous definition is here
 #define __lwsync __builtin_ppc_lwsync
        ^
 1 error generated.

Undefine this macro so that the runtime patching introduced by
commit 2d1b2027626d ("powerpc: Fixup lwsync at runtime") continues to
work properly with clang and the build no longer breaks.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1386
Link: https://github.com/llvm/llvm-project/commit/62b5df7fe2b3fda1772befeda15598fbef96a614
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/powerpc/include/asm/barrier.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/powerpc/include/asm/barrier.h b/arch/powerpc/include/asm/barrier.h
index 7ae29cfb06c0..f0e687236484 100644
--- a/arch/powerpc/include/asm/barrier.h
+++ b/arch/powerpc/include/asm/barrier.h
@@ -46,6 +46,8 @@
 #    define SMPWMB      eieio
 #endif
 
+/* clang defines this macro for a builtin, which will not work with runtime patching */
+#undef __lwsync
 #define __lwsync()	__asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
 #define dma_rmb()	__lwsync()
 #define dma_wmb()	__asm__ __volatile__ (stringify_in_c(SMPWMB) : : :"memory")

base-commit: 97e5bf604b7a0d6e1b3e00fe31d5fd4b9bffeaae
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210528182752.1852002-1-nathan%40kernel.org.
