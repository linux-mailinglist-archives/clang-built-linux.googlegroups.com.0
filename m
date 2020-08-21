Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWOMQD5AKGQEH7AYCNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9360E24E12F
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:02 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id f23sf1357354ots.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039641; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJmR7kW45ZW2hLuKzGGczgRwZ5ZKnOEMGZ2StlTJ18BnqT3hqlvKBPztw0+ILXD4Yq
         5FVgvVA6snYwkjA2Ag9GCVMgNH1fBiVLcKHWxErlBvc2vGWmqA1REql3T4+lfDJFpaik
         KebbENjP4PyLfpgSXd7dXwWUtlCJSneodptKnvF2Ld0EaFgXg+SqxcdvOa6TYChAwpxI
         f5VaO4UQN6AnWZGyrPH4j4lX2P5tUguk4PQ7pFQyV0UuB3+XIygWROAj1B1vvayaEeNa
         FW/b3RT27Odr9czPRBMh9BUcezcxMHCVps1p+ZS1b7l7Oj8tSlZWrZ5yMfhYlQk/HSR+
         OVPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xP3qvHLzBGSwIu7Rdfx7VFCN4XVEEi/RGt5MDkuOAfE=;
        b=xWOlXTrzIA9cOE4MM0Ba6ixFh3gDi2qRO7aTuqkxdMBCki4tn1PPGeS9lrFk61YdXg
         C+Yg1I+JdGp2a7WGyUdSOJpsvVkTteOD/Fi3LnUsvVLyhM/jLrXv3E6PjNewZ0D8ugua
         KqEiNbk2Fy/LBGOvn3J95i1SyWKByn+i265epQ8weE5xMHZtlS2QSmMDKBEecqhEJN4v
         Rot0gj4JtdmPxDUK2DzOjQbY2wN3UAtJFLj51uUsjn2n9jq7MHrUuG96WVxsPpzvMgqw
         gBNRIEY93lQgAn2VSHmmFRnjU84xfnvMwzrwBJ9yeJNW34NJXF9U1x9wtjPtrXcNEMmq
         lgmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MOtH6g06;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xP3qvHLzBGSwIu7Rdfx7VFCN4XVEEi/RGt5MDkuOAfE=;
        b=Rk3v/v07DXh6s2dWUc2DSLGOLdUq7uPBK2kKd2pH58b21CZKU/1bIT+aPZh7JVcXL4
         5qWSpuCqWdjufMZqjICDUd9xDczicR9sj/hftlebju6xJnRzXJuTZhxnk73aSz0oohWA
         j5+mZgApi0LpNn1/16CqeHyHu5VF/ctK2qclhac2jObaW/ufi0dPqf9lHRUWOBLucdtb
         DvI62o/Lt9jCSuXV16yEQxqnH29e2pbduqzhtKY0YRIo2P2LkMrRpSzofQgkonmryYGT
         qdLM4767knqYHaZ3WqAtNlqyw+E0Redg9ScJpnhqFA58KbxOphyZPynwc4CrakMTepB/
         k6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xP3qvHLzBGSwIu7Rdfx7VFCN4XVEEi/RGt5MDkuOAfE=;
        b=B74ilEwqNU3vtwoOIE6Ijl5/BBHG5hVy8YC24kcMdBslr1fzitCUxtLOJqDlxCgFTi
         Wwb9Mh692x/WLD7kmCvFpNvCSWuj3o5kwNip2BHSj74rcgiKqRxUMMXAn+duiKCuACk9
         6XtYpAhgtUbWDXRndi+PL3f9Cci7Nn82LzzjMAmpQY7pW+ue9Hh0djtvrN3XqA29f5da
         XkbhT/Qm3qEHiYrMEW91nvGS3+21l5UZPRqiWEFcQQdYddVjHnd6gouWwYiMIt9OL27S
         qssbtXmksmSJK4LUHNxUep/QbhLYGuwW4/BafA5ItCI7hCrlzY7atD6srqg7EwWwWUfM
         qHlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53036ffl3tYYn0kT6ydo3iVMt9zs+z3wY7I3sb139xnPr8hwLqoR
	Ldf/BxnfkGn4bpJBZIdLMAQ=
X-Google-Smtp-Source: ABdhPJy2ln6EUFy+P4SuTyGTietJXsZ/OJoGvGFz4/4cEl6WzwOvKBK22kzGAUlEDuxgf3QwhNbqPA==
X-Received: by 2002:a05:6830:119a:: with SMTP id u26mr3114055otq.67.1598039641559;
        Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cc:: with SMTP id z12ls740577otq.4.gmail; Fri, 21
 Aug 2020 12:54:01 -0700 (PDT)
X-Received: by 2002:a9d:2c43:: with SMTP id f61mr3321982otb.154.1598039641238;
        Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039641; cv=none;
        d=google.com; s=arc-20160816;
        b=LU1V94mIEPZ4YxPj9Y1FDxRDd/+yVbglNZnlDXRS7Xx6MdRbFxAaH8H8x9wgp5uKdq
         8Owq2V83FvwBuJBWZT5UjHsqbmK0KZmVxDFbma/cZJf/nyUhYC4rgk1/7jL1fNLmXQYm
         IWV1nB8NvwDEGDpcEPS+FQOIzRlCfaTP6XcwopHNS2gVFEBvuNzoVYGHmfpS42Ylw2TM
         Y00vol+w2dPLN0igmCjZpfv/iTRTOAuVj76wKNOkUJ5FA8Sz3aPpPA8zkHuFfZkTRd4h
         RVZ+a4AS0GWrTsklSo+6S/8zmEtCMKXRneb6lw6qdEIr5IPCw1b0gOHKX8A6BahiTMvs
         H7vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cKGWDIrBEs2dh6Vx6JHQWt/T3ziuaJ6+D++qA+lLK7w=;
        b=uPl7PDuS9CFUEmeEErmvzN8WOA/8fLtfwGorkGcyZZC+ofmjoWDaN7WUYK3xZQ024l
         S0AEzSY4Nb/iopdY8RCx3ezlvreKU+cLWcofPU2XJhAwh7TGzwJmx/cwvPdNY31tQiQN
         9gahA/QCLwwBBMkWEIaQuDsoDdN12maFkB53efKu5H8XYUV1nxaEMnXc3JHkOSKbeTgj
         8lVFY7rVyv2Q/n4N2bLPXEbi4Rj8gd/eZ0nPTCEHf4wuAuWC5W6/+CO9fSsjqSj4BCvf
         bPWQDP85IS1DmN+tJYK5F3AabVAVv7fLVpKQKLMgErrM+K6iWrPaE35QIU5QQlwsnzFY
         XpvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MOtH6g06;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d11si212462oti.2.2020.08.21.12.54.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y206so1566071pfb.10
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
X-Received: by 2002:aa7:968b:: with SMTP id f11mr3724767pfk.63.1598039640596;
        Fri, 21 Aug 2020 12:54:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k29sm3378601pfp.142.2020.08.21.12.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:53:59 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 19/29] arm/build: Warn on orphan section placement
Date: Fri, 21 Aug 2020 12:43:00 -0700
Message-Id: <20200821194310.3089815-20-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MOtH6g06;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker
script.

Specifically, this would have made a recently fixed bug very obvious:

ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'

With all sections handled, enable orphan section warning.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4e877354515f..0aa133c4ddec 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,10 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
 KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
 endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-20-keescook%40chromium.org.
