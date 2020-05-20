Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2HJSX3AKGQEXAI2U4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id D83311DBC91
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 20:20:25 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id g21sf3577287pju.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 11:20:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589998824; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVa1XL03TBsFg0zmoXNzgb75kM0FOUUkrEDZRmBomQb8IqsAMQkcy4aby/LtvQx1FB
         EthyhPy13rCeVEYKmIC30+vjABkkydd9IWM4TplLwowQ3+23ZjKcCAHlQ0RIhqGSmXnX
         EmdJnXBGXdYfiCShXQcJ0Lez8dYw8CeRqW7CLYlh+9vH5WEDEnxKltamFigS3YbwdBK4
         a0V//QmrKBp4gmRt279/D+I84oOJb7g46jitpo8NCkTluroexEUcJIbbTmaCo5M0lfY5
         MaSDWd+I2a8NuuduwkYqWufmvsb5fm+S1Puk54Sz03bREYFjqjqMEwO5IOjHsm327fUz
         84SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=kpdkgyJOia3yo6DfILrEGD8YWv1mVdzhwSiUL1G3+9E=;
        b=mwYIy/WBhoud9j903TKDZS/kCU9yMZHqRRvEmwoP8H7yrD2H1w3hrMUUcuDjInvF13
         WtDYxj3/mITYjie7QPjT6e3qJ/JixajlJ6/KUmS0B9HDPqFWos1xJ8tL2igt5fUqhEY6
         57vnzYOnuhbAXuAINlCOx5Pcmm90xewk7iJS2X7uXDoeO5dSTe4qt8yt80hq2IwXDavA
         71EnpysheDSuBVVA+S1rrxBQ9duyt/yvfDShBjdHIPG/yNgx/RV0rb9EDpEWwJx/t/D9
         y8BGi7te8i8F8QmTnPt9Xte5pfsLrOhhTLFkcJB707+IYhZi7ACv6qksCLFUmFxMhHT8
         Tjyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mFgOTfrS;
       spf=pass (google.com: domain of 353tfxgckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=353TFXgcKEeIQEWOVEcKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kpdkgyJOia3yo6DfILrEGD8YWv1mVdzhwSiUL1G3+9E=;
        b=hEne9FzjrAocTPwjeQKaWm0WH+PWIyI0qGRtLi83/13FG3BDeddZiopsjZAHuaQUXE
         5068i08E+wuzIUR+2FK4rnPxEGg716iTsncQjh3Hja2CtTJHrDY1tRsqfsWasCcNIBVw
         gGdt5ZcNJBMLaMRqdlJWaIm1kEPL0X/xk1dYXRuOYX4qucNxb03TNSc6ZlA+1hyAEhPN
         rgoUK8tyPllZEg7uhnE98yj8jamPPOgjtIvdQiAkj1rYbWCB3GkcD1mjLmf5QGqjfZ+5
         I19sYOJpGnBBY87HDgrtcE8i2G+0XCkNcLAPqjL/TE87kJMLwC3pwp5QrIAldmHkMz34
         Vf3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kpdkgyJOia3yo6DfILrEGD8YWv1mVdzhwSiUL1G3+9E=;
        b=E+BRdj5TQ3mcwNnt2lICjzztVaAaaah2hZncyUXaKLvkNeotG7HfYqCCNMPGAcBvye
         VdXl7PJoDLHBcQ0Eg6zDRsCWvzjaOmi47W1LhzZXIzP7/Khy4yYYn4V9KEPhdepD2oYj
         HjgglTQ/7mCtl81LsqaRq2qQrRqjD4UdgsVu+SGYjkqD6ScG2GoPWgTEl4ltki4GW/0o
         9lRPoVhnJe2o4GBF7EEv5UWTTpAlse+vTJOSqDaW0tBjFkAB8PRccWLGbjUy2+gQmax2
         AB4hQtLTPHFFji3SQvTKQjk0mOapMBnDeWACfXsnT28HvWx75Md1Q3enFnAWCX6UUCAb
         4EkQ==
X-Gm-Message-State: AOAM531DsWRRArd+s1Cez2MIeRQKTRnNr00gFgNgFFBJYhM3t3OAudQi
	bRTc0PoGzL3BFVBWvjDBpw0=
X-Google-Smtp-Source: ABdhPJw6klSmpHCZKi7knwjmptidzppLqagy7qYZ3HxSiKfmVqkmY+tjFOYJuaKt5owfG4sBb4d4TQ==
X-Received: by 2002:a63:516:: with SMTP id 22mr5435257pgf.349.1589998824518;
        Wed, 20 May 2020 11:20:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls1855083pjb.2.canary-gmail;
 Wed, 20 May 2020 11:20:24 -0700 (PDT)
X-Received: by 2002:a17:90b:113:: with SMTP id p19mr7100308pjz.129.1589998824134;
        Wed, 20 May 2020 11:20:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589998824; cv=none;
        d=google.com; s=arc-20160816;
        b=s99pfBCEHWr23uUlmTTLukb2uiE3LzmVnIvPVn0gaCPSpFvVeVZTS/tdMNd3KbKw4+
         8dNf/nE9NJla96qIlqFBf5WyFXgm+rn1mDFC7TVofjubePZegbTB8xD0LOy4yK41/Dfq
         gEpx70DkZxRod4pDSPL9rNAn1DrtMQm4FX19dkmhHIhQyUY9ZG2A9mEAD88PxrNkdnKg
         kEOtzJeLFEW/gYr9GL82Ng/hyPVMTfrzpER5KNsfW2oMcw4t5eMNchIlDJz9zckHd639
         iiih0BO7RQQK/Lars2KH5lxfzYA2duvAWDXQiMCIV59P+Fm7CHDdaxQJtygEs4Y/zRnH
         yyKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=+OgKtLgJsTWHETWzU0D/6Xq9Yh0LN7K9yw3XnE7zkxQ=;
        b=WGyd5FiQXz3dxdLKBd1mABfh0FfhNvXNV5giESf+meimgVYvJ3yujj8JUu+9dLxhX8
         Pm7QJtSnAvyXT5MfHORJGpLOmlhAZkgae1Lv6A9Wtn1G6Q3Bm1azyu8/bHoIZ6cFQVEQ
         C7pSf1RqaYhYx2wh0FjvR9SlWittzJzdk8ckSaRlyFNJnmUOrlLPkfpaneoBfyBGpbAL
         MBIXANKBGOp5GbUmHODEgQ+FCf9Icp9vYI3T63rifR2/AU/z/IIGOOPtBcNigoU/9FMx
         bzdnv6mqlOdRGnO3ATIcBbJuFV5+POTLLF1mztdf81Io2PBzrdRFNOJrAOFtg2/FZwnD
         fFNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mFgOTfrS;
       spf=pass (google.com: domain of 353tfxgckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=353TFXgcKEeIQEWOVEcKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y7si276559pjv.0.2020.05.20.11.20.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 11:20:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 353tfxgckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id y7so2631086ybj.15
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 11:20:24 -0700 (PDT)
X-Received: by 2002:a25:c105:: with SMTP id r5mr8768228ybf.192.1589998823350;
 Wed, 20 May 2020 11:20:23 -0700 (PDT)
Date: Wed, 20 May 2020 11:20:10 -0700
Message-Id: <20200520182010.242489-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org, Arvind Sankar <nivedita@alum.mit.edu>, linux-efi@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Fangrui Song <maskray@google.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mFgOTfrS;       spf=pass
 (google.com: domain of 353tfxgckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=353TFXgcKEeIQEWOVEcKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

In the latest efi tree, ce5e3f909fc0ed67e58367b9c56a54c20a51080b
"efi/printf: Add 64-bit and 8-bit integer support",
arch/x86/boot/compressed/vmlinux may have an undesired
.discard.unreachable section from drivers/firmware/efi/libstub/vsprintf.stub.o

.discard.unreachable contains an R_X86_64_PC32 relocation, which will be
warned by LLD: a non-SHF_ALLOC section (.discard.unreachable) is not
part of the memory image, thus conceptually the distance between a
non-SHF_ALLOC and a SHF_ALLOC is not a constant which can be resolved at
link time.

% ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds ... -o arch/x86/boot/compressed/vmlinux
ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''

Reuse the DISCARDS macro which includes .discard.* to drop .discard.unreachable

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Fangrui Song <maskray@google.com>
---
 arch/x86/boot/compressed/vmlinux.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 0dc5c2b9614b..8f1025d1f681 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -74,4 +74,6 @@ SECTIONS
 #endif
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
+
+	DISCARDS
 }
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520182010.242489-1-maskray%40google.com.
