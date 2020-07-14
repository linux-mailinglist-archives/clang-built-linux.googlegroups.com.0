Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4UXXD4AKGQEGN54GYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0FC21FDB8
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 21:48:02 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id j3sf23088304wrq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 12:48:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594756082; cv=pass;
        d=google.com; s=arc-20160816;
        b=R5j1y0ZYSbtPOldaQ5hnSqUakAPW816EAu5B7y16lQtTmHsK1DjzdImRphSmsSKYIZ
         EjBSP4g2B3vAwg4vXLpF06d5fWXrURG8qaAVJfz0R53byeFLz+2wwvPKqLzq/C2xSQF7
         S39DPT+opnMSsY3P8yfREjKh3aAwYgancBQj7E6T8cJ8pRE/xDxfQXDKQ9DF53qfvkjc
         0Q0aREI1xSBPPX5bDQq0uB0j9iuwq48x/tKa2pxELcC4iRPuvsMQOQFNULz6/8mKjom6
         ky/LCet0jRHogOpRfyJFuHO6bZ+7+SX6+VgEWoeayTrjfB6E+5FieRGF9KTIEFDdwGZX
         gaRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=9uuQ8LunHDKSawrkImqIf9Cx+sglF7nX0q5Xag3dyeU=;
        b=cN1lGYCDMjmeONLkGrf0ytktGLThfvRxZEOMjnmPOseshmtXhDfz6Xld6ss9J4UE/Y
         bwzp7unkm+5S3Z4fYj6CfIs1D879K/xS5uQHzK3oYeUjZ4Z+piyawFWx/k2ivnpFdCdc
         21H1JjKPfc/xqI6QCKynf9ElVyLbDgwiziY93LyW+O3ksrseunTJXTCDfKSxIqwR5OKC
         Zi29qyYPRbBDCDK4qnO5aGgKAth8y9/9wYugFX8CKYwwtwHRjdukfP1IVrpqddO5iSYG
         p6jIgv1iWQ/OvWoSvqVpUQjMtd00n+mIm6QW1lDQIO17CCeg+qFjZsLf3ZGVAbp2OWsv
         ujzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PTrLEfAE;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9uuQ8LunHDKSawrkImqIf9Cx+sglF7nX0q5Xag3dyeU=;
        b=c52yT6c1zn8P7fwK5JfZ56jqUw/sYjZPPrqHqVAaNPdl25i9cxRU64WSg9+UBw6u5f
         HW0N2A3aCVdpiIuBCp27nS/hzfO15Ni+FTLXeNucov2hWMNM1D+/IF/n4CkjJhfgiJYO
         C7H/CI89PCTJbxzZS7KuvmAHmgdW3Fe9+jvO5tJCeiKrkGxiwFQa42ygv3Vev9Q38Y4b
         DGPj6uZRPTasS79XYzJUsO2fXk6irZwi3tGAZOY5tLIiEtbjRdRhq+t5XMxMBNNFXvMx
         vNTs/9ffI+25yUzMY//TTM6/yR2yEwqCysi7cERVhWxIvD/IsGaUHedfGdvFMHXYY30U
         PrhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9uuQ8LunHDKSawrkImqIf9Cx+sglF7nX0q5Xag3dyeU=;
        b=ugYsM7zzPoYxrGVOjNPdIqgr6RdMedCZJ9d4Ic/y4vUwf9WrZUECGLr5JK7USf8NHj
         EkegZE5OJt1ystNNSyxNPa8rIFkrEQHmRfXefOk+qbJESTDdcZXndSwOq7FnpvGSSpTb
         jgByXFM4L6bb050cFjeJp1agveyYSl0aTV42lfOWbu+39Dp/bSKraYSaZsgHn5tmLpD/
         F2arK/na4lw5vWewCkL5rjOy7oE16nXXprJ47l0+XbkHKqhY96zJfoUgRy6beGCVXoi0
         okBE4a6kjUHvsv3D1CcmsGTIIssArJv1Pm1wCzC1haj+YYGXgRqobYqCvxO6n3z/H5u9
         GejQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9uuQ8LunHDKSawrkImqIf9Cx+sglF7nX0q5Xag3dyeU=;
        b=JFZ+RUU4g3C3XgItZsf7exsmcEccdXSHqH+m6N8jrz1Y1yVSQMsZyid4VZy+nlN/Fv
         j3Fo27HnhcjZdS+YvevKZsKRndfv7J8/PQUKeGZEYpReqbzMGzHcIPwBklreRz9G+ezh
         ZHe3gY+B/xr1R9/KYigjZ6qlBCm7Xc6jkgJQB5a/PC6yR5IlI4wefjQovXWkovf5RE1G
         7Cl7nBD4iJsjVTXtHnETxAZAixvL2mXtgo1ey4Q3PelwytOCwcb1fbvGFVWWNuyeQ2Wi
         YohzT0ktgy2uA9RqdJZIewyH98LUj8OM9jI78CSoM2absLun6C/MZvXhnskLelpzz0mP
         Unfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y9kDSL7Lah8K39urE7H4Eq/BF9EA46wvnERzlwk5/1uPHxMdB
	ts5QsvRcwmSPOnvQaG84E20=
X-Google-Smtp-Source: ABdhPJwIWkyE4QnhGMHaZ71IGoaD6cSW3TdXdhfrGEV/NO3OF1wCxM4831+I3yisqQUIqN0++iHzOA==
X-Received: by 2002:a05:6000:1cf:: with SMTP id t15mr8142932wrx.180.1594756082302;
        Tue, 14 Jul 2020 12:48:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls596757wru.0.gmail; Tue, 14 Jul
 2020 12:48:01 -0700 (PDT)
X-Received: by 2002:adf:e4d0:: with SMTP id v16mr7497406wrm.193.1594756081685;
        Tue, 14 Jul 2020 12:48:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594756081; cv=none;
        d=google.com; s=arc-20160816;
        b=i3QIdOLkqR26+bf69INuEJDyH+jmKgEBJSAEs23z9AoYR/ikuSqLVAZuFzMRlzYzsU
         V4TEFrV1GczHRqXqMEnBFffcTdbM1S/MufibPkCBF3v8iW3zAAzz7wC00D2Jy8u3SgZW
         kvGUyiLVuDRUZnZgWtNOSi9oziErRzqcnZoD7TY55MK4mZ+D8KSWyzlOQXhIIAIQPqRj
         F0jHDxZsXCw+GPDlNw4ee5SXx2h6F+RpkjJTClJCE/54wQ59ic9DZobhne24T9/YL0HT
         5xOxx8nM4w2IQj2GcpixYus/CxY1Cgzi7YCHmRLDuEv6XzARCbGMQ/GDivCEnjx8u6/D
         EdHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PdXksB6ym5DNUu14zeftWHgAGlRIBugL+8piZPGBmMg=;
        b=np8K4qr8tG5WNGrcn9qI0DstplNWDHK1/amDbzeKteALyjsRJ9Ibpyh/nAElN8qdQk
         IdiK49VJDaFS3pRgqDLLdMrZK6NuDIOdGdLOwpbrRze4lRZ3Tz2+5P1mbt29e5JzpSPG
         VWxjnKuvafF1cS71GCDeLX4iC1YcEjiDullK8fNhuJQg4jMIhOGxW4fX7skuXXuJJnON
         PbG0HHPSVpicPsaEfMmc0O2B+UwcloEfz4HShNxsFrCB/TfiaLPk34yEUrJYA76UsGze
         cR9ApIctE4AuzUr28THPPI/HdBr0V4Z/oEl7L6CPjnQfhe6a64pwOHThVfbvZdUj7Tco
         AzFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PTrLEfAE;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id g14si232791wmh.3.2020.07.14.12.48.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 12:48:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id a6so24385309wrm.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 12:48:01 -0700 (PDT)
X-Received: by 2002:adf:e5d0:: with SMTP id a16mr7329043wrn.48.1594756080972;
        Tue, 14 Jul 2020 12:48:00 -0700 (PDT)
Received: from localhost.localdomain ([46.114.111.105])
        by smtp.gmail.com with ESMTPSA id u16sm5676553wmn.11.2020.07.14.12.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 12:48:00 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Wei Liu <wei.liu@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Jian Cai <caij2003@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v3] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
Date: Tue, 14 Jul 2020 21:47:40 +0200
Message-Id: <20200714194740.4548-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.28.0.rc0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PTrLEfAE;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

When assembling with Clang via `make LLVM_IAS=1` and CONFIG_HYPERV enabled,
we observe the following error:

<instantiation>:9:6: error: expected absolute expression
 .if HYPERVISOR_REENLIGHTENMENT_VECTOR == 3
     ^
<instantiation>:1:1: note: while in macro instantiation
idtentry HYPERVISOR_REENLIGHTENMENT_VECTOR asm_sysvec_hyperv_reenlightenment sysvec_hyperv_reenlightenment has_error_code=0
^
./arch/x86/include/asm/idtentry.h:627:1: note: while in macro instantiation
idtentry_sysvec HYPERVISOR_REENLIGHTENMENT_VECTOR sysvec_hyperv_reenlightenment;
^
<instantiation>:9:6: error: expected absolute expression
 .if HYPERVISOR_STIMER0_VECTOR == 3
     ^
<instantiation>:1:1: note: while in macro instantiation
idtentry HYPERVISOR_STIMER0_VECTOR asm_sysvec_hyperv_stimer0 sysvec_hyperv_stimer0 has_error_code=0
^
./arch/x86/include/asm/idtentry.h:628:1: note: while in macro instantiation
idtentry_sysvec HYPERVISOR_STIMER0_VECTOR sysvec_hyperv_stimer0;

This is caused by typos in arch/x86/include/asm/idtentry.h:

HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR

For more details see ClangBuiltLinux issue #1088.

Cc: Jian Cai <caij2003@gmail.com>
Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
Link: https://github.com/ClangBuiltLinux/linux/issues/1088
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Wei Liu <wei.liu@kernel.org>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
Personal note:
I also needed Jian's patch to completely build with LLVM_IAS=1" but
I don't think that should be in the message that gets committed per
se. Without Jian's patch we did NOT catch this one!
Link: https://github.com/ClangBuiltLinux/linux/issues/1043
Link: https://lore.kernel.org/patchwork/patch/1272115/

Changes v2->v3:
- Fold in comments suggested by Nick
- Add Nick's Suggested-by
- Drop unneeded tags and order the rest alphabetically
- Move comments and links to Jian's patch to a personal note

Changes v1->v2:
- Add Wei Liu's Reviewed-by
- Add note to clarify my patch is independent from Jian's patch
- Add link to latest version of Jian's patch

 arch/x86/include/asm/idtentry.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index eeac6dc2adaa..d79541bfc36f 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -626,8 +626,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,	sysvec_kvm_posted_intr_nested
 
 #if IS_ENABLED(CONFIG_HYPERV)
 DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,	sysvec_hyperv_callback);
-DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
-DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,	sysvec_hyperv_stimer0);
+DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
+DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR,	sysvec_hyperv_stimer0);
 #endif
 
 #if IS_ENABLED(CONFIG_ACRN_GUEST)
-- 
2.28.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714194740.4548-1-sedat.dilek%40gmail.com.
