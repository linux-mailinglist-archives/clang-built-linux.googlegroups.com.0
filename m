Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG6IQD5AKGQE7C4BYFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC6C24E0D1
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:29 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id i66sf2154242ile.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039068; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wod/zshvV8+JUlAaQKeeFseXR80dVqTm4u7pCNIE+Oc6axzFZ6kvvq/O5eWQuoYQw3
         tpiJ0owLUCN/p/6eHAfpNvrNsBnshpALTefaSc6I+8djZqmgfJYuNuEYQmRz2oJ7FJeG
         a4/AtsX/57cGHREdDyY7V5EUN143tfsHhFXiY4bId/aT+QSvMi7WT0+js/zsvn2ST7A8
         ujqkdAu0iwHDbcAdOj4mL188TfHW1okBeF4py/TpRXW3ohFohl0OK/t/LPzxV7Jwsemw
         o7zCs4Jg1vX0QHfm+OI+UgcJnA0qyHgnoW9wT37joctLd5dDhoWlwkNFsSh273R9NhN9
         C6KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ot4I+jjjBMW9cAOJIBURRkFvUaY/qMb7dJLDw8ScKDk=;
        b=vavbA8ZnakupnsJqk9zYSc+81EHpRToX7U9pFSBD9MTdNM0zLYJs2o1Bvzu9CSzeUZ
         31FKi3qw3IHatATsCzopBnP1lhgND6yJ0h3/mkb+VbDDbJNkDhvoVIGTlhsKkfcKq0yC
         JKp6r1a4+fYTsTRLlQCe++pdn3URWq6XDPS7aMbMAdrfwXLtNvUV8vijb+ZUsws625lt
         +P5PO9LI2aJ+rvEXSdezB6tEKu8zXE3OXmAqy4u+3suiUI1EEL8adkY4u9FomA7l9PM/
         xMT16wWqtbJfj6oWezYprgJWAy1YuUWtrAzhHOypGcHVQuFWCgBDl4vTTaPXG13CUMlb
         b8zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bzEVhilQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ot4I+jjjBMW9cAOJIBURRkFvUaY/qMb7dJLDw8ScKDk=;
        b=X1j00JfBmwM/JOIxvplMKAWWVWYL712e2YS9mNn3AMLxQi1r0zgxeaO2wElsgqufOu
         StN/KEGbNebaGjFMBAAnXkQbnoNsY5jHrzXXo73PjBDgbMOI3x7OCH0ucwJKF/Yl4JvK
         oMoMNFofG5geREhQh74mni9hC5rkgq+DxKSkgHfOAWk615nyd+XD9G5GBht96NJYHKpH
         BUfNRaVHkHe/fMt6dLj/wzkWtG1OOMxftLhAVymx8TSefkzIp+UmsY9kdJoX3JzmMs1T
         9Ky/VLvOT4NnahhhZIx3tMqu01P/a1wAwLhVo9SGMwcP9EzuzTUA2GoXEGt7RTLlTVTp
         GvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ot4I+jjjBMW9cAOJIBURRkFvUaY/qMb7dJLDw8ScKDk=;
        b=a1b0hmY5H9KtYRo0wSYRaGsWAsxhJ4efBuUu772o9KRkxScvGBTk2vJ6cwMLejHEE8
         jDlJF++mDKlUqK6yAEXA0XfG6c6G+x//wZ8mov9vbuNh3ZK7fpUkwYceC5fvU37fBjKZ
         F6e614WjWUVyhbxnKxVFWUyyrkSdYNE2tIKJ7scnELH9sfjPcitlvQ9tS2Kx7dSlnSNI
         ggwAhhmRJoSsNQTzpL3pzjAULihMLSSZ5cxbx51PMHA+4S3Svrzd5l1z2rqnIbUVvLes
         U0gmzmyFRkxqicemE7OHzKrL/qgOfSIOOKgd5iIDsDuMxwmE8PAUFY0wQWZdNozXEG//
         snEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532B86upXer+HXv1+wNiBAMc5c36VHOktq1cd2KfF/mnngYx/ZG3
	BPQf3cUCBFTENm9Uw7mtRCk=
X-Google-Smtp-Source: ABdhPJxCtNwZft3yI4CAL44hh/coHHLdmQQAjb/R05toYPOGiTCKiHJ8vryL48k/A6dT2PBz9evs+w==
X-Received: by 2002:a92:8902:: with SMTP id n2mr3413793ild.97.1598039068064;
        Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d9ca:: with SMTP id n10ls240950ilq.6.gmail; Fri, 21 Aug
 2020 12:44:27 -0700 (PDT)
X-Received: by 2002:a92:c7d4:: with SMTP id g20mr3827399ilk.40.1598039067755;
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039067; cv=none;
        d=google.com; s=arc-20160816;
        b=mRK/CFzaa3Sn4QJ1s7r9kIaubOf67oaGiaZp69TT/zLyIH7Y6ZYL87VkcgbUyaGXh6
         ukCksrAndLunBqjrUSY46nS/pw6NKmBp4WlZc4Zs3IGPIx63NyNPz1I98CDWnsTNuEPv
         r8Oe//nr3JMGQAqt6xsb2+G4JXiBbCqX4DL8iOkjQdyalh81gV8xKa/mFQ+FqaNpKwLA
         AqEEW4VC09BSVA69nBn79rOD4yxwVZB0CfeKanE1HjjNdxPu6tOVVTCK6XirZKx0LDMp
         KoZWQP96VFhlBCGdr6yiABMo+WAWTZ9d7YujUNT+6G8PolWvHp15tr3qrrfX7kaVwLgT
         v/3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y6H7F3yYvyF+nG4ZythWO1q4A4EGexkc0hsQxsFmb9Y=;
        b=rMYnvVk1AbodxQoKAhXJvXLTYFTQiSCaQ9JhX7/rlJNLGZ+kF/ygecJ1Xy4MLdpvfw
         IQ+KEgoMhQNUY11DZUh4470jIPvMeEdDAZBaenureXBQQysKN5YpKkSK2H1OE14L+x9o
         xWT6fwDJv/ZAgokQYEpwZNQZR5Du9DIfONGilq1Wf43RQlWNEfcsXErKh0p2cuyVkoEm
         HMTcRzZg/QskLkMeccLqAtDVosfFLubKxr3egohUwJ4+kYumzeaCcgy3gjLrMNm0VaXj
         IjHMuP1jw7NXdTrnLQeerM5KpOzva/mfkzasZoWv3YdsnvkQXOsmyyXZPY3BNC0DwLbv
         RGmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bzEVhilQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h11si144178ilh.1.2020.08.21.12.44.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 17so1558631pfw.9
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
X-Received: by 2002:a63:9c1:: with SMTP id 184mr171258pgj.265.1598039067233;
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g23sm3243141pfo.95.2020.08.21.12.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 09/29] arm64/kernel: Remove needless Call Frame Information annotations
Date: Fri, 21 Aug 2020 12:42:50 -0700
Message-Id: <20200821194310.3089815-10-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bzEVhilQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Remove last instance of an .eh_frame section by removing the needless Call
Frame Information annotations which were likely leftovers from 32-bit arm.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/smccc-call.S | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index 1f93809528a4..d62447964ed9 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -9,7 +9,6 @@
 #include <asm/assembler.h>
 
 	.macro SMCCC instr
-	.cfi_startproc
 	\instr	#0
 	ldr	x4, [sp]
 	stp	x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
@@ -21,7 +20,6 @@
 	b.ne	1f
 	str	x6, [x4, ARM_SMCCC_QUIRK_STATE_OFFS]
 1:	ret
-	.cfi_endproc
 	.endm
 
 /*
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-10-keescook%40chromium.org.
