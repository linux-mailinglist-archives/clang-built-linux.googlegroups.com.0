Return-Path: <clang-built-linux+bncBDGMDAP5Z4HRBKPO2WBAMGQESTRJ4JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 558E0342A57
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 05:16:47 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id h21sf35430703qkl.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 21:16:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616213801; cv=pass;
        d=google.com; s=arc-20160816;
        b=WPUoJGqmj2Qc4pitFOAUBTZeFNS07UN96z8wH4HCF92jYLSn+mE8Fql+4/9TzyzlGL
         V32FxU/j+oDfZkKdcA3RHU+MdN/X2S50rI7ygG2m+Ji7a4kc0J8tdOFhxlEze81r07yX
         vCrxkXZKTDGTgVHG2jjsWCQ61ecwM1XvkI1VZvCzJdj9A6r050a5MffbQM01aGri8ek2
         rqkTF5IiuF61YiiZDKp/KGTV9X+kJvQ8A7HFCmduzlEq9p25PFI7u4UPaTcvVsv0Ipnb
         joIPjgmbhGFvoVbpr537uAuH5bCPRnVlQreJOOCnUpz6tJNqmEOk3gqit86ivsqB7qCZ
         Hy3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=om6ahey0ajdzJIszFqmA93qKDCFyk6IiOZ71AGmrwtA=;
        b=ZC4wDA/ywCDboVn+n1FcILXg/Iz+fr6U7F/iTPn+vS7pOjke0Dgx2PuyaUE57+pEhQ
         t3YCmdxPaY29zkYvxcH/syaOSPCKYO4GJtGLdHhgQkKR79YR7fXHSJUMgItsOvZQjoiV
         HNLseqbrUBT2pLZksxbOHECmgoiYHq2Giq5XiprYeAJif2+I5tPUkeolCLn2y2oQZN2Y
         mFzSmNmPyhiwBs29JoBSBf78KQKlBCoV11I1YxnkrSflRPMPPTal2kPANgY6d3svM8aS
         cF0tJ6ePxbhgy2gHPJEAUnSSWtIVLljTuyVMYzmupEtvZrC6LZ17eYVTiZl3pFMwoRlt
         OYsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GaR+AlXS;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=om6ahey0ajdzJIszFqmA93qKDCFyk6IiOZ71AGmrwtA=;
        b=ogDbUaRfPleWWw+0c7uIdZEZ2M7ZQ6LFvmHmcTgp+57zW6ziVepRv9M81AVLYNbBVf
         z4c2YjJqf4HY9nwR+CO+QFg2WN9xcHCHdF12NfzKXLdYCHrnNWtXRt3NysVFLPvBjEeG
         51ZvykhlcjizDFZGy7o0tvL1IUjm4jLHmOaRBf7WcbFXqR2EUXK8WNQp4ydi2cKgddq+
         rrGLZE+bRFwWZgmIAlRCqLQ4m14geDt/TbHKJv7f3bA8vXuLUlyOZPc1cxNHT7DA0ExR
         QWfTE454lKgOkapf2sO6MneJ7qCTjo5hs1XB7FCdhpwsHjVknZpo8vwwLjVKWWp5Zmsx
         EFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=om6ahey0ajdzJIszFqmA93qKDCFyk6IiOZ71AGmrwtA=;
        b=g5z48AKdGJGAOQ90zUHQF1nQKsMEYbUrKiNe1xtVfPWEfMFDVS8S6LeCNXW3k7iaEg
         a/DfamMgTHADg+FM0CfFe6KuuGiufzrHpTWZumpG9e4yVigLWxT3ZXOxZCcxNVyaJ+d8
         /yEGyH5aS5+acNiGf0dVOVPRO7QOafr9tLIzm2NbsVwxFY/aC/2PVZKJCV1jbsKnw/ov
         scSkam0xOwnMA0MdfPyA0TvzSzzYcMtqy8IfqToYNN7rij0u+9Vjo9YLDiG/pCmCd4df
         cxlUyiMQT4B1tcVrjYSq+ECEdODbkxcshOoKR9sAl19UboUo5uQNhDxOm56TrtFdVB5i
         qRSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532W17c8z/mzNZ/Kg51myq1SpSVFcl3QbvOi3jHhCpUt13vAt2Y3
	4FYNhQytOmiud3/WlD95rck=
X-Google-Smtp-Source: ABdhPJw+akngm8YwlIarfhDmVkSSBgvRFuZ1fFcHVas+hgmlwGveeQtHt7lzqgc86li+FPw8gQKhYw==
X-Received: by 2002:ac8:45d7:: with SMTP id e23mr1621238qto.107.1616213801416;
        Fri, 19 Mar 2021 21:16:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56ac:: with SMTP id bd12ls1974533qvb.3.gmail; Fri, 19
 Mar 2021 21:16:41 -0700 (PDT)
X-Received: by 2002:a05:6214:f6d:: with SMTP id iy13mr12189920qvb.24.1616213801062;
        Fri, 19 Mar 2021 21:16:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616213801; cv=none;
        d=google.com; s=arc-20160816;
        b=Wbbi1LCuef6TTOw5ApYIfqIo4TCHGBH3rE+twaGOASL5D3x7uwFB3CTNYIt+xTmkDN
         p6Xt7n4GwJuOSVhTUKU8msgA/3G+gXEZNQKEqCeWQYFF1K1xKZfojal0l7zSz9SLhj04
         BXr1OFUOeV1jBXAY4pwjfxbt/XAP7f/7ur2Wyij08e4vQ/Bo9ZVnzFx8YOsSbKEIkb92
         7859TeSYvBs0+qwUBhnRYrADHYXnOFCiW+9xvWY+K2qLzKPXKVYJNTy9FuzEU2B4Hez6
         xBfY5cf4EyTY7St33B7L+MFykZNQq5EWRCtkpi40VtNNddp1pScZStSWNivrepL9EwGw
         JHEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ouW7w1tJWbMBvkhdIE4FNoeWEk82Uxbfl+Y1tFiGtH8=;
        b=tCFkXnOF3CQh73sZKaM4K/SALSkKUdHUjsuiSdZR7MF7wUe4zvcQNciHabYNEeFl0L
         +Wl0OsU7SHP707CawJT/4RygwYXfFUfWUR313sQXir1YiKVC4xK/4vGH9+ypKBfR4Y4n
         pSSuuPioeqtabzr31YjrZi+gbfwBaf1UAcbz/sG72Rc+HEqAKIQ9FX31X/vVggRrSr7h
         ald0sDnVLDlgJBBK5r1YeUeGwMBkW4Mq//0vTvNHEl6ZJUYcUk7Y2q8Sh+UFRbGiFvS+
         aY+Nc2iHVJPmB5SVSlGRXwPRejzPRM3Rr55xZ74Jeph/ljBnzZyrT7TacJViyS5zSzKJ
         9w+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GaR+AlXS;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id f10si293548qko.5.2021.03.19.21.16.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 21:16:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id m7so5007992pgj.8
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 21:16:41 -0700 (PDT)
X-Received: by 2002:a62:7708:0:b029:1ee:f656:51d5 with SMTP id s8-20020a6277080000b02901eef65651d5mr12471549pfc.59.1616213800520;
        Fri, 19 Mar 2021 21:16:40 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:f0c7:e1f7:948e:d8d5])
        by smtp.gmail.com with ESMTPSA id s62sm6998869pfb.148.2021.03.19.21.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 21:16:40 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: stable@vger.kernel.org
Cc: groeck@chromium.org,
	Mark Rutland <mark.rutland@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nicolas Boichat <drinkcat@chromium.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [for-stable-4.19 PATCH v2 2/2] lkdtm: don't move ctors to .rodata
Date: Sat, 20 Mar 2021 12:16:26 +0800
Message-Id: <20210320121614.for-stable-4.19.v2.2.I0387622b15d84eed675e48a0ba3be9c03b9f9e97@changeid>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210320041626.885806-1-drinkcat@chromium.org>
References: <20210320041626.885806-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-Original-Sender: drinkcat@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GaR+AlXS;       spf=pass
 (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::52a
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

(no changes since v1)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210320121614.for-stable-4.19.v2.2.I0387622b15d84eed675e48a0ba3be9c03b9f9e97%40changeid.
