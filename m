Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGOIQD5AKGQE5VAJEAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F5124E0CF
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:26 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id g6sf2095297qko.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039065; cv=pass;
        d=google.com; s=arc-20160816;
        b=p61+lb8xjM3+pir+GHE+cJDPHLyplOUe0j0NFV7u0HLo5HWpIHRO7BkcTPmGzjQfsC
         Sfx4HSgBLzH2gwB4IjPXE+zTO3r69k2XidRq80cMRdSkpgQlZeEVhfbhoUP3lvndBXov
         6lrcNlbGoTaH9zGponv/ga7h9SbekCz9lxAkwYnuIPAQgqtMKo560cy7eLD/ZQFjDRaM
         pr0rd9DPypQ7uTx1pJnPLPqTRFMqHhEImuX6L0Aj2kZDwfV9Fr4cG/Rb9Ssdi7RNJ4Mt
         c7mpxQ3ugvLpFgBKCMTMiICcJrybFfV3WGR9KSBDdSzcxA/HEOfHMs7N2fEXUP8bNvAY
         uNNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NO6tDUpluUrBZDmPHambJ4V0oNXWaltYxkWlT4KPxDY=;
        b=icjg03EjJWvCD4FyMNIpgCyv/DpwSSQHmkiMVAzpAgn9GXvHaLF35hwy4hkKLHrAq8
         eiWRKb7W/3O/3WxLsKKFNz9lpEq6OMBb1tR/+QdtB4fCPp6Y3QzlNRaTbxdfSHq3wx/h
         Kp5bI+fr3LQFv3/7SePWJ4isDrH/y8vhWBItYdyHlLQa0HQ6k+3YYBKjtzOODoPeMGRs
         w7OANfD6Xt8CWgqQjaK01vEs1f6byG0h+tY1rRvp4NZ8EWqMNBAaRtTEwB77Ew67JKV/
         wtXmYQx4hreuof/+iFDyOFkrRNaTZgmGshToEMvgJl6CzwK6J+Iib7jF5WhNloCWW/Ky
         3HNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mPcfZIGu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NO6tDUpluUrBZDmPHambJ4V0oNXWaltYxkWlT4KPxDY=;
        b=hcqa9EQ1ljfn9E83XT8hzUHb+bex6FiOt0maA7rVQ0IzJOPx0LMoyeYjMjkDHsOJnG
         /+o1w2u26rps+hxptH3plEgwcGG+kZBRgaEK0eUteeZW6zIMZIOVdx0ll7hxCoNilIJu
         sLs/dwyr8845wZrRb4KwT3jiMOAoYiObltDXKcXShb0Cv2r8c9g9OpNpCSAVTSR/AbPt
         P3ePHSoAFguJIUH0WZN/DrToR+4VZL8KCM1fjO0AIFlsZqdxgwVRv1wwWqGXG9uNOZHX
         EpeFaO/J169rps+Qa1NbDmJ74u/dwaL6fr372B9ZfU5tWdqtrwDEswQFqFW4Xf5/p43/
         ka+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NO6tDUpluUrBZDmPHambJ4V0oNXWaltYxkWlT4KPxDY=;
        b=hYSSflQIKfqyxyeX/D3SfHxuFxEHmJytfHsas36wdwHz23tcEhTRhTiogb466o95/X
         q08bKHnBpUmZ3SLfrXIM/nCLGZ/1ipAMNm1eJ7otEy5ee6R2B/echUMXNFzx9fHyvTvX
         1fxPePEGuJRrdByFWL9/sfkthyh9VblI83LwbUPFO1tc8o3NYx9nI3Uq+2m1PA4hoHep
         Fn+MW+JiK/uRt55oVosfiF2Q5i8PQb61dHOavYoZ6CPJiKGPXr3EkdXQzeFZhU30m0+3
         0SvOG98yl9+wg907sRkOcpRqc/WQOMJSmt/oiGn7DzbVl2+/sa7NviCT2KLNzG7U6cPD
         PPDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OdZi9jnfm6IHwkU680ejnQwtEmVdli0S4CPunK0pkMVF4sVq8
	R2p5C/Y209ZOgptp6ociRTo=
X-Google-Smtp-Source: ABdhPJyUfIckfaHyUldDPYchV4mW61DkIoEcZyQy9XS2LzSlMCJd5m6UAcVRBA+X83mmYTB+mTjDeA==
X-Received: by 2002:a0c:fb11:: with SMTP id c17mr3683871qvp.113.1598039065483;
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:334:: with SMTP id j20ls644989qvu.5.gmail; Fri, 21
 Aug 2020 12:44:23 -0700 (PDT)
X-Received: by 2002:ad4:4908:: with SMTP id bh8mr3954782qvb.218.1598039063666;
        Fri, 21 Aug 2020 12:44:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039063; cv=none;
        d=google.com; s=arc-20160816;
        b=ipRlI7G0hhX5UVGqQAHURTcAOYFD5hyH7ODIthzWUPogW0G2fpygX+MseKGcL3RJ2y
         nRkmjvKae7EJLUi6D9jzMapkKKHDJh1mLTlEiV4qwZ+yH1jDyQ9+GxP7NbgLVsGN5GOk
         jQnD+cOaM6c/ZMY49Hj5AD4mWIh2lfo1F/rv3Vszt5qhGncicQihUssee/XXcrxJJy9p
         gBGrBTFitfYUy8zSVx+fXnLGq2ImdBVusp5T5Sd5HZpf1a7tSVgOkeOSAlECDPVcJbCK
         yM+GZs4LxFgxwRUQu0B8QlPrNaj/FxyrNCUg/IjzM5m3gsZLZ0KFFLWtL6yIq25o6eiN
         Itcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A9ju+r34sWfhod71XL1bT+zi6vF+Wn+whGvig44U/H8=;
        b=AvMri/vkAJAzjGgSGkyZ9xz4dJPS0hwBAcNALkSIsFQHkNCTWHAUQmDE73cBV83gA1
         H448VlUlP3RgkJuO2nCcGxFRbJr4hA6g/+pYcq3nJQQTj9bdXZKaLa4cCziQpbbinRm8
         PhMlMkg9TrKq68etlM8TqehuOMMWG/TIGG/gKctm6vP0vZXqabJxE01aGjx7zpIf1+SE
         1xydm1YOoUdPJ75F42/7BWJYkAAezMuZ7KFUjO06bnVVQnhBSQ85F71cotSMV/spc33I
         vl65l8bN3W+7Eiuh8BtRMCIkeSKOseZDObKzhcELmeaUQhqpqCz9yAira9pmxajrhKHB
         k+Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mPcfZIGu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m13si146238qtn.0.2020.08.21.12.44.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id u20so1580331pfn.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:23 -0700 (PDT)
X-Received: by 2002:aa7:8bd2:: with SMTP id s18mr3530477pfd.284.1598039062849;
        Fri, 21 Aug 2020 12:44:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y28sm3504632pfq.83.2020.08.21.12.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 02/29] vmlinux.lds.h: Add .gnu.version* to COMMON_DISCARDS
Date: Fri, 21 Aug 2020 12:42:43 -0700
Message-Id: <20200821194310.3089815-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mPcfZIGu;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

For vmlinux linking, no architecture uses the .gnu.version* sections,
so remove it via the COMMON_DISCARDS macro in preparation for adding
--orphan-handling=warn more widely. This is a work-around for what
appears to be a bug[1] in ld.bfd which warns for this synthetic section
even when none is found in input objects, and even when no section is
emitted for an output object[2].

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=26153
[2] https://lore.kernel.org/lkml/202006221524.CEB86E036B@keescook/

Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 184b23d62784..f1f02a2f71b7 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -957,7 +957,9 @@
 #define COMMON_DISCARDS							\
 	*(.discard)							\
 	*(.discard.*)							\
-	*(.modinfo)
+	*(.modinfo)							\
+	/* ld.bfd warns about .gnu.version* even when not emitted */	\
+	*(.gnu.version*)						\
 
 #define DISCARDS							\
 	/DISCARD/ : {							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-3-keescook%40chromium.org.
