Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBPHFZXZQKGQECV226AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F2F18B63A
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 14:25:18 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id 191sf1912797ilb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 06:25:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584624317; cv=pass;
        d=google.com; s=arc-20160816;
        b=WAM5khgeFY3rZyoXvFo/B6wcm682oGAKQPPU2BZ0rQ0baFuCSNzx3h+ISOTx8oSXgI
         1KweE+xXt1TAFgmzPvmbjThzJlOg05TvBb5L2+9dKkK5ZQ60fsa7H3OR8vVLFFlBLoOe
         bmUViokoE2qIdaV+sI+qOMXjmRcgXbvSPXX7xilZcptVsuFvQg+PvQLdTm1I5F7hgEmN
         ahiVqqIo25oElLJ+l5FpifndixgZqAzUSTb+LTO7Bi5sggl9W5kSu8zlQQZF0UvoHkwE
         NsMwx9z2Q0zMM6DG0oEcfpU9FN6bjjeZxL6LyYu15dHVaIltvr6tP1iq2eN0aiCpG/EW
         7c5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=WgCuTLRHWkaUzZubHWummn7ajMOjU+x+4IvHbLbMjmw=;
        b=Zri/y/AGKVl7hxufPPszVIMMyVESNykiP80LQaoaNIf82fanFD6gTzRV64/2SHSSe4
         xXz5uGrM2todTnikSsbqSkyPsNml24U6wIz/lQT5HYuckeLwS/LXU67tkR9keqYZ3Ki3
         RyASWDFmvjBqvCEhtLntci35JpzLpx5Y7NODVkOql6aVgh5yvHrKYZGjCNuOagSKV/MI
         9Yb9GvL2e0Xq9whmrC9xBcDiSLdkp47AS3MybRheuCnkBnGKFstKX+rtxqAT5thThW8l
         KaToktajt6GPOx5eLYfMsySec1PjA5SPKTpjrhY4ICfZm7+BzVRnDTNjmua6RjY7wvqN
         PItA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ubelOgWI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WgCuTLRHWkaUzZubHWummn7ajMOjU+x+4IvHbLbMjmw=;
        b=OK7at/V7RSGRq2MYesysZ038ztBwFa4EptU6O0wErOxn9Cv/XXoRB1Vh1rL/tpJcsw
         f3doWkgm7s0TaicQbxTgOJAG0wpcUlnwa7YG0VXKDpuUL8VZ6AY351zKvT98u4coH9C2
         OuxyRnIru5+xbKEUfpLgkLj/XkCC2zUI7DcIkXKmtM+Zmpv79LHLVfPrabDBaOy5dLOq
         2qbmQWFPoCUSulaWDd7sFWOgfkYsUtDw2UPGVHp146yJ/VdtOrP6mouIvfhex2J0HW6+
         MmY2DpXLzt5S2dbTCUWjGSOH/nesoUVQ2lM7voVAAsZhx0ibrCtOUmVGyOe0yVthlYHz
         V+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WgCuTLRHWkaUzZubHWummn7ajMOjU+x+4IvHbLbMjmw=;
        b=ODB4I4WEHD92fVHfme5dvgOWnyJfvDREHPECiD32L0ZOX30e1rOE8KSXmRn4owKv23
         6CEgYiqHfaXveVXWRAVKt14H8mKi2AVTjLNeYcj33mVwuNPDYMIC/NWB7B89/vRcUH60
         dyDGbZUwTLMkb2gsI/1LLfWvKrhaS5ZI3cG1xfBPy6E0cw7eIm+geyZEl4jFkfA2Wunm
         Ta3iIKPvVj4d2kQTQ0XFCUcq46YKSuehepxU6yOlwyjsSVIWQJEFSu/7xCyf8OqhABXb
         jevbGzJmSURaO9udP7V5K2XKzxdY1VEUx6ca8IBsf58XD6GewgwXALDemPdwC2menmBl
         K5bA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ13i6EIjLZwj2ekm19Duzx9m5m+PIDVd2b6/kSP75R1lOCY1mAq
	7NhDg0TOyGrLBFm5L81nXT8=
X-Google-Smtp-Source: ADFU+vvk39ileUVVzCzUGTtkK7on44k0uylISuujbLgjcFM84uuvYapZGw6K9n/4ZgkVnwfzZW3oqw==
X-Received: by 2002:a92:79cf:: with SMTP id u198mr3188939ilc.23.1584624317030;
        Thu, 19 Mar 2020 06:25:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:31c:: with SMTP id w28ls284269jap.1.gmail; Thu, 19
 Mar 2020 06:25:16 -0700 (PDT)
X-Received: by 2002:a02:c942:: with SMTP id u2mr3158633jao.49.1584624316467;
        Thu, 19 Mar 2020 06:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584624316; cv=none;
        d=google.com; s=arc-20160816;
        b=ip3SVpnIYHa4/ntzRR8CCZKzJMz2nN5iKmKdWsWQranRV4vEDEwPsuERsCX8sYwlbt
         RUhWw4Gwn1akMlCaE5re9Yzk0zTeNyYfOOXhZJFWOPrpBezW3bzoHqok8/PSulkXWjFD
         PhQ+c60dkbSvU9SnSIUm6kvuwsQ8+SKbQBzDFukSr6SrBhsSdXAPR0xS61sp0zsgkwNV
         RiSSJAD7jN6Msemkam0BAjlDsd3YKctoYYP0ZvsbZlfFDP1rOu0vyaKaGdLCqYfojZxr
         vwKbPxaEl5hgmylyxU8Q0F2VcvfE2Yg2C6feh2zIZoFvQXam6gBZIkBhcsRqthUMT1VE
         JzUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9Heytu8cQKw58pc3hYuwyeX9RlRJSpiC6z3gSad6Lmo=;
        b=ymmzLPg74QrKzQ0hAe0bpCpkCE5u8Yms9Gm39SlDtUaeQvne2fyUeqBotdpk1jps5V
         hTfXqbY4JRoppZZ6Un55qybXI1Tg0t/5pXC92JaiRNElYQTrEJnXMWRLxBSrWBsOPQs7
         QIIOYCGPU1+RwrSXEbXz7D4wCPtrdwbktbCg4Lbis0hTCQ0idTTK2GjFixWexjH636LH
         g5Efx4eTQWFV5tiU3Bp1FaG8cOkcIi2sJcGyXT1fAWWR0OYyDlKORfN0R0N/lo1LOu9y
         qpj6ZVEIPk6+dAbqUDz1TzLSyNr6BKb5rhbV3OQt7/qxReqMfCQuZJUdWXmJU1akqjgo
         a2dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ubelOgWI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q6si142107ild.2.2020.03.19.06.25.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 06:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 64AB12098B;
	Thu, 19 Mar 2020 13:25:15 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Paul Burton <paulburton@kernel.org>,
	Ralf Baechle <ralf@linux-mips.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.5 20/65] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
Date: Thu, 19 Mar 2020 14:04:02 +0100
Message-Id: <20200319123932.742469978@linuxfoundation.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200319123926.466988514@linuxfoundation.org>
References: <20200319123926.466988514@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ubelOgWI;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 72cf3b3df423c1bbd8fa1056fed009d3a260f8a9 ]

Clang does not support this option and errors out:

clang-11: error: unknown argument: '-mexplicit-relocs'

Clang does not appear to need this flag like GCC does because the jalr
check that was added in commit 976c23af3ee5 ("mips: vdso: add build
time check that no 'jalr t9' calls left") passes just fine with

$ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/

even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
vdso code").

-mrelax-pic-calls has been supported since clang 9, which is the
earliest version that could build a working MIPS kernel, and it is the
default for clang so just leave it be.

Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
Link: https://github.com/ClangBuiltLinux/linux/issues/890
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index bfb65b2d57c7f..2cf4b6131d88d 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -29,7 +29,7 @@ endif
 cflags-vdso := $(ccflags-vdso) \
 	$(filter -W%,$(filter-out -Wa$(comma)%,$(KBUILD_CFLAGS))) \
 	-O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
-	-mrelax-pic-calls -mexplicit-relocs \
+	-mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
 	-fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
 	$(call cc-option, -fno-asynchronous-unwind-tables) \
 	$(call cc-option, -fno-stack-protector)
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319123932.742469978%40linuxfoundation.org.
