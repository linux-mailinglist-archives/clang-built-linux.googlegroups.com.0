Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS4P433QKGQEMRPDOFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id CC56320CCB4
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:52 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id q19sf9425928pls.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411531; cv=pass;
        d=google.com; s=arc-20160816;
        b=qwToB2cKz8+mnu/101JAQ91csKE84FQEvdRft+KkkQtNc0oafqaVENfcA4I1A7/ltD
         eA+vH3aivtgaZJCW+qHBJBdZrDuscTTTgnghh3zvvG2Pg6McSBsNN9EvY27r3u1BiA+u
         uwUTuJmd42R4I85ORKZrUm3K3PG7F7ucs2dlj2KRwz4nQ31ZJamF57z0lFJurzicAMg7
         H3j3xrhW3xroTjP7RyieXMcg97eSprzPTH00fXuJpofRY2lazwMVJzfUlrCIYavg4lve
         U5GsSQ2e2TPiqep8fKDgi8sxGGlApU0AeFBLvW8x59+fs+QknFxtK8KUNjIbN/rngwnY
         nQVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IZZi0wBXrs4AU1Jbzo6P1YMsBp9n7RtvdC5W0RUTfvs=;
        b=ojpZfqz/bBRcKb+DTy2aMcHqMZ64lu6YdFM6H689LQuZALGvk689oQ9PmeH+nZ6oie
         mVhEk5LGfMG5M12DjDp6Sn78qqKwO8pvPir2cH+q+2tG+WC/R/w0o/3lBH2CwyGYLwt7
         ip9jXWYB5I4DTAEaL9k1D+xOtrxutnnPJU1LX1zVayRdBUbGuPdkULlKgfer9VMwomg3
         jWVTYiHGIU2vfAsJSdqUqKXDJ9/qWVTkpPW6zpJjxAt8QFLuFVk2mW3LKGMPzHs8moSY
         Hg7wHXtOJNmSXh4qjpuDz/agWTR+6ubxqwI78+pUNPDP2cuXtf2KvTiorirvcltCwqcn
         jIgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G5louE6U;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IZZi0wBXrs4AU1Jbzo6P1YMsBp9n7RtvdC5W0RUTfvs=;
        b=SJdQ0FVIySn62PfrS89q6IOP+1cRNMbRfyayyAi44x2lYohfgZw5N5y2zYIFCM1Cel
         tm0C4Ca7hMzF1vZGxzIy1nRg/YCXv89QQbqFT0QQlqM4wZOayPmIGjU4IOGxaUugSFde
         NbgSzDpL2ay6M4upWEJhY20Tcx7WgCCHZGDs23lJo/ApI5zCjFZDC+GXyveVwa2luAWD
         KP4yZ2SRA3ec8YM77SKTZ4XhSQuZZHQGfkt589hTmhwxoDF7yGn/9Qp+iHrkQjMG4r9w
         Z69tZRzHq4CQgNGpnR/9uAzW3EnnHqAakMn6GVjtYnJ0Ja3DXJcW+2wM79BiG0UE5SrB
         Isng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IZZi0wBXrs4AU1Jbzo6P1YMsBp9n7RtvdC5W0RUTfvs=;
        b=qx1KKqkyUn/y9CLQV0gvviPWWzs0KzAX4VsYJNrXuK/MHjQEODz7aKzz5wWtZA5/Fu
         gHWoOfbHk/k8+F/6qEJrCNTn9av/mev1ifKCBd8IORlIzns0omUCwX3jpQpGtou5psPS
         wi2euR2Dieb7dGSKvooB+Ke2mURgCjIkb0yJ+DXJxqwCT0i6GzLmrBTt3yd9a+SE8jyX
         cjz0noxGA9WqWnmGhWD6I3HgwK+uRQ0iCIamdMphJS7j3GTv0KH1GZOgFwWhGgZvMpWw
         UZJfIQCvlQRjiYj1n187IDFmyrBTsiWozq+xgaM0ErAFH3+i4S/9Q5B+YGcho6rItCbg
         dnAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aR1eYI5ApZNYyLMTNEYt5M9cPovnVDXJang2cqgwPspukxnFI
	upWdgHlYfMzORAqVbjyayOk=
X-Google-Smtp-Source: ABdhPJzoVY5fVFeF0nKpQe7xk/CHW6L3QJ0WLH60RzyDLipWnh3A01CkC+o//Pw0C4Dx1dIFpRHEfw==
X-Received: by 2002:a17:90a:e7cf:: with SMTP id kb15mr16745827pjb.86.1593411531340;
        Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8858:: with SMTP id l85ls5090065pfd.6.gmail; Sun, 28 Jun
 2020 23:18:51 -0700 (PDT)
X-Received: by 2002:a62:81c4:: with SMTP id t187mr13643587pfd.287.1593411530974;
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411530; cv=none;
        d=google.com; s=arc-20160816;
        b=iOM3urlXcj1prrnMP9YtyyI0WSe0/tSlN/vkKUszcQS/X4JvcpY6X9CDlBD9vNtdL2
         24EHGudLuHQ+C/85BoUeP0cNoSyxXji6iyOxwFvc7oFIMdHivc436YO4UKk+JlGrMSWa
         j9pfXVpLD+fG9gxPS9o0FEnbai7uZy235rGFwvhvKGIYXRX0jx2r4CsmsJPcZBVWssu2
         pdQ/ZWpHEY0q5h1/SdhcJGL8OGAhPAdJRtxHxJhAx0ZfC/IdTZZnSGb0muMnf4MMfeWd
         VY+yAFnu6FgdxOp4pqkBn6zySohz2JJppiJ5ItliqYPhTApUcmih4dIDQuuW9gvdFpcY
         l9CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T0P/zigfbEYVemiv+chkLi1sxk82Ehd4Rswu0BvpDuE=;
        b=TD5NVIWSujv3ErWPwQ8Ax+dBZ6ZTiuWKz97CXjhc+guBt1Mp/+GYZHCZfT5Xo3r93N
         GlRxWvMLRuU+r2PUMM37XuCJo64gNI782GwEOjf9O8b079S620wzXJoLB8kqGHapRz83
         8zvfH+uMD0nwGNUQY4Ps6k2yrwLdaakCF7/hrwobmugXfBugRyrgeC9Njwnkl6lDr4WA
         ctQThQ/TQPeaQB5ksglu8o8kP9BqEE+arYp6/KQdW1U57MpoAnlCLt+yaiaZdCIlgZkF
         J2HOfqXzoZFwkND35rBXULPiyChqlnyS8+sls0xho88ZAN23/Gbd+JQH26TBdWTXqJQq
         xYUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G5louE6U;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id j3si986098pjy.1.2020.06.28.23.18.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id i4so7574549pjd.0
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
X-Received: by 2002:a17:90a:8a8b:: with SMTP id x11mr10404879pjn.127.1593411530770;
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mp15sm17957978pjb.45.2020.06.28.23.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v4 08/17] arm64/mm: Remove needless section quotes
Date: Sun, 28 Jun 2020 23:18:31 -0700
Message-Id: <20200629061840.4065483-9-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=G5louE6U;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

Fix a case of needless quotes in __section(), which Clang doesn't like.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/mm/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 1df25f26571d..dce024ea6084 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -42,7 +42,7 @@
 u64 idmap_t0sz = TCR_T0SZ(VA_BITS);
 u64 idmap_ptrs_per_pgd = PTRS_PER_PGD;
 
-u64 __section(".mmuoff.data.write") vabits_actual;
+u64 __section(.mmuoff.data.write) vabits_actual;
 EXPORT_SYMBOL(vabits_actual);
 
 u64 kimage_voffset __ro_after_init;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-9-keescook%40chromium.org.
