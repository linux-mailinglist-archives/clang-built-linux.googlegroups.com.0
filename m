Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRESXT5AKGQEDR7NT6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E0C25A32E
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 04:53:58 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id k26sf1817935pgf.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 19:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599015237; cv=pass;
        d=google.com; s=arc-20160816;
        b=eSjonxKbBhwwkuYHRkeANm2/pFX2zdWAt+JyHXmsRfTjhsCnQmPFyFlS2PbALGV2ZS
         Uc/v/hysVz4ycGD6jZLmEKtvlsFMIHPuyoOe/uYLv8rk0lbrrB5bOKqNTpyHwuXObnWn
         0dYmWZeaArVH3qjUPjUWoYU17i6dJuluyRro8RAEx9SYDWd/vN1cXsOhX7xzMA5KI+Xr
         fqJnK9O1br+cl8JpLv9JLr7CMhVtoz/C7miF5+rTjRYPskKGrc2wvBFV3hTiWF9g5T+W
         3I5+Ls27Iie5VCXh5ZFAvcn/SHpY7W8igB9FKbx8fI/CsjWQaqq6OkWxaeF2SHb/zBOJ
         rEKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vd/l5PrXg3BdyVZIQ8vXdno5CE9/O0+DNJ7G7HQGFG8=;
        b=GmLOfdUKWRsbeTJzkslluGpWeWkDLVoUfmpSZuLc8n3zwAMiDPQgxvs6l2u6GXZEKU
         tj+D6DV/FU38/ckqSr2d6S3CP5jVkgy61KgPPbF1Txc8b3fkI/o5pjvUG3z/J/O6fkTA
         Bjt1Ka7c97YS2pHvQRk856H+10wklac3/9v+LBcV7Ax33K3o8D35IzNwuLonVNtghwF7
         kwTDTyEzY54fUMPc+88EU68LYr5E4unK9NyDtwjeO8ZADXOCKlLVCCkfKrfxYlbxgOfd
         i0kV+TJ8L7OooLPNIMx47zrHcVRDrgjxU/D0uFLqTZNdeZoLP3Oquo3aCN2Oy/VEw43p
         LXyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bNeNVIUp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vd/l5PrXg3BdyVZIQ8vXdno5CE9/O0+DNJ7G7HQGFG8=;
        b=Qmml3e/px84r5hT1cBlvdqrPW4FuuJs88SDLZ8acJT/vJusu0QNrFzGvKrJS/K9iii
         rwjbIhFOxAxkdnjdMHRpDrcKZ5+pOo/53X2doQBeedqvRTHqKaN0CfkURqfRrrbojBnK
         W2s1NhPAJNIC0+QLMHLqGJI/otZwiG7EZULeLjiDgDwfJjrkD1SzEXOgNoOVRCGOf+rF
         lj4OlAcL1Mfugm/qkEPyGQs2labxQt9w9DLDyvqUiO1l/8Y6kcrpNq5UHBG+dbseS+ej
         UPJq1kSw5J0lgLpqnFfKXipUIRsLYEX5oGn+Gv6uq3R68e392C4+Azj0erxM0qkgGIjw
         7ozQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vd/l5PrXg3BdyVZIQ8vXdno5CE9/O0+DNJ7G7HQGFG8=;
        b=P3I0K6xQLkZzob3ssV0lKmh+6gx8J7qnA2HE8990Y7sdcKJCctP7jktC53Ipjvhypw
         5MOFfHJCZBbJ3tkLsAXJU+Oj2Foy3ItsnXUIOUA2sulbsGl/rGkXW7XaRMi21WjP/Xmo
         Ip/m3FoiSFXZQnB4KibUisAb4bGj/QTX/OivshmpheXS7UHD1s3I/ZVHNDQKwueNHIwb
         BJk9Lh0R1tTD9x8IKSyeyoOdmuYP9HOOwhBFWcTn3bIPRYSVhU45eAyjs3qaDvsK/68p
         LPd6S4VpE2DViEC9hkwbu2TmWgCL5yrpv+VLV/6v4n+N4mmXU63G4I5FVyGtmsfBGc3p
         EPzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Irtg52n8BoY5r55oH3c+pdcHOQHTeJ2UpfqouT1C5BknNsmm5
	VRuVJlx/Dht3WJek63jXJu4=
X-Google-Smtp-Source: ABdhPJwGh9T39po9FdGd17nKh4Ica5zEidFkhN8zJKpY4gtoenkVMlJY1+Vbwpem8wKDzq9XN8PPoA==
X-Received: by 2002:a17:902:6b45:: with SMTP id g5mr223938plt.163.1599015236810;
        Tue, 01 Sep 2020 19:53:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls302308pgk.4.gmail; Tue, 01 Sep
 2020 19:53:56 -0700 (PDT)
X-Received: by 2002:aa7:8e8f:: with SMTP id a15mr1204620pfr.135.1599015236414;
        Tue, 01 Sep 2020 19:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599015236; cv=none;
        d=google.com; s=arc-20160816;
        b=udJHsz1WiFRkJywxFehkFJNj6pWQYkUet3ItlUhacbD+hzEI5SIZJfSo03tWpBiNvE
         E5IxfrxjuaxIe9o+JO8ZsZj7IkzKcFxDGcf/lFFVt7mO1FAH4W+yTyZGotyzEHlpNlRa
         xlE8igw/59LlgNF7YSJqF54Yr3juRkpoxAn3R56jJFd9rqyCddW4pZczjnu54FabHwKq
         jVTZO91hGddomnH+mFcXkHCtPGSebva+/rigytne1vFF2XlqWFTtpYNx/mBfY8TEj3c8
         XzDk2hLFgOm4wpTHxfNdlWJ17Uo8VfaNJB05ASfQMnOakHiHIVb9dAGIUAafliRawEYz
         gZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JcvEo160LuHDQD7qfOvAP7KcCyAU7p1FFARh/mGAmoY=;
        b=Mj30KEPOB+9s+iSx+pxBwxYKgKeWOxLqve07jIlp5DC5bES+uvNc/ClUO//R9e1GLZ
         dPSa+cW1/wd1FML/LdwDg4BiQO2S7BYeEfVJWBoJp/wkWYyG3gMWjXJY7nTv+cGtJzAc
         bhzWG+C8jZgfPNXZV1jSjlVSDo1+P4YfynrOWZr06HDIqvNNM9eSXr5+aAJLybS865+E
         B3milkeS1r162LHMDY6a+6lyUkS9xvK9GOF1PruZvZjL9vN92+AuJhSyGhIgDRA98CuC
         aF/E4clsBMQnZVwoCxUrScZDZP07r3ZGmo5wkwpw0JwY5tM8XSyE56etOZvSw2twhHFn
         m0iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bNeNVIUp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n4si202879pgt.3.2020.09.01.19.53.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 19:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e33so1798818pgm.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 19:53:56 -0700 (PDT)
X-Received: by 2002:a63:d34e:: with SMTP id u14mr235066pgi.122.1599015236142;
        Tue, 01 Sep 2020 19:53:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o192sm3673517pfg.81.2020.09.01.19.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 5/5] x86/boot/compressed: Warn on orphan section placement
Date: Tue,  1 Sep 2020 19:53:47 -0700
Message-Id: <20200902025347.2504702-6-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200902025347.2504702-1-keescook@chromium.org>
References: <20200902025347.2504702-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bNeNVIUp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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
index 5b7f6e175b03..871cc071c925 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -54,6 +54,7 @@ KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
 LDFLAGS_vmlinux += -T
 
 hostprogs	:= mkpiggy
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902025347.2504702-6-keescook%40chromium.org.
