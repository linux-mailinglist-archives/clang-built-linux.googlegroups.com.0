Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBVEAXH4AKGQEDUOX46Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F3922010C
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:31:34 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id jx16sf354083pjb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:31:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594769493; cv=pass;
        d=google.com; s=arc-20160816;
        b=O9j/rnJj+ooC1EnfuJw4gm3utc2aATctES59uSdlvqpaCoxkYcvSGchk9LpXNb1vPn
         mZ6lKAdyDzAM0LFINEfV8r9pENC3kmFHEHDsM1rIryvvhD7rnMNWK+zxzLjJJJw+wxU3
         s05s6sTkCIGm1GrOZB+yoZWnosZBYH8DzB0kJ1wP8pmW8HwH3TweHTQisqk1isSPThsv
         sq0sPxJcGCxk8rDkLQFT2KWGuPGg16fw03gV3/OMeCVhVopSsONIQzj4zlFHenUpDX3w
         ywjZYkzi5IBofvyHyK1IJlzev4V/mbbyNNloxHwDGNv1Zwm6HWdkMUDcY0J2HpuTdHlP
         +EKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=g/cf53Y4EZwUQphNxQiJ63KvDWQEnXvkyV7U8luJKd8=;
        b=AG3736dJWVRqoA4HD8HSH8+2/2Z9oLpGs4DmcNLToaLjbBdLe6bceBuaH5TrUH1guU
         SFYzbZmx1RoKU1oMOjrpxAXpwxdWtz3PeuY8Pk6hzQ3q2twJMi7qQChUsbm7zueFsD5I
         e6Z2Llf5SWLDuz9gSkvItO5WUbhwQhwt/eqeukJIl3AxW4noEQnZY0zRY1XB+rttQRuV
         vmueCjs7ctNNL5AJXrWsQhk1J3Bf4Khj6AMBTLcE727ltPtPX6oUap1vJTSPh94GxrdR
         FOv8wjgy7GsZ7X/GHfasA6ytf93a232Fnw0FU/7RClA6GpJl7c6WtlO98yks7ccrFs32
         jsKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=taP7IgzG;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g/cf53Y4EZwUQphNxQiJ63KvDWQEnXvkyV7U8luJKd8=;
        b=N+VuZz35x2d3i0QoFVVQ5lGqc9Jt4LOsgCWTSCT83EOH7dZD8wsSg9qVgIOLOF2Fbu
         onmGzb0oMXe5Kr85u3f7pggpCx/xf0eS1SmmH7L3M2iq5UCSvvHzIwMcVnquJ+1CiflU
         nzKVzXuXEJ/Ne3I6r81hl5q8RzU0rsL4RDakseiMYzgCK6rK1X/3xIHVpt2fvVZrDQNs
         Cs4cOMIgzR5r1Fi+zKfAohIiDVKNK3IEUa3Mkyv7n4Y6jvTOaPVXAJ0jlRDaevEVzUUz
         VFEvJsqs+vurcVwDMbks1lyf3WkxUDP9y7leudI9vyZhT5FjosVF3ZDWzLGw9fUuAFIl
         1AIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g/cf53Y4EZwUQphNxQiJ63KvDWQEnXvkyV7U8luJKd8=;
        b=RHoM6Xul9eTvO47eps/2NddmRsVq27nVNsFsNfe2UvTfyN56RPB1C+Nhew6ksiQCER
         IlKoUnJ/Ru5bA3dtkIRDowKOeRd2xt730x+NXu1s8kScP9jIIIVm19gsQU/CuJeEVsWp
         ucbJE6T568HorzU3xak5oBuhfaKYfUUc36FqFmsF/3LXuOUk0pyalW92YipxIZahcMQD
         sfL+dFLrQOvmwzMWLcMObTFTf4M9+LoJ61kuSDhUHdTaNElhXkwb4brArHK+8KRb/g26
         hmaGPP5NlQJj2i4Pjo1YnWxIcNwgfeg6HmWQ/ziD0Qarndk5xKGSoJITkL3WAz5E2xnk
         ddCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g/cf53Y4EZwUQphNxQiJ63KvDWQEnXvkyV7U8luJKd8=;
        b=op2C1TokIAI9PUYZJucasuQPyCj4x822UqlPlUI8R8sWH4w/Bf5TOxghYLv0l2Uj8O
         iqKmL+pe/wkiWfsppReJVDYHq7d3b/A0S2j2liHI8TR+F7KK9dtv7snno58X3YU8foTt
         qy4WmJjc7o4mnzGF9lIt4xF6KFNTS0dtLbptNpDuzTrkP2raSFphoU4gZjj+9o8kYpdH
         k3jm3XK5HS5ocCIEXGPX2hvjZBKEgDakgqGDBrw9SH+TUcXouhWn9UascaUqTguasXlq
         G8iRVuqVSG3BGkZSoqTVcDXPR4rINBF/kuIHUSXtKfAUBCrt2gjU5HeynPkIBPk8VDdl
         AV5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310C8QwwX0tLDwyOWDnmRSqE0iWoC+ebCoaGJ4nJ3nO/PZuOY53
	mzYSTuphVhU+Mk+FJbGmeak=
X-Google-Smtp-Source: ABdhPJxQRXnuAZiSa/5ewNOBIDleEo4uBtO23u5TeD8dbqxFBwPHlftqNZl7udyqevC+vB5ZOm1q9Q==
X-Received: by 2002:a65:6703:: with SMTP id u3mr5227965pgf.254.1594769492981;
        Tue, 14 Jul 2020 16:31:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8421:: with SMTP id q1ls38920pfn.8.gmail; Tue, 14 Jul
 2020 16:31:32 -0700 (PDT)
X-Received: by 2002:a62:1ccb:: with SMTP id c194mr6389769pfc.277.1594769492512;
        Tue, 14 Jul 2020 16:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594769492; cv=none;
        d=google.com; s=arc-20160816;
        b=GfU/9/3+g4wwGBpu4pDMSN327MvQyVTB7jJssZiRfm1cHo/umlULsZcNLIiZSdWtF+
         vqfudwHIiOvjqEiq5oMRQC3y87U/7OZ47e6ormr6WXz/mNSjnQ25ZdUlf7e3OVlmbQfk
         ICflw8iUG3FrXjyl5Qnds+NkwJK4i8Q2Hf2yihU1CRqiFvMTH8sYDO8Y01jXLKnUHK8T
         cwSpEQLWMq8pJ9B1EWwMfy1sFh/H7YxBtnmdIs8eZRby2v2XPArYFKev5ijdN6mzSrfj
         oro7tHDSks8TW978vXirRkmHdYAoRgPbUDdl91PtW0+1JxVnKm7pWZWhFqTTaMwnulOE
         eQfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fsTQrOCCM6yA1JojsplBwI6Qpm1eIbU6tWKRrhNq0L8=;
        b=XJGOLrtqy5lB8znNwYpDS6zyv/pN/TKB/tikshs1ZwFTw4/gyEVAuSxhJ/1Ir4eblx
         /mI178jz/2eKzE0aiPUyLu606+DVF9YG8uxjt1nHdyDLeUw+igTKWz/t6XNCK70dMfc3
         NUOc+D2zDUU7yKVtfcojMd0OTyQ5Fjm57tJ5ajuJ2XTJIm5qXAkEIXIBC01EC1cv6+J1
         7P82nr39XBfmvwggLTL/FilXZ75qnSt1bN81oq/M7Iz1iS0XQ8xLuWOMS4iBB3NnpTX3
         llEqaTce/AUuwGldGPPT5h9/SxPfBE7byqvdkNOP0p11UesrSaMKnJXdqZJELo9msj/9
         3Aog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=taP7IgzG;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id y197si22468pfc.4.2020.07.14.16.31.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 16:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id p205so246999iod.8
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 16:31:32 -0700 (PDT)
X-Received: by 2002:a05:6638:2601:: with SMTP id m1mr7526051jat.141.1594769491880;
        Tue, 14 Jul 2020 16:31:31 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
        by smtp.googlemail.com with ESMTPSA id l13sm252256iob.28.2020.07.14.16.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 16:31:31 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: caij2003@gmail.com,
	jiancai@google.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	sedat.dilek@gmail.com,
	Brian Gerst <brgerst@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] x86/entry: add compatibility with IAS
Date: Tue, 14 Jul 2020 16:30:21 -0700
Message-Id: <20200714233024.1789985-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.27.0.389.gc38d7665816-goog
In-Reply-To: <20200713012428.1039487-1-caij2003@gmail.com>
References: <20200713012428.1039487-1-caij2003@gmail.com>
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=taP7IgzG;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
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

Clang's integrated assembler does not allow symbols with non-absolute
values to be reassigned. This patch allows the affected code to be
compatible with IAS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1043
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Brian Gerst <brgerst@gmail.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com> #
Compile-/Assemble-tested against Linux v5.8-rc5 with LLVM/Clang
v11.0.0-git
Signed-off-by: Jian Cai <caij2003@gmail.com>
---

Thanks Nick and Sedat for explaining the process of submitting patches.
Include the changelog as follows,

Changes v1 -> v2:
 Update the patch based on Arvind Sankar <nivedita@alum.mit.edu>'s
 comments. Also include addtional information in the Tested-by tag.

 arch/x86/include/asm/idtentry.h | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index f3d70830bf2a..5efaaed34eda 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -469,16 +469,15 @@ __visible noinstr void func(struct pt_regs *regs,			\
 	.align 8
 SYM_CODE_START(irq_entries_start)
     vector=FIRST_EXTERNAL_VECTOR
-    pos = .
     .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
 	UNWIND_HINT_IRET_REGS
+0 :
 	.byte	0x6a, vector
 	jmp	asm_common_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = 0b + 8
+	vector = vector+1
     .endr
 SYM_CODE_END(irq_entries_start)
 
@@ -486,16 +485,15 @@ SYM_CODE_END(irq_entries_start)
 	.align 8
 SYM_CODE_START(spurious_entries_start)
     vector=FIRST_SYSTEM_VECTOR
-    pos = .
     .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
 	UNWIND_HINT_IRET_REGS
+0 :
 	.byte	0x6a, vector
 	jmp	asm_spurious_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = 0b + 8
+	vector = vector+1
     .endr
 SYM_CODE_END(spurious_entries_start)
 #endif
-- 
2.27.0.389.gc38d7665816-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714233024.1789985-1-caij2003%40gmail.com.
