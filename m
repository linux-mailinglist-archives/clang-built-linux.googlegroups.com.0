Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3E3Q72QKGQECSNCIUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B2B1B61C7
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 19:18:38 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id u1sf6893576ybm.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 10:18:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587662317; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndr1q2AdNKfvoqc3oM6lm/yKKII9mSDN52xK0Kb2Y0K66PTLx6+Uot8T3HOZzYqtEB
         vcnLGqMmCfmAvC90Yl8VhKrt+mnz2FBnN0PArHmZINXUOXqHRtwzXlOtQNIuzp3Y6Iu6
         k4P3/7Oqt4ACj4xQsBTM4OUy1iCBnG6dnbkrRZkpWNSviP6Z4ZtHIT2qNqrnSH8Bi5xJ
         PqFScSzzuV34QvoVlJNCxp2wJNL0POdsyub754oL/5E5G9lhJAyGAYRH2WZWh4n2FM98
         oARInTlXjGqys/qofs+H/FgregpDoWMjiTWFGRcCKhx+XlIk2uV2zJhCU3cFkFFfecwi
         tzcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Au8Zb/11QSMcKY0MHdjIlxz348r8ZyyTptdERCGyECI=;
        b=cBslZYefp/zch5bPG0LOMAkOkeQgK79UpCQ0WCU9/o+gRWHaeg0j0hhxO3ytehPZrQ
         bkt0oo2P37A7gz0YqIuuZ6MKQV5s6m+8i2/yUvS8jQhLVfE2ZcHZ+schIPFy3cTkp5kC
         i2NyXYAn22ctnVohmVPahZNOXSX3E/DqwIaZ/MlJF243kj/Euu2+OsyR5j19/Uo9Mijr
         HpfXt7LR40DRN1y4hQ+yWaAcptjQPYvhwm98qmQhdxT/1knTgvZYu77EHu6LIyKdDNuG
         t/3qKKJ2DYnhOfHIsBaosRksD66LuJNQklxh1WuF03Z9WUaBDdfaesyvvnbDQ8nzO8iP
         YwFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kArGXup8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Au8Zb/11QSMcKY0MHdjIlxz348r8ZyyTptdERCGyECI=;
        b=bxxOZDyTSgXYT60VLZPC/KZ8kEcZL1r7p8cSlEXh/h0WpP9Ok/JF9OX49Dt0PRB0Jr
         Do400p2KPh8E3Ci5wwV533fnfa/Nj83lpy3YD75F/I7/fcupv7kJUPqocRt2Z6spinv6
         XV6W55GYvif29i5AM0JgvzlZVRp1q7cR3T8T1DUL82EbCJJAIYyyLE3s2xMzeEPr/YO5
         zbQ8PCkrGoH0W+TeBDlLQpvuo7Dji4SwU5CCOH1h7qbB1XZbxvdp0etyZWMiVKawvmi3
         vENikFr+edLUe1EeSToy4ksTsNdZuQ6TXuNs+oTaMMgYw2JKXeX6YgDIrCCoc4yVY9Yl
         FKCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Au8Zb/11QSMcKY0MHdjIlxz348r8ZyyTptdERCGyECI=;
        b=LVMoUmcUC+rb5Z2qbq7HWMc47xucDCk/dlV+lYQhG8fJekNljRcRDjtfuAn1q+9Wyq
         3NTzXnIJjYPkaDNNwpV8D34RUH+Nawmp+XRa3c/atAwZLRF8mgKbhjlK3QKaViE+azux
         ECHkCV5tagYpLMEkqLIVGquGuEC2I/YMYwg+Wu13ylWtw3O/w/5Wq50Cn8ErUQYVnp/b
         mrAtkSNt7xsrxMXgo8ZhJl48b5nDO89bHcZXoAwkXSymzJcgdfv+Z3+nByMYD1Kwla3h
         D7HdFblqcULn9viGM27tFMvc++cY4vxlFXeWCdvMPKhNjXJCINDTCYwxKlorirYV3ANT
         w++g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Au8Zb/11QSMcKY0MHdjIlxz348r8ZyyTptdERCGyECI=;
        b=T/4sF+oIplC6flsfO5DiEpQXADMUYV801mHpapfbHX1R4KZLoNslzOl4s3OLJ4ke3h
         WyMa7MjVem9/fdx8o2od3RuirLnm3O+w5R2Z7wgKRLzDiJEsTibfusZFKkC6jQflgsVG
         7I6/rFLWmcMEd0vr1doZQ14QAXiL+B5XP1l/vznoTMwtQyk/PiwT4FQbD5GL5omiPSFy
         t7pCqUXSCVIBP/vGZZLdD7Hlxd9bRzjuPHbKxxvGdyRvTnQw8lMn892432o8skdIB44i
         w8Bt9kzEdOaShLMd82BbIxqWc2mULVs7e7sgOgiaf6//YreObLwO6C+A6krw5fmi7y19
         TqvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubfBmwPVR74+V423phiOu63JEa41VidFodNqLRX8Iu55kKaJ6Bw
	Qfh4aRSGcgSW0EtqUUAihAc=
X-Google-Smtp-Source: APiQypI0x3uw4RB4k17SCnGF8jypbV2J9U4209HLisvWYIUAtDwUYRW2KfgqKi02fsDtUIiV4x2D0Q==
X-Received: by 2002:a25:8007:: with SMTP id m7mr7762143ybk.510.1587662316873;
        Thu, 23 Apr 2020 10:18:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:76c9:: with SMTP id r192ls1725464ybc.11.gmail; Thu, 23
 Apr 2020 10:18:36 -0700 (PDT)
X-Received: by 2002:a25:450b:: with SMTP id s11mr9019090yba.138.1587662316495;
        Thu, 23 Apr 2020 10:18:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587662316; cv=none;
        d=google.com; s=arc-20160816;
        b=U/TTk29wOnoVnc4lwLj6ZYl6UILJXVXE3ZKGK1CEgr6SmJMy/LKLmns3hzdVOoG3iC
         hNeiqlAwLZp437j3suO15ZVb/jKTNVDsMHpK9gW9I3JZQFOjPKm6urY8ceMQL155+LYH
         HSySp0vFLABn3NwM5/xL52Dqfh4W04uUTWTfy6lXi0dOLvxftVPcA1Ck95oi0aM67f83
         7UyiTTkcLoPID8lwRUMM59E74dvpCRxloM6boE/tKRgyJ/vjYPTon9zhTabNc2xaSLkG
         hGDsnhm3Ey27GkydKJWpVOM/FyD/7iHb3YTWxJGNrX0EYUqmm7lL9tYi0fK0w/y5lSXz
         FdYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eWIMc/tafff8n4r/ioH7WudEqX5eKJY4/xwKjCeysa8=;
        b=zM/EeNgB1kETPZgNO0+oB8OnPftqIpxQnVhmpyR+GxvECysBnY93vwahiSvhzLw2NM
         /MHKPvwDM1QkXN3I89FurNeBJk480uzCYT3l3pCh/Bhb9SebLdJdZDEnTT6saZQu16uK
         WzblBMOcHtJ4r9oYl0nMu+mKGBHKYFYsk5slGOzYhuTCUUx7HgMF3Wpdixz2NMw1IpBa
         pHRAAZdGIffrEsFYmLaFhgCsSZtrSo6iQ62MzQFaTbVvJHak5bl2W2MFnKmLBBOJin6p
         IUfQnAZ5DqaCy7j8E0RiHiBtJ6N/4O2c6FQZ18hO7WDqAjgd2OMyXg4xMxSTHQTwMKSL
         Ohlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kArGXup8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d72si252789ybh.5.2020.04.23.10.18.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 10:18:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id g19so7391537otk.5
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 10:18:36 -0700 (PDT)
X-Received: by 2002:a9d:24e3:: with SMTP id z90mr4304153ota.39.1587662316179;
        Thu, 23 Apr 2020 10:18:36 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y5sm746726otq.38.2020.04.23.10.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 10:18:35 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v3 4/4] MIPS: VDSO: Allow ld.lld to link the VDSO
Date: Thu, 23 Apr 2020 10:18:07 -0700
Message-Id: <20200423171807.29713-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200423171807.29713-1-natechancellor@gmail.com>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kArGXup8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, when linking with ld.lld, this warning pops up:

    arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25

CONFIG_LD_VERSION is set with scripts/ld-version.sh, which is specific
to GNU ld. It returns 0 for ld.lld so CONFIG_MIPS_LD_CAN_LINK_VDSO does
not set.

ld.lld has a completely different versioning scheme (as it follows
LLVM's versioning) and it does not have the issue mentioned in the
comment block so it should be allowed to link the VDSO.

With this patch, the VDSO successfully links and shows P_MIPS_PC32 in
vgettimeofday.o.

$ llvm-objdump -Dr arch/mips/vdso/vgettimeofday.o | grep R_MIPS_PC32
			00000024:  R_MIPS_PC32	_start
			000000b0:  R_MIPS_PC32	_start
			000002bc:  R_MIPS_PC32	_start
			0000036c:  R_MIPS_PC32	_start
			00000468:  R_MIPS_PC32	_start

Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/785
Link: https://github.com/llvm/llvm-project/commit/e364e2e9ce50c12eb2bf093560e1a1a8544d455a
---

v2 -> v3:

* No changes.

v1 -> v2:

* Move into Kconfig so that the warning does not happen.

 arch/mips/vdso/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
index 36a52158d849b..7aec721398d59 100644
--- a/arch/mips/vdso/Kconfig
+++ b/arch/mips/vdso/Kconfig
@@ -12,7 +12,7 @@
 # the lack of relocations. As such, we disable the VDSO for microMIPS builds.
 
 config MIPS_LD_CAN_LINK_VDSO
-	def_bool LD_VERSION >= 225000000
+	def_bool LD_VERSION >= 225000000 || LD_IS_LLD
 
 config MIPS_DISABLE_VDSO
 	def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423171807.29713-4-natechancellor%40gmail.com.
