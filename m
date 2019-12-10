Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYMUYDXQKGQEGMWIGTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3767111938B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:13:07 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id 16sf15446326ywz.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:13:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012386; cv=pass;
        d=google.com; s=arc-20160816;
        b=mPsWENFJBGNR+qYwQ8k9Y7j/PRTWfzAkhrrQ3+M0TLfiGA+eOfKsJrtD+aRYuuBL6g
         GM63JSB2AZC/aKU758OGeFy2SY30q0DccocfDHLdp7yGaDaYOwKuaGhbp2/9kSOX9/ee
         MDguVVcuJsY0uhbjX2E7wPAwmkWGD6HeBuMjjL+nVHV8QjgKQONm2/2/Td+SCVVh42M5
         i/cY1aRgBSt1dOGrsmADsnkbSa+IiJNK56PcY41A9iEaF+EO++jaecZ/M0SSX0cUXx0o
         dSaGQfYwn5K9+HKkE4itJA7Kv4MspWV16pANKo9I652lpazRBZH71qy7Z6ASLuAtJrlX
         x8ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3QtTH46VxpJpDvT1FMB4Y2YpGSz/VTZHhEr8vXpeSSI=;
        b=ntUx34yCFdKAg2b49ZbiSptc5SaUXIJHJ9hpJJSIUYOA9ClYVfD7T27poI8G/6GtjB
         miuPyxdR+D9YyUMFBO/+iL7rsCD+qetn1ECk3+eXgDlNsgbcLqPH4quvYlOOHfyD6RCE
         6BUg4wob9mPacpBUQNgiPtrYcfGJM3PTZdCAH6QFTNbXsPXHsbCVONrcV9Fj6Mcm26Wo
         zIv+gL7akD/CcJK5DiyQRGfP2N5j73i6S3bh6G1a4L1Okq8ruKams5i8aW11l8L/vn/M
         03Ww1mW91ogP+73aQXm68AILlwm5Ts3w+fxoQJ3LT6QT0wG0/B1++Z8uyxS1TpJgpFOu
         mLpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="JM1XRGj/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3QtTH46VxpJpDvT1FMB4Y2YpGSz/VTZHhEr8vXpeSSI=;
        b=jyoF4CONAaZtXmDTrKU//ED9GImXXfNwRUZYtkVEu1MNerwQYfe8g98i8Vc4Aq1ft8
         cTz0ZEwkrD8nCiZYFUGBX6IiK20VdORl88F2sIzGJaICFgQCdN56SMoCV/lP1mshiejw
         eLoHqI4F7sEyy00Lu0+vCn1CympJ7yf/sTiBse1Zj8McpI6oYlwRqgfHdZ/7sfLxQXqv
         /kPp9/Sacak1UN/Gqwnw9aT5MOwosEl5gQitp+t/lbmcoaVN9dCMzcLuA+ahFN7CmZsq
         uWLMNZ/ciVjchIxJvyMB4P8Md5bqImv/xmiA53LRjaWJefhkVpBNlD+8qCEGca5UeTR9
         twbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3QtTH46VxpJpDvT1FMB4Y2YpGSz/VTZHhEr8vXpeSSI=;
        b=RxF1h4FRWwUtL+7qRl1NKY5CbBBb4S4giR0PxbQGmkTB9u0OplKrzRuXTW2bYhRtrr
         NRX2rflwTIpb+Yw6hCfbYz6PPND7AYBBXr3jEPGjHgvGoA58qOAbX7yO45W9EHUzPD/D
         JsYH3qbvKpUDuwwCDe3ZJYmtKo9E2QXjstfcnmzR6swKktQDTotAiW4YLln3P2D6XqBj
         L6adxRhi/k26k7uxCH+BEGppnSn4wy8DZ1MjJwtK7UMlmoHeApCZoh0sfhpM+e7Rnvoy
         CovZKRENIasBAzzYSlSZuxH9IR+pbNOn4qFk3CZUGRT4YmujaUhR/0r/1m/2NoHzkSr0
         5bpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV3Z8iuWKLgpA6POS5wiWOEhr1A8E9qgsVxOrLLjYcECfLLDr4X
	sIQ67lKyGZuDliDlNbsapKQ=
X-Google-Smtp-Source: APXvYqwOPhXaRLI88fSUwk+oLjPpS2HohERvjZaqxktl6UZzbguBd1l0kOUbPX7WWYbe9jUTdX0+mQ==
X-Received: by 2002:a25:be02:: with SMTP id h2mr85877ybk.67.1576012386058;
        Tue, 10 Dec 2019 13:13:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls2760982ywf.3.gmail; Tue, 10 Dec
 2019 13:13:05 -0800 (PST)
X-Received: by 2002:a0d:f9c1:: with SMTP id j184mr13033568ywf.115.1576012385649;
        Tue, 10 Dec 2019 13:13:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012385; cv=none;
        d=google.com; s=arc-20160816;
        b=FAAZLJm0h162gNpiVjheR+GX9NI3w/b2ip1CECbIJuufRkAGsS5BZcMYmrNFxc17GD
         zCwKWYILyjZaHlN8PbAjK2qcgORtMNalNY+bkterzxc/qhcOvuLR/kcdx5q8lRSAcN1D
         +LhBAN42du9wQFXFamc3XCZf5njQlZ6Khs53VI2hmZEXjm1ysOTnFTRu3e4m6HQDgA7v
         9R0+8T8wn6w/+UfILFuCRP0B84l7Fm86YZ0lLF711D/xCJMxO2LytsovyWtfbZ2T/uz4
         oB1BjX4DHEquON98Aoi58nA93lb/LOXqwPD0fAu7B3wqsZnsSlVvs0F2ddfCGapro8+W
         DI+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZzuLPiM6IwfKJuHuk5O2XSIOONR6us147bP0p9vXaIQ=;
        b=hp/0jfG1NYktKwGb7y9PVaB9vQ1fggjSTxu4qTZDJXamIaaaNsTQkyQFvIx7tUQhtC
         jmyiPDLESE5a1Ss03s049SGipOnqrhVpF+RB0qbUlqw9/nDk+w4A/qJ8Fzes3xT3c9ZW
         sRhnSWinLpP0SLC6/GfDY5HnXsDf/VVjlH89qcMCs0uPdDxlPln4FAU+AsFZfgPpn86o
         /fa+E8+kKWeZcSGK/obZccLDkytBv0LdRkHv0OaxsjSD9/+9A2QL0O6m4tPYpEE2RRF5
         DR6DfPKDPSfOS/5O5m4EjT+FbJyN9kq4WCFRuSgcN/tWgDkKfATDhlWlnl3w+WZKM3zX
         RUGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="JM1XRGj/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k63si311483ywe.3.2019.12.10.13.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:13:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D04A8205C9;
	Tue, 10 Dec 2019 21:13:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andriin@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 307/350] selftests, bpf: Workaround an alu32 sub-register spilling issue
Date: Tue, 10 Dec 2019 16:06:52 -0500
Message-Id: <20191210210735.9077-268-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="JM1XRGj/";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Yonghong Song <yhs@fb.com>

[ Upstream commit 2ea2612b987ad703235c92be21d4e98ee9c2c67c ]

Currently, with latest llvm trunk, selftest test_progs failed obj
file test_seg6_loop.o with the following error in verifier:

  infinite loop detected at insn 76

The byte code sequence looks like below, and noted that alu32 has been
turned off by default for better generated codes in general:

      48:       w3 = 100
      49:       *(u32 *)(r10 - 68) = r3
      ...
  ;             if (tlv.type == SR6_TLV_PADDING) {
      76:       if w3 == 5 goto -18 <LBB0_19>
      ...
      85:       r1 = *(u32 *)(r10 - 68)
  ;     for (int i = 0; i < 100; i++) {
      86:       w1 += -1
      87:       if w1 == 0 goto +5 <LBB0_20>
      88:       *(u32 *)(r10 - 68) = r1

The main reason for verification failure is due to partial spills at
r10 - 68 for induction variable "i".

Current verifier only handles spills with 8-byte values. The above 4-byte
value spill to stack is treated to STACK_MISC and its content is not
saved. For the above example:

    w3 = 100
      R3_w=inv100 fp-64_w=inv1086626730498
    *(u32 *)(r10 - 68) = r3
      R3_w=inv100 fp-64_w=inv1086626730498
    ...
    r1 = *(u32 *)(r10 - 68)
      R1_w=inv(id=0,umax_value=4294967295,var_off=(0x0; 0xffffffff))
      fp-64=inv1086626730498

To resolve this issue, verifier needs to be extended to track sub-registers
in spilling, or llvm needs to enhanced to prevent sub-register spilling
in register allocation phase. The former will increase verifier complexity
and the latter will need some llvm "hacking".

Let us workaround this issue by declaring the induction variable as "long"
type so spilling will happen at non sub-register level. We can revisit this
later if sub-register spilling causes similar or other verification issues.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Acked-by: Andrii Nakryiko <andriin@fb.com>
Link: https://lore.kernel.org/bpf/20191117214036.1309510-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/bpf/progs/test_seg6_loop.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/progs/test_seg6_loop.c b/tools/testing/selftests/bpf/progs/test_seg6_loop.c
index c4d104428643e..69880c1e7700c 100644
--- a/tools/testing/selftests/bpf/progs/test_seg6_loop.c
+++ b/tools/testing/selftests/bpf/progs/test_seg6_loop.c
@@ -132,8 +132,10 @@ static __always_inline int is_valid_tlv_boundary(struct __sk_buff *skb,
 	*pad_off = 0;
 
 	// we can only go as far as ~10 TLVs due to the BPF max stack size
+	// workaround: define induction variable "i" as "long" instead
+	// of "int" to prevent alu32 sub-register spilling.
 	#pragma clang loop unroll(disable)
-	for (int i = 0; i < 100; i++) {
+	for (long i = 0; i < 100; i++) {
 		struct sr6_tlv_t tlv;
 
 		if (cur_off == *tlv_off)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-268-sashal%40kernel.org.
