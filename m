Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDET7P3AKGQEQPPB5EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 745761F254A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:28:13 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id d63sf9654107oig.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:28:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658892; cv=pass;
        d=google.com; s=arc-20160816;
        b=AJmS9BWHxeA7v1p5gNOAodykmdLt/90LyIR+K85CWV2ijUJEjBQaku2ILi/hrmfxD4
         cPICav3fFNKfpPHbTzLoHaNYS/LVNEhW0y+unqKip7ZPFSLncpubaAX7O9qDJoIiZh0N
         jIVJky0EbXP5LC/UFDM9rdBXKKgW2H0Ou3Rr7aYgNw/5tr9ByhRQ2jsMaF0USkkL33cX
         nt9L85h26+8/vQ+isV3xzcwcBnJXg4Y1/nSlw5e8mfaeKW0EWiAukXJ/7vUWKLxy/udn
         nHMg+EDA5mdVs+ymrgBGHQiMFgfGhpKKolh1capCG66im1/H0ohO8/gY/cCtvlSDe7i6
         timQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=WWCDo8UiU0XozS4OOiXiO6MUDEW00B34apQuCs0t58E=;
        b=Z+yCA5eQ5WK0744OK3Gl6zfUewVeNnkTZ8eDVCgk7JVya7/TqKlbFioddXMYc23zpA
         hyr1MykPiDwxOnpKqAkgmFA3bdqalwnbapTRJdS+60VzhJXAkZ8nla6HNiYC7+vC4byi
         Ba2+Z/SWONX2US7eP6Um3i0iqLV01sboLQRUuW97APQ/5hVw7YJBXxyiGRbzepu6Rwql
         SMFn+QXfCXINrO5ZYGX8UE1Vm6M9fVZzfRiVY4fI10K7m5l8khyoqcnhI2BFbrl7dNzb
         azYvoBdQ2Miuli25bDWnrycpeJZA6ZLgtdqYwcx3zcV1KDR5N0XBn7hnIFrXEx5NRmxD
         Z51Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=USkHmqt9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WWCDo8UiU0XozS4OOiXiO6MUDEW00B34apQuCs0t58E=;
        b=fNDlqT37TALcs2vckzojZ4U4XUjgwie94TxF/qf/ByrnIBPUHhqBkZEQugC8lYz2Hk
         eGsHWNI6WjIAewO4hpsBU2Xa+oJXQ/KlRO4WYOItMYb4nazHcoGyoeXBKwcuqwRA+MUp
         3WwKHQCOo/J1I89axel7tX0EhbIV9dmVPmirV8KSVHSdc11N3Gct6RDvcrnqAEI3gwXJ
         4CzBBO+oV65ELOzvPJirEiZu+nyD7Z+pe4xKMxw5DrfNAxro2nJYl+vzZVLsbsU2ZW82
         qNNc+gWwtryYjXTXW57ybbMTOpLgFqX1bgf8CN76SsrNzBzF12WH7SHgjC/iAbIbobYU
         wLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WWCDo8UiU0XozS4OOiXiO6MUDEW00B34apQuCs0t58E=;
        b=U2RyRPCHMcNuPfvFpq8CvATV5ChE6/OixWVC/8oO55Q7iyRE4S+wqNMGipjTPmfX8q
         m7azzqYhri0T56vyswDwwXlYovISs2mmKAsNcvPtrEp0DsD3F3MdPO2PQiTgGqymZtH5
         A28vvg/7ha2Xii2L2WNoN29iNl9haWfCaV4rNLUZz4dK/nC2XncWnabKKztn36VFDtlD
         s4q1/km175xOkZDrXXT3DD0UD2yDcsZQmh7lrw6HTRamp/UAbJcF4xnzIon1PbWBS8Ez
         PEnQEy5tG6L0AJq/BS+/yCi47Pyom9JWxPsXmNzp1dnoc9j3BFNdzB8A7fACqG55O862
         1F3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qy2mmGZh+Wa8hZembpFg31lZ5DlajX5Ig3/I+v0viUEOos2dg
	YxKPy2AVDqH60+PYH/2wg0M=
X-Google-Smtp-Source: ABdhPJzy5v2cjJySV994LXIWeZCrXBg3AlLRQE3wPz51zlR9HPQI18W+ZFt7uGipqdlS4ebynW5Z1A==
X-Received: by 2002:aca:cdc4:: with SMTP id d187mr1376992oig.117.1591658892446;
        Mon, 08 Jun 2020 16:28:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e19:: with SMTP id s25ls3888788otr.5.gmail; Mon,
 08 Jun 2020 16:28:12 -0700 (PDT)
X-Received: by 2002:a05:6830:4e:: with SMTP id d14mr20330675otp.296.1591658892129;
        Mon, 08 Jun 2020 16:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658892; cv=none;
        d=google.com; s=arc-20160816;
        b=K1X0Pm6jAu34xR71baXz9Vywy/YvQ46XTmazT5XVH3AQNodFvyeGRQzEowA33t3pNi
         AWN5P5roRvft470Xi61JoCQjat4niab+14FiH4rOw73a5xanSCgwVKhMszgLBU1Zx2jS
         TopFQ8TMwJgimecE9ez9hhfgZ018gPF/USkAMB/RHhd7yheBY+oaFxmsInttfMOXb0RP
         UrCmknNQCb+XoFqNGiisDAX1YcZNQWK81D+YgS/wBAhLCbc23L9eyhI614gvtt/iedNU
         8sppOkmSgRAsb+1oNMhugpEuF4B0UQNzmVqA0AoKldjgDTSuI8fi7YJEtWMANr7dhHMD
         Iz6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oVQ3w0BrQ9eyjHy4YmODEM90ar6SlSn7ISZwxc+Byh8=;
        b=fpORSjAhW0vb3Mfa0FxxXz4wpfHbbQse/Ff3FqwIlk4ohxtwiaIcGWFAttnR+ADtxy
         o6Oz+TCmU1wathizghigGBblDvOcUkUH6KjI6tuKabaz6VQRlmmaR+azPAzqrpLcogls
         rlaCrnS0OkK2LM4mnH4eZmdI/tYHyu55ThMK8EWchkosqRAUJ7TtpX1m+hNuZIxGIDzs
         FSUuuBh+zC86LOdFI4Idb5slJKJqnhGSCStIdWgEhCErt+Z0wJ9KfXeG9tk3L48JaOFK
         RTCcbKipsMucxFQJtLdPSjb1He40JxikbrCK+mylBnmy5iM8fVKFEWvV7A66dl0mP5l0
         RbnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=USkHmqt9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a13si433161otl.0.2020.06.08.16.28.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 795B42087E;
	Mon,  8 Jun 2020 23:28:10 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 14/37] e1000: Distribute switch variables for initialization
Date: Mon,  8 Jun 2020 19:27:26 -0400
Message-Id: <20200608232750.3370747-14-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232750.3370747-1-sashal@kernel.org>
References: <20200608232750.3370747-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=USkHmqt9;       spf=pass
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
index 1f84f2fa459f..f958188207fd 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3162,8 +3162,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
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
@@ -3184,6 +3185,7 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
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
clang-built-linux/20200608232750.3370747-14-sashal%40kernel.org.
