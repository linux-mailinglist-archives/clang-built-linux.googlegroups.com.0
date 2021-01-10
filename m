Return-Path: <clang-built-linux+bncBAABB3OW5P7QKGQE2QIUUEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id F28262F06C8
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:56:29 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id g15sf147209ljl.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:56:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279789; cv=pass;
        d=google.com; s=arc-20160816;
        b=0xCjOdnkxYuCqDdhpVqTl9QwUsYpq807D+dcdrR8gj+tUNiobIiV2vU/ema5xsWViu
         PsWAXfDPiUlIGA2FRdAC/wmLIZ54jEEwdR3ixygxtfNxtWRh0g3udtPCdP3h2gHOQUja
         b/f0/XJ54qvsJ52426BgQ+lx/FSPHddLfkCNM069xDVvkysrZdPZ1ncSubSKZTGs+lel
         NLxgbJI+JDOEFAzhEF+XaIpoi9dneE7aiUU8D7JKmWYA43yOKf5F6qm7PYVT4RKCiLq5
         moiJU7CCm431htmYFWfB8rS0CcUeaOTOrZPUTR+4qNZRdGspV+6jAzmwK2zEG1pRTV8M
         qAzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=Wnk2L9DkcOQb6IC6da4BiOmyVVQkKcbzvi/FmDkD6Ps=;
        b=hsDHuRMQEMJ2lFwaM2wLxkXzJSW9628hXXNGtsC+bSHsAjpV4zXT/Cx+UnWbR/GELQ
         lDir69genUkviBFeqoOhGh5U3e/JvBe1BtMihuHLLBC3/gU+nA/IRn3m+E62eRuNq15E
         jYHN2/aBXXIdOAcfdcaXMxVzQxnP/T29+GovXfBiwtVjCUx70Q3vr2V1FkiKrSa87Xnr
         bFDufkezqveIxqGoP1HpdfQ5wuIwJf7wZuvO3IlUnylXSQX9GPapyEGR8+X5It4rYQPy
         qkRKGqIdAj8nc5EjVkgQo7HHhgZKDpTAhMEIGRKiHIDSiWPandRTSHzVMDsFSPoLAboK
         4qDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=kXksgyJ2;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wnk2L9DkcOQb6IC6da4BiOmyVVQkKcbzvi/FmDkD6Ps=;
        b=iNpIaV7Vzoqj3o8cWmB6vBtZKFdM4ptWEO3GdTOY2mOe8K4lsme1+3dYKx8KJO9kUg
         KG/eUd/NUKkF0plbwme4COdobQZ/pBVeN4XedR6cPClF4D2CcnlNH9OkrHC9yeYseacU
         i3Dmlyc+hd4Sylrn3LW9qlMk3x+lH3jY74qXNyiCWlx0/37Em5VIYNwN5HGwvdX/E7VJ
         PP/VZmBdWUG+30Hi6hMaS2aS/6J1EyKW6qgOhOejc5kJPMECRcTDY6HSdFLkaI68L85j
         F+3cNfINH3Uyg16zcC2UnVD2abfmXcZ9mgWAURr26AEer+g2E56NJxVkrNGNJzvgWcCc
         S9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wnk2L9DkcOQb6IC6da4BiOmyVVQkKcbzvi/FmDkD6Ps=;
        b=ulZAuzuH1hFSSowNb5Iwdh4oxfYKq6ddeRzVagF3E9niLGVdGP0P2my3Uol/KmXppR
         BHmtBa0QSynqGu4DG90yG2eARaUnrs6qL1AVIFv2f4vrtUYZr2+GRZdl/irMLeCxb1BN
         JEHHQ3nQgweSyC5XNiT5lt1sYY1E6s6y6Tv3P/srfLb6+WI4qAUuP7iMmwBmx/IRXLco
         YYZixXYow1Jy1nmsC+4AF+3dfioZ+cZPADdaH2MpGK4LyhW0kzs8TDaIEojCAgWqmYg0
         qgQ9EkQxWqgiybeVPCu2/iS6W5tqyfKmLZZkS9AHK7n+HXzbrFq/tSCS9HRTrCarG69F
         flGw==
X-Gm-Message-State: AOAM532obMHeY3ttBt2C5Y1ssbS+FwTzH+t41Jxw429v2iF13fANxgG9
	X9dLpjbco2KyuCik+6lPTC8=
X-Google-Smtp-Source: ABdhPJwTJ08RFXGFykEnTScmE5x43ekO9Z3faCuTAQwsnZzylNgCrmrH5iQQQrdcuBL1jU6AxyBsbA==
X-Received: by 2002:a05:6512:63:: with SMTP id i3mr5045856lfo.170.1610279789444;
        Sun, 10 Jan 2021 03:56:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls3477867lfu.3.gmail; Sun,
 10 Jan 2021 03:56:28 -0800 (PST)
X-Received: by 2002:a19:2d10:: with SMTP id k16mr4916483lfj.161.1610279788583;
        Sun, 10 Jan 2021 03:56:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279788; cv=none;
        d=google.com; s=arc-20160816;
        b=E+gMwEhdfX9h1bRMVodxAyO2/m4bI8R/K4EcyFxyPCgocYM7F6IwnGYsXIHdtv+4T5
         XbSvqcG3pMVnIEWL9wLgKyV37PZzpjeZHMAyN0jSTUeDgs9oJsq5bymDlbmL9cBV5twV
         sfz4NXGieLhsjdS+EJXJ2+E8weYEaIv+9kzhZ93JFd2SuR+idvq2cUPkUN9XlrFeu8dD
         Qsb0ofXGrP3N+XVowdq9dNsAibHO8jMkmUmkitnCnhKSkPhXL127sLC5PbzRN/IfJvss
         jNytXV/kL8Iu1ulUIbtgs+WuQotU8e+gPRLstngb5Gi6EyZNPJNa3iR4PQdy6lSlbSIv
         xUJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=z4p3GtI1grxbS9iYRUU8FxMU4I/9YCWsZkDii++EkHY=;
        b=LCnav12JZFkm/4fpY3yAlM3WaZBiFUAXJTWofPSUl+Z+V4q6+vLzNPoIW2aCSIaLxo
         alaS9PCpoS36+C24Z9lx9KK1fGzh5u/2zLPJtcpAVWT0hkHkkVd0BOXTe0vmo2RaEA/2
         zZT+OVFtZSWt+aWQBnwstoL2qUUaHcoYrwGFDLc/ybZkVHVfDDBlmX5mK4jWaWtDuh0K
         OkD4t/Z9w+kjk/BzSF1xbfuEX5m+0u0iGxyJBVDX94UNRfDMFmBrKyYQDPLJ1nm8V/qm
         GGPzb+DX7JA5tJpzAq31hsBOeLekPoJ4JuZa1Z1qMwQ+tkBAZ7SjYY3S8ylNPnUIMW5R
         hzpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=kXksgyJ2;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch. [185.70.40.133])
        by gmr-mx.google.com with ESMTPS id z4si860065lfr.7.2021.01.10.03.56.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:56:28 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Date: Sun, 10 Jan 2021 11:56:22 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 3/9] MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
Message-ID: <20210110115546.30970-3-alobakin@pm.me>
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
 header.i=@pm.me header.s=protonmail header.b=kXksgyJ2;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted
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

Discard GNU attributes (MIPS FP type, GNU Hash etc.) at link time
as kernel doesn't use it at all.
Solves a dozen of the following ld warnings (one per every file):

mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
from `arch/mips/kernel/head.o' being placed in section
`.gnu.attributes'
mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
from `init/main.o' being placed in section `.gnu.attributes'

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index ae1d0b4bdd60..09669a8fddec 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -220,6 +220,7 @@ SECTIONS
 		/* ABI crap starts here */
 		*(.MIPS.abiflags)
 		*(.MIPS.options)
+		*(.gnu.attributes)
 		*(.options)
 		*(.pdr)
 		*(.reginfo)
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-3-alobakin%40pm.me.
