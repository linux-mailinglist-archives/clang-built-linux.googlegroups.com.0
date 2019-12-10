Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEUVYDXQKGQESVKDTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE8E119398
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:13:55 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id e15sf14249902ioh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:13:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012434; cv=pass;
        d=google.com; s=arc-20160816;
        b=EAr3eZf9wV04CLL6jeUAdUfurljALFeQhGVm4JL7SyuLl+fHF2sCQlsLleNTQ9zY8M
         OrY9xmeQYElIQLVXonhdpzL1T+zm5U8bOlxefLAtmhi4XqvAdPJCN4sB6DvZoTWDtHl0
         obY9j6cS1mmBe/D9qa5BgFdDmcyxXHHxXxqc8p4RhT/UbEZCQK4JI/JeQ8VZbH9LuZgv
         opkWNDa24OfIE1bR7LAg4Dab9cp0oYXZn5UdEVKpU4Hviog7ciehuOmm8B25Tflx0C3x
         wvvTUaLqeF4HUpm3hXAM+kUIfICRNmK/SiAXeAX3yWYRtYhsuTGbGtPzFcbPFXlJSR07
         KuAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=H43ft46Y7PPeSrKE9dgqdZ3ECsDDhk01CyRoxVHAWqk=;
        b=Q/ahmBfKJuFW2zhPfdIcKUfNZ+d/ev8bGsN0A2pm7Vaueik9r7gB9skvtLVWwdm1zZ
         nFMkIkIWWNe/TWmqbArNDFZ4gUUSBxAIPB0uzBTwrWmojqUnUU3WoiqQwhmYeXDmuT4w
         lSq2W5FgbSaPbp03uBu4zJbvWa2ndyLWA3e/XgBhrLEocbD8oTu9Uy6XSD1buPA1xWGT
         /Z2WE7Yzwf0pGaVKtOEgDCyPTMWoPDELE10lcN4Mj0Ta200L8fkdswWkvhy5Dsp3dIs+
         Sodl0MsbhjlcSUJ+L7gjsZHuJoFlPTWtqfzJJ7SLwCcx1bkDxoHBN1eiO7DJppv0nIA/
         wLVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=npsbdZeJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H43ft46Y7PPeSrKE9dgqdZ3ECsDDhk01CyRoxVHAWqk=;
        b=qtojfYsFpWrD46lmkl4x+t9V/7a1fMt6+LOJVCj/745ZSNnmLCqE6OC119RPAjvASy
         FjL0wNtlbQvfmr40/z6giJPHN5tsze/GSgBM1lYK2a3jlWBtz2ja2T5KFF6R1+y79c7T
         V3a0U9jMdyIRZ4V6Be71iCXBh4zE+uWeiIlt7+yFSvhxmbmFt7osvdkFqbP144huljOl
         BbPxZbO7asKfDc0Ngn8f4AzXvUsNli14aVg832FP749qem9LWT8odVE5HOBNxTNYLOn3
         CAxDb9rkhu7ww9nTQtSeDTP1BuwzSGs02+VnyxWuXajWRhr8l2Na1W2xU6+SbHQcxn1y
         PUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H43ft46Y7PPeSrKE9dgqdZ3ECsDDhk01CyRoxVHAWqk=;
        b=NX4EoPgE1YqLzdItImntXnsL8OMjRTEWcB1xP2Nlqvb+9jwxtxTeRK1/w8CgKXZIVa
         feM0+scgb4+MjOXMz4LO09ySFwpkEm1pRSrXK5QKYH9tK8PEcr0fto1tOQZGTZukt122
         j/5QS0ikj+vqmm0jeoReF6fKoBwnA1poG6MkvXxFrM4Zzx/J/WWP3A0rfXrZGqhmyluR
         kqiG+0jqrj1opBLw8C4c6KBwkTDHA1W782nsTJsKiTf3iZlUSA4MC0otDbT2CdON4PE5
         rQ84x8y+nkWzZujG1/YCjKnfp2IDmEkKWIoIi4Pf/331fyVFpKm9FTun+Ar5jGsIgs5v
         fJaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpjfkOMYtkaHbEs6zVxml4sjxWbNiZYjtSAUEe7kxkXR966djQ
	F9Wb2JW2CYYmXSLRmjL/evA=
X-Google-Smtp-Source: APXvYqxLawGQXXy09KayCTRHks/I1Lknsn0L3R2ay7XEFrXgDUk0ZfecFe9zu8ufXfHk6a/3e8CwSg==
X-Received: by 2002:a02:cdcb:: with SMTP id m11mr35055210jap.125.1576012434698;
        Tue, 10 Dec 2019 13:13:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5a92:: with SMTP id b18ls1036714ilg.15.gmail; Tue, 10
 Dec 2019 13:13:54 -0800 (PST)
X-Received: by 2002:a92:af08:: with SMTP id n8mr34699538ili.217.1576012434350;
        Tue, 10 Dec 2019 13:13:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012434; cv=none;
        d=google.com; s=arc-20160816;
        b=UAbbKDzoTc3lq7yM95n8DfsN8wjwf3JYZGolcYuils/4xOBult9yP6BXfqXwf01Sdx
         ZDNRyah8geE5ybU89yL37INVA3D7Npt3u3czMnfd+fB03uG5iauLEErbXh8R84ZUpMYC
         hA5jM2YDJxtFOGKbOEqC80aedoV9M7mpdsCWepkU1LvvFtkc+Zicvy+4YFrVdW6cWtDp
         2I8iD1VMSZK1yZvuS75MqaUyrDz/OIlrPkLoXDNcmpkua+tmx1gu8uM6VRe5VuXN3NrI
         QwUz+jddUenpOtyDPntGGv1gghREZw9mICBlnAp0ct0rCnQDPLhMos21WRO0wvWJi73B
         yv4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=v/hAbNz3/LUIUAxgP8bIdEL7aLYNLebN7YJSy+E5a9A=;
        b=yYl6R6HCueFzxNDhGBq5b4Wqw9bDn/p2liUIdN0ECwrLGNVxqRMfzR2F7c1M2FDu6H
         wmhIQWEFyWvLHmJe6zstdOa7Xe0Urm/3+zoSVDy5dCQvPNzoeeauzHxffiE4dvU2Ar51
         kJY47lpAyxyeHTIqG66LtrpqLa8wANFMdg/FnCR33NkirSToNOPgs25I240I78NQ8CrK
         jvwvPiENt/ayeJjfzJc2+sQ9PmL8GmuhPKKsxrGrXXTuNZZYXnrSi2XQ9yBch5yLvE6q
         co5KqchL0uJnDbDxthyGGuSctMdJoCaHQpvzzax+aSg4J2ErcQuNmrs7QHdBLl+/v91D
         ng/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=npsbdZeJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h4si311071ilf.3.2019.12.10.13.13.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:13:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D4E6E214D8;
	Tue, 10 Dec 2019 21:13:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 346/350] bpf: Provide better register bounds after jmp32 instructions
Date: Tue, 10 Dec 2019 16:07:31 -0500
Message-Id: <20191210210735.9077-307-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=npsbdZeJ;       spf=pass
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

[ Upstream commit 581738a681b6faae5725c2555439189ca81c0f1f ]

With latest llvm (trunk https://github.com/llvm/llvm-project),
test_progs, which has +alu32 enabled, failed for strobemeta.o.
The verifier output looks like below with edit to replace large
decimal numbers with hex ones.
 193: (85) call bpf_probe_read_user_str#114
   R0=inv(id=0)
 194: (26) if w0 > 0x1 goto pc+4
   R0_w=inv(id=0,umax_value=0xffffffff00000001)
 195: (6b) *(u16 *)(r7 +80) = r0
 196: (bc) w6 = w0
   R6_w=inv(id=0,umax_value=0xffffffff,var_off=(0x0; 0xffffffff))
 197: (67) r6 <<= 32
   R6_w=inv(id=0,smax_value=0x7fffffff00000000,umax_value=0xffffffff00000000,
            var_off=(0x0; 0xffffffff00000000))
 198: (77) r6 >>= 32
   R6=inv(id=0,umax_value=0xffffffff,var_off=(0x0; 0xffffffff))
 ...
 201: (79) r8 = *(u64 *)(r10 -416)
   R8_w=map_value(id=0,off=40,ks=4,vs=13872,imm=0)
 202: (0f) r8 += r6
   R8_w=map_value(id=0,off=40,ks=4,vs=13872,umax_value=0xffffffff,var_off=(0x0; 0xffffffff))
 203: (07) r8 += 9696
   R8_w=map_value(id=0,off=9736,ks=4,vs=13872,umax_value=0xffffffff,var_off=(0x0; 0xffffffff))
 ...
 255: (bf) r1 = r8
   R1_w=map_value(id=0,off=9736,ks=4,vs=13872,umax_value=0xffffffff,var_off=(0x0; 0xffffffff))
 ...
 257: (85) call bpf_probe_read_user_str#114
 R1 unbounded memory access, make sure to bounds check any array access into a map

The value range for register r6 at insn 198 should be really just 0/1.
The umax_value=0xffffffff caused later verification failure.

After jmp instructions, the current verifier already tried to use just
obtained information to get better register range. The current mechanism is
for 64bit register only. This patch implemented to tighten the range
for 32bit sub-registers after jmp32 instructions.
With the patch, we have the below range ranges for the
above code sequence:
 193: (85) call bpf_probe_read_user_str#114
   R0=inv(id=0)
 194: (26) if w0 > 0x1 goto pc+4
   R0_w=inv(id=0,smax_value=0x7fffffff00000001,umax_value=0xffffffff00000001,
            var_off=(0x0; 0xffffffff00000001))
 195: (6b) *(u16 *)(r7 +80) = r0
 196: (bc) w6 = w0
   R6_w=inv(id=0,umax_value=0xffffffff,var_off=(0x0; 0x1))
 197: (67) r6 <<= 32
   R6_w=inv(id=0,umax_value=0x100000000,var_off=(0x0; 0x100000000))
 198: (77) r6 >>= 32
   R6=inv(id=0,umax_value=1,var_off=(0x0; 0x1))
 ...
 201: (79) r8 = *(u64 *)(r10 -416)
   R8_w=map_value(id=0,off=40,ks=4,vs=13872,imm=0)
 202: (0f) r8 += r6
   R8_w=map_value(id=0,off=40,ks=4,vs=13872,umax_value=1,var_off=(0x0; 0x1))
 203: (07) r8 += 9696
   R8_w=map_value(id=0,off=9736,ks=4,vs=13872,umax_value=1,var_off=(0x0; 0x1))
 ...
 255: (bf) r1 = r8
   R1_w=map_value(id=0,off=9736,ks=4,vs=13872,umax_value=1,var_off=(0x0; 0x1))
 ...
 257: (85) call bpf_probe_read_user_str#114
 ...

At insn 194, the register R0 has better var_off.mask and smax_value.
Especially, the var_off.mask ensures later lshift and rshift
maintains proper value range.

Suggested-by: Alexei Starovoitov <ast@kernel.org>
Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Link: https://lore.kernel.org/bpf/20191121170650.449030-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/bpf/verifier.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index 87181cd5bafd7..df033c5877cbe 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -978,6 +978,17 @@ static void __reg_bound_offset(struct bpf_reg_state *reg)
 						 reg->umax_value));
 }
 
+static void __reg_bound_offset32(struct bpf_reg_state *reg)
+{
+	u64 mask = 0xffffFFFF;
+	struct tnum range = tnum_range(reg->umin_value & mask,
+				       reg->umax_value & mask);
+	struct tnum lo32 = tnum_cast(reg->var_off, 4);
+	struct tnum hi32 = tnum_lshift(tnum_rshift(reg->var_off, 32), 32);
+
+	reg->var_off = tnum_or(hi32, tnum_intersect(lo32, range));
+}
+
 /* Reset the min/max bounds of a register */
 static void __mark_reg_unbounded(struct bpf_reg_state *reg)
 {
@@ -5433,6 +5444,10 @@ static void reg_set_min_max(struct bpf_reg_state *true_reg,
 	/* We might have learned some bits from the bounds. */
 	__reg_bound_offset(false_reg);
 	__reg_bound_offset(true_reg);
+	if (is_jmp32) {
+		__reg_bound_offset32(false_reg);
+		__reg_bound_offset32(true_reg);
+	}
 	/* Intersecting with the old var_off might have improved our bounds
 	 * slightly.  e.g. if umax was 0x7f...f and var_off was (0; 0xf...fc),
 	 * then new var_off is (0; 0x7f...fc) which improves our umax.
@@ -5542,6 +5557,10 @@ static void reg_set_min_max_inv(struct bpf_reg_state *true_reg,
 	/* We might have learned some bits from the bounds. */
 	__reg_bound_offset(false_reg);
 	__reg_bound_offset(true_reg);
+	if (is_jmp32) {
+		__reg_bound_offset32(false_reg);
+		__reg_bound_offset32(true_reg);
+	}
 	/* Intersecting with the old var_off might have improved our bounds
 	 * slightly.  e.g. if umax was 0x7f...f and var_off was (0; 0xf...fc),
 	 * then new var_off is (0; 0x7f...fc) which improves our umax.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-307-sashal%40kernel.org.
