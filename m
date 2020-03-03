Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWML67ZAKGQE4YGPFBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6A3176B4E
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:50:03 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id t186sf1190970qkf.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:50:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203802; cv=pass;
        d=google.com; s=arc-20160816;
        b=bWwfYqFwGHLkh59szex6jzxqZ1OzJr9HFcHBXx8drEkjndws6dGRHwKPtLtLoNcATJ
         BVooTnx/KRjI4ZWejkQvRbPvsTBKaXeSEq1M7Us1RBmET5aEfeaT/QFXtIroWEIByxY5
         d4BJt+Ia+98B4b9OFy7rCm8l9QtYN7JmIBFaLVaW4eXOmxntnnvbumiymaM5oNx9ZtCF
         ARhgKmHnEN/G+3n2r2yW7lAUgj4ilraY/m2W83SCP14R1dbL4LuIz/9BuQ4Fx74fVexz
         scBmz//aPmROaVamgsdfXM5UnTzZvEl479fwwo3ZZm2EXU3iVjYrXLCZWwZzS/RXKl/c
         MIeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=KeBImWVfktGadPZuevNNzStvBMKFKnwp0hB7VcI+mik=;
        b=K6Ti1tNNpR7DoMDnEnao3oWxy7DsAxLFXaRmi2Ti9CMP2l40r3cxEkSzp/9PuaA9X5
         Qu3i4g6JqsHuxFmyTa2cYgEtnSZN/jJpCQN801GWQ/PgKOfVb88FhCmRylKN2vn5Ok6k
         fazzhX0cmUCkSdP//M/SELLcMqTMYsPyNLk46eENPvH2DCIL9U1noJeba8W6+qdiQgnv
         zqYuFtQQIDpjiuIoPFwXCmAItfrmN+6yaiyHbXH07hOEDvwjYwLH03s9o6aKTB34jig3
         NDexzBPWtYU3r6arJq34vT5lS+cnqf58qa2deW8ZtlWRUCWy7syYNB16cG8VrOiXif6/
         AdCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H40zml2k;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KeBImWVfktGadPZuevNNzStvBMKFKnwp0hB7VcI+mik=;
        b=dVwVJwxU+/Xo1uWEFHk98uu2V8ws04FjEgikTTDSJn/Eme1LZRj/rXvok1EQ3zbNeg
         MnqejmFlHkfgm/K0Ji2oY27evSOwYxRypSAW1dHoUubeNf5CcZSDIwSm2ugnr/09zf6y
         UinwpC7hBRdMgingh1B4mJu8UHucntAj94g2qKw2tNORlNnJkhL7AuIs7AlojOJ0yw9f
         Usu1s6EePa1/8qh2Z6spUTm0/IbQUzrxwgjh7uLU7uZUjG90VXTxndx10sCfZiElD5Pt
         gFjUK1+/jnSYEn9pPP+gku2ZJxhxHB4dITyM9izPl1Sw5P0321w/v3Xu5Y8+KROqOCDL
         bQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KeBImWVfktGadPZuevNNzStvBMKFKnwp0hB7VcI+mik=;
        b=Z2Eeb5T9kgXaPRY4USfbr85dJnaAm08nqectxIONI3rydj+HtqgjUNbn1X0GFk9SDO
         KYlnFCJPNCRM0iddNYKCdG5cCHsLVkvY2avnlIC7+dD7kSAIGo3SMUys945rUIZKhFM0
         AgdPVKu2UEWHkBvLYcNGXJzVl6HDhnoCgNm9yhLdNIM77R5yy0m1KkvQzVkCmRkWix2/
         ZsaKo9Ulkxh0Tq3o9nN8ZK3USXlMIrx1QRUNiF0brEntrd6fglBee56hsf2WEfiDRGFb
         AszIWTWJqiDV8zNiWLDTdK4b2zlhmnr3b9Je2FSmDiqK71S8pewKuMFuPpKsSIBqfpfk
         CRVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1HyYNd9H16e/t4FmKk5d9MBrgt2bJAJPLQz4nprlSyf1vBGB90
	jHnFdxrMu+xykgyRwg9pth4=
X-Google-Smtp-Source: ADFU+vvtK5csQ+ftQCslKJYhjK21u1rA4b/GrsQfQcNieD5brO5lg/2V1ZB+lS++zdUVxwJqg+yKBQ==
X-Received: by 2002:ac8:740d:: with SMTP id p13mr2514124qtq.322.1583203801925;
        Mon, 02 Mar 2020 18:50:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:483:: with SMTP id 3ls990694qkr.5.gmail; Mon, 02
 Mar 2020 18:50:01 -0800 (PST)
X-Received: by 2002:a37:4c81:: with SMTP id z123mr2190227qka.320.1583203801603;
        Mon, 02 Mar 2020 18:50:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203801; cv=none;
        d=google.com; s=arc-20160816;
        b=VAsSXf1ByQhtfLQdW1P3pHTbJuFd6K0S0YL3CMuwYY4ZrUXn5PQC0D9xcDEsY3seNa
         MOJL3ajP3svjqZz2tvFimH4s6UP7dgZqfFH5klpSmKHpE8Jo0v++QmocFMkwH0RDBwy0
         1zjpdAICG6dt9RsXKfG022hA9Tdu7kUjFEQHkBUMxN88QXIjcI9PxfGfQpucNUplgH18
         xJjqliaKsbuElw/o5i1XbVuOzNAW5qMOfqfgiBQYGMJfdkLXqhx++VwzMZxB6CduOJVC
         Kqv4X1MiWcuqCBsppsRv1chWb+J3o4uZSuoZq3KeHdFQbvQEicRFi5Mnvahe2s6xtvOX
         rZ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GAR/DG5ac2Nh9DUoEVQ7+XBCCBLlQPkZwF+9waLj7HI=;
        b=sr4qbMNqDzhrLtLO2WQaeyfNudwDyPIjUidps82mOPkBgkbc/A65zeMJ3JylASau+R
         Y5tEiEvWO49wF1QIaRU/Am1y8iFGPDESXK3ISxEds9qWMmaB65YYjyMvbezD+FduVpKe
         lCI/qdbb1fKXeoqtjmlyoNrq3lTNvQeON92kee2pvMdY7MWlW+KKD3VMZdWm5iX6GBRB
         bXilEYR59Hr7pZREEJ7RiI2C1WA96izd2KxqXoSuui4DJKprV0icDW+QpK1W1526KR9N
         4V8E2YjZKwkh/eBSTHlVFioXTsSP4xiziklY8NwM6eF9rLQUEIqIeYQI+ZinJx0j+6wN
         IeKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H40zml2k;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si775122qki.4.2020.03.02.18.50.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:50:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8E25246DE;
	Tue,  3 Mar 2020 02:49:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	xen-devel@lists.xenproject.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 21/22] x86/xen: Distribute switch variables for initialization
Date: Mon,  2 Mar 2020 21:49:32 -0500
Message-Id: <20200303024933.10371-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024933.10371-1-sashal@kernel.org>
References: <20200303024933.10371-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=H40zml2k;       spf=pass
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
index f79a0cdc6b4e7..1f8175bf2a5e3 100644
--- a/arch/x86/xen/enlighten_pv.c
+++ b/arch/x86/xen/enlighten_pv.c
@@ -909,14 +909,15 @@ static u64 xen_read_msr_safe(unsigned int msr, int *e=
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
clang-built-linux/20200303024933.10371-21-sashal%40kernel.org.
