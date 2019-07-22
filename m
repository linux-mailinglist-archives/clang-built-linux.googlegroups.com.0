Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOWX3DUQKGQEPJTQLGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id D573770B7F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 23:33:47 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id p19sf3942794uar.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:33:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563831226; cv=pass;
        d=google.com; s=arc-20160816;
        b=OVEzO478d2t77gPH1CaEJV7P5hH5iG4Rk75l3jglABQQ8lsv8XZ5Q4EDPHmT+d3jfR
         6nsMMQUvUB5nZG9/Mf6Xd6dfhpTvT+mAka733diqg7dKu3GKnOnXzBSkb0uggWed3urZ
         GM+HpOxRUEkM2CXWxGmPWIJapuSh/kx2F6OQK+VhkDSnhpeLm9szA7RuHxeh6NW39+BJ
         mE5X7u1twSX/iLFw99UN4PDzDxceUlSgW39PpWAONXoc8zzl2qPOWiiIi0cJfvnK4lv7
         qvFguVJG1tzVTFU/hLnLKVMGME7GYVEh0CIkaUZmZyFlDCqUlZDAPWm43/K8QAm0rSB/
         ffVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LTAgtFG4X2GQKcw67pV62sud4zdv2CPs/pyPgzBSXOI=;
        b=i3PVfw/6hukGGUnsO/fuyXmPBMWzAPKzJwli0CdsgP+oQTa5gTw3mlZgmwfn55FgnV
         lMH5/cw6O/VFCFSufUZOScFvT//vt8mUTJRopdaa27XNjQGoYj1rVvCacC3dDFdE6Mfj
         aFwsKCn7sKk9CUqHYyfn/IaVoC9OIfkRtoeUne2MRUrxXIKmyjvJG5qNmRFzoNLdeGRR
         ETjTonQcPBqercyGYjS8/xq/OFDPn0pz582uiBinJLcr7Lq4Xq7nr7Ia8rLZLx7Dzh4X
         48f0ri8yl+5BWYyh53txZnRxijTrhSEZI+t7C73qYbOBvL4hiWTXgWhvuioOxTNZXvT5
         g2Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M5sBWcpB;
       spf=pass (google.com: domain of 3uss2xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3uSs2XQwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LTAgtFG4X2GQKcw67pV62sud4zdv2CPs/pyPgzBSXOI=;
        b=kFHQRFEkJEmE6arC3Hll+6OaLVB4JQ+OiDjJvrZmgzYoXKDt2dHGxXxHbXvyvehOFi
         93MYTUNdKqT0D328C2BFH7OPawa2+X2ElftcCGWxvKAlblpCFZbd0EEhAgkhfdPcfCCH
         mDB8aB0unPIj6Pp/G/nR0LkQf/j2WyPsskixEfIeYPgYepVvLVlQbhpQ5H3V7GabgdTF
         j2hYOwB9LBsW2j3lzPqzHIvlmda3F699+o32l7z3I5Lhg287A2zLsayyMX+2yk/Pb91Q
         bcXlb/eFxEp+ZPwi0HfwyS/dikOVciMYv6LkAgkJYul1cr2bBg4MuwO+/jBgqTQObVlF
         vatw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LTAgtFG4X2GQKcw67pV62sud4zdv2CPs/pyPgzBSXOI=;
        b=gvifD0m854uj/tvuI3zr1MRYYB8ZdloKMIkQ03zg1nmn0uHSoq+/5m7xlUhWwP3CZZ
         ObLqKOCGsdtYcO+SE/GRU+p5p0pA0ESTGZhSJHE/tpxkW/Ng9ysFEPZnkjbPc/+PJFZj
         oHQww0lYwdDVfBaEN+D08OOsNX3iKnqno9/45fFoCHW4J43o69VCN9GO+V99CFdAQ/zQ
         hvor0WAxq5XMb7hmhos7rSFUyRmlVvk4U6Pky85bpx5akoBtyR5+KD3M8IrPnzNoat/U
         8/B33iMjpFGnmS1Q2ufiaxSkIxrtUKIpTA5a2SlSxU0ttuTSpkPAZTEg1tAenoqcHW/e
         M7Jg==
X-Gm-Message-State: APjAAAXTBm8hn5zpz9Yv0C764m3h/zD6wRFtHdZ5yNlUpqdQkvSYQznF
	lxIUqoX5m6hHR1BA5imiE3E=
X-Google-Smtp-Source: APXvYqwb2X1netPZFVZROnDWrdHj/OYwTjRDopunb/PMNCBEKM88SKIAb1rtvN+jd3fFAlt+K62bww==
X-Received: by 2002:ab0:c16:: with SMTP id a22mr11520741uak.73.1563831226796;
        Mon, 22 Jul 2019 14:33:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7241:: with SMTP id d1ls2995169uap.14.gmail; Mon, 22 Jul
 2019 14:33:46 -0700 (PDT)
X-Received: by 2002:ab0:7491:: with SMTP id n17mr17368142uap.102.1563831226576;
        Mon, 22 Jul 2019 14:33:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563831226; cv=none;
        d=google.com; s=arc-20160816;
        b=h8x5Hh9qmaH853HG8BQD5nnnsoCMBE/zeZAjcokpXZgNq+SHqJqhbaUB57NjxqaELe
         QbQq6UpUqQbgRujNYTiUx7W7HZTIvLq26zqyS86xg2Ugyd7QrsZE5fFZZl6ruw7Bfbb2
         TIpJGMZL4JE5yjuCh9/VMeVzuerH+9peMc3Up6L+OIJoFGuTgfcxYMGB05lTKmkcJhu9
         YNJrOA4Cu1TR2pUF3wX5TN+HAsN3uu263RcgplmfuTw9aR+/zaD+dF7+IJPM4hwUiAIp
         f0X+wxzJsAhvLvMCXBffJSh68SwId8RFZdFSkugnp0EHvN2gi1W66BqzucfRSoTxlzUc
         Pn8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=lRY0zisiksIF5oLsqk7SdFjADDPWr38y9Kmpdd3lLF8=;
        b=rQgKu1jhbatJAxRVHZZdu/Vu/sfslbn3yRNFAlm5JJZis7DYm7tXHvImo/+6nl4tDc
         Ui08AovN5fHozxeYdqEIOADhDwXCN/SdYVPxmmwzgDtM2McFyNE2Pq/yfUXvLI46dG1e
         bGf5whBGZ7H0kdlsQ3VvY8Bm5FnwEY8pHI/iZtyGPMDbq28Cs1dVptAI1OzktMMaYztb
         /6s+VRz4nQ3HFDnBnz/++p+wLf/PnWIA6N0nqnp8BzwjM2QiTP0iOLouOQ8IyrjqJvHJ
         hwR1McXps0aDQtRFZJeJbKLOiWnGgPP/m7tKW08RaKHQnD+e1t0brCaRqx6vzJPqB8cR
         F0xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M5sBWcpB;
       spf=pass (google.com: domain of 3uss2xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3uSs2XQwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id d8si1937888uam.0.2019.07.22.14.33.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 14:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uss2xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id n1so20574752plk.11
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 14:33:46 -0700 (PDT)
X-Received: by 2002:a63:f50d:: with SMTP id w13mr73259220pgh.411.1563831225390;
 Mon, 22 Jul 2019 14:33:45 -0700 (PDT)
Date: Mon, 22 Jul 2019 14:32:45 -0700
In-Reply-To: <20190722213250.238685-1-ndesaulniers@google.com>
Message-Id: <20190722213250.238685-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190722213250.238685-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
Subject: [PATCH v2 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Vaibhav Rustagi <vaibhavrustagi@google.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M5sBWcpB;       spf=pass
 (google.com: domain of 3uss2xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3uSs2XQwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

KBUILD_CFLAGS is very carefully built up in the top level Makefile,
particularly when cross compiling or using different build tools.
Resetting KBUILD_CFLAGS via := assignment is an antipattern.

The comment above the reset mentions that -pg is problematic.  Other
Makefiles like arch/x86/xen/vdso/Makefile use
`CFLAGS_REMOVE_file.o = -pg` when CONFIG_FUNCTION_TRACER is set. Prefer
that pattern to wiping out all of the important KBUILD_CFLAGS then
manually having to re-add them.

Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Rather than manually add -mno-sse, -mno-mmx, -mno-sse2, prefer to filter
-pg flags.

 arch/x86/purgatory/Makefile | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 91ef244026d2..56bcabca283f 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -20,11 +20,13 @@ KCOV_INSTRUMENT := n
 
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
-# sure how to relocate those. Like kexec-tools, use custom flags.
-
-KBUILD_CFLAGS := -fno-strict-aliasing -Wall -Wstrict-prototypes -fno-zero-initialized-in-bss -fno-builtin -ffreestanding -c -Os -mcmodel=large
-KBUILD_CFLAGS += -m$(BITS)
-KBUILD_CFLAGS += $(call cc-option,-fno-PIE)
+# sure how to relocate those.
+ifdef CONFIG_FUNCTION_TRACER
+CFLAGS_REMOVE_sha256.o = -pg
+CFLAGS_REMOVE_purgatory.o = -pg
+CFLAGS_REMOVE_string.o = -pg
+CFLAGS_REMOVE_kexec-purgatory.o = -pg
+endif
 
 $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
 		$(call if_changed,ld)
-- 
2.22.0.657.g960e92d24f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722213250.238685-2-ndesaulniers%40google.com.
