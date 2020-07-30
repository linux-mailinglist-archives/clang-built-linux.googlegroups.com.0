Return-Path: <clang-built-linux+bncBC2ORX645YPRBI6SRP4QKGQEJNNFCYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 088002335AF
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 17:37:08 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id l53sf18773114qtl.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 08:37:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596123427; cv=pass;
        d=google.com; s=arc-20160816;
        b=dpcK0B28GLEGMbjGpUAj7Y/fuNVOkHu8dJvhD8ntgKfSTWXHOtvrZuU6vByVCXeqOK
         viemdAC9FGQoSpMge4AyEhtv5xQx03AEbruTBLv1KXxsmT5x/mGI8mXrB/bsUalxrcog
         ZHmdgZIfvYQ0hYWP2Ea1F1C+UhXLrxJruutfHdMBDZTlziVgGgYXwdvGrsu7kIj2l41A
         4dQBzwhOQTbHUJI6K5saWB8Jx2LncP8NXk1AvJwdCzvcpGZqt0ooO7iNxDBom52gxbyc
         1LzJVEu4XPbvKnjUp0VR5dERRjfQKflAb7sTzhCwxIIAb3npD+xZc5TvEOUNTCrad1en
         bgvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2sY8nkLr4RqajtxisMjxsaHFXttA8rlUPw3bYbIDVe4=;
        b=mTTGEH48MRH2iyY9P6kwpkSXIc9CcEEJvZGnfcCXtuHcqKV4JNqsfJ6sNRaG6M1cQj
         s+J5qNPFKA431s9bsqYZEYlAuqoVq1lEzEqMDNq4+6vEs1E2AvI9F+4s8JckVQQmH0v0
         LNNfOxrCPgkVfUF9goJkOWMClPoi+8JoL7vfJAS/qeofpUY+2QKuw6yNFV5gID4TRyOk
         xTicyIyExSo+jCNO0GtpmruzFUrTX+HVp9c0ocdyTRNpFJlAJAGRPACrl6U5jXx9CWuS
         +bi3PTCpcqUGSSs1J6F8jnqlUg9z62kVLoa9lyt74iq/13RudP/qvpJ8+gh5iNODnROJ
         gRtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IUuZ4yIP;
       spf=pass (google.com: domain of 3iukixwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IukiXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sY8nkLr4RqajtxisMjxsaHFXttA8rlUPw3bYbIDVe4=;
        b=pb31G28fgOzfA5G5fbK0vBY6mkUfbusPeHl9j84G0vfXTwdmuqqlFntwG83VHU8WQo
         wDI6Db746ABInclM3KdFYzF8vta9vE/clLS07N5uvLmbovBHDL/sqN4q682G/ncMxuXm
         XZGND28BDtSNNSJvxpwouv+5Z2VMxL7BcfIjmnECdvss3RuIP8abTXu2n3pWa4QgWwdR
         r+ynxpdCItxXWeaiEGLWEvcTepbINr3J34Z9+plBrS/mqvj7cez32R6PE90MNn2Kjw3q
         rdjXHVCJbO64odDt5dQSNwR7xXo+54aHp5rcstwCPUM8fO3UXTWbtAbw2ZCTbh8x5nKr
         09XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sY8nkLr4RqajtxisMjxsaHFXttA8rlUPw3bYbIDVe4=;
        b=Bhxrx7AMxMq9UYyln12T+RusOY532YeZqF8RuAT6lcCpp2iJY4nIAcNbQvQrxMel7C
         yP2udiWcsZLSmoYnkUcDVYzgg6OLrWVZM+Fz9bGsNDTl6WaOJ0PalZMs+0pafE+aR7Dr
         NfDWfTlPilAboo/D3PdHgnS0gkhAmmHsuUPZsh2kgdFsLs93yaPyB7iQyt9xaZhkwNYP
         Uxo4bUGt9puNr+pn2l7S8i6IdHwqPP+EDsFkr8n3kd+hzZaLvYlGj0M9V+2me0jsov9Y
         qeTk8dMCp37qA/DYie2bNpWXM+Cm1CnCaU/7sDaJVahim2AtBPuFlEJhC9Yv9KfxfzDT
         85ug==
X-Gm-Message-State: AOAM532+nyGOeCi5rgmW8uSRT7yuTERyXxaoqwOVU/+pfNHnCxEuYWzF
	W4P4sxcBrVMGEz46fr5HEhI=
X-Google-Smtp-Source: ABdhPJxpFtdUopO27rfmroGgCpN3kRSoxYWFatpyJ4OKJ5z841drm27bfYfOLvxAkFQ61rDM4jRfgg==
X-Received: by 2002:ac8:7c97:: with SMTP id y23mr3386233qtv.273.1596123427087;
        Thu, 30 Jul 2020 08:37:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7390:: with SMTP id t16ls115651qtp.10.gmail; Thu, 30 Jul
 2020 08:37:06 -0700 (PDT)
X-Received: by 2002:ac8:7698:: with SMTP id g24mr3475974qtr.217.1596123426711;
        Thu, 30 Jul 2020 08:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596123426; cv=none;
        d=google.com; s=arc-20160816;
        b=f8Aq4i7mJ31vr/2gGx5YAHJUUJThoL4HgVmXOVadA4ZT8lmS4pAVsai/2I9Bcqn6xb
         DOp/i282KzEYyaI4mloOZKhpeE+VJGt0nR9Y/3FTuDoQZErZkwl/OGYdiY2MmJOr7ZTU
         N+tyZUgEF7506wo3yVkpsrF/7gMQx3IhBbExszxD8VioGfEHCiSgw4LXFKkVZefkMHwY
         0Njf/YvEdPQVNaNaCJw8z2VxmeMH6Af8ESP45COXVCUEJ8uKxYLEcBpLYP8WGf9PAbBY
         hpn7tNFU2EU/47N7f0j6+zhYSENfJs7gx6iOkM03AtZHLKuidg2yNNUIjVhja5wE1ZTk
         /rNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=IxpQl+U4Cci+VujQeEVAy+X3aO84K4nWxe4WSDjauTc=;
        b=oRsyXIbA615ULPQoNBv0hpWVhFJvO+6ZRHMqd5VjNT4r1/VPm6y5mzBE4tBxTNHBBz
         B8WwJSil0Eia/AZXdP6hUajLiRhNGKPbJAucwUfMF/WR8hwaIi8cyj27vBeX3a2E+5rG
         D5w7/fZ/T07zE0GACeKJfwIs3kC4fM2mIaGjDi+6La7mjg0M48FAUPz9VLOTmC27GjvF
         YfxC43QwWLUis3IVKNTkB8nDpnX8dl/FDc3f00EAa3/tJ8U9iT9pYNtK/vyKz89bB6im
         pfsm+6c3DdVNKzZ2ogNWpARYSh7nx28E9wRJsmw6wsFnJ7xuAldYAgf0YacHizzLtz1E
         TrwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IUuZ4yIP;
       spf=pass (google.com: domain of 3iukixwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IukiXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id w35si359119qth.1.2020.07.30.08.37.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 08:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iukixwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id z5so18712806ybo.9
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 08:37:06 -0700 (PDT)
X-Received: by 2002:a25:d785:: with SMTP id o127mr5444399ybg.378.1596123426342;
 Thu, 30 Jul 2020 08:37:06 -0700 (PDT)
Date: Thu, 30 Jul 2020 08:37:01 -0700
In-Reply-To: <20200729215152.662225-1-samitolvanen@google.com>
Message-Id: <20200730153701.3892953-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200729215152.662225-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH v2] arm64/alternatives: move length validation inside the subsection
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IUuZ4yIP;       spf=pass
 (google.com: domain of 3iukixwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IukiXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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

Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
sequences") breaks LLVM's integrated assembler, because due to its
one-pass design, it cannot compute instruction sequence lengths before the
layout for the subsection has been finalized. This change fixes the build
by moving the .org directives inside the subsection, so they are processed
after the subsection layout is known.

Link: https://github.com/ClangBuiltLinux/linux/issues/1078
Fixes: f7b93d42945c ("arm64/alternatives: use subsections for replacement sequences")
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
v1 -> v2:
- Added the missing Fixes tag and dropped CC: stable@.

---
 arch/arm64/include/asm/alternative.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index 12f0eb56a1cc..619db9b4c9d5 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -77,9 +77,9 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	"663:\n\t"							\
 	newinstr "\n"							\
 	"664:\n\t"							\
-	".previous\n\t"							\
 	".org	. - (664b-663b) + (662b-661b)\n\t"			\
-	".org	. - (662b-661b) + (664b-663b)\n"			\
+	".org	. - (662b-661b) + (664b-663b)\n\t"			\
+	".previous\n"							\
 	".endif\n"
 
 #define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)	\

base-commit: 83bdc7275e6206f560d247be856bceba3e1ed8f2
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730153701.3892953-1-samitolvanen%40google.com.
