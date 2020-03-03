Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBUL67ZAKGQEXNEWEXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C8B176B1F
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:48:40 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id z10sf1188089pgz.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:48:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203718; cv=pass;
        d=google.com; s=arc-20160816;
        b=ME3FdHkaPH5jzfBvnBDG0z44Wc7GH4AIQ0ae5nwpx6KQzT85Nu6SNrJkonabxreyCo
         wEpNfZtxqDM/kVJWJteAVxS9yUJ5A46NrlZatrNZ4fD0z9WOAUKDpIyLvDVC5ATTj1F5
         pUS6wNiKFzx0hPDoMP8jykf3/+Hkk0fTll85teC33bU9VlsQ4uAUr+uXysk1+VpMhbK1
         WWh+SCf/KFdoz1fhOiVeQoFu4/lFVrx9IxfRdwVgHCA28xjjcU9ICEmd+1TxUFaK7MuK
         dIggrMlspsDIKHfoR03wJwAGW7qU/Ll19sCbJDCo5rwpom/kqAJduguQxvpPWt+u+bgP
         SWow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=mTz0xOtYzfcf5YZvrT7d4LljtcZ/XaIYg27R1HbugOU=;
        b=WQgV/6dRbbMv2GmVo4p4Tjw6oq1M7Fu59RLXlU/cJbj5nmK0XOF/UW70LRxG2MKy8s
         DLQi0UqrXo35u5pPyMK6L6A7qtFKrsCIW0AAAo+K6dr0oHeMdIZ1ccjsYg4H6x2QUWox
         JD5LaTZ/nqrbKZ6WovkyQBev2XN9uj5AgFYE5n3L+0qt+XtqW777NyWm9agJycVOEvdi
         wt4Q6jhdQ8b6TfWDfIfq+cV+nhIbOCyHdHxtxS1fJ+t3UxRUrZfQLobFLzLYlvi9nneF
         ucvsprCJlraS5FxcD2DKOh11zIKkJqoUopOF9GHJZE8zweRD3FIOzcfu/AuKfSiO2nSK
         g8XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2ARjvncw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mTz0xOtYzfcf5YZvrT7d4LljtcZ/XaIYg27R1HbugOU=;
        b=ncWnt3Z13BiXuwJL4i8C2lVrP3OipCqiTp1z8yF6xsCmYkNrc4p6pP/uuV3YRm+4Qw
         Ge6tC3pZHwxnhsJMTmYkEHrnUMBpBSzePaBc5LXy5BSbZpHy1s/+vblbWoHpez3hV16t
         wZIaES4KFlyYcghFrCpvmfAocq5EHEV/fx3xiZhj6ViOXW4UdlNLFYS+aALczRMeLMrJ
         kVIyXqVkw4kEizu7zOUwJYQaHvdUXc/UnRjEyOKy9GnrQhXiBDo8OOLPRb0djKRaLNe0
         nbdKJ2Qryyv9tlpWs4dqSAfq8NuhQNmeTgst00jT0ZLFuTTjF3EXFZgdy9ELYxGQ6ZZI
         leFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mTz0xOtYzfcf5YZvrT7d4LljtcZ/XaIYg27R1HbugOU=;
        b=N9DKSoLh6jI2RIwnA8nyj2XV6PNOxrSmtrmKbvksVfIq9m4M+SdJTl6q4KOV7Hk6Ab
         zva2dUqqDykC6ze/7bt5Cj6PeHcqicd4vHClZQNU7nX1jtJaW820Y0IsvOi1crbbwRL6
         s0wSi8uy81S3MaOGU9Z/er4uI07bcVWOlUO0GGrVZFfHyKc2lbP3s6GdffKEvMlMNxuc
         ruqOotz2GGoiVaUrX0lUKUgnLSRVoYPBT6QV6j51S/eW6BOlsMVHdWx/84mz6pecwalw
         4Ubl+Fy/UXJ4VSi2ztJOht6vwIULmwr5nkffC9kUFPlVd0rWEv3FmHAUIcIGi9ejU3WV
         algw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2gwyrJl9kWEDqcIPvXJwMB0GPNyu5P/zWjsc2vG9qzPELOdGU+
	UICSss1tFiXDuEas/mJzzcc=
X-Google-Smtp-Source: ADFU+vsOTkh3Chxfl8/6U6rkxYbfpQDx5exaUH2z6AekF00LJH2QCyR+34I1LrnVpkOXfZjNi8UXKw==
X-Received: by 2002:a63:1051:: with SMTP id 17mr1862879pgq.291.1583203718577;
        Mon, 02 Mar 2020 18:48:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7b4d:: with SMTP id k13ls559435pgn.7.gmail; Mon, 02 Mar
 2020 18:48:38 -0800 (PST)
X-Received: by 2002:a65:53c5:: with SMTP id z5mr2079810pgr.0.1583203717974;
        Mon, 02 Mar 2020 18:48:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203717; cv=none;
        d=google.com; s=arc-20160816;
        b=WHhGiSKZd6uAvOddacTdpDv5sCXadlKN6TUZBFvodfEoHwGxSYj5MXImuL9/IdncTp
         vzNFxMexspUEyUzajYVbpyNsMC63jUZPndyEXiSl7zLvEvEAZfWweDgx59z6qmFX33WS
         vMtpyLpCWYnhUZqpfQBevbhGOwQsZJ0VSO2yTro1xay0k1ULHCzRF2T+aywlH91vgqia
         3EITjY991+vCfMSeQ3qpqT9MibMj90Kp1Hx0Ik6QR4N28tlf+hT3W8DPm3ptL3c4h/dZ
         nQGs6OIyKz2pF8n0GWev7jggkhAxiVHURI8NBqkH+sNr+poHK8NsRvRkcJtBIkaFYByQ
         BHqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DXkb3uYhVVtQQWJjA0vpnMTX8F/wRROPrnmLxhwH6Us=;
        b=0aNiFEmK6ug08IXjXjQSBOBdEeT+pbzd9+GYDDM+mJIVvWVB/++iBEO1J421vTDdQ7
         vuf/tqvYMwlf6L+ZcdnPLw0SLE2j0sHkrSK9EFeuZokNZe1/fd7YNYGsd8wYMguJ4e1D
         9pxF+H+7ROPfZihzoyq5WoXzr4l1sS/Hq58s94Ui182Al9Ph7rHHO4pyUsLyA6A8SKBm
         KAdAQkQyBFQtPMxEjiMkXXw5MVO3aVsbBLodxxtUBuH4WpgyXOMB6jry5hXAlvYadp/X
         Y/rXnmT0fqcCYq6PIaBX5IPPrDu7nsFMx9w+4Ie0GXXqi3yNH1IeiCgY00OUILU7A0dz
         Uv5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2ARjvncw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 8si694829pfn.1.2020.03.02.18.48.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:48:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DEF81246A1;
	Tue,  3 Mar 2020 02:48:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	xen-devel@lists.xenproject.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 47/58] x86/xen: Distribute switch variables for initialization
Date: Mon,  2 Mar 2020 21:47:29 -0500
Message-Id: <20200303024740.9511-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024740.9511-1-sashal@kernel.org>
References: <20200303024740.9511-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2ARjvncw;       spf=pass
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
index 6ea215cdeadac..6d4d8a5700b71 100644
--- a/arch/x86/xen/enlighten_pv.c
+++ b/arch/x86/xen/enlighten_pv.c
@@ -905,14 +905,15 @@ static u64 xen_read_msr_safe(unsigned int msr, int *e=
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
clang-built-linux/20200303024740.9511-47-sashal%40kernel.org.
