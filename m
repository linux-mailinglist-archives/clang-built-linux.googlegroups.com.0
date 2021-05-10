Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBH654OCAMGQEPUMNGZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id C73E1377E2C
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:28:16 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id i8-20020a6548480000b02901fb8ebd5714sf9864461pgs.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:28:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620635295; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NmKWFT9nMeGenKWxxt2Ei1zCk7AZlQE5Mdw+WNv+5xYU+1oVWw+g8qgzx6thcXcAq
         zJLOnDD6cZ/sVmOvLSzPx7VXT9PUDurHTaqBATcytNYsLKeyyItdf+f1Ar34xPlNFIFy
         fP5zDHE5mcZKIGovZpZKOlvpObOOKcRlpJA+WopwLB8Q+0l5IZQqPfYKStr69NLPC4tj
         uC6V5OBKHVp9mnaUb9h/0b8wM3zDFnzhUZtoqv6eMzDrz0gYavKC8wK+hXPoWTQuWk+b
         kfwRuJHw8Q8ZgYrXo8lOtiDYua1/r400GtPw+bGkrIG4WTPvyNUIbVJ/IPc9TsKggYuv
         LYAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=4d3kZwyosGgKoSAo+qKsbND5/cAGYGHFj89vCb2QarQ=;
        b=ISDKMv0PHKv7qbs7sUsbuAixZqdh73Vcvgz1v3NL4D72uXXhx1foNQQWE4v6CGzqEW
         I/rHWye73I/lCT6xl4xlYdr+U/W0ySlv6PlP4jYUFgF3AFw1nVo53UfL+MjJnVOVtCa7
         8C8HwrVok+S9NpN3N2qtbAyvRbvB7AP01YMfYiU/tyTU5H66/LLYU+pGenfStHLDBett
         PJjd9O4HouX3KQNwvDsQNAg15z0tOyldbsJxGy2nivBEB1bnh8QbpSfDAyoWbG64coIt
         xhPQaMmfUUmcsEh5aT66xpUn9sCMhhZuSHD0UhRtpCRON4WdGoC5mPVZIQ/coAKI6h8C
         UG7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FLJx4EiR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4d3kZwyosGgKoSAo+qKsbND5/cAGYGHFj89vCb2QarQ=;
        b=KYdNI9/zjqLDTX0jXvITTZcZRS2kWT7wOvYu5rpBOAMPA5eODktZAn5sGMk9JSfN0V
         /2CA6cxPOuNZP5n6RYGec29WAYvDYfDIghBj4ZOFGRHp+oq4HJJZOOpmRSXh/bx/w3O2
         5Cw83GTeD8zOhV0duy2yjmZDnbWYE5EFWNFyMZwoPsGecgf/6WPskn36nOWZPbgNClLc
         ZSp+Agl/9r1k2p2OO/JXKsK2hvnbCoFXf67OkdKppy5W33apkf7gU0bJ0OsBKEbZXQT6
         w2PBhQdJ7HLaBncrR0qvKrugzf3xmuzueEY1n0lvpqsleE5aJ5UGyw3aNgHLSb7NagBA
         IOvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4d3kZwyosGgKoSAo+qKsbND5/cAGYGHFj89vCb2QarQ=;
        b=ixRzftc9QAeNwBwtD2+5pU+WlayehDWh7ALYohQZqohJxSxgLAKtb3VI6oHGO8WyiF
         kWAGjbOj9Vi9QUow2iAZxgh2lUFfW4UXI5iSZmxJxJdRX+Nw4EJgrIFyvw3833F0GfiG
         1PAy/50651pVRSRyiZ2zj5MkKTc8WNLEBuCFSJJdBn7ulCepuOZbNHxBU83sd6R8rUMn
         8VdOz2TPnYMt4d/4MabW+rFL20p+8dfSPwkfAiWFKLqjMW60ODK35qxBWLbGSmr5qfGX
         djxa56KGq3i2zSULmFTvHAPhvrlCKUP1BFQ4XqgUon3+W4gNM/GvmhXPj/e++5vQ52VV
         fmIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533opvpH/d91V9FBqpQOmCliMf4Wigo4XmIE+g0v2epZIaLEkn6c
	X0BHPmLHqCAYVNa5YGCTXA8=
X-Google-Smtp-Source: ABdhPJwiC1rP7LvAzZyRByEr04OZ09yLg5YE+nW83ueri1Y4MtlgZWiREvrlh2vrWeKqMSa2heMxqQ==
X-Received: by 2002:a17:90a:ead8:: with SMTP id ev24mr39356657pjb.234.1620635295463;
        Mon, 10 May 2021 01:28:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d4d1:: with SMTP id o17ls7090849plg.7.gmail; Mon, 10
 May 2021 01:28:14 -0700 (PDT)
X-Received: by 2002:a17:90a:a2e:: with SMTP id o43mr38152092pjo.163.1620635294777;
        Mon, 10 May 2021 01:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620635294; cv=none;
        d=google.com; s=arc-20160816;
        b=rwCeFWptGpjC1kgxw/XpoKgTme/AjaOKDvcW7D7DwVsNc/DbggF998jH+uSC9+bGW/
         QtcsC+RdE6b40IlSSPHuUetIjYjTOtukq+G5lCDOm4QjkJIj7RkQGzbUkET2M5v+NeEO
         ZWcvWgULQtAKfPp+/0JDysi4hgnenUoBSzJRhge5o55vzNpmR6I1NinfVWuxzUTgvZFa
         kv8C+hYki3DVqQkAwaVloru8mdx/baS+0CiCw612pTuPlUia1vOPwSImQM9uqE5ypj9m
         ZEBXw6Q4sOawS4jAbz/aNCKEWhMz4cEHDLt41WMJpv/EEL3D2dO4P7tX8WK27acG7SwT
         fz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=l0jwb4u/CjIOxBHgW4nLHVtLF19en9O03ETTzcoet+g=;
        b=z47q8f2WrunZ768bazXEK93+nozlDEG9KRDYlLaEJ6RNgB6WVcNtB+4gQrAmCtOl+v
         +s/dWiYEEXlffikaV075B8o/aivM/2EiltqGPSC+hG6Qg9+TNSBufX/QfsiEeApiSd4u
         QDZ+ocbMQ2LobR1t9b8C6SSWFVfPfivUEMgk1of0a83EkYMiapWfQgmsuap04AkezxFo
         V9HRkbLWLBOtWzyUaTej5oy7QMM18M52Ntv7VCbsNZcP5WiZf/qNHZh4D+Y7axRhb7HG
         zZ/os3vp0rWp93YScDE65GAjHyr0hSDIzz8DDkYC5Rw36bsYwsrg/lYbOfOut+HABs8Q
         4/pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FLJx4EiR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j17si1229261pfc.5.2021.05.10.01.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CBD0661364;
	Mon, 10 May 2021 08:28:13 +0000 (UTC)
Subject: Patch "arm64: vdso: remove commas between macro name and arguments" has been added to the 4.19-stable tree
To: catalin.marinas@arm.com,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,jiancai@google.com,linux-arm-kernel@lists.infradead.org,llozano@google.com,manojgupta@google.com,nathan@kernel.org,ndesaulniers@google.com,sashal@kernel.org,will.deacon@arm.com,will@kernel.org
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 10 May 2021 10:28:08 +0200
In-Reply-To: <20210506012508.3822221-1-jiancai@google.com>
Message-ID: <16206352882063@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=FLJx4EiR;       spf=pass
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

    arm64: vdso: remove commas between macro name and arguments

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm64-vdso-remove-commas-between-macro-name-and-arguments.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From jiancai@google.com  Mon May 10 10:02:08 2021
From: Jian Cai <jiancai@google.com>
Date: Wed,  5 May 2021 18:25:08 -0700
Subject: arm64: vdso: remove commas between macro name and arguments
To: gregkh@linuxfoundation.org, sashal@kernel.org, will@kernel.org, catalin=
.marinas@arm.com, nathan@kernel.org
Cc: stable@vger.kernel.org, ndesaulniers@google.com, manojgupta@google.com,=
 llozano@google.com, clang-built-linux@googlegroups.com, Jian Cai <jiancai@=
google.com>, Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infr=
adead.org, linux-kernel@vger.kernel.org
Message-ID: <20210506012508.3822221-1-jiancai@google.com>

From: Jian Cai <jiancai@google.com>

LLVM's integrated assembler appears to assume an argument with default
value is passed whenever it sees a comma right after the macro name.
It will be fine if the number of following arguments is one less than
the number of parameters specified in the macro definition. Otherwise,
it fails. For example, the following code works:

$ cat foo.s
.macro  foo arg1=3D2, arg2=3D4
        ldr r0, [r1, #\arg1]
        ldr r0, [r1, #\arg2]
.endm

foo, arg2=3D8

$ llvm-mc -triple=3Darmv7a -filetype=3Dobj foo.s -o ias.o
arm-linux-gnueabihf-objdump -dr ias.o

ias.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <.text>:
   0: e5910001 ldr r0, [r1, #2]
   4: e5910003 ldr r0, [r1, #8]

While the the following code would fail:

$ cat foo.s
.macro  foo arg1=3D2, arg2=3D4
        ldr r0, [r1, #\arg1]
        ldr r0, [r1, #\arg2]
.endm

foo, arg1=3D2, arg2=3D8

$ llvm-mc -triple=3Darmv7a -filetype=3Dobj foo.s -o ias.o
foo.s:6:14: error: too many positional arguments
foo, arg1=3D2, arg2=3D8

This causes build failures as follows:

arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positional
arguments
 clock_gettime_return, shift=3D1
                       ^
arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positional
arguments
 clock_gettime_return, shift=3D1
                       ^
arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positional
arguments
 clock_gettime_return, shift=3D1

This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso:
Substitute gettimeofday() with C implementation") rewrote this assembler
file in C as part of a 25 patch series that is unsuitable for stable.
Just remove the comma in the clock_gettime_return invocations in 4.19 so
that GNU as and LLVM's integrated assembler work the same.

Link:
https://github.com/ClangBuiltLinux/linux/issues/1349

Suggested-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Jian Cai <jiancai@google.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
Changes v1 -> v2:
  Keep the comma in the macro definition to be consistent with other
  definitions.

Changes v2 -> v3:
  Edit tags.

Changes v3 -> v4:
  Update the commit message based on Nathan's comments.

 arch/arm64/kernel/vdso/gettimeofday.S |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

--- a/arch/arm64/kernel/vdso/gettimeofday.S
+++ b/arch/arm64/kernel/vdso/gettimeofday.S
@@ -227,7 +227,7 @@ realtime:
 	seqcnt_check fail=3Drealtime
 	get_ts_realtime res_sec=3Dx10, res_nsec=3Dx11, \
 		clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec_to_sec=3Dx9
-	clock_gettime_return, shift=3D1
+	clock_gettime_return shift=3D1
=20
 	ALIGN
 monotonic:
@@ -250,7 +250,7 @@ monotonic:
 		clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec_to_sec=3Dx9
=20
 	add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx3, ts_nsec=3Dx4, nsec_to_sec=3Dx9
-	clock_gettime_return, shift=3D1
+	clock_gettime_return shift=3D1
=20
 	ALIGN
 monotonic_raw:
@@ -271,7 +271,7 @@ monotonic_raw:
 		clock_nsec=3Dx15, nsec_to_sec=3Dx9
=20
 	add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx13, ts_nsec=3Dx14, nsec_to_sec=3D=
x9
-	clock_gettime_return, shift=3D1
+	clock_gettime_return shift=3D1
=20
 	ALIGN
 realtime_coarse:


Patches currently in stable-queue which might be from jiancai@google.com ar=
e

queue-4.19/arm64-vdso-remove-commas-between-macro-name-and-arguments.patch

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/16206352882063%40kroah.com.
