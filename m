Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNH3RHZAKGQENUAGGUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 46424158C6B
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:11:01 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 39sf6716787otr.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:11:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415860; cv=pass;
        d=google.com; s=arc-20160816;
        b=K1G5/BLiyg97PHFMM8+CUQkHW74f1ncIreBKE83telSKxXcXMME0iDRWfRwsmMdM5c
         HSgKlwrjauLanQQ2nYainRgSZ1MmcALNlZ6yOfcMkmbgD+diQV3f+4RxafrgCfDmBFct
         xyQ6eokrnnBY4wTi0e8/Ss/EihNZJD/yGiqT4XfKlSTUZs/mmq8d8/qN1DtSjSr5axLp
         LVOJP8al6Oe1/eIgepvRg56Pd4uiL+3mIYtgTxlnRs5PilWAqw9x8a0ughLlvE77yU5y
         UnZcaBASRnZc3N8+VBiHZ4b7Bbx4IYtApgdTzB5N9C21GSBST716lBDe0LNixQinBUvv
         wMXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=4Y8xjpTKbj/fNFmAKkosH/bq/396LnLgMvMxDhJtVzI=;
        b=QxbTtnpzD2nPeE6k992UcE5NcirNzVKjYaCghicGYocQttfTKaktOmMY0mR+prVtNO
         DO+Yn8athUOtRbqW/Zcc/mkiOv0P1Dy3n6Cze43RIt+RI4YtQuVm3dkl8tpBJjKMdmkT
         yE5dxQkDMOM8u7k7tC4xserzQVPX2J51+NcOiHB+AEaL9GAV963K9sfpkrYU7zxNgkEr
         VNdGvlX+z/PMmo/81CkSvU2q1cqZ+bsm01uLC5npsxM7WVCUc7Ao9Q2xZTDaKBZueuYG
         intUygTVj/X0cs1eMHhrWMQ0GHzhsfhkhrlyVIdeOKMbpH5/Y7sD/YbsUOg7e029Ka6G
         W8tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PKTYTrck;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Y8xjpTKbj/fNFmAKkosH/bq/396LnLgMvMxDhJtVzI=;
        b=DD/2dsKRL/VBn0jo4FLrnXeyExJHRfPHgeRpdf3ZIDZv8LXFHbpKvYBsXl8CPLRmia
         vlIsFEtoH4UTLW11Nl94MQR7l/lb0gmPtelB1Mcy3KN4qgmsYE8E5uN7wBbW+VIUjiGX
         EMoyLew8nEVR2fSvWnNOjz9P5AVTGvt4cna9VlDBlNk4Yuo9xdivB3rlwXIsArvTr27n
         7pdgHV9a1Do/JZD4/Zj1gOFOkidWi1iOPbPW2uZHt3ZGegJLG40RJcJCwgIa5vAZGi8X
         NTWjwJcDX86WjI0unk8J4nYcDijmONJeBMdCRRSgft7dGlp/+/Tj6+2yQ30lodgosdgk
         zZHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Y8xjpTKbj/fNFmAKkosH/bq/396LnLgMvMxDhJtVzI=;
        b=VYomp8gvDdohQguu+yrqmNqkwuTEUi6Inx4PioMzjenR2n6K6qSlPFS5D/VIOnGlhi
         5NpFtFnucm7/IqOpmVncpuIsMlH/aVQn74CtxAtfssa4cV6IoXf98jsdp9drD1xg2A1a
         aQtSFjQL7golM+EYeXu5A+MIRiluTUTdnO4AgM7drUpPLIMujryeNeCf+hq2Uod+MBOW
         bR4OFsLanNmJIYd1Ed/xNzop4zFBnkRy+8Y2B+gJdJ0gQwXPiWC+rfJXjDMhIIjf5XO2
         w0VFR038bE2VF/OweKkds5uk/vK8IBJPGV7AN0tldtV+FMWNmUod9GybiUT+xsZ8piIv
         Mbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Y8xjpTKbj/fNFmAKkosH/bq/396LnLgMvMxDhJtVzI=;
        b=CuDopsvqp5Q67LWfRM/4Gr90hj+oWjf3sf+D7NcVUuaLS0hHb2u7+8cnMwN5adzrso
         YeSPbddkLel7W4+trTXqyh0JXMLeq27tsJFJeYhDE10CAO6HFjjKwqVXc/BYSm8VaP89
         BqzSP72vhCgPTcjPUOJk/dPKwfB4eUMzl11sm6/hcFOyNCpXvcp66KEiThzY5/LuAfvK
         ubNB+uG5KM9dJjEgEOnZqWQq9XUQdLByV7V55R4AiAuuTJTBMKZYfzVJeKiQCR3icpnO
         aIUUBkUUWYSdFwyEisMVnW7OeVhj5Wj6alBpB9kVmy1EQkAAlF9my6kkU3QwQHePonJi
         VE1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkF7ZpcNNg1YQwtsExjOk59AbZYYlbFf2Q6SFSUsN3opfRTqMN
	H6G4Vja7dmP4+5EHr+4CQMQ=
X-Google-Smtp-Source: APXvYqxNOia5xdAxZPruAR5vW0zzU9koA9MZKl/D+Glhhk2xMBL0qmzBJdXKXh5Q5WM5kfD7mFEo6Q==
X-Received: by 2002:aca:f20b:: with SMTP id q11mr2299105oih.78.1581415860274;
        Tue, 11 Feb 2020 02:11:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls5397914oig.10.gmail; Tue, 11
 Feb 2020 02:11:00 -0800 (PST)
X-Received: by 2002:aca:dc45:: with SMTP id t66mr2439337oig.39.1581415859971;
        Tue, 11 Feb 2020 02:10:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415859; cv=none;
        d=google.com; s=arc-20160816;
        b=dz+gUh350a8uLjGbaKHPt3Wjra7SW9jyUjEte64s0C7yw9/Jsl4XoCGbVfbHk6kfAZ
         RlEu6pJSxEwxfwdFeclvNV+sWwVbWelaaEh8PvKaGsb5KSMTWXprIxfz6AJawigLsNwm
         HIYNdPVw12OccqcCJbQFNDFsBrueewOrEnWjRdmJW1q2J8242tuz4adpAOBmhdZF7coQ
         g02o8rzQ5rwC74cVUO0PWJVeAcZ8ES5OzKjpC5DmQ7VJsYcCjoCHqKhMF4ZLfp7Me1Rb
         Ybby1lGV2G/15qD20VkuKYVHEOsdJecp0bOdxfZnrUz7qdOMS8j4E3okOLJ5KIUhRzP8
         IxuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fu6P8T75CN6Y0/MrmLhWo5b/4px7yhSoBB4GEkqt0PU=;
        b=ciNxCbt9wyM4Yv2D7WavCxHpohn9D8vu2P9RY9aHqmw4cZ+Ox31GkUSWjY+L9xYbMt
         z8gv/jcto5h0FiRZTmEaB1sCx2yD+vDTc3b3Sogghjp136GBJXxdslj7Cv5ccC9rDoF2
         CYRl3jqvohHzQkKX7+tLWv7954e2+OV3rur3QgtJr4S2aZHanJgzdMq4YPSlHRQ3IADe
         dDHB0kP5xssDB+AxHv2hj/pEWFSPnMlrt+ivKneS03f01jS6yeI46KHCdXMGycknOnsC
         G5+9v3Uxk76Xf6JOz3Vz/V+SyqI4dUxd/Nmhg6xG1Ygyp5ViPy5++pOqdk2lo9dZCai8
         PDgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PKTYTrck;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d16si179554oij.1.2020.02.11.02.10.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:10:59 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y5so5251103pfb.11
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 02:10:59 -0800 (PST)
X-Received: by 2002:a62:6842:: with SMTP id d63mr2518123pfc.113.1581415858938;
        Tue, 11 Feb 2020 02:10:58 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id v9sm2429853pja.26.2020.02.11.02.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 02:10:58 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH RFC 1/6] asm/sections: Add COMPARE_SECTIONS macro
Date: Tue, 11 Feb 2020 03:10:38 -0700
Message-Id: <20200211101043.3910-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211101043.3910-1-natechancellor@gmail.com>
References: <20200211101043.3910-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PKTYTrck;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with clang's -Wtautological-compare, there are a few
warnings around the comparison of section boundaries, which are linker
defined symbols and just contain an address. Clang says that these
comparisons always evaluate to a constant, which is expected and
reasonable since we just care about its boolean value. The kernel does
this to figure out how exactly it was laid out during link time so that
it can make certain run time decisions without hard coding them via
preprocessor macros.

These comparisons always evaluate the way that the kernel wants (done by
comparing a Clang built kernel to a GCC built kernel). As a result, this
warning should be silenced in these particular instances so that
-Wtautological-compare can be enabled for the kernel globally since it
brings several useful warnings within its group.

The warnings can be silenced by casting the linked defined symbols to
unsigned long (normally uintptr_t but the kernel typedef's uintptr_t to
unsigned long and some kernel developers prefer unsigned long) to make
them purely numeric comparisons, which will be converted to a boolean
without any warning from Clang. The casting is done within a macro so
that it can be documented why this casting happens, rather than
sprinkling random casts in the kernel.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/asm-generic/sections.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index d1779d442aa5..e1f3095a50c1 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -169,4 +169,11 @@ static inline bool is_kernel_rodata(unsigned long addr)
 	       addr < (unsigned long)__end_rodata;
 }
 
+/*
+ * Comparing section boundaries trips clang's -Wtautological-compare
+ * This silences that warning by making the comparisons purely numeric
+ */
+#define COMPARE_SECTIONS(section_one, op, section_two) \
+	((unsigned long)(section_one) op (unsigned long)(section_two))
+
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211101043.3910-2-natechancellor%40gmail.com.
