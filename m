Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBBVLULUQKGQEFDKR5OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E17D67111
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 16:13:27 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id o9sf2418925ljg.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 07:13:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562940806; cv=pass;
        d=google.com; s=arc-20160816;
        b=cqTaRLzAwVOqsxu1mIMugPtPQVvzO97YzemZ8Zog6T74gRBcsg+Rh1LE2awibHyVcu
         WVENjPiX1MPNTH5Gx9yhfFolfJ4aaZH73Ix0ODFd46w1Ifrda+XQZ/KkFEjczVhDNtkn
         0INBcwpLHNWY4pituEK41GDqNxGTlHTzjzcR8AnQNi0+Pu3gunQVG3Y9pDpeTpiDLjGg
         HqHnL2o9WzH9j4mWgqFSeZy3ebVTuIjwmuS5vBvfXnFTwj7N1+1Df4HmLyym8LF0nR4J
         tbk/xXPzmEeqMK7Td98uX3TNDs1Xo+yG1qtoy3GmNzcr5KSEdwucqYQqPXj/bD4JUoY1
         KSag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=VlcVHgWl5jauLwHsUVzDq/+tEB+TazUDnGES8BJ86kk=;
        b=cUSUZtY2Fg4dEjJwUNl7jdd09UNyz9HeV1xJac4VNmHeH/6VH1MOK9PdDzfb9D2ehN
         E/r6gg+1CaC3LbV+mHq5MDDdfTXawIAWfYka5YddGKsXniV+Dd+UWwdQTp4/sdeGr1pu
         TDCqW5/VLQ8IS50qVN+6b5LBDqON++BZ8FUR27jOB/GBXwIkLc+PYwb8SbIR9NFsVdeg
         V4C+bfwWZx7QsID52Ow756/vOHs+jv5aDsXRyOg+2x7/RiNT749oJobfzPgsiEkCQCCo
         0mVPYPRT1pxBRe01P2tFwQo1R40altpFbdAazTV140k+nRNiLFKjZtf19LOsZlDRJm8j
         rTew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlcVHgWl5jauLwHsUVzDq/+tEB+TazUDnGES8BJ86kk=;
        b=R5ylt3n97qP1nBp4fVAjNHAMjONFit4LtSDIttu8KQrzOR4U6F6v3LU0jKMEg1z9Zn
         jYpJbvvMY0lsvLQdzlHCustS2F8p4O0d3FessvBMLyauEn0s0h5czqHpFLnOp3DaGtyV
         kZwvaTEOUtQq6ZA8AyUAfwH/4A89yW8RdW2Wh9FphQ7m6ZPKX4oEzZ+n8wrChNm7wGWB
         Tc4q1hPfYqwLnFpC68x8ESqD0wlMdFaz7euZ9eOjGIqxwKbC9zjG7J9cuC2LBOCWG1c8
         rZDFO0b71ydBZceiSkJQi4yktDrOdXDQ41FIMOinVde/U4ShrjqHoVZp4rxHmnQM1dmV
         VU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VlcVHgWl5jauLwHsUVzDq/+tEB+TazUDnGES8BJ86kk=;
        b=Dr2NKYggdZ9YI+JnKl8WCwhoFOLbv5ogxH3o14CuBg0tv3FPVosdzxZFXlzu+dXIsD
         DX5RF+0u8bTevF5PxuJWU7Mf8sHMBgTP6a3e0O0i2tr3q5+BqRCDanjVu4wO9y2VQNiJ
         BGOmWZ3btaPnVH6AnNABLhUrenTs7NOgub9NJAL+cY6jOlcK5wMvBdzXEIfRAFPTPjsl
         bkRdubd6Pj1QRUKCCvjKfxz2PyXqm3aywfM3rZPNid583tLHSnyZe8EU9a96fxMPUiJ1
         v1HTekKTvrmjb2wWknYqPVSkuyRsGr8zC6/VjYcGOoumdKRNZm/MC/mzGUJigfRTmSfT
         IwuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUDsvakAFIA4QZh+N8957M041zYtMc5UOOLV3TmPV2mHeOrd5tj
	T9TunXhHcSNZpCE7Q56oHNw=
X-Google-Smtp-Source: APXvYqxrd7ji+CR7p9b+XKIvdmFIL88KpfxYVzU4AyqhM7aF6QSmFACAtvQaSLWcOdLhBWptndwSLQ==
X-Received: by 2002:a2e:5548:: with SMTP id j69mr6117472ljb.48.1562940806715;
        Fri, 12 Jul 2019 07:13:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:157:: with SMTP id c23ls1180319ljd.8.gmail; Fri, 12
 Jul 2019 07:13:26 -0700 (PDT)
X-Received: by 2002:a05:651c:87:: with SMTP id 7mr5848651ljq.184.1562940806414;
        Fri, 12 Jul 2019 07:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562940806; cv=none;
        d=google.com; s=arc-20160816;
        b=pJxnBRYg+58Meim1/D4mr8Ec2o5WmqqinUX92V3/akKNVj9SbGe8PfiHR219qSmCxA
         JJ51qllLzkRSDCbchXYpsH5TwFbgjCNij/hfO+yruE5t0tV3QLpA/vbD4xqZwPzSDAPG
         jZygAKVW069IZhY0Mch0SX6ZRX2s8H/oS8WfDFZ1dfQ3VgyOpdE1MrhLdFdDO+dQFBom
         FHsbeitoKLcBF3bVLOUHTYTDkxtMHf/b7kpiW1pXjeDEJ/3Fqj+kpPUSm17KZyvrYZVf
         gNyH1wB1yI/Q2UGVBssEHwUO6OgRAGpI99rThlekWo1T5NN/5uWasU+9x0XU5DSoB2I/
         i9cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=QEcyMVoVVK2aAgqjYqU1quQyj8I0rByqDbaPdzIBJgc=;
        b=x5E/bfJWpiaeiJrQtd11J+ffOcU8yA/wbWbjPpHdWFLd3Kwy11SQwvvBZO1qxrj4Qr
         Xn//ii8alsK4/sQHXzRAZ0iXZF7IChHPTk6Bs8f0Q+m+k3USWNXfRkOTvb3mJEERvRwm
         b3dTVYntAA6YODSIn7yoIu8Qrn7Zqgk3v9y6CFFzyybYKyEE86H1jKQEGakko2r3wKkP
         b7RiDl7aiVQLTkSVwuStyPNbyN0zpbkRkHX37tQ5RBgJ8RNxxa9SF/I9KMdoOK69Jtqn
         dXuh1zkNZtR6wv0GXS/cG+Xdhq6lha6jvGnlQTnakn3ib4CcnFaYavzlESHxCtmlYkZG
         ZXww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id q7si568970lji.5.2019.07.12.07.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 07:13:26 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MrQN5-1iIXRL1mzv-00oVFL; Fri, 12 Jul 2019 16:13:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Paolo Bonzini <pbonzini@redhat.com>,
	=?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Roman Kagan <rkagan@virtuozzo.com>,
	Liran Alon <liran.alon@oracle.com>,
	kvm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v3] x86: kvm: avoid -Wsometimes-uninitized warning
Date: Fri, 12 Jul 2019 16:13:09 +0200
Message-Id: <20190712141322.1073650-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:mtFUcYRsvqsqU3QJWJ/dFFjF0Yd9wHzp908nlZK83caY6JGVHPq
 LXymdLgLCegnaDKfu159IL/7oAudJltdZwXMGK63ZUlU+Jfths5bnLOzEW07+2q31Yg0tT6
 1cg0EE/DQ8ump88F0paELKlusq6DBC2eUaOp+T4qfsjCs0IEYgQKtvAVQsTYQPgN5n/2fGp
 epCCJ0s3Sh3bwoaLinvzQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LWYzu/LtLb0=:xHUs4tdQHd3Ct6Bu0svRXv
 PmWzRBS+0m95DYX/F7E+rFe5/XtDhnWQ6Tgs4mINPckQyZ/6MVAUsj0Xa70FI5l4+ppmPC7/x
 giOslqyC74d2r5fkPb6oDzt2fRVBSXCuNrWuX0zVgaJ8lou8DmUMBtpNmk8aVUsNx8yrJSZOY
 Z1tTYNcbvtrD+HQbondlxipmdzbY/YPT41GN1PvvrAPBX/49/8SYq8//DsoC0n2G/R7UKhldk
 0zhoRK/WgQqBNPXo7nMihjnp5CzS2HerKKy+uMmt3IFZvWb6DQGKv+miSTTd3alE0t0t3FaCh
 9iN0q+VNyr8gK1uAyY3DBYcD7Sp+cnr+e+XQqiWZDYKWPpV/IQD8UpNmOE3vytPncDe9MiDdo
 4SJMRG1ZOVUcOoZOqBzR/hGq/qiRfDXfQXYMPfDl72JS2H8TOCL3kNkAj4IXZegf1ObSCy8KT
 ewuqXTfwJLV/Oxv2e7toe2Ge+4yujGs5LgcYjcGsvJiZwjxM1lVDSHqazN5juGS3rMADkCgb5
 m8z4SlBUMsfYz+4h2dNYGw/hywY3xv8nDSoidRF9FwTgnI2uPJSxS2sCOiPARtNXloGKVbItC
 zXlx7ENBiMSKBz4uXbwTiMFAB/v8mVFzK/y06yHdq/L6ki33fBO2mh7j/DF9pXkkZcV4tcd15
 597nbyjIn8WS3XkTo4GeBukcP3LM1eXUqx8Dr5MYxrBfNFwm4we/sFFBTFAItSvXfIpwJcCjQ
 CwHjsApxyYZYx8uOwIvBbUb/Wjm/ii7WpxJIlg==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Clang notices a code path in which some variables are never
initialized, but fails to figure out that this can never happen
on i386 because is_64_bit_mode() always returns false.

arch/x86/kvm/hyperv.c:1610:6: error: variable 'ingpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
        if (!longmode) {
            ^~~~~~~~~
arch/x86/kvm/hyperv.c:1632:55: note: uninitialized use occurs here
        trace_kvm_hv_hypercall(code, fast, rep_cnt, rep_idx, ingpa, outgpa);
                                                             ^~~~~
arch/x86/kvm/hyperv.c:1610:2: note: remove the 'if' if its condition is always true
        if (!longmode) {
        ^~~~~~~~~~~~~~~
arch/x86/kvm/hyperv.c:1595:18: note: initialize the variable 'ingpa' to silence this warning
        u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
                        ^
                         = 0
arch/x86/kvm/hyperv.c:1610:6: error: variable 'outgpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
arch/x86/kvm/hyperv.c:1610:6: error: variable 'param' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]

Flip the condition around to avoid the conditional execution on i386.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v3: reword commit log, simplify patch again
v2: make the change inside of is_64_bit_mode().
---
 arch/x86/kvm/hyperv.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/x86/kvm/hyperv.c b/arch/x86/kvm/hyperv.c
index a39e38f13029..c10a8b10b203 100644
--- a/arch/x86/kvm/hyperv.c
+++ b/arch/x86/kvm/hyperv.c
@@ -1594,7 +1594,7 @@ int kvm_hv_hypercall(struct kvm_vcpu *vcpu)
 {
 	u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
 	uint16_t code, rep_idx, rep_cnt;
-	bool fast, longmode, rep;
+	bool fast, rep;
 
 	/*
 	 * hypercall generates UD from non zero cpl and real mode
@@ -1605,9 +1605,14 @@ int kvm_hv_hypercall(struct kvm_vcpu *vcpu)
 		return 1;
 	}
 
-	longmode = is_64_bit_mode(vcpu);
-
-	if (!longmode) {
+#ifdef CONFIG_X86_64
+	if (is_64_bit_mode(vcpu)) {
+		param = kvm_rcx_read(vcpu);
+		ingpa = kvm_rdx_read(vcpu);
+		outgpa = kvm_r8_read(vcpu);
+	} else
+#endif
+	{
 		param = ((u64)kvm_rdx_read(vcpu) << 32) |
 			(kvm_rax_read(vcpu) & 0xffffffff);
 		ingpa = ((u64)kvm_rbx_read(vcpu) << 32) |
@@ -1615,13 +1620,6 @@ int kvm_hv_hypercall(struct kvm_vcpu *vcpu)
 		outgpa = ((u64)kvm_rdi_read(vcpu) << 32) |
 			(kvm_rsi_read(vcpu) & 0xffffffff);
 	}
-#ifdef CONFIG_X86_64
-	else {
-		param = kvm_rcx_read(vcpu);
-		ingpa = kvm_rdx_read(vcpu);
-		outgpa = kvm_r8_read(vcpu);
-	}
-#endif
 
 	code = param & 0xffff;
 	fast = !!(param & HV_HYPERCALL_FAST_BIT);
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712141322.1073650-1-arnd%40arndb.de.
