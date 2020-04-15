Return-Path: <clang-built-linux+bncBCM33EFK7EJRBIVV3T2AKGQELZUXYJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 535101AA9EB
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 16:30:59 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id r18sf647420ljp.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 07:30:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586961059; cv=pass;
        d=google.com; s=arc-20160816;
        b=By7VFj8P5CfvCGcXi2MsrVSIlpLWLZAD7wpsgOaiurpFDCWnoVWagObm/UpMplpynU
         t8pAFlG39ZL6CIgh+noPwfNjcnrg9pj+OzsnT5cH/GYuHZeLvAjILOZ3wiWWJc2JlpCS
         QHgVlbcFzQ8J4LwdasUJ/mMg06mKZ9H+vLX1rsJpHNx84XMCJ6pYaijOpgTDA0WsoRcb
         z7SSWDD55YmHOuB0u4mpSEaYYXYJB8G5dH/hHvn4nrrGdJArUMmNNzwCgVAPhCsuKAF/
         +BraVdSor1PmCbsme9olHOgdT5+k1WrFy8U/aPbEkflXln3PNQyyma/sp2e9X+75MyOC
         gV9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=nH1hjOapXbmsh9HFSmnZZyAP8pTTS4cGUEdnXYMRDs8=;
        b=TOviEcmTTO+boVQ8gj1BFFr9xWNsEEPuQ5i9BVqCGv8MCJolIEQLagKPM7Y334U+l9
         ePqyx4dPfTEXP2iTwioc/IhDaCtjidqTApYrnOAAGJwMz9Vip7u7Ic4eyZ7xJGYoa3nI
         ywTqwDc+QFj4punKf0Ik8h1zyuSWnfp0ymIJYxsOjSzh0smDorZG+jFBXBeG8vXnzAxD
         jVz/zIBFELZ6CmTmaU2mtt6Fn7VtrJM7QHTxo71PDyEi9EjQz1CYbMC1CjpnF/l5MwBn
         LvkBN0r/QjlT4tSsFaszDi476IHTyUkLEa1uNkM00LP2ubpOb3c6lcQZ+a2qI55bSN9L
         /Qpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aI+z+lZq;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nH1hjOapXbmsh9HFSmnZZyAP8pTTS4cGUEdnXYMRDs8=;
        b=tB5foZOKP1YpFIqooUd8mMkDsdUcdJL6J37rNTS2G+5Noe+rjSfPhoOxFN90NSJGZL
         7k7UnfU+uGS0jBzRngZTzFFtzdAm8Cg4sak5iee9Yq1HLgd3IQ1T3yrvioIpcokEmC/6
         htmNbESH7lx+MEw0hqJJnV7UY/RLl79Gc/ZL+8mT94RXzKDH7Nm9SRGnMT7ixbBs/bO5
         0LsfJRoz1TjMjCGJ73SYKTMA93FE8ROEKYenVqr3so4ApnMV1lxkNexJIuxtMT0PvnVI
         py6/FZeld/YwriItl0IQ2XK96mRWSbXLyqiN4g03BZ0PcX0ut+LEQkm6mRygZuMueJj0
         hv+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nH1hjOapXbmsh9HFSmnZZyAP8pTTS4cGUEdnXYMRDs8=;
        b=IR5651KuIgxYNWoTyGBYfPodEDvbarjk02yUUybZq6XCkxmfWve3bq43OuZ8220x8q
         EcIDNgJq8WphQbtyVPqRv3t01VxKITL1hz1l9d0JaQJUj7V4ADShMkYOBr4nVlfQJ55q
         sufNYiuKDT3EQihfMOf+dm83RVTe+m2bEuAQC5/g6sSN32wDlmNVAejHi0zYE8HVU+MH
         tApMAIgmrxnakFLpDRz8CEBM4C0T52+cPfKcf3pSoOhRPJ95LfiWZjXMhIJlPlLM2WP4
         9LLmVr9Y3il7cpkGRJQ7zn/Bh3j6paDyfn7aoI1/eSXqyRIfgrCGHOLruy+GaTQlsfY7
         olGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nH1hjOapXbmsh9HFSmnZZyAP8pTTS4cGUEdnXYMRDs8=;
        b=YR9KVq4qLAn57DAVwzE+vlxSMA1fJaOJXv2Ye4v3QzWDPA0tEOUDQVoecmLLWXIJOd
         3X0LoyAfxeVXY5Nhw/ylFdeQQ/k2si7vsYVnC9FzkEE/yjuzCV60UvTEnITwP7q/Mvpm
         gKLo7eqr/2+tov4XsuZhmseBk57xDrJbXlEUwt5SetabD7dQnI8xR5ib0SpJPu+tgWOR
         dCaMiR6cWeousRw8wjfNw7PrTxgVM/QPEx0ClnMY3Lse3pYsiA6PKyfnoyMA/a3KC/jK
         y31EhdAFRuQFKRUSpM2EVkgMr7d/a7MK9FvLQR4JuzG/8gjSxHxVlaOqndw584JpUUCB
         aBrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua0+d5C3df3o4U4bJRx7q8Qb6Y8spawBSCQzWgqKcnKDnhkX0tD
	7Uq/YrV7m5DHk7QBhNeRLtQ=
X-Google-Smtp-Source: APiQypIuLdST/VWGRzTDLec3JfICvgwedf/fONWxfbyhsZUjt5TpvGAStYVshc5nNq7Tley6WC3rYg==
X-Received: by 2002:ac2:53a6:: with SMTP id j6mr3299602lfh.153.1586961058849;
        Wed, 15 Apr 2020 07:30:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5186:: with SMTP id u6ls1012460lfi.5.gmail; Wed, 15 Apr
 2020 07:30:58 -0700 (PDT)
X-Received: by 2002:a19:5f4e:: with SMTP id a14mr3330792lfj.57.1586961058039;
        Wed, 15 Apr 2020 07:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586961058; cv=none;
        d=google.com; s=arc-20160816;
        b=P6z2oOl0LcsmFZ81emxKLDAjwV9ZuN/1mWASDExil8mMctuB8Pk+N62r092pLELWG+
         tHU+iFOyLnQXDd9AhGXs20x7ZmirQrJ/B1TQU0fpEelffEXwjOMWQcr/HUsh9yFYRO//
         lUTcUEAwrPKl8J5SuXVRfSlC7+PJSyJRkUHX0dL92TcblTQhuJ04qrOywUZOiwgvOKhw
         k1AAxbg37qGfbmLC5iF5fLgSWa0Vvb2qcb+vwRv/odWndp0+1Fgxy0kd6UrPr7MeE5aH
         uHxNuRUOAlhOv1UGSqyam+vK3A3Sp2w0pVZ4yjvpEoWMkuL5Lft1bmhDE3gKnBFaZ08E
         GF0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WVkuuzK4PgjgPcUecDamfN8lzj8+MFn49CFhMsiWU1Q=;
        b=qJVr4TFK0X4+b5LJEZnnDhi3TiDJFpqW6jyOeUWoKny7J1mVkWJzG/kw0jSzzwTItQ
         ID4OEqLTp1uZW+x0Tx7xbd2k8D0mqkQBEblf7fIZYQDOo/3TtyZmTwS0fporpqmvdkb9
         ub0luQSBL39iqEPrdZh6sYobgAvBmi2u9fyWyCnSCGrzqGIwg3rvuzS1J8z8l4CSSQq1
         I3Ht1ju5DmY7nDkKEqUhoHfdEgj2FLDB6k9mHHKcXAO+ZuSCG8oUxAc1+uaS77md3lCY
         //qSwjTYxrILsmdhwncpCrGYQMNqJzSolmhl9NIJv6mHX08JRp/OTEEMdKtxaj6OCaFR
         vDbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aI+z+lZq;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a12si140203ljm.2.2020.04.15.07.30.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 07:30:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id h9so53274wrc.8
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 07:30:57 -0700 (PDT)
X-Received: by 2002:adf:9564:: with SMTP id 91mr30246242wrs.246.1586961057372;
        Wed, 15 Apr 2020 07:30:57 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:d5dc:b247:cff7:f693])
        by smtp.gmail.com with ESMTPSA id x13sm11679305wmc.5.2020.04.15.07.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2020 07:30:56 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-riscv@lists.infradead.org
Cc: Fangrui Song <maskray@google.com>,
	Jordan Rupprecht <rupprecht@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Mao Han <han_mao@c-sky.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] riscv: fix vdso build with lld
Date: Wed, 15 Apr 2020 17:29:58 +0300
Message-Id: <20200415142959.25673-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aI+z+lZq;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building with the LLVM linker this error occurrs:
    LD      arch/riscv/kernel/vdso/vdso-syms.o
  ld.lld: error: no input files

This happens because the lld treats -R as an alias to -rpath, as opposed
to ld where -R means --just-symbols.

Use the long option name for compatibility between the two.

Link: https://github.com/ClangBuiltLinux/linux/issues/805
Reported-by: Dmitry Golovin <dima@golovin.in>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

---
Changed in v2:
  * a comment line dropped, another one slightly reworded
  * added Nick's Reviewed-by
---
 arch/riscv/kernel/vdso/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 33b16f4212f7..a4ee3a0e7d20 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
 
 # We also create a special relocatable object that should mirror the symbol
-# table and layout of the linked DSO.  With ld -R we can then refer to
-# these symbols in the kernel code rather than hand-coded addresses.
+# table and layout of the linked DSO. With ld --just-symbols we can then
+# refer to these symbols in the kernel code rather than hand-coded addresses.
 
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
 	-Wl,--build-id -Wl,--hash-style=both
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-LDFLAGS_vdso-syms.o := -r -R
+LDFLAGS_vdso-syms.o := -r --just-symbols
 $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
 	$(call if_changed,ld)
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415142959.25673-1-ilie.halip%40gmail.com.
