Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB4ERCCAMGQEVQIRBMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id F08A136893C
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 01:08:56 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id i3-20020a67c2030000b02902247e5e24ddsf2368884vsj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 16:08:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619132936; cv=pass;
        d=google.com; s=arc-20160816;
        b=zCf6SfLL1YN400Wak0cvm7+QZHy6C8pBDWYuiWidnrTBDeffWNNqghwTOuqegO1qsX
         AxfUVp/d/ecur2GDsjHN4VFV/rRYt9/39Z9e14ojGF2bIJTeEeTPXSrKJSLCMV/+I731
         Ij8jZ/4EOrIF/XmobYStbQ372Ms9lWimlXyoV0UEU8ioZbRDniNjrGalRR8Anm7WuVcl
         /KjjimDubNdjbAn1Nd/2d5UloTgqS5NAbVLrPConj246WxT+3oF9NuHRLo/ACe1Z0l2i
         eheMTwgiWBMPSinH1ZR1AABwaAHd+3GlamM3rGUVv49U4y8rSpWbvVfEqCmmr6z+/Ioh
         Nv2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=/QaHcQI4bgsHh2KKuFVyEv0OU2p4eW6GFGdBGT71X28=;
        b=pUa4m68wxZH9QrxkAoKBSd194hwEOaOqIgC7J7/O7kKsAU+4c2AfiYAG/dGUDblFM6
         0DJB6wjbMbreFOZVFO6MWy2/aF1TdXsoKvWLzTW1fOP0tWe50rO6Ng7EH4fdkyNxWr+2
         jC/1/t5Sm1ZG+baWJvR9b6Eb7rrprF8aWUJ/on8YyJosThd0tFRsOOqcFu4dPr4gI0/d
         mn1t8r0fJx+gpKxxzWSGwAYQYTyW6Or4eKzE3rPRGTKNuOGHrUTbXdu/W4nA1RigXnBN
         EaxKEDTqQBnh49GjWaBVPlz7eOjahATJ5Pa3KvBmiQS42gxaBrkqznSacJGbSnMkMLLE
         hOyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J4yBEElQ;
       spf=pass (google.com: domain of 3bgkcyawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3BgKCYAwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/QaHcQI4bgsHh2KKuFVyEv0OU2p4eW6GFGdBGT71X28=;
        b=SRmLm3TZzRy7OPpk9ko1fB2kk1+nIVsLn8AEEAATd8fOSl1Cq2EMz9LvEgRudcr9If
         d43NH+dGwqhPUDIV1uooFaAdceCn7VQswN5DLkb4JGL4a5ADnML5daZvNXGxh0POIAcH
         eOWtdhL8vA9s+9YusscaQ2G3Uf43dxlT/Jbluu48+5kFqGe/5x9O8/fYcB1Qy8BD+Cx1
         7pBId8RGZEyHVeiLH4zjAXsPvaZ0p8DswATRfilq9gVJrIbwvbsDFmcHK6YvSHdLPmug
         zLYskzTUyTuJ60/4I2VmkZPTMrWw+GtHsZjmxHPjiUYO3IvyvoUtDnCjCU/8MWDN6WE6
         Mf+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/QaHcQI4bgsHh2KKuFVyEv0OU2p4eW6GFGdBGT71X28=;
        b=XIvzrraUQnoMC4/XEdVGyevwBT6IUYdmsmRa1j9d4DcswcGNK3ptc/1s5us+jECzl/
         hol3DpU4haDTzlIar1JQ3ia4YhhYu79Pa9zMp6cEMuez2td9e207iKpw5Q8DZ8tnKr3W
         bRh+Un+CyNJrg7F6XIgsGyPkHQTToprU8a0Zc/cY3DYYdo/33P0tndbli42HClJLgqpl
         VbrHdEpTvXvAd4ourNOseu4RcIkpavJMKd7MK/OVZvJvkMuFcxuCgvSonXR56FakGbMJ
         wPuz0QU6Qv2uNL1iFdXkBYXECIozhi1Wt37Dcvq2mHAHAQXQOzbRCoVfhe78aA8vu5h/
         hf8A==
X-Gm-Message-State: AOAM532tPbxTgx3jjq/SZaeFRibRsUZ4O1xJq942KUzBLk0WNa+ByTfF
	ZCPrh9L0vYr5p0ILAu+YCl8=
X-Google-Smtp-Source: ABdhPJwqeKjcXRRRctGSjSuyKWDXH/oXb+YaC72eUwbSb2QoC0gDp/lH3ESwUId1aKifSdoS2OIzuA==
X-Received: by 2002:a67:4c6:: with SMTP id 189mr1106870vse.0.1619132935906;
        Thu, 22 Apr 2021 16:08:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4405:: with SMTP id m5ls734219uam.4.gmail; Thu, 22 Apr
 2021 16:08:55 -0700 (PDT)
X-Received: by 2002:a9f:31f1:: with SMTP id w46mr1001206uad.136.1619132935410;
        Thu, 22 Apr 2021 16:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619132935; cv=none;
        d=google.com; s=arc-20160816;
        b=Lqf6OxSueny2VLkQ4lvX7NYSh3/Hg/dN78MdVJWbBYk3WpXe/DW1Sz/Px1FLNVWEgp
         FwiDvzGKIf/+3ATE2PZA/cyuJTV97TclYUcPuHclXcEDfUyKWwbda6rV+8SLJR34L1OI
         e3hEcgEDqFU4gVoTRpryP/cHxlwG+riOApyOQDLzGUoI0Yg24WCsCc2iH1qERYYUGMP2
         JGOda40Cl0MRYeVQRpxRDqlas7j/yXKc5irvPdudTRwpOA2V9XxM+aNpS5IEWKILFHhu
         Omu0pfiR9MpRJTNe1cA/mwrSNi7lcQ7++Emj4CbEyZXnLvCewyBdWBuSBUFohcLir2ve
         I5qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=RzzE9tvH5mrl8JKXh6xEbaGN7MzALSjf4iPNcVjH73E=;
        b=qrFzAI7Nla+zMxMWu9VpWvbjPKfU3mBbykU0iry+bkPEy7XutOwaQ95exlttZLRWMc
         iTywqEUnyL5mdZUEEf9jGDKs4AF1so2/QiThcxe8rB86/+XG6vWKoO/WdCicD0/ug7d9
         BinysbJ17rO7nuSkgpej2Fp2d6SpxJHJ6d8H1B1U8bjJklbJrOkfsXRFc4AegsIhZn27
         wW4jPLgIEStT44BhNsniwFETpRg9tWRWLyBuj+yafjxhxKDFDYPYP1Uy0dNwHVUOq6IS
         BdUuf/O8+iqkCULRQKEnHLd5jmoBtHXpFMNhEfyH6DL3z+n/I6xLma0KDlHgVxqTvYAW
         c/fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J4yBEElQ;
       spf=pass (google.com: domain of 3bgkcyawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3BgKCYAwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id h19si789258vkf.5.2021.04.22.16.08.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 16:08:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bgkcyawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id s34-20020a252d620000b02904e34d3a48abso21858137ybe.13
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 16:08:55 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:9317:2762:871:5f48])
 (user=ndesaulniers job=sendgmr) by 2002:a5b:5cf:: with SMTP id
 w15mr1520641ybp.490.1619132934932; Thu, 22 Apr 2021 16:08:54 -0700 (PDT)
Date: Thu, 22 Apr 2021 16:08:37 -0700
Message-Id: <20210422230846.1756380-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
Subject: [PATCH] x86: signal: Don't do sas_ss_reset() until we are certain
 that sigframe won't be abandoned
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: clang-built-linux@googlegroups.com, Al Viro <viro@zeniv.linux.org.uk>, 
	Oleg Nesterov <oleg@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Willem de Bruijn <willemb@google.com>, 
	Xiaoming Ni <nixiaoming@huawei.com>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	Peter Collingbourne <pcc@google.com>, Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>, 
	Christian Brauner <christian.brauner@ubuntu.com>, Thomas Gleixner <tglx@linutronix.de>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J4yBEElQ;       spf=pass
 (google.com: domain of 3bgkcyawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3BgKCYAwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

From: Al Viro <viro@zeniv.linux.org.uk>

Currently we handle SS_AUTODISARM as soon as we have stored the
altstack settings into sigframe - that's the point when we have
set the things up for eventual sigreturn to restore the old settings.
And if we manage to set the sigframe up (we are not done with that
yet), everything's fine.  However, in case of failure we end up
with sigframe-to-be abandoned and SIGSEGV force-delivered.  And
in that case we end up with inconsistent rules - late failures
have altstack reset, early ones do not.

It's trivial to get consistent behaviour - just handle SS_AUTODISARM
once we have set the sigframe up and are committed to entering
the handler, i.e. in signal_delivered().

Link: https://lore.kernel.org/lkml/20200404170604.GN23230@ZenIV.linux.org.uk/
Link: https://github.com/ClangBuiltLinux/linux/issues/876
Acked-by: Oleg Nesterov <oleg@redhat.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compat.h |  2 --
 include/linux/signal.h |  2 --
 kernel/signal.c        | 14 ++++----------
 3 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/include/linux/compat.h b/include/linux/compat.h
index 6e65be753603..40ad060deb82 100644
--- a/include/linux/compat.h
+++ b/include/linux/compat.h
@@ -494,8 +494,6 @@ int __compat_save_altstack(compat_stack_t __user *, unsigned long);
 			&__uss->ss_sp, label); \
 	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
 	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
 } while (0);
 
 /*
diff --git a/include/linux/signal.h b/include/linux/signal.h
index 205526c4003a..20887ff4c27a 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -460,8 +460,6 @@ int __save_altstack(stack_t __user *, unsigned long);
 	unsafe_put_user((void __user *)t->sas_ss_sp, &__uss->ss_sp, label); \
 	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
 	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
 } while (0);
 
 #ifdef CONFIG_PROC_FS
diff --git a/kernel/signal.c b/kernel/signal.c
index f2718350bf4b..384030909daf 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -2815,6 +2815,8 @@ static void signal_delivered(struct ksignal *ksig, int stepping)
 	if (!(ksig->ka.sa.sa_flags & SA_NODEFER))
 		sigaddset(&blocked, ksig->sig);
 	set_current_blocked(&blocked);
+	if (current->sas_ss_flags & SS_AUTODISARM)
+		sas_ss_reset(current);
 	tracehook_signal_handler(stepping);
 }
 
@@ -4133,11 +4135,7 @@ int __save_altstack(stack_t __user *uss, unsigned long sp)
 	int err = __put_user((void __user *)t->sas_ss_sp, &uss->ss_sp) |
 		__put_user(t->sas_ss_flags, &uss->ss_flags) |
 		__put_user(t->sas_ss_size, &uss->ss_size);
-	if (err)
-		return err;
-	if (t->sas_ss_flags & SS_AUTODISARM)
-		sas_ss_reset(t);
-	return 0;
+	return err;
 }
 
 #ifdef CONFIG_COMPAT
@@ -4192,11 +4190,7 @@ int __compat_save_altstack(compat_stack_t __user *uss, unsigned long sp)
 			 &uss->ss_sp) |
 		__put_user(t->sas_ss_flags, &uss->ss_flags) |
 		__put_user(t->sas_ss_size, &uss->ss_size);
-	if (err)
-		return err;
-	if (t->sas_ss_flags & SS_AUTODISARM)
-		sas_ss_reset(t);
-	return 0;
+	return err;
 }
 #endif
 

base-commit: 16fc44d6387e260f4932e9248b985837324705d8
-- 
2.31.1.498.g6c1eba8ee3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210422230846.1756380-1-ndesaulniers%40google.com.
