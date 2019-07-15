Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIUVWLUQKGQE7Q7I6HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CFB68F97
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:16:04 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id n9sf7151286pgq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:16:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200163; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZ7iV63ibQqAQOckd5sdRsRhMlryDad7EGcQU5jTfbO6VbvDEEn0WeFzROTJyxNqoX
         0bqINDdxVRGSlAr8gccgeSZVnGn1RStS0o79UcfjZ9tP8GENzBhuPOBBJlA7w7/0YEDP
         tC2SiwrMaE58WokzTt6rzxG3juWjDM0vcB6mfp96v0FYKrzlnxpPmyabekHsiJmtaZ+G
         oFZQKFNRhQ51QjOyfg4wruosdwJoydiKgwWoQX7E5mJx6fR5ARasTZGd3dxV+AZufUPU
         exY+ZsQmbRUEyWsqTyW0LHdp5IlnVy3MkZ+n1XGeF2calMebNoakP8hDFV4ypKCCCvMX
         7zuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GWWj10/w47PRVB3XtgQL51AzPD4p90VirJIXEtGvtyM=;
        b=MVDZ8sHHn4K1VXtQ/84UqMo3evCuFudjydT44+Q5oqNSG7hTK4XJI3ibMDGQ2f2wvi
         yQnxghu4mhRLu/7n0cM4i46iAi6mN2jUCD6JGFBft/866MBLgOKMZouEC6EZr7s3D9lX
         UYTTxQW9tVXyuVFIiQYUTmAyD7wvWXUvBCwcvGldd45x8c78lTM7IW74WpLmIkslgwtf
         Tamy5J1laBBnVBUf9gopYhhEa7lo6ypheqXfurPhd9z+aHA0RSwIIUwggMYgQ+J87rZR
         kxheuvkqrrK3mJb4MAKnxsQl7k24500nOTG3laKi83Vm2/T+MiR0r+I2bKWhsnUXdJfQ
         bilA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ByKSyNMJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWWj10/w47PRVB3XtgQL51AzPD4p90VirJIXEtGvtyM=;
        b=Aej7FPSOEU07tHvZ1Gip6lLxwsRKPPHvGL103Lw1ltGsvh1MkPriKleZUNMWi2IQU3
         6JmXYpGJ1Z/gUPhOsa8tU5Y+ehVAZsYkQTA8LAPrai+KpxPZlTDhrvqcwFoIQmw45PHz
         +ZmLSdBS5qesv50zh37me4nnNZ074YkxMCcXsQNhqVifXwdVTRVhhLTx3fWJi8dXmrLa
         MRgafhZAAXDx7SJ9/iRg7Zwg+656eCDY1QEG/MfgO1eBfcEWwQ/THyyliIxHXiCgqznV
         BkscHjr7bU/8uFvsb8AJKfp4rAWgeh4381fCSGq2DIAp9wXZw4e55rrE8eLblPxRiHaS
         SRYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWWj10/w47PRVB3XtgQL51AzPD4p90VirJIXEtGvtyM=;
        b=mg/6Byyl25LCBhJgDNWl186j2jX+NU9xeGVZijx86lamj7R8T2cg/KgCAiiMhMwkVr
         lA6UlYecxJjeExcMsNsh0uoPd+RgUGKDsXpVYfQTXLy2jrvGYgVjTZ6DAe8XrGzsjiGB
         +rXSwkA8lcN/rtMVv8IrhXO+jSAlgXZLh24SypoAFLj9om+0RrhmMl3u/46B7vvgL2cs
         bpXmFyR926DsAAPQ3HbLnfbm8JCRuQsPLtXow0zlcnAe3u1Pqui1ovM84VZedaTadsOu
         uZqE8sBsNv0vMSHi1BYTXr1F4l4jcR6TAApxsVhYAVO/lqjdjoEwjgBJMYCeY6mlRXBM
         inKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWh1W+Fx63fKQZmbyE8IlUY6Wvu3242BVVT/sTzW60ecUYC28ea
	sD4yktLepr4BwC3ppcEF0hc=
X-Google-Smtp-Source: APXvYqxNq1c89PLtWZZduwssgs2ccjArIahsyLGlVH7A2bXDMlKPfKmwYwzoL7eCI1QptnqaPMyyfQ==
X-Received: by 2002:a63:5b1d:: with SMTP id p29mr26179297pgb.297.1563200162817;
        Mon, 15 Jul 2019 07:16:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2acb:: with SMTP id j69ls4545989plb.9.gmail; Mon, 15
 Jul 2019 07:16:02 -0700 (PDT)
X-Received: by 2002:a17:90a:ba94:: with SMTP id t20mr30737203pjr.116.1563200162537;
        Mon, 15 Jul 2019 07:16:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200162; cv=none;
        d=google.com; s=arc-20160816;
        b=IPEyRGDLMTqVLruOaYPH0QPH9qvEs4cFzTFy9ar9XqIGy5wdshkhu3gl5JIGD77y4D
         iQ9sSWDSKK9mUtex49lp72XJDdTNcXCuHyAnhMs5jBnMH0XxPyj6M+wJSSm7zs0vL3VW
         UTWvAjsT6uHKxcwo9fLJsZvYZeo362kwpu0aOmR7RA9AZiTv434Z5CZWwGn8nZfp98HK
         pcygwHtbbdYYB96yb7fnegXrYTaixX1c4E6TxA/Ti30fUtkTtzrffkuwSgspq9hg2YAl
         0EFMpzmfkRyCLoXr37rUs4fPtyBo01PLWYYSjlt8WnF6xf54VgGMdrTbRA8QoX6xUEZr
         ihUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6HHEGa2249qB8LUDHg+7V6s7X3O7Y0jqWyhwQJ2jr4g=;
        b=uu8yCqIaRk2HiaqLTgFVJjl23i96C+Cf0kOvvAYhq2WxpSFXopBjbK68MoOxoY7IxL
         1FStkjMs282AdvcmuGU0U/hYNOA/uPkzz/GBn4YnKJG1QdhiORVPbdXTUKXqe3OGAYPb
         kaq8KLNIksPvlmjeMTIOEM3BTDZgZNQIWHCG1rAqd2rE+giZs+E+aoxRJGZ6Ki6uXKsa
         0yLkzH/AXQesUi9F8QZCQh46uUY1oHIDZYaCoRzVNNwvfMxk3t/aBLYUkWPc8QkOtdi1
         1hlcxzu1gtpT9igrhdluOqHSPYBTZ6n/Bm/Tkz0BTu6PJbxB3BnRxQVIjDquqwDo18R8
         tUug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ByKSyNMJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si874389pjt.0.2019.07.15.07.16.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:16:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5E033212F5;
	Mon, 15 Jul 2019 14:15:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jiri Benc <jbenc@redhat.com>,
	Yonghong Song <yhs@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.1 198/219] selftests: bpf: fix inlines in test_lwt_seg6local
Date: Mon, 15 Jul 2019 10:03:19 -0400
Message-Id: <20190715140341.6443-198-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ByKSyNMJ;       spf=pass
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

From: Jiri Benc <jbenc@redhat.com>

[ Upstream commit 11aca65ec4db09527d3e9b6b41a0615b7da4386b ]

Selftests are reporting this failure in test_lwt_seg6local.sh:

+ ip netns exec ns2 ip -6 route add fb00::6 encap bpf in obj test_lwt_seg6local.o sec encap_srh dev veth2
Error fetching program/map!
Failed to parse eBPF program: Operation not permitted

The problem is __attribute__((always_inline)) alone is not enough to prevent
clang from inserting those functions in .text. In that case, .text is not
marked as relocateable.

See the output of objdump -h test_lwt_seg6local.o:

Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         00003530  0000000000000000  0000000000000000  00000040  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, CODE

This causes the iproute bpf loader to fail in bpf_fetch_prog_sec:
bpf_has_call_data returns true but bpf_fetch_prog_relo fails as there's no
relocateable .text section in the file.

To fix this, convert to 'static __always_inline'.

v2: Use 'static __always_inline' instead of 'static inline
    __attribute__((always_inline))'

Fixes: c99a84eac026 ("selftests/bpf: test for seg6local End.BPF action")
Signed-off-by: Jiri Benc <jbenc@redhat.com>
Acked-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../testing/selftests/bpf/progs/test_lwt_seg6local.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/test_lwt_seg6local.c b/tools/testing/selftests/bpf/progs/test_lwt_seg6local.c
index 0575751bc1bc..e2f6ed0a583d 100644
--- a/tools/testing/selftests/bpf/progs/test_lwt_seg6local.c
+++ b/tools/testing/selftests/bpf/progs/test_lwt_seg6local.c
@@ -61,7 +61,7 @@ struct sr6_tlv_t {
 	unsigned char value[0];
 } BPF_PACKET_HEADER;
 
-__attribute__((always_inline)) struct ip6_srh_t *get_srh(struct __sk_buff *skb)
+static __always_inline struct ip6_srh_t *get_srh(struct __sk_buff *skb)
 {
 	void *cursor, *data_end;
 	struct ip6_srh_t *srh;
@@ -95,7 +95,7 @@ __attribute__((always_inline)) struct ip6_srh_t *get_srh(struct __sk_buff *skb)
 	return srh;
 }
 
-__attribute__((always_inline))
+static __always_inline
 int update_tlv_pad(struct __sk_buff *skb, uint32_t new_pad,
 		   uint32_t old_pad, uint32_t pad_off)
 {
@@ -125,7 +125,7 @@ int update_tlv_pad(struct __sk_buff *skb, uint32_t new_pad,
 	return 0;
 }
 
-__attribute__((always_inline))
+static __always_inline
 int is_valid_tlv_boundary(struct __sk_buff *skb, struct ip6_srh_t *srh,
 			  uint32_t *tlv_off, uint32_t *pad_size,
 			  uint32_t *pad_off)
@@ -184,7 +184,7 @@ int is_valid_tlv_boundary(struct __sk_buff *skb, struct ip6_srh_t *srh,
 	return 0;
 }
 
-__attribute__((always_inline))
+static __always_inline
 int add_tlv(struct __sk_buff *skb, struct ip6_srh_t *srh, uint32_t tlv_off,
 	    struct sr6_tlv_t *itlv, uint8_t tlv_size)
 {
@@ -228,7 +228,7 @@ int add_tlv(struct __sk_buff *skb, struct ip6_srh_t *srh, uint32_t tlv_off,
 	return update_tlv_pad(skb, new_pad, pad_size, pad_off);
 }
 
-__attribute__((always_inline))
+static __always_inline
 int delete_tlv(struct __sk_buff *skb, struct ip6_srh_t *srh,
 	       uint32_t tlv_off)
 {
@@ -266,7 +266,7 @@ int delete_tlv(struct __sk_buff *skb, struct ip6_srh_t *srh,
 	return update_tlv_pad(skb, new_pad, pad_size, pad_off);
 }
 
-__attribute__((always_inline))
+static __always_inline
 int has_egr_tlv(struct __sk_buff *skb, struct ip6_srh_t *srh)
 {
 	int tlv_offset = sizeof(struct ip6_t) + sizeof(struct ip6_srh_t) +
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715140341.6443-198-sashal%40kernel.org.
