Return-Path: <clang-built-linux+bncBC53FPW2UIOBBSWR6CGAMGQE5ZHVCUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AA8459875
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 00:33:31 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id f3-20020a9d6c03000000b0055c9d337de8sf10639394otq.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Nov 2021 15:33:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637624010; cv=pass;
        d=google.com; s=arc-20160816;
        b=dQ5dnlDhuPYaC8mW9D5M3Y2oN8Pl1vwQa/0Ax3T73D1RM8m/zu3qQKOA/tHN1j7EE6
         pj/oFqs95WN9HVrXvupLcJ5rGS2uXPNgw+Vd/HgfyQEvRgYOlHor4XH8OjGT9gJOlAOP
         58GZzhfDmlUAAovN1XUOxAIqPsMx4Flk1zkiM3zeMJUb4+3fbydvHPrWqm62ssn8OLj1
         J3b3dnyZ1hkRZF/S9tAEE5PqA51wJwHJvlQXuqHOUhEG4sjB81In9YnLAxRBvEJ5XF9l
         G/8S1J8jka+FzFVALPOJM8PKDtW7vQAOCYQx9J9DXSx3Mm/EJaws4AMH/W7ATCxJ2ZHO
         CEzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:sender:dkim-signature
         :dkim-signature;
        bh=4ljGtWCnLTha7UycGG8Vmtrstw0xmTpaQsicQr31d1o=;
        b=kreaPz4foQJDbDWhPDMr0oqw8gFey1TVNC4OA651XhIPsvaci6a9LRJTDsKEbakow4
         JNsv23SR0G1VkSZjYzZsanV9kXReK3Kpgi5RcVPzajYlyOOToWAl98/wM5viKCpG0zL7
         bqzEpX5KM8bTo8GdLWTBs1yd9+LxZxLgXBVqeAg+X2nsmcCkLfgmg99mPz9qmSzvNVRL
         l0VKrIvdAoG6CnHWCcmUicxtONvCCh1PT87uuzfiEsaV0StZCHaEs4PaqfQT0Ihubj7S
         w9FOqvNu5vYFcRQatQDkD5Pz5BoqyhXkWYHthTHo86O3jidhdCtWXscyNSA7IivvbOEW
         Kldw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RdemdDv+;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ljGtWCnLTha7UycGG8Vmtrstw0xmTpaQsicQr31d1o=;
        b=FtnTZSD3APy9y45juDKaSTN7vgSCAwqjP5Cv4X1riKXrT9Y+OCQ5/aPSiigoVTQxHs
         pESXGg7uC+lradvT6zvv8Kav0bxOMb2FYy0bIQrG75E4QZ6J4s4cNtOmr7XAAHbeL9hU
         VcxDgJmni/7mlrjBhWH6ia7l0p0tORO8o+tfjqM/ePxHbfaO0EKFFgLdckT8pCM7Yl3J
         H8XLz7sa/gpGglivN4xGlraJJEEO/pAyxM3uuuEMHdz9Y4hH7JHD/+hyec7hJdrRXpAe
         687qnckTNB7z/fwJjujfyv70IXCMrQP9YuzTR5eGzb0Y7OMb6uKgZMb0lAbpnlmgLkd+
         +WiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ljGtWCnLTha7UycGG8Vmtrstw0xmTpaQsicQr31d1o=;
        b=SGD1VnW7+Rkd76nZsvqFsylRrH9LAGfWMBXvRXskrIz3WGCUHzrlxrH8KgqUpjeHXm
         FhRx+D/aLIV657S3GoKbrbcDXPxfQ9q4eWut4v+3fBm3ujaMeDI0x1n2jwG3T/Lse7n/
         b0pajmHjZ+vkoo1gis1PsVAjr58H+dD8y0kxIaJc9OLHBpa/xw53MCjGKtZZrrHzTyVw
         CTSTxXtaUfr5cOko5jsvcr+cLloFuOtcboEFWpeNTtVPsGrqaVDq0f9eRYGg9xXZ9zTX
         qr740i5SzId6fjgBTB98jvELRhB478oou26Xh3iOjgQ7bKiim4CQzJYYnrPVxGWXym1A
         qkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ljGtWCnLTha7UycGG8Vmtrstw0xmTpaQsicQr31d1o=;
        b=AB33ngWzdKNDn9Rbo8+0Fl4GO3n4jwmvaFSjRfaBgMlSVkvrEdi1GEoznzJVXggtSN
         ppemHAkhN+uuZGHYqs9WDS1eNYWg/qVzumQTN3/rNtHKPhgaMenmrtLEqDw5KlbLiDHn
         o0jRpa/ipYFheGY/or2y5v+979vD0L550K+0dGAaY6Aam5YxMhYIZoeYV14tnoOi4dWv
         WMSo2LPrpob64W0BCjNt7XzvQs+vxmpZDh1HhIQp2RUb0pn3665VyNwrg5kbGhk+izN5
         +2Q/zVxpNXbvS3vmxaeK04/fimvzH5IaUVyORjQJOPMsE++YOId447KOrZxkdg1wyS2q
         Hw2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533c2JeBP1t5W67IYe/XDaygYTzDeQrUAKeCFLMuFESQjYBj28TJ
	IxuO51HvHwy7aVIDe3YiT1I=
X-Google-Smtp-Source: ABdhPJw8ss221nA/RK7fAkyQSQ0B2w4lbjQ9EtApBP/3Rn/t9NINErvSUbTIbTFuwyghw6kAGjRkfw==
X-Received: by 2002:a4a:986b:: with SMTP id z40mr85865ooi.49.1637624010227;
        Mon, 22 Nov 2021 15:33:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:219c:: with SMTP id be28ls3411817oib.1.gmail; Mon,
 22 Nov 2021 15:33:29 -0800 (PST)
X-Received: by 2002:a05:6808:14c2:: with SMTP id f2mr1127319oiw.154.1637624009881;
        Mon, 22 Nov 2021 15:33:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637624009; cv=none;
        d=google.com; s=arc-20160816;
        b=IZsofH/6pub1WBR56vA1+xLpoFwB9GzjhH+Xk2CM9CDJu3PWf3Yr1BEAd8CEy/yvZL
         f2SwBUjjdLixiq3mPW1Ay/k4+mGjayEAA7gwgWySOobB9GdRlxSj81zUw7MrAZEypDdT
         BPY9kTQNpQtA3gONJ27945fsjQXSKwTA4/q2bHw0wbY6qrnWHBadKOkExWUT0QQaYeC+
         AG7uUxza0edUlhYtTKVTS2ZaMuW7IwUI5H8LpCOZ9AgdmdyprW1ePvqSeZNlS1jipoaA
         ZiZv0pb3HjtP2IFKnEAEKvWk0ezqMfGirZIEaTEi4m/Ri/RWrR2CwWc1r9nOycl4QafD
         LVRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=w8ragH9mrm78TEDc0slgjQMbYNAP4RfkPoqdokFyY0M=;
        b=LyWIiliWovxBpmzQAV1R73CiZUHNiJbOrFaf5gcZm2GWG+l7v56XEhgqDfyWyUiqGw
         cnHVZT/n49/UVjU1ljEvGBGkJDqflk34H50orU4ouwxPgJcJO+vzaOxbjKuSXRAJ74lI
         IVbJG7uLEFAFIASI1+o0YU6tMlzRXzbLvXAHKo3S3ciH7o8PmKog/h0qR3paj/0re2eN
         wKaY4QCQXcbWLOTj/GbBK2VW3AN6DzRZv0vKa77ObXEUyMrOLAqrns4x7x8yadphqHDU
         4K4kHMNURNktfSGlhJV7joiuYG+l0ikTsRIJwWIFhwxc9Ms/kfgvZ1pIzF/880c9Hf0Y
         cknQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RdemdDv+;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id ay24si953816oob.1.2021.11.22.15.33.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 15:33:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id 200so16607151pga.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Nov 2021 15:33:29 -0800 (PST)
X-Received: by 2002:aa7:8b07:0:b0:4a4:d003:92a9 with SMTP id f7-20020aa78b07000000b004a4d00392a9mr471462pfd.61.1637624009257;
        Mon, 22 Nov 2021 15:33:29 -0800 (PST)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yct-z7s--tg8y8t-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:50fd:36ff:fe05:e039])
        by smtp.gmail.com with ESMTPSA id y6sm10195837pfi.154.2021.11.22.15.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 15:33:28 -0800 (PST)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Jessica Yu <jeyu@kernel.org>,
	Miroslav Benes <mbenes@suse.cz>,
	Emil Velikov <emil.l.velikov@gmail.com>,
	Sean Christopherson <seanjc@google.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/2] pgo: Make module.lds.S linker script to merge __llvm_prf_ sections.
Date: Tue, 23 Nov 2021 01:33:05 +0200
Message-Id: <20211122233306.155968-3-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211122233306.155968-1-jarmo.tiitto@gmail.com>
References: <20211122233306.155968-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=RdemdDv+;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The compiler leaves many duplicate instances of __llvm_prf_* sections
in final module objects and they confuse the kernel module loader.
Fix this by providing module.lds.S linker script that merges the split
sections like vmlinux.lds.S currently does.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
I'm not sure the linker script is entirely correct and
it propably needs more work.
---
 scripts/module.lds.S | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 04c5685c25cf..83ca5825c0c3 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -60,6 +60,39 @@ SECTIONS {
 		*(.text .text.[0-9a-zA-Z_]* .text..L.cfi*)
 	}
 #endif
+#ifdef CONFIG_PGO_CLANG
+	/*
+	 * With CONFIG_PGO_CLANG the compiler may split __llvm_prf_xxx
+	 * objects into multiple sections. Merge them in final .ko object.
+	 * However leave .rela__llvm_prf_data sections as-is
+	 * since they are needed by the module loader.
+	 */
+	__llvm_prf_data : AT(ADDR(__llvm_prf_data)) {
+		__llvm_prf_data_start = .;
+		KEEP(*(SORT(__llvm_prf_data)))
+		__llvm_prf_data_end = .;
+	}
+	__llvm_prf_cnts : AT(ADDR(__llvm_prf_cnts)) {
+		__llvm_prf_cnts_start = .;
+		KEEP(*(SORT(__llvm_prf_cnts)))
+		__llvm_prf_cnts_end = .;
+	}
+	__llvm_prf_names : AT(ADDR(__llvm_prf_names)) {
+		__llvm_prf_names_start = .;
+		KEEP(*(SORT(__llvm_prf_names)))
+		__llvm_prf_names_end = .;
+	}
+	__llvm_prf_vals : AT(ADDR(__llvm_prf_vals)) {
+		__llvm_prf_vals_start = .;
+		KEEP(*(SORT(__llvm_prf_vals)))
+		__llvm_prf_vals_end = .;
+	}
+	__llvm_prf_vnds : AT(ADDR(__llvm_prf_vnds)) {
+		__llvm_prf_vnds_start = .;
+		KEEP(*(SORT(__llvm_prf_vnds)))
+		__llvm_prf_vnds_end = .;
+	}
+#endif
 }
 
 /* bring in arch-specific sections */
-- 
2.34.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211122233306.155968-3-jarmo.tiitto%40gmail.com.
