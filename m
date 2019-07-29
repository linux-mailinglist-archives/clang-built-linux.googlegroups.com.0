Return-Path: <clang-built-linux+bncBDTI55WH24IRB27S7LUQKGQEP2ALKUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 032EB78820
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 11:16:29 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id n4sf32278220plp.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 02:16:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564391787; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZlUcWdf5mRT511FZT0td6h0C0Y678EbeVgMQESc9qI6BQVztGB1uh0i5yHkY6qxSjh
         nmQxBNGw8ZQM+p53ppX1SUaRxhWzpYyTTvpCRb41iZf11eZ0setSk89kwlbAqbD5OXyn
         fKj7m0T3DxcNPHqiQo6/RPjG5ZdCSaFnh74lqJVe62IRwWw6I+FSy1kcxnd6iAG1JD/m
         Jtf4h/IIeG+0XrZjaaA/qCWZCNRZxcQVi9wZgKCgWOQ4vp/ToYqfZUPJoOss+Xdbl7tT
         LUwERuXvPZrzjBbCTimddIBt8aXfncY0GIHyhudu8hblCwf2haozRYFOE5hhQMZsRfGv
         6WbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=HHBIHXhhXKcg1d5O32xYXyRskjIndeQsEIkLvMFRtFc=;
        b=saDnsv3p6lRrhgxiBkRb8qbK9ItMV2mL7ikCP/xPk0OU5CkhPdbmjYGPSpM4px8cDG
         ueUVBwLpK161S7UpzCS4U1jZaTmtqcQGm/lH70eLezSRNwEhy8RALUh4Sb0U/GPJ6CWS
         /AVM53SPr4mlopX0E6nVM39rVHzW6hr4/Pk7wymOk70ruJD4DBHkhojX93/IJS7UvFQR
         Qjem5uZTGHuwdxgWfklV0+s2CoOkptNifxtOdaFkFQRfpHf2Qnn5hePcji5556tHn6aC
         gzszzxhh+O4zedRl02ALBN6WKgNS01B5g43vab+TAZoObwVL+ggK5khIboVl+bHt22Vr
         k3lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="u/TOvPqs";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HHBIHXhhXKcg1d5O32xYXyRskjIndeQsEIkLvMFRtFc=;
        b=np+Iz9HeYd5O6E0haiOd6bICVS6X0jvAbVw8Yn/OMj/rqQKPJK+VTjkPMp4uvZh8O7
         DNgchv91TbsC6hRfz9PHrnLn3HYNOHw8bfHfxvtq6kG8gM5TSUNdztU6Dnd4uRN5Rvck
         vShJ6oVqVXEyfcFI6UTAx+cn/YNLwYh+T3m81hzhG+tXNFviltlmlIML/gjjmAbe4cx7
         RWoszH7v0jRzQcBhUe8RuUxBIm7iwsCS5QI8E0PvbSIHGnZpgp046FIGoYk2ZRBPtoeI
         kZEJn8w8ePTFIGHEIib5HEVJXGWU1V7IcUdcP3CYfBwN58ElIIVCs0HxIv0mtpwdk4sa
         QaIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HHBIHXhhXKcg1d5O32xYXyRskjIndeQsEIkLvMFRtFc=;
        b=twkH1uTZ0/xDE1Xda1eyn3S5RhWxLRaPadf7evIR55OibKRDxkU7kCoMTCkT0oj50Y
         zmGcccjt6cLk+wdKtJScQRxPsoWGQZ9PoAxXVA2BBiaYT5oWP+Or7JRZe6S2ywUPv9w6
         LUx6cjvJSJ7SraXRu31G2FoQGFx1jlC/T2fxsIbyKLzDEFnZfFwzEP2Rwlf9yh0p81GP
         aJDCY7kriH4t50NhSS93aqT+GJ5HsNprJnG6x6Ey4HG8/xH7s6mTgvig2sz/SEk7bqFj
         4MshjSKuy9e4KaX3XxOPdut6+wnmCaDdpyis7FwikcIXYDOmOZ570o26m4isugzvfVZu
         yieA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0JQ47Hg06p3VgO48reJvOVkWl4D7bfTBzdJn95IGXo906Un28
	lQbtXSJO/+sEcEIp2oKDEtg=
X-Google-Smtp-Source: APXvYqzycIpJnCl5OmpMXJuDuFkRris0gnr2OvMiZEo6eyrBigi8a3XxUA5ZqJVm1GaxgXM8iBfixA==
X-Received: by 2002:a17:90a:a00d:: with SMTP id q13mr108969399pjp.80.1564391787343;
        Mon, 29 Jul 2019 02:16:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9895:: with SMTP id s21ls15841869plp.3.gmail; Mon,
 29 Jul 2019 02:16:26 -0700 (PDT)
X-Received: by 2002:a17:90a:c70c:: with SMTP id o12mr85767658pjt.62.1564391786976;
        Mon, 29 Jul 2019 02:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564391786; cv=none;
        d=google.com; s=arc-20160816;
        b=pnc0KLf8fzGEAQWD62ElFPAMzEluLdNjjXs/ckYneAgW0vMAnTFfiuC75WvOzRKpPA
         oZIXzNFCHMm9SBlAWroJcjYtYiW/dVvw6ifkRzTva/JfV/V1xReNvcvj1Yq/f78JYk6i
         b1yiQDRmrHYjg25GE6JfFMbNwAl5TssZZpFdRc2heAdlE1xtS6iiMDnbedLjn5XsZNDb
         Cu8Eukq3Ug7UJgZtKIVJsxlNzRZ98MbJWYBiDFLHhCd+Y2eLS+2huKpDEzVdcS2oxel6
         xZ/py7kFvoZ06Ws23RmDE1f46HmSqXuAISS4iCa54jSHwMKCYj+3M0b2a+pSkJoi+aN5
         s1Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=16VOGPWZt50QIHw/yZwbKWLNAnF5eIhm7sbfTUqTMxA=;
        b=alxmSux3JkhmsnSVtNOvcw6GahdU0n6lOaTeULt/DLJUwxBdN+Pj3F/dU+DJ1zo+3/
         ibYCHTMPaYwMyn1VqlYC9uGYeTXs9YQrCT3LpBQiSNtyPy7s8ZMP31+YMU1VD09uIWvd
         8AcZxwcicPm83g65DPd+oJfeRVvByN1TnqwefoPw+pqasLpGoQoshf/EPHqwXkBO8u7g
         xBD3Gq0tN9QQY5a4Y8IiYH615M0ySg4C1NeDgCNMKekQrHkANiZlNmdoi0rNkHYRvqQJ
         PoJ4L2SGD6jdMV/w8CnNujOH2X/lzEdWPNpNp67PmbXiIuBOcEX4ClcDUcfMhhSxa7n6
         UsTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="u/TOvPqs";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id b12si1394121pfd.4.2019.07.29.02.16.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 02:16:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id x6T9FQFU007006;
	Mon, 29 Jul 2019 18:15:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x6T9FQFU007006
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Stephen Boyd <swboyd@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        stable@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: initialize CLANG_FLAGS correctly in the top Makefile
Date: Mon, 29 Jul 2019 18:15:17 +0900
Message-Id: <20190729091517.5334-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="u/TOvPqs";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com
 does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

CLANG_FLAGS is initialized by the following line:

  CLANG_FLAGS     := --target=$(notdir $(CROSS_COMPILE:%-=%))

..., which is run only when CROSS_COMPILE is set.

Some build targets (bindeb-pkg etc.) recurse to the top Makefile.

When you build the kernel with Clang but without CROSS_COMPILE,
the same compiler flags such as -no-integrated-as are accumulated
into CLANG_FLAGS.

If you run 'make CC=clang' and then 'make CC=clang bindeb-pkg',
Kbuild will recompile everything needlessly due to the build command
change.

Fix this by correctly initializing CLANG_FLAGS.

Fixes: 238bcbc4e07f ("kbuild: consolidate Clang compiler flags")
Cc: <stable@vger.kernel.org> # v4.20+
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index fa0fbe7851ea..5ee6f6889869 100644
--- a/Makefile
+++ b/Makefile
@@ -472,6 +472,7 @@ KBUILD_CFLAGS_MODULE  := -DMODULE
 KBUILD_LDFLAGS_MODULE := -T $(srctree)/scripts/module-common.lds
 KBUILD_LDFLAGS :=
 GCC_PLUGINS_CFLAGS :=
+CLANG_FLAGS :=
 
 export ARCH SRCARCH CONFIG_SHELL HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP PAHOLE KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS
@@ -519,7 +520,7 @@ endif
 
 ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
 ifneq ($(CROSS_COMPILE),)
-CLANG_FLAGS	:= --target=$(notdir $(CROSS_COMPILE:%-=%))
+CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)
 GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729091517.5334-1-yamada.masahiro%40socionext.com.
