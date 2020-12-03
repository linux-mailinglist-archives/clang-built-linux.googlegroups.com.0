Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBA7KUD7AKGQEJMMNLLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2FB2CCB16
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:52 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id x11sf133578plo.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956291; cv=pass;
        d=google.com; s=arc-20160816;
        b=DkEqvipqsCdSbiUO9WvU60uR25Uhwn4laayqugdJsXjrj9LN5pvzODNbhfrUR9uC03
         evXRkm+MICPz7u0UE3N4zu74vPd8BdD39NJ2xY509IU0PUGi1rqB4kda1l1DbiLf8qgU
         jJxjsPcCUCa1hW3EJS2xfL1cvySZZJ5V+rcxmlr8f0YnJfsmIDmziOyMJXxc03XORRlo
         iy2yBOS59JJMzGH3tNaVNk8uhjlt+yt+xiU4vTM7hh2NJ/zcdCt2KimbgnsEQnh+PE3w
         KNVJS7t9ZZT/eHqKHOUH33Cxi+tXLjeRQcXOWrVQcNcMpeT/nS2FF+OiJOG7M0sWoL7y
         zmvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OKOhDo2AqI8UUAt/TcC84gmGLBtNFSAuwW7BXq2CMHA=;
        b=rn9i6JEV/F2/Tt8ZC+aj+segeyQvv2KjnCpfRbhAfSHpMcqybL2szuUg9/XD1sfk29
         39GxqHy3l6iF++FFJmdxo4DosCLU/9VQmqgEEJhiS+E34WAw3zZw0YPDTgI0/LjrRGBu
         mWFevHRwWvrVe4M/KRRi6FYKcRfuLn7A0aN3GD4N6MZayGrBBAgsP97pndOpKwmyiovN
         u5S0M2AJwOQNHZQzPlBs3H5obQBKRKOgeMxWs3wsGlh8/J2IqDwNVr1S+c3zHVWBzDdS
         irj02ztVjdQu4dCyVbqgh7VVuSbnnbdbxjno5fG7wIIa/1bx88KtSD1BM0WznHeQU9It
         Kjwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Yl9WZnMa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKOhDo2AqI8UUAt/TcC84gmGLBtNFSAuwW7BXq2CMHA=;
        b=GNFLF+FWh42ubnQpH3ktDIKI+aHElddFwkx4QLLfZOymny83PBxC+M542smFepPdSD
         y7f91JJB3bsV4MAKego8yqUgZxZfZGAMd2vinoV/EmejJf92yDK4t7LApFq7PWA7k2qQ
         WE8J3a4sKQUOd77w2b0elNH5ng8u/if9BHBWRtMtLnNZsFc1vKR3EJE/FiEV6cy8R0l7
         +XOGp77uu5EKzwVT8k8UN5fj5pLWMUT4ISuQwBC7HV97QosBZ6WtO/biRT8UjhRooyUX
         6M4eSNHtU18wR8SfBxTASD2kNPA3fP+2VVR7/K8lVF4yjjTFWqKnzlVqg3C04uj3/M6o
         D6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKOhDo2AqI8UUAt/TcC84gmGLBtNFSAuwW7BXq2CMHA=;
        b=V2ezdUfvKgACsCg8XyxOFSlVnhToxxF8NiHbxGYYl+yo+k3CZ81cPplHVKXG7zC94v
         b/hSAw8L1rar12/cUuYmtn98ciGyIHFugDrEr8aK6nBwlWps4fMlI9cGpte97EMasCg4
         RubYCYKeGBFxe9Qg1BkeRaRx8Lt0ZAGB7eVriqSf90nxZ1jFDEF8ybh4n4PjRebp2uRw
         njSBo+E7Xc7e5fuxmGpzYv6ek7gOMYw6LC4Sgs60KRybOcPLnhtE3yd/JYAG809A/L3W
         9AIVBE4pYdKKWxiP456PHzCWHLixrPFxoyIx56ghJRykZBEo3PwMRajjDqkGUBnRHCP/
         x6FQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HoIqJHLwqCgDJdzXxshvBrdUZZr0DXnnE47YTvSIw4do+aCxy
	dzQlbyO2wn61SbpalIN7+Jg=
X-Google-Smtp-Source: ABdhPJzcWzzQus9rWuLmuTiiELIyvsVlgRizaeBwic9wCg0ETLMOo/URycgKLoS1GxD/KO+e+JE40w==
X-Received: by 2002:a17:902:e903:b029:da:7259:814 with SMTP id k3-20020a170902e903b02900da72590814mr629870pld.75.1606956291462;
        Wed, 02 Dec 2020 16:44:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d18:: with SMTP id c24ls1217815pgl.2.gmail; Wed, 02 Dec
 2020 16:44:50 -0800 (PST)
X-Received: by 2002:a05:6a00:c8:b029:18b:b0e:e51 with SMTP id e8-20020a056a0000c8b029018b0b0e0e51mr553544pfj.37.1606956290704;
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956290; cv=none;
        d=google.com; s=arc-20160816;
        b=gu5MvPBx0ZZkYvOL5Qn81w1CZ4CKzlmpPsS+jnIfUZpWGK6MZGagXBmmzLzVNKQcIk
         ulDBgYWZkHUYeAsOCpkWS24X7spJtNwsXWMxkLE9Sk0GJPcXQLI3htHHXpTMdlQWlgwE
         L6dPTvWk8GRsE9eY/g6g1JttpkDuRQU6GgStSnHIGcEBCOOlwpvbrpLrLR27w6ibINkD
         YQeZX7J/Smq/NdIbm2a35lKbt6A2bjK6omcJwYyuKW+u80Tf2Ij2NdvPrDOS08GnriBK
         vac1UTeE1F06k8RLpOI3EhUyYg3IYRo0t020QpvmuA93uijp6+XXNxoD6u3zDtoU2Y7t
         yv4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bLBtcahHUgRey2bocBX3LpkzES6o85CTkdKSQIoTxiU=;
        b=xmo4yLyHm0RrYVqKHql8R63bKHEpzu+UcB0u/sizfccz7iUrQait/TFZijB8jzJEWl
         /b4CI/u0ZZy3pKW3uaKjCuPdrOeop3eRlXysf8XjaYeZDHcutCR1YtwsVBvIRZHUDUJA
         cTSTiY0ns4GKKhiIcMrgeIvhZh+P1gbRyzxUY+YflxgLv0OIqAqmi6Rcglh58tj08VUZ
         YnE6wo1iLRZuQYi30VWMfOTy82NmHC5JslOv1Y67L+1thbFR6uqumwFQ61JDPikzAro3
         oJfYydpmScr8qqL+jsfI3847HbypH3zm6HBqc1+0EYSQKnMpjsvAhupEsKJcEpurZHh8
         zAOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Yl9WZnMa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d2si35623pfr.4.2020.12.02.16.44.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id 4so179416plk.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:50 -0800 (PST)
X-Received: by 2002:a17:90a:eb90:: with SMTP id o16mr546208pjy.45.1606956290467;
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s189sm235834pfb.60.2020.12.02.16.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:46 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/7] ubsan: Disable UBSAN_TRAP for all*config
Date: Wed,  2 Dec 2020 16:44:34 -0800
Message-Id: <20201203004437.389959-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203004437.389959-1-keescook@chromium.org>
References: <20201203004437.389959-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=7ee65f6e259e469145bd4516a970901be12cf3f3; i=K+dhdzJLSQHC/2OrzylSjjcBSx8EEn7IdlM58268AK0=; m=YBBOuBPVmA0P1a8coxM/uNwSE65GsSmjFIZeFPhFxcA=; p=MLch31Yqya7Wm7SW8qWS5SpAYj2nWDWoZGT+cDhNm18=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAl/INPMACgkQiXL039xtwCYBSw/8DTc om4n+iIU1idXW55ytKK87K4IZv1Fjd3LIN+1ZMVRkJEffet3ABmM7D2LijRwGurqERGdSbAQNg0ds KMf0NneVxosE8z/1ytEp5P0apQexcdIaXPU/1YlGOCzJ5+FXBJ1BwNFozG2VpPQwOxba9WssYbbtm vyL3W0X2VHGgdQXWv3Ogwx11d6X98S0S0geq4rSgOSzKRHqDr6U/bNQGWQHtr4r6hGOU9p5G4uRV1 gQ7R+2cDrDx0HQb8Avg/vES/td9L/wTh5TjzYr6UZTV/6EJXdEq8f+em9QMbS9DwmtMVt461bXuKv qkUnHX3BnSKqWTlAzymTy+cARSzEFry86Rz8ZxPzjtXo/ubTyD/R3IbT3zCsQNn5J1ZsAj33agvLH mTGNArntPT8jfvhsBe+IFKUUNMgFvli6FZhYcyFAGtq6pV5ILsuWsn7NEEAnjht/3hSH8V83eUqhP z8EikJENhLcSALmAQCW0DEZGsPH2P1Dh8LOgBIxj6xEmeO6kepSI/hs0dCg6KinAlk9BRe53uBCIR OxM/ERuEH3QizmQINLxQe1AuomVsx+e+ZiDjYsyOhRq1ukBclw7QSMR1CyshAr5cswbCztLiwwifR f+LEwKTBqV4vCM8x8FVGlv+bLJ4NqrFhHZ3/cV5rIyu3GZlTWs85IABUKSrnGXRg=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Yl9WZnMa;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

Doing all*config builds attempts to build as much as possible. UBSAN_TRAP
effectively short-circuits lib/usban.c, so it should be disabled for
COMPILE_TEST so that the lib/ubsan.c code gets built.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 4190a99b1eaa..6e8b67d4b0d9 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -14,6 +14,7 @@ if UBSAN
 
 config UBSAN_TRAP
 	bool "On Sanitizer warnings, abort the running kernel code"
+	depends on !COMPILE_TEST
 	depends on $(cc-option, -fsanitize-undefined-trap-on-error)
 	help
 	  Building kernels with Sanitizer features enabled tends to grow
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-5-keescook%40chromium.org.
