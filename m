Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCUK3KCQMGQESMP6PYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5E9397A69
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:05:48 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 62-20020a1709020544b02900f0a8e26363sf5026895plf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:05:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622574347; cv=pass;
        d=google.com; s=arc-20160816;
        b=KvizlyWaGFnNl1249Fp+rfAuLORfX4UDMev1yuh4uE2fQ65ZR61rHlfBd3k0VXr+Rd
         wCOAbq9PN2lH53zGvZOGRtwoUIZ8ww/cX4PGoMHOLe6GXoGvwVrqed4MOLeGtixIrcfn
         4CM/cN8GC9Hd1EaqppjFM50pYwSQQo9zTvBiuXnhSLMMadQzNUv/h8Y1MIfSmEswaUiK
         1gjqJCYYW9VbgxeYEJvalLYgOJJjujsW2MHJ/C1gfMMcw8yOboGEhyKcrQyg1uoS9XLS
         US9+30Xp422BsE3iTkt88wz5mGNr5q96p52pU0ySPHwp4XwxSGpxgQ1wd5AJeIDhdvZj
         u2ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0F6b0sKdTddoGEFF/R8cULJQniWq4SAIATGlItCUY7I=;
        b=uTudnYM2KZYkYOKUkIuHfxbONytNfEhv/0yJTOWKFzgvz3vKG7yO0Us6ZQvPf845vx
         ihJQHJTZNpatHkQzkSwHUw/IC0trBLMNoijes4WM13Jjtiy6e7sY2+aQ25xXYtRKhUZc
         BB1tco1cv0BTeC2rBaYBNNdGlXM0RL2LNV8kcPcB6ClIovH1fpBPXKihpBgUWnGNncOD
         T4sF0AiweaDlcVpbOiRJ9xDR6Fl4a266STyZxXDDssYNeD1/zyF9c4Olti2Y4yHqdKQZ
         Eui5mVH5EoBs8dBdIpvKPzBjA4tnsjRt7Uf5L8cYdXxog2wfLFzJgO+YaOkWmGOnV/0e
         7FGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kJQhTJTB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0F6b0sKdTddoGEFF/R8cULJQniWq4SAIATGlItCUY7I=;
        b=MRo2bcppfU/R2G3M4cXxc2LNDQCkFTf4ZwUr5aCNOef1cd+rBTW82ImkwffZmezzBl
         r+VVvcheK/X4JVNOvU9BOWFBSLDwzXpalkDGjkqkTynK18LxflW3SskQvcukSVU0lqkJ
         O6rWGRDqz94R9MeNott6ekBosasYn36FRGqpYTdc80qLUQgI0sj1IpGhYXpgN/UVsvh5
         Q/aue7oMG26qtiJR5ksKS84vg2Uy13zBxZFZ2T7bOPxcubtvtfZ5hTp3256rmaoiQvaA
         SnIXv3RyWexQa+Hi6yDRv2VjtIdbHKltQf5gk1n5KqHFCGcEZks/2qnyexT9TbweYhYJ
         YXyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0F6b0sKdTddoGEFF/R8cULJQniWq4SAIATGlItCUY7I=;
        b=N2RZ5N5yiwz99Vdk8UeTXe6tBrZbausHL+cM1Uh29yMLhHTwxvuvLPFt12PDlItPQe
         398j1U8T2BDIV6JQ71wPN2cWTm4w30hUhKaUiuTO78WPrmfhymLfTt6TkRq3IYrWeptm
         u6O14OZZzLuexpQgtacZCnEUmWeb+0Oue6+9CYob6Xjb1es6ILQ55w3xCdJ7nPuOQHzJ
         W0braRhb95prIBAZZ+RW0Wdh30VFTROnGuCFr0DYmS5KgY1hiaYd+xzemnGkUiny/IJI
         a3tsl+lo7nu/GgXrYkBZ2rJ9NR/wQVnIWN+P2F5yVuCocDGWSNK9/mlnOvPRb+aOtL8H
         1tWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336ytJEwYQnKFxy0+Z8XKa3smFe5wujTLPsPgnnmhx3/CXoRtmI
	kvLuTExXav8BXsDZxlVPgMU=
X-Google-Smtp-Source: ABdhPJwYAoOMWowG2QBwiAebwIn4sWHvIL+Wv0+MrojerInduNLRPOEMjKyMtomX4UPcZTdma1vHzg==
X-Received: by 2002:a17:90a:e550:: with SMTP id ei16mr1363314pjb.127.1622574346935;
        Tue, 01 Jun 2021 12:05:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a44:: with SMTP id lb4ls2032282pjb.1.canary-gmail;
 Tue, 01 Jun 2021 12:05:46 -0700 (PDT)
X-Received: by 2002:a17:90a:ad82:: with SMTP id s2mr7740670pjq.69.1622574346403;
        Tue, 01 Jun 2021 12:05:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622574346; cv=none;
        d=google.com; s=arc-20160816;
        b=c6Q8MK81VabKpSmYm5OuQTNvl39o7JVyjNw0YlNNSuLHPLq7TqWnoVqtk4QzFwlWEu
         LH7lUeDuzN47nPEDhXhaIwttW5moN/0dZXwvMpntf1/RA4g6u6AJSx7tj0Xb5HyHxAOl
         CjujAnoQvWlwdYUa0fyMZF4yA+hfWTwQIAOwPtBP82xPjJRQozNpxDk1mDYi7caRAuKK
         05DFw7OqK2f19ku7Fn2B7SJb7HDVtkqd4v39A6l8FawlvjHmKxOY5LClHJr4OROXPLv2
         DsVSiLDasqEzKAOZ7FR3W3IWCqL2sviS/eiyp8k3dsY7vt/tiW1y/gMiMzzQaOOMNnU/
         b0dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vhFeeCG6jJPdjIf7Su+v/ZA3C7ivdOdJ2XJwAQEYzFg=;
        b=xBAkXoJlnoKXA9JE6UPynCVBYbNPZK+LXu1F7Help/jrf+b7GdViQNnusvXuwVvySI
         DPks/QkrcTrhB4q98Cx/i0uA8IZk8DKEMWLpDkBaxybCnr//foY3wStz4oBuzzLb49Vo
         GgZP+P0rH88sEgmzvYc6sAUXQwHkLteUoQU1LGqwlgxGxpFcKsBUk5xifK/JzyAJdm1g
         /U7Pr+KgUXfqfzrvIIgLhhMj0TE6VBeQziKH8vsDiJLTh2BW8Q0bUPv5t2Hq+KxvN6wq
         yi642MhPyBs4ZuBvveHbJzxHaPjb1dF/q6W/lWN7NGeHXb5eJClJ/Q7W2+7TjRdtW8ln
         oPIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kJQhTJTB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id bk15si505982pjb.3.2021.06.01.12.05.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:05:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id u18so218520pfk.11
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:05:46 -0700 (PDT)
X-Received: by 2002:a63:1c52:: with SMTP id c18mr29829680pgm.258.1622574345824;
        Tue, 01 Jun 2021 12:05:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a9sm13477233pfo.69.2021.06.01.12.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 12:05:45 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Expand and relocate PGO entry
Date: Tue,  1 Jun 2021 12:05:41 -0700
Message-Id: <20210601190541.1446239-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=a2e53c0b44ad39c78ed7bc7aad40d133548a13b5; i=epkwXI7v45FSzXf5mkFhBtxZv1zlpgta2n0TdjAB7VU=; m=UHdiPvCSSYNXcblaQ0hYR032Ex0utU1lScs3qjbpcLw=; p=XvTTT72GYcElJDrPTjwa+OWmIpDEZqpWG1Hb0q9FcjY=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmC2hQQACgkQiXL039xtwCYmkw/9F0r ocHrbJeRlydh2BeRQVrQTEhXL3uZf+pm4mIOSSCJmo/dmgX/DrOYYJN51ThmEtyU3yzUPMUS+UNJS KftzjubmATbposIb4DlQAYfo7XdTYYnteTk7D+xLZqL5/iAvcOxfc/fr580EbIva/MtgLe5ikKFam +gSLkWDagbBr68t49oyB/Oc5toGnSKWyjcw6VRGR8DZhSUOhRiX/4aPFsvh5bZEt1J9rFLl8sytai df9L4T5WZj5+W1QwZIwewZxDo3nwWkXSCB5s2BFARG1Setze7CY6gwzodixb/k2nqxBKyA7DEZks6 FVIM18YPqJuddTK4aj/6gPcEtOfFJfMEpd7yehB3GSRbckC01HuYekcg0kYcAk5PU92KlWwQWu6a2 QO87qL/9TBWgs9HRtcjNvMvhIP209kGCUz1LsWN74T6s0yeNjEEQLe6k2Q0+BrTDXD2NUkZWnL/hc 97Oy2813DVc3J7H3+LS6/CaFE27T+0bHaJ/HnhFDz5SUzhHYgKkh+tVmchgoG1IJmDNxg/uQHB538 IMlkiIzyF6RdpKiiQNy/1Gl0ZiXw4UoGce1UeHsz3kkOH0NcVhtfh/jvxAV8w9MazUrETYdJfcSn1 7kSTQZsIZtUkiBfPTtW79PNgrKoMVsfg16+8/rR0noo/zcYEMfMBasLuan8xMnhM=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kJQhTJTB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

This expands the "PGO" acronym and adds additional metadata to help have
patches get directed correctly.

Suggested-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Bill Wendling <wcw@google.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
as seen in: https://lore.kernel.org/lkml/YLVRTilQ5k5n+Vmz@archlinux-ax161/
---
 MAINTAINERS | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index fd7d34fcd95c..2030cd9593cf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4448,6 +4448,19 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/cla
 F:	include/linux/cfi.h
 F:	kernel/cfi.c
 
+CLANG PROFILE GUIDED OPTIMIZATION SUPPORT
+M:	Sami Tolvanen <samitolvanen@google.com>
+M:	Bill Wendling <wcw@google.com>
+M:	Kees Cook <keescook@chromium.org>
+R:	Nathan Chancellor <nathan@kernel.org>
+R:	Nick Desaulniers <ndesaulniers@google.com>
+L:	clang-built-linux@googlegroups.com
+S:	Supported
+B:	https://github.com/ClangBuiltLinux/linux/issues
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features
+F:	Documentation/dev-tools/pgo.rst
+F:	kernel/pgo/
+
 CLEANCACHE API
 M:	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
 L:	linux-kernel@vger.kernel.org
@@ -14387,15 +14400,6 @@ S:	Maintained
 F:	include/linux/personality.h
 F:	include/uapi/linux/personality.h
 
-PGO BASED KERNEL PROFILING
-M:	Sami Tolvanen <samitolvanen@google.com>
-M:	Bill Wendling <wcw@google.com>
-R:	Nathan Chancellor <nathan@kernel.org>
-R:	Nick Desaulniers <ndesaulniers@google.com>
-S:	Supported
-F:	Documentation/dev-tools/pgo.rst
-F:	kernel/pgo/
-
 PHOENIX RC FLIGHT CONTROLLER ADAPTER
 M:	Marcus Folkesson <marcus.folkesson@gmail.com>
 L:	linux-input@vger.kernel.org
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210601190541.1446239-1-keescook%40chromium.org.
