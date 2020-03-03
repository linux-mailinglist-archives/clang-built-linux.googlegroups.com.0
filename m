Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBO4L67ZAKGQEPDSVX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 570CD176B44
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:49:32 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id t26sf554309ual.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:49:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203771; cv=pass;
        d=google.com; s=arc-20160816;
        b=03n3i79WTIQ+z+roFhWpDa8Ta97YucAVOHx0OsvwtWQOBxijguLk0r/nX6lHFG5mja
         CpiSKN7Xsc8r2/PERlQd8OSdufQCYqbWRDog9ZsTzmccHGUV+eoCMk6PJV12uS6KP+K+
         yIEtmL0X76tCZEvtaaWniKbpFNc8hK38q4Hgex6FugZn+rTsmr+ZoJPF2UkdgA/yDiRl
         RnzQ7ybReZJYh7uod/t51z4Igb7FdRh+TPZC4sAUuWhfyHPVPORd9bJg+SCVdzkUv3bZ
         xhrhDNibih05LMY1IQmtHPprHOaE6tqXP70a+nmltY3s/nVwb3DcF6eMvqz58KVBDy+J
         +Jhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=J7lOaROITXjO32Z0yLAthd4XooOOTzuXeMDX3oNKTkk=;
        b=IrT387YBOK1GS+YzZXMckmYrfBczakH5WUPn5+6zXwjsiSPxKRR381d+J42gKsQTnj
         BUf7Wsr/58+q7kt8mbMcK6SPoZv23VyH3lL4a8hzWxer7FiKagfM0DyQ3IPae3SbeQD6
         z81aHxhUTnQvP2TchtzBQJkzo/0btt0WjByAe8Wt8BxWGUvedGlv2Vw7jJu8MqvH1dWD
         UXBetj0CCmLeqX/WdgLMd+OBFCk1nMV84UFkrEMrH0092fBwsBHBL3vegPN4Q+aNn7yv
         FH3X+buCHVd8RHBKQO5WxzIYCqlaCaQKXRlgCs0Bni8lbx9bjHjQaZDlWY6C2VEyttVu
         enMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oDuVka1+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J7lOaROITXjO32Z0yLAthd4XooOOTzuXeMDX3oNKTkk=;
        b=BSGQ8BVT+eRPF57uuSsulzfneaIW+OdJTZ/q7NvmzRN4lkfXXG/frvMv8/T3QUelOR
         KJbQsitHZgWCJUyiCGuvy7g4kpCnjWOZh5jTaeeOu/D/tWLNYWv3F1vEwl378Wbi+vTd
         OA99ypV8iE1KL3L5I1qBIT4jUlJsrDLabXN/RSvZkxiVgoqOt+EMyL88s3yKlXbb4c4c
         X+lQnY76WIO9H7IJ1id4GUrGGayst3iiYZMWbWIpHs4ZHaGqn2Ds1j+Zw3hVeV3X2162
         0dgrmY+kqCHXtIdzQlLrbCjLT1/vUqS57BYgApVB/h14vfgtS3yN1EFdNfDUIz7jSTIL
         WRvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J7lOaROITXjO32Z0yLAthd4XooOOTzuXeMDX3oNKTkk=;
        b=HbJcy2Dpd2NtD0QBj+625qsoZSBP6X8tlvai6oiyWPI7w3YoON2aRBfmjGyjWkFsz1
         BENPHaaF/2AL+gvRYRbrGcZa6TnvMFqUs8NQPv2At6QC7bpSh3UXrN84SIsYe8HLw+Ds
         NNG20aENRT0RG57vDfsWwJGYOBToVFJ2RZIvA8GuZCqt0p4abX6SPjtTEDyBZIEqG9ap
         UJqnOKu06l9VWykNvtJS/A/7xRVevtWFlwipp5732XC77ExpJFyUUXqQ9KIpagpNMhKm
         vMXs6dhmtFmriIiwJIizeVkgDsQ4ZwMORgPyGiNvzU+rEkta0PpVVe/E82Liaes18ySx
         NNgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1+LVIOiUDGoZuWdXB5mnKuv+qTR/puy0S2WbGLWo/wEVVe2Aal
	HmSvytiZ6uZEL8KtL+u5OwU=
X-Google-Smtp-Source: ADFU+vt9+Msa1j7g5Z8YpunQbAuZJ8G63c/9zIgh3ajXUQjtLZuqMxlJpxfj6xQBEAmV7wb7FaH+WA==
X-Received: by 2002:ab0:2851:: with SMTP id c17mr1669487uaq.63.1583203771349;
        Mon, 02 Mar 2020 18:49:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e4a:: with SMTP id u71ls244985vsu.9.gmail; Mon, 02 Mar
 2020 18:49:30 -0800 (PST)
X-Received: by 2002:a67:fd0b:: with SMTP id f11mr1186922vsr.7.1583203770853;
        Mon, 02 Mar 2020 18:49:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203770; cv=none;
        d=google.com; s=arc-20160816;
        b=dQwMbY76Q83vkuTl/h2GOiPWRXGx0BZk370HPXddCvLs4pxX1dTV7JdeL8xnugpzAA
         mUAwtB57HO2WrB1qtu8yLxsDLP1tbIH0HSvSggU0yXS1hxrdv4aZ3j3iWHxhq6+H8BCp
         yyr7eaeZ8QEkeNlbHDRSm81houLmwv/92bh10G54ActwIKLdYKmLNLIpZ7zEMYiT6YH4
         RLqbBk/fPAiITH2q6NBMaiE0qznpieGPSkdoa9if1P7plLGPFYYTn2nblhUj9D37KHrt
         i5PqQuciYceR/bRCRzK/5TFuevRRGKwIoVOo9pBfNBKY/HFGxP9HD96DQ8b2rd7Pnqok
         E9Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kIZMM3n2a2RkZQE+Ji5Ks+wQ7G0pos0sCh//LFKrAfY=;
        b=BKn4HtJo4RIIoHHd+B/HnTlFPc4o0sPYpShK+C/ZbFYD1LGMUkUKkK+CLzS16dkmC6
         dz5T68pfeFDQ9VlJrMUQuXYEEc9DJ9hkV80yojGfoi/Z/gI7OVrwCFz6K4PDkxO0Fl7W
         qJUUbNf7BUEMCOkBzyJJ0HVhgbv/B3eaV8t9oHnYGPxgL9/ZoW3iFOpOnf4YgmKqlBu1
         0d6Agr2lKkKNwEMFv8by1TBPfr3ZP3A38DI2xnceIgwwjw2lYkBg4tce1q0bm4ZRJmto
         Lv03HsBa/OfzTQBTpp4cgRNW6JLGOqGbaPdt7q3PgQ3w/lBJiUw6ClnaLdc1o/mlcDnB
         t2mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oDuVka1+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h6si1033959vkc.3.2020.03.02.18.49.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:49:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC64E24684;
	Tue,  3 Mar 2020 02:49:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	xen-devel@lists.xenproject.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 30/32] x86/xen: Distribute switch variables for initialization
Date: Mon,  2 Mar 2020 21:48:49 -0500
Message-Id: <20200303024851.10054-30-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024851.10054-1-sashal@kernel.org>
References: <20200303024851.10054-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oDuVka1+;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Kees Cook <keescook@chromium.org>

[ Upstream commit 9038ec99ceb94fb8d93ade5e236b2928f0792c7c ]

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC's proposed automatic
stack variable initialization feature, this triggers a warning (and they
don't get initialized). Clang's automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=3Dy) doesn't throw a warning, but it also
doesn't initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they're used or lift them up into the main function body.

arch/x86/xen/enlighten_pv.c: In function =E2=80=98xen_write_msr_safe=E2=80=
=99:
arch/x86/xen/enlighten_pv.c:904:12: warning: statement will never be execut=
ed [-Wswitch-unreachable]
  904 |   unsigned which;
      |            ^~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=3D44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20200220062318.69299-1-keescook@chromium.or=
g
Reviewed-by: Juergen Gross <jgross@suse.com>
[boris: made @which an 'unsigned int']
Signed-off-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/xen/enlighten_pv.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/x86/xen/enlighten_pv.c b/arch/x86/xen/enlighten_pv.c
index 1730a26ff6abc..76864ea591605 100644
--- a/arch/x86/xen/enlighten_pv.c
+++ b/arch/x86/xen/enlighten_pv.c
@@ -908,14 +908,15 @@ static u64 xen_read_msr_safe(unsigned int msr, int *e=
rr)
 static int xen_write_msr_safe(unsigned int msr, unsigned low, unsigned hig=
h)
 {
 	int ret;
+#ifdef CONFIG_X86_64
+	unsigned int which;
+	u64 base;
+#endif
=20
 	ret =3D 0;
=20
 	switch (msr) {
 #ifdef CONFIG_X86_64
-		unsigned which;
-		u64 base;
-
 	case MSR_FS_BASE:		which =3D SEGBASE_FS; goto set;
 	case MSR_KERNEL_GS_BASE:	which =3D SEGBASE_GS_USER; goto set;
 	case MSR_GS_BASE:		which =3D SEGBASE_GS_KERNEL; goto set;
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200303024851.10054-30-sashal%40kernel.org.
