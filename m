Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY4UXP5AKGQERFAMMII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 634B825A169
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 00:25:40 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id o8sf2785127ybg.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 15:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598999139; cv=pass;
        d=google.com; s=arc-20160816;
        b=AjgKzDBqaE9CT+ucJFHp1V85SMxhUpcQdxa0qRnYKhY58Xdn+zi8EuPDwMKqUwmsL9
         WzUcCJIbsMrojgBfuSDW3wOUUhoXWORqn+M1J7HhqbFFvfvqiVTfNOgKcxhqEpJl2k1j
         7as3BwYBjiB0uBJtWfF21V9NlYzH9fwSAFn8H3lDanfXrOzswM3kE9Bym2Q1wVXBiYza
         6rIgzBkJKR8ZmKKRtYBOzlvPnjaFZt7mivbPLPibc+wR+Hw9GcCUrfDxVXF76jjQIxat
         h7KcW+pYiraxKWQt0450q0n+e32TRkwvuONEe0Tznv3PTzN4FrupdnpV3fkGwrKB40f1
         655Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=oghiGmmUjB0JoniiPw+I4Tfpt2zOpENPD2ALeFB8cDo=;
        b=Tby6O2P04Xy57fmWXTZWNAoYykojqclw/IsFX7Pj2hdbkmVS71vD3kWCXrZnWod9yL
         /UA89xVf1zMcmnaVjlqoo8gdVAqWVE/aUg+BMpGQoSWOJpDD3QlKlt6SPLmFYyeyOtI7
         8WwyG6q/9NqAJ7HD8KLpunYpvhDIV1p1ibxsSOBAWlkWPLulVAyNLiv+cpds/z56F9Mh
         8zss8Pexr9hPQKUWz617cmOFxoOEeUHsJAwn1t3yEafAOcQKCH4B1INDfXvOrv2fFehP
         4mny7K+Cb+8Exg4hTrhd5NyQjQa42dH8CW24VKb9flEY9z1iFUKbaXKY7Cofdql59jsg
         OXIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgqVD+cU;
       spf=pass (google.com: domain of 3yspoxwwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3YspOXwwKADMcSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oghiGmmUjB0JoniiPw+I4Tfpt2zOpENPD2ALeFB8cDo=;
        b=PwRA6Z4KOyhYFJyGmGymAu107ojE+RENv8fmpYxz07OJ6S9tNyY2zboesWc1cbXvls
         uCZQAOENpf0d5WSOtD0awEGLed+bTfAuLRgHD1qGhHdmoeUKwQH0JP41mJ5YM0aPrQJa
         X74iANBITBAdvHrB0QbaXe7vXBKv4XRtjAm985bOMyolmGGYz4X27UUrGzzDsjcHy2Nt
         7DEcKKZasoomCanTcBMobe7mj93vpP4RUTSZ7f1T9McWErHC9qI7uQLgO6hq+lf5iZZe
         r9oMXEypsbUQRMkuvC1XtjDf8ZKiu+2oZrXQ5rhMmW7FbLFPFDEuYJ2aU9hwtj7Q/PzX
         iv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oghiGmmUjB0JoniiPw+I4Tfpt2zOpENPD2ALeFB8cDo=;
        b=VL2svAZfB1j6iz0U6tv+5adDOp24ztcYkyScEKcepdwIpH6HDUfuXy14gwtHVZ7WUR
         0N8icU78GnrLmuS6of0TkpQqa1XxCCAVVqgtSC9WTOeQYRWbbx8nWLMNJu+yzN44xK5h
         UslMiXaOQ/0r12HtTBuEsn8zA8Q4bbBMFHaeEUEYiNL4KgURj6e0gDA0lGK7f0QSk+Nw
         NJWBGtx5j3E1TXbWLbZwEmpBVqarXbcl63AB4on1Y3reb8YjCY3pX5/tkcvhAr/P2bKp
         3kmNtb8hrs+PshysqAxT59CUXjQRhlYz6cQft3ciEacM2Q1/AD1C1oIps8L+ey7VLlF5
         so/A==
X-Gm-Message-State: AOAM531TLblzZnurIvjEnMacnnJs6/t9MJ4ow6ux0zhXoR2U9f2LaK0v
	b3lcBDlntjphqeW8pC9Zhj8=
X-Google-Smtp-Source: ABdhPJxRSDj0FBY/CONBYaFJXQ5+1S3hl3Dqk8eiaxkV4WRzxgqVGRoK1Mk7Z9MMt1ie9/SbPlG2jg==
X-Received: by 2002:a05:6902:4cf:: with SMTP id v15mr5894329ybs.373.1598999139418;
        Tue, 01 Sep 2020 15:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:b0d:: with SMTP id z13ls180370ybp.8.gmail; Tue, 01 Sep
 2020 15:25:39 -0700 (PDT)
X-Received: by 2002:a25:d3d4:: with SMTP id e203mr5999461ybf.491.1598999139119;
        Tue, 01 Sep 2020 15:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598999139; cv=none;
        d=google.com; s=arc-20160816;
        b=Fs4FJbvZPJX1pCgo8UpFhe9zbk3ShcL9CbqAbn+yVAMdb8qJ04oZ4DwWQfsLsF6HrB
         JyHdO1qDJA1PEHlXt1+5Hbqq0BMc9WY8iT9k22z1viikyeS6Tlvot2rlRItw6RHkfPSn
         9kVPAyfLEFne5xy/gTsYOs4msi2kGpXx9oSv+ISkmGpzPBsS+k9219M+Cd66eRNNaQRI
         KBuRzqhmsrmddCYDxGOMuQICjp0GoE4YAZtwfSXlw9l4fAdpup67EvzGp1FTCOllLEjo
         ArlTHwBGpceMak1KrLOLSA8Tn5UVfur+0WVfnqrrD5rSDPkZY0T+jtX05vDpJbSrFQ2R
         RF3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=xFF5qxswQ8XcvkvdvfVY4/mMkz+/5Nm8uIdW/HNF4l0=;
        b=vz55hTFVYbtwFhV04YLdh6cYaGRwbTrF5dktsBj/msyBgFl9/FbWzBtEgh1MIRJo6/
         0HTFmPFXTcMASbbVyTPA0gFeIMOtziip3ERrSUyl2nPblXkRcCWiWxecNOdJGzkYRp0G
         D4lljFmGufODu6FdJ+5aYWTWVpWx8I/XaPtuvtcRZdoF2dvUqqp6/189cdLri+BvcI1h
         eOPM2Ts0UDz1wput/G1g6H7azPbAMK8odW0zurvBt4dG4Mxsev9GF0CliwlwipmFZq79
         dml2zipqN6vOCPnkbGZwVkgkUxY8d3E/57wsSu57R1PbrnKZlNYuUAlE8UsYFv37X4tV
         1/rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgqVD+cU;
       spf=pass (google.com: domain of 3yspoxwwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3YspOXwwKADMcSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id m193si215063ybf.1.2020.09.01.15.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 15:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yspoxwwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id v16so1981653qka.18
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 15:25:39 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:10e8:: with SMTP id
 q8mr4223437qvt.59.1598999138727; Tue, 01 Sep 2020 15:25:38 -0700 (PDT)
Date: Tue,  1 Sep 2020 15:25:23 -0700
In-Reply-To: <20200901222523.1941988-1-ndesaulniers@google.com>
Message-Id: <20200901222523.1941988-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901222523.1941988-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Joe Lawrence <joe.lawrence@redhat.com>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Kees Cook <keescook@chromium.org>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CgqVD+cU;       spf=pass
 (google.com: domain of 3yspoxwwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3YspOXwwKADMcSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Rather than invoke the compiler as the driver, use the linker. That way
we can check --orphan-handling=warn support correctly, as cc-ldoption
was removed in
commit 055efab3120b ("kbuild: drop support for cc-ldoption").

Requires dropping the .got section.  I couldn't find how it was used in
the vdso32.

Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
Link: https://lore.kernel.org/lkml/CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com/
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Not sure removing .got is a good idea or not.  Otherwise I observe the
following link error:
powerpc-linux-gnu-ld: warning: orphan section `.got' from `arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.got'
powerpc-linux-gnu-ld: _GLOBAL_OFFSET_TABLE_ not defined in linker created .got
powerpc-linux-gnu-ld: final link failed: bad value

sigtramp.c doesn't mention anything from the GOT AFAICT, and doesn't
look like it contains relocations that do, so I'm not sure where
references to _GLOBAL_OFFSET_TABLE_ are coming from.

 arch/powerpc/kernel/vdso32/Makefile     | 7 +++++--
 arch/powerpc/kernel/vdso32/vdso32.lds.S | 3 ++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
index 87ab1152d5ce..611a5951945a 100644
--- a/arch/powerpc/kernel/vdso32/Makefile
+++ b/arch/powerpc/kernel/vdso32/Makefile
@@ -27,6 +27,9 @@ UBSAN_SANITIZE := n
 ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
 	-Wl,-soname=linux-vdso32.so.1 -Wl,--hash-style=both
 asflags-y := -D__VDSO32__ -s
+ldflags-y := -shared -soname linux-vdso32.so.1 \
+	$(call ld-option, --eh-frame-hdr) \
+	$(call ld-option, --orphan-handling=warn) -T
 
 obj-y += vdso32_wrapper.o
 extra-y += vdso32.lds
@@ -49,8 +52,8 @@ $(obj-vdso32): %.o: %.S FORCE
 	$(call if_changed_dep,vdso32as)
 
 # actual build commands
-quiet_cmd_vdso32ld = VDSO32L $@
-      cmd_vdso32ld = $(VDSOCC) $(c_flags) $(CC32FLAGS) -o $@ $(call cc-ldoption, -Wl$(comma)--orphan-handling=warn) -Wl,-T$(filter %.lds,$^) $(filter %.o,$^)
+quiet_cmd_vdso32ld = LD      $@
+      cmd_vdso32ld = $(cmd_ld)
 quiet_cmd_vdso32as = VDSO32A $@
       cmd_vdso32as = $(VDSOCC) $(a_flags) $(CC32FLAGS) -c -o $@ $<
 
diff --git a/arch/powerpc/kernel/vdso32/vdso32.lds.S b/arch/powerpc/kernel/vdso32/vdso32.lds.S
index 4c985467a668..0ccdebad18b8 100644
--- a/arch/powerpc/kernel/vdso32/vdso32.lds.S
+++ b/arch/powerpc/kernel/vdso32/vdso32.lds.S
@@ -61,7 +61,6 @@ SECTIONS
 	.fixup		: { *(.fixup) }
 
 	.dynamic	: { *(.dynamic) }		:text	:dynamic
-	.got		: { *(.got) }			:text
 	.plt		: { *(.plt) }
 
 	_end = .;
@@ -108,7 +107,9 @@ SECTIONS
 	.debug_varnames  0 : { *(.debug_varnames) }
 
 	/DISCARD/	: {
+		*(.got)
 		*(.note.GNU-stack)
+		*(.branch_lt)
 		*(.data .data.* .gnu.linkonce.d.* .sdata*)
 		*(.bss .sbss .dynbss .dynsbss)
 		*(.glink .iplt .plt .rela*)
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901222523.1941988-3-ndesaulniers%40google.com.
