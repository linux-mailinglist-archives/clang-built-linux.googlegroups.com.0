Return-Path: <clang-built-linux+bncBC2ORX645YPRBK7LSP6AKGQE6UKZJBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5AD28C5DE
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:44 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id x13sf11571868iom.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549163; cv=pass;
        d=google.com; s=arc-20160816;
        b=ElwA5HI9iSWsW5Wm2CbbkWJSjKU6EY6zhteo1+59t1H4tm67t1bhk6F9egh1lYIHP6
         215u5sY7tO5oS4wYRiQctkvtHkk83RUQRXPYpWJqPyPmOKUtpMmWIKya1FzI/AMACnMF
         +JGKIQ1wOcJKRD3Z3+2vz+oA4v5IDAQX49onMj5ZHg7LYJFKiuOz/VjHgxnSGmLs6zp5
         /GSFD/AnssSmvpvfjZW5qegdsYHpt7LvughQxuq1lU1aiBL8scEvfgHPPS+H+caEQwEX
         vIJ4aW9yTuwFSbfrPuHJkHhf9uEdR/o+0R2QxFrqQZNj3MW0j6AsGFUMxaWvVC9pADBc
         H+Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=9gdQApR5YFplhkTkiXqmyrzyV+2HX7g8stSfEPhlpUo=;
        b=W6225QwGeGCRMQCgAFDWKMvdFp26qI/zDXh7DF8aXOWJIgs9dfVKVw/HmTztF2mHFV
         7fbuCAuvNulEe+lbWIbmtNCUlfpOXE6nIN49+j3r7ybofWoD92iqvI28Yvj54UlhIRhg
         EyhL/Y49SdXhoNZBktK6Fm0u9BoWQkNntryL3azipBhhui6tQN6uY76/I1IE3ATZUBf8
         nh4ZahDIQ9QcVN7ddUCXOX/vlQ3zvuCd2AfsjcfJX869hZq9lXn+sfw9EWqfJ4/fp66N
         oIWsZYNCk+zTeWhnyooKRUTS07a2mNRsXMXb/h62tHYFTPRkDpQq6J2r9yQk51WrHySW
         seFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MykYLsVo;
       spf=pass (google.com: domain of 3qvwexwwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3qvWEXwwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9gdQApR5YFplhkTkiXqmyrzyV+2HX7g8stSfEPhlpUo=;
        b=kj93nEwR8wU/akqPDwWs7tIENC2XPBsBpBv33dse9l3T2lC31wzDVpvEVClLDYqR1v
         yviqWy1htx0Z9hoXRG/acLtSpFZCTGdGRI8sekUV6QdNjWHvKXTDCBqH1Wl7j2JXxv5A
         jTTjD14w8Lc+9XDkCXijnhu9PqHBp9m4g2pXp9hWV3WR0gF22IxJFKE4lX/WwB62kDLT
         VmS2gFEsjGTPkbptsGVOgeWrvzCIZSW1kgbpFxNi+2wT+qsfpBx2iPO/+5/o2eRjLkAj
         9mMB50w98HNmFh0huKITuFvletwQHWKTKpPncm25MYMnJf3vmdiE+10PblZ8pUL/Sodr
         85tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9gdQApR5YFplhkTkiXqmyrzyV+2HX7g8stSfEPhlpUo=;
        b=PS9CV/K1CttQK6aorqD4bLww6p/4weAVITvkAP2iholDY4H88HbI7+6095mG1YelbA
         HZ7Lo+EwZ8QFnaAuOaclPk3SikOMH83JMQTya0mMr3fIGVeH1WIr4PpY7J+nREd9COs1
         SgYOfuno1NLwcmM8sJQKWAp8ONVqZTo5q6kNJoRv/Y+jmX1slW2spC0wmklUKqcrADbB
         6T3MGvPC3oK/HN7YL5VdjlccWS6QVe1UyjOwpJ8g/BECecAPLM2CEYCi4y8YOQ4gmZFT
         BDiCOzERkEgtLUCk2btg6Ivh0JSQ76vZ1h1kmTb4aGU03WrUP0WMZ2C03cNuFP5YEDF8
         Pf3A==
X-Gm-Message-State: AOAM532hr4xz3Uuk2pxYOSfl7HXO2n6cHROijzPFVyHl0ezhFie6whCU
	GO4ugt546eKcqmjkpBs4E/s=
X-Google-Smtp-Source: ABdhPJyuLJjXvw52IGHx0aRH0/BbzdMR07pJ2ZUILWHVtYoa8ZnOUQae3z/EnbB2UvsVb1qQPwZiEg==
X-Received: by 2002:a92:aa43:: with SMTP id j64mr1005868ili.179.1602549163599;
        Mon, 12 Oct 2020 17:32:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8d06:: with SMTP id m6ls2548362ioj.8.gmail; Mon, 12 Oct
 2020 17:32:43 -0700 (PDT)
X-Received: by 2002:a5d:8487:: with SMTP id t7mr4280310iom.35.1602549163221;
        Mon, 12 Oct 2020 17:32:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549163; cv=none;
        d=google.com; s=arc-20160816;
        b=IXXCxL4yVnAZ6PCaRR4aexj6WYXPQVvRamsXr5UCGOy7NoU9yMwvTI8GfMPCQbET5I
         +RbOezb7xhM2NoC6/APcol6Px+B6CJfCDs2IlnMnXPfylb1YENWE6zqt0mBPDo5krokQ
         JpAHOjsyguzZEPpI5l7hcf4JgxrcnOMy8bkdvhU4g+AqLfD9RgdMyTEl2LH8xE2/wYvn
         eKN55koIl7Z+U4zYzMo+snvy+9KIlvO1Qb18ZcZYjIRNqS6BcDdHEG/9dgbYWVqgDyNt
         OQ8oJbTpmZx+YQ6KUqh5zGI9OZibH20fJDuHgE1aCrXucZNXK2H5q8yeVuxBzBAJ4nxw
         7g2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=b5rCnYz4obhAgpKHq4mgEn5Hvv5UPGIbAlGkTv5aKg4=;
        b=k+O33xfT5NkGej4nLBCqr35Sbxzfn6d4AqW6xpfZTIQDXiwimzinZxH4Lz+fSSXDpS
         yFmxfVCVSVhBLCPkTXWK7wYiyNhHV+MXiExZ0RNO6ypKYA3pjUAAJIV81O9KhQ9NdAKy
         JMbGHajbBfg9bOrhFvNXyIPeDUDbZaFkXF3oo+tA29YAK3wHU2hXEfqCg1r5dwOE4gtb
         YieEBiLL0rkywSW7Is2oHX4dj7NE6+hn1Ws3O3oWrPR7V2xYlGo+qz5zH+EMNGiL2zRZ
         C4nH4RtviBWrSBdPJEU35NrAxySmc2CX0UyxRf4P4uUvezQ9920cMBcoOFYuDTHbpuIk
         12sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MykYLsVo;
       spf=pass (google.com: domain of 3qvwexwwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3qvWEXwwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id k6si416205iow.4.2020.10.12.17.32.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qvwexwwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id s14so19099653ybl.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:43 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:73c9:: with SMTP id
 o192mr13193667ybc.353.1602549162840; Mon, 12 Oct 2020 17:32:42 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:55 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 17/25] PCI: Fix PREL32 relocations for LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MykYLsVo;       spf=pass
 (google.com: domain of 3qvwexwwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3qvWEXwwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
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

With Clang's Link Time Optimization (LTO), the compiler can rename
static functions to avoid global naming collisions. As PCI fixup
functions are typically static, renaming can break references
to them in inline assembly. This change adds a global stub to
DECLARE_PCI_FIXUP_SECTION to fix the issue when PREL32 relocations
are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/pci.h | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 835530605c0d..4e64421981c7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1909,19 +1909,28 @@ enum pci_fixup_pass {
 };
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				    class_shift, hook)			\
-	__ADDRESSABLE(hook)						\
+#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				    class_shift, hook, stub)		\
+	void stub(struct pci_dev *dev);					\
+	void stub(struct pci_dev *dev)					\
+	{ 								\
+		hook(dev); 						\
+	}								\
 	asm(".section "	#sec ", \"a\"				\n"	\
 	    ".balign	16					\n"	\
 	    ".short "	#vendor ", " #device "			\n"	\
 	    ".long "	#class ", " #class_shift "		\n"	\
-	    ".long "	#hook " - .				\n"	\
+	    ".long "	#stub " - .				\n"	\
 	    ".previous						\n");
+
+#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)		\
+	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)
 #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
 				  class_shift, hook)			\
 	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				  class_shift, hook)
+				  class_shift, hook, __UNIQUE_ID(hook))
 #else
 /* Anonymous variables would be nice... */
 #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-18-samitolvanen%40google.com.
