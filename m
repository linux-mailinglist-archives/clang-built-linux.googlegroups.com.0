Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX5L7GDAMGQEDEODVXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 079A93B99C6
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 01:55:13 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id y1-20020a655b410000b02902235977d00csf5194829pgr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 16:55:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625183711; cv=pass;
        d=google.com; s=arc-20160816;
        b=BtXSCgo5TF+1FpmaaaDK/U6cpXQJFmyKXUoEV2fAsWqbxntXtJMbXsGrA4I9w11Ut8
         1pw+J5CmwL3SuQwT4gSZZAMICX+lQpofCo1LjZ+r1qpFWqB0ve4vR0o8CS8JDh00o8VZ
         OXcLs5XuqExAr/GY1p2n1ITymAH2ayWWjsrwSNBmv6RIbQRvEQnai2GSrPww+UGTEtjK
         5jRAPhhJb0B54AQ4aewY4DgleEMRc9eemazZpGZaETuZIjfTENSCb3DEV6NgjiwU/h7H
         CrmFPY0iiVcGKgeClvPd45YVGuIk+24bxUk6ynmPE0A949EXIV1zP+swXKTnGB6Cz+zK
         hmUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=+kqQol4cSPLuVlAtRKc48mWd/AESjVz0pBUTfy9eShg=;
        b=0kyW5yPg4W2Kuc628L8/ekpM1Ttzixk7jc2HiS97PW4843gncNRCUgmfBA6HSvD8Ch
         /ZmZjHPtKAEzTN+QSgvBp+qDbmWbaH4YEx5KYwyGbG4tIiBBAus5ysbxqexzWAGoy1xf
         wJEWfNnOAsDh+xa5XFSbzPyUUmxv57S9PRVvKeFKo5ff5n6NG7IXZqy2/qwXRS+soXmP
         kH/Lc43mArJGaccThrVaLOUojyxZAGfwMgdP5NEYTuhjC+kfgi60USqfNf5kLmhbHzqn
         eTSOEDvva7AXAGs3qcCGTSnqwF88OJWcqIuuxMlHZqe+jSLfcy++GAyxHDk+SGB/YO+n
         jc+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cJVSLikF;
       spf=pass (google.com: domain of 33vxeyawkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=33VXeYAwKABA3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+kqQol4cSPLuVlAtRKc48mWd/AESjVz0pBUTfy9eShg=;
        b=THdqwxiqlHLFxnDheLALWd+r+IuLoPglrrFaOzY0llGY7WgXY/3kferS6ZTNaQyGsZ
         yo01rHMor6VoL39WC4EhD6OF0mGYYdCzc2y/CYovC7mLQHD5EsZenGUZ05qVJ+4V8kpj
         5BVk9ysZNogpjvPgmDOjWCG+xysMUi3dofeZA5hoYd3/pEh5+NbDJVGJDGopbp8E/dQn
         3A9V+aRCl0JRUxIIK5Vk/Y9+FwX9ADxbm51pVxlBvEGg7pAJSUWnp69HabGjub1j1frP
         R68fkpfh09BuKnlEDCxDE3rtOl3KeVROpaO3VfcYwl4LFnnLepScWcDuh5B7FWfXqaK0
         CFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+kqQol4cSPLuVlAtRKc48mWd/AESjVz0pBUTfy9eShg=;
        b=F+MBONhoMdUB8TsxC0qBNiy+obP6I7yK/UOGIbvIrxsGWAZKR/Oawtu7MD6l3eL/K+
         /BmjgiN+Ek91hzV9BcOnu4spSP6sgdwEZMkZ+Jv6YxVmMrT+mSxvN0tl0g0Mn6itD/Ll
         hAI91aGwUkUiaVBeVxZq4wb+ycMylxcQPp1VVtp+UnCQwZRtervWbumsiApgPDinvIp+
         SaE5oQnvkWOJ7O6oGCvuTYBNNfG191bzLjoUXzdorP7AEHOTjPq8StAe1JNMFdvwKGOL
         kxOyISFmEsSxgvlbdHJFAL6DeCAuCvUvEbuhGngC+0ViRK3wje/P7sQpjW/5xgPMoCmR
         go/g==
X-Gm-Message-State: AOAM532qxYH1RLxTr9+VjU/LI2/LSJF6OLF7XFwy5Gjpt7pws4Z1+v89
	tiZ4Uz6gQ8zA2rdLwzqQquw=
X-Google-Smtp-Source: ABdhPJyAtR/GbwK+1PmvJK8nKPQhfyKUrNblfBh+gE/OH0Me7zkt9B+egjEuP2Lt5hB3KQCySkT5vw==
X-Received: by 2002:a17:902:e00e:b029:ef:5f1c:18a8 with SMTP id o14-20020a170902e00eb02900ef5f1c18a8mr1901815plo.38.1625183711209;
        Thu, 01 Jul 2021 16:55:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1824:: with SMTP id y36ls3762517pfa.11.gmail; Thu,
 01 Jul 2021 16:55:10 -0700 (PDT)
X-Received: by 2002:a63:5351:: with SMTP id t17mr1756385pgl.315.1625183710623;
        Thu, 01 Jul 2021 16:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625183710; cv=none;
        d=google.com; s=arc-20160816;
        b=cWMYNBW7xLeNLYiqZhGhccyxlRpFfwHBb4T/hykBDAcHtqIy6s3kFdbTnDy2/XfmmS
         iTUqmudufup3NyDpCmJ2xx+vFgTcENo6e51qtrQ+Q+0+GITlpzQiCkJxqJz5Jd8MUMP7
         khn22C/vhVTtjQLoTOl9/sceWv/HC+qBHM7dmEZpkvqNFloY49x5Wutc88SFSnTBkBHu
         3rETMEV3WsyogpplUwEO+htCiAVUi6UBA018RMcthRyitZCtbe+wQ6NAiqrCET8mLbed
         WTmfMMHFNUb/ibVF28sr55g6QDj7akSceEdnQBnkM2HmHa6gLAvD8OymOBSgacOFXw/s
         aKag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=ow2DpQC2coKFnJ/SMWPFob1l5XzvaNidZbZlwjsfO1U=;
        b=ftevOso7CZvfrmrfFQ1ben9bnTa1Po7L+LZCeOAElyAsGaagjcLyuJvZcHMd/fWHyX
         Zpv2UjP0jiNN8lwxACprQm1FzBNJNj6Axc1Ra01mpUUiB4o+RWZHGTO7jqiMYW0dw4vr
         TPkGsqqEh1xCGNV0Fjfh4GN053rvwj2DVavuihDCU0RSrx5gfoLj3xOOuwdUR7Im32Fx
         44FBxmKfELLRILJGuaueLhHH9Qw7ANkq8nLacd3QTa/voWxubECvaTIYSx5TLyCQ6AXz
         7/rgZ1eafEgANZh+GJ/XyiZnfSma85eO6KX22HieIJlneYSeFg7/hd885lOdXNdIk+Hl
         kbNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cJVSLikF;
       spf=pass (google.com: domain of 33vxeyawkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=33VXeYAwKABA3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id t15si91920plr.0.2021.07.01.16.55.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 16:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33vxeyawkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id i3-20020a05620a1503b02903b2ffa0a87fso5438792qkk.18
        for <clang-built-linux@googlegroups.com>; Thu, 01 Jul 2021 16:55:10 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:4946:97e8:cb24:9825])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:c345:: with SMTP id
 j5mr2543715qvi.26.1625183709770; Thu, 01 Jul 2021 16:55:09 -0700 (PDT)
Date: Thu,  1 Jul 2021 16:55:05 -0700
Message-Id: <20210701235505.1792711-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cJVSLikF;       spf=pass
 (google.com: domain of 33vxeyawkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=33VXeYAwKABA3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

We get constant feedback that the command line invocation of make is too
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given ARCH.

If CROSS_COMPILE is not set, simply set --target=aarch64-linux for
CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS.

Previously, we'd cross compile via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
Now:
$ ARCH=arm64 make LLVM=1 LLVM_IAS=1

We can drop gnu from the triple, but dropping linux from the triple
produces different .config files for the above invocations for the
defconfig target.

Link: https://github.com/ClangBuiltLinux/linux/issues/1399
Suggested-by: Arnd Bergmann <arnd@kernel.org>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/Makefile | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 7bc37d0a1b68..016873fddcc3 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -34,6 +34,17 @@ $(warning LSE atomics not supported by binutils)
   endif
 endif
 
+ifneq ($(LLVM),)
+ifneq ($(LLVM_IAS),)
+ifeq ($(CROSS_COMPILE),)
+CLANG_TARGET	:=--target=aarch64-linux
+CLANG_FLAGS	+= $(CLANG_TARGET)
+KBUILD_CFLAGS	+= $(CLANG_TARGET)
+KBUILD_AFLAGS	+= $(CLANG_TARGET)
+endif
+endif
+endif
+
 cc_has_k_constraint := $(call try-run,echo				\
 	'int main(void) {						\
 		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701235505.1792711-1-ndesaulniers%40google.com.
