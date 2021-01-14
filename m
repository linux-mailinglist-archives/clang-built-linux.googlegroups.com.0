Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2N4QKAAMGQEIDM7CGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 472BF2F6B4E
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:30 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id w3sf3127937oov.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653289; cv=pass;
        d=google.com; s=arc-20160816;
        b=QRCeq5rWl5zBPnp77agcfZ3awKPHiUiHcGIvLnwRrLbzX0NMnjhcp6+7O5BjbdJg+G
         JfYdq0e8LrpUhw0j+O5xbWx4IcZxLF8Bw2VrYaNUMHs5spSmeaPVoX1dbEq4uZevVQTK
         bKK9xqBpew45BtRW37j8hehpcgkzDmQhsQC+zy48OVk9l2B+yodhUVvCmIHcSNCWUaNb
         3WdADZF2s+4AuygT28zQw/VhigoIhaoyTjrWchKeQx4NYMfSNCoMNG0SeyQlO/BJBPNi
         7oEZzIovDQFx2XlDxOwY2ODt+iFOboPmMEVeYZoglX/NXwJwRN4pdYyjWuA4X8jTozPQ
         xZow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uLC1QY4MZX4OJ4r+Kwui52AcXd+BOttg7oVw7aotg9o=;
        b=oUKb/AQHHha73Q0EOAk9wdBB7IlruXLRyChHNwIM3Y9ZQ37KU/zykSCYj/Jjycs4jA
         C/xQNyigllTzTeBc/1KrXVwQ0MVGOIFZOJU6xzOiR8pSc7B9XwduKezf9vq9pgfPlOV1
         YNUm+8ekOeAAhD34uV5xZdRUoqANvP5R059/SdG77czhTIZgs8lhI2CUawJrqt0TTOCs
         SV/lvz8WY9bqCmZssvHMO49Ea6IzSOmZlOtkQh/e51FQCs5SZXNw2Ka4f6Fx+ShWMv0K
         7MOODiybFx3i0zQpZfxtZShSte6v7UAXK/ZHdJQU4fKy58ji0v26NCvlGD/KzWGvTMkJ
         kIFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y71uz65B;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uLC1QY4MZX4OJ4r+Kwui52AcXd+BOttg7oVw7aotg9o=;
        b=D2DSATa5N5p/+UQ16YIYKg+rt/BSr86hwFErvEER7vOJ9GBca0L2HkG1l2DMCIAJzy
         3QvqXJcL43jbKqhEw0AwXB9NQHMxsZyo8rGwE8XhgbzU4ZAL3moip2svNmQ0fZf3bUQu
         Ma6Vsx0ww+iNNP+MEh7e213NA+xRXSnTedr9ubxXiy/xeM+NkxDejsvwBiaa5J8jyx1j
         2Nq4fRS+UTxaAkCXjDi4TRvADQtuCJwMTFRs7pmv5/nzOYZ1EeC5FfJWzyroc6dYl91K
         iU3DnYG3R+ECreKugLMh91Ud18THv23w8HTr6tjfX6IHXUj8sbTXbMqUYpt9wQ32hxVP
         MfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uLC1QY4MZX4OJ4r+Kwui52AcXd+BOttg7oVw7aotg9o=;
        b=eWVFcpwi3GEVs/Dc83GpFP0MBx5k1cI5tbaRdEQ380cEB0pWNnX0ieJJUm3U6PHod8
         pq7eFrwmCw4btd6qk/xiFL3Old59XHKOKugWcKJH5e4KF0ZJGSUzKkpjM9DyZ96Xdd5r
         72Kh8BIm5SYoPFDXR5VapS9NHHEtbzCSSpdW772j5ClNj/zOtyoCkm0RZ5W9nPWXvZH0
         LkeQxY9mRddcrEE4d9ubBpDXbLie5xYLGBZtnfIOgVzY4ein/tKkDQ/+RTmecQke0i5R
         qAtXFK4f3efW56hg8trijQNCzl/jhunkjfPfR365I14wRqBzEJ9VCde5bDNQeHLP0lDj
         C9zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yDMOp/iB6ZcYHXZWmKUtZcg0YOeqhTGDUSfx1aLCgOVnam32H
	GwXnf1WE0GOanTubHC/quIs=
X-Google-Smtp-Source: ABdhPJyvBTlHQyW7+FK+SxDjK/HLYHC0d9Fl+5y1Q/DCExNKHiv72o1bHZTwSVNqPTcftRsISsMgIw==
X-Received: by 2002:aca:a9c8:: with SMTP id s191mr3629488oie.11.1610653289290;
        Thu, 14 Jan 2021 11:41:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:331:: with SMTP id 46ls1638668otv.7.gmail; Thu, 14 Jan
 2021 11:41:28 -0800 (PST)
X-Received: by 2002:a9d:602:: with SMTP id 2mr5539889otn.153.1610653288874;
        Thu, 14 Jan 2021 11:41:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653288; cv=none;
        d=google.com; s=arc-20160816;
        b=BGjYD/eGs4fLj1v+KQAiM/RQKD95FqFE1jd1PHBZYStOh8NSxMQ1Wq3djlZE2cKLRB
         mHU5APDq7Qy2j/t5ZpVJOE0e0ert2JwlllPlaVWpZtsC4sBGHxxrElxDNmJ1GWb+rN8c
         LqsCoyKNzPpaFtSTL2B7cTFF6JF/i8m9a3oik0Gv7G/8C3dW/tUAAbvdTUjp79unyU15
         dpyYxHbfdiixJLxF0mZNJ90esRyplSGu5wazCHZP0gU2+V18pCeoosjKLMkezBjcKiZs
         If+N2anFN2gridXaDEZ8FDdAX8LOOE7S4ELckuovoVKei9K5YfUO/Es7QLLckembeQZz
         F6+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=axUKwbuJbpMTW0cDijBLuv8oTee090AGD4KYen63vTg=;
        b=ChBZDGZNXsCVegeW9zWCq8TMkZVe1LeRvkpqUCPB6y+31idM5FOKAV4ChHtcr2/HZH
         3AKeN/bpuTp2TL5qtT3M+BAobrj4Y2gajEcAsdRbEsfY1sX5WhvEKCbbwhAB7PUpoaUk
         k90m8s2VUSo40jOd6kAm1zWRRfKvbfrbTar5kuDxgkFCkLerYPQMePVvLfJfXsGoF1ic
         02uXPj5t8OYy+VQpe1UwZH06jdKJbNuPvo5w+cHSKyRO8xFj+kv/HhOg7P7zdE3D4C2C
         FSDNDhygYCmG/KxEHj32bYxRcFHV2sQNmawOWuQrwaQlB8MzERjQAWKoSSEpqocLuqfn
         QYlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y71uz65B;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id u25si478800oic.0.2021.01.14.11.41.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-as2hiQYDMVqgBK03XNXB-Q-1; Thu, 14 Jan 2021 14:41:26 -0500
X-MC-Unique: as2hiQYDMVqgBK03XNXB-Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 750FD190B2A0;
	Thu, 14 Jan 2021 19:41:24 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C26AD10023B3;
	Thu, 14 Jan 2021 19:41:21 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>
Subject: [PATCH 14/21] x86/xen: Support objtool vmlinux.o validation in xen-head.S
Date: Thu, 14 Jan 2021 13:40:10 -0600
Message-Id: <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Y71uz65B;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

The Xen hypercall page is filled with zeros, causing objtool to fall
through all the empty hypercall functions until it reaches a real
function, resulting in a stack state mismatch.

The build-time contents of the hypercall page don't matter, since it
gets mapped to the hypervisor.  Make it more palatable to objtool by
making each hypervisor function a true empty function, with nops and a
return.

Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/xen/xen-head.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/xen/xen-head.S b/arch/x86/xen/xen-head.S
index 2d7c8f34f56c..cb6538ae2fe0 100644
--- a/arch/x86/xen/xen-head.S
+++ b/arch/x86/xen/xen-head.S
@@ -68,8 +68,9 @@ SYM_CODE_END(asm_cpu_bringup_and_idle)
 	.balign PAGE_SIZE
 SYM_CODE_START(hypercall_page)
 	.rept (PAGE_SIZE / 32)
-		UNWIND_HINT_EMPTY
-		.skip 32
+		UNWIND_HINT_FUNC
+		.skip 31, 0x90
+		ret
 	.endr
 
 #define HYPERCALL(n) \
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe%40redhat.com.
