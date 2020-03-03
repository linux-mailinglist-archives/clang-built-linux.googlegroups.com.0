Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOMK67ZAKGQE2ZJILSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A74E176AEA
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:47:23 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id w11sf973403plp.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:47:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203641; cv=pass;
        d=google.com; s=arc-20160816;
        b=zlKPGw1SBd/p+jsJEyB40v3AYRm1dEBuFO7ZMEmxY8lF4N8lis5GGst0TgX9WiSUUs
         b1NzgrV+HWwYHAul388UAMkSzwsFZUeN/sKZVp3M7zP/tPbR7SIAbIp8NUvO13csTWJP
         8PPuYHkPdUBN+k1SmnteI7e4D4j3bvQyfz1JUndJn+NyvwlJoCLT4CcCaHScpbSbzGK0
         ig1mCV5vAiboGK60QacATppkPHvkPOn/6cOajR92TuAvNitDWYcSDmZBwV/jHQXw82Rp
         7gEDUf41eeKCIs3WwQcnNqnycDGdsiie2kpaqPOzQXTqu+wEXUFgOnT5mPQsPz7FbpL9
         BrOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=L2j5tAZ0RZA9EC0RjAzHNZmOvlOQ69HYi5nou91gjco=;
        b=AZUXVYnw9zm+jj3RWLP36kq+QXNppWMmhMGWHRN4S3WeJKEUoDaH0UNb0i6P6l6WE2
         gpEXWa/A3X3phtenbrEl1m4z3tWxOV53ew29z8uEnOm7uCFA7vCGX8SWGIlQaBO77Qn5
         n0/L2jEq8WGFoSewaE4q0R9PC+McAv/fcGAEbDUxxciMnUMHkh/mDDW3ZHmEIB6tOg5d
         aKMFPuYGJ85ruqU1Jf78+RCeyWBpH2wDtBTVIZqBtEfck5fg1bC48yETeQkYQPxijquQ
         nsOa2K4VcbrHY1FSvh2O9/ZoTsTj8nQim9MnWAUImCgDRO01YBZNaGjEYFDOQo/aMqB5
         hGbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sPTg+ULh;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L2j5tAZ0RZA9EC0RjAzHNZmOvlOQ69HYi5nou91gjco=;
        b=X6/HRsFAu4UUJLT+RzTHEpRbJr9TeF027SoHZV8nstEzFeg/ijfqgSLV5KK3il48f6
         oV/pOS5qJpTZsh3zb4EVFOoItkYC/RhOvF5YgaixkzJ9Wav6KL1pLXp1oXIl7rHs47zu
         1xWWjckt4B4DmWqON95SceNn1JYINcG7p0Qi6eMP2Yc35bIZW546FNYFKsEABFqQ59PE
         eF0TsVnbrIpRQ5h0t9e+I8xIY3KQj2Pa0+kfFKdYwRrJ3WZ1Rggk7VoXV6EvHP7ATVmi
         tHlnqxOxftNAPUvYHgCwHEjBAUwfTUz5HyQTEQOBg01DDp0sJJyKo++pc9wtUYx4+V9a
         7jOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L2j5tAZ0RZA9EC0RjAzHNZmOvlOQ69HYi5nou91gjco=;
        b=M+83P13tzSurSRVhZZXkUTLcS0Ji0WO/Nxn4h7UXS3VdPaixDvxsjPVXSk2x//LGZR
         9rQg13HouiQLvJkd7D8tsUTvFf3lwIPDwwUwze8RqTloAxgS1P6gKYzrs0cpo/cREXZX
         TJa2Ci5gqZNH4PZbnFq5IErQ4jVwzwKGbM7tnAfbXdeXVnZInph0TsIqdfIA+GGWJhH9
         nLI3uM7YUFpceq2tveslPc8Cm11IozK8CMD+7Hp9eSf3UdlSmciO7ZN8zZLu/tVQDdSA
         Lw9h5jk3J2UpBP/OaNl2jwExknvYzcIlofKj9ZkhUlZwmEa8GD8dMH/SdXvjnWwCflZf
         r+rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0xAC+O3UehRi+9eYnvuj6kPZ9cHU85ioIBzTq9Zbnjnmhruz4w
	N1Jh6mziCTktQmm3jCKPx9o=
X-Google-Smtp-Source: ADFU+vuwrSFulbv1LphD08V06P6NJqwUcoCjeNbeDJuqlH33oU+Mv+vyTmop2dUYgPsAKjdmQHGk7A==
X-Received: by 2002:a17:902:ed12:: with SMTP id b18mr2114875pld.45.1583203641444;
        Mon, 02 Mar 2020 18:47:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8744:: with SMTP id i65ls427007pfe.11.gmail; Mon, 02 Mar
 2020 18:47:21 -0800 (PST)
X-Received: by 2002:a62:16d6:: with SMTP id 205mr2026589pfw.183.1583203640940;
        Mon, 02 Mar 2020 18:47:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203640; cv=none;
        d=google.com; s=arc-20160816;
        b=XmRZj2CxrNZQguq3UfwcnL+RZMFlZL8RURWpZu+AQASrmGRELzRyhPBtdpmrSevt8d
         SANq+msCmXXERvq5Jk/QvA77usj66GQFfoOOnlpLyFQJ/sTILq0exVpdiBaE7OpErBJD
         5TsvIMJwFO3yncghOKyZeHU8gy+dpbxc/Enx9btljaTbm8E/mSixHIPTAaCnNlx/NdoB
         XZaGmd7WghCUxUHSQ0AVdGMgtsxEABwBZdj093thvUWljWIU9DpuxXiF8XL0b7ykWVCP
         2tQsC/tQzdzZHXHjHAaCqz6ihcVP3wdLitWUVTIl56S62AhhbG1HTvGcd46s1yZnec4T
         N8sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vdidzySZLqGSD03poO59OMBfjtyZquSzTQhapkbfb70=;
        b=vIdkys0S4lOT0y5HEPzyOA1kR6Q453Gn1MjK75jHrub6IJlB7ClPs+VKqmVbSon2JQ
         YtHT83XYxvDkJyWG2EsOedVvafCCc52HDTzAWzWDJEXH8L5CMPOSfgFFIkqPHnwM/fbU
         8J+Q7wahnhVFx8N6y2+AYDhUGhbzOCa83S27WK1KLflfI7YmzbGlBNSH1+B28FUVwQao
         9GCjWqX+rVcUJSegTz4m57c6bRg67Iv/+D5m/VZ2KwyaSNlcZP6GHZ9z+2Xual7qj2Qf
         dT/ykzwzYx6dUw4fvLTRUrkQoFitcDptDHL4ToigWBeP0J0FHzr1ajU8EJwnXDfLrY3L
         SbfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sPTg+ULh;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y13si616775plp.0.2020.03.02.18.47.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:47:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CEBBF246A1;
	Tue,  3 Mar 2020 02:47:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	xen-devel@lists.xenproject.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 52/66] x86/xen: Distribute switch variables for initialization
Date: Mon,  2 Mar 2020 21:46:01 -0500
Message-Id: <20200303024615.8889-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024615.8889-1-sashal@kernel.org>
References: <20200303024615.8889-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sPTg+ULh;       spf=pass
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
index 1f756ffffe8b3..79409120a6036 100644
--- a/arch/x86/xen/enlighten_pv.c
+++ b/arch/x86/xen/enlighten_pv.c
@@ -896,14 +896,15 @@ static u64 xen_read_msr_safe(unsigned int msr, int *e=
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
clang-built-linux/20200303024615.8889-52-sashal%40kernel.org.
