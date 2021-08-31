Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBRH7XCEQMGQEA7JJB3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CA13FC9FF
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:14 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id p5-20020a170902a405b029012cbb4fcc03sf1469865plq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420933; cv=pass;
        d=google.com; s=arc-20160816;
        b=hGZlTJzwiSwWKLqdkfCXI76K8fS5y5d5v6sohlH4VegVeXuTC0N7jAWU385J82b2Dn
         HWEzWkUW911vA5Akbf30nGFOzJCXA9YFuakUJpLef8AB2zGRZIZk5rmOkhXbVxN4nnJ0
         AU81eARnIuPgraV5iJxNJwwmcsvXh/g5ix35p2h1bIYsc4bS1ieCbZAo50wHsdKFsV/c
         3VCuALwycqebUev5kGc3QqxvTwh7HgxeHCznAvBfLBr5XxFzm9BtdvMAEiAamttcN1B8
         AmKNzI0bepfCZvERI/11cX3Tf0890I10thPPLY/QC4NY+OSIJ4Bjpbk9vEEz0aW43vZa
         GDlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XMPHC6Z3YvmlTihqV5IK+DYzySJtZQ0KgsHx6JHIEbU=;
        b=DEOK/syt/ai7c4onrWYIzV/6kjbzTT3bMve+o58yxaQ2Ci5szDErXPpYOb9oq/Js1w
         +W872mzCsFKBbhG/h7vUw25kxNt8T8FldMgybS/i5AL+XXPyZtJDdV0Chx0gVtONJFnO
         KFiScN7AXJZUXzvCZnJkNw+1MpJf6t4DicsDKE09rsMge6mk1KpvIzXOEA6NeZ5hMtAl
         2r6KA/A0pLMC87ttwN2WwUj6wTfGaQKH8YcdEHi6YIY5Sv8I2yr+rpbqbCBigWqde/X9
         X21gsuHMmsAmWrEUDMwUphgAzADYQ5Kt0COESdrxry0FLVVUu/UhjAnKQUGahFMaVpgs
         hSWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XMPHC6Z3YvmlTihqV5IK+DYzySJtZQ0KgsHx6JHIEbU=;
        b=ahH1yB44rNqfQCjKNmAK5yHt3SLkCsEj2bZxWkvqVq9mzjlFOehrYFAxDhicCVufAS
         H/DyDoEY2BNFwnWsmhg9Zi5QOc0HyR8OL++s/fPOcB9DTFkmlUmdDC3dX2Qt17M7Gtdm
         eo+ZUR5nyeG6AySFGEaKKRB1VtWkm8ive3pRV+fsyi7tEdgFVzbzmaKeL0CZDaTfLBZZ
         7usJymzlRCSWuMfJOOjC8LdW6uuC1vL4nOndRjtVhuR/ww9wXknh72Jt1D2UG6Z91d90
         glceOJ5F8axTiygtxG4vtHSXtUHYveMA9JAI4GvEr5XvuLeBCJkG+Qk26vU44MWfy6TH
         69IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XMPHC6Z3YvmlTihqV5IK+DYzySJtZQ0KgsHx6JHIEbU=;
        b=fugrBRRPtps9TIJOSYjR0Wy8J4geD2aRvewcrP5Fd1+NEKbcc20lnGpGt8TUoARe39
         NjOwgDkD0x0s68uRCAM4zLZkv4DV9KR5jmP6ZkkJ4p3+VekXolzYH+IDzvMyazdacHyg
         n5gNVBbcCEE3jcVCDU2FT6hdaAmiuJ6IsXioNs5oz4USwwoFvxz56sWpuUhG5giQxcgI
         WSIwSaSyNPo/pwA1A1Jud240LR6v75T78ZQ1Gk9aIVQcW1FKeGTIsb/h2QP9fmRKLM7F
         TYX8HbE/E0jjVKYtWkVWJ3jGFnVktejiIWcRA8ppg0o1l3ft2rfSJhy0Kv/jS5udMKGn
         SfBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315zfDUJPc16GDEnSuBYfd9mAGxs8xUSv37bIJrJhi5wC3a/9qy
	gy09gG0OFwjq8cCODFQbY9I=
X-Google-Smtp-Source: ABdhPJwtleMthaDAkqySd+wx54AloM9oXht3eshYO+jXFLtfMwQrdzFDAKTyotMjVrUChe9sCK+2ng==
X-Received: by 2002:a62:5846:0:b0:3f2:805b:50b1 with SMTP id m67-20020a625846000000b003f2805b50b1mr23998340pfb.74.1630420932831;
        Tue, 31 Aug 2021 07:42:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7b86:: with SMTP id z6ls1817059pjc.2.gmail; Tue, 31
 Aug 2021 07:42:12 -0700 (PDT)
X-Received: by 2002:a17:90a:4e:: with SMTP id 14mr5828071pjb.180.1630420932246;
        Tue, 31 Aug 2021 07:42:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420932; cv=none;
        d=google.com; s=arc-20160816;
        b=hgSU8TG5qOR87nhrOFxWZDbvqkBJdqtd34PKoai5prETfzdsDQMirKn2S8PVZT12TG
         MsI31I/HmkxKOrJYVs89qwSnIMfu2L7q099Z9Vmt9VwYg1JWa+ySVirHCf+vpREiAYLS
         9RFLkoRKiKLRlYPhyJ7b/OGD5jx0seb7cZhXkfjA0HeU4I+48PADbpzZxCZkFSNfiOi9
         XjOtbyaFlCBmED2RcHxmkM4dsa8zdGgVnLnvwlee53NWMrQ32eYKXBea1bJawx2OeOXY
         FfdM+eYIBZzyZ51M140f+Hda8YoO6WroVpGtJ0N8oZkJKJSymrgk8+roWa0WIr1LMTcO
         7d/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=pJze7Dswtm0Acl61CCfK5auFI5gohQqRPf4GQSK2TKM=;
        b=VxF9d+D14WFjScoYCr9PMNwwqqTDPqGb1U4FE9NdTgFjEzUD7+kz6Nfrm1Qr3+lY/b
         hIqaLtVkl0vjILta6gDjbZVGl+UooqDFOZAgsHFnyQBzv5BpYl3zUbvvw0dfJvbalHk5
         cXyB9fdCiDGJbyMFncLIscZcMdYf9tnJ5mYNYGZdxl12rPrCnGCdzBWzppvoBazAnVE8
         PyIJQ1mEgY8qwI6KddgD1ZTVBM0CZW0oWiLz+0dAhcPryGT7XzONRv/yGmIseugGp6px
         ohLy3yrlJ06HXAPrnRoDgEMIjaEa8ugcVxNbby++h5tbovdxHdKN0AJK1ZonSSuSRgSj
         QPng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id j12si1048413pgk.2.2021.08.31.07.42.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="215357846"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="215357846"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="689989657"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga005.fm.intel.com with ESMTP; 31 Aug 2021 07:42:06 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfY002209;
	Tue, 31 Aug 2021 15:42:04 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 08/22] Make sure ORC lookup covers the entire _etext - _stext
Date: Tue, 31 Aug 2021 16:41:00 +0200
Message-Id: <20210831144114.154-9-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Kristen Carlson Accardi <kristen@linux.intel.com>

When using -ffunction-sections to place each function in
it's own text section so it can be randomized at load time, the
linker will place most of the functions into separate .text.*
sections. SIZEOF(.text) won't work here for calculating the ORC
lookup table size, the total text size must be calculated to
include .text AND all .text.*.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Reviewed-by: Tony Luck <tony.luck@intel.com>
Tested-by: Tony Luck <tony.luck@intel.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
[ alobakin: move it to vmlinux.lds.h and make arch-indep ]
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 include/asm-generic/vmlinux.lds.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 5d6da19b02bc..01fdeb5dd216 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -887,10 +887,11 @@
 		KEEP(*(.orc_unwind))					\
 		__stop_orc_unwind = .;					\
 	}								\
+	text_size = _etext - _stext;					\
 	. = ALIGN(4);							\
 	.orc_lookup : AT(ADDR(.orc_lookup) - LOAD_OFFSET) {		\
 		orc_lookup = .;						\
-		. += (((SIZEOF(.text) + LOOKUP_BLOCK_SIZE - 1) /	\
+		. += (((text_size + LOOKUP_BLOCK_SIZE - 1) /		\
 			LOOKUP_BLOCK_SIZE) + 1) * 4;			\
 		orc_lookup_end = .;					\
 	}
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-9-alexandr.lobakin%40intel.com.
