Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLXUXD6AKGQEW3WAURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EB42932A1
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 03:15:28 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id z12sf205726qto.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 18:15:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603156527; cv=pass;
        d=google.com; s=arc-20160816;
        b=QNkN8XZ3AecXjFnSQsrmOjaU1OyBav8+MBsanf4xQoBffiOJBem9jl8T3zBs47gMNy
         q1wdVk6osFkrjt7M7o34zSrVhe1jlc9AMEVWkHdLYsramguAFpbQiPf2T+BuSaQX8g6o
         YCuKxVO/EACurGkRQl1TYc+6SArqwqYNdZER7pX3/jaQRUJmg7vQitaK48ibXNMPzTjQ
         QWvghatddK0gYNpjNq8Vs+Fa4KRpnalknOr52WIa+I4Vdg2iHz6XdwsfhPck2683XtJJ
         OIy6ayPMD91yZFY+P3Fw9iTmshhsPVCMPbbVx29bQez4O62TLdvr1avOBbqPoz+WOOzm
         gcgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=D94ShghPONK+QRd8Ww0DJ2ZkEGrZig/yxGRh69SNXPw=;
        b=H/iLZoMQCeGGvCijoOpc1UG8f+7Iv9uFKGWJnY/6zon0AZyYixp9iOsrcDn7iJHkM/
         HBTW0n2GCdV9NlTtQ4+vy37bWeNW9HjLREB/AkkZClTIqtPEYf4tuyMpbGoXeT/gr8N0
         H2hvMffiL6oAhU6QwAxD0Xz7P85+/frzPeCKnarwB5U3fXXFmz6J2uKG1POJG5eFoAGf
         ubmaIeK2HIKw1P1+JDEEAH0HXI6BCI8sltfCuKriGAgt9uOUcaOER5noEvFhrC0qEley
         8pYSoQdaubLT3ogh19hoZUIYaB9rWnlaD3KIlzwCPCcBWiKXP+6+xLnGiXyTJEMPDIXu
         qxKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e3krGkYg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D94ShghPONK+QRd8Ww0DJ2ZkEGrZig/yxGRh69SNXPw=;
        b=aiqNdZtVdZT0sywYpJgSA7gbiVTa0vwqNUiwLaFPu2Oc8uvc2056op3+zWMwPUz32h
         Bh9AMWZB2eoPXb1n6mp6fOWz5olqyRJraTYZQRFafkkZs3fri1cxMjmCgV3x+liX5DJT
         bRyZqtnVmjPEOMUPtYolERm/MuvdK2MJ29x62LwZfVUxaK0rXSdmlUUplR2z1+9Qc3j5
         T5NLqOla1oajde/2IKYlzj6Q1LIQ3Z1n5zF4NcejT9xUL+IjWKwbpJRvexjBXJTdOU/b
         liMH+PJSaw5lWaeIty7kkFIe6gVVZpALFXuuZP47oGO6ySoBjFL+Wtxfz0E+f1Y584I3
         /QyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D94ShghPONK+QRd8Ww0DJ2ZkEGrZig/yxGRh69SNXPw=;
        b=gY/hfin3LmXiZsPFfwSZVr62Tq6xHf8uSXJuz4E79IbtVXKqZeBAqt4RGHXbi5OXxH
         fRCToNYB4OhIbquh4h8DxwrQ5AJUYXepnxg79fY0zCE8y5Miwq8b071Y4qGm4yYV90s9
         x1LtJ0SHWDt6693EVU+WmWIj08x8wg3WwiaPsWO/kiEyp01XPdF2AJzcwL8waacIGnnv
         OB8QszhjKHlz1XBZZrSpjeUoeQkCfzvxmkF/2X1SqgmMnMWDRItzQwgxQfqrmJ3igLzl
         4wtBFR94UdMNzAcz0SlB0/fVszMvtp9rqUjpvqE9LyNbhK6CUAgUxnczFIsEjChNz1y2
         j9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D94ShghPONK+QRd8Ww0DJ2ZkEGrZig/yxGRh69SNXPw=;
        b=UTJmUsZvYf4OyVMmEFz0DtF7vPOUjtskfNc9bujiQCIIq0xoGHMVQKh54Y7DPmNVwa
         hRkegZFSk7jyWccX2kAlmianXewHZecYG6IDWEL71Q6+ZFBE+LeKUWsqAOq/lyL3H6o/
         JGVNpMlgu28MhPPaoJXJk0nlfYl1KkbxloQdjSFtED8whcIClKrNrdmC6kiKswsXdN40
         Z3HEaX8842pZDtPgkGx5SLY+8dmgrdBpZ7BMT3yUoSSYHSc6iz0B6chEO4KFepM1ORwl
         Yu+05LFtRty/ln2/7g1kZKaz8J2vAHEyIRfOnCTop+mRljBG/g/4D3ObZIHt8l3cRTOe
         FSrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322BPErluKfSQFabFZBhDNgc45FgYI/rjunzKXTjs6mtypKJ1I7
	IhuMTA4bvmppsqEz1FGuCNM=
X-Google-Smtp-Source: ABdhPJxetuGM2gHMCyfunoOTtmlo0+1GoYSclj8nicAgjzeD2/IFReJ9h19JK22RImQdv295IUKD2Q==
X-Received: by 2002:ac8:27aa:: with SMTP id w39mr285357qtw.9.1603156526925;
        Mon, 19 Oct 2020 18:15:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:efd2:: with SMTP id a18ls70179qvt.3.gmail; Mon, 19 Oct
 2020 18:15:26 -0700 (PDT)
X-Received: by 2002:a05:6214:a0f:: with SMTP id dw15mr610009qvb.44.1603156526365;
        Mon, 19 Oct 2020 18:15:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603156526; cv=none;
        d=google.com; s=arc-20160816;
        b=jkN03MNYVcm/zSNEvvlP5o9reGQigHn4M2vnh9O7CO3fGO8Pc61AuDOLL56tlmODta
         8pyDsPeA6MSY2UQbfIyidIvoBZkD05WEWyLA88qNF9xHjS3KazzvgWH29qgnvbKkay+B
         zhtldE5Ywdac7/TC3aBJvQzfUmiV4V5KOuuzoLsHRGSEp4hYEev0pxdNT4YtOXu5kHPW
         v/5bXKouyN/gXAG3wgC1iAII8AsEILvCP4wdB6/gF8Q5tNgeZqr+5rma0BEb8SKucgmy
         586Br7TCwhjFFDmgMRj460I+vHHpbbLS9DwDZJ8Qc24c3yZIEEvtRiKMBog43r87YNQf
         tUtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tRiShrUt1sTjH+sdv59h0JyXdNaA2SG4GeoIP63o8wM=;
        b=rA1S7WMSIvHIFMaSmoYL3UefdqvhZqjso454EpdmlneoGNd2BTq4hVL/ITspTJRfY3
         BKfeLWxS4E98L8MpvR8lBv5K7MJ4PZ26CinkogueXE3Rtll6GXAgL4tADDKYKpJyyIg+
         O6s2MZfrxI/NG2qc5nIFv6+uque2codTjlqC4duKXRHWs2yDJPRujAivYf7aKYAANtN9
         AIxe6FycUcAbHNJuK0wXHdouUdyziXddwOJ2fnvU1DOWoiX5PMP+TOO46ft5XOYwTY+7
         +Z4QyHDprBLJ6jshC+7HKRHlnJfeOVtCIQAV8UxkASFYfOQ/jgv/g/TVpYwnoBOWHYXB
         HAQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e3krGkYg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id r40si10509qte.5.2020.10.19.18.15.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 18:15:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id k6so503476ior.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 18:15:26 -0700 (PDT)
X-Received: by 2002:a6b:7f43:: with SMTP id m3mr399912ioq.114.1603156525808;
        Mon, 19 Oct 2020 18:15:25 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id t16sm357646ild.27.2020.10.19.18.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 18:15:25 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2] arm64: vdso32: Allow ld.lld to properly link the VDSO
Date: Mon, 19 Oct 2020 18:14:07 -0700
Message-Id: <20201020011406.1818918-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201013033947.2257501-1-natechancellor@gmail.com>
References: <20201013033947.2257501-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=e3krGkYg;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

As it stands now, the vdso32 Makefile hardcodes the linker to ld.bfd
using -fuse-ld=bfd with $(CC). This was taken from the arm vDSO
Makefile, as the comment notes, done in commit d2b30cd4b722 ("ARM:
8384/1: VDSO: force use of BFD linker").

Commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
link VDSO") changed that Makefile to use $(LD) directly instead of
through $(CC), which matches how the rest of the kernel operates. Since
then, LD=ld.lld means that the arm vDSO will be linked with ld.lld,
which has shown no problems so far.

Allow ld.lld to link this vDSO as we do the regular arm vDSO. To do
this, we need to do a few things:

* Add a LD_COMPAT variable, which defaults to $(CROSS_COMPILE_COMPAT)ld
  with gcc and $(LD) if LLVM is 1, which will be ld.lld, or
  $(CROSS_COMPILE_COMPAT)ld if not, which matches the logic of the main
  Makefile. It is overrideable for further customization and avoiding
  breakage.

* Eliminate cc32-ldoption, which matches commit 055efab3120b ("kbuild:
  drop support for cc-ldoption").

With those, we can use $(LD_COMPAT) in cmd_ldvdso and change the flags
from compiler linker flags to linker flags directly. We eliminate
-mfloat-abi=soft because it is not handled by the linker.

Link: https://github.com/ClangBuiltLinux/linux/issues/1033
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Change ifeq ($(LLVM),1) to ifneq ($(LLVM),) to match the main Makefile
  per Vincenzo.

* Carry forward Nick and Vincenzo's tags.

 arch/arm64/kernel/vdso32/Makefile | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 7f96a1a9f68c..79280c53b9a6 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -22,16 +22,21 @@ endif
 
 CC_COMPAT ?= $(CC)
 CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
+
+ifneq ($(LLVM),)
+LD_COMPAT ?= $(LD)
+else
+LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
+endif
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
+LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
 endif
 
 cc32-option = $(call try-run,\
         $(CC_COMPAT) $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
 cc32-disable-warning = $(call try-run,\
 	$(CC_COMPAT) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
-cc32-ldoption = $(call try-run,\
-        $(CC_COMPAT) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
 cc32-as-instr = $(call try-run,\
 	printf "%b\n" "$(1)" | $(CC_COMPAT) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
 
@@ -122,14 +127,10 @@ dmbinstr := $(call cc32-as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
 VDSO_CFLAGS += $(dmbinstr)
 VDSO_AFLAGS += $(dmbinstr)
 
-VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
 # From arm vDSO Makefile
-VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
-VDSO_LDFLAGS += -Wl,-z,max-page-size=4096 -Wl,-z,common-page-size=4096
-VDSO_LDFLAGS += -nostdlib -shared -mfloat-abi=soft
-VDSO_LDFLAGS += -Wl,--hash-style=sysv
-VDSO_LDFLAGS += -Wl,--build-id=sha1
-VDSO_LDFLAGS += $(call cc32-ldoption,-fuse-ld=bfd)
+VDSO_LDFLAGS += -Bsymbolic --no-undefined -soname=linux-vdso.so.1
+VDSO_LDFLAGS += -z max-page-size=4096 -z common-page-size=4096
+VDSO_LDFLAGS += -nostdlib -shared --hash-style=sysv --build-id=sha1
 
 
 # Borrow vdsomunge.c from the arm vDSO
@@ -189,8 +190,8 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
       cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
 
 quiet_cmd_vdsold = LD32    $@
-      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
-                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
+      cmd_vdsold = $(LD_COMPAT) $(VDSO_LDFLAGS) \
+                   -T $(filter %.lds,$^) $(filter %.o,$^) -o $@
 quiet_cmd_vdsocc = CC32    $@
       cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
 quiet_cmd_vdsocc_gettimeofday = CC32    $@

base-commit: 0fa21cf4489fe11737d56f8056dda1ba0257bd8d
-- 
2.29.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201020011406.1818918-1-natechancellor%40gmail.com.
