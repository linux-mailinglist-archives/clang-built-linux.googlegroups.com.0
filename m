Return-Path: <clang-built-linux+bncBDGMDAP5Z4HRBSOQZ6BAMGQEU6BDYNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5788134113D
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 00:54:50 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id u17sf30988480qvq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 16:54:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616111689; cv=pass;
        d=google.com; s=arc-20160816;
        b=tms4iLsbNK35pTM7bBN6b4D90HdXcxr33H5iTg96RD9ud4uSrQErIu1kxz0F+Q27Me
         C4l2e3OFC+cK/BzLttanOS6Tj3M5AGhBqy6K9R1GTwQdOv91vG+XxvP6JoYWQTt+yUe5
         IoqjiwDqSNjWof2coNGB9Zf7mFy2389iQr/zz4/zA84317MlE2C2Aj5/0M4DujjoEdLm
         glTqAEwe2DdPvxrhI1YnfWv5PuHH+etJWU8JeC484Tpfh0AyFHHXDIxjcw3FN0HDI4od
         b4TNEqEe/oVmQorGEEmSfNQBpc8xT5zF1gkhFLEh5aH/vShdZHcRVaFcuATTkKA9NBks
         ksQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UwsLkk5ykxQdS4yGjlaNpd6veSelUHIx7g0ZNzUmiEw=;
        b=I9hO83TUkIFFjN6XVIH+BxL9ILv2IaPNdrovNDyzjgGfO9w2QZWt0Q3fHrcJC3/XR4
         cuo32Auy8tdu1kCaNa2qSp5Yv5utLqegcdSRW6upfcPehBzSo+4zKtgFUTh+O8Z15NNp
         u2kk/r9y6TNxqbadXQOqX1lq4epATElQ1y/u5vXeEAA3bY5rw7THqUiy+4QgTLOVh99X
         zrEjczf4Rp1U1yAOqa/sBQNPVcAwW2VrCc98Men12VKhAgXy+89KvU7d7UHqetTYDqqS
         cBM5X8uafdTsVtNdRJ2iOs4AR/RBQDAP4HVJl3cVkicdT5VrfPy9cwS5GZbcd1eksbtE
         dbMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KUrUcrQr;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UwsLkk5ykxQdS4yGjlaNpd6veSelUHIx7g0ZNzUmiEw=;
        b=gN2U2Vb7LJ2pLJWPOI1y2VIsH2Z1Z0h9dHGrJgxsDeZJ7z5FRyNcvz52xARfu4zCtg
         6QzaQ1rfAgO8DxcdzSlhsPzdG0gio3OIifFjOJ5lO5QYdwiYJymMKnztXbEYM6bBP3Qy
         VYwGzWk9y8M9T0jqpvCzc5ZO5JV5w9E976R3sd1/7tGiSQbembNvT1XxoWRpMrJfH2xe
         U/4NvFYr5Kecw5u7UcLID1kX/FX6S7PVHQckIvn4fnYw/xr3C08Ap8wozCi9b1hJE31d
         bXu0avb5o1B0P0ZcEfSy8vcwwJ3EGz97kJdNQqcWIXgm2hLkPaCpvqHXA7u8pwFMkLku
         GbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UwsLkk5ykxQdS4yGjlaNpd6veSelUHIx7g0ZNzUmiEw=;
        b=V48M/erchsAH8LXpx/Cv9S1ZLQW66kUSLf8taWrKsKJAccP+yfNNU7WRvEIrrlpOSV
         AzDuTLrG7MKcFtiIviNRLciiR3HSIDGXUK7aZV+lOMR99xJh3baNHbt7FxdfbiaNI2Fv
         5tbeScjH6iyE47N1Kpm46zqNeeBwucBRGImP1q8sk/DEDEQoaKoDOqcganCzV4+0fmEc
         i403z76eMuHth3Ef7VUB2gZagNa/ayU/aw2zXwUjKKQilnqPtqWBm3BsrRI5CS8cqLQd
         SG1tD7+zm72MLwxJOo3xSu5zQ5zUSbM9V/c4qI7lNJQEMEoyFAgFaa0CijWw2uedRVn9
         HiXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311NRO9lELqKlbjCS0MSEaOszl/dmfJFYWTQbH410J8D5xfWrHf
	d1J6ETddd3liJ5lQSFLbwtM=
X-Google-Smtp-Source: ABdhPJyYneAt/rMchaVp24Pir2/YF4R4jDxt9Cqx/SRPFjdhu+gZcl0WMwnIVml8bYjuOJwzCQW/1g==
X-Received: by 2002:a0c:a9c5:: with SMTP id c5mr6977826qvb.6.1616111689331;
        Thu, 18 Mar 2021 16:54:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5710:: with SMTP id 16ls1511716qtw.10.gmail; Thu, 18 Mar
 2021 16:54:48 -0700 (PDT)
X-Received: by 2002:ac8:70d3:: with SMTP id g19mr5922630qtp.227.1616111688904;
        Thu, 18 Mar 2021 16:54:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616111688; cv=none;
        d=google.com; s=arc-20160816;
        b=idF5WSdOduySSEGm2YYRQcQXBjCtFZvG4mofl7GLy6IYZtc/u1S96n9d7SX7OD/762
         FvvVlWe2RKei93AdPtTVPJRONyv1E9a9nOR9dkJI4NFP+jxX0B4aF2Zsku3VLyXH29Yi
         rizjnMvvC2bY6M5JFzz7XUFRP8M3suKbk26IKuHBcFzRpP5jUKIni5AD3Dof5FB96YHL
         XFY63OSgng52vfOem8oURcoqbVnKhN4qoEo4UwQOsyIjF4deZPpPfizaQC0wwu0X0psF
         GX6yCPtkeHKiLKrtNbbx9LCXb55mY6N1XD9NPBvvS70eMN8u/Zfs8TZH0Q1oi6D2uflr
         6W4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7hUuphUSwp1IoZeGVtvLATDDtgHRmQpDvtY9aJO+C/Q=;
        b=hah/28acDEw9oLe1GdFbhYifYRzNS6hkAZfY42BXFcrViuXjemPbztVV3KS4jpGf8b
         T2C0KHR25HibCyulBFtBRMJKzSCvaMddzuqfGBCDKBdr9M5HBM+6rLNKz+eEXX/r4Ghs
         Mzr/KUjRU5RYvn0R7e5pl3mVqNwSyyxBq3KnhQq3vgfDcrXqWkEsghGRUHfxvY07yIDd
         mMlcPdKZg0xbUwxggzZs6ZWPly6Xqf5S7POz4FWSc54lJRWcasY+sySaKhnqMNdn4I+F
         0auSOsDiPVpjQv8Jnikgl6CW32xhBwXYrH8W9wss+Q4wvGiizJMMDrn8AMBWpJ27ia1s
         mlFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KUrUcrQr;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id k7si156284qtu.2.2021.03.18.16.54.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 16:54:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso3933564pjb.3
        for <clang-built-linux@googlegroups.com>; Thu, 18 Mar 2021 16:54:48 -0700 (PDT)
X-Received: by 2002:a17:90a:f2d2:: with SMTP id gt18mr6833009pjb.210.1616111688131;
        Thu, 18 Mar 2021 16:54:48 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:dc70:2def:a801:e21b])
        by smtp.gmail.com with ESMTPSA id t7sm3295816pfg.69.2021.03.18.16.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 16:54:47 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: stable@vger.kernel.org
Cc: Mark Rutland <mark.rutland@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nicolas Boichat <drinkcat@chromium.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [for-stable-4.19 PATCH 2/2] lkdtm: don't move ctors to .rodata
Date: Fri, 19 Mar 2021 07:54:16 +0800
Message-Id: <20210319075410.for-stable-4.19.2.I0387622b15d84eed675e48a0ba3be9c03b9f9e97@changeid>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210318235416.794798-1-drinkcat@chromium.org>
References: <20210318235416.794798-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-Original-Sender: drinkcat@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KUrUcrQr;       spf=pass
 (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1035
 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;       dmarc=pass
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

From: Mark Rutland <mark.rutland@arm.com>

commit 3f618ab3323407ee4c6a6734a37eb6e9663ebfb9 upstream.

When building with KASAN and LKDTM, clang may implictly generate an
asan.module_ctor function in the LKDTM rodata object. The Makefile moves
the lkdtm_rodata_do_nothing() function into .rodata by renaming the
file's .text section to .rodata, and consequently also moves the ctor
function into .rodata, leading to a boot time crash (splat below) when
the ctor is invoked by do_ctors().

Let's prevent this by marking the function as noinstr rather than
notrace, and renaming the file's .noinstr.text to .rodata. Marking the
function as noinstr will prevent tracing and kprobes, and will inhibit
any undesireable compiler instrumentation.

The ctor function (if any) will be placed in .text and will work
correctly.

Example splat before this patch is applied:

[    0.916359] Unable to handle kernel execute from non-executable memory at virtual address ffffa0006b60f5ac
[    0.922088] Mem abort info:
[    0.922828]   ESR = 0x8600000e
[    0.923635]   EC = 0x21: IABT (current EL), IL = 32 bits
[    0.925036]   SET = 0, FnV = 0
[    0.925838]   EA = 0, S1PTW = 0
[    0.926714] swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000000427b3000
[    0.928489] [ffffa0006b60f5ac] pgd=000000023ffff003, p4d=000000023ffff003, pud=000000023fffe003, pmd=0068000042000f01
[    0.931330] Internal error: Oops: 8600000e [#1] PREEMPT SMP
[    0.932806] Modules linked in:
[    0.933617] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.10.0-rc7 #2
[    0.935620] Hardware name: linux,dummy-virt (DT)
[    0.936924] pstate: 40400005 (nZcv daif +PAN -UAO -TCO BTYPE=--)
[    0.938609] pc : asan.module_ctor+0x0/0x14
[    0.939759] lr : do_basic_setup+0x4c/0x70
[    0.940889] sp : ffff27b600177e30
[    0.941815] x29: ffff27b600177e30 x28: 0000000000000000
[    0.943306] x27: 0000000000000000 x26: 0000000000000000
[    0.944803] x25: 0000000000000000 x24: 0000000000000000
[    0.946289] x23: 0000000000000001 x22: 0000000000000000
[    0.947777] x21: ffffa0006bf4a890 x20: ffffa0006befb6c0
[    0.949271] x19: ffffa0006bef9358 x18: 0000000000000068
[    0.950756] x17: fffffffffffffff8 x16: 0000000000000000
[    0.952246] x15: 0000000000000000 x14: 0000000000000000
[    0.953734] x13: 00000000838a16d5 x12: 0000000000000001
[    0.955223] x11: ffff94000da74041 x10: dfffa00000000000
[    0.956715] x9 : 0000000000000000 x8 : ffffa0006b60f5ac
[    0.958199] x7 : f9f9f9f9f9f9f9f9 x6 : 000000000000003f
[    0.959683] x5 : 0000000000000040 x4 : 0000000000000000
[    0.961178] x3 : ffffa0006bdc15a0 x2 : 0000000000000005
[    0.962662] x1 : 00000000000000f9 x0 : ffffa0006bef9350
[    0.964155] Call trace:
[    0.964844]  asan.module_ctor+0x0/0x14
[    0.965895]  kernel_init_freeable+0x158/0x198
[    0.967115]  kernel_init+0x14/0x19c
[    0.968104]  ret_from_fork+0x10/0x30
[    0.969110] Code: 00000003 00000000 00000000 00000000 (00000000)
[    0.970815] ---[ end trace b5339784e20d015c ]---

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>
Acked-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Link: https://lore.kernel.org/r/20201207170533.10738-1-mark.rutland@arm.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---

 drivers/misc/lkdtm/Makefile | 2 +-
 drivers/misc/lkdtm/rodata.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index cce47a15a79f..aeb960cb096d 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,7 +13,7 @@ KCOV_INSTRUMENT_rodata.o	:= n
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-			--rename-section .text=.rodata,alloc,readonly,load
+			--rename-section .noinstr.text=.rodata,alloc,readonly,load
 targets += rodata.o rodata_objcopy.o
 $(obj)/rodata_objcopy.o: $(obj)/rodata.o FORCE
 	$(call if_changed,objcopy)
diff --git a/drivers/misc/lkdtm/rodata.c b/drivers/misc/lkdtm/rodata.c
index 58d180af72cf..baacb876d1d9 100644
--- a/drivers/misc/lkdtm/rodata.c
+++ b/drivers/misc/lkdtm/rodata.c
@@ -5,7 +5,7 @@
  */
 #include "lkdtm.h"
 
-void notrace lkdtm_rodata_do_nothing(void)
+void noinstr lkdtm_rodata_do_nothing(void)
 {
 	/* Does nothing. We just want an architecture agnostic "return". */
 }
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319075410.for-stable-4.19.2.I0387622b15d84eed675e48a0ba3be9c03b9f9e97%40changeid.
