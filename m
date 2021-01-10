Return-Path: <clang-built-linux+bncBAABBXWW5P7QKGQEJ45GJNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C372F06C5
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:56:14 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id g14sf7082332edt.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:56:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279774; cv=pass;
        d=google.com; s=arc-20160816;
        b=kabfO2mV9EswIVGWjLkD9raGngFva54OFG3gJwcOrI0ADetP4W9BudKrsFQSIVNiDl
         DjER7a6nEITW5ZCoVl4KV5pLz6J3wzkFQ70cdz+FDbAwTfd3mdKUO75yd/8NcNr9435k
         KZQHt/qVpmMUa5bqmzsMNDZ0jMnkMEkMO3MfMyyLmmccxpPP8/jJ9WsqUlplgNMO+FnQ
         RwWi4/URPvI3TquIy1shzQoWDZ0ADPPaxmb/SCUXCVbzP++AGeD4tr9buT2HQhg1JulD
         Pwr+wLc4ceNkwH4J79Gz9Wk25sf996pRn2zuqdrH9dlgnlCoLHmoiYYgdnDXSpqt+KQ5
         eBsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=/4aLIWpvMEQkfRrx8WUmDmbegJQxdCfon+YzK/ozdmM=;
        b=FuPS0ZFGuc4WBOP//CmiKU2YLG2NDHpgO6XTbw3H7TFXgjHaO25I2Q3lGiSpDWXScW
         +xRgFZTM6lySJ3a239quJg6zZEgA0iXDHERt+R49Wmx7P6AUQJJkW6knNFJWJZwMDv/y
         BfAg1uUcrGy8GfEwWhb5n+vskHwEXZ2IKN/Vq1jCvUHIfzjdW8qa7Qv9lc83m2GO9h7i
         s5afsGJg8HxAngxDrUtqFOSem8RI4y0R54V4gJWKDq67NAt69+vsn8wfl9hEswCpFxA+
         lRkOO1YWkj9PdWto2H//OJxn8NA9efk9stIfINVyJ+bFww1QZQhDOtdZabnLIkGEpq+6
         +Hdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=JZj3U2Ja;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/4aLIWpvMEQkfRrx8WUmDmbegJQxdCfon+YzK/ozdmM=;
        b=b8QPlHefBtA3pOUprSVee7CIxinx0VBpjRn41spy1vtYGMIC0prLpoa3O65WGCDSVD
         ibWhjsb5FP7eGUiCRmvy63v10iMv2/O/MzQvifNjUrmENROZ6Ja4Jqhe86pIeWZX/Ij3
         KWWkRgf/rE9b+ToK+sl1GuJlf2qf84YFgH5alFDQqapYI2e2U+xmbOTtbaFeQ11cQXdj
         UeM88RyqJwvIUQMyT1j1VU2qBxAsYzzPKPYL+OsYjYoWA9Ch1jGs/4cVSc2f6hrNp8/A
         IKDiAf6bfl/jd1YFDsuv7k4wQzW+TM3KF/LR3czpgbLNo7V5uc4B2x21r6O0qP6xaGE1
         apmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/4aLIWpvMEQkfRrx8WUmDmbegJQxdCfon+YzK/ozdmM=;
        b=D57qwSgBygv2FoEsY5k/v9rLLgRv2k6bCnruWItLDCcI8psQu11aGi9++APSSCUTPY
         ZMHt7Ytz4/AnyfdlhGfyq0QseH382BNEQPQv1YY1N+lwxJqIVpV9on2gj1o5W/3Pv5hY
         JpTyk1WgqPqmFuRHIh7QZ5fkQXIYTql+QBQm8ifSGA9h6txdLX24ZG7JV+2tDuksHuxt
         UB2hqe3FfUrFZCo0iutF61Sv0PA4D2l3e9+z6i2AzVResdYWEx58dMOSSiDjW3f8+lQo
         xmpqlN9NZhzSYYaVLI0L4n+uPewf8lI+V63eG5LbAOmStjmZ6tICECgF0sY6P/WKf9D+
         TNIA==
X-Gm-Message-State: AOAM532CBDmPpktp8h57nSi+60Zl3Dwb7TKuWzag57Bn1jmIJtJoMUK7
	3YMZAEcR/svogCcENlf5MKo=
X-Google-Smtp-Source: ABdhPJwJMlDoYspgfTWcwd2t6+p5LiCP7ru7G66nBufbzAHLo5BgzQO54Ksh/OXV6ZoHZvddIOGDdg==
X-Received: by 2002:aa7:c58a:: with SMTP id g10mr10889867edq.315.1610279774755;
        Sun, 10 Jan 2021 03:56:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:cb9a:: with SMTP id mf26ls6185436ejb.8.gmail; Sun,
 10 Jan 2021 03:56:14 -0800 (PST)
X-Received: by 2002:a17:906:a43:: with SMTP id x3mr5488283ejf.277.1610279774082;
        Sun, 10 Jan 2021 03:56:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279774; cv=none;
        d=google.com; s=arc-20160816;
        b=gSOWDYTBLdJkFT9ukTqWoygBU4FLGSoMHaz5PEqunqgMYEgkp3g6bH2yA1LgFZ/oV3
         oGHd0nu3OzalX0nyQ66g8NdN6olFW1mqbmHyRbdFXBa6gcA9LiHE/Y5NDge4U83DFl/m
         n2TXwoQbQKj8Nz4lmvycBHwrt1j8zi6O1C5CPgpC87r8967xwk35UgHgUFQmx8y/ps1Q
         VJ1pWcli9U5n1wxNc/GbcnbJ798uaFS8LZaVN/20aoYP9D453kGwKQFgySccVQr02kwO
         KbBWXC6P879n0ZJwXav5La1IRsws9J2NOmhq4qBIx7m3IFqO9SZjV+yGbiUtsBD155H6
         khGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=MxtmeMzoZosf2A+5OO/KqkqqfNrpxRLfY3mE8BM76lQ=;
        b=idMMO1MZ+7Vuv+fbeIptuARSqF83J7Bkz9fXXp3jRRSjI9c7VwlndLyk03sL8KItdw
         lM81G4MYVY6JnxhGNj4Uzj7l8Ky9WqWW5w8/v6sxjsyqGpcS/wF5RCzs58JE5hMkxkQV
         vn8mh1HFYT4ZqOhjJ3Y0SSBsosqVZFvvIIGyQcGeRzQX07UjEfHxuq4JsU5C8SXBIlxx
         mFf9JQpwIG/2iO4vVoEsOLGG2u33+4hqGvHH+b2wOg0Xkj9PSm+mpSLXsaXqmtH1nCO9
         mArzu9RntYg0WTQ1xXwlPnJeLyWmbssGHVlIhrAHQKLHEzLnBq6mBpzIlf4ZSwl5lrlw
         4oHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=JZj3U2Ja;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id d9si851163edr.1.2021.01.10.03.56.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:56:14 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Sun, 10 Jan 2021 11:56:08 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 1/9] MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
Message-ID: <20210110115546.30970-1-alobakin@pm.me>
In-Reply-To: <20210110115245.30762-1-alobakin@pm.me>
References: <20210110115245.30762-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=JZj3U2Ja;       spf=pass
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

MIPS uses its own declaration of rwdata, and thus it should be kept
in sync with the asm-generic one. Currently PAGE_ALIGNED_DATA() is
missing from the linker script, which emits the following ld
warnings:

mips-alpine-linux-musl-ld: warning: orphan section
`.data..page_aligned' from `arch/mips/kernel/vdso.o' being placed
in section `.data..page_aligned'
mips-alpine-linux-musl-ld: warning: orphan section
`.data..page_aligned' from `arch/mips/vdso/vdso-image.o' being placed
in section `.data..page_aligned'

Add the necessary declaration, so the mentioned structures will be
placed in vmlinux as intended:

ffffffff80630580 D __end_once
ffffffff80630580 D __start___dyndbg
ffffffff80630580 D __start_once
ffffffff80630580 D __stop___dyndbg
ffffffff80634000 d mips_vdso_data
ffffffff80638000 d vdso_data
ffffffff80638580 D _gp
ffffffff8063c000 T __init_begin
ffffffff8063c000 D _edata
ffffffff8063c000 T _sinittext

->

ffffffff805a4000 D __end_init_task
ffffffff805a4000 D __nosave_begin
ffffffff805a4000 D __nosave_end
ffffffff805a4000 d mips_vdso_data
ffffffff805a8000 d vdso_data
ffffffff805ac000 D mmlist_lock
ffffffff805ac080 D tasklist_lock

Fixes: ebb5e78cc634 ("MIPS: Initial implementation of a VDSO")
Cc: stable@vger.kernel.org # 4.4+
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 5e97e9d02f98..83e27a181206 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -90,6 +90,7 @@ SECTIONS
 
 		INIT_TASK_DATA(THREAD_SIZE)
 		NOSAVE_DATA
+		PAGE_ALIGNED_DATA(PAGE_SIZE)
 		CACHELINE_ALIGNED_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
 		READ_MOSTLY_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
 		DATA_DATA
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-1-alobakin%40pm.me.
