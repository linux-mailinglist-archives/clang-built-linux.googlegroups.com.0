Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAPKUD7AKGQEF7TCPVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0562CCB13
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:50 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id s11sf140757iod.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956289; cv=pass;
        d=google.com; s=arc-20160816;
        b=FjO+UhKohGRUbu7MTpRZ1webcIbM/vkd7iwEV1gWG9oU7gI75dgOs/PQ8pKq4n3tmP
         vY5kygAKZ8ImkQMLxW8MOGZLz9vTmRelT+lswerym24CFc4fkMIMjUgwX+6J+BTKgaNj
         o+Nuki9fPfYXg52wjlKM/wvPiJ9L0YDxBs8mgXglZNxweyydXpcq/QF8iUWYmNi0um5O
         YfeUrM95/kK4ubKVXJvdLDe0FsgqNHCc85qGGYDFlgUUWBi83GRsIrvJ1aff3cA+sXG4
         5SbNPbnf5JSTzZR4VvI9OWBFaR5MUYaPuRy1VlFHDMJqpAnW5vBjaziBzQI0jh1VB5Es
         fhVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IQhC2ztMmZt87Q9SayfLtn2SPLl9INlmHMSGlgi6F3o=;
        b=ignwXvBao/RjQ1oPaO0PwMdypDhA/5LrB6guhuowHWZdAUxxLBL+1QeeK5yAyqe1S1
         cXXwbEZUJ1CIcBRixiBQmrMS8miHcdKmRdpbycpsdRHStXD1cZSuJG4/+ZFS+NKJufJ1
         YUDw/YwwaO+GSCvdiRp4fyI9Lkew56sTkfRUCCcXqrkXr1+3oAJmHjbjMAaV/VpjIlmw
         i17hX9dFB6JtYgIDSuT5ztkjmSzdx4mk7JJdu9LSZ0qpPzB337+nPCI6dzqYThb14d77
         BqS23Jzy841Vxs1Pu3UNh8coj4lbcAqWWVc9MLv66z58wcxMCJbhzR1XvVzKmOzdsxTg
         /Zaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Cu3txwmM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IQhC2ztMmZt87Q9SayfLtn2SPLl9INlmHMSGlgi6F3o=;
        b=pwEJ6l1QDvSStEVy+DVoi25MnJW1wQoc4k2FLUOrHMTQWkGGp0+iverYejr+LLOrCA
         oph941PO4LeikD3KACw/+hO2TssPAhZHgx/kBP0csaan3AIxqgAyRVSbzUuW820yQ4O2
         YLxWIB6ZGr63bnUBVo16ugCqYZpcFqw8wzLy7Z50NIsHhLEeP6H+qJWMG0GtncZmsq1q
         75epLLeqGIjBymz+BIAXVJUSCWRUQep9afqrX8sa8aAR14y5LZ4ab4vgNf8hS7Pf037C
         zXZtyFJuvrYusxsIGafP9gKiSBIWpZfN78CxaMSzr+P6IyPkx3sp2GM16PcCFee/y8J6
         pfew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IQhC2ztMmZt87Q9SayfLtn2SPLl9INlmHMSGlgi6F3o=;
        b=dNeN2OuWmW6Kq5Qt0uPoNZ1X6MY/Gw+Y3rsOXBvaNzk2Df1A2rrB3upAFHb9YlvbDR
         c8kAwSUg1Xps1fLespBcyEia4AC8EWN+NPih6kqgGk/bqdXOFNiHDxNgYGyqJsTCy5in
         PaYGEvlDK90coxRmFogsbQpiFt5xkV7a7kFauRzlvceqIKlDb7KFXJGqHQ6RN9juGHRE
         ZZ/tgtbTG0kVECqnV5HRhwYux+6l2jgKfB1+U4/kSj+N2rhLEUckLmvsufAmC/Y+lp3s
         QVfyWiaKcdFzrX0PFv9lXfwjPcy+bGmPxBmHloRQ1ssMeneVhN5trf7w/K3arKOjwV1T
         wIIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321Ghsx3Bera3re4nPHeHowkcUtw1w1fNKtPDH/1m15VIOipwJZ
	t86baI/QCKrTDdFQ4IrghKc=
X-Google-Smtp-Source: ABdhPJwud9I+UqZuDHNrJO0nmgm98WEvVi9CH9xWAFMO6KBDgG5/LfqxMljSJQhZ4bchY4WUqQ2H5A==
X-Received: by 2002:a92:509:: with SMTP id q9mr822744ile.179.1606956289182;
        Wed, 02 Dec 2020 16:44:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:860d:: with SMTP id f13ls601491iol.9.gmail; Wed, 02 Dec
 2020 16:44:48 -0800 (PST)
X-Received: by 2002:a05:6602:2ac4:: with SMTP id m4mr1097377iov.97.1606956288742;
        Wed, 02 Dec 2020 16:44:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956288; cv=none;
        d=google.com; s=arc-20160816;
        b=dLnWxq8S8UHDXEEr/N99hKKTAchc5Eslqu1gwXjRjssi21J+Ce86A9bKOCJQkviu9E
         Ubr7u3nPcHvfr1wET7MAsTUpVqh0xGnH3upAuDiAt3b/8B5g5QVcg6tMMdwly33Ext0k
         3BKOKpAiyNfImYk6xMozjPg0XIVzAYAuhLvhLr1x3fi3JEL5l55LQvMYI9PH3TPff7cy
         pS1K/5icF5xhpIsWEQNup2uLJhOFUp2djs8OA9AXmqXUDUoanX6ckFoKHzUTvhWcUA1d
         qDIXmgzezMwfpw83GTeX1g1Kx8JBjBHN7nk6FDiGQlGEbQ20nDGSP3Z+zqiwUuUdAQ1z
         Zo2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mRr7mYLqkJh9ZS5e88iIisISPz90UDtap+MXccYRY0c=;
        b=X1BQUGluZPSzyVW+poI6Ufr+HghFsfCNpOV7lbOR5wVnfjnkuzIpJboni5+oMh83Ei
         B16HSQtSZW9bV6d3Kr0XkZRAEdYbW5Ty8FUJEJ3GyEdtvBA7J0jc7StutH4gRIWEEUFj
         dkvghhmuUDLuUtSGR+pzEANOefq+HLXbiEwJjoWpectb+tzdgRJkmTe+avd96t8c/5rB
         kTJ6vtPVv/KR7pwWQ6iE1Lu4+ViMHCX+8mGAAkRSrUaPAV9PPM7U0nVaYuPe8xCnpY7Y
         bggxq+Nd5DD16qzEAqbQ1XhSVTZcYt0ykMmdunGAdeFF5t5gGmzMoJnl9xVAE0kLkhJv
         iLCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Cu3txwmM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id q4si27158iog.3.2020.12.02.16.44.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id t7so139335pfh.7
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:48 -0800 (PST)
X-Received: by 2002:a62:8c08:0:b029:197:491c:bab1 with SMTP id m8-20020a628c080000b0290197491cbab1mr792967pfd.49.1606956288226;
        Wed, 02 Dec 2020 16:44:48 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k1sm184483pgm.21.2020.12.02.16.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:46 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
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
Subject: [PATCH v2 1/7] ubsan: Remove redundant -Wno-maybe-uninitialized
Date: Wed,  2 Dec 2020 16:44:31 -0800
Message-Id: <20201203004437.389959-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203004437.389959-1-keescook@chromium.org>
References: <20201203004437.389959-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=2428e02de8b30f15f15bc076dd88e170ee9eea11; i=tpvA3+fDxfvnjYyYEKdmdqLWx/khXLfRHgeeHKGh3Vo=; m=OMBuArH9nHFHNkTHOfr/Yb/WsrRHnLzoto2YCF8BEV8=; p=EMeFqCFTi1hC44l8oQ2Bi9blFo1D8E+67Yi9oa+iGTQ=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAl/INPMACgkQiXL039xtwCZx2g//QBg FTuWhD0o/zTNyMw/Qi9B+fGJLdV7PU0UJcWeheVINnp5Glwm6ycnOs71nNBqYzAwL8xWBJ79QEaRi DgQGlEItQQbq6NkkdnMk7eYUJJPeiDDcRBHYPZIsKS37llGUmhLCoMHDAPeLpWVOgRd7vH3yGFMw8 eTQTMszn6DXNhGx9s8mNGvK/nR8L5Vqncnw3s2zAENb9TpMUnasUbK9IKarPEmob4opb2UYI0clVr AnnuK/HO0Cnn1+zXSJbiwuiCGy3xBacnxhSUm78iNCjkIOau7X7H6qvUAj/cu6OxsYbY4OzCFYmLS sdBtaCRhwwBAXIFHuif85o0WX1rLRv8XsFPDXjbP1JA7K/RPnHPgSgVu69DXr6e0RXM2VhATpzECI 0v5NuhVqhYovZOGEb+QH2I+UJNFBND/8j3Rygr5YivuRVNfoKGFnkRFg9Zxe7xteFDHNLXMcYa48w ZlXZskdEcKlSbCwchYuPOVHsrvwKp6yjwCuejp/otAU3xl5NWVwN2gfOlFn7RbuTGo4L7kBSXVMb3 zPZhMm1sTKqUDM6F/0S9uq7z3KaqTqpmic6qEGM1MTZgn21MhB2XqpbwM01jj9fuokKxAtGFQ9pgO bwL1j50imJgh62z2kNREDuY0zMe98wZzmUGJn4ICZCMUXXYma5yVUpZ2ljoFrw1o=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Cu3txwmM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

In commit 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized")
-Wmaybe-uninitialized was disabled globally, so keeping the disabling logic
here too doesn't make sense.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan      | 4 ----
 scripts/Makefile.ubsan | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 58f8d03d037b..d8d4d6557b80 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -72,10 +72,6 @@ config UBSAN_MISC
 config UBSAN_SANITIZE_ALL
 	bool "Enable instrumentation for the entire kernel"
 	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
-
-	# We build with -Wno-maybe-uninitilzed, but we still want to
-	# use -Wmaybe-uninitilized in allmodconfig builds.
-	# So dependsy bellow used to disable this option in allmodconfig
 	depends on !COMPILE_TEST
 	default y
 	help
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index 9716dab06bc7..c18fecc53605 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -31,7 +31,3 @@ endif
 ifdef CONFIG_UBSAN_TRAP
       CFLAGS_UBSAN += $(call cc-option, -fsanitize-undefined-trap-on-error)
 endif
-
-      # -fsanitize=* options makes GCC less smart than usual and
-      # increase number of 'maybe-uninitialized false-positives
-      CFLAGS_UBSAN += $(call cc-option, -Wno-maybe-uninitialized)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-2-keescook%40chromium.org.
