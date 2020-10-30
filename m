Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBJWH6H6AKGQE7G4BMXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A652A0E4A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 20:04:07 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id k7sf6836778ybm.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 12:04:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604084646; cv=pass;
        d=google.com; s=arc-20160816;
        b=EkUEe1xTG3iKeBDiz6O84ZnvcFDEJvwVbVRYWtWQBnCv1Q/BCmWQJSaK974aMMolJr
         qkA5K3J2Uw2qFDgW0RqbI5NfnQoMh5uXp7qQ5PkCZuHxXosjFoH9PglDY+XnZ6XaAXMF
         u8NHKWV8vJDH989WFT48qPXGOCE+u6zrnL/3mqRog6/RfwZyMbnGYmUMfXpWr4dJv+3C
         C2vcZNAe3OXJ1SquEdt4df9RdSdmnPhN+UFI8zDplfEkk3qJCJcKUUAuS9YQhrKt5O/x
         aSOAEEHqFsDqGCFVxjlXftBLC/V8tfiDtI9+9Ka+oWM/czvy0rZFkq46nPkL+rUGFI8B
         xNLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=fOd35asv57hgGiiOshIWIkKdso6dBen2FikOtLFxMvE=;
        b=I6K9Wn2zY66OfFIXJI6yr5FEfqHtpF+kr1GvcdgNj8l1sb+wXZp1YFXpk/KQi6HBvr
         ELumJKoQNPQCeb0ZcsykOsQe+wJqT5F0iR+Ksm/fZ996uwI4afyztNd0LYxcCTRj+xvX
         ELo7Jwfq/6VonCfRjqHrBizw3f6jwPQsdxtcYW2/tRO91tdqZrCOHzOmVGKe+i8xsVy3
         /Ck5EhiydUjoWgERqbcMyvwsCnUpqYFxqaVmWoB6eGMb/xlHIj4NDuoITZqiEfZs9FDx
         PghUdRq51z2N4hNcK1Lq6pCHjzikJNNqPaMj3/FYLysPNTZuYfXOZlAoS4TziOlg9gCR
         7bHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kleDD1WD;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fOd35asv57hgGiiOshIWIkKdso6dBen2FikOtLFxMvE=;
        b=jWKkFlSwnuL2MnZehExc7xSC0ITc9O5A+BdON2kU7KwwURgfcLE/6yJo5teHAMnDaZ
         ByjrDUjfC5Mp1iCEzX4nl6q2jtSaT/l03AwL9cWgVOF4opVcOZI5CvCMdwPJZ/PpHDDQ
         y2yaXZefp/cYFyZF3LbMFAI8rN9OqsXjs0XR/hTgMJ4eLpNN9GcYEBOV1iulaQJC9/4z
         car2lhKR32P5MoXWg1bME/fNV5wteJ/JmoqzP4e4TidrKW4kvVM8KtQTOftRR0kn9VSR
         Vbz+0WNiszgMn6O2t2WrcGJ0BJwj47OX240esebym2ERlqMO7/1COTriLKZQtaAYUcfR
         dzTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fOd35asv57hgGiiOshIWIkKdso6dBen2FikOtLFxMvE=;
        b=tqF6VyOsMZYQ51LoLlfpXaVvNvXS28EptfEku1nft/uvTkSKtIat5TxG7Pzcc5MTt8
         oLEmcWxNsA9AdYv1U9AqrRVVaftZy8YNVqMMd8c8po1756WN93If5N7yktOlPrmuOsfC
         fStKvvtqMsFqUBFOXmRxnTFnfM4aVzP+6oReRbhlIf71Ts22JKnmzbyDaEy0waVirTHC
         GkZZvxZxiIt+NHuiS1I/SlCWeTdFefM23YVE0wHA+zsm42+zztop96CzDZBFoqvmjbWJ
         bi8NA03KLYYBUxhoF8M58vsYqTuU932pichub3LXvqd4rjXa+jW2fx1Bz8cmSiKxJbEh
         CRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fOd35asv57hgGiiOshIWIkKdso6dBen2FikOtLFxMvE=;
        b=N9uboGECA66vKb3wxxAphh3Cc1vUUevYpXvX4pLwEnQg5/cR+AFtPHKy6cKcyaBW/0
         IxLl6vF/yLmKQmHUCMzzYBUhYmTjZWlkn/7t4xNVbdRk+PCNO/jMzA8XX3NqmlRZlo38
         9clZVVgYY81SWnu/kmNqFLm0R8dOzFaO1+tED4NWNAxbBgTTzUrFjtutrH8oVOUsYcds
         VOOoCiX8AjYUnea745K10/WwnsG+MmE2UppH+CkU2qLstsFEF7p6I/4ss7+KxkHc9X9w
         kWWMl+SoUDnZcOMMlq5mopl7zfVcB5SdO9MYOy9pKJQQK6kvuxnnodjcLhJ959SShsP3
         tRIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iiLztiqR4oMdhVCySE0/DpIPTASgOEpA+VQMjeIXxpamgOUof
	DB9ie8okgmDWldmtPSIgIQ8=
X-Google-Smtp-Source: ABdhPJxlqODplloVP5Xj5RMI938tAzTT3aWtvtRUfC6eAMbK2cb5dVFFJ99IWUukn05IOAAjrTaBAQ==
X-Received: by 2002:a25:a221:: with SMTP id b30mr5662302ybi.130.1604084646501;
        Fri, 30 Oct 2020 12:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3f81:: with SMTP id m123ls3459249yba.1.gmail; Fri, 30
 Oct 2020 12:04:06 -0700 (PDT)
X-Received: by 2002:a25:4654:: with SMTP id t81mr5921804yba.475.1604084645973;
        Fri, 30 Oct 2020 12:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604084645; cv=none;
        d=google.com; s=arc-20160816;
        b=jhlU9VzcRcCe1QPYWK8M/Ewckk4/TEdHXshJatgm/+2xupdi03BBp/p6BHQcWqNT+l
         pYaov1ZSDKz1VOEN7HOrXnPRjmjI6YFduoCpH+yX1+14N4KuV8E7nooixBtoqqtSiyhj
         hzKi2+2hWJ5qil/tTiSjKcCEDjm7xmOCZ5ilX3IeEgr8a0MTe2BU+wJLVGZaevCx9Cbj
         lTmvmezld9YSXbpa6b58zHyolyLJzvrakw1mjefE69KjKyM06XRvB9ilfa14K8PluDFk
         GaM4XfjWsuLMAmHQo0H+C4RsHPPm5RzqJg0yYi7EFsHctZeuJ7PHRs2Dp1VCVeOQscQt
         vvlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6iH1A0HcRMe9bm/VJ1MIIaQUjEQSWE5j4lpnJvgNTIQ=;
        b=QKSLKhthfMsyz+IA2nwKlGIbBcjkSddqlIfQYW7mQTdztwgXhDi+Jgaz4dZzmPuHjk
         AoLWUOylA+yAqWLOg4KApEAoZG4Elh6Gk4r/sTTiELXZOCoIFlQap2NgC7NqvPnwYQQI
         lMsVFjAkbYkK1iPJ65K2qefWkQLWSExkRolxyxna+1Gpk3GM1Sbhul14RvacZvKXUNH5
         sLlXHl+TX19CFZnJA3ZMdebsnQmkH+mw8npRT2I1pLXMue6ik2RNxWru0aH6FvoDJXh8
         3fI+aVKiFbp1+zE2VbB6PT2svuUNNicUIIrAufn7Gikt/Ig1aOwf+8DB2oO4Y/oFDfXK
         SiJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kleDD1WD;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i188si381191yba.4.2020.10.30.12.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id w21so6101572pfc.7
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 12:04:05 -0700 (PDT)
X-Received: by 2002:a63:e502:: with SMTP id r2mr3402115pgh.362.1604084645279;
        Fri, 30 Oct 2020 12:04:05 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
        by smtp.googlemail.com with ESMTPSA id w143sm6502120pfc.31.2020.10.30.12.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 12:04:04 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: gregkh@linuxfoundation.org,
	sashal@kernel.org,
	ndesaulniers@google.com,
	natechancellor@gmail.com,
	manojgupta@google.com,
	llozano@google.com,
	arnd@arndb.de,
	clang-built-linux@googlegroups.com,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Jian Cai <jiancai@google.com>
Subject: [PATCH] crypto: x86/crc32c - fix building with clang ias
Date: Fri, 30 Oct 2020 12:02:45 -0700
Message-Id: <20201030190245.92967-1-jiancai@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
In-Reply-To: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kleDD1WD;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::441
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

From: Arnd Bergmann <arnd@arndb.de>

commit 44623b2818f4 ("crypto: x86/crc32c - fix building with clang ias")
upstream

The clang integrated assembler complains about movzxw:

arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'

It seems that movzwq is the mnemonic that it expects instead,
and this is what objdump prints when disassembling the file.

Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
[jc: Fixed conflicts due to lack of 34fdce6981b969]
Signed-off-by: Jian Cai <jiancai@google.com>
---

Thanks Nathan! This patch addresses Nathan's comments regarding format
and note.


 arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
index d9b734d0c8cc..3c6e01520a97 100644
--- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
+++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
@@ -170,7 +170,7 @@ continue_block:
 
 	## branch into array
 	lea	jump_table(%rip), bufp
-	movzxw  (bufp, %rax, 2), len
+	movzwq  (bufp, %rax, 2), len
 	lea	crc_array(%rip), bufp
 	lea     (bufp, len, 1), bufp
 	JMP_NOSPEC bufp
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030190245.92967-1-jiancai%40google.com.
