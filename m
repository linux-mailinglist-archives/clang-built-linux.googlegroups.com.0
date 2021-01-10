Return-Path: <clang-built-linux+bncBAABBZOW5P7QKGQECJCCK3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 818582F06C6
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:56:21 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id k5sf7029237edk.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:56:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279781; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBhJ4POcD/BApB6J+or/4IIhDer/FhNfh+/3M3ex9nvvKZjCFZA9jKonWMUb1tbP/D
         7SUdSn2odk7QFB5K71096ScqUZUm89yvZex/Sg3Otz/3mYvJKFninFc8v3uTydfd/Fgd
         sywTkSCQ0HNiqA+ffQtW0BRB3BYyZc71eVucR2owAa93hvgLAcZLhGcANYYdgWmDwN1L
         bhCNkBbnAH5RsK92cgvW92KnJwvMsoa9I8TKxA1JmhCmRC7wprzSMiaToWY2mfzxORST
         Nm6DkRxoVuf0AfBwOBxRpzA9jmqWz9YqvidCCY57fp7DGkxV6x+r6RKt41Xur1MEnISs
         BuDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=WdI3OYjXyruRfcy1d8uBITSLoV9u0p/Tz6kB7+Gr7c4=;
        b=vGULXp46gArKDs+LtUdtUmWPzfmyE9gCRIG5Kv8Ee4x/Pu7II5eSl7O+FzCwKgwZ4R
         lKZjO8invwoGcsahnPUrj6mTMF+bFPfkFqjrVvJt1MsVOLQlEofpMmQTc9e72uNBBMKU
         m1BlBJIeG7fT3rsnrjXsQ9di6WyVI1FeEaWKaCcMsPhsaeO8F2yiTf/onUG8a7kNithk
         pE941IBp0QJZr9Mj4t0/YgoypDzVEU+HaafEDzF5z6MnhXDLQfpThwF1scIDLJiB/9rg
         TGda/jrsd5XOLOS7BZyb2IrhM0lNXwRX6QriJB9s1zlnvEj906/b7WMWleT1rm+jouSY
         4W2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=jaBr7GOj;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WdI3OYjXyruRfcy1d8uBITSLoV9u0p/Tz6kB7+Gr7c4=;
        b=dtjIheRRu0fLSIdRIGt++xeiTl1JNONbidnCIzvRXCx/dpsISc0xzv63jyxLlkDOWZ
         8RCWrjg8Ns8qcaI0N2FVRwjWDgzWh5r4XiE62BASidevv2q7mNFSWp2XO6TjePUVF4fk
         Bixv3FLdRrtZYYDC2dhojAlbMQjBuxASM8+aLwq1gGJ91HGnm+UyZzKKqX0xPg1Zsc51
         qzy1F/Aclq9G5nAXUOcUUANFeHEhQfXT1c76e/d97gWuyQa2aoLwwN/3eNv+atlmUIUl
         FW1mc91GKah9oSkkhH77UuHYAe3QhGiYFnfqf4XxZPpHgauy7T5j3DCeCTbyZnM4jhK6
         TMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WdI3OYjXyruRfcy1d8uBITSLoV9u0p/Tz6kB7+Gr7c4=;
        b=Is56rjhGbq30yTfguD3JkYRNrmlRt20N7U6tJHuZcS14GBCL0AhHtJdkIQF/0tH1Qm
         a5B8Fv/L/D74Nii4JSkfoRilLPyFGdFAKttqooeoNvFOVuIxzZstXqQRIX7GXY5977f4
         jK0N8AFslJuOsJJW3ouMwlgpCO4liYnT7p39DyNgRL9Mrh5WNCbnGEMBRGHHzLWGL3Fe
         jBCS7bMbTTnAfwg3aN8cp4p1KFCJ3ahSlNkPt5BH+3TUT/P8RIQqQ/l2dLKLnARWv446
         AlEXt6Sn985fcJCFGXM62F46YNntkRMFt7iRLd3d2L/iW0sHRcKtGjpHERzXSpcjF6It
         9qFg==
X-Gm-Message-State: AOAM531bZYh9fhns2lhcQYMMP8XDF5gHUI1sKPzKCMzjqMakgDr2n+7h
	2Y1bK/ex8OjiBS60ZfbACNQ=
X-Google-Smtp-Source: ABdhPJwBsitRoYibrYIgJm7Q9rx6DYE7U5ZsX79amZc+WaCHZwiz4OV9NbQnBLcQxYr3lSACn/WKoQ==
X-Received: by 2002:a50:abc6:: with SMTP id u64mr11161629edc.21.1610279781312;
        Sun, 10 Jan 2021 03:56:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8a9b:: with SMTP id j27ls4226530edj.3.gmail; Sun, 10 Jan
 2021 03:56:20 -0800 (PST)
X-Received: by 2002:a50:cd9c:: with SMTP id p28mr10686128edi.83.1610279780655;
        Sun, 10 Jan 2021 03:56:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279780; cv=none;
        d=google.com; s=arc-20160816;
        b=JvgnEd1rnbAcH7tc3fOI2t71EQRLWqSyJsay/9TG4GYTdTZdGZqdyOBYLs6TQs/s5+
         tk5gqm9LOemoiQOG3ZHaasMCQJ8IIsVoyBny3IV7XBiQzB30jSVfQj5a/CYY38tDJwYH
         aMbTbBDuE90ekDDDtMeeLBNyiL5MX5XqmU/8ICluPZsOg8NP73oqO3AwBxUhCqrQpSw+
         jl7j7BDqoCv2DpyT+S5sihELlblNt5qoZvHk+ZZqG1nuHe4d9twycGITnCY+TAWlRD4C
         SaFY3Q3UJS79IMmXYaaiaTbuzYNxitowdxU9bA3EqlLhChSbpsBdnOhSI7H1tgImgdmw
         kIpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=e3Fx1xMuOcodd9nkft6VXE99Jq/7Rxy9CCIA9/ZKpTI=;
        b=CZ7VN+XH5VYqpd9AuiLC0RyHNyG0jh1E3DSOiMJx7TETvYzLh6d023Q5lNq9Ch+eKO
         Lzkt7WxXgbbhHtwsJaoAdLmBbIOgvBGmVk8HKGBl1h1WdoirY5lXBejWo7chNunGGDpg
         zTFLLi5BB6BUIhTw7+ngZaQ7yI6feOeOGtov9bTBrWJXPTBbmTls7mqW7vDG9jRlgmNr
         1AtIh350BQgyB8CMH8n0ClX2L0KgzBC3IJl1AJCihecr/N5PyEkKiN0vz8px9ARxHatl
         B5WRZTtytf7RT96ZcklBNFzPfLJpfsCETMZXn9X+wX6RvpSnbHd+DWTOikiGAwoYz2Xp
         9ugQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=jaBr7GOj;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch. [185.70.40.131])
        by gmr-mx.google.com with ESMTPS id i3si641514edy.3.2021.01.10.03.56.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:56:20 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Date: Sun, 10 Jan 2021 11:56:14 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 2/9] MIPS: CPS: don't create redundant .text.cps-vec section
Message-ID: <20210110115546.30970-2-alobakin@pm.me>
In-Reply-To: <20210110115546.30970-1-alobakin@pm.me>
References: <20210110115245.30762-1-alobakin@pm.me> <20210110115546.30970-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=jaBr7GOj;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

A number of symbols from arch/mips/kernel/cps-vec.S is explicitly
placed into '.text.cps-vec' section.
There are no direct references to this section, so there's no need
to form it. '.balign 0x1000' directive will work anyway.

Moreover, this section was being placed in vmlinux differently
depending on CONFIG_LD_DEAD_CODE_DATA_ELIMINATION:
 - with this option enabled, '.text.cps-vec' was being caught
   by '.text.[0-9a-zA-Z_]*' from include/asm-generic/vmlinux.lds.h;
 - without this option, '.text.cps-vec' was being caught
   by discouraging '.text.*' from arch/mips/kernel/vmlinux.lds.S.

'.text.*' should not be used in vmlinux linker scripts at all as it
silently catches any orphan text sections.
So, remove both '.section .text.cps-vec' and '.text.*' from cps-vec.S
and vmlinux.lds.S respectively. As said, this does not affect related
functions alignment:

80116000 T mips_cps_core_entry
80116028 t not_nmi
80116200 T excep_tlbfill
80116280 T excep_xtlbfill
80116300 T excep_cache
80116380 T excep_genex
80116400 T excep_intex
80116480 T excep_ejtag
80116490 T mips_cps_core_init

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/cps-vec.S     | 1 -
 arch/mips/kernel/vmlinux.lds.S | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/mips/kernel/cps-vec.S b/arch/mips/kernel/cps-vec.S
index 4db7ff055c9f..975343240148 100644
--- a/arch/mips/kernel/cps-vec.S
+++ b/arch/mips/kernel/cps-vec.S
@@ -91,7 +91,6 @@
 	.set	pop
 	.endm
 
-.section .text.cps-vec
 .balign 0x1000
 
 LEAF(mips_cps_core_entry)
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 83e27a181206..ae1d0b4bdd60 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -66,7 +66,6 @@ SECTIONS
 		KPROBES_TEXT
 		IRQENTRY_TEXT
 		SOFTIRQENTRY_TEXT
-		*(.text.*)
 		*(.fixup)
 		*(.gnu.warning)
 	} :text = 0
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-2-alobakin%40pm.me.
