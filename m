Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRH6ZX7QKGQE2DR6YAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1AE2E9F05
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 21:49:09 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id b8sf18273230qtr.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 12:49:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609793349; cv=pass;
        d=google.com; s=arc-20160816;
        b=SSDLb+qM07B4reKLugwgsdMlIMvAKUMvL7dTN/Et/uuHWcOlnjys/2waK38DvzOSvp
         3TAiGmQolr5Px4dIweTuQC3fosMN+A+N7w8O9WWuvdsXHO57HDqmrUzKw/2AOy2blf71
         B1B815NA6wBJBKWvKX+LNvqeVlzCCGEiZl3QoRAh7sXfPe2iYCTDcuyxhiFui0cmYEAV
         HElTA5NCWnbbZXIi2rQN2MUhRc8q7KzmAnludS9fv3BgOAkvwHlHp+/AKZLS/jqg/FCD
         q4ii8e/B3wkOMM16Yny3C1iUjGXypoOuJ/THkLwXdRFK491G76t2mqSDVpYO/ZbmnU8t
         NdoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=E8BfvzjX78MYXFwJkHBEXoVtODEMQOj7Ixr9r2PIl7Q=;
        b=FrUafOEjrtOgmIFA5QFJiI0BWqtf5VdiWOZYDY42JqKRt54gC5fJlojOuhiPGPasRa
         8YLZJoqHaX5b7pxhvEIDsBemHozgfw2dSaSCIpE61Vb5l6c+7UJ22HVFJ57sfjeiJSpB
         aBNspcN9pSq9pD2fFrihwZhhFmgBstYi/VP/r1POvu98o/vKQaZ3u445y37ADiupkvxj
         xyX1Dxobifaru/s4RuHr0gtRntVXEsqPEqmu5J15qxthO3SSFBhbmtJ9wBc4YCInQv/e
         FWCNHu7pEvnJdOF2UuzsV2n/l9d0HBdpTKVj/U5s3FGivyYBExEghGyJImqSHpNHfRfc
         glGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTViVEkr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E8BfvzjX78MYXFwJkHBEXoVtODEMQOj7Ixr9r2PIl7Q=;
        b=GYLQSMTKbsg7oy0NTEG+ra9R14e29zaQVPV83u2QNsiKUo7MOH4QDF+7U7VOLa+ByT
         qmR2F2x7icLkvEblvbNNPT1kF84ngtqCWAAom8j0FpwmXc+pewmvJrfprD+0+r1mkgb0
         Eb9aMe+2Z8hpNgygEMsOzuoURolmxnr29qj3lwK3NL3RZ0jCSy4D7AYfscWt8mPJ4MUd
         CqKh+Jf81ZHVeMICj66dc/K7Gj6ACWORrU8Gvs0FG95TPlb0ZBu+Fi2YllN9J39cuCze
         5D9AAYmsa06IhY49JCqG65B5Fo1ZMaynZwXrVt6U7/n2ekXfoi8o779+AqMfmKyhp/1U
         DPYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E8BfvzjX78MYXFwJkHBEXoVtODEMQOj7Ixr9r2PIl7Q=;
        b=tp2zmgvp7iLxSfFCKJrLta+U221sIVJMxGkVGmZERT3DB1BMeIonVunFQGRPSHbGIy
         adHOAP9BURMJcAwNib51wEZKeMbocWU69cGzwnlz2FmIoZbl1N9GAijv4DejGcDrKAzQ
         wE88sS5hz8Y+K4G0dLEw74C6M/CKIDtw7bnO0rqJe0KD5eswLwd/2H5++Nokok5yHGvc
         TDB0FYMUBWGq1w7HkkYgBES0QmLirDeSy2fHACK7XBZ2vQ4MvVK8iVhT3VYudOcJTPVf
         sd3JWkkvQEgvE+SQkVNBvpwxLnIRUydw1sE407qOhDVWohi4pTUY9mz/kIYJpwqvr4Fw
         KGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E8BfvzjX78MYXFwJkHBEXoVtODEMQOj7Ixr9r2PIl7Q=;
        b=fhR6JwG2igxF+ytc9Zm7xeThNmg2sbVJTIsLySVwCQkE89x+8Cv5e54z6WAUDoBxaV
         MXCC0S5sMirEZedOcVbE2k1q2wVQk1y/vEw52mAv8xinzbJM4DFjXcOnn2FSMfVr33uJ
         Zsv1I+WyzDPFzYpyKD7IgxmnmYmHCgHySkZXh2sWlH5hoo/KD41pa4eCiAdBhMcMBbyi
         5PDwv2Sf5q0E4jW+DroJMWjy1ODnpbOCRxIOaqxPSkxW2WZxP3XB/oAbgy/vcCNDdp17
         b7gimnKOjjXHRPth2RE4qPJF/gY6DBOtpxTN2ifB1E71MrT8sEJJeg8ckfflheMRclzX
         Bc0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A2BYuYEXddom6Rw4YR4SX0B4kw6j8rnFf1NpFfWD2Kodi60sZ
	Ws3Vat/hNvyWGHma4sR8XvQ=
X-Google-Smtp-Source: ABdhPJznwgWzofyBN8Shenk9b7NYdaTSH/Ks++w19vjI++mzQZbIWKkpYb4RqloKUJrY+dO+TnjC+A==
X-Received: by 2002:ac8:5a90:: with SMTP id c16mr73984228qtc.331.1609793349007;
        Mon, 04 Jan 2021 12:49:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f501:: with SMTP id o1ls21692630qkg.6.gmail; Mon, 04 Jan
 2021 12:49:08 -0800 (PST)
X-Received: by 2002:a37:a297:: with SMTP id l145mr71718652qke.344.1609793348618;
        Mon, 04 Jan 2021 12:49:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609793348; cv=none;
        d=google.com; s=arc-20160816;
        b=qphBndveI1dHqk/NkpDjhOQF2nwJS86/xuAErauM5NtEWGlauCPK0QyE8ZsQKFqIl5
         IAah65a8xZWia/+by8NaxS+4rTG3wV/vnb9vi2216qIWcJJEx8xbsA5EXWY7EuwIfUaq
         m3zgDuI6dBNZeyIEvqWbJH64KvVL1xR5cgxllVigW2TMrnJ1ENJVQ10wk+B8lgbqjyxD
         GCj/KfGDO7ikKIFm9+QcyUa+paw0S1dpiooCdQhau1xUFA20kejGtntOEHVBLVxEyyZA
         3E9mmSgeMOVcrGNOqBNjjwPJ1ACFpLK1kvXzBE6+m3DazD1zfxiHRfTJ1sYXs3yzTlBQ
         DJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0deU4ENrLoy0KwklsESPgFxyWQtFjK1GDUDq1gySRsA=;
        b=AloD8EbkOlqHrJxa4FaANkqNf7TyvZxl2wTdOIS22/caZ7IDuohQ7tcoIGw4vkHvcL
         /w6N2S8BKezNWmvu8O7p4PgrY5Gh5IsupJP9vdWpwccTreuWT/JNkaBs8DKZZZt6i54p
         uCBdm5nZI5IxGdad4fC+8pXGi1bbTyO+eeI8b1PhdiHajdu/DLwyM2KSSriAkClyx0dz
         KJtJu8yljdyjKkHYySQRlNUU2ARQtJwVvWR2NkiGpWWKKs7x6UTS7jpmWXXFX0mOn5Ia
         aGTUZcyxWO2Rvdll7bc2DZyRlsoV1rLRxPXundSv0FiCutdysw9uhlUw2RIkaz7bG2GS
         TGmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTViVEkr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id n20si3380135qta.1.2021.01.04.12.49.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 12:49:08 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Received: by mail-qt1-x82d.google.com with SMTP id u21so19429444qtw.11
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 12:49:08 -0800 (PST)
X-Received: by 2002:ac8:5956:: with SMTP id 22mr73233053qtz.63.1609793348136;
        Mon, 04 Jan 2021 12:49:08 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id c136sm27688101qkg.71.2021.01.04.12.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 12:49:07 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] powerpc: Handle .text.{hot,unlikely}.* in linker script
Date: Mon,  4 Jan 2021 13:48:50 -0700
Message-Id: <20210104204850.990966-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BTViVEkr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input
sections") added ".text.unlikely.*" and ".text.hot.*" due to an LLVM
change [1].

After another LLVM change [2], these sections are seen in some PowerPC
builds, where there is a orphan section warning then build failure:

$ make -skj"$(nproc)" \
       ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- LLVM=1 O=out \
       distclean powernv_defconfig zImage.epapr
ld.lld: warning: kernel/built-in.a(panic.o):(.text.unlikely.) is being placed in '.text.unlikely.'
...
ld.lld: warning: address (0xc000000000009314) of section .text is not a multiple of alignment (256)
...
ERROR: start_text address is c000000000009400, should be c000000000008000
ERROR: try to enable LD_HEAD_STUB_CATCH config option
ERROR: see comments in arch/powerpc/tools/head_check.sh
...

Explicitly handle these sections like in the main linker script so
there is no more build failure.

Cc: stable@vger.kernel.org
Fixes: 83a092cf95f2 ("powerpc: Link warning for orphan sections")
Link: https://github.com/ClangBuiltLinux/linux/issues/1218
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/powerpc/kernel/vmlinux.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 0318ba436f34..8e0b1298bf19 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -85,7 +85,7 @@ SECTIONS
 		ALIGN_FUNCTION();
 #endif
 		/* careful! __ftr_alt_* sections need to be close to .text */
-		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely .fixup __ftr_alt_* .ref.text);
+		*(.text.hot .text.hot.* TEXT_MAIN .text.fixup .text.unlikely .text.unlikely.* .fixup __ftr_alt_* .ref.text);
 #ifdef CONFIG_PPC64
 		*(.tramp.ftrace.text);
 #endif

base-commit: d8a4f20584d5906093a8fc6aa06622102a501095
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104204850.990966-1-natechancellor%40gmail.com.
