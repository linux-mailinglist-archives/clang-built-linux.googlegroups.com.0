Return-Path: <clang-built-linux+bncBAABBDOX5P7QKGQEXF65NFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2A92F06CE
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:57:01 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id 4sf6384137wrb.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:57:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279821; cv=pass;
        d=google.com; s=arc-20160816;
        b=C0Td+zu0DhJo/uEzCUnaHpUypU41Vw9M8lOsopLyYO5v7wx58g4ytbX+7pR/q1v9ZE
         ulytjtEUHTE5B0n2/376gH88YqsgYJjam9myzgUxkMxddS8noQYW8N+xLeNq+uAiDNXI
         HYMOGbHOJjxPcBSo2nmnEU3rTT1SHsSMkWKiVN/z33yb3+/q8b+SpCeS3heLIEWp85KZ
         Qj9Tc69vQJFdLUswSeY1B/PHeccwxnRIC6gphH6cmrTRqGzl2RkETOcSq9BOwOma6TB6
         EtGA/syFaVyYOvVnX3EKm5kjEX1RwbdPaWODs1mfQCVgBg/TH0EEHFBdua2Kzj7RGLOU
         ZfEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=iIv5EIjopPvCf7qLEscKKP9Q2x9jReDJTt8Uqq3Imp0=;
        b=gWVdcIXxIk+Ilm/b6DmE6Vyd4KJ0P280s1UTzWkTbz2AAeu0x3mAu74GHwtIinPR69
         ezzjE2GcpZ94RVztGiC0RMhCz3jW6fT44nM60VRojOGZEuFvqDEUywzswWLt/0HANLTd
         QgpdYqG9jW8wdg1BpNS/mNujBiRbexBmM1P25/6qpi8HkywgdSXlTAkfNIVIC5FZCTve
         IZXSROQ3bjJhY6tepXLr31Jro2sn99b350/OBneM7x2dPENzIzsZD7H6jM+MpvPS8Ajh
         kiqRaQlkcvMsm4EVHFxVwn9om1eGsevi6Wihnxpl7t7xEJZmM3CctShOEDvCwjpiJTj4
         x8/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=P+8SKV7n;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIv5EIjopPvCf7qLEscKKP9Q2x9jReDJTt8Uqq3Imp0=;
        b=Tv8y/3Wuapkfs49WQPy1RQjQoOtlhrRDlp1AZ5aTJfFAiwv7KlDr8oRmzj//rtyIT1
         1R1PZQ5oQINoTLvJzixBMiByY6yNvkWCJLgYfyLnGVMioa/YaLWITfRgkYxEaMoqhpSD
         y52d+/CSt1E7JZHzkYPD5bBpvI8F3NX6L/PUyfT/fnkbenWfjYWqyx3g8Ow6dIhBL39o
         aGPODJjDSi6KM38QONKrpIyvfzaO8syDFT3f4rQ4c6TeNF5ubRKVCabXGMyVBgseOY/a
         as6maWRzfl0TRfDEfA5bxwYy0ac5+980URr9XtlwAJUVsVcxgk/RSOhSCA1+OcrLVyXD
         YsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIv5EIjopPvCf7qLEscKKP9Q2x9jReDJTt8Uqq3Imp0=;
        b=U7uniCI/RMzJemi0dJvDajvfZapLsdL96I5Lx4PpYA73eVYOVuzXNGKQZKL0jTNgzM
         Ej0a3AJg7l/UQKkPWBvu3R2mI0wbbdbpiEidnkMgTRwoCa+dH6LCwCVMr1OihGquojnT
         LftEOUHiNRFNY2/gx/E/vuMLJMPKj6LGzwVxvPl3D/1HmjN2MJH9TqxE0IeavlIJM7p7
         1kLcQy7qCzT+kDlrB4+CjYPkWhgqhm6LRNENR0aRCwbM436FyVIlrb2CFQ8MHKfzyF0G
         mKkfh74n+R3RyOYtdlcIKkZjrocGA1DKSwbri87iA/X71k9UHD7ctK3zvRayr8ZjV4+O
         RQ8Q==
X-Gm-Message-State: AOAM532sHYH2mfmz5c13i1xjVp3fmi+JvwsIzhMPR0Y8eXorhA38pUY9
	j57yZXIIjUWsJC2+w1JM/V0=
X-Google-Smtp-Source: ABdhPJx/okVv6ncBx40hAy5AUZ7MK3XQobfSRY1QQm+MzAV4DTbmtxMSDdnun8eVoTiADoV678S4jg==
X-Received: by 2002:adf:dc87:: with SMTP id r7mr12008686wrj.305.1610279821724;
        Sun, 10 Jan 2021 03:57:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls2842665wrw.3.gmail; Sun, 10 Jan
 2021 03:57:01 -0800 (PST)
X-Received: by 2002:a5d:4682:: with SMTP id u2mr11897829wrq.265.1610279821144;
        Sun, 10 Jan 2021 03:57:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279821; cv=none;
        d=google.com; s=arc-20160816;
        b=uDZu5LpQx3MRM72/s1ZVMhAuKMtx4x6QloXzChzhNzU4Q1xS0ujxybwskD9JtxXvv1
         D2r7vxKWR12k4NDfDjPt2UgKOS57+Gw85zPDxNx0BnRRmKFf6qmoau1w6gt5gdSQigSU
         mMVTciZtnzuk7uB27bfHA1FB/gh2xEVmY+Q7d5N9lXABEE6VdCVQqRL5/us8Jy7+Llf9
         0edJ6/eyli0MdI+NQns4JO5eudbDytywn28rVHuD7e7MYE/lVM593090XJ/tTOkUDrHU
         MgjYEwCYEuu34wmhrP4yvxoZ86ScBNR3O6FkCNZY0/yezCdorUbfESDgXs7xJ3CQcgXu
         /7tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=uBfGM5EGQNjpg0d/r+6RHo1eXsl0e/48xvwxFVSmmH4=;
        b=dHX1IwW8+0gULCOlEgMARrhLwpWPPS2RPA79Qxuvt+iyAe7tU4eTAgvMMHS0fK3WwE
         osLCdJTkT0ehIZ4iiQhtL4O72lML1fkuNZBvueRLYhkqmASp+jphBlWHngx2cDjGLGSQ
         nu/w0m/Aj2jgQgao7xSxsHTATdF14AAY5WbBCrlQyuLykWx2yAjl5T1et+PFIehtC7k4
         T/0gKQ9H2KVKdhjRfPNlwph3fAVbIwwA/nw85WULbksXJvBqtsnyLi+orEucoMdEOruf
         QUQA3n22qhrCO7HSa7qn/sdiidrAVEmDy3M48x0I1RP16ss6HF4ddXVxfBrSFcTDK8Rr
         Y2Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=P+8SKV7n;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id o135si731222wme.3.2021.01.10.03.57.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:57:01 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Sun, 10 Jan 2021 11:56:54 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 8/9] vmlinux.lds.h: catch UBSAN's "unnamed data" into data
Message-ID: <20210110115546.30970-8-alobakin@pm.me>
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
 header.i=@pm.me header.s=protonmail header.b=P+8SKV7n;       spf=pass
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

When building kernel with both LD_DEAD_CODE_DATA_ELIMINATION and
UBSAN, LLVM stack generates lots of "unnamed data" sections:

ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_2)
is being placed in '.data.$__unnamed_2'
ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_3)
is being placed in '.data.$__unnamed_3'
ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_4)
is being placed in '.data.$__unnamed_4'
ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_5)
is being placed in '.data.$__unnamed_5'

[...]

Also handle this by adding the related sections to generic definitions.

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 include/asm-generic/vmlinux.lds.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 5f2f5b1db84f..cc659e77fcb0 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -95,7 +95,7 @@
  */
 #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
 #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
-#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral*
+#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
 #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
 #define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-8-alobakin%40pm.me.
