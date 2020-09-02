Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQESXT5AKGQED4MB4SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id EA81B25A329
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 04:53:53 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id s4sf1801960pgk.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 19:53:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599015232; cv=pass;
        d=google.com; s=arc-20160816;
        b=ISFq14Cii30Az08A0HJ1buNPneQTnR/FmxdFRbmKWoheJSFcvHVbWl0/dnfHgH4eDL
         V1xFuWSVgF7IDL0i+oAgUkKou//MYePuW1o44K6d5hveyTtYUm9PN3zyus7M1gQ24i2h
         CngTK/bzfzOZDsBgX7zf9EEqVwoA99c6B2AmUFW2oU85Mt2O8Bh5OANRpO9eBb8ogio/
         MUhXeP44JlIkREZbRUKy34ZfwiRq+Iy7zLDPXzs4mpKoI4pNZCMcDycgTiEtYwfeF6hW
         M+6ZAwzFiVg+v6et/JnpzhACKzC78kTAwj/KWfKYcjU70z0zh5D6XhpMimK3J33uFdsk
         OVgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ssv7A3iHaQONIal6xJoyneLxunKe/pIPGCDkURGBdGI=;
        b=jI710vFAeeVB43NpA+c3gnhLrCSQJ13ss0J64i4GYgozgazg5wbEyPeKZx4zXuJKYe
         N8ipLpkp1GlCFxjZ2FyhAAp58LwTGYTdqz8mRBv5QRY7BPWdfiNSsxrHmC0wZT2UG8m3
         Slu5Bfaunsc2npP/7Pt3P7aVveONc/ljyPxFNuoCCdPi1U4FPGywORCpD8D+qIbOjmoI
         j+w+ckVTHbidHrfKGUPdjWMpnl77yitu0/zvO0rDlTxgKMASXlwkwNs/wT6JaLNku9Xh
         F9tenPWLrDS7+ve1HlLeQZQQK5OC21Xaln56GL5AYw5TRLxyrD18HZlpozp4lSL6Wyrw
         WXag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=etH6NKPq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ssv7A3iHaQONIal6xJoyneLxunKe/pIPGCDkURGBdGI=;
        b=L/qMa/HSb1NChXCHBWDs3RMCUF6BON/eT7l6HgWDdpknHATU+wksdXoplFLdtYSl8Y
         FVWGhZK4oWglnWq5G31DkwmCGmKqGmY8zwQacvns2RRmoTncsXdoi7+toVe/WbPFsk/9
         s+zF98Oib/jQ3invQpVupw50Ue6FI3EUMRzfN3kdUwAw9GZsn255d2hEwSK8Lv2i8p8f
         FaWtB378HWbXp7JyuOiwvyNDtsyBv68ja/vXLxVWji5G1nTgQsFgbBB86j7ToB1p+LFN
         NySmQ7Sk+wQ9zlg7ZIBBnJ3xifJprAiQI91LEFdspe/PZ735EvD18/H3SgnpuUKeP5q2
         C1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ssv7A3iHaQONIal6xJoyneLxunKe/pIPGCDkURGBdGI=;
        b=mLCAx69l6X4Dn+CEvQA3lrWrqCiCbKohZrzacebZBlBZS/XehRfJZRgMCBwM+i4U3j
         OhWBckZ7IQZsgPenCD2eu14dxOH3lO4pBVlgxxW7nHjQeDih30bnhUEtEfK7qsbOhaPM
         EPim4KJHXluONiWoP1T8O2qoO8bkUgDD2GriQveUb/FXbTnA+KCJcg/c0PnKIpt8sNZd
         G+7Z2z4Po4bscSHZdbYWys9kgSK+DCsWgGMJObsYS0iEbKVJqbAvEViMMhZ6hVL5PV4F
         O05/zrFBJJuGXIu6F0Nroq2o1hOCP80ANcUrq0fHNCwm5KwgnuCzdO5r8Ixw+9iyDV+d
         8g2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EObvam2jvvY6RY/dvMpLJU63Ul/wqp3cqK83hh3LH6D2C1Zmh
	gePDvTP2YOpODLVAUjD9qMg=
X-Google-Smtp-Source: ABdhPJzgkezNpd4MYxHyOOCo1QeM3OoFbpM80/TBrtVSlqaFh0g1dMIxW3X0gSPD/TfYAxL/c/1gyQ==
X-Received: by 2002:a62:444:: with SMTP id 65mr1280348pfe.86.1599015232346;
        Tue, 01 Sep 2020 19:53:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls368840pfq.0.gmail; Tue, 01 Sep
 2020 19:53:52 -0700 (PDT)
X-Received: by 2002:a05:6a00:89:: with SMTP id c9mr1221486pfj.159.1599015231886;
        Tue, 01 Sep 2020 19:53:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599015231; cv=none;
        d=google.com; s=arc-20160816;
        b=xh5aMLsEHoNVHvsRf1LPTKrA3cf75u7HK7mRcZ5EEOiiyflwuEAKqjXGn8/csajjhP
         b9kHM7z0wvl/wQj5UP2njfKR3+tmQ/ycXkIa0xOIyVtgfZ1BAaFDpNnU76bLxR1mUBF0
         kUiNGNShM1MnZ5pD6lHYBa0pJjwVpK9EFuIM0VYoXs7OmV6gUv0aw4grK/od6nRkwVjQ
         Get4X+j6MBvmGfCvnSmunfz0s9Ys0ODBKeodbunGdQARUEMROEJleL0EGvqEGfn1LxIy
         J6JFIeG995NoVUunHa/LbhN+JSMycnuIRwrlrQKot5b9XhLv/jjr6gHlv2DjLB/LobKg
         vIJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gClGbep+iV5WfCNFybEdnpd2yOKBqRu+dgKC1E3FLqg=;
        b=sFqH25xyW2ruqOaKNLzNEtNnZCxKhVD3u30VjGlA1DmEgcrSFpw2o3IdeQ2VGXuYrj
         Zkmfl/JxCM/6oMLeV3MfhW5Hw0wHeZgYy13TkrgNFH85oQYmJN2DL+xKG5v4YijiC0gJ
         l2EroQx+zZnJbEUwLi56hyr/X9QF5XU/4S9TlMXr0ge6JM0XSmdNTRLp18cJWNGWr9AQ
         13ajHSpLER8ulLK3mufzQNCLfToDm73J94kHWF7o6vEIlbDjpC9GwQsDsRWygEglh8Mm
         QSqMv9W+LTXGhYtTV4K0OXaOWMAld3ack0mTM9O2Ggk1W5DSv/QyIU9BTk4oMMmsLd0A
         8vig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=etH6NKPq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id g11si149292plp.3.2020.09.01.19.53.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 19:53:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q3so1571908pls.11
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 19:53:51 -0700 (PDT)
X-Received: by 2002:a17:90b:4d0f:: with SMTP id mw15mr256915pjb.174.1599015231590;
        Tue, 01 Sep 2020 19:53:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y4sm3597155pfr.46.2020.09.01.19.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 19:53:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/5] arm/build: Warn on orphan section placement
Date: Tue,  1 Sep 2020 19:53:44 -0700
Message-Id: <20200902025347.2504702-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200902025347.2504702-1-keescook@chromium.org>
References: <20200902025347.2504702-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=etH6NKPq;       spf=pass
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker
script.

Specifically, this would have made a recently fixed bug very obvious:

ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'

With all sections handled, enable orphan section warning.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4e877354515f..e589da3c8949 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,10 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
+
 ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
 KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
 endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902025347.2504702-3-keescook%40chromium.org.
