Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4MQ7P3AKGQE4YROWWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6261F2495
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:23:30 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id q14sf12898020ils.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:23:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658609; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tv3Chp9LxmJFaJMKzQ/onVmMlUMOHv6B7IToM6pxZBGkMRVy2wp3BREO3nKNRsgYIT
         Q6CGbyzzb50ZLycpttmUFoBuyjfqAtRocX/q2TmQJ//6ANtOunjINqEuaeyGyZkrUQdN
         GGCrUFeWMQ5a+5td5gkCIX0SgVyp6acPJiik48eoq676Z3EiunbavZ1R0gidj7jVs+/y
         HN2bwwlxxDzgFA7qXGBWcUw4xndXpiOMICJ9fziotkndt3ROWo4DDU790tV5o3/KRkGF
         1WiZOvFd+P/QsaH4n/pFSrlR0maOkqUn+A6gyr9l+uyh8Vsz4OdBvU/GQkgW3yCwtNSl
         H2IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=M431WU09XkFRKEu3O2K3V0Xy0vKn84JNTq7YIErCzCE=;
        b=PD2Xh2l6yMNhT5f6XrkVpaGNJFBSmr4a16n+S3ikznD12GDixzk50skCJ49N2kQdRc
         svRJTAPOKMJfqxONRfYC58z3+H6xJK5Qs4tRS3M2lgOofLigUOzradQx/Gx1XGA5AHWI
         X285lGjz2Tu/RyyOkXRSNQGMfgopNE4FxqXsZAtGXwzcqZEXKIvFkBdDPaxpwyP11LtW
         Thj1oSUsyRPqIXeZJiBWDJdqPbRrA7bJc/ri7MFVKhhvNUuehkttuVo8wDZX7EEjmp0y
         cVl5HDlqlJ+xsHsvkxcXjJm5zjSmuqspP7O4vsZCN5Wkko/Chmj41otRBEzDtIzW+CL0
         jxNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=amAtN4HU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M431WU09XkFRKEu3O2K3V0Xy0vKn84JNTq7YIErCzCE=;
        b=JdHLKHmYKmSQz4sAJVmOUO7QTJOHQ1F4tVGf+5qGhMd/mZ2IVZqThi5ozFZ/eV3eez
         wZlGiw10+sWF7fd+OjYXI3yfY1MDmj2ZnViy6yY+9LY0IXGl6jsasFjceOtHjBTcIvdm
         hXnFGJAZacn4pGx5kQ5Qu8vWmf80vzAFEYMTS0UIAXiMtINL5JUm0/knb0JgymLUZ49U
         5bgnNlku5UUR/URMBzh/wlVOpwAUmAkM1b4ISVVeB+fRMB0fefOdYQrM08c9nDXJD+MZ
         ky/1jSyVhKHqZbYLtKt6nWwcJmCRWISRwWl+bhfWmlfKRQPzPWQBlqLerp3bCNabWgH5
         TrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M431WU09XkFRKEu3O2K3V0Xy0vKn84JNTq7YIErCzCE=;
        b=CaQqeHDyv8Mbj5OX5Wn0J+NPoC6OkXBmsZbeCiPfzGo36X67Y76vQLvcN1Aczi729+
         f8Q8fjuGHahzmrbkIKOjG6lPOmUoMrhG3TxGZcfA7DYL9nkzX3Cvw/nxRCdFWTe0rIsZ
         YfPjkwA8UJWWpdg545Q2wYjwu0HP2jaoPOpHSVsdszGk5Nx2VQ3tDtgqH21Az6KBZfkw
         IotX8Sw5IfqFx+ea9zzbu8tBSKlk7NR7XidXenQMYtYy6FFAgmB7Pp2K7jauLrb/8RY8
         Jay1H6ONE67u5nRt7i6VDglCvR+OsqSvJMyr7JFmjATK5Z8a0r5jIhiWBt/0UnHYeA+d
         fv1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323UJhsQLDPNbA444dxvyrM4vJQGQWXhrVAah1qiEL6ZD9xHFvC
	HzSHPIkfsGswo31ks7Lh8Eg=
X-Google-Smtp-Source: ABdhPJzKX7fX+tFtlaCIQKujsGdG6mVgRj6oAdNmA9GMS43stg9w3kConpFh7wU8KW8Zcn97Oj7lzQ==
X-Received: by 2002:a05:6638:512:: with SMTP id i18mr24933469jar.74.1591658609209;
        Mon, 08 Jun 2020 16:23:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:96d6:: with SMTP id r22ls1579227iol.7.gmail; Mon, 08 Jun
 2020 16:23:28 -0700 (PDT)
X-Received: by 2002:a6b:fc0d:: with SMTP id r13mr17484884ioh.40.1591658608942;
        Mon, 08 Jun 2020 16:23:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658608; cv=none;
        d=google.com; s=arc-20160816;
        b=qWLkDFnSdRjXXcrapiqUDwyYNZQc3wkXcjhKPrpgBn6fNBRadkGEB/8CvIj5JqFF0Q
         a361HLm6rW5eQqcISfJ83jELmh4SMlMu7jyNlAIhzG1dabvUvwlcV9jn5L/UvGdeXOln
         VeePRnFZIapL3NNtDJxot+FHpHUiyQDsT7K7Sdkjxbo1WAbkN7kQSDi0o9DhUyhjuFaf
         ODnbA+Dn655g3aoDI9YEiEIX+789DXEsCCPpaSwcOBjwhlaWQBFU0eeyAZ11SlrqNOZu
         n0jOxefMfa14tx9OUSNpbtQ/W8PRVR+4DxOy7Zh9FxYzwJHP3B0P5SdSPxssk1xQtmuQ
         ZoKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EWbPCfY1txn+y3TZGKfc/I0ojIEWcM70hD1JTWcphlY=;
        b=RHy44GCFZPpegJJKWVoEPjYwIVCBw42WLHTP13vtB9eaDG8CtUUVLULmVBQ+0hb9Zv
         YpF2wGDjhRnSRRxIjs2noV4uSTaHiv5grz8hYkEXGnL1iORU1P1XJBw3m5ZKdYtdFYOK
         hMhvJURqf+rP6h0Pvl5KRRQ4RyQVJpIVjaGLMyrGwh9ZlKhD9yj8XuUaG930bzer61Xa
         dgZqtEyCoZm6wb4EUEGL+D7NBZHidXDr85lOwNnLxOBq+cbYSd2xSMvN1Rl2+vO5xsOQ
         O7M3FAd6hol6c/OCMG6c3sxFRT9JFT+zRYp20F42Jpg2vRw610fLq92RLtRqodQutiHE
         2ewg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=amAtN4HU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y22si812986ioc.0.2020.06.08.16.23.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:23:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6DF62208E4;
	Mon,  8 Jun 2020 23:23:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Aaron Brown <aaron.f.brown@intel.com>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 035/106] e1000: Distribute switch variables for initialization
Date: Mon,  8 Jun 2020 19:21:27 -0400
Message-Id: <20200608232238.3368589-35-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=amAtN4HU;       spf=pass
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

[ Upstream commit a34c7f5156654ebaf7eaace102938be7ff7036cb ]

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

drivers/net/ethernet/intel/e1000/e1000_main.c: In function =E2=80=98e1000_x=
mit_frame=E2=80=99:
drivers/net/ethernet/intel/e1000/e1000_main.c:3143:18: warning: statement w=
ill never be executed [-Wswitch-unreachable]
 3143 |     unsigned int pull_size;
      |                  ^~~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=3D44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/et=
hernet/intel/e1000/e1000_main.c
index 2110d5f2da19..47b867c64b14 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3144,8 +3144,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
kb,
 		hdr_len =3D skb_transport_offset(skb) + tcp_hdrlen(skb);
 		if (skb->data_len && hdr_len =3D=3D len) {
 			switch (hw->mac_type) {
+			case e1000_82544: {
 				unsigned int pull_size;
-			case e1000_82544:
+
 				/* Make sure we have room to chop off 4 bytes,
 				 * and that the end alignment will work out to
 				 * this hardware's requirements
@@ -3166,6 +3167,7 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
kb,
 				}
 				len =3D skb_headlen(skb);
 				break;
+			}
 			default:
 				/* do nothing */
 				break;
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200608232238.3368589-35-sashal%40kernel.org.
