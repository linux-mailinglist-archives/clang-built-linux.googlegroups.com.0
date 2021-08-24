Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFVSSGEQMGQEX7LYN3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 141C73F55CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 04:27:37 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id d23-20020a17090a115700b0018eb24dca9esf155597pje.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:27:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629772054; cv=pass;
        d=google.com; s=arc-20160816;
        b=S7mMx4mj05GLUVhIJEJWxlSBx4vOLT7hYUd4vaU7KCpz0VTm2qPHAn4zvBd2sntlSs
         HbM3W6NTISJCboAlRskYx8F/0M0mRqscKoFSwojiU94YMc3iYWk3w2m1ianVczh/ayER
         JqamApRzdAMP9ELN87H0BQrgGQQcjY7ff+cS+JLSIqiFCw7H3CxKukRPGlJR8QG4cgWa
         VFLknkQGOGVYKqkpfh+zkV5AwMd+rWXeYx+mFLI4yaq6/Q6LC+bGB8fbK2YVwKUrBajK
         dvOT9ACtQZgVu3ZvjrcDhZqJCFfp37JN0fOsJHqk8BOqE5d0ZpqJTuh7fu6oTd1+Q0yP
         87ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wHvkSWBB+vMbY+3Brqow6zCSb15WLtQJ31+VPCJVP7U=;
        b=QqlLNK0EIAJliLsyIBhBqzi3bFpsnL93Ku759nwl2c7V3kApup64yDptUWQkyrEq0T
         AmBU5NkPObQ93GaIt/0N4BRyeJ5cEF3WN4k3RhhhomR8OEtsm8X60WNqOWtjcQQao3a/
         ujP4Dyo9axuNhirWEE05eyNbXcYfB2KQ/Dd58odgDyKpfko/Ns/F5LY8Ke9tIY4LG3ro
         tljduLg0qDzsnpFVeI9lR99JkPmDAeQqPZYVYhp8g39P329JdyAo7sX8/s0K26FZsYok
         bAOF1wDFz2+QF51dJHLSJLNjEz209Ch4EwbXsJS+gs+o+SJpmlT/cqNCy5ldMS9CusXH
         txLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sVo8kH14;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wHvkSWBB+vMbY+3Brqow6zCSb15WLtQJ31+VPCJVP7U=;
        b=EPy1LRHMyg4wg/6KULLqLs7CvBGJLaU3YX+WHemMvJuL1N47h0jdyeAGl+WZz48PkL
         WKwDXGDJrVO1sAzI7aMZhKlptsyQB+aBz/TemgBWWXIm7obbTNjnFl0c41GsN2YyAl8c
         6slxxa9D1p4lggrOBx7qLwMqpvDmltumpGnTt+muJr/cs1ieY36rOSG3WESejJ9Y24eZ
         j65UArzED9FZLPJJPshS53PBYGZq6sOatanbENWWJQs/9t/7KuC+c/vvqSUZKtI0Tgv/
         tkVrtnsOVA4OcLPLhtJLEi5Fv3pHAqRzPWtxUeCUWF2FjD4YFI18fGSZLhabyiS6E4ac
         W23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wHvkSWBB+vMbY+3Brqow6zCSb15WLtQJ31+VPCJVP7U=;
        b=uan5Z/da4bvYTapxn/bOBAMdYiF4qHqMy49qZfU7vdRvIPpiEC8+mobeKMt7aarwpg
         UG3JGvHsqzc4J6U3JH0n5wAss76lvPNoDEF9oj5TwDj1d9CaLsRP/nrPc2QBPCd4Hp1v
         CB8Yzij0EKnlllQA4wGdxvttHa4/GedtAgIEoWGZg06XDfiBH718pKB47H6Rugz+myCh
         3kNnjKWYp5G136o1sfIupOmYLFVA2oq8S3hIqWU2hYiPHGTV0K6dhGj3AGQOQCXuDupb
         opK7ELghV5uTfIZ02gcpS5EmCi76nCeMT8tHofoY+uQLtysu4IpbfHQOUpNafAvgUGxq
         MzYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pxQZpiWfMk3DZRoEV6R6EgVPcjd3weakxfaH3MlKucMiniWlR
	Xga5Uz7CMb+u130d85+/rXQ=
X-Google-Smtp-Source: ABdhPJz7iPYaR1EquOFKKxnB1RdtjViTLOeLBsyHmL3iJp/tOGZ23gIyWqTu3hkPbl3QSo67ll6Jvw==
X-Received: by 2002:a62:c711:0:b0:3e3:3b61:4253 with SMTP id w17-20020a62c711000000b003e33b614253mr24174129pfg.35.1629772054650;
        Mon, 23 Aug 2021 19:27:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1388:: with SMTP id t8ls5645888pfg.4.gmail; Mon, 23
 Aug 2021 19:27:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:2309:b0:3e1:e727:ec68 with SMTP id h9-20020a056a00230900b003e1e727ec68mr36559960pfh.26.1629772053989;
        Mon, 23 Aug 2021 19:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629772053; cv=none;
        d=google.com; s=arc-20160816;
        b=RKMEGjUdMGcQjHh4UFeooKsuyQX8HScIfsipOPnEjbBrGX8MDKl2XkSZoG9iW6gSHu
         2kjNXke6X+363C9YnxOUzUCqwtjHg1rF1WwATkW0wtEouRUXpZRe6hD3pGzvUUDXZ9Se
         NYs+8Y5KtPo1C5xfe8FDZTCls6DJ9fUEEnxdXRFDzM8OKnVl0/iitnzAXeO2zcq1SQsf
         w98QgIMQH9JU0w2wtZCe9YPo+d5n9N61k68BO9bhkCcc50h5NQ+9GqjRG5sw7SyAurfR
         7j932oZIVPlroR+lhTqqyPAAKyErz6dhb+7k3a7swjSzgcPH2spbUN5gCJHU826pJjEA
         JcEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OL8ChztOX7SZuwQxA3xt1i7+SJ3tx1+FMIaphZKzA54=;
        b=TIZHPAsLIOwiuBdOsKX6WLGYPxQvf5M9sj7eGj9suKm5t7DwdrXqMllgRn194FbypC
         gYalHZYzQsJ249LgYP7KgjmvrWmILGn2ixyaI+G4btAr3Lj0c/phZFgZQzsmn4Z08zO1
         SUbkv5mk+W9qt/5IJwQvTkTS19+OGPfiQ4sCArQ7GIfpaHriSUB5CvunwEwqXpR16gF4
         FM0rHjaOsx2ssrjAs/Hlfmm7dPJ6s6DTHOv28YWoiQiYFi3UYb+/mrjKVNBxFo2wntSe
         Xtnn06l5YHwJiW49X4ht1YPvStpuXir9FSTwwh3kykO5Hv3vLsrlrXPCw6POoeqgiKco
         bCqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sVo8kH14;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o2si90236pjj.1.2021.08.23.19.27.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 19:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EBDEF613D5;
	Tue, 24 Aug 2021 02:27:30 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/2] kbuild: Add -Werror=ignored-optimization-argument to CLANG_FLAGS
Date: Mon, 23 Aug 2021 19:26:40 -0700
Message-Id: <20210824022640.2170859-3-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210824022640.2170859-1-nathan@kernel.org>
References: <20210824022640.2170859-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sVo8kH14;       spf=pass
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

Similar to commit 589834b3a009 ("kbuild: Add
-Werror=unknown-warning-option to CLANG_FLAGS").

Clang ignores certain GCC flags that it has not implemented, only
emitting a warning:

$ echo | clang -fsyntax-only -falign-jumps -x c -
clang-14: warning: optimization flag '-falign-jumps' is not supported
[-Wignored-optimization-argument]

When one of these flags gets added to KBUILD_CFLAGS unconditionally, all
subsequent cc-{disable-warning,option} calls fail because -Werror was
added to these invocations to turn the above warning and the equivalent
-W flag warning into errors.

To catch the presence of these flags earlier, turn
-Wignored-optimization-argument into an error so that the flags can
either be implemented or ignored via cc-option and there are no more
weird errors.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 scripts/Makefile.clang | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 4cce8fd0779c..2fe38a9fdc11 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -29,7 +29,11 @@ CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
 else
 CLANG_FLAGS	+= -fintegrated-as
 endif
+# By default, clang only warns on unknown warning or optimization flags
+# Make it behave more like gcc by erroring when these flags are encountered
+# so they can be implemented or wrapped in cc-option.
 CLANG_FLAGS	+= -Werror=unknown-warning-option
+CLANG_FLAGS	+= -Werror=ignored-optimization-argument
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824022640.2170859-3-nathan%40kernel.org.
