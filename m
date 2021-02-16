Return-Path: <clang-built-linux+bncBDU43XP6ZAGRBEMRV2AQMGQEK54N53Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8466B31C7A2
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 09:55:46 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id j74sf4130965lfj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 00:55:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613465746; cv=pass;
        d=google.com; s=arc-20160816;
        b=vfnKcDFLOf+2hnd76YWjUmIUkoOasT0j6r/c/Qj9H/YfJHO3qjTuJN33hiOjnD5No4
         oEzv0xMPLsE+MhlPlYuR8Sd0a0RNvzwC0vp+z5ClGQUqll0+VwJUu4r7lHL4MjrkxKLi
         8K8y1O4rUEnr91kYD6QE545O61jqdJy1RwjFh2OzURj4W89aUbcOastXxRx24x50IWW6
         zNHvvp+0ZbYediGkd193JOAN4C0gIsXC8W4hKbgm2plp+ZQziE9yyHoMo5nyKPn2jkN1
         BN7VLClvRsaEG8UutVpg4xgSwGSqW15Jh8E1bXVpc36BU6NA4BZxbauZTKHDN2JVx0bt
         MbWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :reply-to:cc:from:to:date:dkim-signature;
        bh=Ptxw6eu89Y1/MYhwZAXivtvULYbPFSoGTl5p8U3Ge0U=;
        b=A+ExSIBlwVoUuQFW9T0qvjTMR69/7LT3TwZ76obFm2dnNLtqcMkxHEdb9jWFcTCvLw
         II0Yt8dFr/viTEbLNlhqCd6264Yzf2qcPDwguWQhUcibQRsmV0iopOc68OanBgHsN3qo
         HNL1KWfikMvW+JufR9EfXNMY3uqmt2szoD8Qe04qJcoJ1dMV4KBcIXKPF6R1yp3+d1mb
         2YOlSmKHBhNzbb3X14Tw62VaBUnKwv9d0M8q0AP95Yh7Zd8mob4v84oJs3uSgJoPBO1R
         2M1qNCAfTdN0PhxeYJIk2S5F7Y+O6RG7/keMkI2K0jaXykiQKok1ckbPudQ7T7MQNepc
         s/lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=XoH45ZIl;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ptxw6eu89Y1/MYhwZAXivtvULYbPFSoGTl5p8U3Ge0U=;
        b=hwyzZxB8Ie3G8vOsoiieHcNx9/mWKuxNTDmyDNQ+UvqS6gZaFARuNzwdB9bzMKDN/D
         1TWb4AMX2pL4H6/4kjNbCVYqhc38X7FRyharpi1Loej7pUYyXtT0iErF6zhNqZy2r6Nw
         uauSIZKeHCA1tULnKGbqMxZRdvyD/k7mToM7R6TtKK7UB/fLAQ6PTsZNUxhJYo2bwGV8
         72ViJPc3+xMPLpt6Vl7b7zAJRyhTyp4jgY6XV3n6Caffio5wwM078UdpcdML4kl3aLYl
         xLm1c/8Wrpa1NLmWlv4KkCCwK1Gni7T0Hg31RjXsmYdgAm2TXiKChBDu++NJGCSZwuwm
         IqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ptxw6eu89Y1/MYhwZAXivtvULYbPFSoGTl5p8U3Ge0U=;
        b=WDK9AXd4xdJ31vhDu0uTokKSc295B7u+nat0gKbywv5DqAWmIt8ClR0KccdsIatlIP
         KE1wXj7bt5kwO/n62rXvi6tRBIdubrFyypw4Ex0Chp1K7km2F0TMq6W8Yq0jIho3zo3r
         UbF2erbmTsQZAqYZMgRTXTJzS9lYwmBRn2HYvPnFBpYbMqMnc/kBhMnStqiJJvpL5a8L
         /VOfdRwP5sMT38IAQosq4qcT3kdZoH78r/k9l/IKnRfJQiE8mFt8+8LN25Y2w5eMJ+SG
         ZfBffuNfDPgcwMfArP8XYWGai0ymSPqAcTYzbw6Cichi1PPwy4shUkUvpEkTrW++O/pJ
         QNtQ==
X-Gm-Message-State: AOAM5314MmaI6JauWzHCrixpgOjqdjThPgX2DZgB6QWvcICDwC3hQqL8
	WPzv6QSWhVlTok3Pl6m/Ock=
X-Google-Smtp-Source: ABdhPJyiSKGc4IU/xEs6ZA4sNWQ7IefQfckkwLU3e4klGKOaZkRByYM7OUE6xPeyZZDwaHdH7f/zPw==
X-Received: by 2002:a05:6512:2f2:: with SMTP id m18mr10676102lfq.89.1613465746053;
        Tue, 16 Feb 2021 00:55:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480d:: with SMTP id v13ls1629475lfa.0.gmail; Tue, 16 Feb
 2021 00:55:45 -0800 (PST)
X-Received: by 2002:a19:7e52:: with SMTP id z79mr11296304lfc.218.1613465745078;
        Tue, 16 Feb 2021 00:55:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613465745; cv=none;
        d=google.com; s=arc-20160816;
        b=C1yIsd01OsPQegoKU8rtdfvPkmMKggSRYDc3GD14oK9N1s+FiQWA7/CQ8sMNADq236
         sJDtDmFm1JUuJ6uhtAjdcD4/Xa8XqZeLkR6Izpnlk33uK+s4j4LvrPPDfu+NIFpqa92p
         AzrcJDoRauY+8NSV8K7QItk8vFBrfZkmGEKocYcUkxO3iFvdxSm54ZJTrWBqeruF/bsm
         5RX60vj4mjqcprOyoD8V+4NzAMsqVHLtj+0eM4bRT0FilKxvNk/eDiwqWtRcbILK6JQN
         trmpGSZUkI2xUlpuxQW4ZE5d/j4zkrNlKHlAHFrmHmC4tzgxf2HtlkZtIlG5/wG1QQ0k
         chvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:reply-to
         :cc:from:to:dkim-signature:date;
        bh=Z1B3dJxurktF44XrKPp/L6aM/W1WYsFcVWu3eznTvaw=;
        b=zxvALn1LWkSrPimMCqqquLwecsuWrKNZ2sRVQS1is0lvx3B0Fyy+KICJY8MNnMGV1E
         IVkkyh13iTbBCtFccIhIhNosPaqPdH3BGAMG6UwdBbFkXCvPToGzuqSenrQ/4Nqfd2xn
         r/7RQiruIxsBrg+CHQH0G2Q+mjKSSU6xnUZjzQd94hHIRWVXO3Y3GaAORCIWnan5oWgx
         tx8dG6q4xLBMy4uwCUKNnXezMKHkZqedwuJeZccyMPUtawx7m6XpV2eHkgOddptkGbHb
         m42wdugJozUD80sY9XELv9N+/Yh0cIpFhm1wAB8LdSoSXgR9Hd4Hplm4heT6b0QoXV/y
         mgOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=XoH45ZIl;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id 28si812738lft.12.2021.02.16.00.55.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 00:55:44 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Tue, 16 Feb 2021 08:55:25 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, kernel test robot <lkp@intel.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH mips-next] vmlinux.lds.h: catch more UBSAN symbols into .data
Message-ID: <20210216085442.2967-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=XoH45ZIl;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted
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

LKP triggered lots of LD orphan warnings [0]:

mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data299' from
`init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data299'
mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data183' from
`init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data183'
mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type3' from
`init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type3'
mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type2' from
`init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type2'
mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type0' from
`init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type0'

[...]

Seems like "unnamed data" isn't the only type of symbols that UBSAN
instrumentation can emit.
Catch these into .data with the wildcard as well.

[0] https://lore.kernel.org/linux-mm/202102160741.k57GCNSR-lkp@intel.com

Fixes: f41b233de0ae ("vmlinux.lds.h: catch UBSAN's "unnamed data" into data")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 include/asm-generic/vmlinux.lds.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index cc659e77fcb0..83537e5ee78f 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -95,7 +95,7 @@
  */
 #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
 #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
-#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_*
+#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_* .data.$Lubsan_*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
 #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
 #define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
-- 
2.30.1


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210216085442.2967-1-alobakin%40pm.me.
