Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXUF5TUQKGQE5DTYIIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FE7767E0
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:40:47 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id a11sf14127561vso.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148447; cv=pass;
        d=google.com; s=arc-20160816;
        b=D/jA1wocolHocdksj3P5+x0HPWTDmde7vC7c7kO4Z6XRjw7QdtTf39+QcTAfoEys6e
         IFDo30eVDeHTGBfLTp2df30vEoyXKVD4CBQHzEJvgLgRFl4cJd9YNdvXmMZeG9tvt4K8
         U/QsxBtOAka37iYCSF8Pt9Q/VacdJ8oaOiXmv2virN84Dr/oa1kJ4bTvi+0/i02ZNT01
         QIUq0RhyKXQF7dKSMdEhcHLe/qg3ffdYGcUrZaIU2qH4I/jqKbCfS0w5/qSdKKFTcmCu
         hlqJFeo2ENj71tRgYJuJkOEDEgtZ8rlnmKgC38oS4vAw5/e3u8w17ZzxdbBq2Ax+tpIY
         FGoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6L3eBMTBmDZ9LWW9OPuMkSWKY9vVyUA+AYUd00O1HjA=;
        b=s482qi1Oiow4DK6PldUpsweIKbPdO8rKHIgu6wXw48QdpCnePgWwS+xKLyHq9mjf11
         ty6Mbtds/AiNlPPUPhE6y8om5yyLnfa+nI+en5Azot9Z8lQ111k1RnF6LuEkwmrX3jqx
         QQRlstwuBYm3KM6Do1buPBLkKNLiNxp53AOeDl7yh3cERgp+RRLKbJG2D5/x5LHoHch5
         IYT8PJJ80Oc5Ue7Y/h3l3KunP6gBoZTJkZ/mDCe0tRzjAV0OyF2bGyb10qDm/5tS6KMe
         edTYZ7oQRi+76X+1OWxMHgtpzleaGu8uI4esQnq7cUKndtptygltLboOfa+jkPAK4FPR
         e9zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1z93rfvb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6L3eBMTBmDZ9LWW9OPuMkSWKY9vVyUA+AYUd00O1HjA=;
        b=Oa4rBbUsT6gSPAc/Q6FETZO2XVx8cN8+VYLnUo0201ytOVOkFe7I1Cyja9cii7KkeW
         OPFLyHjJD8/Z6j0pRVhsj5n2o4jyP37WqyckVCDn7WnHGnKbIykApwUPPrZPFzPEVOto
         WmbAAyGOFQkebYP+zgdUP9kKRVIumCNtUin6q3v+QafBoQIy9mZHA/+QOUyC6ggiXgBN
         5W0+eCbNhXxSZ9gsKO4scYa4w6gPfgHAma6GgR0BCMBd+Ucdm5LzZovnoTDTkTelbp3M
         j+zFFCTP97Vu15MWs3PkNF812XDCdb7CAR4Wwmqv1flHAGymd7mFQ7Z9n9ytDKA2QEW9
         yvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6L3eBMTBmDZ9LWW9OPuMkSWKY9vVyUA+AYUd00O1HjA=;
        b=FOU1ISjj6ly62R/QXztZWUYn5HEEUQvHapYmFkbLxzVGotmsCmt+x0UOfUL+aIYpX4
         AP1D5aTM9bhxtnn7blEjE3IYnFT+AVtghw5PoqInGJTZpDKn94YMK6NC0FGk2bfAzqHf
         PkGpWV7E8a7/QOC0PIkuFdj11t0WvniOCSc27TYuzqUG3BfFrGnhI1jeldd9v6/XnIME
         0YEqioWFpM/kJPZfHv+khicPmcQSA2tqDNDR2VOgKKQYzPnd9b0hpCxpu9u1X+ubxaUh
         c/uhbbnmSODyeTzVi0H5futgY9EHSQtFybabALLOaFGOkLtT7tDVPu8roftR7bXYqKEE
         bjsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWcXOWjuCIJ3eHOFikOVXof2mwrw2JhyRMtTFgzurWShhw0q6u9
	XTgB8dD/6dylTNcSnS7ljeU=
X-Google-Smtp-Source: APXvYqxCMs+pPCQypd4SG7J6hcDiSUPWJSZ7XrN5ODmY2GPmAZpGajDak/XUQrc2b+6kJrQwLMRuGg==
X-Received: by 2002:a1f:43:: with SMTP id 64mr6834053vka.42.1564148446883;
        Fri, 26 Jul 2019 06:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5fc4:: with SMTP id t187ls2062476vkb.16.gmail; Fri, 26
 Jul 2019 06:40:46 -0700 (PDT)
X-Received: by 2002:a1f:6d85:: with SMTP id i127mr37061923vkc.7.1564148446558;
        Fri, 26 Jul 2019 06:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148446; cv=none;
        d=google.com; s=arc-20160816;
        b=YgXErA70AVtIbpu5a12pbfEggjO7w3i2FAElLOyTl1s6iV2E05aSR1ovy3jugrrLD3
         sOvceqZ3kz3uPmo2y1AY0DCcMSCuoHd6nMwuS8D9jR6wgFYUlYAPaepNtx8kbadVGHk3
         on1m6ScYUoMwSr0eR5VfPAdZ/KQx2Lu+JMYKaEr/vk0iXdZPzJ/4dTkhVABJePK/57wr
         CvbOyH/FRCTq54NlgT+NKGUvxU2u55ePtxpjr8HQb21p83r6XKEvwbT/yFCKdoyVlRlO
         kxI/ucBqflCT8o0I+6jfasjM8fmgTrhYk/FV+Ru0vNhDXmiiNnnhi6QgHBX+4ZMhfHaR
         Ifgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=K1HSab9mZJZjFUiIvfwOd4xOA5iOCz8CD8ZiMmjiSwQ=;
        b=02kzAhyK+MshWs8AI5VAC5ZYmVrxDyrOeuZqIh4sHB/WygymTrYpygECxE+hPhNlFn
         D0GighJqJWzSnO05A5sAtHjPrCBx91yDWBdUgzLXJVlopau5XkFOup14EdH6HtfHys/7
         Ry2xOpXO1LGUySfwHDQ0zOqBPl8vhRZwt+nNZRPAHzlK/fW88xEiU/c9Y2bk+qa9roZp
         lJcNZQL3VgsJKahymAKXZQclSDQ3+MqvNEKcOkAyS8uzjPRS28NsbeLGlrYdLaACyLAL
         Q8gKr3VYbE/21D8SwlIWaFL3pBUW7nwprEkmfAfV5Xj63a0JdROVsOvAECU5SOoS0IfI
         mmrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1z93rfvb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b5si2318139vsd.2.2019.07.26.06.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CB83222BF5;
	Fri, 26 Jul 2019 13:40:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 43/85] x86: kvm: avoid constant-conversion warning
Date: Fri, 26 Jul 2019 09:38:53 -0400
Message-Id: <20190726133936.11177-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1z93rfvb;       spf=pass
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
index 98f6e4f88b04..8d95c81b2c82 100644
--- a/arch/x86/kvm/mmu.c
+++ b/arch/x86/kvm/mmu.c
@@ -4593,11 +4593,11 @@ static void update_permission_bitmask(struct kvm_vcpu *vcpu,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726133936.11177-43-sashal%40kernel.org.
