Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDOE3X6AKGQEOBKRQLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A94299C05
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:55:58 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id z23sf7053515iog.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:55:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756557; cv=pass;
        d=google.com; s=arc-20160816;
        b=CysQz4tJQQF45XS0aReC5YeIxyozrKxfokSOGRwsmbQTGjYXVFUdz6BnDgC25X/oyq
         wXLy95qyGL3NbLF5cH49FDUuEbazbuPcgCj+NuB2zCwA228FJbzYJOPcVMwu2dES62nv
         7WveCdAaF8V7ZbLoEDPRBicR5YSNMVFRl1aCZnghZpRaZoKF7kakTYf/BZME/2po2pd9
         ltY7GX3dPwhGTyAYG90mChbuCeSDG4Tn+Epso6YR6gnHX7JkAioH6Xy9/8+pz9HwtIPz
         o4oM5ai7ZosLJQTz+LDhbiz7wYpA0VyI/fqT+SCd7PgcNbi7FIaDg73m0yQOd64d9gw5
         o1cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4CEp/BS2V+nHXDyeBU4a3YT8Ivra6BoehaDoFs5J8P0=;
        b=w+PKiQeL4stmlbc/7vpm0UAm2st/dm5hUptX4qFzc/qPMpibHtKfAAYEMVwpMN9vJY
         Bzc24VpexNMu+SWvqu0iqq7sgaJpdHWAUYKNB0eMlAvbKrmprB+7kqZGcB+DKcMhPmiQ
         5qRAbUTC6QI+mJ4mjAv8c23DKNsAfu4N8i+5ivljpngYBfdA+wW82dB8C0ImZ4DlsLz6
         a+/o1d5oVeVn1MEntJtR/a/0PDbYpbUEwsA787jUAA53/PohuauAVVMf21cnAPGUIALV
         J2F8FjExQS1pveHIu4Xn/XGnov3S8WIkti3nXQxOn0msEuTCVEUbtWwXt5KLcre7nwoZ
         R2jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="l1x/CFUH";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4CEp/BS2V+nHXDyeBU4a3YT8Ivra6BoehaDoFs5J8P0=;
        b=b+85pSzpQXPTo66g7MGtCGv8z+cycKdfyDmNJvaFDFrxO4l/JLtpUEDtRrOLNBmjc8
         qKSko5xtorw34KFt7r5B3G5byu5g7af8+H9/t1ozJgZb9HxQHhNkZaVfWafsumbz+r7X
         aIJZzBNxkad+aXYMxBE2S6vZ3UbXhDLaoouRmC/4GE1f+HklENjaYWS0DsnfQduPb2EG
         NpyCLrRtL5tC5uJA/o27wjIWZ0Qlut8IH2mc1Pn8+JCY7CydDHhlE7ZKiXfYdGZWK4MW
         oQJEiwi+MzA0wUpqdey8ZmlSlCztvEQHvE0HCdi5qvBH2Xv9AISrkBx+g2NNEcF751H1
         AaHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4CEp/BS2V+nHXDyeBU4a3YT8Ivra6BoehaDoFs5J8P0=;
        b=OGboDRtE+AmopfDkQ1kk90/PLadzP+D+iVEpPta3xtDfkM3OWJ4GQuY7QB+5NK0u5z
         S3xisVqcZLRvLJ5FK/fNRhZJ9bnSwmHYugijC4UtAxVHzKknwHwacMLs/KtoXxd7bBNF
         yevKls3RniDgIKM3DyxnktksC9x25z3EbA6goPiUcHIsUUN6xsGyr5BHL4maIjLHV8yE
         ogm9AwllR+o8UfYtYdLIfJ0ItxAqUwd6oDE81bdbZToBE/KAKoWD3w1ktPIufz2wiWL2
         PulRa8nWU8MBinD6my9Pb+7pEV7JhTtt4+AhLGuE4eMjqgBd9pJhXEgLm+0UoXVECng3
         yH1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZAxq0IFEQtiVh5Mt0XtEmXDJBcWAqDXu92x8fHr04CrOZ/+33
	b+WK3/VV37ylG/F3ZDnPkh8=
X-Google-Smtp-Source: ABdhPJw7CKedPq/GVjZGI6ajtcXVn2vpnnCZDel+C5vaim9Rxl3K0JFxWHCZDeZaIUoaP1oAZGvZqg==
X-Received: by 2002:a5d:9615:: with SMTP id w21mr12740800iol.59.1603756557161;
        Mon, 26 Oct 2020 16:55:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7e41:: with SMTP id k1ls1474337ioq.8.gmail; Mon, 26 Oct
 2020 16:55:56 -0700 (PDT)
X-Received: by 2002:a6b:7610:: with SMTP id g16mr12266850iom.124.1603756556807;
        Mon, 26 Oct 2020 16:55:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756556; cv=none;
        d=google.com; s=arc-20160816;
        b=pWVgT2FITklf8fnE1NI0DkBwTqVj2JfbrYrMT59TCscvH4RvEwViHSWzxGJTwIUc+Y
         1D3F21OWRT4W4iq3Z0crdgB8g6AHbkIQUu1DaFm52orXgoxqaXshdwLyyAOI/lBnbpvZ
         NSIwiiFwXDebJV/egxnCwaO47EPU+IajdAlD856iM5AowIHSHEBhP/2VzEQWs0LmcvJR
         uqfkMVLihIhK7hgI558WeoS25Y/hk0Ki3G5jyuPNH9c5utjmYtaiE5qwJKiSs5fDrs8g
         jkKgki69kFs3WYkGStfOD3s6geOgCY1YmKKoSt+4+7l/t7Wz4SsX+a5H5PH2CglQzF8s
         Jc+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iA/hSLJXkWf8y0irnNMmY/tjJhPpsRRHR04Ny5kfqvo=;
        b=UwWk0JcFr1SYZjWI2ijEinErQq7ScQqYa23xb35gTi8vc2pOW2UKqMFOrzT+cJAVZE
         rhcFi0/LLSHDGp9PkrWdGpFZ6ERsGVz1ekF4O6ZL4tF/TPLHpK92JnXWq5VLhKhic7al
         9tp+ejJapDUwCQvc85KCxVSOmt93/3EaUqXgxheOyTkwS1FOKwFa5vvgNnKnGr0FXd+2
         ZrraH0mT+Gjz4YkA7T+ezGML8sfTC44KCsn3Bc493znnJ8K9GsTEMKeenrWnj6DAgZEi
         +dhp8lIbrsyBJSkwHPf3IQiqtXYXlFZEtuXxaepsltlLtx0jzYFWZ4X+t4hocaAbO0Np
         plRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="l1x/CFUH";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si747764ils.5.2020.10.26.16.55.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:55:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 63C7420B1F;
	Mon, 26 Oct 2020 23:55:55 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 32/80] bpf: Permit map_ptr arithmetic with opcode add and offset 0
Date: Mon, 26 Oct 2020 19:54:28 -0400
Message-Id: <20201026235516.1025100-32-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235516.1025100-1-sashal@kernel.org>
References: <20201026235516.1025100-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="l1x/CFUH";       spf=pass
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
index ae27dd77a73cb..bd0a5ead2af0c 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -4398,6 +4398,10 @@ static int adjust_ptr_min_max_vals(struct bpf_verifier_env *env,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235516.1025100-32-sashal%40kernel.org.
