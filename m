Return-Path: <clang-built-linux+bncBAABB7PM3P7QKGQEA5X4UJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D86BF2ECF27
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:54:37 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id i23sf6201714lfl.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:54:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020477; cv=pass;
        d=google.com; s=arc-20160816;
        b=uBkHSBisvzLLnvwblUl2uF4zauIC7XPlOeLjwuue3mJirm+yUvbn0bmCAOPPCiJeGL
         ZBdw69ycgk+JQ1YnbRgZXLWLXzvWI/08lgvXpZibkPPvOKeu576/3FKbWZbkwIQpc5tk
         uPzHCOsLRKOkAVKL7mbmGGojFFiyYL8wIwZZsemVmb/IsA3JNjYMCPSs4mTXtDnj/QK7
         5adjpg5cm3CGj3ge4Zf5HBiD0hl9ifsHFvFmEB6eNdXqFNBVzzYhO//6yA0ZVbN7Cqvl
         5p66C5AC87SZ0/yz8VJE/Auz/Nms8s+Z5Fq/xXyVp6Y5v/sKcqqtCXvlKHUX/sIaG7Fa
         aL2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=FgGn8ySg1gOU930PLx/MondO/2xDjc5via8lXk9FSUM=;
        b=zV5pG5br+XaoxjHqh881aXKhgsfskJPw+/2fNzHptsVZH4S8xL685UwtOzMBtZ5tM9
         JF+i9S3a2xUuzvYGvCFeQkKPIUoCXv3sczniojOjY2ieXoXSodMQyAA0f1gSsJu9AXSG
         EO4qcf5h6/Gz+sNCWgK2JYBjRYltS02/wOOdcIUJ+ZkZuzn72kAZ5mfYVep/iehVeiZf
         I61gtOC8LS4Is/k3NT80ECfzfcbUKlj2ec2Yy/4r70p5ID8ojXnXlOvPXSq3gU8Pm/fB
         PHQlAZJWu72a+PgzwFszyfWFAdYP8GvlVdmvDQFSR+qkgkf3mRL0apOxUz4KFnw9kg3E
         XycA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=QSf4PK1l;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FgGn8ySg1gOU930PLx/MondO/2xDjc5via8lXk9FSUM=;
        b=GAfHBwIfoEqRmmgYo6R4oFJaNPZJt84x7gBXVRTvPcRAtl2q+8pQqcjDnuwFPOqAZg
         uM6r5Ju16skgAdrJrX921dBMOF3gUiXqsDV28CNO04rMzmOsAegL6JCllsSbozLTqkTp
         Nji5n4GO8owBjM/9ehek0dG+eLuFPke1bkOD3xeuMZ0xcVwXgaYOWS9jLUSxEGvOFXKg
         2qzwC/GYtmoBaFj6qZiiYNpoV/lTauUWEIvmB12JN/63COJbRedwmWqL41yEN79WROqq
         Zq9VUuRRwCdk/GakMrzncxLw3ufFouP55MCMikpJpaK3cpyuRN+w8XVkajWKcZbgkg7V
         Df6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FgGn8ySg1gOU930PLx/MondO/2xDjc5via8lXk9FSUM=;
        b=qtb0vcAkBXYn3ArjL/pZsi5rtl0vx7lwFaLxGlIb9nTCtLlJ2/+O4zxEbhCsHpqgqm
         /8XqyJD7/28w4dpk96G5Wz7W/c6uNBZb0Fo5/J22Y67zZ6oGX9zzXMKqdUafennXJEwE
         /fVCdb3KSvClrw94bQ4HP2VvYsX1apcy1hTG/d8M3h6fgPyRDoJpw+5P8SxFNFDG5PlN
         7F+Fa0qbRDf8Ix0VhcYTEjApFsqhslG6H74iviXR2KHmxBYcKf3V7Zu267CfpnA7KsBZ
         FwCvjA/jDae4TNYMR3+m9NMHW7GfwtMzIolfz4X6RBjO4URv6pTOSWSGfJEt6z5t9u7N
         NLqg==
X-Gm-Message-State: AOAM530Trrf1FSyRX378fwJ+6W/DNyk15icaxwY4r7FbSBJ9KfISmbvs
	Ig5aD9Ksh0yerAy7usrutvg=
X-Google-Smtp-Source: ABdhPJzIwD7S9J2JJXIEgsf0/lPulfnPMlG05RLoFFdUtkAu+mD6A33nbYXMAKASgWveLYq1ZuaONg==
X-Received: by 2002:a19:e013:: with SMTP id x19mr4159986lfg.449.1610020477424;
        Thu, 07 Jan 2021 03:54:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls253254lff.0.gmail; Thu, 07 Jan
 2021 03:54:36 -0800 (PST)
X-Received: by 2002:a19:ca0e:: with SMTP id a14mr4128188lfg.544.1610020476684;
        Thu, 07 Jan 2021 03:54:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020476; cv=none;
        d=google.com; s=arc-20160816;
        b=jriU77nvDQ0taDy1U6kQF7/TPLpKeeGHXtiBHuYg9xh3VEhi7cvWnPLEyppkJrRjhh
         pThWXXQXl6e5YPfnD4X1d2r4JXcoKAQWn2JqhFrUyBt92qWCCuv8SEUOapZ2efbmqYxq
         6AcSBYviAHPl9ag9V9pHfsFMBBAbeeNxsX8fnspL8PH8nY/UuzmPF8wLOXnkphIm4svI
         IA2O4N8N6+I/F5RgtC5Fk5r/GA9+FVRgknZZnJpbB1vYbT6ebq0tOTWTqvtPhrPk2ih5
         nuwqhfKkiNFLUNfqxa+M9efW9HbMP7IymF+yb3KaHzXI6iGxKdFQ4I8bouMrmmZ4lXy6
         +V1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=1c0zIRSp5j+9jPf96D96lWaXSqjKgRxuaqZWXnp1GJA=;
        b=KwZ8p6t781tKknSBkrk1qD1yLyv3wxmDadLwi2ENKJwD9zV65qF9BXVq5yb7W/r5sG
         EnWKjm+fXwAkbcGGEaOyzQgpUGg17BewoUQqWAmkyNntli8jAcqgajNvx+dFqEognPvZ
         11881MxFya+wyQgOPOyJcIiVH+qhkCZqhCx2NrFSYBVbA9ZI7hHmynse0NYdQCoz37SJ
         lRk8LPSNeewAVLTlhBOC4eBqTI1G8vW/ei2zqAXv3vYGMzfFpMxcuVNilf74zCXT+Fiq
         QeKdxss6mEWE8t3n1DA3fCHSyAGzrmrneQ0DwTRQEhvmHckE5Og6IYPPVnVX+R/ROv5k
         v44w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=QSf4PK1l;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch. [185.70.40.133])
        by gmr-mx.google.com with ESMTPS id r12si168858ljm.1.2021.01.07.03.54.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:54:36 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Date: Thu, 07 Jan 2021 11:54:25 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 7/7] MIPS: select ARCH_WANT_LD_ORPHAN_WARN
Message-ID: <20210107115329.281266-7-alobakin@pm.me>
In-Reply-To: <20210107115329.281266-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me> <20210107115329.281266-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=QSf4PK1l;       spf=pass
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

Now, after that all the sections are explicitly described and
declared in vmlinux.lds.S, we can enable ld orphan warnings to
prevent from missing any new sections in future.

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d68df1febd25..d3e64cc0932b 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -18,6 +18,7 @@ config MIPS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_IPC_PARSE_VERSION
+	select ARCH_WANT_LD_ORPHAN_WARN
 	select BUILDTIME_TABLE_SORT
 	select CLONE_BACKWARDS
 	select CPU_NO_EFFICIENT_FFS if (TARGET_ISA_REV < 1)
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115329.281266-7-alobakin%40pm.me.
