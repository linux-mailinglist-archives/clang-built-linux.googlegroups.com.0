Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPOB3X6AKGQEEOZFZPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 906EA299B3A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:50:22 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id f20sf4794729pjq.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:50:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756221; cv=pass;
        d=google.com; s=arc-20160816;
        b=kS5VN/ZOM9Crxigs9L+OUo5q6UQIbRboWxouetsfTUux3+yM3L5FoNO9t6/c28co/F
         hHFA9N8qT/PT6i7xaUDu4Gqr01j8BU9kMjlbiYrK1Rpszv6/44Lj0ldHuuR0tSqDt6RJ
         8nqb+uePOOgQoRPXhKLPsD1nbssh0PdmX83HNXjfH/7ET7VaIPvoBVlMFIVUfYnAtmy+
         q7CMrrAm2wrvMSav+BCpK/VgmHBPEU13y8af682X7pXWdgXyMpGkxoR0EhkM80dHDOyI
         TdiCvB1U2CDJdOlDdiZPRj7M8zrgA2zDeojjQjcxe8x0GLCpeID8x1ov2xhDYBa97sBu
         ZGug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iQSleOdwDOOnWP7zUDv7EE2ZLYP5T8dtEdV+5WYRm3w=;
        b=ezEkCbCbfwQrWnBNKN4BE/pF0YIToW0lDEcAh7bz4bakLRQsbiAzhipor3JINj4Rmg
         XrG0L4N9I1WhDLXpGIjwcpg/oKmyhCMglrnTTOMdXFNrYew4pWn2kVcq0eRQQlJZUQSj
         PozGwPyDZ9Gin0b2ZRi5sVEsyDFycNAP7fOF7ZxpWaIfLpd+AgjuxLDsQTq/j5TUbJLE
         T5zQ82F8l343ZmKuGLXFmFsUvZzxzY9fz0Lcxa6sS/MQp0M0OKJS81A7X37xCwyVW839
         LROAEfPDCsCYVBP14hlojbv7RI7o7VuVu+l8JNOSaxV05L3NC2oMSNan77HVsUf3pfdq
         GsKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ANvNvT8r;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iQSleOdwDOOnWP7zUDv7EE2ZLYP5T8dtEdV+5WYRm3w=;
        b=BXUgzCTQAG7WbjgSG4ubeeIvWE1q3Ul2rrRORnNKkwrEbskUJ1CRqOLOat5/OBo0vz
         /TqGfyFLuSSV0lT4fMtE/N6p5yToSaThob3EN2CAjmnNSywa+C+wqdt8+tROca4KLMQv
         fr2Pv0PjXrkYzXE3Y8HjH4bzYlA6z27mU8CDsDH6MS/JQ3TffD/SdMQUNoeYHXucjWhm
         U8tjwAKeWFrJNBPFsYRHV1Y3rWFRDVnGswSGKVvbbFbXtbzFaQkzdEGiQPfWd0gI/td1
         yngw0QYJigpWGQF1El9sdCpf6S8zjIAgiSbUPxGtSnOQzFglc5MVzjntnS0/uJxXQLma
         VGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iQSleOdwDOOnWP7zUDv7EE2ZLYP5T8dtEdV+5WYRm3w=;
        b=GTBMV1qzjZAS7MIL80v9sVBW8MWTLZ25DbYpgMjUeydmVQhNfx4eQ71qTWG09RCQc7
         z86oen9CHaHUgKNxfs6In8u3rZ/kKtyw4G0Y3qde866+LJFvyB7zUXWIJlgCw3QebfKo
         GSk1ihE5MHQAq0fkArrQ75ckKAnlnUbcCJfhaLkUzCE0g5igMHpRYMvVFHikDVrCxG7U
         gTsxkM8uLrtS7an6gvDmgy7Jy2lwCaEHu+ozQiw4f2+UpVHTq11G/1KZnxKM6ZDyJBmJ
         hHtK7cbDiPh+XvC3Myz8K4ZtKHAnXGKOGB1blf2RXP+z5h2gWWtnVNugwlNaw9SOhHvJ
         hLYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XmLTC/GLMeIgBvVKVtD/iExWUb7TJACSQ5sEXwSY+zlGeWmII
	iMboe6LJ0gdsswyu966JVvg=
X-Google-Smtp-Source: ABdhPJxwtysfmsM4Ys55RvPh1gwHIYIashTbXmbYom17wNz1vqDevI/ci6ybkxLkhATtPbGe2tnOIQ==
X-Received: by 2002:a17:902:c152:b029:d6:33a:c46f with SMTP id 18-20020a170902c152b02900d6033ac46fmr164146plj.38.1603756221311;
        Mon, 26 Oct 2020 16:50:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3fc9:: with SMTP id m192ls62275pga.5.gmail; Mon, 26 Oct
 2020 16:50:20 -0700 (PDT)
X-Received: by 2002:aa7:8815:0:b029:163:c712:81ad with SMTP id c21-20020aa788150000b0290163c71281admr31475pfo.74.1603756220682;
        Mon, 26 Oct 2020 16:50:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756220; cv=none;
        d=google.com; s=arc-20160816;
        b=tEGqaGVWKdPtNybCtDmqrcxjeY8V7DAsy2jbHGPOoEGLq006//+8SzEiSIsf2cNY0o
         T8wDHxhtJ1bestn9Fnmvxu0c/Wf610WIwt2GmoLU/Uwlh6qnuCkPrhN11Ot4RFEJJ78q
         NWf9+A5+X1INcFppuBTvnaiRKJ85fOXCwTI9yOQTdVbmwcq1T2NYbnT/S7hhq0k5/kUu
         XOiSPZSaLdclHsSn831HR9ADWCVc99hDObizdSP6m1XIgxU1CuUwYdruq/e5x0uc0tzU
         fvSebaPtPnNNyTB+e8yEMktrF2w0iXJ3oKsW1vxfjKUFV+ynSq064lDbojsvN/knhjwW
         SQJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DmNXj2gGtARGDiqoKunfyZIRi/dtojJjg2RuB5rEoAg=;
        b=IGUMHINq+9jpgHjeLD+ZfqjORFkSqoM1YvxA2FHaHXuS/ZyCCopuibQMDhprX0m4jC
         mnopkcdKMXOEZJRTUQuev+/fUUK3kCEX+vmX2vLdPQKFh2Rh+7GbTWJ4275r29bTpbyR
         KwnHl8aCHz+mU+pGKORgeuDsGX31wnxKE8UhzzIOM/zZSByl8RppXktoGt5VzD0L7PaM
         0g+4Vf6NPjVoL2QSu1Z0EzvLAnmxpnfm14TPLawnd6cHxq5qJFiNbFpBhKcvn012KCnW
         Paol/bxKNe/cHZRqRdehhVS61LvZoexOwQdOjcIT2J0Is4e2SxcUt7Srf39BcixSZwRa
         7Mbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ANvNvT8r;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x24si649674pll.5.2020.10.26.16.50.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:50:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8549C217A0;
	Mon, 26 Oct 2020 23:50:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andriin@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.9 060/147] bpf: Permit map_ptr arithmetic with opcode add and offset 0
Date: Mon, 26 Oct 2020 19:47:38 -0400
Message-Id: <20201026234905.1022767-60-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026234905.1022767-1-sashal@kernel.org>
References: <20201026234905.1022767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ANvNvT8r;       spf=pass
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

[ Upstream commit 7c6967326267bd5c0dded0a99541357d70dd11ac ]

Commit 41c48f3a98231 ("bpf: Support access
to bpf map fields") added support to access map fields
with CORE support. For example,

            struct bpf_map {
                    __u32 max_entries;
            } __attribute__((preserve_access_index));

            struct bpf_array {
                    struct bpf_map map;
                    __u32 elem_size;
            } __attribute__((preserve_access_index));

            struct {
                    __uint(type, BPF_MAP_TYPE_ARRAY);
                    __uint(max_entries, 4);
                    __type(key, __u32);
                    __type(value, __u32);
            } m_array SEC(".maps");

            SEC("cgroup_skb/egress")
            int cg_skb(void *ctx)
            {
                    struct bpf_array *array = (struct bpf_array *)&m_array;

                    /* .. array->map.max_entries .. */
            }

In kernel, bpf_htab has similar structure,

	    struct bpf_htab {
		    struct bpf_map map;
                    ...
            }

In the above cg_skb(), to access array->map.max_entries, with CORE, the clang will
generate two builtin's.
            base = &m_array;
            /* access array.map */
            map_addr = __builtin_preserve_struct_access_info(base, 0, 0);
            /* access array.map.max_entries */
            max_entries_addr = __builtin_preserve_struct_access_info(map_addr, 0, 0);
	    max_entries = *max_entries_addr;

In the current llvm, if two builtin's are in the same function or
in the same function after inlining, the compiler is smart enough to chain
them together and generates like below:
            base = &m_array;
            max_entries = *(base + reloc_offset); /* reloc_offset = 0 in this case */
and we are fine.

But if we force no inlining for one of functions in test_map_ptr() selftest, e.g.,
check_default(), the above two __builtin_preserve_* will be in two different
functions. In this case, we will have code like:
   func check_hash():
            reloc_offset_map = 0;
            base = &m_array;
            map_base = base + reloc_offset_map;
            check_default(map_base, ...)
   func check_default(map_base, ...):
            max_entries = *(map_base + reloc_offset_max_entries);

In kernel, map_ptr (CONST_PTR_TO_MAP) does not allow any arithmetic.
The above "map_base = base + reloc_offset_map" will trigger a verifier failure.
  ; VERIFY(check_default(&hash->map, map));
  0: (18) r7 = 0xffffb4fe8018a004
  2: (b4) w1 = 110
  3: (63) *(u32 *)(r7 +0) = r1
   R1_w=invP110 R7_w=map_value(id=0,off=4,ks=4,vs=8,imm=0) R10=fp0
  ; VERIFY_TYPE(BPF_MAP_TYPE_HASH, check_hash);
  4: (18) r1 = 0xffffb4fe8018a000
  6: (b4) w2 = 1
  7: (63) *(u32 *)(r1 +0) = r2
   R1_w=map_value(id=0,off=0,ks=4,vs=8,imm=0) R2_w=invP1 R7_w=map_value(id=0,off=4,ks=4,vs=8,imm=0) R10=fp0
  8: (b7) r2 = 0
  9: (18) r8 = 0xffff90bcb500c000
  11: (18) r1 = 0xffff90bcb500c000
  13: (0f) r1 += r2
  R1 pointer arithmetic on map_ptr prohibited

To fix the issue, let us permit map_ptr + 0 arithmetic which will
result in exactly the same map_ptr.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andriin@fb.com>
Link: https://lore.kernel.org/bpf/20200908175702.2463625-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/bpf/verifier.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index fba52d9ec8fc4..8c0f605e5ee94 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -5219,6 +5219,10 @@ static int adjust_ptr_min_max_vals(struct bpf_verifier_env *env,
 			dst, reg_type_str[ptr_reg->type]);
 		return -EACCES;
 	case CONST_PTR_TO_MAP:
+		/* smin_val represents the known value */
+		if (known && smin_val == 0 && opcode == BPF_ADD)
+			break;
+		/* fall-through */
 	case PTR_TO_PACKET_END:
 	case PTR_TO_SOCKET:
 	case PTR_TO_SOCKET_OR_NULL:
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026234905.1022767-60-sashal%40kernel.org.
