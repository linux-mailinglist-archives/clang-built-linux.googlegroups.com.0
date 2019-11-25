Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWXN53XAKGQEPRQNMNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E407108CAC
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 12:11:24 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id f31sf10030492qta.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 03:11:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574680283; cv=pass;
        d=google.com; s=arc-20160816;
        b=FxZTXTqyp8aIRdsI9INN2n73U04mx0Yn5kq2QBzspQWakkAqzWExl8OJCbcOQVl2da
         NTZ1xNcdpCZ+bNXJlSGIk7j2sBsdx3G8yCR2ZQtKtdFuwhRXXQhFq8dgYMZ46gomYpjb
         wp3zOIrFndJZlD1vXphNzqhFtTTjimUcXj6JvcsA2lZrcTB5Ms171BMT2uYmObrx+VW6
         BWizaUYgFg/ceIDYKi8hhccMgvRpLWDbxLGUgHTpTaXXMkAyIdKnoL5QAJWFU8LGS7Rv
         z2D5CmyqrmAY2W9YTr6U3o829QNlciwgZMrHLUCDHwTQWLGrAT/oaByAApdvkEp//vAQ
         6Rzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:references:in-reply-to
         :subject:cc:cc:cc:to:to:to:to:from:date:mime-version:sender
         :dkim-signature;
        bh=2AZiCFkWpLBcblk55CYgrnjDMcyXarN/C8fk1s1V6/U=;
        b=RDpFle6S5jniiAeL62YjbCO3l9rELFYKyrayNheySyVUnjZV4EHrSuS+iznRItBjDL
         qApiKjMd7MXU4BCOd8l4+LeBPqF6KTHK/TSVXX8iFbkCKcxGgNe4XdYYt8+hqtR9N4tt
         xDdd21ccuKM1al1+j/SMgC2AWu6MjXhUH8lVRTq+1CNt6jITvlLECzVRXN3Ho1kAZ7+m
         YI/EsRHAhxedwso/CBmpXKDNEDbo7ErhjM40XmBRpwLTLO6NIwMdL3qaw7qprMhNBJxn
         xvnXHyowMVrUh0409QMemWzzZA2DyWXvRav51HTXxAVaqQQjCGsrAgID8e3bPGs3REAB
         nz2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lf6lAYjF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:to:to:to:cc:cc:cc:subject
         :in-reply-to:references:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2AZiCFkWpLBcblk55CYgrnjDMcyXarN/C8fk1s1V6/U=;
        b=VDc2UdDGu7aBG8g3qsyQ1Ffz5acg1Q2+Nhe1Hs8IWR9OLqqDV7dT+KDsajexmL6nQb
         QxJ7AT+3JG/XwNi2F2WaxZMmvHsHV2uAhbr5xDMl7wnXptV9uqGV4Cqcybx+jlstQaPL
         E+bMXzXpJg/ZYSSwXMj+I7bZtHmwtPNAFBxfx4zhma9F3tooF2W1mzTQlC1t4EBbXxcg
         EI2QCxG9QfkRZNuhAtyO0ZBdCuC0uiMLWMM1ZXndtFXbck71Ub+pHSeD+Tzdn29FT16s
         hldh4GR7/y18ASQLc+vzJAqv+YJPYJWaUUQFyP9O5cekSNSxNYtv4Zh/nnPCwZsEXSi1
         RnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:to:to:to:cc:cc
         :cc:subject:in-reply-to:references:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AZiCFkWpLBcblk55CYgrnjDMcyXarN/C8fk1s1V6/U=;
        b=C2OuRV3eN6gyY7grnnWf1HEEIctOO0+Tpqd3P3QjHfLOmC74ffsO/LUNoyk6nMSMTn
         7C3H7YSwXAgtYKYh+APV8/GvUv14pfYakSauqQA1wiXYu4aNbv5Fzqbyi7lo3UJkOZBu
         OphAvxXSUCP4AoYKiz3EPeehEI+U7wP1P2emqbAMXsA629gWv1yFfF/u0O4UAJ2vKQZ4
         EfTmR5OlgUpAMxlPF0vL111NZEnmqFpTt1By687piaEl/cemMIt04HI9mcTTcWSD54UV
         CPyFZE8d6DJRr7+jIWm+kGZCPtmjkh86eYlJo8u8zdvt1FZmwHYv6FQHns/GmqJZd7MJ
         qYUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWno8OkPF4aLAXGtEp8aB5uboyk1khtqihLX5Iukk2MoWp9Y7kD
	qUG/hYNE2ia72hZHXU7WB60=
X-Google-Smtp-Source: APXvYqyG0fEfytmz+zqkm+rXU3f8TGlpM3FO6giQF1Cm1CtPYuUpCmGwbIqy1p9xHtHsb7vwnnG3aw==
X-Received: by 2002:ac8:7454:: with SMTP id h20mr10358595qtr.146.1574680282976;
        Mon, 25 Nov 2019 03:11:22 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c7:: with SMTP id g7ls5590168qkl.11.gmail; Mon,
 25 Nov 2019 03:11:22 -0800 (PST)
X-Received: by 2002:a05:620a:1677:: with SMTP id d23mr25229926qko.341.1574680282491;
        Mon, 25 Nov 2019 03:11:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574680282; cv=none;
        d=google.com; s=arc-20160816;
        b=uNg+SZqomGKSruuwWyLtz4nkxcBs4xIZQrDxTzApA3JjUevmtQmL0l1RP0RIhecm0Z
         YGVRRO9arqZhh7isuAJibQiNU9dNqvI7eya6+jiMPw80QawpRah/6BJ3n8mscPKNOaQY
         Q9JNuu1o5chNBZz2BpYmaZqcSu1G5wvSvhqy2TTrO3pyjTy2izA4aiOm30nkYnAQRkb7
         9xCaRSX5NhDtR4tmKOwIuqj/Ll2lOdnfIdFD4IZ/7VqQe1BQSnJW6rhmac7ASiHXoAy8
         f8kLAQX9lezzyA6fsJJ4yx9wHHX+33/DnOMeYlr4tl+RutYWnzIVND8k52E3a3ROP3rR
         Ci/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:references:in-reply-to:subject:cc:cc:cc:to:to:to:to:from
         :date:dkim-signature;
        bh=HeL97snXJGUdAAih/sVWogJvnyRu6aFiKBaMUIcpZLs=;
        b=A3caKuiGysBHGB/uP3ocG/alsJ1DClHMZc9h/yXtFI5dIw2wRE2ZnjkgtwRgMNGZxx
         FlILfFgVaEXl0Hcqqs46i22PQV9SxaZk5oGDY6g9Gdoh2kO4rZuKtHjtOK3utq/j/cf1
         dlbrG7pXB8c/4je6IJzdXGLWuu4Z5glMDtN3dG4IqU2C29n2gmmp9plgGDtx91DRR8gB
         MVkDmydzV1BAaYqZqPRB8BAFH1KLW7wjgA+KAl3qfKhI9buxlWCFaVfRx5UCcMQJSsp5
         wWDQq2Ez9kt9lMHk2C2aiNSML8Jq7RAuLaNw4toHrQibPR2Mg8U2Tn2+OFy3FDriJV7K
         9isA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lf6lAYjF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y199si197361qka.3.2019.11.25.03.11.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Nov 2019 03:11:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [40.117.208.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3E5F92075C;
	Mon, 25 Nov 2019 11:11:21 +0000 (UTC)
Date: Mon, 25 Nov 2019 11:11:20 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
To: Kees Cook <keescook@chromium.org>
To: linux@armlinux.org.uk
Cc: nico@fluxnic.net, clang-built-linux@googlegroups.com,
Cc: stable@vger.kernel.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH] arm: explicitly place .fixup in .text
In-Reply-To: <20191122185522.20582-1-ndesaulniers@google.com>
References: <20191122185522.20582-1-ndesaulniers@google.com>
Message-Id: <20191125111121.3E5F92075C@mail.kernel.org>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lf6lAYjF;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.3.12, v4.19.85, v4.14.155, v4.9.202, v4.4.202.

v5.3.12: Build OK!
v4.19.85: Build OK!
v4.14.155: Failed to apply! Possible dependencies:
    2f181e0ba8db ("ARM: linker script: factor out some common definitions between XIP and non-XIP")
    47b4c77dc356 ("ARM: linker script: factor out stuff for the .text section")
    ab42fad00953 ("ARM: linker script: factor out stuff for the DISCARD section")
    c60890616535 ("ARM: probes: avoid adding kprobes to sensitive kernel-entry/exit code")

v4.9.202: Failed to apply! Possible dependencies:
    2f181e0ba8db ("ARM: linker script: factor out some common definitions between XIP and non-XIP")
    47b4c77dc356 ("ARM: linker script: factor out stuff for the .text section")
    ab42fad00953 ("ARM: linker script: factor out stuff for the DISCARD section")
    c60890616535 ("ARM: probes: avoid adding kprobes to sensitive kernel-entry/exit code")

v4.4.202: Failed to apply! Possible dependencies:
    02afa9a87b23 ("ARM: 8518/1: Use correct symbols for XIP_KERNEL")
    1a61ae7af4d6 ("ARM: KVM: Move the HYP code to its own section")
    25362dc496ed ("ARM: 8501/1: mm: flip priority of CONFIG_DEBUG_RODATA")
    2f181e0ba8db ("ARM: linker script: factor out some common definitions between XIP and non-XIP")
    47b4c77dc356 ("ARM: linker script: factor out stuff for the .text section")
    538bf4694898 ("ARM: 8513/1: xip: Move XIP linking to a separate file")
    6727ad9e206c ("nmi_backtrace: generate one-line reports for idle cpus")
    c60890616535 ("ARM: probes: avoid adding kprobes to sensitive kernel-entry/exit code")
    ddb45306018f ("arm: jump label may reference text in __exit")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191125111121.3E5F92075C%40mail.kernel.org.
