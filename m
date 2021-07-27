Return-Path: <clang-built-linux+bncBDG5FNNX5ECBBYVIQCEAMGQE3XSBZAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 446AC3D783B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:12:51 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id d28-20020a194f1c0000b029038a8405fc0fsf5702423lfb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 07:12:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627395170; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0u2dFeGuY5Zs0mQZgkaWHGmkv75SDHFk06dreezTCqQWG3y0gCVjNPeMCfAR3nVpv
         9dWMQiEi2Wij5XjQfikSGA7VTlurlVY+8QKzKzIQS0MjqXWUakPpP0SSFShuC4wBj7fK
         eWD6ibZmvwYtOHsQMr7qtQkt+KWmFrw9an1UhKiFrsmBwubDqAcogREtpaNIlDTimtwc
         G5XUXSE88k2KJ3mRenafayzRmDBQmsxOsZSGcnhKvPDMCwiEC5WG+j1Tn7E5YpoWxKRC
         U5iI6pO5wgz649kryD8YEEwcz2lhZFyfeyKg6BHPScWq1w63HcVz88kX+3Wq0hWeq2ff
         wjZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:sender:dkim-signature;
        bh=5B+g6mxVMSeIGxEKuGbKrlFdx6qmNxkJw699mYfso+8=;
        b=hiDg1qDnDTcffkjGYQ+4qPc+ekWce+3ov37kO9w4d1xBSCcI1w6bkgZLDxfXGtU0er
         eV9z8KSuLtfyzTpE+wlvIn4SlbMeZazVCrN5Hyk27n23xuL5ZVaGluq63I9xY4X53ef2
         ufuf1y73YX3u7k4g4IzfwuPK4YOa9WaEFcTcwe7042Xvcs17drANdjbDFcFeWxvZmZED
         Q1oVj1WsD4XYQIIs/m9ENddO32BoklS46MOEjzwWuYVXsiWnnZ1tYv6qW+89MC4mvqoV
         nJhz3gtNw9xatB1ILWcCK+kgLCP4gYcX4GlVJqlzw6cBxhyQwDXmSFuGK5r9lfKKoBzF
         qr1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b="uLpt/P7S";
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5B+g6mxVMSeIGxEKuGbKrlFdx6qmNxkJw699mYfso+8=;
        b=fe5nXRfr+KBolG+dQnPMxqgQG9ssj7oq54KLwL1Ndv+QcdgLtEno9ZNVrfl2g8cOtP
         B48YPd6YG8gMMS3mypFPVfxegw6fIPFBjcRXPUXJVbanvOf+jBJ/0sOd+mm6T23YNYsA
         6gtBS60G2HZMPPMzCUt1ardWP9HxTOLgP259V/nEyV6KqZ2S3B6DnW/8gR8s/4++yEu+
         Des9F35gjcex2JCNiYljkakq/cX90gX0SoYAQPaoyHiEx5TUVXsAnP6o1hGFNoYe+jUP
         5RzKr0gEUzWpIU7l33ttfqZSQCR3GEEARBWYjq1ZknIPsfImstRs2M1TbBJWja0WZJSA
         P0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5B+g6mxVMSeIGxEKuGbKrlFdx6qmNxkJw699mYfso+8=;
        b=f2ZVVP95S3i9xZVJWvFBquJ2FH727AxKrutYxJjBn0acayVKpUCdCzhLGf+u3jy8a2
         5/SMHLE62LFgj8fLWMsf8/uy+6IJNhwbWvNIiWUfCPXBSpk5NQJqBh2zGsfTKF9QD6Ln
         1hKmUUijIh/JVE5NWZddQA37kBqB+9ywqH5DVR8EkCgLC/JqnH1EefLhrsiV4k23Laz+
         EkbwCFGfaNLGeDhi7K2IGmt3ER7KV1yYpicMqt/+7ZCdX9KOAnvNKfHFAm/1mZsjlDfl
         qVmiCrTg0Tu9qnIT5ig7vpB2Fe1jxIgsrxYDVKBa8lEi50hE2FZTQi9SaCyNJcYdyIep
         j8aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Hh652C+uGCX8hcaKcIGRpMmEcCoSvw7nJAlzseqBAux60PYAL
	v9Z8MoZjb2HjXqUHXlXT58w=
X-Google-Smtp-Source: ABdhPJx5XoZzV+y+njl5/1sein3vzh9qW8ITvLHsw/eh/dArZsgMT0thCcA8XtuZTY3+iD1U7j11LQ==
X-Received: by 2002:a2e:b00f:: with SMTP id y15mr15893225ljk.213.1627395170809;
        Tue, 27 Jul 2021 07:12:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:36c2:: with SMTP id e2ls404019lfs.3.gmail; Tue, 27
 Jul 2021 07:12:49 -0700 (PDT)
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr10229143lfd.529.1627395169858;
        Tue, 27 Jul 2021 07:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627395169; cv=none;
        d=google.com; s=arc-20160816;
        b=K7X5GcQIuvEKkpyHLmffMXAUqzFmnaNTNGDXoaWw5bkBq2jZuve+Fnt23X3LoYcQd/
         azsAJAdn3m275ewoGZpYkMWZE9tVIorlwHn3DX1kU8N07gmr+5QnAlU3DHSJbIwSHsEK
         1j1PPLjFzFPjEW8uPO3qLCFtmzil73wuae0si+hBmdhPpxszW4f0IaiiRTMh2BBnS7fb
         k2W/DDT3aAwjU6I0EH5jNlJe+FT24I+/Nzd3RaL8bVNQ134jXCdc4/CEmw93P3rEYwl6
         ahGm4YoGKFEkoudzbwN7vDzm+81vYw99o5YRl1mp339fdpkOonAHZ1NnEN7HWv1NdV/P
         zniw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=QR9jJL/Uvm+62LnA1ziwlgBrfvBLKf5QTJFduM8WRLQ=;
        b=J3SPHnotKbuwXYZBYqFQANHTnV3lVpAa4KKakDw0wn5bJEgXmQ/ZPwlZhl5t9es1aB
         H2SiZkzr92z167p8QtL4cITJu0FtaZEq84vVl7GMyBpU4kFagBIN9e8b4DutJ/wGFso4
         8Qun3NffUODlLRY3sP+dFJyeoCHMhgGOUa56D3eSU0x3ATHxcUFagUwdLzatMljWocwN
         mnR8+0C4llC5FWFhg/3yrj68sSpnTTXmXYRaOhLc8WmBTDNMAta5D+a73HCx/7QIerNv
         v6UKf2PgvRJqpcr37BAV0pM7ff++bMykiobUcwgmgtLpU/PD9YJa4+Nfbfd05qZraGgO
         KrtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b="uLpt/P7S";
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id 14si168895lfq.2.2021.07.27.07.12.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 07:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id z4so3517688wrv.11
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 07:12:49 -0700 (PDT)
X-Received: by 2002:adf:c3c5:: with SMTP id d5mr17081357wrg.76.1627395169375;
        Tue, 27 Jul 2021 07:12:49 -0700 (PDT)
Received: from localhost.localdomain ([89.18.44.40])
        by smtp.gmail.com with ESMTPSA id t1sm3403912wrm.42.2021.07.27.07.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 07:12:49 -0700 (PDT)
From: Pavo Banicevic <pavo.banicevic@sartura.hr>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	ivan.khoronzhuk@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	matt.redfearn@mips.com,
	mingo@kernel.org,
	dvlasenk@redhat.com,
	juraj.vijtiuk@sartura.hr,
	robert.marko@sartura.hr,
	luka.perkov@sartura.hr,
	jakov.petrina@sartura.hr
Subject: [PATCH 2/3] arm: include: asm: unified: mask .syntax unified for clang
Date: Tue, 27 Jul 2021 16:11:18 +0200
Message-Id: <20210727141119.19812-3-pavo.banicevic@sartura.hr>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
MIME-Version: 1.0
X-Original-Sender: pavo.banicevic@sartura.hr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623
 header.b="uLpt/P7S";       spf=pass (google.com: domain of
 pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::42f as permitted
 sender) smtp.mailfrom=pavo.banicevic@sartura.hr
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

From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>

The samples/bpf reuses linux headers, with clang -emit-llvm,
so this w/a is only for samples/bpf (samples/bpf/Makefile CLANG-bpf).

It allows to build samples/bpf for arm on target board.
In another way clang -emit-llvm generates errors like:

<inline asm>:1:1: error: unknown directive
.syntax unified

I have verified it on clang 5, 6, 7, 8, 9, 10
as on native platform as for cross-compiling. This decision is
arguable, but it doesn't have impact on samples/bpf so it's easier
just ignore it for clang, at least for now...

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 arch/arm/include/asm/unified.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/unified.h b/arch/arm/include/asm/unified.h
index 1e2c3eb04353..8718f313e7c4 100644
--- a/arch/arm/include/asm/unified.h
+++ b/arch/arm/include/asm/unified.h
@@ -11,7 +11,9 @@
 #if defined(__ASSEMBLY__)
 	.syntax unified
 #else
-__asm__(".syntax unified");
+
+#ifndef __clang__
+	__asm__(".syntax unified");
 #endif
 
 #ifdef CONFIG_CPU_V7M
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727141119.19812-3-pavo.banicevic%40sartura.hr.
