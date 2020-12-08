Return-Path: <clang-built-linux+bncBCS7XUWOUULBBT5GXT7AKGQELGF6R6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5232D234B
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 06:46:56 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id m3sf13475835qvw.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 21:46:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607406415; cv=pass;
        d=google.com; s=arc-20160816;
        b=RN8+HqeEL+BgGgDP4Sr6sK63iUejT47VxKAaUsLpuuom/AwRvQX7Ex/Ed0xUmjKRvJ
         oQohLD6f6GF/qxkCDfgsnELah4Xzjy2b0EoBPFOR3uloKEKXhMFV3IbAwMn4W89VIcRj
         /KiQPohuJSGrBjIyCySjR6J9QAF12iZE7FSAhlzHaLOtI0DEiOz4ycY42m8aFG0akdMF
         KkCB5wyMrmVjTp6psgRxLkQm2EhoZmF5V5cJzWf3KGcNLnGjBdHdZI2TN6PbyXnCQlIz
         3x+F+qIhBdsSWyzv5APF/f9j6dYxOg8zOJ59g4ex35git5Yhqs/ii0hM8p58t6S1XoZV
         UURg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Ew0UEBTjm37sLDYOuoxuMohS5knHTR2lbsf7QkU3/cM=;
        b=qOvm2cs1mGYXWiy8WPCdHEWm/gZjI2dTXSy6YwmY1JDfks5rwdl65mOhjo3HSDftEj
         4YtIXLEBjme1nBnmjNmpv2ySb7ZWL2I9HeV8fSJKM9M8QIloP+TvQYgx3WWSQwsZ+Ti8
         GoNiBwmHFUC+KaJu5apNYEQXUKX9L/QeLsc7Tn1NDKuDX3tSLy2iZ3qj5kkV+k9VLL+6
         Enpu6hqCnsNpukoqitA/DkoDTBB2JBdcNGnCXkB/DZhVM0XfPo3NoKxIOnW9GQMVxNTE
         pe6dBVK9UHIjSjjQi1wnOrBgb7APrnqYgQYD5yWGxVt1m4oeR6TsBJ1pP3Pis2AtNiOz
         oP7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I4pGl9G+;
       spf=pass (google.com: domain of 3thppxwckebuhvnfmvtbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3ThPPXwcKEbUhVnfmVtbjjbgZ.XjhXgVib-Wpdgo-gdipsbjjbgZbmjpkn.Xjh@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ew0UEBTjm37sLDYOuoxuMohS5knHTR2lbsf7QkU3/cM=;
        b=Jba1IJMoAZqhR8winONkUFWNj16PIv5XZU2/w2MF5TOPyUKe+FquqKzm5l7zz5uUk3
         6D98TkrQv38jIAmyDJ9wfmM7xHvkoGqLLKcIqebdXoWVTaNtahIAyPEKUrk4YQvXF8ED
         bjnGDXmUAmCSVw6XAaTGwjNA+y6OPUROtFbQFhtzUKTnFJHunx5QngKjGIetoh19qqO1
         ZfCB98a5orj7XF5rfgAD/Y9aJmgICMxq2Q+d/xWipH0itlriGAgYwkOYRcWWPP2Q8N1X
         F+SCH4f/CGNy8JjlM+0QO+NbjMqgRylQ0rZ2dFjC2d21I3g8TWBX16dapj5+PBAZ98DX
         mjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ew0UEBTjm37sLDYOuoxuMohS5knHTR2lbsf7QkU3/cM=;
        b=FVB+UvadIn0rXI/xyEn8aMv8gV2rHG4WZ3R1/QeI5eR0seZmWfpVtwFFnKj3ZZ9H/L
         YMmsNPsu6NlXBmanjk6x45RIS8X6e9LFTTwzmmwmR4nEIOPfyqYJiWM5cBAZqm00qNxF
         yWxc0dTBikJzkIWHQj+XXP0jpTnsfvgfaTkDhHgfx82tbCptIbbNg1yNriQlnfP9Wupv
         LLPv2IZ/7VMNTyD41jH6dmb2meu8IASh3WHenp098EyI49liAzcJw1k1QD3iOuFVmFS+
         qcTphFVn3i42IXN+Dy6i4dp2Ig4ut1OomdydaKbXYqHC0r9bNdGiSgpvLRrzJ1mUA3Rx
         YhVQ==
X-Gm-Message-State: AOAM5337XCZ6VTeBZydZDYDhZIfyXmMc91G4xwfcljrN6AUgx5MxyWoz
	xuwmELRZqthLDCn1I5EieuE=
X-Google-Smtp-Source: ABdhPJwHnGmL6q32Xz08snAjM4pKMr+X+B/2ituEyE9daoPUs5O45fNQrrEE30i6Ak/qcmGGxAB7ow==
X-Received: by 2002:a37:a683:: with SMTP id p125mr27253823qke.422.1607406415217;
        Mon, 07 Dec 2020 21:46:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:30ea:: with SMTP id 97ls4883852qtf.9.gmail; Mon, 07 Dec
 2020 21:46:54 -0800 (PST)
X-Received: by 2002:ac8:75c8:: with SMTP id z8mr820493qtq.256.1607406414778;
        Mon, 07 Dec 2020 21:46:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607406414; cv=none;
        d=google.com; s=arc-20160816;
        b=DOZyOSkWmP6GN85grXSXKG3OvXHx8c4upOCvxBsZIsRXN/DEo0K9zw9cu2mxeS1ZNW
         wCybkq5qGMJLHf8DJCEOmB/QycxrT3eQyP42UtnqjrHRc0ibMJyozUlJ6zG8xZ++953u
         p2IJHskNFpGUCEwWLE3ap+0EI6+AmAxEyWDSdwQ9RSYIIeCkHbj4etIiZXkelN9vFAGR
         7rcFmngPIrRgiCNGp0hwJCCpwCe0BWyabeB+5QVq+smOzf8Lp0qj0KJh3bbwh0faJ66E
         SNCtJNd+hR5The6JKm5KX3O0RqrhkrtVnaOP0SpTGBNDcnGmuPv79PR+e5eggHtkeEy8
         xICw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=e1pDmuZWJgETEHbU+21FKLtGXbFndqwbo33SoyyNrOA=;
        b=FHE16FliRwAsdnyO8fnbX6G9ZQQ5hk20HAYSQdOaJ/GAn22POkBh/bD4cH2HnGxRHr
         gFcUeCT974zLcpWi/wTq10Mw9Vxfjo9STzTysBrjznISLmrE4Qn1JfzB6YVs9c1tNzaC
         o4nFK4usA42tCEawKJ7XGI/zszyeNU6BoXgBaGQDv1nTJSAzSglzycDaGwP52TJLELq1
         DR9Xzvw9e6DIrqNOlNPdPqnsc4dotelDFqGZng35f/W2OYe8Q29vufMmqFyFZvA6xfvF
         lcDQajE1GCul4Q4OgnAY/DXhVweEHcMCE7n9C4FMS3fDl0D78jerzQ3ubfATwDEyckoA
         czDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I4pGl9G+;
       spf=pass (google.com: domain of 3thppxwckebuhvnfmvtbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3ThPPXwcKEbUhVnfmVtbjjbgZ.XjhXgVib-Wpdgo-gdipsbjjbgZbmjpkn.Xjh@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id n21si1043862qkh.0.2020.12.07.21.46.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 21:46:54 -0800 (PST)
Received-SPF: pass (google.com: domain of 3thppxwckebuhvnfmvtbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id f33so13138056qtb.1
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 21:46:54 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a0c:a8d4:: with SMTP id
 h20mr7977172qvc.52.1607406414446; Mon, 07 Dec 2020 21:46:54 -0800 (PST)
Date: Mon,  7 Dec 2020 21:46:46 -0800
In-Reply-To: <20201203202737.7c4wrifqafszyd5y@google.com>
Message-Id: <20201208054646.2913063-1-maskray@google.com>
Mime-Version: 1.0
References: <20201203202737.7c4wrifqafszyd5y@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v2] firmware_loader: Align .builtin_fw to 8
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>, linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I4pGl9G+;       spf=pass
 (google.com: domain of 3thppxwckebuhvnfmvtbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3ThPPXwcKEbUhVnfmVtbjjbgZ.XjhXgVib-Wpdgo-gdipsbjjbgZbmjpkn.Xjh@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

arm64 references the start address of .builtin_fw (__start_builtin_fw)
with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
relocations. The compiler is allowed to emit the
R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
include/linux/firmware.h is 8-byte aligned.

The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
multiple of 8, which may not be the case if .builtin_fw is empty.
Unconditionally align .builtin_fw to fix the linker error. 32-bit
architectures could use ALIGN(4) but that would add unnecessary
complexity, so just use ALIGN(8).

Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
Link: https://github.com/ClangBuiltLinux/linux/issues/1204
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>

---
Change in v2:
* Use output section alignment instead of inappropriate ALIGN_FUNCTION()
---
 include/asm-generic/vmlinux.lds.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..b97c628ad91f 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -459,7 +459,7 @@
 	}								\
 									\
 	/* Built-in firmware blobs */					\
-	.builtin_fw        : AT(ADDR(.builtin_fw) - LOAD_OFFSET) {	\
+	.builtin_fw : AT(ADDR(.builtin_fw) - LOAD_OFFSET) ALIGN(8) {	\
 		__start_builtin_fw = .;					\
 		KEEP(*(.builtin_fw))					\
 		__end_builtin_fw = .;					\
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201208054646.2913063-1-maskray%40google.com.
