Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH6IQD5AKGQEBSGRAUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5894F24E0DA
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:33 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id l22sf1576369pjt.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039072; cv=pass;
        d=google.com; s=arc-20160816;
        b=CNUxcI8k48YPz/7uzy+l1qCFnCmPrJZRPk/CSTfJ5tnD0LeA1/BXkFgpPxbVm6OGLf
         0dIb80c0BZCavZb1UcII1rfWu3yIeM3SOZy0pIkUz4LKK8i5B3wMCOWhNvn4+J5VAISZ
         0kFU91vRzRDCUMGcoIqn5fIocwmVZglQ6N0eeT/pH9N1P724DdwJNi6IRDM9cTHSBGl5
         M38Hmukrk6tKo0F2OnsTRzJoRxl/0gM8IPEkL7eq48e5v56gYs/7UyzSd0fFNpNIo+ZB
         hjI5ZIppKX6h7C4SfPEXd157tATH59YRb82HHTiR7w2AjaJ95OYbF/ACQRjWjcLQexQZ
         FfQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aqJ0zolxUi3C8/jTMt6PQl6zaEq2Y0N+95Qbrl2QBDE=;
        b=lfJ8C4mL0FaAkurEorfgYQvo6LEMRXB6e2Z+tL868js97h8Y0WR7cD8VzB2GNXPG0k
         GkapaOFZmeIWWkVxXFbrvwTp6YkrVs8JOdfuP+Vhy+IEakqdoo62Vz2YqSS5NDHM9CAB
         l2kcgrW8YWSklM5WkXeQ+IyxQaqnjFrRUhNf701kD2DbV67+0hiXVpxoMQjplec6cJEz
         vn4DYvpGZyq4kNxTmId7iPoy6Bm3feD6mdhIlKTtzdpSi5fO9HgV7JFxqUk84jv8YNh/
         9Kf/iXrhEjJkX0Elqk51Hrnw+wc964u/++fqWMsGsy4wqkFpUOfG6UTKbWFdKLFM/mIT
         QL4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GF8WNGGb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aqJ0zolxUi3C8/jTMt6PQl6zaEq2Y0N+95Qbrl2QBDE=;
        b=Y/FyoTjoBXMsWWcMsDzI3e0dxSxb3HH/AntP/ew7QKjePeaQ6dVlqPl1MjTfNdCcPG
         /YLb1Hhi0hftP3FzHk1SGKkekES6raN8J/Rp0RUeHW3ffgPSmUooZ9mv1fEIkVE0J4Cy
         cACejq0k2J4wer1q1pQI2Hqm5QX+TqwkEbW1oZju5+dB26al7kailKEdGf/f5dJC1fQu
         MsQPNS1b0tmTbZY1B6wH151GtekWsZDrTH6QlgonaHiu/6MxpbKQFZrYHoASGZwa7N1f
         q4deJPbQCMI0anVbvWoCPDURYk9gM6Rdtknygl0XPXwJodqiJPZKPlDR883SO258BZoz
         qnfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aqJ0zolxUi3C8/jTMt6PQl6zaEq2Y0N+95Qbrl2QBDE=;
        b=kPcbzGmZXnE3GvmiL42xEEqALxt3myY+nsySAceJT8Vmurz84VANFeg3v8fiJ4ORY6
         /Ezn3d+Npioid61ufQMK59eZaqegPkMnX/OvK2hyE5w5cu27UzTUnBhWjSv3VBvLBMrb
         OaJPioZGG6dQjYEEIKwVWtE5ON8F6KVGzQVQB+MRZ2Tq9zDfaA9GVPwrIkL6j0aLT6KP
         NjK9m1K9qq+sHOzydVMY/hwjksKYasvLLC6lkYzFAL2qfXwauPjob/H0hKyQXU0iKTbE
         Mzt3NK/nKc+oP4nMlGIYLoMAl1hRCyifcmt04XzQwIzK22uvqmJkmRnr/w8ICk0eS+L4
         olhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CaftzSWPXVQmeZ15hCQZdfq3Jcji+BLqHLv1SMojr0v0F/+EY
	+SqZF8e9wUcVTe3XZx9bSbY=
X-Google-Smtp-Source: ABdhPJxYRS94Eej6flDDrbWWInuw0Tix+Ljas0c7nRMZUhttKoZz+PHsrTohqJEnhUxi2inpHEZ2UA==
X-Received: by 2002:a17:90a:6f85:: with SMTP id e5mr3587589pjk.128.1598039071941;
        Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls1073726pfd.6.gmail; Fri, 21
 Aug 2020 12:44:31 -0700 (PDT)
X-Received: by 2002:aa7:8e8d:: with SMTP id a13mr3774424pfr.250.1598039071320;
        Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039071; cv=none;
        d=google.com; s=arc-20160816;
        b=1IavcP9q04iIqR6VvDKVF+FNzQH8V4vDRe/KRoC5ZuJ+wcyA96mkpw1BeXkO9vkthS
         G0LzlSiwj2NvKoAIHUtArlDSTOnmRQG2XMYOjhZd7f1MXCwPYhU/VuSp/OHoBG9vXxDk
         l7hhMKjAdDNT4oD1HoHRA9X3gdE1/58CbA3mTx1ap5ER2iPQ9/h3upGFbcJG0tffwE+1
         fn+BnfGTV5aDhMzn82wL4eqKDtIg+QrvSkQQN9TkKYm7Ot+JeD6fKALSXFg2Vc0Li3Rf
         +/t9aW3bCFqZ9GoxlpsbqjzAWO/KmoMAMWn2OqYyi1YXT1JMXiQDOlLLQopHolOHazvk
         NQYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2SO+UGcbCrLenHkErAflqsGtJX/MLOFJ7NqTGBJ73x8=;
        b=At3j55eNfZ/9bOKQY+2BYbZBEgN1vyDatSiET7YRCk4if9iA0WS5cadhopFyaQGBr3
         kg4NFwK53urNmeeVuLxOJ+MT7PNhbxQXkuD3foNrugkIY/mlGEJOmaNbYHNIrPr9bkzZ
         Doc3Tr933ZFJPmNbbfn9wX2YaBN0XPzMqbOP9WBOCHN8HoIoxiA6K8tJf135cK/plv8s
         yq7lo5llk6okXBuoJIPg/UW21tF8n1O0pr4QdqUzdeVZQWOTMAvpYF/wMF+ml8m9WKoF
         3J+X1c19woCqo2bq3aN+TZ6DOLvot18nDacXVbEnAg1KQli0nZT2KIdYHjvWbftFH1Zs
         nBKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GF8WNGGb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c11si169498pjn.0.2020.08.21.12.44.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id z23so1336613plo.8
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
X-Received: by 2002:a17:902:d691:: with SMTP id v17mr3392145ply.235.1598039071121;
        Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o66sm2795858pgo.25.2020.08.21.12.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 18/29] arm/build: Assert for unwanted sections
Date: Fri, 21 Aug 2020 12:42:59 -0700
Message-Id: <20200821194310.3089815-19-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GF8WNGGb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

In preparation for warning on orphan sections, enforce
expected-to-be-zero-sized sections (since discarding them might hide
problems with them suddenly gaining unexpected entries).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/include/asm/vmlinux.lds.h | 11 +++++++++++
 arch/arm/kernel/vmlinux-xip.lds.S  |  2 ++
 arch/arm/kernel/vmlinux.lds.S      |  2 ++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index 6624dd97475c..4a91428c324d 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -52,6 +52,17 @@
 		ARM_MMU_DISCARD(*(__ex_table))				\
 		COMMON_DISCARDS
 
+/*
+ * Sections that should stay zero sized, which is safer to explicitly
+ * check instead of blindly discarding.
+ */
+#define ARM_ASSERTS							\
+	.plt : {							\
+		*(.iplt) *(.rel.iplt) *(.iplt) *(.igot.plt)		\
+	}								\
+	ASSERT(SIZEOF(.plt) == 0,					\
+	       "Unexpected run-time procedure linkages detected!")
+
 #define ARM_DETAILS							\
 		ELF_DETAILS						\
 		.ARM.attributes 0 : { *(.ARM.attributes) }
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 11ffa79751da..50136828f5b5 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -152,6 +152,8 @@ SECTIONS
 	STABS_DEBUG
 	DWARF_DEBUG
 	ARM_DETAILS
+
+	ARM_ASSERTS
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index dc672fe35de3..5f4922e858d0 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -151,6 +151,8 @@ SECTIONS
 	STABS_DEBUG
 	DWARF_DEBUG
 	ARM_DETAILS
+
+	ARM_ASSERTS
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-19-keescook%40chromium.org.
