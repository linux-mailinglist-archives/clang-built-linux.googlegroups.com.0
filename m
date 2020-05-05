Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3XIYX2QKGQEKI5RBII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 621721C5850
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:13:02 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id c6sf1008300edq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:13:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687982; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVw5uwWbHLICU9SPkhGXZDk+8xEzVpS0ATehNu5qBAgG/NPNomARRPm60mYx9AkVyx
         XlLhe5QuUs16p1cKdNosd/1mDhezLeoa2hoy0fln74YQRFFgl+Qm4t5OzqhEs2/UZuuv
         pIo+XKMo9SbF3Bgd/NRq1yGD04FknK780J3I/SqQnR1T5ZinJI/r3SGIwMMHjgvaB/qx
         1p40VvbIfJLTpa0wwOHcJDtG5+1eNE9HadxTqo2FE1xs0ryZe//Q1aLcyTXyAfY4yTwc
         lABDySk/fkMp1eJABfqpaijQoJkIV4h01InAuwhis508hxYSINbvi4CxWdo9Ihl6Fxee
         lm+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gUF7YMBkxTjgs3+zpoNUGOBXnvXQgqB2VIAIijJ5YFU=;
        b=whbPX8NenYpT6AxKRywZ2THycAZR9z+Gz6y7diwKXbZIGzQZsBuQmcFysOrxt4UseY
         fjSiNlAZrb09+BwAwPyPA5LL0Yl8H8oOxL2tJn8ckNVnDz3x8l3AD5ayVvQJObQLYqMW
         SGbII7h452C+5aWZLWACMUOkn4MYbeKm0O1m7KR8wqZ9x9CXg8uJKLYnO9JcCh83h6Dv
         WqbjHX7au37smiBwo4wY5OJlMeg/jJ27U8up6WpXU6Kb7ckKRnJUVULJjjuTO1bQDNOl
         SwbxV20ISuEqXEcaB4VQDj/MgIXKJdyVjUpMP2xDIzYhephqs/1r+sG95H6unrB/sV4F
         NK7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gUF7YMBkxTjgs3+zpoNUGOBXnvXQgqB2VIAIijJ5YFU=;
        b=MVbwJjGWGAJjofKpkNkfwIIt3kbmsqJZ3WEFfRRDMlemXf2/Lwkvrfeyz/DhGEoM65
         GPwqBqY8eTfc9wKbyC7N8q6yJvQ0a+fF046W72ifGtLBkUEVCe9FWKHxp+AkelVbrTSz
         ZOoyAYlzgZMFrHUX2U0fO3cR/FY5VQ3EKGJYCL4UOKspjYtaoVMOvYYDGaQXotkxjRDu
         9FtdqCtis50Z3VsMpYdT40+ip3IFS7jEkkob4aNdmhO0wnQAp6Xw61GL8ZgXHWXWl4EU
         pHv0RoSw0I+dXHDEKzO3nZ+nndn3RaRuU9AGYrMuEu3lpqohSEASEsIon0YTTitEHkRO
         8Y7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gUF7YMBkxTjgs3+zpoNUGOBXnvXQgqB2VIAIijJ5YFU=;
        b=DGmTS7TFUd37F5thGSlcOkzFnNwxqF5MIA0y9ln4iXVc6rkiooIQNbwQdSGKUQ/7eW
         Dw9e1EBPpn01C5z1zVTKveI7r61T4A/HxKfr/ziM69/kH+KRiXYTZYny4MUrSKW5OEHv
         T08VJWIWUFQd05CO7pXA6evbTh8Rj526kl2Ejd2QEFqgFBhCqiidR2Xr/bff3THJfxX5
         35VhLTiR5Ru6/+RTwjaA6sfnb5Edq6hf5eqBOCQn+0CElawFlT9zo9cdckHHL9mqfUOd
         9+ajyUAf0YY/EiFsZuVCPOmWTOLbQOCrccx3+kW/Q8g/n6bm5JYrsYEObafkGhDWn0uF
         6bGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ12w/x8ktL/h2R1QMPvOg5OewOFiz1lHL++OY5f01aE7fEfv4E
	5DAPiGQHiwoRlEU8PhL7fNY=
X-Google-Smtp-Source: APiQypLUyqBkaECFnWj7incHpgYs6wJaF2rBopQ0uceGG+Wx0Y2YPcZO0fmtFscuaM3hEcMfmrkj7A==
X-Received: by 2002:aa7:c1ca:: with SMTP id d10mr2902231edp.152.1588687982107;
        Tue, 05 May 2020 07:13:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:d511:: with SMTP id u17ls1326073edi.3.gmail; Tue, 05 May
 2020 07:13:01 -0700 (PDT)
X-Received: by 2002:a50:a985:: with SMTP id n5mr2787924edc.338.1588687981633;
        Tue, 05 May 2020 07:13:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687981; cv=none;
        d=google.com; s=arc-20160816;
        b=lleREuWgRcCPrmic8E4q252uXJoD/19jEwafijSgHwwWQI4+c+gBTjG0pf70vh8P+w
         Wvk2CPprVFF8li1AL+65gaAciIEC4byXvaaHc5HLNOXVm4lhtD7aGfWi+/9OGJ5qu6J3
         aHMC84UdlKN/lzTNT/fuXKRAB1KxkTekJWQjfHNk6qis1HPotyby9w07V0q++Pq6mxjP
         ahguSDtGuodzfxNMsWpi936pA19DilZjN45hVtSREUvOlmEKPzoS6PpdX1yMA0Nrz25C
         g68UILoZbXaItlqQpMHl1osEt2fJeHHK9GNI6SoEEfFuwJkmA7WSv67pWp0DUN2AD4UY
         UOMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=z8T39btxur0VopfoZfJmON1FviS20ZKbR+N8sC3DbVA=;
        b=ZE5cbAON2vz9+VHKMHo69a4QW2gccHPqk3QUm137yiLSYRZqkjeprcJbaE7/+N9VbZ
         02iNm4AsWZL3KJ33s5JMTIuv0DHbefo7xzRzSnSO5hEjawArq2jrOxfGVVea5QzMRYIT
         Q+Xev9aVRVfxHclTBjaFxU63fIgN2dyMzupH98cP872Zv6dkcsBWbpLM1PXrrnB3ymQF
         R573UJMkCE198WvW5dw0yNwD+zVy89IGjJaRDDIfO/5c58cAHyTl7JjJ3CR+3BEYAGOh
         RjGtdMVGGEdwZ3XKY6iOXZuy5S3cjXdfKFVfIcDJyWSABKXCO2zHrC3hruWgdlgpSqi0
         jRYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id f24si89639edw.3.2020.05.05.07.13.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:13:01 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mrwnt-1ikU0n0FhF-00nxqr; Tue, 05 May 2020 16:13:00 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Torsten Duwe <duwe@lst.de>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Torsten Duwe <duwe@suse.de>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Julien Thierry <jthierry@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marc Zyngier <maz@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Steve Capper <steve.capper@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] arm64: disable patchable function entry on big-endian clang builds
Date: Tue,  5 May 2020 16:12:36 +0200
Message-Id: <20200505141257.707945-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:rkN2hFA/4F6NEnM1J64C8Aoib8T4jOG+siBiFVT9WROwOdH7x9t
 4WH888TrHbFW/FHpjxq3U7UIYxkq42gZJvGVmzWSKCE/CP5xLY+4t0fiBxQKzBPqACB4Rxu
 Ppew9ALCOA7Zl3kFJwrRLZlpqi3jMRixTt0nmQPz31Umnk3BLwwh/1zbLQKb3mod0qsnKR/
 rNXzfBEB11Ep2dBi8d6QQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cdva0oxEiZM=:FQRtrzAr9rWx5IUwkwoKVU
 4+edO8zLchzG0t3lP2T3zLl0VcO/vDceZ7U8gqo0szcf3UGrnp8cqm3RsThr2qeuZDCnoxmJO
 veqZajiQ7CWyp2xDqmSubJR9bg6if5TOtLgEJ48h50YQHo2owT1RleKCLy76qLfmwy4xRXVkR
 XKLca5YQpwBnghGgN/jyJE2KrT/TKk+TsK/QDz2CRA77IiqjaVSB2akJo9+zH0ilrj/1TUj2D
 beLTyKsIsE1xxTZGlLlp66kd5pROyDWGCL1CJIrsmQdcqPBJv0vfcntLO68w61O8bNp6iWhCh
 ANwWYVWBfMwiIl2qwGJw3ZgjIySZ8wCqK5wU1YqOl26ial/nrVdcbrkixCFkG6atDKTbdZv5o
 lM6FuDHZ2WAl5ilc09yi8pu+sn3P1/m+UcpcsxxEpqJQxNKYQsIzCTZ3uyuC3Uz9PD7HjK32B
 0Bx+Tcgsyya3G5pIone2mmBYxaClBltnbMnWQZJtTIlVpk3MIxLlrORfTCXPpOiqfOTzqNz3J
 D9zb8xppaQvpQHwp81dh1mJh7SVz99Du3S+zZy35Syk9ovW1Te6tM60nT1aUZa9TYRgScSyJ6
 fTfaB8IpMAB8iJV/RjgmGLPR9q4/q9fWr7cd7f+JQwWvmp3H9ACLTum5FFlc6OKxiAo+S0W6V
 Qe2JeJswxsdeh+GNiwZBcsq5GwonmV950Wpccx0cOX/zGJEK3kzxhV6CFJaN+pV9Ae2jku1w2
 9INoLYGGsrvr8JLgpirpXlAifwJgXoorZG035wf4Nt+ZqQ7+8lCCAdPFhzkSnTRkqZ59sCG5x
 v/JSrNAdWm8DfWvw+w/viI7QyCBKfg1VXkZ7O+ztIiSTuzh++8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Clang only supports the patchable_function_entry attribute on
little-endian arm64 builds, but not on big-endian:

include/linux/kasan-checks.h:16:8: error: unknown attribute 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]

Disable that configuration with another dependency. Unfortunately
the existing check is not enough, as $(cc-option) at this point does
not pass the -mbig-endian flag.

Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 4b256fa6db7a..a33d6402b934 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -151,7 +151,7 @@ config ARM64
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_DYNAMIC_FTRACE
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
-		if $(cc-option,-fpatchable-function-entry=2)
+		if $(cc-option,-fpatchable-function-entry=2) && !(CC_IS_CLANG && CPU_BIG_ENDIAN)
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141257.707945-1-arnd%40arndb.de.
