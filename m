Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI477CBQMGQECJXHQBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B4D364E85
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 01:17:56 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id oa1-20020a17090b1bc1b02901507fafb74fsf5445659pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 16:17:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618874275; cv=pass;
        d=google.com; s=arc-20160816;
        b=AHya+NSwXxYSHh0sEXS7z8npNqFSy8xhDxVN6xpp7ZOCBF9GsUO7NwTRKMdu5Tjz/c
         4forGvQ7RNxRmoMuIt50LsDd0+VUJ3IfDhnAlTYnFqFbQPqduFhkUQElXrL8cM41+feh
         rflt4Z/ZoD+cUOKNqEePkEz8bX18xBX0VT9ch157J5wA71yNDQBovUjhm2uJHx6a38X4
         z5Zl43+enES4z8ZJ8A+UlG5ubYhuWYv/7dVCa5TIdM6er8FsnTQ2mWY2U0wYjs3nwmsO
         sBs0SjM6x+LfBfwH5z/MmUCKLYkY4G3e+HUTE32BV3SBBTSGtidGj19Za8eS0JYAJZbH
         rwUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=cVfv4OBPIBxrvPRbMmtFdsTAV28YRP83N2ORkNfJQMg=;
        b=nlC46nBjQMRURX7G8vsgTb3Zj8WUldL+S6r1SR4PpsQixp/IdXK39e0rSSjFPm0JnJ
         d+dant9IskYg+KvQGfvEHpFWEGS3zYoBHijYZCpDfqI/kKRiDlReK6p272a3NgFUInyd
         0zWPhFy3DEKwdtTbOTlEj94Y1B5N3n9ZI9c50djm31dQBtII28Ig1q0cdwPPNSNBfHP+
         dkXzuGrSE6R72N/AWpuzrGVbTkXT+05efFYJ71TIrO6snzwo+D/oatKZmDeLr9A+gzDH
         rwRj52yExUAAELNdsj6CG3U6aAcu09L5Y7D4uJV0COlJknod/FO7y5qECUNQxjitD8KR
         k+JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QYgSfpAr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cVfv4OBPIBxrvPRbMmtFdsTAV28YRP83N2ORkNfJQMg=;
        b=KNc8e5ra4YAxThCovVhMFRSzQNZv/XAT54iUSIxlkgO1imwTv6gy29O9jpBgCfxBng
         fxVZk8owhzH327vYwI4P7xtqfFFCkaf5BNTb5rzigLeilAeneyL+G6iPyG2LQ82148is
         p2b471cLV83JMwnFxQZM8gAH7ZV1KzkOrXlaWWS4Pb07PyuQM8ONMw7Zk2l4xy8X10CP
         pJoujeY4aut/idi/4QVh6to5GrtGIIjazVVnCV4pkvPL0lL43rjqmqpxWFOqThKzgZai
         exYT096IiMA8RC+Omlp9PVz8O5qZegjOjh+U3ICuPU+2Y7WzOSLjM74+IIRPssK6KlEg
         3OOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cVfv4OBPIBxrvPRbMmtFdsTAV28YRP83N2ORkNfJQMg=;
        b=MaTUAGq8lVWvlLuLu9LPCrEz7Np15ZIiubL8c4B3PK6VUv56j23AJ4sEdJmMr7zz7s
         cGaxlHWCVOPdw+Di9KTaJEs+rO1L9MuVvQ0rxDaSuPCU6MIwCWdtrhGvuDTfq5jh5aZ6
         VkH9TZBw7UGN1ailgZJyzqNei2VQv6EOZNXpensPKsWfyrzr/F0+VLGoGEAVTaiw6enD
         mbFiZEdKVKG+JS5d+jlfkh3zy/GZrkiWghycVAGy/Sqa1OUhjq0l4g7nsEFK/dOWX9/m
         U+kHR1QBnFTfn2YfS+IZKfppGeN0kbK3CHY3yFHmVxBjdt/3dcCy0qJWz9AZc1ThedD4
         a1kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cIGfzcoZTUeLvDWncJuLBtI9omQD+AR7KeiTtaj3mgrK+4c9U
	d3ZQV4gCLeL2mtzpQiD23mQ=
X-Google-Smtp-Source: ABdhPJzLzrap2aNIoAZpG+9Lqxk90s9NvZ+hg0AOSMZOek9nfyYKtZHaB5VF5UvAWtkX7MhIaGtY9Q==
X-Received: by 2002:a17:90a:aa11:: with SMTP id k17mr1577414pjq.60.1618874275439;
        Mon, 19 Apr 2021 16:17:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1492:: with SMTP id v18ls7130747pfu.0.gmail; Mon,
 19 Apr 2021 16:17:54 -0700 (PDT)
X-Received: by 2002:a62:f249:0:b029:249:acb4:98b6 with SMTP id y9-20020a62f2490000b0290249acb498b6mr21939429pfl.55.1618874274877;
        Mon, 19 Apr 2021 16:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618874274; cv=none;
        d=google.com; s=arc-20160816;
        b=M9qt2tgY6M8mfNxlPFIxXnAvYc9x9a/kJ5/xUIiXljoTtzXqwroWPT0wayXDZ/CFtd
         TaoUq7CL2V3W4eUJkKRJHpiJYGz1eH7rreHCHSfavrNfBjKWncOkeBUG/vkZeheIkSH0
         i+NKCkJVejET/uKb3ISqxer7nqU0yHDpBP7sYm6sNGOZmRk9xblrw+sXITYW0P7rDB0/
         c3/3CdaCzaE8FXN9eTW0Fs+hfQ0Pnd6iKjGKszVV0j6S20XI6srruHXAvgCQNn5/VRes
         EjuuVBftiECMKxEgwnEYaiUaKjo+TKhwZ9mqXICWFkIJ6OVKMxOmLKOZSFIJA2J5CxqA
         nRJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mpzKlZqkQF+j0Y24ZCjEE7a1IQfuQ30qydgZaL1YVPM=;
        b=JKBX984b8DXbAh4hDtZklBOCuq9w+UnVqc7MG7M2Y9eFCNfR8M2Z9Exxfi+eJVN8zL
         NlOTBVMeRKrqpPMbEqEWFa5kMmMGl44cULhXTi1YPp/PlM1e3ptzjmxS0BlsYv9IBKpP
         /+eIFyjp59ji9qwxCa3Ffa6GjwXH1v27x56kZm+xcxjdIal15GWlpn8udEzoUpTCqDn6
         tLPYirrmstOSvIk4PjG6VJrJGSa+rLolN0CtAABDoCo+UmKYn4oQjT5ishxZ98BCNEsv
         FDHe9yHG71x64Z3dkkm5RXhYcTNMR2EwR/OltyuLuirRp7Btii4YsDM4hXgDTljUftHz
         qO2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QYgSfpAr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id q16si297286plx.3.2021.04.19.16.17.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 16:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id g16so10946682pfq.5
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 16:17:54 -0700 (PDT)
X-Received: by 2002:a65:620d:: with SMTP id d13mr14001580pgv.85.1618874274608;
        Mon, 19 Apr 2021 16:17:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w4sm441295pjk.55.2021.04.19.16.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 16:17:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Elena Reshetova <elena.reshetova@intel.com>,
	David Laight <David.Laight@ACULAB.COM>,
	Will Deacon <will@kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] stack: replace "o" output with "r" input constraint
Date: Mon, 19 Apr 2021 16:17:41 -0700
Message-Id: <20210419231741.4084415-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=107b110abea15ea50dd7287bab5454c51fba75af; i=IpIn0WJbK5AHx0CI/YU1Pp8wmQpYNAHsCPXAyJb63RE=; m=rkwYQhAIHzivH/uXgvMK4Amjng3IIclbTBo0/8PNWeg=; p=LEFGjKZZ25DUKHDKAFgOOruCO6MLiNc9fAJplphP9Xc=
X-Patch-Sig: m=pgp; i=ndesaulniers@google.com; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmB+D5UACgkQiXL039xtwCbrDhAArJl 5CJMV/vviFWTpqqfJE5usPZ/HWYL6LUHvWWuZNhfh2Ei7STSO08aVQ54Ux19w3YPdtZCGphTEm92B +oh3sWKbAbnpOUO+LuekHJGbwyxNzg2n9Y0whF9Q/VpSP6BHJchTRbtDb/R7uQdLCkyZK4KULtknW aR/UF0MGQPBPlctEmzaVwTY9zQkJWsmiXuLCOcN3RtaIeIMiopd3JI21TV3Q/frqSYXFOHoaHH2HT JyzB+OuLMsO3xsiyI+4n6gMqcVOQvy8vZvu2ZjLKF6WZ2a3pu6JWap3XcjNKIwmDsAiXuJv8WMCj5 crhbtwxNxkkBwkrCkuu41hTa4LaW1NzGby3FH/pgpw9TULIFVshCqJJ4jp92JKCz9Dnv358T1ZpaO RPd85vgTosffDkUEmhZSrm1rrAMelrwDsVRhh871c4zKmT3CXAJRnnBZna1O9TNVQYAJ4cQ81nzZM b1O2nkYu4NJXlALJxP1LWTPf7POKi1xmuWvd2Y7ST0tikFG0Ywa4T7bNH+WRfJRK3SnDQ57in+cwm g3aJPInymBiU6u/z3n7qyNG6JKbtumaK49GfsnLqu7aw6k5umO62O113jWPppaCJTsMN+3SlOAEHK Qulk8GKvatl0l54r5+qkE0CyMUPREAB8n0+G2nW/DLEE2EfTI9wknTowLqjlWDHE=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QYgSfpAr;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

"o" isn't a common asm() constraint to use; it triggers an assertion in
assert-enabled builds of LLVM that it's not recognized when targeting
aarch64 (though it appears to fall back to "m"). I've fixed this in LLVM
13 now, but there isn't really a good reason to be using "o" in particular
here. To avoid causing build issues for those using assert-enabled builds
of earlier LLVM versions, the constraint needs changing.

Instead, if the point is to retain the __builtin_alloca(), we can make ptr
appear to "escape" via being an input to an empty inline asm block. This
is preferable anyways, since otherwise this looks like a dead store.

While the use of "r" was considered in
https://lore.kernel.org/lkml/202104011447.2E7F543@keescook/
it was only tested as an output (which looks like a dead store, and
wasn't sufficient). Use "r" as an input constraint instead, which
behaves correctly across compilers and architectures:
https://godbolt.org/z/E9cd411ob

Link: https://reviews.llvm.org/D100412
Link: https://bugs.llvm.org/show_bug.cgi?id=49956
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Kees Cook <keescook@chromium.org>
Fixes: 39218ff4c625 ("stack: Optionally randomize kernel stack offset each syscall")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/randomize_kstack.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/randomize_kstack.h b/include/linux/randomize_kstack.h
index fd80fab663a9..bebc911161b6 100644
--- a/include/linux/randomize_kstack.h
+++ b/include/linux/randomize_kstack.h
@@ -38,7 +38,7 @@ void *__builtin_alloca(size_t size);
 		u32 offset = raw_cpu_read(kstack_offset);		\
 		u8 *ptr = __builtin_alloca(KSTACK_OFFSET_MAX(offset));	\
 		/* Keep allocation even after "ptr" loses scope. */	\
-		asm volatile("" : "=o"(*ptr) :: "memory");		\
+		asm volatile("" :: "r"(ptr) : "memory");		\
 	}								\
 } while (0)
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210419231741.4084415-1-keescook%40chromium.org.
