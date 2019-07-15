Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSU2WLUQKGQEBIY77QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id B47FA69131
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:27:23 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id 41sf9080203qtm.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:27:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200842; cv=pass;
        d=google.com; s=arc-20160816;
        b=NhUfTE/cKJCIGx76HvqfX5jWESmQJsyzgo/r/S6BvV/6i6XIHxEP1mA0oQAjHJRcdw
         PPqxq2Ln0FN58woVgtKXcK4V5z0cqyQtr4ydeM6Bm1vHk7MtR8l1p5twSgVT1RF563E2
         JDnN2UDn2z88nmw1X4uii0pVVZdtegi4oqhjUXmGbQTjytMfdWsBM0rLPXDZi/z3l3c2
         ZgpRLOKvxSJGChn/Eu4i/byTzp6Ade6u7cBqZJ+f3mObh4Oi+ZDFAey7rB17nT4jX/N2
         rygU2um6QsjiJjdODfg0CBsGCqTQ/fjR4EIOiQqoRjmiCEc5Aww5GQh1H/61TEYW5bZT
         viUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uDIofHwYVVQfG2JT5svJM9wzADFXeCKBFRO8PxXD8PE=;
        b=qMmckUWOrvV8f47J80NeOuM7RxcINHPhRDBSt1Q5XPOK+t+pGGwttxRMtfOSUIO5KL
         tFIVdyYcYw9yzY3JHhWTAPWhye0VYhJGY5//YqXHxQp+lxpmjKgc6qCSkFMy17tpFU+M
         4XLU4R9SO0QdfuU3H0sKTDxcRlx9G644lcykf5Bn+eqr6wKdfCxg5vuoR9IhXjXZtwvT
         GicphyEuBKdROiLiZ0MLTpgs4lgGk3oXLPAXiYTTmYTi3O9ZSTI+4bYqDWOo4/8JsZLl
         /VG2O1UUR4GfaFBe2I0TPkLzrhpej9OeZ3Nit7yYkWVnsntlfUjoVqjF22nNzyZ5ObR9
         VQ9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qmFRbGn4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDIofHwYVVQfG2JT5svJM9wzADFXeCKBFRO8PxXD8PE=;
        b=BBXGa4nLqd/ZuRgn5AQVRYZ48+6+lZQ7pZinCKhJChkCgthkidtpz0Qy3HQxnMO9Zi
         wunyxnYnwusuQKSwBNsZDHhQlv9mRuuGutvMfU0GvXVertlfZvyeXKqtfgULnY66VIQf
         ZBwoda9eIvHPRWxv/+gOnnKJntuerbj8O9rZpPUUAfRGUHTryFtrimPZxlK2vyKtYHp+
         MlchW/L9Xe1JRwnr1OWEvmVF9NKSIViMP4es1krraJ84mRISlaQy4rxdjmip5F03uPIB
         uDlYsXzacHmycCrNmFqoT+B+YR6NwZZydEUdhCtKl4KhBsJ1buIvWBWk0WhfQpOj0W70
         w8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDIofHwYVVQfG2JT5svJM9wzADFXeCKBFRO8PxXD8PE=;
        b=X2akziWvzYcwpszKqj5qC0aZcll5b4D6kYdB33+VxH2MP+MJou7tvfO8/ch8Kg/vfB
         hKrJI+NNTBWj8LMKDzu4c5OSTfPHscXM1lJpe43mlt7IlCOPHTA/gF1/Fhv/ctsjQHKZ
         rtHHRk3zwdzXfFTpoviTrSAOm7KnEysK9ZMUfaoouhLYui+pmra1M3qd/SyeGO/ySNud
         cpOAxDiqdOLcWYaq0Yjnpd+cKHNP5Uy+H9LvZ43xrMezCIu8zfzMEcuLungzH+z2MPmF
         0JoD9sTkxCEu5actbSVT/Qt1g3CjIOxFF0bSdbO44kuHbryU49DedF/TQfovEueZsHRv
         /egw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVaepcHUukyIWljOv3CAr+QBt3OhBmFHBTUN/cPLqHQi+JQyqCh
	OwmNB0sjj+Ko6Y0QI6s2Lec=
X-Google-Smtp-Source: APXvYqxr3SCs+Xy3nMFQhBEZgt3YtIneIhgrXzQaaGq8pY3bA6ykUVdWnYuJ91yDeFclqlaOC0W8dg==
X-Received: by 2002:ae9:c106:: with SMTP id z6mr17739018qki.285.1563200842799;
        Mon, 15 Jul 2019 07:27:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d4f:: with SMTP id g76ls5228617qke.0.gmail; Mon, 15 Jul
 2019 07:27:22 -0700 (PDT)
X-Received: by 2002:a05:620a:13ec:: with SMTP id h12mr17160734qkl.266.1563200842575;
        Mon, 15 Jul 2019 07:27:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200842; cv=none;
        d=google.com; s=arc-20160816;
        b=WWyIK1vvTPnwJTrWD3TbmYT607sVR6MvomSNULAYGIe9tR6yA3ivhCYZ4uxO3BFnN5
         1W5C8TMDSMg5Pl3vhYGQxugBPnEp0QHwN0T/GnKXwIK0k6k7OOUAthvJtkVPvl/LZadu
         8sHOLgZZRuOj4buUAwhJw98Gi9L7AIwh+lOSeEBzRhdu/GU2igjC2wPwEsWQo7OE1JGx
         DUw1VZy1c4TzGsXwfaCehEL3i8ox4qLHHKlyLGpzMpcIOd87n9eoMun5B/TQpr+8ak4s
         lDnxQCNL65YgaAAJ0nbOf9NB+kcFGSX+WdevFkbPBcIKzDMjM3WlpqE/suX4SQcLaq+g
         AeVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=znoQcB2LCHphuhXzJh3NMgjSCwUxumVM4q82b4x4OdE=;
        b=ghhCEnhQLCv569oVWWONDnTV+G02DU5jTUdFNtmx1YNVyg2srcclRZgwVn/1UIO54T
         Avv5ZZ4OCiDpbDYjHqC3oxv/ZBBCUCRGt4nS4CIXf1pet/aPOkzFuL3ZZt2k338zSb1y
         0Vd2npq1aC2NOOSZ89jgod6e+ioZACX3bDWskRB/VwFQXpAHsO1p9xX9ZLNaFqhFMnSH
         Jn5MJrIBq8EWsq5JGzM0Is93UYpRxcQYFvBEAkRvN6oGCCvwv9h0FqYeXCFXQ1G/955s
         X9QmcS8KhAkWdmCISLBY1Huy+mpeYAjhSR3y7r8gIjN5XkHPY1r8o0KQR5dSiCF2XNkg
         1txw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qmFRbGn4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si1191803qtc.0.2019.07.15.07.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:27:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8096D217D8;
	Mon, 15 Jul 2019 14:27:18 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 142/158] selftests: bpf: fix inlines in test_lwt_seg6local
Date: Mon, 15 Jul 2019 10:17:53 -0400
Message-Id: <20190715141809.8445-142-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qmFRbGn4;       spf=pass
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
 tools/testing/selftests/bpf/test_lwt_seg6local.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/bpf/test_lwt_seg6local.c b/tools/testing/selftests/bpf/test_lwt_seg6local.c
index 0575751bc1bc..e2f6ed0a583d 100644
--- a/tools/testing/selftests/bpf/test_lwt_seg6local.c
+++ b/tools/testing/selftests/bpf/test_lwt_seg6local.c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715141809.8445-142-sashal%40kernel.org.
