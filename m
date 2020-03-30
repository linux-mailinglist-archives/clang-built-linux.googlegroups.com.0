Return-Path: <clang-built-linux+bncBC47TRXEZUKBB56PQ32AKGQEMDHP2KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 735E819761B
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 10:04:09 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id c8sf14142805oib.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 01:04:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585555448; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ld9KVLkAAkCzlBh3kxulqrCSwZmVU5B7ljKchPPq5+pWS1ZmkWK5fhaAkrDPpqiFvO
         PPVN8dtGbPQ9KLp/EERdnKCB88hrz1F78MgSJOcYbVXAc7IeH5x3aRSRgz1h3k3AbWhh
         RA1vVktz0j9P7/jVjH+aIWYcn8dYGwS+omHWTXz7KNaHsETJQs/fjX5r2/fWsxfE1Ott
         G2sSTCSv7EJtxEK8rG/WG/Zefm9WIU2YgKEbSBFRFmZUEfNEY0Xdc74kDMTzT3zmnLGb
         pyuogDubEES0vOnYVH+3rgSEqu+340KLZs4dClcnosljjW8b4FB/ppPUcKV7kvjJDV/Z
         5AFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RVJH7LJfZ27ZktCjYyyMproYsb7xxo51CEzyXr5EPfQ=;
        b=wt0ZdVnbMBzfigLYOmzrCBhrb7B2r1A8pCaCW/lGN3aCJybCcD+Z37xQRbdQHnvMQy
         8AgiAP7v4JSrNj/UgWrai4rA3uFuHP08lxOmaQi73xNWRMpelh8ZaJ/sirpNi8QbMyYp
         y1rkUZTttk3dflH6dfJIbchTVz2hic2ri7ZnRJWydBDwNOLzvHUuKJ/GW48OvYIHQRei
         94mvlpKKr6t0diJnVPi7auvGQ9cTJTxQe6kQvRTScEtRiaL5J019tBN6lnedXF0gPRhM
         a+qxKeRGV9ldu+pHJAQzQKF1MbHGEqjFlYGZqWZxYxZL7OIjcMvJ/7mGPkip5ulh00fF
         sxkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R5aQu0gP;
       spf=pass (google.com: domain of 39qebxgckeuclx30kn2pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=39qeBXgcKEUclx30kn2pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RVJH7LJfZ27ZktCjYyyMproYsb7xxo51CEzyXr5EPfQ=;
        b=TguYtaBO8FRVmUCu3DbVD2FKBkHbn4KRKXqxWhNAS6Q4/2EtRyV/2ar0YLuWmlzC0b
         /228PNkdA049IojOPqInQ5IrSyIFf36F1houmaZuwGUad1LPqNtlYVQ7dpJs9QW/EIkv
         9wLO3yfCSYiGFscjKPU2IsjK11AcYYiQpxCGTwcHMDAk8L0pnD8khqEvGfes8H0NI1ZV
         dcT7BQwCzEej7xe4fRp6QwozGDFPF69z2REsDcFPPNzuyi7JLLTVzWnX+7eW9UI6hZfh
         bkS864a/XU2YJnrG/tlVIiRSocdsJECUaRaLNygjwkaflj8bPCJQ7p0VD1c/lgfWjvea
         W5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RVJH7LJfZ27ZktCjYyyMproYsb7xxo51CEzyXr5EPfQ=;
        b=Ltlqc/I88exv13uAuG/o+YC3n4+9+/i9zcjrvarFVh1j+IhzxVZBTmjW2uk5ABxDHa
         ZmrXIcxe1GqFHpPxHnAybAy99DzysikEXWVVe4m1Edxdd82B5WRsotIygOjV1CorAlz7
         Y9pL3+mS/gw6FNnGy0jMxomttrRg4Mt2EZMFBLBn/a11aqNof4YEufG0c2eoIhxE0lfO
         1reajH2awOFtY7TScm6ya1e6/8CubpwcDtV8isv3ng0mUpbeZVv1dqm161qG3YViYa4F
         i9kDOkyPPPDoxdTYCd21Oj3ONAOwb+aC20p8Be+pSV3FbL56BOAXmsD0dblAUdGpk7II
         Gc6w==
X-Gm-Message-State: ANhLgQ2HAiBQBEvyoITZZsJgbJI6Ynrzorugg1Kpg/wsutk8X/AJ9vVS
	CfJKhowLWajtEsz1ihTaU24=
X-Google-Smtp-Source: ADFU+vs9DQfclPOPDK1Df7NGKRIetJIlooOqx4cey5YqeqvYTVznkSC+XD8uhJGe6+QBPaDiIwg7DA==
X-Received: by 2002:a9d:3603:: with SMTP id w3mr8356843otb.94.1585555447820;
        Mon, 30 Mar 2020 01:04:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls5176640oia.0.gmail; Mon, 30 Mar
 2020 01:04:07 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr6955174oih.65.1585555447489;
        Mon, 30 Mar 2020 01:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585555447; cv=none;
        d=google.com; s=arc-20160816;
        b=UJHhGynq3v2eDMTu28JeRxQRFlOLMwLeKXAY6aUjaPPgn1Uj7j7WEaLlJO5WYzrfYV
         fhrcRDyqD7vt8WYd8n6nSG36ND5dhQShUtVlAfHyz0VzdKWFNOUBw5u3qwlMFnRgMBk+
         M7i31KX/zZjbboHUZewD6+vgbqd9qUcD5W1PHwSR5Q1KjgO0gIotl6xH8RuOAXHuhX7X
         VICzRsXUOrAznu6+LWfoTQH1qdf6PD2AYue/iWSvQe1yr1efQoGE9XU6+ghMni1mybJL
         N/ZnNIkOvp6TY6mbmcQMf8+cKxZvKgut+54aNJ4moS23kcpAnhYfcQORZjklQ9kOuyoQ
         eP/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=6uUpEI08oXikXCp5+9gsd81DMfh5aZ7xYc26aZNsMcE=;
        b=BUxxb6VhGW1LgoGO2ta5CWa6gVb03L3BGgpjnhHeI/RYRb2u+nxLe8wsagLrHjmZzz
         9JWu5NO5kKlgGa2+dIoOvoQ6alF4kRlzPKnuSe9WmM25o2vbTOjtB9MIl9MBUQxnYx84
         ET9RGMFf0AyUOzA0xFTIB+L0tSoZfbm7KaYnt3R3kox4SrXXxCDAZZ1SckeG4lnXDrob
         JAKxgTDfkfJ9tMQCh5Dth/ZqNXNBP+rvYtwt44VyjyOi2Jyt5o80XtSKGpAkaruhkPXh
         oC3GbeG63s455keEznQtK/T5C/oXJQXUXmGP+rtfoalbRmOZnwxdH5sRsonstLe5K/E7
         VuWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R5aQu0gP;
       spf=pass (google.com: domain of 39qebxgckeuclx30kn2pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=39qeBXgcKEUclx30kn2pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id d188si886863oig.0.2020.03.30.01.04.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 01:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 39qebxgckeuclx30kn2pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id x3so14227940qtv.10
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 01:04:07 -0700 (PDT)
X-Received: by 2002:ac8:6890:: with SMTP id m16mr10623891qtq.5.1585555446842;
 Mon, 30 Mar 2020 01:04:06 -0700 (PDT)
Date: Mon, 30 Mar 2020 10:03:56 +0200
In-Reply-To: <20200327100801.161671-1-courbet@google.com>
Message-Id: <20200330080400.124803-1-courbet@google.com>
Mime-Version: 1.0
References: <20200327100801.161671-1-courbet@google.com>
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: [PATCH v3] powerpc: Make setjmp/longjmp signature standard
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Clement Courbet <courbet@google.com>, stable@vger.kernel.org, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R5aQu0gP;       spf=pass
 (google.com: domain of 39qebxgckeuclx30kn2pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--courbet.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=39qeBXgcKEUclx30kn2pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

Declaring setjmp()/longjmp() as taking longs makes the signature
non-standard, and makes clang complain. In the past, this has been
worked around by adding -ffreestanding to the compile flags.

The implementation looks like it only ever propagates the value
(in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
with integer parameters.

This allows removing -ffreestanding from the compilation flags.

Context:
https://lore.kernel.org/patchwork/patch/1214060
https://lore.kernel.org/patchwork/patch/1216174

Signed-off-by: Clement Courbet <courbet@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: stable@vger.kernel.org # v4.14+
Fixes: c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")

---

v2:
Use and array type as suggested by Segher Boessenkool
Add fix tags.

v3:
Properly place tags.
---
 arch/powerpc/include/asm/setjmp.h | 6 ++++--
 arch/powerpc/kexec/Makefile       | 3 ---
 arch/powerpc/xmon/Makefile        | 3 ---
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
index e9f81bb3f83b..f798e80e4106 100644
--- a/arch/powerpc/include/asm/setjmp.h
+++ b/arch/powerpc/include/asm/setjmp.h
@@ -7,7 +7,9 @@
 
 #define JMP_BUF_LEN    23
 
-extern long setjmp(long *) __attribute__((returns_twice));
-extern void longjmp(long *, long) __attribute__((noreturn));
+typedef long jmp_buf[JMP_BUF_LEN];
+
+extern int setjmp(jmp_buf env) __attribute__((returns_twice));
+extern void longjmp(jmp_buf env, int val) __attribute__((noreturn));
 
 #endif /* _ASM_POWERPC_SETJMP_H */
diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
index 378f6108a414..86380c69f5ce 100644
--- a/arch/powerpc/kexec/Makefile
+++ b/arch/powerpc/kexec/Makefile
@@ -3,9 +3,6 @@
 # Makefile for the linux kernel.
 #
 
-# Avoid clang warnings around longjmp/setjmp declarations
-CFLAGS_crash.o += -ffreestanding
-
 obj-y				+= core.o crash.o core_$(BITS).o
 
 obj-$(CONFIG_PPC32)		+= relocate_32.o
diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
index c3842dbeb1b7..6f9cccea54f3 100644
--- a/arch/powerpc/xmon/Makefile
+++ b/arch/powerpc/xmon/Makefile
@@ -1,9 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for xmon
 
-# Avoid clang warnings around longjmp/setjmp declarations
-subdir-ccflags-y := -ffreestanding
-
 GCOV_PROFILE := n
 KCOV_INSTRUMENT := n
 UBSAN_SANITIZE := n
-- 
2.26.0.rc2.310.g2932bb562d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330080400.124803-1-courbet%40google.com.
