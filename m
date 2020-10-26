Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZ6C3X6AKGQEXA4CR5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C18299BBF
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:53:12 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id x5sf1326193uau.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:53:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756391; cv=pass;
        d=google.com; s=arc-20160816;
        b=JJc5lC+0fshU23SJssFDNVZf3XU8VqjuY0wSA66wkminiTJDptAEpU4Fknf0b21OHk
         mHJNX6MO61ASnfagz6HvOo3Qt7uH0AmP2PjtmnikTIxE0c38/JiJGhKhxaxrE75ecmCk
         SNvXTSvh2BwHaawvfVPZ4DfEp0N2ZbiX7sech/pgACfb6NlaKWmhwk2w7n5uUtKkqqrp
         zz/J6jbWVTt9tJdXpiKAGLxz0bcNGgI+2i69siHOiQweY3a2VVMaQqJpS1DEbUo+lnM0
         Nr8Lz9mlvTKmQFjFHRvpqAY7k2zmzlVzRiO3ISWQJrR/U91so63HRl8XGeLmmGiZMIFF
         +ALw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Q4IdXfSq8b+OKdpFvbqU/aXMxz8ksqyoAT+DTfgTg3s=;
        b=O5MJeeanbEZz+U8ozb7SnsrLRUIehamvBwHa4JwOkp5JlmjBpx7LbeDsF2SqYH0Lyu
         kLT+6tAwRCz69/zF6rdvp6ZP9/gbaDPkPeYHc8j3mtXEOYnCwNm0hRD7kopaqdnxORnj
         LJZXUw3eQl8TzkYvcj/e+bK4hOwfdiM3ZoLXTOD75suy6PbwFiDjk4w8wD+3/TlTOscP
         jLh+TU+eIICFsCLxBVpjB2F64gpYxGCMhKHlfBNVSGNYB39wMvkYJq1gV8MPQYmx9mVo
         8p7uqj4ywmgbTn26xDn/A9bgvRjxM2H7a1l2QA7wWSCs68ELP2DkuoVrvjLoltEXgcRS
         9jrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hc2MqyvQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q4IdXfSq8b+OKdpFvbqU/aXMxz8ksqyoAT+DTfgTg3s=;
        b=cWx/6lE6byrg8h/T8Nzd0EEp8Uqngj4wrO4B39WAUo86X8fdGgVLHymf5sBWnvZS/t
         mzyWxsfsmpkx1dFyCwpUrAfnInoTAjWGFqDSl5WD9ouc0MGBjgYN9SfFgUgiXjM02mED
         aznmPJZX4keAUFXqbOBG6/bnqA1MwPTEGbBuWw0jk0bGgCI60MYElgcLbTQuSGTioRh5
         j+PXaEHMeqs76XXPGy/CmOE5SW2yOISu/E6lSpNZI9AzWeiR3jE6Z1Iox1M86EWR7Y9q
         40JixboJi72ReZKnIodTZvkOHgHaZcEAzoqGNbffWknqAaLRlE86fNjNZK9msSE448cz
         dQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q4IdXfSq8b+OKdpFvbqU/aXMxz8ksqyoAT+DTfgTg3s=;
        b=SAjcniif+n3qQYjVxjnaWorbGhhSFL8pqDBubh8rtrsA8UD8Z3Qv4oIXIBJKj92Qjj
         dqf1OlFvaLhBgfcB+i8oaKlb7ide3VP5ntJXkuxt6+33BFNvaMeXg/mPOcCugYzUrzIB
         jHb+3UNmXyLYBk9cjfJ4IbpQ5u/d7MMAXTrgET+kwRnLVhyumPb/lWvab/1+qA/iRWzS
         EQM6F3x4bNZhj7uFeBSstYXARztQLeT9RZ5Z9jztwrWPYk4cW9NdBGjZPsXuIkaq51nm
         66CpUJGJ263HhdiHIv1DTvnLp+BNEmP7YzeuRtmW5nq9qzekjsHqnu9dg9TUmpCITC/t
         J1zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324ahm2tBq26A+F/+WY1U7ZzlyyQDY4oLtvUt/gevIxrYWDM+32
	a8YEBF46NPFvd2DW5CBuouY=
X-Google-Smtp-Source: ABdhPJwgQUCoFE86xYTCiLGMRHdO1w3QJWbcBHHSni2nQk3sxs4BUMmjIQeRX4pYKhqJf33TGwoAxw==
X-Received: by 2002:a1f:4587:: with SMTP id s129mr182537vka.12.1603756391582;
        Mon, 26 Oct 2020 16:53:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:15c7:: with SMTP id 190ls1167597vsv.1.gmail; Mon, 26 Oct
 2020 16:53:11 -0700 (PDT)
X-Received: by 2002:a67:3397:: with SMTP id z145mr310822vsz.10.1603756391072;
        Mon, 26 Oct 2020 16:53:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756391; cv=none;
        d=google.com; s=arc-20160816;
        b=Ah0Am9I5vfCcKoOideST4TCK90Vx0FKlxTt8AJstOIdR0ZUMF+/CRNSKFdf0PnlrSL
         OimI8zFhwouFsbjmQWUy3CAuQ/KRIUFiI1t9GGPsiP/n0czNcr7kCNRYS5ZbyILKRqiD
         OURbgKcWoUYzipObywoQrrT4qMyQnC53TzUa5+JPV6Bostfms56SyNmuKt/WBoB5HRIV
         274HfruJ8AsK8VvoQTmYZR/CxF58/FvPf/FMgNlYAar8m8rHJWeSS8O7zaB/d2FZlwO5
         tkG6AdLoAkbJ6zHb25C01z448MW1Q5NGyXnBDQyLxpWJ4L5Vf/y3f0Ue7TpHxTufC58G
         +j3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=coBVkpPU74KJGZfu3DFAIXV+5CmTZIwc8MR6RrjTDNI=;
        b=SrcizuEnirOOyUU4RkQRj2VIWpc/b8T7ThZc/n+E8dvSfJ5fw7/VCkE2GRm8vkRE+q
         IzZAmB4qLVLuys6szoXNUDthq4QQ9PJ0TowuuhfybHdVsTYSrB7OjUkXqHV6qPtSkjWe
         pv1uBUOaS9hl36jZIKQMUZDwEdKwlYCrlCWc9FjCz417M/5klmxOHQA2aLlBI5mmBsUF
         EwKFI0uM8ZZ27qPxnlnf5iaBxXUoLXhb/ltQPmO9Shu4ef12TFJPM32nePKnDsLlQB8O
         deFEoYjeDcvH255nWSFijP6Lh/pr39MUZaAmxgPwcB1MEiTGyEBMy18GL5WzYIky8B3c
         F36Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hc2MqyvQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v18si600460uat.1.2020.10.26.16.53.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:53:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EDFB22151B;
	Mon, 26 Oct 2020 23:53:08 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.8 052/132] bpf: Permit map_ptr arithmetic with opcode add and offset 0
Date: Mon, 26 Oct 2020 19:50:44 -0400
Message-Id: <20201026235205.1023962-52-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235205.1023962-1-sashal@kernel.org>
References: <20201026235205.1023962-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hc2MqyvQ;       spf=pass
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
index 89b07db146763..2b318db54bf39 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -5042,6 +5042,10 @@ static int adjust_ptr_min_max_vals(struct bpf_verifier_env *env,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235205.1023962-52-sashal%40kernel.org.
