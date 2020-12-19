Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMF7637AKGQEQHPQSVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 007DB2DED8A
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 07:37:37 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id k68sf2167863otk.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 22:37:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608359856; cv=pass;
        d=google.com; s=arc-20160816;
        b=EhDLj9pWc0AmMZKa+lldFRdWtEn4VIvJ31Ruva4olQ9qUxkvxru8mCx6oqfDqRT1jp
         EJQ6MMxPR9KOjAK1cWkpv+Ja3pwMEEERBM+s5sfUXL05HW9pAXIVVf60p1BkAjKJkWFJ
         WrSlJSFGyCj/Vq0c6dL1s+3Edj/em8nxHhkC7S/f6KJbPghI2ZQgoEx+rGAoOa83dIpJ
         7s6bzh35kdWMOyajUxwAqH1PmLVv5+STXMOIp0pp0W2X+axtcIEj1FISN1DTsoTWwiar
         SWCsoHSPHq/01Eb2aVj/ZtlRDQz8sznb/JyXzOhNVsbHZPbwwo6Xaowh/dQQORDR3mpK
         9sMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=WeQGxcvCwwOLTDar16CSFVt4EUuiNfh8Ym+7RTZLmD0=;
        b=fndG75U/vbYPVo5X1QxR+6LG9vCKBMG8/bY6HDmKaPDBjjULEjWnMJa8qZk7B/I4XP
         xxyMRJGawugF9fvch5WZ9FYMSZ50oVr/V6NaLAUelpNuzDwjHn5FHBIAgEfixa1GrZ8h
         B6xQCOKlwxyiUJz84W+bTGPjOiG9YBKtFWWYWSk9sUYBJwvzx/jD2RFlxeZeurQ70zGu
         GOK/XMCx4Rd20KRs69W+WLcc7aHVFQbvXXXrQJHXJNLwwGT1euQSF8ji+VNpjvGJXcAq
         NsQ6+vkXchiAXsyKhaFSdmsXt7it/91S9ebn/5xDKbP6/yKN0FUWksYhzwDPiDts5LMn
         0omg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dbQbmyo5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WeQGxcvCwwOLTDar16CSFVt4EUuiNfh8Ym+7RTZLmD0=;
        b=T6R0sOpu6i4+ue+TEgnbgs0w3GCa/uV7ustdYJpMUX7nDn7Nd3KgMySN1zuLCSeRD+
         9qwshftSNYFBUWMUcU1sTEDXeEcPBSrGUP+Mu3Ikpvva+xxaow+RK7UC2uFc9DOt06uI
         el/H7GL1+9xEiMLhFR6f9IVpgxaCNd+D+ufUGTk5QYpG+mLe/d0PzlKtNf1BcnYrZr6J
         Yi2lXuY6Y3nw7BXISLS1rnyaHXFOGg0o1/9vVJb5WkPErGd7cAW2TfK+iZ/ySMLT5n/S
         LWjm0bbMoE5fkZCOXGCeytopamKdpdkhtGhVIzr9oP5o4fU05+AhHcA86+5f3Xzm6RIC
         Ntvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WeQGxcvCwwOLTDar16CSFVt4EUuiNfh8Ym+7RTZLmD0=;
        b=VXIfwMOJPj4NOGiTupsAXAp+AwcSnggx103u1TpfrdtMysnTr70xWz4wA0gYsK8MYz
         Us1iTZUQHmO5Jff6j/15vY/IQPsLXZw/FfK2G8JLPDxp1P0SoHfEMiFFqZ4Cz+PvVeW3
         V7BeHXuBa4NoTQSBCGPnXvBEnvfRyGG2In0izJX9jh378wCUWqpSOAdhINIB/hrd/rTz
         UeyW1jx+/akCaqo8DNx7BSZWV3AoBKYYaXPsIba/2gPTikAbFn71gKfsDPCX44LZD4JW
         r4v8jEyXZ61ABbLG/1+1geNvOaXz2h0eE6mUwo4v5mhbZR33iqA5QE1Cd9aGskXmntMS
         jHRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WeQGxcvCwwOLTDar16CSFVt4EUuiNfh8Ym+7RTZLmD0=;
        b=nPSS68eLY0IXYl5v5lAuxKda1kErrAcCzeOqrxyXJ553L3JLT3/s2vQkJOqXYXRNUe
         5ZJkGbWkrjgL+WM8QvnxfBiOlNtCB6WpSwDlD0pWFpn7pPYXivkWZyUDkn3D4ElzKIts
         S8TzOZj+CmQiUC295Xt+IN+/nuY2iXx87yBnvEYN/usfyYUwT+Er8lk0an1+6qtBqDua
         7u1/Qw52K4l6u6q4aKJwu/0z4TWBppOen//0fNeT/pxElfw4cxYAQRbY+jiWlZgjK+es
         h1TfjH3wlB6dJMDBSFxmjZSgg3Aj9jWXmwOW2lEGROwS08JdCfcjh6X2qHJmR4J1FiyR
         Bh3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pZXeeQdH5ISb+YbxWmR2PQanqLubXtG3er4bPA+nWcaISCxCo
	bkgDbUDs6DN64BrhzpI/nFc=
X-Google-Smtp-Source: ABdhPJxaF42g4Ym/kUWlH1P5+A7S1E6FZca4b0oC12Wj1rFu7wPMBYyeCwpLBLWo6sQ3yC1xOn2tEA==
X-Received: by 2002:a4a:9c5:: with SMTP id 188mr5289415ooa.77.1608359856592;
        Fri, 18 Dec 2020 22:37:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3e01:: with SMTP id t1ls2281086oot.8.gmail; Fri, 18 Dec
 2020 22:37:36 -0800 (PST)
X-Received: by 2002:a4a:2cc9:: with SMTP id o192mr3631939ooo.66.1608359856162;
        Fri, 18 Dec 2020 22:37:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608359856; cv=none;
        d=google.com; s=arc-20160816;
        b=se7Oq1FPv59ayWl3QEQmDInbEBy5reUNG6DP9ht6iO5XYavLcOSfhfExd79cp0JvKW
         FTUzNYms1jW9bAItif3po1k9khdoCiOsTYwaNfPu9GNWJGl2pkmPqp0/k/mHRx7tFogs
         svVNPlKPfXxrRHw7hL0X8EMJyT5QuBSwLDlj/WAEA8bgK+QbXfKbhW3LhBYBqKPmTaNE
         ZRVCeNe9/hq/O6ktYO57v+JNyuDTvLvLurIcLdbDka9QPzxrZN9qMUc9g1QmzcG5x9yY
         oS4E3sUsY0sUrUX6l7M7e9M3uBQYtZtR0VBvD7xxFFOpPgWfdrGxqoRV5aJ4272eR7J5
         JLYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oQNPVL/Z8kaYEUYKx/1vCF4SResp7qAIYrNtCxrI8Hs=;
        b=vMRcWWcMsyyu8ON5Ac7Zlg1m2UH/xF313LbdmDkCRyE8ZiusbR9/PdJ2D1Qr6L04eY
         m+RmQjQHKDWI7MaQFMY+UusaKcDgnXdaGJcrsjdHTVKx/7DRWNBszAQ+H4I7Nippf3k7
         cP2xo1BdTlEO1HQY/i6xlbtZZqsd1s0c+GME12Tzzaj1KPcgQCV2cVZsAcHqcIZFGNaN
         K83YJXqWRAzz4GtC0pkqFXNNbWtQIw+iNf1k38GrC7t36SAlP7wOM0ds2dtyydagsuZ4
         9zndeTIpu9GmUIu5ut2uBipFiB1k+ElFJzxD/NbETheym8f/GP4Ri7AUxnpyOXlh0P0V
         wxMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dbQbmyo5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id u2si1304998otg.1.2020.12.18.22.37.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 22:37:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id i18so4198553ioa.1
        for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 22:37:36 -0800 (PST)
X-Received: by 2002:a05:6602:81d:: with SMTP id z29mr7035171iow.62.1608359855758;
        Fri, 18 Dec 2020 22:37:35 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id l78sm8660998ild.30.2020.12.18.22.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 22:37:34 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>,
	Joerg Roedel <joro@8bytes.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	kvm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] KVM: SVM: Add register operand to vmsave call in sev_es_vcpu_load
Date: Fri, 18 Dec 2020 23:37:11 -0700
Message-Id: <20201219063711.3526947-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dbQbmyo5;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When using LLVM's integrated assembler (LLVM_IAS=1) while building
x86_64_defconfig + CONFIG_KVM=y + CONFIG_KVM_AMD=y, the following build
error occurs:

 $ make LLVM=1 LLVM_IAS=1 arch/x86/kvm/svm/sev.o
 arch/x86/kvm/svm/sev.c:2004:15: error: too few operands for instruction
         asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
                      ^
 arch/x86/kvm/svm/sev.c:28:17: note: expanded from macro '__ex'
 #define __ex(x) __kvm_handle_fault_on_reboot(x)
                 ^
 ./arch/x86/include/asm/kvm_host.h:1646:10: note: expanded from macro '__kvm_handle_fault_on_reboot'
         "666: \n\t"                                                     \
                 ^
 <inline asm>:2:2: note: instantiated into assembly here
         vmsave
         ^
 1 error generated.

This happens because LLVM currently does not support calling vmsave
without the fixed register operand (%rax for 64-bit and %eax for
32-bit). This will be fixed in LLVM 12 but the kernel currently supports
LLVM 10.0.1 and newer so this needs to be handled.

Add the proper register using the _ASM_AX macro, which matches the
vmsave call in vmenter.S.

Fixes: 861377730aa9 ("KVM: SVM: Provide support for SEV-ES vCPU loading")
Link: https://reviews.llvm.org/D93524
Link: https://github.com/ClangBuiltLinux/linux/issues/1216
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/x86/kvm/svm/sev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kvm/svm/sev.c b/arch/x86/kvm/svm/sev.c
index e57847ff8bd2..958370758ed0 100644
--- a/arch/x86/kvm/svm/sev.c
+++ b/arch/x86/kvm/svm/sev.c
@@ -2001,7 +2001,7 @@ void sev_es_vcpu_load(struct vcpu_svm *svm, int cpu)
 	 * of which one step is to perform a VMLOAD. Since hardware does not
 	 * perform a VMSAVE on VMRUN, the host savearea must be updated.
 	 */
-	asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
+	asm volatile(__ex("vmsave %%"_ASM_AX) : : "a" (__sme_page_pa(sd->save_area)) : "memory");
 
 	/*
 	 * Certain MSRs are restored on VMEXIT, only save ones that aren't
-- 
2.30.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219063711.3526947-1-natechancellor%40gmail.com.
