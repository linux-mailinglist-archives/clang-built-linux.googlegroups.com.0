Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOGNSL4QKGQEURLQAPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0339E234E57
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:18 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id f13sf8154149oop.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237497; cv=pass;
        d=google.com; s=arc-20160816;
        b=c/nFCPFeyUFuVDXIUBt4+0X7/V4s9IMoKorXX992pjQGDNYIwKWe5cVRJG++VYxqqt
         RCfgFe4fe/rX7Z0BBda47CrlDT899tSyi68oUoaRMP0JGzlzxyGgPQ40ZOmppIKtAnry
         mQC/0mH1N7giB5CorGM6u3BN20K2+d12Z1w9S3UD08TaiYcT4GDTqr6oolT8/kaL+etP
         OBHWGIo7QXMfanHYop0ciA+JeKwiJA2lkDEOQ4nbgcyOtuX69GhfAv3Fan3y8S/q+3v4
         Kfu+VbkyItrgByX7pc/l6QXUxPvPFrEivtWSDaBV7+tk59WzsuSta4zyw5MbB85mfpZu
         cM1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=f4+lpWGO+AvVgHif/2TOVa0qNxp1xlk6Hte/nquoXp4=;
        b=tx/CZCWjAbWW1SspctTzkcsbgINzdJRu61RpEk1RN9lYl9ZOcOGFi95Pc/LW2G+eL0
         abXP+AIc2PJoBU+YK4DlYGQLe3rm40HYpCiEG0X/LI0QMBSvV9L6KpkWE5FiOa+WKqEG
         h388zZozI515LmW/1s0LpTgUvkr1VHDLBwtFG/w2clP93ogk7/GB/0XnsiAnxMf5eWes
         Gwu5VWYMborJjJSnORFGpB/x1vmf41QiZ2isKUxlfKxIMHcZSyJGWdpQ83p4Fjad+z66
         r5kp4YuO30ybzN6+V2WSXiwQlnuZcy7Je24TQepAddr4kdnODh9FMSMHXyycrIBXLG7q
         uCDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XZ/hdSqG";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f4+lpWGO+AvVgHif/2TOVa0qNxp1xlk6Hte/nquoXp4=;
        b=Mea7rlepuvjWqgWQNixJtnFv0ZoZcGb6/BZzOxJ1e8iFTe/C4VzsUUudKLxZvol6j6
         x0Ua9JEDk/l4CXG4DEfxJwwubOUWyURzOBSZRYTINm1ez5VlchSn7H8P8y4WCSrhv4jr
         5pF/B6HMqwqLcaEZlPkUQeRrlbbgPACuIRemJZQlFvwXlLGSKHvVLJ93hdP/Y4UslokZ
         mAa6Nfi1p7bAI+aAELn8usy+cmhY6djzNg049cEOZ5jmZ1Gjcz3Om2mjHdI2pM+Dwh4j
         jljOEFlwTC5lOfKmR42JzFZo+3ylzSLqKCwwOpnrQ5omWKFD38HNfLCB0EoADbFrjyfw
         BDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f4+lpWGO+AvVgHif/2TOVa0qNxp1xlk6Hte/nquoXp4=;
        b=m+nBv4sBJxUuDKIF4gD/dat4NY+hLeGFFpFiDnvHpbf6OAz0un09PEw5O5TfKONOja
         QhNDncpfYDLjD7ywE9DbijegLmNrY2SVNpSv6mRVr5h1SD+c/2gIBuFPwv6euA65C25z
         j6xPzjWRAa8/wyG5zKHJch49HaWzjzRNv2GNaN5yzuiqV0ChEfIAwsqWW63X6P1DGCB8
         ArpNOpb+v2FZ8l9Ymj15GbsIiwq/H1qt6KTxd/ct7+k7jMCRrE07D1uz3M5+i8TGFH/s
         pLMoJHCeamlmi4VevbzS74bmSwVDk5njVnNNfxHfG3Urq175sxajJKLL4fWfkr9OGNPs
         Kn/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JIsbIfOORgU+5ZXSoU5ptqE+hWLTc8gg0HyQUMTflBRMfHI66
	EpZkTO0n7RwZVoU3IAxRzD8=
X-Google-Smtp-Source: ABdhPJytqiohKzVEQnw7FnlXZnnGGCH5tlJ/UCVHvGaGnKKeRdPdmOQelRA+OwzrE3HFVPfRa24Glg==
X-Received: by 2002:a05:6830:2119:: with SMTP id i25mr5159935otc.131.1596237496966;
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1247:: with SMTP id s7ls2231702otp.0.gmail; Fri, 31
 Jul 2020 16:18:16 -0700 (PDT)
X-Received: by 2002:a05:6830:20c8:: with SMTP id z8mr4926515otq.324.1596237496662;
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237496; cv=none;
        d=google.com; s=arc-20160816;
        b=IA6dmhDVxA9Wbwuf4pwfR6SoMz9zD3L+Mg6Zpfu9X03AUtIQpw02ck7ayV0Fl2eIVq
         IKmUYPyXJhUt4azUYsj2fzes4OISf41vRsCW7j8qQ9ShADvadi1geepND+VrMv3EsXLt
         y0rA0nZA6OFjkLeruzR85o9IeQUQV9IqvrU3gjf3wGNrhbBbRv27wcXoIySRHZQe+oeU
         CMZ4FkraDAo8rZK7YK5PhQiLVCoN7iI3/6DALal1kUpZ6R5besx4XTHuYjoywaCSzrI4
         sLU4VL/m0rOGtcdFTDjyAotkOLtwxu8FjmO4q/W12HI+wtYAMh9uc3LMDQ1vpwjWh1gY
         gatQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dTlH0MxU2Zy7x/fgIfuiZYJNDywGHlIxz6xu6/7rQq0=;
        b=awvE+BB2ZXdkjGGHjzHKtHlfIyhU0M2fH+Y02ez920I26f/bLiLP6IMr5Zhbctxp1/
         F/G0u5DWaq0pRXRC8XjLhNLi21/YaM6Tx3I/dSvWmfob16dbcBn9c8APSN1CBC3ayMKI
         Yx1NF5pxoC84X4G6mUdPHwQpyvXKhd5LgexyTZVEk9XjBW/O0anluTYk4rImFG7iRVqw
         Evp5s993C9Ra5r2iTzPSv15oF1RnSkqegUsYxv470PfOFhBj4Ok1iRzbmnMyvqWA0QRi
         cT67/ngYY0NSR3t0nJdRK8J+FB+F4lOFvfJ+hRVCCvddUjdWkBcERgar2eyJO9sqR7dv
         BVLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XZ/hdSqG";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id m21si673928oih.4.2020.07.31.16.18.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id a9so8085503pjd.3
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
X-Received: by 2002:a17:902:6904:: with SMTP id j4mr5716481plk.198.1596237496047;
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mj6sm10153236pjb.15.2020.07.31.16.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
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
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 15/36] arm64/mm: Remove needless section quotes
Date: Fri, 31 Jul 2020 16:07:59 -0700
Message-Id: <20200731230820.1742553-16-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="XZ/hdSqG";       spf=pass
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

Fix a case of needless quotes in __section(), which Clang doesn't like.

Acked-by: Will Deacon <will@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-16-keescook%40chromium.org.
