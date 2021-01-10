Return-Path: <clang-built-linux+bncBAABBWE25T7QKGQEU77PSOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B582F078D
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 15:21:13 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id j16sf246727ljb.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 06:21:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610288472; cv=pass;
        d=google.com; s=arc-20160816;
        b=SnDmwJuQV/SciJQNsQrDU5qANVayRGoKIhyTQlnjmrDmvoLgAdZ7cmRLQW6e9OdSWb
         +dRO0GeSWfx3mpHlehU45BEcok7m25DRa+TAUmyEh8k6PcbzTyYxwXy1829H4dmmTdVp
         bX6yCsf3b0AyunU+3eoA+zGR4uPlGXnpxOnTHyPhYp0ZGdJI2PWwLAOD4LbeNKnFoF3E
         nVU3TmCjMC3XTVPWGrj4BHmPHXrZsx9R0ClUeMLYaZrwdJTA76wEWsL0lqyEp2LtoUEW
         hgH4Unm2ERxQYA46eCcZEQrf5SrWd9QulaK2utewi9yFuVkBfMq4Zyd3HG4oX7osUxek
         JcOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :reply-to:cc:from:to:date:dkim-signature;
        bh=LIm5juqi9gPR1uVWM95ltJyK06/wFly3F9288zKPKSA=;
        b=u63/rK3PAKp7OrQXonGtTTIePl5BIry3FbYoAevnP9WWKlGlfHD519hW2oRtr01UL/
         nCOkwxoFieCehj8Ix2bWlc9/ALLHy4XARXmKqOxMnSrxRFQJFoQPm5j/9Ponspqww6Eo
         v63Jwyk1DlpRP2m3cFhvkopbNNlvQp8XVPmyFaTDkcNLcZck74L2F+zpSopk9DTwJQIm
         rQpk1fDrrTdJmRyUyQSD0iGepXaEkcr1qcLSBB5Mjk76V4d89zCqZOCy1aKGlZayWkvq
         poARo3vQsAwfDPK9sRwku/uAOSC9nxKEoD41SCoFWmrreWSFPpom4mM5ogC2pYXIoxIc
         npMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=aCJf4p3j;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LIm5juqi9gPR1uVWM95ltJyK06/wFly3F9288zKPKSA=;
        b=US21CNyyyS4tSmVsdW/z4/Pp5Wb7RfIsctzMpIlUca16rVOgWKxNFqiOqzVp8vk3uS
         01yynLcVP2Cl8o1/GARDAwQVsMHE4DaacZ9gXXO/IMM8jBKewkI4uBuevxDzhmbtUsNi
         RsVzJzDKFbCDhSUWF51wPYgRnpdXKVG+5xfYsEAzBXbtSvS4PsgAYuVCwpbCbXKoOZ6g
         tmR6JLERLtHpADH1SLzZGj3CsjueBuyEwyg644aQz5lxN+7vrmuzIuu9A4qNkG/rzJjl
         GplkyW3Vq7fnwlSaTqgTOIKb+8t42A1zD8O53lrWzd/3hqufdBoay7xyDEy+nWuI0cX4
         W9lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LIm5juqi9gPR1uVWM95ltJyK06/wFly3F9288zKPKSA=;
        b=puT9TEfuCH0ZOoGf01r9Ie3+sJrx+cppT6NxqSEVo90m4x5K43+bcMLj5JGWWrKLOB
         TkAnxJzD/Ja6dSRtvzLjhtpDogIeNCGYejVjIl23/Ecj4QLZYW92YMQYv5aUMlC+tO7Y
         uhXM5hcGnpu7tGT4QG2DlzzFJTAe/a0hhAmvGxM5bnKnaRk0tL/C7nMlSGbwLrhke3rP
         lv1eajN7ToA9ij5OxBA/W/MsoY0Z54lsNLqIoQFSazSX9ffKSshiAIZYu/4OrWt0Zr9E
         nn42OOXfzhn2+QeYSA7ebAGkGdbSmyhAevg5iXalTkLBJF+6gV6hIoMGZMBIsjp+p2fH
         Jgww==
X-Gm-Message-State: AOAM531sq2ENEo347QZZFmxymf7fXJqLk4q8tz8k0lSnNuLyfs8v2kVK
	TokDIKmmYAV0pwCErh/RA9Y=
X-Google-Smtp-Source: ABdhPJxhyJVKUwLczoDTNIokcwr3iKMyldD/yyxHtS9MkH/KquRJmwjq2L1T4Neqvphr+Lz0LP/5Bg==
X-Received: by 2002:ac2:5c5d:: with SMTP id s29mr5080877lfp.88.1610288472698;
        Sun, 10 Jan 2021 06:21:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls2525991ljc.9.gmail; Sun, 10 Jan
 2021 06:21:11 -0800 (PST)
X-Received: by 2002:a05:651c:204e:: with SMTP id t14mr5328716ljo.499.1610288471891;
        Sun, 10 Jan 2021 06:21:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610288471; cv=none;
        d=google.com; s=arc-20160816;
        b=ZRuUFJUuyzesO5aXBnUBju8I2ZoUCR+sSJx8iQuDtz/bhPdnVfX6sY1eFUC4LpELGk
         uqbC2ZVxML3uHnS8QM1h1HKeB8m37VMkCjy+Hgs4+2ayrLlVehjcGgRD719P5MxklptB
         J0hpgbEc2BxVaNsNR29ysb3vP8FI4/LJKKiQ2O0MsS9Ss73Sk0yIWM4ibtt5dFonyhnI
         AVRS7xMaoPqn46XyTMqlxxdqUUrvBAciYHb4HyIokT1p4zD7yOKqC98X3V0QZRlpkn1U
         ic3DZD15wnnQ+AicHXjVNi13KAvXwEBDhK/dEW6fSvy4PZbZGu0Gjym0Lyj5zkUBP8wp
         PhPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:reply-to
         :cc:from:to:dkim-signature:date;
        bh=VGX0PRLKNwrqHDEXkOqUUZwUy5aJ1pV/tRE9+Arq0VI=;
        b=ggrUheP156KEQGxdlX4P+9qNIq475HXlt9YFA+THtMmHqpfMoNNsUJAtJO5KoYlmlI
         hr5CESTFdfLIZTTcDFUakECVd7WUaD8Rj6ucTMCA3qPNBRj80FKvPYM0hZZhcZzLP0Jl
         RTQyyA2Zt/LUCmmkc5GycpvCWmHkz+jFAVGQX4XOHEcHETD1zQWZN6lRuh1fLCOyDRny
         qBTH/fFrQ2fhx9HwqijZtaFAwNpryXHQauGF6ZrSL6A9DDJtTbF9Hi4+r4/X4fzWKWHT
         HQTUeXZsBXLRoqQ65YryKOGECTh6P0PWEPHXQzACMks7Fx2/9JvJAow99xXJGJn4LWTm
         6ivw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=aCJf4p3j;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id i18si595387lfp.2.2021.01.10.06.21.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 06:21:11 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Sun, 10 Jan 2021 14:21:05 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, Jinyang He <hejinyang@loongson.cn>, Alexander Lobakin <alobakin@pm.me>, Ralf Baechle <ralf@linux-mips.org>, Matt Redfearn <matt.redfearn@mips.com>, linux-mips@vger.kernel.org, stable@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH mips-fixes] MIPS: relocatable: fix possible boot hangup with KASLR enabled
Message-ID: <20210110142023.185275-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=aCJf4p3j;       spf=pass
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

LLVM-built Linux triggered a boot hangup with KASLR enabled.

arch/mips/kernel/relocate.c:get_random_boot() uses linux_banner,
which is a string constant, as a random seed, but accesses it
as an array of unsigned long (in rotate_xor()).
When the address of linux_banner is not aligned to sizeof(long),
such access emits unaligned access exception and hangs the kernel.

Use PTR_ALIGN() to align input address to sizeof(long) and also
align down the input length to prevent possible access-beyond-end.

Fixes: 405bc8fd12f5 ("MIPS: Kernel: Implement KASLR using CONFIG_RELOCATABLE")
Cc: stable@vger.kernel.org # 4.7+
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/relocate.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/mips/kernel/relocate.c b/arch/mips/kernel/relocate.c
index 47aeb3350a76..0e365b7c742d 100644
--- a/arch/mips/kernel/relocate.c
+++ b/arch/mips/kernel/relocate.c
@@ -187,8 +187,14 @@ static int __init relocate_exception_table(long offset)
 static inline __init unsigned long rotate_xor(unsigned long hash,
 					      const void *area, size_t size)
 {
-	size_t i;
-	unsigned long *ptr = (unsigned long *)area;
+	const typeof(hash) *ptr = PTR_ALIGN(area, sizeof(hash));
+	size_t diff, i;
+
+	diff = (void *)ptr - area;
+	if (unlikely(size < diff + sizeof(hash)))
+		return hash;
+
+	size = ALIGN_DOWN(size - diff, sizeof(hash));
 
 	for (i = 0; i < size / sizeof(hash); i++) {
 		/* Rotate by odd number of bits and XOR. */
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110142023.185275-1-alobakin%40pm.me.
