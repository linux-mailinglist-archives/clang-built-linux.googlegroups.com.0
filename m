Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBT6K62KQMGQESJQ7FPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7B6561B52
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:29:52 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id s194-20020a252ccb000000b00669b5702413sf16624899ybs.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:29:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595791; cv=pass;
        d=google.com; s=arc-20160816;
        b=oAw9AmZ1alylyzkj8w3pkd5P630JMX9b5fXr1V9DiKt3LSvErnw+KiEUy7FD4lL6u0
         nt9T2AqNOjbB4J8n1QnQonkwu/eOU96Oji0IQtB/Q1FYXunXL6lfmMwYgXFhHeGFhTMy
         qud8ugZSeXhhl4l+0SiRprlyQFisXrtoMYI2S0JV+2zhULY3NOoAZrS6HLqDv9Vx4c+T
         FPIuyWE3Cl53wkemQbutL7SVkaj4+B0vsK0xs9n+RI74h0wP33mq0o6YYLC/KL6MpxLC
         e8leYNNoSflWzyNXzDWDCoCf6ZD6oj6lg5ZLkqlZaoEKcP4G42KSoKp+zSifDMY8RiRb
         7RRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=ObJnhsiKM+K8qrsnsP0PPaOuQoRvVmLVMswRhYta39o=;
        b=HsMf/kAADi4fKjNjT08u4ryWOooYTojyGB2ZPeSlZfdIIgZrPGDZrL08hl7Vb0b/fn
         AfOX5rCYyGNnBiGrEpdePZh39ZF23DOj7kkb1Idnxu9VDIli9nleoxHrkiKO6exEKZ9U
         aQo8rpSTlyYA/HMOkXGgIDX0oJnImIKZy0hAG64SC2cpNTgzkSGCZ+O0jpEkppzi4DvO
         s419ng95ewSkw3bv5HYpZ9mrAgqq1ssewOqs07DZelBv3uiPcNkxeZJS9T8XTuL3LqjB
         NNEw3Vu1JUEirNwGNhncHOZsDlxvgJu7PaosN7y0WG2kAQHsBjz5nJhFi4im9320fwdb
         hJfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@linuxfoundation.org header.s=korg header.b=xIilw2wg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ObJnhsiKM+K8qrsnsP0PPaOuQoRvVmLVMswRhYta39o=;
        b=XtC0YIoyGkhUyVActNkHRnYCAN477mO0ayzMI76A7+AGS8Oh1txCKV+mAtlfM8or0C
         JCMtwDps5++GVjNXVaqApA6fkAfvK0ezjLpB2p9ZiZztFUCK3yInHNRsqkNn4VfI9mOT
         lv6owbZMeZsg632h2XoCxTarm8PAqxJh7vDGuYYr0iGLW2UShpxw58J75627Zk3H/8tp
         DtzmZu1+nizjtypnSDtcG1ec+wxz7tnLPltrOY9jNPgRkxTVDS8Quiz0TND2RS2wVzvs
         iYBTloLPyXjsFmQ46xotjOdMorG0hT7liY6ewyty67UZ+Qey3JayWxL8FbVIdMEfgh+Z
         SvAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ObJnhsiKM+K8qrsnsP0PPaOuQoRvVmLVMswRhYta39o=;
        b=IQ5QIvWPNgE2m2hp/YEr9qc2v7xVvcO8WY28kT7FH465LP+mprn40Aw9QS6gYqkClO
         e3zDDfNG41MyxpAtWSlj/8VjuEfD4OS47BRWMGKz3L3IXwzpumjDZMw3CPDwjJd8CGBk
         0YFmPRIM+euePt6tPx7yDshUseMH+1zI+BbHxMR6c+nO3LzeNV+ralzPDLQ3NFxmDD68
         FToLAVqe/bLRIsungQwBFuEmkDaTssiDgs6SgAqUpLiOoWamdD6SJm/0Dfamv213z05B
         awU9FMZWODYW3yh5EmXD3ybsp7hIaltcQ8/6kWpdd/49xhRNuJHssqLsJaSs1GrBEh2w
         6rpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora9e6w2pYdG4KHYY+4VORM6otWlNNP/hqIP9GYQkPwWuPrZYONEU
	erTqt7TplqonCs3H+tPhLNg=
X-Google-Smtp-Source: AGRyM1vaUbDsQY7vlPYTjlnOqfsRY25+u0WBveozL09eu9YY5ECqzcWzZ07b3+eRvoD4kOV1OZ+6Jg==
X-Received: by 2002:a25:22d5:0:b0:669:dd4:c67e with SMTP id i204-20020a2522d5000000b006690dd4c67emr9540504ybi.129.1656595791327;
        Thu, 30 Jun 2022 06:29:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:311:0:b0:313:9344:5f9f with SMTP id 17-20020a810311000000b0031393445f9fls19880240ywd.9.gmail;
 Thu, 30 Jun 2022 06:29:50 -0700 (PDT)
X-Received: by 2002:a0d:c486:0:b0:31c:3b63:91fe with SMTP id g128-20020a0dc486000000b0031c3b6391femr5640858ywd.7.1656595790727;
        Thu, 30 Jun 2022 06:29:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595790; cv=none;
        d=google.com; s=arc-20160816;
        b=USvdDtYP4XB3Noham99njuMg80s5ecQ+Ga2jeT/G0h4HpBQn53kqCI7tuFR9FaBFT0
         Bp6yfwd4WVfhjcGNE+7Jx5glr3KPhhbruKKamA6Ysgqo1GfVuCmh1u7pj4Bn9LaMGkA2
         blUYZKtxp885E6I8l7NR844SADSAO4MyHuIdgjiSfbaxfbXAEhIPou6OKcDhQbR8au+c
         zmd9e0GiO2NVQJx218XjC16tYvIATF6mhvzTS7ymWTwL3dn+zhxdANWNzVwDOTL+LwsA
         vl1EVZK1lVIUTcb34qZN32IerrVY2B96GhcbOWFF0wbuFYmsa69kBKxySr9/OB8jDwpH
         Frgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=B/G61BA6lrz5OezYzMCIkQEQz8TMYWtVRlRXQtWGNOY=;
        b=dNUVhiR6n5uewJq1sYY/qgDOte+0dz5AHbkBsK446Wvp1kgAdZtU957pk6MCvtxSrU
         iD7G0AwdlPT4qTncmKwA2pWj2EOUqMQJw9LwqN6cSDMaKDwp8MZB9gSWFef0QfIFeLpU
         Jv1vUvqbFVBVprgBQsf4rauv2xP1dqJ3piDDalzwR0ubf221YQCbtdDpVy8XlDeSrL+R
         QePxIJtasfaKBCEv0j35d2mGpvvxW66ShCpeMSmICbYIx38IbsKDzutz3zjAqiyJI4m9
         VRirqv7Tsn7oDm0b8sL/omgVxPIO/djyeCmD2/d3gmrh5sFxqr9nv87ihDdVQz1gsW/A
         OQDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@linuxfoundation.org header.s=korg header.b=xIilw2wg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id 19-20020a810913000000b0030c2e0694absi813054ywj.2.2022.06.30.06.29.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:29:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4FAE461EA4;
	Thu, 30 Jun 2022 13:29:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B1ECC341CC;
	Thu, 30 Jun 2022 13:29:48 +0000 (UTC)
Subject: Patch "ARM: 8933/1: replace Sun/Solaris style flag on section directive" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,jiancai@google.com,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,maskray@google.com,ndesaulniers@google.com,nico@fluxnic.net,peter.smith@linaro.org,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:30 +0200
In-Reply-To: <20220629180227.3408104-7-f.fainelli@gmail.com>
Message-ID: <165659577010898@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@linuxfoundation.org header.s=korg
 header.b=xIilw2wg;       spf=pass (google.com: domain of gregkh@linuxfoundation.org
 designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    ARM: 8933/1: replace Sun/Solaris style flag on section directive

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm-8933-1-replace-sun-solaris-style-flag-on-section-directive.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:22 -0700
Subject: ARM: 8933/1: replace Sun/Solaris style flag on section directive
To: stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nicolas Pitre <nico@fluxnic=
.net>, Ard Biesheuvel <ardb@kernel.org>, Stefan Agner <stefan@agner.ch>, Fa=
ngrui Song <maskray@google.com>, Jian Cai <jiancai@google.com>, Peter Smith=
 <peter.smith@linaro.org>, Russell King <rmk+kernel@armlinux.org.uk>, Flori=
an Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux.org.uk>, H=
erbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft=
.net>, Tony Lindgren <tony@atomide.com>, Hans Ulli Kroll <ulli.kroll@google=
mail.com>, Andre Przywara <andre.przywara@arm.com>, Greg Kroah-Hartman <gre=
gkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>, Jian C=
ai <caij2003@gmail.com>, linux-arm-kernel@lists.infradead.org (moderated li=
st:ARM PORT), linux-kernel@vger.kernel.org (open list), linux-crypto@vger.k=
ernel.org (open list:CRYPTO API), linux-omap@vger.kernel.org (open list:OMA=
P2+ SUPPORT), clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUIL=
D SUPPORT), Sasha Levin
  <sashal@kernel.org>
Message-ID: <20220629180227.3408104-7-f.fainelli@gmail.com>

From: Nick Desaulniers <ndesaulniers@google.com>

commit 790756c7e0229dedc83bf058ac69633045b1000e upstream

It looks like a section directive was using "Solaris style" to declare
the section flags. Replace this with the GNU style so that Clang's
integrated assembler can assemble this directive.

The modified instances were identified via:
$ ag \.section | grep #

Link: https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#=
SEC119
Link: https://github.com/ClangBuiltLinux/linux/issues/744
Link: https://bugs.llvm.org/show_bug.cgi?id=3D43759
Link: https://reviews.llvm.org/D69296

Acked-by: Nicolas Pitre <nico@fluxnic.net>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jian Cai <jiancai@google.com>
Suggested-by: Peter Smith <peter.smith@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/boot/bootp/init.S            |    2 +-
 arch/arm/boot/compressed/big-endian.S |    2 +-
 arch/arm/boot/compressed/head.S       |    2 +-
 arch/arm/boot/compressed/piggy.S      |    2 +-
 arch/arm/mm/proc-arm1020.S            |    2 +-
 arch/arm/mm/proc-arm1020e.S           |    2 +-
 arch/arm/mm/proc-arm1022.S            |    2 +-
 arch/arm/mm/proc-arm1026.S            |    2 +-
 arch/arm/mm/proc-arm720.S             |    2 +-
 arch/arm/mm/proc-arm740.S             |    2 +-
 arch/arm/mm/proc-arm7tdmi.S           |    2 +-
 arch/arm/mm/proc-arm920.S             |    2 +-
 arch/arm/mm/proc-arm922.S             |    2 +-
 arch/arm/mm/proc-arm925.S             |    2 +-
 arch/arm/mm/proc-arm926.S             |    2 +-
 arch/arm/mm/proc-arm940.S             |    2 +-
 arch/arm/mm/proc-arm946.S             |    2 +-
 arch/arm/mm/proc-arm9tdmi.S           |    2 +-
 arch/arm/mm/proc-fa526.S              |    2 +-
 arch/arm/mm/proc-feroceon.S           |    2 +-
 arch/arm/mm/proc-mohawk.S             |    2 +-
 arch/arm/mm/proc-sa110.S              |    2 +-
 arch/arm/mm/proc-sa1100.S             |    2 +-
 arch/arm/mm/proc-v6.S                 |    2 +-
 arch/arm/mm/proc-v7.S                 |    2 +-
 arch/arm/mm/proc-v7m.S                |    4 ++--
 arch/arm/mm/proc-xsc3.S               |    2 +-
 arch/arm/mm/proc-xscale.S             |    2 +-
 28 files changed, 29 insertions(+), 29 deletions(-)

--- a/arch/arm/boot/bootp/init.S
+++ b/arch/arm/boot/bootp/init.S
@@ -13,7 +13,7 @@
  *  size immediately following the kernel, we could build this into
  *  a binary blob, and concatenate the zImage using the cat command.
  */
-		.section .start,#alloc,#execinstr
+		.section .start, "ax"
 		.type	_start, #function
 		.globl	_start
=20
--- a/arch/arm/boot/compressed/big-endian.S
+++ b/arch/arm/boot/compressed/big-endian.S
@@ -6,7 +6,7 @@
  *  Author: Nicolas Pitre
  */
=20
-	.section ".start", #alloc, #execinstr
+	.section ".start", "ax"
=20
 	mrc	p15, 0, r0, c1, c0, 0	@ read control reg
 	orr	r0, r0, #(1 << 7)	@ enable big endian mode
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -140,7 +140,7 @@
 #endif
 		.endm
=20
-		.section ".start", #alloc, #execinstr
+		.section ".start", "ax"
 /*
  * sort out different calling conventions
  */
--- a/arch/arm/boot/compressed/piggy.S
+++ b/arch/arm/boot/compressed/piggy.S
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-	.section .piggydata,#alloc
+	.section .piggydata, "a"
 	.globl	input_data
 input_data:
 	.incbin	"arch/arm/boot/compressed/piggy_data"
--- a/arch/arm/mm/proc-arm1020.S
+++ b/arch/arm/mm/proc-arm1020.S
@@ -491,7 +491,7 @@ cpu_arm1020_name:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm1020_proc_info,#object
 __arm1020_proc_info:
--- a/arch/arm/mm/proc-arm1020e.S
+++ b/arch/arm/mm/proc-arm1020e.S
@@ -449,7 +449,7 @@ arm1020e_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm1020e_proc_info,#object
 __arm1020e_proc_info:
--- a/arch/arm/mm/proc-arm1022.S
+++ b/arch/arm/mm/proc-arm1022.S
@@ -443,7 +443,7 @@ arm1022_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm1022_proc_info,#object
 __arm1022_proc_info:
--- a/arch/arm/mm/proc-arm1026.S
+++ b/arch/arm/mm/proc-arm1026.S
@@ -437,7 +437,7 @@ arm1026_crval:
 	string	cpu_arm1026_name, "ARM1026EJ-S"
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm1026_proc_info,#object
 __arm1026_proc_info:
--- a/arch/arm/mm/proc-arm720.S
+++ b/arch/arm/mm/proc-arm720.S
@@ -172,7 +172,7 @@ arm720_crval:
  * See <asm/procinfo.h> for a definition of this structure.
  */
 =09
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
=20
 .macro arm720_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req,=
 cpu_flush:req
 		.type	__\name\()_proc_info,#object
--- a/arch/arm/mm/proc-arm740.S
+++ b/arch/arm/mm/proc-arm740.S
@@ -128,7 +128,7 @@ __arm740_setup:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 	.type	__arm740_proc_info,#object
 __arm740_proc_info:
 	.long	0x41807400
--- a/arch/arm/mm/proc-arm7tdmi.S
+++ b/arch/arm/mm/proc-arm7tdmi.S
@@ -72,7 +72,7 @@ __arm7tdmi_setup:
=20
 		.align
=20
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
=20
 .macro arm7tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:re=
q, \
 	extra_hwcaps=3D0
--- a/arch/arm/mm/proc-arm920.S
+++ b/arch/arm/mm/proc-arm920.S
@@ -434,7 +434,7 @@ arm920_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm920_proc_info,#object
 __arm920_proc_info:
--- a/arch/arm/mm/proc-arm922.S
+++ b/arch/arm/mm/proc-arm922.S
@@ -412,7 +412,7 @@ arm922_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm922_proc_info,#object
 __arm922_proc_info:
--- a/arch/arm/mm/proc-arm925.S
+++ b/arch/arm/mm/proc-arm925.S
@@ -477,7 +477,7 @@ arm925_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 .macro arm925_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req,=
 cache
 	.type	__\name\()_proc_info,#object
--- a/arch/arm/mm/proc-arm926.S
+++ b/arch/arm/mm/proc-arm926.S
@@ -460,7 +460,7 @@ arm926_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm926_proc_info,#object
 __arm926_proc_info:
--- a/arch/arm/mm/proc-arm940.S
+++ b/arch/arm/mm/proc-arm940.S
@@ -340,7 +340,7 @@ __arm940_setup:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__arm940_proc_info,#object
 __arm940_proc_info:
--- a/arch/arm/mm/proc-arm946.S
+++ b/arch/arm/mm/proc-arm946.S
@@ -395,7 +395,7 @@ __arm946_setup:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 	.type	__arm946_proc_info,#object
 __arm946_proc_info:
 	.long	0x41009460
--- a/arch/arm/mm/proc-arm9tdmi.S
+++ b/arch/arm/mm/proc-arm9tdmi.S
@@ -66,7 +66,7 @@ __arm9tdmi_setup:
=20
 		.align
=20
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
=20
 .macro arm9tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:re=
q
 		.type	__\name\()_proc_info, #object
--- a/arch/arm/mm/proc-fa526.S
+++ b/arch/arm/mm/proc-fa526.S
@@ -185,7 +185,7 @@ fa526_cr1_set:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__fa526_proc_info,#object
 __fa526_proc_info:
--- a/arch/arm/mm/proc-feroceon.S
+++ b/arch/arm/mm/proc-feroceon.S
@@ -571,7 +571,7 @@ feroceon_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 .macro feroceon_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:re=
q, cache:req
 	.type	__\name\()_proc_info,#object
--- a/arch/arm/mm/proc-mohawk.S
+++ b/arch/arm/mm/proc-mohawk.S
@@ -416,7 +416,7 @@ mohawk_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__88sv331x_proc_info,#object
 __88sv331x_proc_info:
--- a/arch/arm/mm/proc-sa110.S
+++ b/arch/arm/mm/proc-sa110.S
@@ -196,7 +196,7 @@ sa110_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	.type	__sa110_proc_info,#object
 __sa110_proc_info:
--- a/arch/arm/mm/proc-sa1100.S
+++ b/arch/arm/mm/proc-sa1100.S
@@ -239,7 +239,7 @@ sa1100_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 .macro sa1100_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
 	.type	__\name\()_proc_info,#object
--- a/arch/arm/mm/proc-v6.S
+++ b/arch/arm/mm/proc-v6.S
@@ -261,7 +261,7 @@ v6_crval:
 	string	cpu_elf_name, "v6"
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	/*
 	 * Match any ARMv6 processor core.
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -644,7 +644,7 @@ __v7_setup_stack:
 	string	cpu_elf_name, "v7"
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 	/*
 	 * Standard v7 proc info content
--- a/arch/arm/mm/proc-v7m.S
+++ b/arch/arm/mm/proc-v7m.S
@@ -93,7 +93,7 @@ ENTRY(cpu_cm7_proc_fin)
 	ret	lr
 ENDPROC(cpu_cm7_proc_fin)
=20
-	.section ".init.text", #alloc, #execinstr
+	.section ".init.text", "ax"
=20
 __v7m_cm7_setup:
 	mov	r8, #(V7M_SCB_CCR_DC | V7M_SCB_CCR_IC| V7M_SCB_CCR_BP)
@@ -177,7 +177,7 @@ ENDPROC(__v7m_setup)
 	string cpu_elf_name "v7m"
 	string cpu_v7m_name "ARMv7-M"
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 .macro __v7m_proc name, initfunc, cache_fns =3D nop_cache_fns, hwcaps =3D =
0,  proc_fns =3D v7m_processor_functions
 	.long	0			/* proc_info_list.__cpu_mm_mmu_flags */
--- a/arch/arm/mm/proc-xsc3.S
+++ b/arch/arm/mm/proc-xsc3.S
@@ -496,7 +496,7 @@ xsc3_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 .macro xsc3_proc_info name:req, cpu_val:req, cpu_mask:req
 	.type	__\name\()_proc_info,#object
--- a/arch/arm/mm/proc-xscale.S
+++ b/arch/arm/mm/proc-xscale.S
@@ -610,7 +610,7 @@ xscale_crval:
=20
 	.align
=20
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
=20
 .macro xscale_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req,=
 cache
 	.type	__\name\()_proc_info,#object


Patches currently in stable-queue which might be from f.fainelli@gmail.com =
are

queue-5.4/arm-8971-1-replace-the-sole-use-of-a-symbol-with-its-definition.p=
atch
queue-5.4/arm-omap2-drop-unnecessary-adrl.patch
queue-5.4/arm-8933-1-replace-sun-solaris-style-flag-on-section-directive.pa=
tch
queue-5.4/crypto-arm-sha256-neon-avoid-adrl-pseudo-instruction.patch
queue-5.4/arm-9029-1-make-iwmmxt.s-support-clang-s-integrated-assembler.pat=
ch
queue-5.4/net-mscc-ocelot-allow-unregistered-ip-multicast-flooding.patch
queue-5.4/crypto-arm-sha512-neon-avoid-adrl-pseudo-instruction.patch
queue-5.4/arm-8989-1-use-.fpu-assembler-directives-instead-of-assembler-arg=
uments.patch
queue-5.4/crypto-arm-ghash-ce-define-fpu-before-fpu-registers-are-reference=
d.patch
queue-5.4/arm-8929-1-use-apsr_nzcv-instead-of-r15-as-mrc-operand.patch
queue-5.4/crypto-arm-use-kconfig-based-compiler-checks-for-crypto-opcodes.p=
atch
queue-5.4/arm-8990-1-use-vfp-assembler-mnemonics-in-register-load-store-mac=
ros.patch

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/165659577010898%40kroah.com.
