Return-Path: <clang-built-linux+bncBAABBA6X5P7QKGQESHSGSDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AD02F06CC
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:56:52 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id l13sf145624ljc.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:56:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279812; cv=pass;
        d=google.com; s=arc-20160816;
        b=as9yw49xq96JS0lHzz9bzMGkt9fW94awz3xQE/7LMNlafGAfxhargSv07lajxd+A8U
         V1cPNEYRviE+e+J3nD2PWMji05sd3m3RwqWRwPtnN7uhEhGilVWTuBlPH8DCiD75wo+T
         4mdpYSDZnjnx7m2vG+gTwxg1nV9OE5MXEVNBEjso8svaioP9nFxn8icwZTdpN86KN7yT
         tq2Tgo3ttxOfYJ5yoIwL3v2+tUOoUcBnbd91FPQYfvGvx3OYyHxs18IfwH9IYUEXZJQX
         vsQAJe3Gf3lP2il9lXLf7GIQ1tRp+PHieCVAyPX3bI8pLOH3ty5bB3vIpYuUb+65Lxft
         ujNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=z46/1G8bFKqhxdRBIYtH/RcoJrkYdXCip4WUFko4q/0=;
        b=nvq/vabEVQ5ztwtxJV1KcbhTbjGhqFWt6Nbi5OPlkCqwXBxqVIXaPVgTWXpWJ5fIuZ
         UlAZDyewdx/vADzRrW9SL/8jfJKUKvbY9Hu1nduZUFGIs+lhHzkEUKm0vMTFgVbGly23
         8Q4Diu7HQozfWf0XVXZ5tkrVF1k6vQIw8uYi32uctPYKPMGXJODRtN0ZKCwf7+PSoLOf
         D0+XmvAGABxr37ev0gvCy/jH+uX1E1QG09H8iw9E+v0dLow7LVqrjDO+JUvF869VUvGy
         GRV2m9k/nA5IQh3WtUS8tCyZf19N4wDDDwGg7QDmDMC/V2pqlJqWAFJ/3U/7LQ8foJo/
         rwYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="Vn6/a5xZ";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z46/1G8bFKqhxdRBIYtH/RcoJrkYdXCip4WUFko4q/0=;
        b=IDiC+oaEziFmz1vnVFBQdXbGr2ZHked2e6GQk7nYg8LYJh6VSxKgO44NQyXP37zknW
         2i4wXFY9rlrAZixrFvUBpBXukWEyhhBaLaJG5UcQWsiDkZyn2yG7etO/8XPa2JexjjCu
         Wz4U142AOUhdUYhEeJpvgV7xR8itxSQvlqC0n8qxoGFCS3bVkJQ84O1bQQ3TqbXRwdV3
         HLRnChgrv/fuH6MW95dRos/EoOBPV9lCgx+3K/e4jI6KsCCx19hu0ws8gCK5caI1v4i3
         uom3W04OJBbdwQ8vzvCgX75i5QjgcNT/bMV3qkzBbh9fE0VYm+w24fqFrjhybRuOU2rc
         yD2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z46/1G8bFKqhxdRBIYtH/RcoJrkYdXCip4WUFko4q/0=;
        b=Fj/jxxO3dxh83MqyIzcO4AjJQ1Xu01EjeIMOExg98CFmfBM30BzldzynZ6DtdOS0AZ
         G1SEVhYSU1Cm6LLasmMMy6EJCKWPG864fdsC8GT1xA5DkQNEaMry9vF60kkycjLyPDN0
         1mo6XTZHJB1oDwhqk/4xqHxoQdOMrAg2Na3tYI74km4QxSLI48RA2XR4T12kVAMLKnM5
         fkwxFZHEwDs0AOISzibfNauGOKnFtdRfgKWa9vbSl0BijVdXiK/Kvkd7f8ttLFjTZ22l
         pqv4qwRisRiVdWZrPLTlHYr2DovQsNgk62608frzjkcn40YcC5axDOHZzxQZLdS+0Z77
         Qo6g==
X-Gm-Message-State: AOAM530jUZ6R7Qqgp2aKoxO8hj4egFVn8+Y73ljKdVU0HADctsgW4qSB
	iadgosF84KOYcJy7PjYgXNg=
X-Google-Smtp-Source: ABdhPJyLcRgqXQH8c28uWn88FzljxefLDUdMYOZ0tiHNIv4WE3e6TTncyWsablF49wY38wYuPjsglA==
X-Received: by 2002:a05:6512:74e:: with SMTP id c14mr5732834lfs.529.1610279811949;
        Sun, 10 Jan 2021 03:56:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls3478036lfu.3.gmail; Sun,
 10 Jan 2021 03:56:51 -0800 (PST)
X-Received: by 2002:ac2:4576:: with SMTP id k22mr5556252lfm.110.1610279811318;
        Sun, 10 Jan 2021 03:56:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279811; cv=none;
        d=google.com; s=arc-20160816;
        b=ZWnnZ106zB2rkwq0lXHuDkrORSgt9oClAdbGL9qI+WV80/knJ89RnVHX1JwxePTjJa
         EETUhuvwdCbIT/XIMt4Ja6FJkD396pd6/IkPQcPp2ei5vTPZFIFSnCJ5xmAwj7ni8E7K
         61ISLx8EiSF00fftlDF34pJSxsCbyLia2Pzoq49ukbcAOd73SWh2qUreVGu3xYVoUJLx
         o5Yu6O4lAd1zmAXXE6DqSRUwMAjpDQh0m7KvvqG54lAfu1pl4YtrLaE/MgdikV9NW1Ku
         z6hfzvv+VyC5ev85Wg0pKcvm3eolRoT/Apil1nGIYUBYI0m2f8/eC2SU+PVMrsl3t/KV
         TStA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=x8cRNNoQDUio05HqY97IXykwYEnNtBTKUh4spQvRTkU=;
        b=NBCQrHVrmOyEbXV/JYLsHid3kdaimUuehCjIdrX+oIJE4ZJnrZSCUru+zMylClsKAt
         iCdYRPwq4gOKu/XNS4rbVy/OqPF3YIDZSABcegi1ijEEfJJsyHCT3X7Eh3rCEzvpiPqI
         pesXtvgORDaIMG8aA0oXcCRh4/o+U0fwTic4DD44URnUX5soRgQr0seGz510t88D54EH
         Vsda8gTSDj5ycebPrGHAHkTM9dushyGw3muL3C32DjrhjfhjF/DPdzA0CRLeqNCEZVnc
         dE8KWw0FrBCst2T1OKWjLpmx6ZpufgefdMdbyCm0lsHpcNoDQN1gfUl72OdmsXBIX5SN
         FpVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="Vn6/a5xZ";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch. [185.70.40.131])
        by gmr-mx.google.com with ESMTPS id 207si456403lfm.0.2021.01.10.03.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:56:51 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Date: Sun, 10 Jan 2021 11:56:47 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 7/9] vmlinux.lds.h: catch compound literals into data and BSS
Message-ID: <20210110115546.30970-7-alobakin@pm.me>
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
 header.i=@pm.me header.s=protonmail header.b="Vn6/a5xZ";       spf=pass
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

When building kernel with LD_DEAD_CODE_DATA_ELIMINATION, LLVM stack
generates separate sections for compound literals, just like in case
with enabled LTO [0]:

ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.14) is being placed in
'.data..compoundliteral.14'
ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.15) is being placed in
'.data..compoundliteral.15'
ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.16) is being placed in
'.data..compoundliteral.16'
ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
(.data..compoundliteral.17) is being placed in
'.data..compoundliteral.17'

[...]

Handle this by adding the related sections to generic definitions
as suggested by Sami [0].

[0] https://lore.kernel.org/lkml/20201211184633.3213045-3-samitolvanen@google.com

Suggested-by: Sami Tolvanen <samitolvanen@google.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/asm-generic/vmlinux.lds.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..5f2f5b1db84f 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -95,10 +95,10 @@
  */
 #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
 #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
-#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
+#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
-#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
-#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
+#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
+#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
 #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
 #else
 #define TEXT_MAIN .text
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-7-alobakin%40pm.me.
