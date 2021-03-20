Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBRFJ26BAMGQEVYKFO7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 80220342B9A
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 11:56:05 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id da16sf33753142qvb.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 03:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616237764; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0+U1MQTqp/TTJIMYJXO3Fc8WVJZvc7E+aT5Gpj6zlG9qxQRvRJ4vxtclZYAV58HWT
         SrlEftxTW51bBbMaXaql4vMPp+gGZHjvgmumWL0nIjRoAHL1DQ+LQ400eri6DLJI3CSL
         CyjaxSK18UVDDOtFyieklHEVSkxr741RkeyVrUMOcMKlUP6/H1Gzd8rbxV1lCXULfSkG
         AClR8mc2nF3870FhzF0b8TJBCo/l3L6aDb9Y4e0yfROfxrvlsgMyDpvgTnwgw5sJADkZ
         Q5p+OkSUB5+D17fetMqzq07YNO+S6pdXl/Z5EtC+yXxpG9hIHp1tP6Ixu+oi4+VDmzGC
         cChQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=Jf96WrEgjBsSQQrU+1kkSevZ9nvYVjgt4esyD1VqT1Y=;
        b=OmAO0aWhT1gYON/kgD1TD8FPR/jfd2zg+c3/mCcy4olQbl9XOKXJQfNUQELbTv0Oxp
         wc5T30x8Hc2G1jPMxvBSgG/MmxwLodeStfVJeKxwlsaowbkuiH1XvkECPok4D/Fegs7q
         sJj4lqzb3C079HZ9fafdddsfuc3OD5qzLz1yCx/VoMvIbFPeh3r28ADeLSVkw00SIrM7
         +9JYiz4Jy94ODy7XKq59XvPhDiqmoEZLCIJ1IFt2AJz6fV4gZzWF9S+npt3PhEF52CUC
         +CJVp0zhq+Fh+zXs8wGgtYIDEhIupLBXHqBrd3ro9jfS4QeOh4lIEUGP3QW9QwHsCjyz
         rlbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=md+4TZaK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jf96WrEgjBsSQQrU+1kkSevZ9nvYVjgt4esyD1VqT1Y=;
        b=fMLKEZMBBU52NaQyBowkbcFpsRCxcWCHYg6ipl1PJ3psaq0Tn+ML1/ITIDsNLwzfkp
         GV2tKNrRiaveriXNhDuFAvWNfMC+G2jWXbybwZYsEClRpACm9aXbexIu3buECpI4Fjk9
         opL6iuUKdZ4Vmth4eu/NurnlaiiOvj3PAojb4dOZ6k8mAIau/W45u5XUVfA4HXsPfrLM
         ieZx0fEaDIWkEdrdJNn7lI/5/bGi0cklfLIlgebVZkOSlzfYU1B2dDufTeLHeWcRrMlE
         k9tKZyrB1m2VshpoSb6PDXyRAAMRa8Wew/qjeBhrMMhpxY3X5ITOpHlfPkZMQzmHJbcJ
         JNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jf96WrEgjBsSQQrU+1kkSevZ9nvYVjgt4esyD1VqT1Y=;
        b=tMFu+1y0/roxxzYZFRYYrsxtfsO/6MAvfpJNDhtFjXXkIStBoXy35pyTOMH3arxnRT
         E8ecM4DM8zVQeR5+TXgAB/lPfCct3xqTx6/d5cCC0/OoAEVtvPNF2yTJWAX3b4W7O9p8
         pCzpg4qmyXhPHRl5n1h1xt5qlsqfq5Xi5zvZ9dPYU12+vPEn+iEFYK3iwkUPO0aZetMv
         nON3yk6HBTCckbQjeqLdHx95m6mun2p+yBS6D/CMN/IlqaijR03ueflNAdMw8p5atk6/
         II5+IvoD6Szgvl5OwE8enn/8jl8Uk4+4ilagH0cAhWo3tTlQom0VuN0JLfSXMa0smj23
         p2EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532U7npKhvQX+toNDOGQkibAWfMbym0rMzg3AN3vdCiCtgWL5TH6
	wzb2v/ZIkfyowm+w+hXMvcM=
X-Google-Smtp-Source: ABdhPJwQDr+K1b09HKOUmy3bVAdpzm308jugS0h6G8Pgusals77dKrH1fKAQ8QzZlp1yYVxPn2yZZA==
X-Received: by 2002:aed:206c:: with SMTP id 99mr2519799qta.64.1616237764569;
        Sat, 20 Mar 2021 03:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls4271346qkx.2.gmail; Sat, 20
 Mar 2021 03:56:04 -0700 (PDT)
X-Received: by 2002:a37:6191:: with SMTP id v139mr2507840qkb.32.1616237764058;
        Sat, 20 Mar 2021 03:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616237764; cv=none;
        d=google.com; s=arc-20160816;
        b=Ap8U2XbaaekOxjVAp3Nb9CNy8+xgv1zCYP6wBdyu3FguFQLoqgFLqH+a5PwvrbhPay
         QQEAWKiyBnquppYs6iyBCZoAtZKx3Z0yR2pZHgZhXxRu1gduKtJJg2vgdG/1GcXhoDHz
         V9AU4gPlQS6sTIY0i/Bq3XGnD7OWeuiMH/6AWrSucVP4fnEcgY4rZQitLWIPUy5qZp94
         c/yk/z2qhkrktvgwPrcMpnVdtAFGmxEWsz6BS8mQwooshGFfGjOmJC/c9nnRNpOR0Q5H
         civvNWQtbj1bTeEvdivMGNQYmoLCUemF5HtinkfMqpGrpDA8ctxvvs1GSKpkEK6rfIja
         wcwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=OuG6CCj2D682scBKE+ftw23TaV4ZS+QpjOajaJzIWzQ=;
        b=Zjl79tSsJvjR7k9Dg0fsk0kPBz2pc3xzhBTdNWsBJii38vX7aUnMspoK8G2xK7eT8o
         HcBT0bWHUwP/ku6VeYaT86AB4dNKRXnSj4+9n6KOhYnnG9rXCcv4QDx9XZmP7Jc3TT5g
         0sKBdB9Msq6hr0ZxUkI99r8wVVBJ+wSnLdzcRt2OIPNknVT9sWsvyP+o2FXgylpxrSXd
         7AJEjvgRZaNa7PNk1uT6nzZI4/ACDCiRHyl0afpmEYSJvpRUjaxVtIJztjXgb7p/p3w+
         FG1QRZUx/peKtOS/LxgyRDniQplAAqVweLOYLFgAD/fWhDvL3fFWLCiZoBFxk/ZGkGAX
         H6ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=md+4TZaK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r26si92077qtf.3.2021.03.20.03.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 03:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 65EFC61A3D;
	Sat, 20 Mar 2021 10:56:02 +0000 (UTC)
Subject: Patch "lkdtm: don't move ctors to .rodata" has been added to the 4.19-stable tree
To: arnd@arndb.de,clang-built-linux@googlegroups.com,drinkcat@chromium.org,gregkh@linuxfoundation.org,groeck@chromium.org,keescook@chromium.org,mark.rutland@arm.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Sat, 20 Mar 2021 11:55:59 +0100
In-Reply-To: <20210320121614.for-stable-4.19.v2.2.I0387622b15d84eed675e48a0ba3be9c03b9f9e97@changeid>
Message-ID: <161623775990245@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=md+4TZaK;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    lkdtm: don't move ctors to .rodata

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     lkdtm-don-t-move-ctors-to-.rodata.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Sat Mar 20 11:54:47 AM CET 2021
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Sat, 20 Mar 2021 12:16:26 +0800
Subject: lkdtm: don't move ctors to .rodata
To: stable@vger.kernel.org
Cc: groeck@chromium.org, Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann=
 <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kees Coo=
k <keescook@chromium.org>, Nicolas Boichat <drinkcat@chromium.org>, clang-b=
uilt-linux@googlegroups.com, linux-kernel@vger.kernel.org
Message-ID: <20210320121614.for-stable-4.19.v2.2.I0387622b15d84eed675e48a0b=
a3be9c03b9f9e97@changeid>

From: Nicolas Boichat <drinkcat@chromium.org>

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

[    0.916359] Unable to handle kernel execute from non-executable memory a=
t virtual address ffffa0006b60f5ac
[    0.922088] Mem abort info:
[    0.922828]   ESR =3D 0x8600000e
[    0.923635]   EC =3D 0x21: IABT (current EL), IL =3D 32 bits
[    0.925036]   SET =3D 0, FnV =3D 0
[    0.925838]   EA =3D 0, S1PTW =3D 0
[    0.926714] swapper pgtable: 4k pages, 48-bit VAs, pgdp=3D00000000427b30=
00
[    0.928489] [ffffa0006b60f5ac] pgd=3D000000023ffff003, p4d=3D000000023ff=
ff003, pud=3D000000023fffe003, pmd=3D0068000042000f01
[    0.931330] Internal error: Oops: 8600000e [#1] PREEMPT SMP
[    0.932806] Modules linked in:
[    0.933617] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.10.0-rc7 #2
[    0.935620] Hardware name: linux,dummy-virt (DT)
[    0.936924] pstate: 40400005 (nZcv daif +PAN -UAO -TCO BTYPE=3D--)
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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---

(no changes since v1)

 drivers/misc/lkdtm/Makefile |    2 +-
 drivers/misc/lkdtm/rodata.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,7 +13,7 @@ KCOV_INSTRUMENT_rodata.o	:=3D n
=20
 OBJCOPYFLAGS :=3D
 OBJCOPYFLAGS_rodata_objcopy.o	:=3D \
-			--rename-section .text=3D.rodata,alloc,readonly,load
+			--rename-section .noinstr.text=3D.rodata,alloc,readonly,load
 targets +=3D rodata.o rodata_objcopy.o
 $(obj)/rodata_objcopy.o: $(obj)/rodata.o FORCE
 	$(call if_changed,objcopy)
--- a/drivers/misc/lkdtm/rodata.c
+++ b/drivers/misc/lkdtm/rodata.c
@@ -5,7 +5,7 @@
  */
 #include "lkdtm.h"
=20
-void notrace lkdtm_rodata_do_nothing(void)
+void noinstr lkdtm_rodata_do_nothing(void)
 {
 	/* Does nothing. We just want an architecture agnostic "return". */
 }


Patches currently in stable-queue which might be from drinkcat@chromium.org=
 are

queue-4.19/vmlinux.lds.h-create-section-for-protection-against-instrumentat=
ion.patch
queue-4.19/lkdtm-don-t-move-ctors-to-.rodata.patch

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/161623775990245%40kroah.com.
