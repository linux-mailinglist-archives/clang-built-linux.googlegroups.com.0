Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHEH5TUQKGQEETH5W2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 513B176850
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:43:57 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id h67sf40538010ybg.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:43:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148636; cv=pass;
        d=google.com; s=arc-20160816;
        b=0v6C6V9m/W88eKyrR5VJX5tqW6K0bMd/elY+t29Aeri/adZhA5dp3ZvCj6gNprbtKW
         cF3dOUPcSw4SfuHeGHimMegzbUPz71/wPrQPtjj8FkpjntABPgTP0EvxwAPyTnAtUAr0
         FK9o4po5DFHzch4ap5famrRZHszcAYN2wIEVu4lEeUMxlQePRkSEai2cQIry5ELlhLqo
         tcLo8S3OILbkQCazpXcwGU6zWGjaZn7mltraXYUXiQjtXBEsGhUHh+HXO4UeLbEy1+mq
         19RA38NAkexPOPJptvIFe3kEiqnFl7T8OzmcMGhMoZUd9OnEy5IbW1n5CjnJTApp+ox0
         oO6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Gu3w/+u//JmLSFgeRUAvGKpQEG47s/l8kzEdiTAnaS8=;
        b=I9rhWgFMp64q5/TKTUsQpNIdnop6CmV86Om8q1tUPupK2hAqgbORmHNoxvqJMPUga7
         NQePysFyJfiVUjex6pWESJ+yukmu74XQt5Wzxm2q/UxvtkWg+yuKFIY2iJavlNUAqPNL
         agNMxm1p6fptY8wNp3tfuI+SnHXtbVtvTL5cfBT5N12z4FYsQXyiXRaAKtt8pwnEzKc8
         iGISHjMHE2w0tqYu85CLdtlGCImAm9RXVULYLLGuOfNdRimIHht0mUp6Wj3MvbYFVETc
         vaLMH2R8mHtNvZHbBD/192ItKbxwR82/A6SO4TGBQKSPLqu53TJQhCoJio4qd2X6d8X5
         +k7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=avuMpCqE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gu3w/+u//JmLSFgeRUAvGKpQEG47s/l8kzEdiTAnaS8=;
        b=tW8GliW9EGQ+L4JsbWNvRBrvR501LbqMd8hG48w7dWYxQpzxIS0dJC+J5cptvZtD8J
         SCp3UzAIGujdZmavLhtMy/lHVF1OOG/7Bi0UiPpxLBWB1FET992kKLVCRbP4+7csadh8
         cSSBMN7bXVSxS+gFnosJuU7lYchM08d2tzMLk27N6XYeQLrr5w/iLk7R4Mbtxe6amYg0
         yt1CS0kzUH1F2zEZ3enntFn6MVPC6zSK1vyVkehpLj60ah/vhxzxwFyS296cmYlfNnO/
         5K1rqomeIERgE4LiLvLXwDWMhx426UUCK1XYud6vkPpycrc+OiIO452R+owzB9FI7E+I
         yFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gu3w/+u//JmLSFgeRUAvGKpQEG47s/l8kzEdiTAnaS8=;
        b=jyLHGP6zsLwvYpXQNhvqSwcW8YteazrRGfs0+uz6v2SUX8l8C/rvs29w8X+D210FHY
         MYDAuNq2T3JRNd50DMTYf5z54xJyxU6JkL8G6wz3xHf9Z/nE6tgUzcyW9g3S201VBVli
         5kXC4PyJzcgjNHJSZ8Z5q4YV0HIJrBMks8nsgWcG6LH9c3BVae8ZkHh+PUlpulNEyOfk
         AzYe0wzV8uLVor8kVfG17WBIDMoVaLVL0iB/x/sWPhN7xWNURTDOTih4he2M/NKPCAqD
         VNQ6U/XsteSMGrlINE1CCkfZdMx71zEjVxvCyP+cZ/cyPlrDz1D/QPjV23VQicR5JEpC
         A8Tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUuw91thiveX0QCeemn6GAgBUyDa9RIihNnO7J2WPYAhw9UK8Gz
	/EbiO3qG1RBmpv0tVj8/ufI=
X-Google-Smtp-Source: APXvYqzgHsu7j001PwOJ5CRHuMVSt/dEsKFpgdfchU7TO81+1rwuxbu+zk2Gfc+jKBzG63bhVAQl5g==
X-Received: by 2002:a81:a491:: with SMTP id b139mr59130883ywh.148.1564148636355;
        Fri, 26 Jul 2019 06:43:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:700a:: with SMTP id l10ls7433367ybc.3.gmail; Fri, 26 Jul
 2019 06:43:56 -0700 (PDT)
X-Received: by 2002:a5b:a90:: with SMTP id h16mr57745319ybq.262.1564148636057;
        Fri, 26 Jul 2019 06:43:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148636; cv=none;
        d=google.com; s=arc-20160816;
        b=uNTc8IJDrwdlegMwgRK50OlWf+eFkeArml4Fh45Qpz69vKJYdZ43bq2H5gghuZCEuO
         lEqR7eKHC7Kfs3yWh8Y33bJU/vSpmA+sLKD6+oROnrujys9ezq4CVcabogwXqxPfE/FW
         FSwbMdHcTp75vzDBwOPuRJN1sYXEA+v3okGoMEAqmCiryLuQkOWq5cTF5lJnFoJGb4GB
         eMKUVISq5cu/xJRcsg7zZM4CNfE8Xnl0kEpFNHNhLrv6ul+6kSHNPhnQkdrISfWITL/d
         jdfmNOoFZjT2kcclret5OYl1r5YG+FeU/yGl49chh1+EKiTIdjGZehyRwnfKUCyZtf9V
         4pMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pvIZNitNu3hYGjLyZcrTncDVvMk/3qVGuTAkH5dHFDA=;
        b=vL2sLxW9zW7v+UGpubwdCwFU1n928dGbr3i3BBsKf8WzUTYQCiE8JRm5AZXwXb7dto
         P5BooEPWHI4UtwfVcodOHTjq3vNj1TMBOMaY+aUQ0mK/XoXhm3BhNl2w9RQ88bhJEQs3
         Gx51PWv6wmZkpsvhPvx+NtC+uviePDFuY/fcgsdPKQ5n3Q+bWvRwh6Ns546HSjBY284T
         zMQACWszYwtyhR3qdn2DefYNi1PSgAaUW5Y3Bt0tV/kIeXujAmWlW+z5cFdwvcsIMfft
         uzRObr/nsGW73lGIdOI78sVd/m85IfhxY+OwSS8Qb4IovOYqQe5dIvaqxjcaopCZajCK
         lfHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=avuMpCqE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f131si1769580ybf.5.2019.07.26.06.43.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:43:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51DF022CC2;
	Fri, 26 Jul 2019 13:43:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 17/37] x86: kvm: avoid constant-conversion warning
Date: Fri, 26 Jul 2019 09:43:12 -0400
Message-Id: <20190726134332.12626-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134332.12626-1-sashal@kernel.org>
References: <20190726134332.12626-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=avuMpCqE;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit a6a6d3b1f867d34ba5bd61aa7bb056b48ca67cff ]

clang finds a contruct suspicious that converts an unsigned
character to a signed integer and back, causing an overflow:

arch/x86/kvm/mmu.c:4605:39: error: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from -205 to 51 [-Werror,-Wconstant-conversion]
                u8 wf = (pfec & PFERR_WRITE_MASK) ? ~w : 0;
                   ~~                               ^~
arch/x86/kvm/mmu.c:4607:38: error: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from -241 to 15 [-Werror,-Wconstant-conversion]
                u8 uf = (pfec & PFERR_USER_MASK) ? ~u : 0;
                   ~~                              ^~
arch/x86/kvm/mmu.c:4609:39: error: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from -171 to 85 [-Werror,-Wconstant-conversion]
                u8 ff = (pfec & PFERR_FETCH_MASK) ? ~x : 0;
                   ~~                               ^~

Add an explicit cast to tell clang that everything works as
intended here.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Link: https://github.com/ClangBuiltLinux/linux/issues/95
Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/kvm/mmu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/kvm/mmu.c b/arch/x86/kvm/mmu.c
index f97b533bc6e6..87a0601b1c20 100644
--- a/arch/x86/kvm/mmu.c
+++ b/arch/x86/kvm/mmu.c
@@ -4313,11 +4313,11 @@ static void update_permission_bitmask(struct kvm_vcpu *vcpu,
 		 */
 
 		/* Faults from writes to non-writable pages */
-		u8 wf = (pfec & PFERR_WRITE_MASK) ? ~w : 0;
+		u8 wf = (pfec & PFERR_WRITE_MASK) ? (u8)~w : 0;
 		/* Faults from user mode accesses to supervisor pages */
-		u8 uf = (pfec & PFERR_USER_MASK) ? ~u : 0;
+		u8 uf = (pfec & PFERR_USER_MASK) ? (u8)~u : 0;
 		/* Faults from fetches of non-executable pages*/
-		u8 ff = (pfec & PFERR_FETCH_MASK) ? ~x : 0;
+		u8 ff = (pfec & PFERR_FETCH_MASK) ? (u8)~x : 0;
 		/* Faults from kernel mode fetches of user pages */
 		u8 smepf = 0;
 		/* Faults from kernel mode accesses of user pages */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134332.12626-17-sashal%40kernel.org.
