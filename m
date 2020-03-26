Return-Path: <clang-built-linux+bncBAABB24I6HZQKGQEQDJISOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F2D19383D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 06:58:04 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id v127sf484188ybe.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 22:58:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585202283; cv=pass;
        d=google.com; s=arc-20160816;
        b=uHWqfabyuk0C8dnfTvYun0joPbWYUHHHV17iHs9AnQvvR9wi3KqPndpkhRYV/N2T8X
         gDZc34owF8ii3OMMaRgd80Qd1gwaBBd/NHi11nlALEU9GyZ6sIN47bEdytrg9+lZWQ0x
         6j1D0Ynkd3/qxuEndB6NHsYmOAqmZf+rS8mheySwehrYu17D0ZZQW+uzTC7rEHuiuoPp
         dWbQ6cTyOARm7oeRbou5xpk12EEMo6kP9XncrE/Hps/mLBsFhAyMoQCyl+rRfS1o0R3a
         VUgOuwaC4O09yDXY5UkpJTGQwrwDmXRPSmQyy5L0pmyyIa4/xDvp+o5dXHO/AD1WnliX
         Hxtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=L2AgXktgdbGmSB+RcczHq8w8daTuhXEsAxTJXcdE7rY=;
        b=RmJDz7HaCwiTdoMSqWS8Edr7DkapBjPA9/XadL56vLk5Cf0sScWZF639ZtfHDZUCvP
         IDURA12VcL63U4PweXVvj4C7uWsfVQd8TYnLcGpSIO6XnARe7xP42aqc/Yq49wh7HaiM
         f9ZPrCE5pw4dvTBQOYlKWB4Wco33mi1VAnNxvIyDgnrHN4HVlwjkoTmUBIQwP822KSIS
         VhJPVeS/w9pkmN+o5/vL+CfYG1wjLDCFj8/vJJ/6yplUE8l2JjsEzS+g0yAHYCLPMMkf
         5IEYala9uAsUxc8EXxnIjE7hm7TiX2BKb6XifrNLgVMmY30zpgs06UVw9UJi0OHKyhPO
         DWEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="AHhLn/XR";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L2AgXktgdbGmSB+RcczHq8w8daTuhXEsAxTJXcdE7rY=;
        b=dqw+e7tDmHYIDxHMA/FbN81AuHzx/IhPexIKmyIOt7brQC0kE63tHZJiozRcbHF9Dp
         4LtoVkjeHw441kny4Wr9geWZmNvgO927Z51cAJx0YPPNHiLE28t0rgVnGNH6Og2/Hzon
         yJ5r2Cg4SvL4dUeSPMXoyMScoRPDF4118FzHHLuuRgb+x706nbtuXx9EQCfaWxhbn7rm
         h/udrQueBTeMMvIuv9FySejBarctb7Y3OTHOJ89KTPVY/EbKHf+caAxUdhjd2kYrl2qg
         lSSpIurA9NsTWu1oRBfGnmDs3wuEzs3h95CBBye1AtzEJE2nKEFwKGsumU3R/RioWvmp
         hF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L2AgXktgdbGmSB+RcczHq8w8daTuhXEsAxTJXcdE7rY=;
        b=sbiS9tZk6kVIjjvGN4FQhsgqONhwt2LA2ZXck0w3T/FwVl+SkBYd5xeXSMwSFZhS3i
         rmHeDhklDrXBSF/ONuU4V7kJqk5Bqbt9TMBlqkMHDHJ90DKTZD4PPcQvcx/5/803kNyh
         6oqDrzgb0RlrcB6TT3VqvQRfV/kN5Gq1Z+NZjKLrvvAp0hXCb94nJm27f5vzStNqdqHH
         mdLZBZixuFJJeWZ7Xp+3A7sCMzgo6E6Es+j/sOyvBaW4VBaZC99Whhn0lZPB5Lq4D6Dw
         0dttrDjyHAvO+9Uxft6wcDSU/33Kn/W+f3+nzj0/jlN035OK5eDcOO2vklgIPN60HvDa
         Xb2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ27ND218JhBbF9A9efECecoP8Ipy9YRFH9BCqxJEwNrt2ABBQCL
	taCVuFaPuVrvMmcxlfg4mBE=
X-Google-Smtp-Source: ADFU+vsl10NqHG5mzkKKJM3LpSqtANG3bEixMYaoGEg+LEYb+7sUAFUP1p4aIjfNv6YQDqM2Pxl1JA==
X-Received: by 2002:a25:ccd0:: with SMTP id l199mr12188741ybf.446.1585202283660;
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ed04:: with SMTP id k4ls1723711ybh.4.gmail; Wed, 25 Mar
 2020 22:58:03 -0700 (PDT)
X-Received: by 2002:a25:d887:: with SMTP id p129mr12310076ybg.18.1585202283333;
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585202283; cv=none;
        d=google.com; s=arc-20160816;
        b=OLt3vl0lraFoTrBjCnoqBkVUF84jLjqZkWsbDsY/2+yTHuhmUYz6JZdqBf8+oEraDJ
         FEFcYXX68dzA2M0al8GG7M5EPltAZIpnF7BaJRLHTwbt+G9F5Q7XNaLHqNTUTPAteC2O
         o4FhkabJNMZ1htX2ph2URvTRg9TFxjQ8t28Dxexa4AOkkliWoHTfpanEkvLgEY4BXohE
         KkuquEj1i2BHn8gh8ffTaHjWBHFt0NVSHzeYI5feQoygGF5vN/MkQVXGqoT0CScxNOcu
         FP2Asq4+kZ7jNmYY+2m1UijpM8+krYkfsv965duL9yQrvocCkXqcYzWJUup8OX1elAhF
         k0Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=C9kzZXmIKqsEqPxkq+FbEJxlP3ux1NGhl1py0BoTGlk=;
        b=OP69Vyu08lqLDnm/C36lMrAT9BZb4UVtapVlaNfB4BS/uljbwVFY+FICQVaZBn5BZa
         Q8dikoHYWZ5XkDaK7no68PbmqIPKMUz2NOwkb6URRyzjzJYkhPNzgpzzVEOaZrP7mzOh
         mNf9DW5C15l4J6ODdjt6TlVjOspoVNLz3338AsNihLoodC7JsQA9VCwIsX7oacz6EzO0
         fTsjH4CBMI+u6ObXEx5/s6DOepodSwfHKyXh1BJTeYTzvQKp6aGdg24rd1PZAz7Butxd
         VdWYW9qP6VW2C71TM08Vtm9phLa6zsJERYnvaZ9URjpLa1zKuJNNTU1gZi8ZdFTI/dZf
         sKwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="AHhLn/XR";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id l1si65859ybt.2.2020.03.25.22.58.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 02Q5ve97008573;
	Thu, 26 Mar 2020 14:57:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 02Q5ve97008573
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] kbuild: remove AS variable
Date: Thu, 26 Mar 2020 14:57:18 +0900
Message-Id: <20200326055719.16755-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326055719.16755-1-masahiroy@kernel.org>
References: <20200326055719.16755-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="AHhLn/XR";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

As commit 5ef872636ca7 ("kbuild: get rid of misleading $(AS) from
documents") noted, we rarely use $(AS) directly in the kernel build.

Now that the only/last user of $(AS) in drivers/net/wan/Makefile was
converted to $(CC), $(AS) is no longer used in the build process.

You can still pass in AS=clang, which is just a switch to turn on
the LLVM integrated assembler.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---

Changes in v2:
  - Fix breakage of CC=clang build

 Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index fcec84681e4e..2e12fa1cc8f3 100644
--- a/Makefile
+++ b/Makefile
@@ -405,7 +405,6 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Make variables (CC, etc...)
-AS		= $(CROSS_COMPILE)as
 LD		= $(CROSS_COMPILE)ld
 CC		= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
@@ -535,7 +534,7 @@ endif
 ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
-ifeq ($(shell $(AS) --version 2>&1 | head -n 1 | grep clang),)
+ifeq ($(if $(AS),$(shell $(AS) --version 2>&1 | head -n 1 | grep clang)),)
 CLANG_FLAGS	+= -no-integrated-as
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326055719.16755-4-masahiroy%40kernel.org.
