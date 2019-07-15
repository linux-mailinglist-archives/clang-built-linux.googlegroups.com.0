Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBN4OWLUQKGQE44C6WOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D43BA68DC4
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:01:28 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 145sf10290396pfv.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563199287; cv=pass;
        d=google.com; s=arc-20160816;
        b=XIpRZC5Kr9gZdY5WHwRLfTH+Q7gCXbSOmSx56TWVraw9UcNzA0bIcKCj21IxOLlwxu
         rLDnAt00oXdqS7hTwdMcsPo2sBNgDAnDg/V2rxtK01Ar5qzfqzHhvfO2YNDX5W9CIWS9
         99E/WypWxnhj4DI817O/zrgYw6lqquH83ua0mjufkth1i5+IRJUNawC9FUGz+W2kk15r
         ar3zknVR5xBSD2z3KTuW7S/RKbnkOisGCHNVawr6f1ZzuGS2BYJdSJjXtf74kioZXYVD
         41DwGGxkSG7SJtg9jP1y6Bk/kBRCtFo13HY7JzhLTCubAWNJpr7sn2bENVacMe5K9Bqs
         J/Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PG+Usyq5HJleIZ59AGLXygzicrGYZwIVZ8tyhXR3b7g=;
        b=RJhBh9wvp30G3CbDsFfKuvjtq+/yiDb7kHC3mpxodscFWxqg/tJzutOIOYaMoUzgh+
         NBK4IAMV7TPeOwtUFVI/ggUEg5lonPFounWONo6sdazZEcljZNugAwcKvHXFooiN4AbX
         AGsDbu3F/sv8ta/dEw6qUDyjESq15MBRybKFPUzv6W4AG+6eXEcrkvbx9NKgOGD2PL3H
         I7gkSTbKy4ZuxCQgHk1HHBPQfrpDeqVdRUFU2cMS+HLOzcRJyaj2E9Y8GTodNkKW+V9t
         OsiKvepNDxW+vVNoYdgYrIeLn6bgK5zfP1lWbu68nDIcx7ze0c+QvmDhssg8VpX/Nrn7
         q/sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VoPtOeOS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PG+Usyq5HJleIZ59AGLXygzicrGYZwIVZ8tyhXR3b7g=;
        b=qf1sG84+iB4jdT8a94B8iqlHKPIxSV63RepFZEMD1VS0q8gf0J9Y/8eLeQne1ex7kM
         yi3OugkR/QGXWMNFu7Q+YlNQGiy3pRyw2KzwDgenDEYzJTBcEfI4X2XIzjYqCKGADbOy
         OoGXzS8Kk6TrshCKolqIVLzCIz0NgUeJ9Z9CPBIjSf+eq0qKqTnvVbqbX9BYcwgljIfF
         ZDsJ8xMtxBadtCwKxkLesQnxZMiKDcBVsiJht/LkCLSVqs5qECqyT/CMlWFybQr4Twco
         oKnMUcicx+hzgZCqukY8/TiQ/OEiSOOxQ276SGUTEVRtI6niPP3Au6BNqvw/MhYsnywD
         52bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PG+Usyq5HJleIZ59AGLXygzicrGYZwIVZ8tyhXR3b7g=;
        b=O7l4PP4IaSI8DleOOel+IEi7xPtZ51SrBATBSW6QCTlyaL4LrsdVZd36kgoLImqhdn
         lGRl8By4QEO7nUsGBYUA4UuuK6Zs9GA6opXVOKJLPKUjIqIsn8UJCNcnFVDK2EwQujmh
         4YH7es96reGe8QG66eT99DiMv9wXsmnTTA39VkC41RIVxYOgcTG65NMm5VBtL+fqfy/w
         6c57sR3i7IdJDi+8flRI6qsGEYmAorbFD8IK57gJ8M2AVaL1ieHuEWXGErITtj6UoBFr
         5vSOL9jSbIt2WQl3ZnMwDQdVqE9AREAMSTpIZ5CE2bzJ8I+yljvk0ERcyLi5gLxVmbv+
         uJLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiQ4f/kCGvquyLK+5vfqQTqbXTUKlWy1Of310hX07FVQ/BiyPo
	ybqvnNNRJ9yNxcdoSJljTNU=
X-Google-Smtp-Source: APXvYqx9bdbtBNwI1J24xlWt+3Ra8+b9PWwKrLkWse6iBnCjoWULVvJlQAYF2ioKY0XYB5n+F8ocHQ==
X-Received: by 2002:a17:902:f216:: with SMTP id gn22mr28013657plb.118.1563199287552;
        Mon, 15 Jul 2019 07:01:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:905:: with SMTP id bo5ls5993795pjb.0.canary-gmail;
 Mon, 15 Jul 2019 07:01:27 -0700 (PDT)
X-Received: by 2002:a17:902:e210:: with SMTP id ce16mr28893707plb.335.1563199287255;
        Mon, 15 Jul 2019 07:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563199287; cv=none;
        d=google.com; s=arc-20160816;
        b=OpNm6PutHdH0lm4Nnw/e7K7Ux5jPJEUA/DL1E9i8r1Lh5PesRP6KbX9y4vqBXNspvp
         +BQdvIYnu5y71fciXMtsMlK2Bo0k+ttgJ1DgGRdv9W6k2Wuo8SJVZlITlL8tfU0h+fKf
         SLPxfga9aFAzAg581OjZD1yed7l7AmxodZSG9TDuGgx6EpQ0bn7NjODekOxzYxtIoFcL
         LqWaTGMM9yiP/nOojsmbuu/XjfY/wcunimmsQzWydXxrehbeeGFqUCHPv3fjrS953TlC
         TlcA5TOhfUVjBCPMbTutWg7a8Tdtt+deXicJnydU7R6nb4/3QbNAdqJzxecu5mEReoK8
         csBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6HHEGa2249qB8LUDHg+7V6s7X3O7Y0jqWyhwQJ2jr4g=;
        b=HqRBKkXoggVLKpAE4W3YP+60umMKXfs7RQjai6Bz3rvcWwlG/52P0M8WMZezGLrryB
         wL/NZ8iowzy2ZM/PJ1N1V/C67aFUtt+OtYmCOZ2NOrlS03PuYYN7xiixhP9egnyYs991
         yIsASdTCk+/1b0QbrwKoXQIa2ZPIVOn+zosb0kGAyZoA5GW26lZsYfl7H4qMd37ddLsS
         8/p/OgYwGRP2SsH3UmQRtO3UzsLif5dEQxpFxGPpLy+u3ZotlPF0f8zPj8Ta4XsPqkaq
         OjrHZoFxXxD/5L16YIKJ0yb2lc6PDkWkRkIdmP8gaICoz6e4tq9BbkONjunNMk2YpnzV
         SyDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VoPtOeOS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w190si537183pgd.2.2019.07.15.07.01.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ED4F6217D8;
	Mon, 15 Jul 2019 14:01:24 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.2 226/249] selftests: bpf: fix inlines in test_lwt_seg6local
Date: Mon, 15 Jul 2019 09:46:31 -0400
Message-Id: <20190715134655.4076-226-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=VoPtOeOS;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715134655.4076-226-sashal%40kernel.org.
