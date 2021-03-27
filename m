Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLVE7KBAMGQERT6DKXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B10B034B3AA
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 03:02:23 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id x68sf5601199ota.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 19:02:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616810542; cv=pass;
        d=google.com; s=arc-20160816;
        b=MKoWat60pGM3sASV+JPPbu1TAOlkSLREtaaCdmUXm/7m0xN15DViBohCFmXMOcv8Yi
         c+Bk4zQ4thrqiv1ICyiQV//MLiNOL4bPdZjbs/28ukFfskt5Y2/ti9w0HF3NgJKRBX90
         DWrGv4rrjld+m8Ra0R5lB6PlzLfJ9TVt/AGOt8I2MePrptfNDjALmpT/VBad3iMTfV1o
         hIs0ChRSOnpx9yV+iWlY3F+kiD+4ggGa+FBwKCyNm8dCJTbs2o+pIDy//RBGtCtDPPUT
         6S7wUmx7c9hl26y5jRrHjorbSNguUFwu4K9m8X2hzeXL6tQt9kfO22AhGUmFjwQ9JkRW
         BwEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=wo9UTUZwGwvtZhPOPmAuZCQAAHnxaAM+eojMu/kJ9MQ=;
        b=doMefNxnjVA47Iicg8ubTNhAqIoV5FlQZ8MOJYqGSX0HK2fbSkXUebSi/mGNBJ4gF+
         +FBYtWtiOWxLrYH+3KEcCC35mGT2fpCKs2lMMXYzm8bMaFNLo+jARKpRGFN2MsLABF+M
         kfYnTrs4Ol2Ces+CV8rZwSBkVMdvzVGoGU+7ued4DRpU0b2DrCqsfA8wit2orS83v+sg
         DWMHPNzYPqQh2yrrjdlqI8d/GGm3N1Iuj4BS3QN/MxGdD8cUr/JKvT2Hz+ZoavfLKo7r
         h2/TaQGDdHSXx5mHGzoScDjDFOSlv+VKENdOKnrMRToFTXp0E1unQSHwxyJ/VMhwpHjr
         JFAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hXPVNoF8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wo9UTUZwGwvtZhPOPmAuZCQAAHnxaAM+eojMu/kJ9MQ=;
        b=GejpBDRoIkxhjS5QdCW7Ixlm/QiuRSo8YizMPp+Z9x4iTYTTJTt3lkERS0c9r5bCzu
         TranWDCqkb0Rkn6cUjcN1ZFrQ7FlN2lCnQ6I+X/MJO88m6IrIKsBoXfKUK1coY+99FrY
         z82xgfnvxIl7V9LSC9jXM03vwynApDpsfBgZ2AYqScj+6HfZTOKsIyrRjD8ccMlL8Dlb
         k5ID50kA4oBf7X2jlCe1YzQUXUZzM9url/s2fRXr4EHEkz0pgf/85/+RtbmKTfdTn2gO
         z8Ql81Vtd/NaOSERN3TCjO4KUOSehVasm6D3Ie6edTM9MNQFtEhw9xdp7G+3KGt53/HF
         DB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wo9UTUZwGwvtZhPOPmAuZCQAAHnxaAM+eojMu/kJ9MQ=;
        b=RRd5v9cmCqBAy46nfcfwGl8G5R/VyF17PnaNM40uZS/PXLsLLQggUZc248RjShPa8W
         Ar9rl7z6qS0SP5aqkzEnLbggko6TzfPMsSURM015URH2XuEN01bSG++oa1wfnRbIMrA/
         14SZk5IPb2LTpZCs29YePw4FJJM7KfnqYa3eNflvPuMWPDLAhzLGqdSer7aivtUvbtvi
         +x/9M15roO1tbVz1jlFZ06C6cRg0DeVL4VIY7wMKaE5KboIWMKJPoQkMwsSeBlJE2mjY
         sQX7pNGJvDjWFOW98zzk2CLFO2rAX+VRoBzMVn/RTREl5jnGYGsmVZQrfAGb0FyakBQS
         hYrg==
X-Gm-Message-State: AOAM530bd3fijiE2InLnNNBCa82hx6da0r8X6Q1aTCMGpc8WloCDoqA0
	lIL85iIBb2hc4+BtAVSig1w=
X-Google-Smtp-Source: ABdhPJw3qTBP+fjx3E/lBRah2lvFc4vbtGILdk/v/WNvqeBASOmCSu3VN06yhujK11wHuHX2Zox0YQ==
X-Received: by 2002:a05:6830:14c1:: with SMTP id t1mr14103179otq.305.1616810542673;
        Fri, 26 Mar 2021 19:02:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f057:: with SMTP id o84ls2628396oih.3.gmail; Fri, 26 Mar
 2021 19:02:22 -0700 (PDT)
X-Received: by 2002:aca:aa84:: with SMTP id t126mr11858722oie.50.1616810542340;
        Fri, 26 Mar 2021 19:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616810542; cv=none;
        d=google.com; s=arc-20160816;
        b=hIGPf1h2urh4JzQaMTMuJ12bA9SJDpp8SiSHztaWdROKldqjkj4P9sgOKm9Q+a7v03
         yGol6q5FoEh0WqIN/jkX9gSKf344ykU5sXX6QGYCeA5tYbx1Tf48b9hCe0ODocP3w2UM
         fSrU+IF94CTwWaz03AoKp2cFUQQ9qRL20DQtZ7GHHhrKOZk9IifLGJJyPkSfx0jbbyQx
         KOCCprWG9aHB9Dz5+zXQBq06O8QrGP7ZPb4ryaS6OqVTjC6Z/Y/0zuDhZhzCvWJK5quL
         2NG0F+wRR9pU1LwmzD6PbAzZupLRE2Mmt+MS8K6BRnvlBT40wKTYkhVkHmo5VrCi9Q6X
         sZZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gt3rGVbt95xHgiVZfuo2ZHvuR0GdcJNVGwvzFLdbOmw=;
        b=sAKB/QL1XlELB5Sp1oJ08vmlPlJgh4YzWoTRngYxH7+a3vzMSG49s10trJhTL3zVur
         AoRTQSDhd0Vby7JqyiH0DUrv6pW79FbGYk9PtTCccjikFYVgu9W7T6v5MjW9n1o3Cq+I
         EGL6b3OIp24XWkpul+7gwRx9a6exEPI0vVEIOeRV5j9PyTVjw41IudSTwio2U7ONBNIq
         OP3M0+ovzoDkeeK7ZE9fNeog1g8vMpWHzGsziDtsrXU+O3+lPWricw2/j6jT/1KgA03X
         MARLdzoW9TlWzpjoU3eHYcPNo6ofTsXAYurFf5YtJWT0rRZRHLjO96BCsagkXVa3/Vjr
         Bftg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hXPVNoF8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id z24si659328oid.3.2021.03.26.19.02.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Mar 2021 19:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id y137so772710pfg.1
        for <clang-built-linux@googlegroups.com>; Fri, 26 Mar 2021 19:02:22 -0700 (PDT)
X-Received: by 2002:a65:6a45:: with SMTP id o5mr14575953pgu.89.1616810541856;
        Fri, 26 Mar 2021 19:02:21 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:5dbf:19de:725b:1861])
        by smtp.gmail.com with ESMTPSA id i1sm9550651pfo.160.2021.03.26.19.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 19:02:21 -0700 (PDT)
Date: Fri, 26 Mar 2021 19:02:16 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] riscv: Use $(LD) instead of $(CC) to link vDSO
Message-ID: <20210327020216.63ayp7uul3ymhlor@google.com>
References: <20210325215156.1986901-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210325215156.1986901-1-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hXPVNoF8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2021-03-25, Nathan Chancellor wrote:
>Currently, the VDSO is being linked through $(CC). This does not match
>how the rest of the kernel links objects, which is through the $(LD)
>variable.
>
>When linking with clang, there are a couple of warnings about flags that
>will not be used during the link:
>
>clang-12: warning: argument unused during compilation: '-no-pie' [-Wunused-command-line-argument]
>clang-12: warning: argument unused during compilation: '-pg' [-Wunused-command-line-argument]
>
>'-no-pie' was added in commit 85602bea297f ("RISC-V: build vdso-dummy.o
>with -no-pie") to override '-pie' getting added to the ld command from
>distribution versions of GCC that enable PIE by default. It is
>technically no longer needed after commit c2c81bb2f691 ("RISC-V: Fix the
>VDSO symbol generaton for binutils-2.35+"), which removed vdso-dummy.o
>in favor of generating vdso-syms.S from vdso.so with $(NM) but this also
>resolves the issue in case it ever comes back due to having full control
>over the $(LD) command. '-pg' is for function tracing, it is not used
>during linking as clang states.

Looks good.

-pg affects the link action: it changes crt1.o to gcrt1.o.
Since the Makefile uses -nostdlib, crt1.o is suppressed, so -pg
is entirely unneeded.
(-nostdlib implies -nostartfiles so the previous usage has a redundant
option.)

>These flags could be removed/filtered to fix the warnings but it is
>easier to just match the rest of the kernel and use $(LD) directly for
>linking. See commits
>
>  fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to link VDSO")
>  691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
>  2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO")
>  2b2a25845d53 ("s390/vdso: Use $(LD) instead of $(CC) to link vDSO")
>
>for more information.
>
>The flags are converted to linker flags and '--eh-frame-hdr' is added to
>match what is added by GCC implicitly, which can be seen by adding '-v'
>to GCC's invocation.

Another minor change which may be shipped together: --hash-style=both
can be --hash-style=gnu. We don't need sysv .hash . The glibc/musl
support for .gnu.hash has been there for years. .gnu.hash is often
smaller than .hash .

Reviewed-by: Fangrui Song <maskray@google.com>

>Additionally, since this area is being modified, use the $(OBJCOPY)
>variable instead of an open coded $(CROSS_COMPILE)objcopy so that the
>user's choice of objcopy binary is respected.
>
>Link: https://github.com/ClangBuiltLinux/linux/issues/803
>Link: https://github.com/ClangBuiltLinux/linux/issues/970
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>---
> arch/riscv/kernel/vdso/Makefile | 12 ++++--------
> 1 file changed, 4 insertions(+), 8 deletions(-)
>
>diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>index 71a315e73cbe..ca2b40dfd24b 100644
>--- a/arch/riscv/kernel/vdso/Makefile
>+++ b/arch/riscv/kernel/vdso/Makefile
>@@ -41,11 +41,10 @@ KASAN_SANITIZE := n
> $(obj)/vdso.o: $(obj)/vdso.so
>
> # link rule for the .so file, .lds has to be first
>-SYSCFLAGS_vdso.so.dbg = $(c_flags)
> $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
> 	$(call if_changed,vdsold)
>-SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>-	-Wl,--build-id=sha1 -Wl,--hash-style=both
>+LDFLAGS_vdso.so.dbg = -shared -s -soname=linux-vdso.so.1 \
>+	--build-id=sha1 --hash-style=both --eh-frame-hdr
>
> # We also create a special relocatable object that should mirror the symbol
> # table and layout of the linked DSO. With ld --just-symbols we can then
>@@ -60,13 +59,10 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>
> # actual build commands
> # The DSO images are built using a special linker script
>-# Add -lgcc so rv32 gets static muldi3 and lshrdi3 definitions.
> # Make sure only to export the intended __vdso_xxx symbol offsets.
> quiet_cmd_vdsold = VDSOLD  $@
>-      cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
>-                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
>-                   $(CROSS_COMPILE)objcopy \
>-                           $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>+      cmd_vdsold = $(LD) $(ld_flags) -T $(filter-out FORCE,$^) -o $@.tmp && \
>+                   $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>                    rm $@.tmp
>
> # Extracts symbol offsets from the VDSO, converting them into an assembly file
>-- 
>2.31.0
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325215156.1986901-1-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210327020216.63ayp7uul3ymhlor%40google.com.
