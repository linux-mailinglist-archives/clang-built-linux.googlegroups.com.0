Return-Path: <clang-built-linux+bncBCM33EFK7EJRB5WS77WQKGQEHH5ZP4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D8563EDB2F
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 10:03:50 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id f2sf6187845wmf.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 01:03:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572858230; cv=pass;
        d=google.com; s=arc-20160816;
        b=NDRScZXpSBNEsYSvvh6jdaX0r6UsX3DzuFbwGjzFCUqoOslirOoddgONJeVXdLxPwC
         C6/tDc2bNxPAfZRk3F/3iqw3i/PsiI2NcGxpjyln6yXGztOaHxYL/qzhBfqlL5QVF43C
         juz3oa3TiqHzzm/J1sw/Gtybtj9pBdn5krnREI9oy8SQXt2wAZShcojR60tBdHNym2gb
         X3mN3J8x8H+TcMFOslf3PGJTdXZC5r+rRQCWr8qTp9FRSX+mPI7XZ7tc0IlbwyQedwh+
         QgT2u5hENcZ5bMOuxmKueBxgDzahqF5Fx8RQLHWWYSHPRZG/AAG3kLTn4pgyZlv63Dc/
         wwjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=+9P0dvk1uiYaTqolmYBaoEqaekHNyi2OPLMuKsqw3ao=;
        b=NR1tM01URYnDlYPPOLdzPDgN2BSTBAgnWhh+bWCWliLXVP+u+CLUJcEJ6sdfJ++Mm2
         G8Ynqv7Y7xx5PFRTVqBRGreTOdSlqrzADYb9+WCzG3idGG31Y7IuL6cCOPjUejB0sRZ1
         VD5wQyPMHmZUpaOn5eAkVXUTqfemvF19bOU+kP7YyeEB/h0YP/kYoXc39HbUN2vGEVU/
         oB6N/qbPH0k66Bob0s+g2Iqd5J+y7y6O0+FSOyXwbf0lRckEvDsu7oYt3NZ4pnJTxJKr
         Pf38DHCw+ZA77eevTrEs5KSgrq+b1lv1HdmGgwqJyBbbJi5F1UJexu7q7Eqzaqo8j0aB
         91FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j06SGU3h;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+9P0dvk1uiYaTqolmYBaoEqaekHNyi2OPLMuKsqw3ao=;
        b=JpPJ0nyvFiXfD9jxBmbEpF/PD+AUB8dE42NYEQNMp5z0p6LDcK2N3Ebt9trtcUu15D
         aKT2/U1cjj1WCkNwi+jITTVbUwKLiEEgMP4NwoXFFK7AP0VoF68GG0rf0ubF+fHL//pt
         gXUhlSteFWHb2v0cZOxBz3ZTlkMxO2rJKQBfuVQmyNxtUyWLFLjfJti/IaG+CvRZJpPf
         jNIEvPPKbNaAOUROXcKsH6k/UIkPERNE10hVMLlS8N8cHFe45U85GeUvep4DTW7O5TGL
         tIpxET8R0yT601QFcAMRSkJqubmuOS6tTWGkhEhg9eQWgUu9TN9IKjtYqJO/zkGrD72z
         aALQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+9P0dvk1uiYaTqolmYBaoEqaekHNyi2OPLMuKsqw3ao=;
        b=iCv2rOlCxfmVozG1QZ9KuA955qWALzkZJNAe2ctnFepEaLSLM+AtZ8QdNQvTXmymvQ
         ftIMS5D0ajNLM2sO1b+ezWfZ4SVJw5BxayQrMt+VvwhDU93XZ15SLFJhF+ahq53KUVbN
         xGTaiPTNa6LS3AQlSks7WNhUW+N+62vMdiJJeD2dnYVDXXCpMyZnxNAlr2XoK0bbX4ix
         aK0C3kKEfCOrRoX3DQAhBQq+/YUtxq7BfyIX0gXb08zflvfCPFD6wfYv/sPeqAaqXohC
         jWk7wggAvwFMIxdiNe531yenDldpmhxklhVL9mBnxjstR40AtUHi7rbsuXqDKKGIOcXj
         32XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+9P0dvk1uiYaTqolmYBaoEqaekHNyi2OPLMuKsqw3ao=;
        b=EBNtPzxAoZzl9bEmjW/my4DBK5FnDslfT4CGS0DMeRoYtASsR9+rgF+vdJTXA6M+mT
         QDBzkLMOIshmgoP3fPx2VY50BlHKMeTFmfcvhyqyriaYPpM0efayMLOJxdkdRzZ97vm6
         g9dvv2QSWuBLnwZ3iEgqoE6jHSU+wEbczHnjpARfbDB3uRKeYdTxqLgiozkW9SSWxryS
         /Q+D+srf6Yc3WUO51o+CBEdhiphLPznEdrs5HBRSiy5o/KIAm6QsgK8ZG9iGlYJ1Mfg7
         a9XVj+yTTk/lc0XmrBRqPWNCqOipmXrVydY17jPRB4jSGFXQkdHRXVvLZFMRW2bKMxQs
         X9xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUNg3QYx54VcbwQi22rkBKmdSoWlUuv4/OZJ9VjxVRAVDddJ2gW
	hXUQU6goNxXHw3Oc0ZNFNxQ=
X-Google-Smtp-Source: APXvYqzLa2OQC73ZK62fiI31ZujPzxjIbqn2weJxjW/yvH7vOC6olb2LWb5t/jDEvKqEZ6uteAm0ew==
X-Received: by 2002:a05:600c:210b:: with SMTP id u11mr20434378wml.170.1572858230606;
        Mon, 04 Nov 2019 01:03:50 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1b0b:: with SMTP id b11ls16725282wmb.3.gmail; Mon, 04
 Nov 2019 01:03:49 -0800 (PST)
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr22505678wmh.96.1572858229959;
        Mon, 04 Nov 2019 01:03:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572858229; cv=none;
        d=google.com; s=arc-20160816;
        b=kgVUvrqYyg9v9Pwtu4/TvFYjvTv/7GTOOk6HrcLcXzZ7nSEVlsTJGwA//S5QGigsQy
         FlGPratgiMzx/6mHetwGXYE+bkRrOuPyGtIUxPy6GO/IOqi/4ciYDGkfSQ6PWdehHB3Y
         uI/2cdOWxO07dDPp/qOlX/zgIE5ckuW+RMsNpllE5v8sXA8wpKEZsJ5uc1gKd7UlWosw
         VUxIzxeWTfq5fjVGsGEBxTWbA67hwZZ65jlANq8Lz/9WdYrlbHNbLtvXEy6bQRKGnMfD
         CUbdnwo9i68JfAk+rEpUeDduIjta8QnUltO4NIIwC8qKRdDBIAcQVrnpDsiVZKXHzEZf
         LPVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y0YQGawiwSeX4aHJm0zQu9hKirW5TWrGPsoV/UHqG+A=;
        b=s3iQixK4ATRm57R2gXvzBXc6hxmUJM9YSvkKxirq/iHAEb5yy7/yTWoqqY2xMtLl/P
         KS9JP1Za55BW6M66xCuxkGdSDcWOgTpIdXWfyvn8mp2EFMFK8G4ccKanxQb3kxU3YsG8
         zhKjrjIbpNXtKzw5OF8Sbg8fo8vubODVEUzGGggG8Ngl8OOgLzl7AO+eEM3aWDCxhfBu
         UZjO1Yq2Y+qcijh/tvuSATfasz/iPPIjJA6iM+kxosuOjnsDHB73aDuFyICVrwk/wdkU
         M9QSVSfTWJtlHkZ1P01LL3gHQH12KKCXR4DyIKtKg1BdGbFtT1awmuFScAandNyrARob
         32iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j06SGU3h;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id t18si898740wrw.0.2019.11.04.01.03.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 01:03:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id z26so2500446wmi.4
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 01:03:49 -0800 (PST)
X-Received: by 2002:a1c:3801:: with SMTP id f1mr7726259wma.44.1572858229634;
        Mon, 04 Nov 2019 01:03:49 -0800 (PST)
Received: from localhost.localdomain ([2a02:a58:8166:7500:4997:f83a:5cb7:7659])
        by smtp.gmail.com with ESMTPSA id d13sm14493544wrq.51.2019.11.04.01.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 01:03:48 -0800 (PST)
From: Ilie Halip <ilie.halip@gmail.com>
To: x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86/boot: explicitly place .eh_frame after .rodata
Date: Mon,  4 Nov 2019 11:03:38 +0200
Message-Id: <20191104090339.20941-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j06SGU3h;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
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

When using GCC as compiler and LLVM's lld as linker, linking
setup.elf fails:
      LD      arch/x86/boot/setup.elf
    ld.lld: error: init sections too big!

This happens because ld.lld has different rules for placing
orphan sections (i.e. sections not mentioned in a linker script)
compared to ld.bfd.

Particularly, in this case, the merged .eh_frame section is
placed before __end_init, which triggers an assert in the script.

Explicitly place this section after .rodata, in accordance with
ld.bfd's behavior.

Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/760
---
 arch/x86/boot/setup.ld | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 0149e41d42c2..4e02eab11b59 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -25,6 +25,7 @@ SECTIONS
 
 	. = ALIGN(16);
 	.rodata		: { *(.rodata*) }
+	.eh_frame	: { *(.eh_frame*) }
 
 	.videocards	: {
 		video_cards = .;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191104090339.20941-1-ilie.halip%40gmail.com.
