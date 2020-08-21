Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXOMQD5AKGQEXW65ASA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5381B24E135
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:06 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id q5sf785131vsq.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039645; cv=pass;
        d=google.com; s=arc-20160816;
        b=xpVdM02ekh69bTyL2M13OFoFOAhkDpPmIrdPHddFSauywo6btCNjyQI4L2RjoCpP8P
         qIITxsoBqUwPC6ZlEolqV08e9L6NPMv45TH3qFS6AN8KYSjRDMxzT4RnPCqnI4NWPQzJ
         2Vsm9trked7mdEs3rqSOtpbJQ14T17dRTOL95Ba/t0Dszy24lSoJl1HIPAoTJ7De3UUs
         v8k0tzST4qfGh+DZK5BszYX7tGtIxbFnXsAI0KjhW0CjvqjwV5/fEY0jPPIw+csftIQm
         uRDhwl+rhoH++Jq8j/vqXxy2wGF0wBlOXq5siz+L/XZhRKSIHPVGTkun4AW+L7cOwuAR
         OuvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qdOITPgAmV9zYjJVZoDgI+7ORm7cXqCcqC7a9DZpq/c=;
        b=I+K8z4LXttVyGEriYFCKJaVOpr0Q+mlyqygQumvw1ucjZontVUv2fVvcS6PFr5i2Af
         KcAkV/1M83XcLsh9ZgbdDO7RTD/J9u8+cwmkSXHz6cgthYJ0fnHxCzKnVCKNKAqRLXy4
         LwA+zQmZ0sS4zN3nzNszzrNRxEwS11hyASUHkwEt1Oc63mk4g9SnZP6rid4ZpfEyglyd
         H/5R3QiYtQe9rhnQnFMmYRC0FhoLygw33VunIQ4rEhaqGum4da+yDBeJ+KfQ4QfIn9m5
         wdFoN5vmm59rAlOdlYyOKXgtwoQnRXyTQBxVK8v2Er+CnGhM2Qz01NOfBFIsCzOwzfNt
         4Itg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PH6uKvVh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qdOITPgAmV9zYjJVZoDgI+7ORm7cXqCcqC7a9DZpq/c=;
        b=B/cUXKaW7yWTpUpAddANXxObkS3Aziw3RGM1HIeMQB21A/RUOTRGWNTyL8Z06ZiPvd
         n0eaHL8TDzvGxYYtdZ7winY5sGKdajsOjJ5Xl6MmPsPEVcLgp1O4nHoz7jnqHum+c0OK
         n785GGO0HtaI5sORGv0EQ5ltXQ1qchS9WC2NtjlQiG7jnLpHnwoHG6zAc84srb8fALz/
         flZDGgj6sb3mIpDB0ko13uKVMLYLeDF9uFMSzWXb7jo3aV7BbxeEpTgofkyKVQArLSmi
         tD2m+B+ehf/NhWrup6KwyAVIvVebQGsgRqlTSNmmVLTzDb4Bew5uJD4zBVR56KBV/8Zp
         GiSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qdOITPgAmV9zYjJVZoDgI+7ORm7cXqCcqC7a9DZpq/c=;
        b=ZQWLvWxMcJSiYNsM6MzfP2PVJWfjAYmFbK3Dv3IH+F2r6xGJ745WsnW//21dBhJYjG
         qBByk2uk79kqzRDrkGMIzqi3BTKxa+1OnjdNF3y9QODb7qGgAhj8aDBBlGKLiWovxWho
         ZBHkYv+iJ2NjEzfcL+b7Dl/R6emhzGBkJo5OHUhDoXHfQL/9X1KGx6FY+6IS5m9QKqDc
         q+KN+nYwAS/EYet2kvoICpEWeuilzoMNDLUePKquo2S0foOzkgQGHdT6Y7a6higCR3jO
         OMC2SBg3KJQG5pdV5vJc7F/fn39QjdVzf4zObPbykqtklZ6gQaFkwLaETGEV8+57IDDt
         5M/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ep+g4ceKEsetefuNaBEEj2ktUGp8ty1oaGlsWC3106N73Dlf4
	gh5uHEbXVicccz/Hss+iuCA=
X-Google-Smtp-Source: ABdhPJz2CDY9aAkM1vihW06jN0N9bLoVOZnqdjJEXy0VhJTUOSQTN/qhQzFqb5ExEuB96keYWShS1A==
X-Received: by 2002:ac5:cce9:: with SMTP id k9mr3030945vkn.17.1598039645382;
        Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:308b:: with SMTP id j11ls221736uab.3.gmail; Fri, 21 Aug
 2020 12:54:05 -0700 (PDT)
X-Received: by 2002:ab0:108:: with SMTP id 8mr2765478uak.25.1598039644982;
        Fri, 21 Aug 2020 12:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039644; cv=none;
        d=google.com; s=arc-20160816;
        b=m7DyvVwvEj4TDqTElvslwuSs+pjORB+2khyZe+OXnKPJjbQmHxFgrHTGHwHn1vL2f2
         U446ahN78C2WGUk+3QAMimOsQZcJEpAOV4PBcnChW9raFFYVVS5tRkuQp0zN582Emoag
         PjzZ3LhQBrUe+R6IxXJCLDvsJTknsKPck2Fka8RIc27Qy2pdMFFdNCP9GqBs+nD8FM/R
         MTz328wjvKwa6aR9UDu3KsoWyuq5g2/ve96uxfmq1HuPs6lHQL3vbSYQWBS0Ku6VFdas
         e3FDsTyv5Y5BF8HzUqxmGRSsoYuQ78Vq3R28tiK/UI/okZA7wX6TvVba7sWvQNoJLX7O
         xZcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=X1pLED4dOZHjJehTtWdStx3hbiXOC8sBHN8PPW1XfeE=;
        b=lDtuVjQ9yrfyMCfsgA0XOMGG7YDaR4YedEzB+KnH2Hvsq8tDVNXeu3Ny2DBg2knHuU
         vk25NYGqJT1RgUVaXw8b5R1vjRiSlHjaE/2Ox4oQUMtMbyG60Hxqzas4rJKPK3yFblUo
         XLVCswIBcXfCxJWx6FF95kjNzW+rOvj3RprJ4hGJpELSpp+JgOKBqQX/ag9tqoeJM+Tx
         fMHXn5EqGTaUEMzM7QnGYo3DuXVmR5Lj9oa6rxBFnCStxYnwPWAQQo5lQdkB1kTR8guK
         3S83ZGGi36s4WitzDWImtN6Bm+R1DzjxUjtAC0/nRY94BHS3KV6Kw+I7gjrXsWgKQDxy
         wHYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PH6uKvVh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id q1si173308ual.0.2020.08.21.12.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id q1so1265757pjd.1
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:04 -0700 (PDT)
X-Received: by 2002:a17:902:a60f:: with SMTP id u15mr2567999plq.239.1598039644162;
        Fri, 21 Aug 2020 12:54:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h18sm3442336pfo.21.2020.08.21.12.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
Subject: [PATCH v6 29/29] x86/boot/compressed: Warn on orphan section placement
Date: Fri, 21 Aug 2020 12:43:10 -0700
Message-Id: <20200821194310.3089815-30-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PH6uKvVh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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

Now that all sections are explicitly handled, enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 5b7f6e175b03..647e15837a28 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -54,6 +54,7 @@ KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux += --orphan-handling=warn
 LDFLAGS_vmlinux += -T
 
 hostprogs	:= mkpiggy
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-30-keescook%40chromium.org.
