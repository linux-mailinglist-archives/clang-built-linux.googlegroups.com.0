Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGV3YPVAKGQEEIOOYXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id AE684895CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:31:38 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id i18sf20181250ljc.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 20:31:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565580698; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2BahLnf2VsdrVNBEroBZ8axK5KTbYTHpyfrFDl5f4K80dmf4V48AdPdd4RNz3+tj9
         Ux/PFaKwPhOTijuobw4+ojYe9OHzPnXyqYinLlpo4lZ9jlqWgqtlAH/mdQF+nmLrhxrk
         njrwsKdWg39eyavE5n/6e7lD+jk02I/A3HL2gVBMA3Bf6+YLdFHJ1VxzrMA3dOKmVAqB
         4XvR4fLy4zKjXkjb0PQO8BprR2anstOrk6DxOQJrIG6ckTrFLEfNiQu2gIsWApGAo7id
         KKw4K5hngyEfO5RWJdRgnobXmXWx0r9dGbKVy8poUxIQNrBsOZOHsU66wlp3ph67875Y
         f4cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=bYNTZwMXAJfZlT7H6a0isx/zLmQc6S002PTHEAP2nX4=;
        b=xssc0NQfA/T6d9ebpIVggdh9NcYvVllGNYFi0Z8IibPUbit2xL3yPCB71Wi/Z0WqNa
         fyRrdTdfLBVOGOHz8yvWK7FXrdER9K8ks/D28fH60g+jCOArX5Qx4CVGFu8/zEbfS8UH
         7zLYaJ594DY7u5PYXi99cksBhewe/AV1cdNQvIh/AjNKHlhdL3ickE/R2tllWqfUBsfJ
         0NHvudSa63jN7OzG8dW6boTJbbI9YUNL3+BX8d3YAnJK+Q4dS2ua/5h1RV6a2thF6DK2
         XxqWmGro2Iil7kNKEUFxkT6qPS+q72rYp0nRsG86HGotskKqPfoHqSRX7Q6ld8X3AAH/
         tzxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B97T+c1I;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bYNTZwMXAJfZlT7H6a0isx/zLmQc6S002PTHEAP2nX4=;
        b=T+6ZH2MOBsVdBJvbSF5cjlBxImkJJEpxfyS9hBBhQIrFPl5S+rIwIOwC2McQBzq2h1
         PMuPORqaCXEZ6QiGorZ5lJqpvIH44zzTW1Rp6wLQpgvNFH2s9k5Qs2yVxL8G4e0PU5cD
         AWyPU0tTMUZx8OFrYcsJU1zyYtFLlbsKDzn7bdLybmQNLb0Q1fhndIbKUtZ7hU9XYTD5
         A8UiKAkihugk0owrXY//AqIKmCOHJjRpHbAeu/FSeln8X/ixwVU4cdFmcppdy7uur3lW
         r9eWKgWFo3gx+1y9kq46o0nLtBECyyqNsDhI9lYQ7kMpkqtFA/MjIkLNG8H5at8hq8X3
         YmuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bYNTZwMXAJfZlT7H6a0isx/zLmQc6S002PTHEAP2nX4=;
        b=T5Tt6Kz3xUQtF/MT9hzIeAyjAXCPGyEWLqP4BO5ITzJWh27Y7tJLcHzacREVueYsJD
         fRQyukRq98C6seBd0OIul0OoUfOpj4s51zHSp0igZuVml5kbQ7DNi4PTr5hmOOIataA7
         q3rcdHP+ZSLum32KRuRDftQ0HHguKDDpfpHHM0Zrn+zflQa1/+xVrv/vvGqFuib3Omme
         y3QJMmFrudMASOlc0ceOSihbeaUj/RQo/aEM6wXLNlhD+SggAss29mDzgkY9jbyP8QSZ
         fcAFr6g1hj2BEk7hgtIrgE+hS8vfVrup+OFhG0b9Yqinq26VJwJvYY7NgKdpAGvRHkzf
         Tlfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bYNTZwMXAJfZlT7H6a0isx/zLmQc6S002PTHEAP2nX4=;
        b=NqkN9GHosyexjLdaRj6mLsD++ZzEE7XhpQPa/yMTkB1ZI9Tc/6TgmzgzEVwmw/Reis
         VAfpLFUGSQZzv3/tbUXYH9bw5jJ7+/3Kve79pZEhgqHfSQcd4Cfz5U9TyIKioCIKoXaa
         JSND/np54kVFmhuXXgrLbnSVhR06P0oCXdCoqu3lTM4bbv9NXdPfW/jDAhJ0weSq/sC1
         STqLVuUqnqSHMAHWNIB7YS4o1SZZHOLfNPJO/gmTluTOhu0wZi126DRjrRZ2VoKTZb+z
         ktMP2tluUdk5nTqrLEX+Wr8v+p3evbL3htGCqPXm1mPIqJ5cpL/ihUt0DXNxDVx7Xk8E
         iaWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLLp1PZmnl1UcXmb+urlMUYlK0ehwT/UUGHhz2taHCkfncmxZw
	ht+CKxHkFhgCOgRhuNfta84=
X-Google-Smtp-Source: APXvYqz+TXsPwWgsRpKYkzV3ST+7qnqIWMxAl4YEfFen5KMFIzpBd1MJSx3eXj6mhacn+wUctbs1Dg==
X-Received: by 2002:a19:4aca:: with SMTP id x193mr18296274lfa.146.1565580698335;
        Sun, 11 Aug 2019 20:31:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4ef:: with SMTP id s15ls202564ljm.14.gmail; Sun, 11 Aug
 2019 20:31:38 -0700 (PDT)
X-Received: by 2002:a2e:9989:: with SMTP id w9mr8286750lji.133.1565580697995;
        Sun, 11 Aug 2019 20:31:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565580697; cv=none;
        d=google.com; s=arc-20160816;
        b=N1XiE/wkCcJAkQ08d8zHOGaX6m0jA5q5gEZTjtwBNeylLS0vCQIrYV2b0ij40H0fWX
         3rXNxyht5/t6DvUOQjCWD6+0H1t9B+GIjszx/fgbW1c0/C9RnolcmMM3etyILmEpUAx8
         Firu+XsBD3MjCIZXYWXI+Cu8m5ZbT1fXceeFHuP7evKtqA8nEfvqV7D+Y1xbBZzyi2KV
         nP2m4MenfKFFpcCKHhO0jLpPIDq2UNIbP4pb9bqFpKhDQ8o71xIz8Thf3S+3TymA2FSW
         OBXTscz9R7VqniU6t+4bOVLIpf9AyWHQG7rVRzpqB4wJ2tQF2g8dkt4r65odiaqYN7DZ
         Bdww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GrCFpyZQs6ZZ7O7d1Qhq+Unb0hfalC6XSsvlDHakE4Y=;
        b=atuwkJVzJKh2up7P/gGSpOM9+/tW0y3o5QciU/+LrIEHOdKRZm138Zc0UyIhJEvdSj
         TarCWw1JsbdyrFmjC3+0jo8l2e76oh9CEFd+sSyBp1YF99cHKyg9WBS7yt8hQN9mTmhN
         RYufGrYrbYQSApAtKit6qPkWwSDQIpwN9CLwJEG0IXMMWK+srD9PsLJkTKof1XyTKkKL
         0qPjzgC08tJum/ndnpJncTTugDgzJz0g/8fWpU4XEPr7H8aAitXpt2ZNqBp3fSfvxiS4
         +KQoVycZdxZ14VNnAiiN//K4GAwr5mtXvSqS07Pkf+/dKbEM4CqKfUuI2A+JAe/H+TY3
         kPMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B97T+c1I;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u10si1367578lfk.0.2019.08.11.20.31.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 20:31:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id g67so10475297wme.1
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 20:31:37 -0700 (PDT)
X-Received: by 2002:a1c:9a4b:: with SMTP id c72mr24779104wme.102.1565580697186;
        Sun, 11 Aug 2019 20:31:37 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f12sm117299330wrg.5.2019.08.11.20.31.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 20:31:36 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 5/5] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun, 11 Aug 2019 20:31:20 -0700
Message-Id: <20190812033120.43013-6-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
In-Reply-To: <20190812033120.43013-1-natechancellor@gmail.com>
References: <20190812033120.43013-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B97T+c1I;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang warns:

arch/mips/mm/tlbex.c:634:19: error: use of logical '&&' with constant
operand [-Werror,-Wconstant-logical-operand]
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^  ~~~~~~~~~~~~~
arch/mips/mm/tlbex.c:634:19: note: use '&' for a bitwise operation
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^~
                         &
arch/mips/mm/tlbex.c:634:19: note: remove constant to silence this
warning
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                        ~^~~~~~~~~~~~~~~~
1 error generated.

Explicitly cast this value to a boolean so that clang understands we
intend for this to be a non-zero value.

Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")
Link: https://github.com/ClangBuiltLinux/linux/issues/609
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/mm/tlbex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mm/tlbex.c b/arch/mips/mm/tlbex.c
index eb21277f4141..071d48593464 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -629,7 +629,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
 		return;
 	}
 
-	if (cpu_has_rixi && _PAGE_NO_EXEC) {
+	if (cpu_has_rixi && !!_PAGE_NO_EXEC) {
 		if (fill_includes_sw_bits) {
 			UASM_i_ROTR(p, reg, reg, ilog2(_PAGE_GLOBAL));
 		} else {
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812033120.43013-6-natechancellor%40gmail.com.
