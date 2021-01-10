Return-Path: <clang-built-linux+bncBAABB56W5P7QKGQEAQMCFDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFDE2F06CA
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:56:39 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id o17sf6375597wra.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:56:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279799; cv=pass;
        d=google.com; s=arc-20160816;
        b=IN7d+BLQDocm2OZ+2vTATq7Qcrwsae+W5pG7+XYjLxu1NxALTyf3NFzUhL0JE4Arn3
         DzYvzdqYPy0eXcfYR8AW+zoy/mgf/aMhwxehY3pfOJq5aEnCPuxq0AJt8dYGQlCQRf1f
         hwX2ifFaif0xIPDFuBbbcend3M3Zii8WIOi/kWmMZ7X99u37331OX80N+XczWvZIqYha
         ecyzJUJ7aueoH9z4OPujsU1rH4JkrkdI+RQAWMylG2bmnN4afETkfbGfsYDe/yDZ2Gw8
         VWJ14GBt8SpPt3vfpkaGBzwOl3EszkwEgxuoN5QvVia/oWsHLgFFEjCUIYt6W7Kgj2/M
         coQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=Lj23ePNFQBvTzgUJ6D1c/axdFqm1ta+4hIsyp3s4pf0=;
        b=usGQwjXOi/H+EuOgrbVYa/de/3ySrQNyn/Q3Lq25XxNoDOCEM0JnG7HVmSaI2wLAsH
         qbM+lD82kmVNytVY0jipR7DxDiHYobbczg1dxHmpt7m4ydgpBG94cqvqvgM3yF79K3Hx
         EqCvVCehwo53QB07vt7RoyAMs1kWODUhaYLzsEXRVtim7gPn/UtLX6q0tfujqMkFXQqn
         +Xdlv61mmdOMldU/ikuPYbi1gncyIMnz779XFAuEuZV4jofEtgxpPEaZZ61QfaI7GmcT
         WeLYILwr+SO8UGQhf6KJyb7l63lzbY2uiP/Jl/GSkntwfY1ptbFW2ZDB+AdQiruE9zJc
         uTRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=C2tPyl58;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lj23ePNFQBvTzgUJ6D1c/axdFqm1ta+4hIsyp3s4pf0=;
        b=StRNlkcwnnRMCi9cQZ22VsEexnJbP5r15qsrHqVoRo8KjdcNrmPn7TRczIJrH42OYA
         7iOT/y6sKc1FA6gahLk6/M4NxO7qS7KX62YI6VGj0uKPcaZTxkYUdyvxcbnYXCzQs6MX
         2+NAA5u2BgjA3sB1z++zOXTD9hjm5XDuLcYjbrKXW5EO93YqoxX28MsHX5pkH1lC63DG
         zWRNYNqyYNTpfr3nh1T/lGwwAu3ctTQt9ujLRJRF01q8xoHV6rmD2kFXwYDj3PCY1DeW
         zAEwaypMYzi1FqAKTxX4aeeOJ8q/6GkkmGH3YdGKM+AhNVory8nnVnFeBpEY6SsViezh
         S9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lj23ePNFQBvTzgUJ6D1c/axdFqm1ta+4hIsyp3s4pf0=;
        b=SDGqtmBd7o3yMU14b8bQq6itmqjgsuwsU01U2/fxLSPHnLC58L30g2vVbLYxdjZQmZ
         RhwOS1lnXtxw0MeLRzmMVgZ2MhlholKb4WMjhvaMN22AdYFW9iqZXRRUlOFnGM/5rmgh
         jceES/cpTYO/LcK7sF6/Wa61d0YnL6c9SEPQIoCYOQetZcduIWleeOtJPPfD2stlx1xO
         gZtsoRm7kTHgs0l1+oUdns7ROXrQJywvGoGbtrmvTxX6oHwiySXcM9z8Wr9DhqakfgBW
         AZhkC/kuLHq9s8qD2npEQ34SwVZPMspr/sRWvtzQ22k1RUoQgDcV/Ld92/OtjR6zYzbX
         Ixyw==
X-Gm-Message-State: AOAM533MDrsfzpw8IAGLhwrBG/pI/s65Vz8/tNjwyz+6EpRxzQd5aaRS
	iNh07T1tPwzadoqqJvAGFpU=
X-Google-Smtp-Source: ABdhPJxYGqasLXMNjkb+82CLAKWNkdpDdI1mQyqJtJXBk4v7G0Kqjm11fHerpkHxuzqN/zveWvCb1A==
X-Received: by 2002:a5d:5917:: with SMTP id v23mr12360392wrd.308.1610279799147;
        Sun, 10 Jan 2021 03:56:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1f8e:: with SMTP id f136ls6902891wmf.0.canary-gmail;
 Sun, 10 Jan 2021 03:56:38 -0800 (PST)
X-Received: by 2002:a05:600c:2255:: with SMTP id a21mr10822544wmm.122.1610279798580;
        Sun, 10 Jan 2021 03:56:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279798; cv=none;
        d=google.com; s=arc-20160816;
        b=YO4z6jsvaA874UMO2BQVG07enJ9+rCIXslmmO2IoZqjpzi+z9GpTjRMZitwZzFb/KW
         T8eo7J1jB1evwyuCS1d43UHLwoAzFi3bc/lYC2J8T7qpEEaZ2zvWZ79NBlK+lFX9J7NY
         Wm5MCYONuBJKb7R97jbqZe6Nv3GSj0oFBCRcBa5vL8YIpm2sPZoLhIxkgXvKlvl07om1
         SZ7C6L16z5KYknq99Rw8jAqPA7twtlstEM2pMfVaQOXmSGj0ZJJJEzPUj9crCTmqPaGg
         7Bfksep6kAMpVjW6xQ96LsvPnaNmXufs0P+3FRTLqfwaLkmHrXjtToxkmqJG/6ckpn90
         nl6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=+ae0nqbyeS3RjrUU35uQTOED4nYRvyGMZstGTOsR/XI=;
        b=HuHgpg9klcgEgiXNqeg4y+Ed3mFwcmpKFwDnDLwrfCAjVPVv9nDF5IA5MYUpqcA25Z
         DH5EEt/V64LZZ2hCm83uCmeuNSRiVDLqqdD9wDZsHCvJ644S1gahyV8Ev1r81+xlisyV
         jg1r7AnPNuoDuKDMkOLlYqrKWd1AoBqDm7riji19PnQRtdylQ73wNfO9R5nOtgas7k84
         UImHo6zzB6lYBPWEAUsLJ29dvGwEo/n2yujOOwD31SAOlzKy6ekEo/giAKdTz8+KJkCA
         LRbbQYAg3dD3rHHtofqvYU77ncjGYbfFYtqbs5p7HzWDCMUN+xsDR544mI9ZwoIRp27X
         Nnng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=C2tPyl58;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id z188si917232wmc.1.2021.01.10.03.56.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:56:38 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Sun, 10 Jan 2021 11:56:34 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 5/9] MIPS: vmlinux.lds.S: explicitly catch .rel.dyn symbols
Message-ID: <20210110115546.30970-5-alobakin@pm.me>
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
 header.i=@pm.me header.s=protonmail header.b=C2tPyl58;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted
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

According to linker warnings, both GCC and LLVM generate '.rel.dyn'
symbols:

mips-alpine-linux-musl-ld: warning: orphan section `.rel.dyn'
from `init/main.o' being placed in section `.rel.dyn'

Link-time assertion shows that this section is sometimes empty,
sometimes not, depending on machine bitness and the compiler [0]:

  LD      .tmp_vmlinux.kallsyms1
mips64-linux-gnu-ld: Unexpected run-time relocations (.rel) detected!

Just use the ARM64 approach and declare it in vmlinux.lds.S closer
to __init_end.

[0] https://lore.kernel.org/linux-mips/20210109111259.GA4213@alpha.franken.de

Reported-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/vmlinux.lds.S | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 10d8f0dcb76b..70bba1ff08da 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -137,6 +137,11 @@ SECTIONS
 	PERCPU_SECTION(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
 #endif
 
+	.rel.dyn : ALIGN(8) {
+		*(.rel)
+		*(.rel*)
+	}
+
 #ifdef CONFIG_MIPS_ELF_APPENDED_DTB
 	.appended_dtb : AT(ADDR(.appended_dtb) - LOAD_OFFSET) {
 		*(.appended_dtb)
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-5-alobakin%40pm.me.
