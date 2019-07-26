Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWUG5TUQKGQEDHYODGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C68B76826
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:42:51 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id n185sf23058248vkf.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:42:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148570; cv=pass;
        d=google.com; s=arc-20160816;
        b=tFLXwBgBciriJt7xXjFJNHOlQSu9ivmgzJ+E3NMF9a9hh67N8lHAG36IZC3GIRcFlF
         fGg/MKGNH8cc8Dj9SRd4JC6Lr9g9NZ6DeopqlBiAYMaIncsKTRRuxCXlVh2qL0O4Llxw
         fYr/17VFjQ36E6/ZHtrrvvfqO4K6HZkHXV6UKvVdGEl9jW5Mf9SbG30K3q0JelbDjEIY
         PrZp585z6iDJs4RzECFiAxOjnQiv3GL8G/iDRpngGPtHkkAinJTzc7k5MMLzc2xjToXg
         n9x6L5gt/Q8TrwQaIyoxrIYKmeeFc2muaL3mCmzn9hJjxRIkKLH5iCf1nAdFB2z8qwPe
         66mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6p2x+0LpYt5Uh51318jwtPcFRwlZuTWzW7fRx1+kRjs=;
        b=Wr+jqbEkSoVd3MHgM2yBSE8uxRNQCT70vwqz9jDnypJy4umgdeUOVVR7hqFNPZv5rt
         tLrrjiv4HEHOjrcF/OtcdXn6higYZzxBhl0oNxHGVvqfh9AUl497izYlGkxJdKwPl5X0
         vW0075BJxP8ZzyWTzTW3ZPGQJd39DgfMJh9BRDQIoUK0cq0st/C5g3EYTDuSwVEfpOn3
         pGrwvDR4+iBijisAbp1/TpiGiSgIgNtxgzIWT1zhjXnN6tKum39GRPIgrmEml2JFL3FP
         xoUFcDlCG9Vk4DORRr0NxgGB3QxKoBpRjDVKIUs6LeDZLLmCTwMBEddiC5Dr1hapa1+M
         YDSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I45Mlmzv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6p2x+0LpYt5Uh51318jwtPcFRwlZuTWzW7fRx1+kRjs=;
        b=XfYjWm2nB1xsCgK+8aQFF7NJh+ohQ76bdelasi/FW3e32Zl97wSoo+j2N1n333dUB3
         dpM6uIhvv1N5rpPS6rH2FI8AMCUnJNreCjQgUvGm/gN8TjOhTqSOGl5QuS6g+7GDZoHd
         fTH/Qj4KUUvsiik8+lJxpWhYzU2Vy2M5hSlFQrT8NgUuAI09KglLZV0UWV0ZmiOsT2EA
         y3OHBTXRYPgBHqMbL1xbNKXeW1X4JmyAHkADSWWU03LbgxQ61YvYBp4DlW3t1VrfiSbX
         jlMqJb0JxjeRyQqeJxIl8Yi7oyqEJcZSCibqFAF2iOrmctodip2teGRnOudSD2KMJCQ7
         +Paw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6p2x+0LpYt5Uh51318jwtPcFRwlZuTWzW7fRx1+kRjs=;
        b=IYsYQOMCC2IceqobeLfseqnoSRHKqsMa0VMGcxhDYhKk0+ps05fFuIUvodZteRrMYn
         FE1ZrHSs7b6h6CBhq2oCZuLzlSU/GDFoImlTo0eFyIivHEGEo4/pvRC6Al/3smGzEWYl
         VYZz6MIdm7TQIW98DySIF6HNPijGlhs/Tr8ffxLkFLZjkz+nN0LnzHvT2K7h92nYPvQF
         tteCb9nJEQApcwyLyyS+k3CcpeD3qrRiSZmRHu93EKYtZlzU0rcHDgO0VYhata4MuHgQ
         tspaMXuMgWvcJ48qPgGRVn9ROK841MkIyy9aib/J6nyeEe/vHlN3GvoYDFL8mQsZ04ZK
         d51w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8Mr6hKitXWsqxpr+wmmLGNDVDUkFQB4xt1tRqKld9O4S4ejcW
	vd18xGe6jCsU89IFGJTy0Tk=
X-Google-Smtp-Source: APXvYqxMdZqYPBcGh0FPsRRi26ivPUKxPZGPtqYnCPhX0fVxjdQzvDEu/TL7x/bMmgvj1cnVZh1DkQ==
X-Received: by 2002:a67:11c1:: with SMTP id 184mr59034467vsr.217.1564148570210;
        Fri, 26 Jul 2019 06:42:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6844:: with SMTP id d65ls6921218vsc.9.gmail; Fri, 26 Jul
 2019 06:42:50 -0700 (PDT)
X-Received: by 2002:a67:e446:: with SMTP id n6mr37248524vsm.142.1564148569979;
        Fri, 26 Jul 2019 06:42:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148569; cv=none;
        d=google.com; s=arc-20160816;
        b=VGFDFi4wKZZim+Wc0gdo9S3IBYjdZ6t2O/rfd3FGrTv+YLhVy34yzeUbNDhzl7ryLD
         fS0GtFfC7M/IZZxjnw8kth6+fUXU8dW2tyFX8VuiTvLJd5SVagGG7COoOdR3n688xZla
         CS3OeGxC174NJAoVEv0YOQcV2Lxrc+nbLm8Rp8g5C6ssrt/rSK09b2huk/O/ib6DCaD5
         Pesl/6ZPw+n828ngKswfiarOdzkEnpxRIdaJGpJ6VvOHoKH8Qql9TEZQW7VYyqvj+hgC
         Cco4/oaVuZMX7bIk9rFdp5k7RWBOU4vTi4m+FGwrK2KynprZMJFOJgxxZDVHqAQkB7lw
         JQ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YgZS/4KEGpMtd2XmuxazQqXMcTK4gv5cZx1/7FtHKEI=;
        b=xm8wdNzfQNQLZxiilrvCwtnGrlJrIomATyzqjvquwDXpbgKRMF8CnkqINy80BC0ws0
         dauyWhcq0/B4aLU58SDwLrSFyC9TOiLs3Vb8OuehLLTWV4bNAWZpaC/0BdkrrUMmU35l
         hy4DXJG4qwZrtdMBkZ0npcmRi+CddwWsq+YV0K8kgKEwiCuvDa8PvuaSN+S99cGspny/
         F6/knhkxpWshvoRbsMMt7vcmvG5BVteT7Ey1sG/kv/YrvWBC+ujzJ8Klx5CmJVEQ1rLs
         wPH1t3e7uY12hE8hNQbKvxWmEMdTsGub/AbiImB7WdFB6mahxKY2oruQKZOpIHYp4eIN
         sY+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I45Mlmzv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u189si3608255vkb.2.2019.07.26.06.42.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:42:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3D88022CBF;
	Fri, 26 Jul 2019 13:42:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 24/47] x86: kvm: avoid constant-conversion warning
Date: Fri, 26 Jul 2019 09:41:47 -0400
Message-Id: <20190726134210.12156-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134210.12156-1-sashal@kernel.org>
References: <20190726134210.12156-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=I45Mlmzv;       spf=pass
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
index e0f982e35c96..cdc0c460950f 100644
--- a/arch/x86/kvm/mmu.c
+++ b/arch/x86/kvm/mmu.c
@@ -4532,11 +4532,11 @@ static void update_permission_bitmask(struct kvm_vcpu *vcpu,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134210.12156-24-sashal%40kernel.org.
