Return-Path: <clang-built-linux+bncBD66FMGZA4IP3IG3RADBUBHIZOPQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6513EBD0A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 22:05:18 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id bf27-20020a056808191bb029026778435932sf4887059oib.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 13:05:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628885117; cv=pass;
        d=google.com; s=arc-20160816;
        b=GKdZQSHPwAf4G9Qx+dwk61QXAyY91SkyiVWtA3qQTuaoO8/7bHx+KTfgDacSMFeaIU
         rmnKidqAhGK575JleqvCeFCPOd6AY0NziYbayt398bJOX8SGc3h/zZ+oOAj5eO9cEP/7
         E9xIy39VQj5AfN/A4uCiH2ICiZx4FZOUtyfrPOh/qRlxZrRq9+dGNmCTgkpktI/J5Qqh
         6tK+XAyYVI2Vcy5vX2VLbIOK8nTdYAEKorVUz4FOrFXtPcWWq77gi6txxqvc/k3aItJq
         8eCv3KEbbbNEiV3exMSd+YxJw6fDkI583OAWZHQcrC+1Yocezjq0N03gJuDfwuxfjsDb
         m8yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BKaUmgxHRwFCWTwTpGP/12Hv8d9mqpJtK7ESmEX4mGg=;
        b=LWJP06s8wFNNC2rmb4TMEaAlWw2/7J1xnimhc968Xtu3066UJCs3SlCVbafgjMDM+c
         PLrdpFVOEg4j1DXV7GRXaKbuQRxEno+L4ycjnkANhGZFhAK7slf0P4yg9Eew1JyioBq7
         lL+ji+22hzOqZQNYQ2FPeUjiWWnG+aQesKMmtxRbyuWQMYeQACzrpyAmM8rMb7y0X/c5
         NGb5/JkqbwmTBIe2Kofsj1CI9ik0X+aVRDTgSdoWEmMeJdiiL6r+zwqcA6hM1gqpXyr+
         nhorSfpqX4JF1rYoMpAO3Ln7S18GIYdhO/iBEmNPApOT/tNtesMa1ADi+DVgoOjQ7CUG
         Im5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tDG79y8J;
       spf=pass (google.com: domain of 3fnawyqukeycxz2mzrzzrwp.nzxnwlyr-m5tw4-wty58rzzrwpr2z503.nzx@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3fNAWYQUKEYcxz2mzrzzrwp.nzxnwlyr-m5tw4-wty58rzzrwpr2z503.nzx@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BKaUmgxHRwFCWTwTpGP/12Hv8d9mqpJtK7ESmEX4mGg=;
        b=Z5uQHYzr2lIaFmSaeicwpa7XPNP/zuN4fmgE/GZUE4BJxGdVzGviec/X0xgjwl2gtq
         jhkywnN+SSroPtBUeQG7iaGK3ozwu33vxQk+gcBvG9Zyy7Sx0rAxJpAGKgu/zxBcsmjb
         dQIMksFjRPascLgdVeQsBJe04vfhd2w3+QH+iLBdiK7MFnyv6zoI5741gNBcRFAnfkeW
         D01FtjUL/kZ170VCszmGpsog1IEZo845iDGpNiO1VTe1bQO8yMVpqSZ8Xj/VQAPEXbko
         DjWfQL8UR0qOhNUhpzUtA6y/UP+vRWVkrt/cEBIu3hkiTGD4Cy/G3GKOKx8TtrtfAm50
         sclg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BKaUmgxHRwFCWTwTpGP/12Hv8d9mqpJtK7ESmEX4mGg=;
        b=pxO/UYFq8W9+EHCSHoQivWYSyhhwfysP9/GpeOvgUH+y8J2k3IvXSUTKzael/3AvzD
         fN9SvDENeCrNVFcuEKVTJaKRkYmZaJ9KdWxH7+ODaa1aZYJxaKRP19uDknI3jZ3unaWk
         UY8HsVkw7/Tgv1cEb2h0BAJ52olHlEjQiKmiFPpibF9gy4oyaSPp/ncS0eFJMm6IkzM0
         7j0WxgNjAqpjbWW8K6VY4ryOnyW4gF7yHtloH+fjACqxHZeXM06uE0M4iMvUZuHo+z+c
         +94qV1fXDGFojqPw5fyj3W7wsxIpkli8b8FPN+2ja9bb7cAKxEGmpGOqUwdeHZy/iAMS
         EZGQ==
X-Gm-Message-State: AOAM530SqDGqBSXkFsdlsbDbzdJnD+VZuDg63PeaQEXjkc0gGYItbX6g
	xrDGtrI991fB/HME6BKIIcA=
X-Google-Smtp-Source: ABdhPJyfksNL3pWOFWi1SY8e71uFjuorl3Bvz3OUPl1ZjicDd7nJbCy8uyPKEVNbdvFJzwcF9z31fg==
X-Received: by 2002:aca:f103:: with SMTP id p3mr3471435oih.53.1628885117279;
        Fri, 13 Aug 2021 13:05:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:1688:: with SMTP id bc8ls143780oob.0.gmail; Fri, 13
 Aug 2021 13:05:17 -0700 (PDT)
X-Received: by 2002:a4a:3956:: with SMTP id x22mr3080441oog.77.1628885116931;
        Fri, 13 Aug 2021 13:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628885116; cv=none;
        d=google.com; s=arc-20160816;
        b=YPZKeVL1HcEKClq3icntPCRIAkp5oUgZaRcBj7AQkNSW+Zm3SXCC7AYNOAYNLbEC7t
         wMGlUuLGTcpjlttXvyNi/5P+f3c7TmYQcfu13VXsdziE+UhVQdiUFXYBj93WJguwhbtg
         rxLGw/5ClagmgCmoThbY1y9b8qH+FqFSIuSjML8VUkcA9cujdLJyepTRJwGCl+g9ac1W
         bq0BZThYjffckveCDEnl/KWFaAJhsBnZLw7y0VRixJwHm7QLpWHdaRgqcoas8uib0HY/
         t3+r2HfgKx9UzhnfVx9PQpEhvv865SVC9kw0DysMX1lJMDRuXTcxb+UeKS2Mcrk6KxRp
         rzSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4EYkfl7u3c0fe6BZm+nywHzPnvU49Nzp4mTk0DIT6Qs=;
        b=fNv++n87glPlYAZJT+ifFPeBgZCC2CIWeNzIbh6glk0HX0a3LfOqaSeQ4D7VbRCTZ4
         coOabPzE02kxlgQKhfN0QwmedoTKxz0vS6UfejXZtJ2bHmwl9sx//rPthnKaqVu6+BTW
         dC/pCdBczBMveaIwS3zZNP8+8OwOISpBV6AVHxC4yw0hiD8egPi45ZnKCTVylY+c2U2e
         Vsi3juMpb7tMD3xHRbvQFGPex5f24K6vfhP1lunPBCoVbQYeMbXetE0NkoGKNkf3tD0c
         dWkdK4G1DgO+UVM0iFpdWcI/q3EBEyMAH/w6QCHlplWm/rU52hstQrtngSYIYn34qU0b
         9jnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tDG79y8J;
       spf=pass (google.com: domain of 3fnawyqukeycxz2mzrzzrwp.nzxnwlyr-m5tw4-wty58rzzrwpr2z503.nzx@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3fNAWYQUKEYcxz2mzrzzrwp.nzxnwlyr-m5tw4-wty58rzzrwpr2z503.nzx@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id p11si221328otp.5.2021.08.13.13.05.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 13:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fnawyqukeycxz2mzrzzrwp.nzxnwlyr-m5tw4-wty58rzzrwpr2z503.nzx@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id x5-20020a0569020505b0290592c25b8c59so10167488ybs.18
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 13:05:16 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:47b8:ed1f:f8e9:a664])
 (user=morbo job=sendgmr) by 2002:a25:bb13:: with SMTP id z19mr5539560ybg.347.1628885116494;
 Fri, 13 Aug 2021 13:05:16 -0700 (PDT)
Date: Fri, 13 Aug 2021 13:05:11 -0700
In-Reply-To: <20210812204951.1551782-1-morbo@google.com>
Message-Id: <20210813200511.1905703-1-morbo@google.com>
Mime-Version: 1.0
References: <20210812204951.1551782-1-morbo@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH v2] ppc: add "-z notext" flag to disable diagnostic
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Daniel Axtens <dja@axtens.net>, Fangrui Song <maskray@google.com>
Cc: Bill Wendling <morbo@google.com>, Itaru Kitayama <itaru.kitayama@riken.jp>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tDG79y8J;       spf=pass
 (google.com: domain of 3fnawyqukeycxz2mzrzzrwp.nzxnwlyr-m5tw4-wty58rzzrwpr2z503.nzx@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3fNAWYQUKEYcxz2mzrzzrwp.nzxnwlyr-m5tw4-wty58rzzrwpr2z503.nzx@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

From: Fangrui Song <maskray@google.com>

Object files used to link .tmp_vmlinux.kallsyms1 have many R_PPC64_ADDR64
relocations in non-SHF_WRITE sections. There are many text relocations (e.g. in
.rela___ksymtab_gpl+* and .rela__mcount_loc sections) in a -pie link and are
disallowed by LLD:

  ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against local symbol in readonly segment; recompile object files with -fPIC or pass '-Wl,-z,notext' to allow text relocations in the output
  >>> defined in arch/powerpc/kernel/head_64.o
  >>> referenced by arch/powerpc/kernel/head_64.o:(__restart_table+0x10)

Newer GNU ld configured with "--enable-textrel-check=error" will report an
error as well:

  $ ld-new -EL -m elf64lppc -pie ... -o .tmp_vmlinux.kallsyms1 ...
  ld-new: read-only segment has dynamic relocations

Add "-z notext" to suppress the errors. Non-CONFIG_RELOCATABLE builds use the
default -no-pie mode and thus R_PPC64_ADDR64 relocations can be resolved at
link-time.

Link: https://github.com/ClangBuiltLinux/linux/issues/811
Signed-off-by: Fangrui Song <maskray@google.com>
Co-developed-by: Bill Wendling <morbo@google.com>
Signed-off-by: Bill Wendling <morbo@google.com>
Reported-by: Itaru Kitayama <itaru.kitayama@riken.jp>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
v2:
  - Assign "Fangrui Song" as the proper author.
  - Improve the commit message to add more context.
  - Appending tags from original patch's review.
---
 arch/powerpc/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 6505d66f1193..17a9fbf9b789 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -122,6 +122,7 @@ endif
 
 LDFLAGS_vmlinux-y := -Bstatic
 LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
+LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) += -z notext
 LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-y)
 
 ifdef CONFIG_PPC64
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210813200511.1905703-1-morbo%40google.com.
