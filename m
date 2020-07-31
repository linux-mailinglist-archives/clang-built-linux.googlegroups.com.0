Return-Path: <clang-built-linux+bncBCIO53XE7YHBBPP5SH4QKGQE25DBJSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E20234C3A
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:27:43 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id v25sf20156245pfm.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596227261; cv=pass;
        d=google.com; s=arc-20160816;
        b=kQA/R4WKTN9lT2eXJ/ui0Uf8ogBGoL7F2TDahEFQS+XJnYW3nzHB+X3sFaLgPhchvC
         ug0udkWr+nA3bmzAOJZtBPlgnzUlqLejKtGprrN5fR9bsMlcx+LmM/gpklhgVQnyAFw8
         qhPxqbvdQLvNYrvpI9Pyejf+acTx3Wc0yQIMI+cbbYe6C7Xqw2WsO/2YOPfKrNMg3GGt
         fTSr50h3Y6zwa8UQrCYTpAkKy4nfG2BhBw7UYmdj++f3ZiHL94QHWENc5V/N/TZO9b/g
         2PmH6kug5s+jJF5ODcyxhEYGiKg94apa+xYSH/jrqitl6Bdcp8hoSK0L7LF5c0x95CTX
         nDPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p/8yGxcYM6iSIukk31dmmooOi7MQnJcGrmJxFuwpcHY=;
        b=zu8dq17UzJ1+2gFxynubhxbFq48nZrAqYZ2LBDb5WageDrKHp5Ql/8UAcd7wy6NzWs
         j5170Rn2yUiuvlEL53DNukvbQmxphnQVYLm1b6/CqTJYi6Iqb5zbj1HqoRR9GKGFlTI1
         ML1HQbaDFegBq+UBINRYWyhwph2L6XLbLZ6M9/STiUtPknSlfZLJl8ePLojI3K7+vv8Q
         t67oB4Z9MR2EKNpueVjj0JWpOBuVzGFXG2Hq9nf6DJ3SsdUca7r+GRMoxmNtWx2EfgBY
         ZxYnCQ6CEC6fRhkL21J+b/5ou/rMS5SLMcQOfVr4y2jiABv5dy3fCvGee4DURGxbXiFD
         ykjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p/8yGxcYM6iSIukk31dmmooOi7MQnJcGrmJxFuwpcHY=;
        b=sy2wREL4t3NFhacgCv6ZDMGSAAhHcuLcak0yJwlju3e6Br1JNnphXZ0kXbJZtRdedb
         /x1vQxF8oa/0PLVALmq/hHrWCrHP4cs+1vBrUFzRvTLDP+nIqYBalS3YQwCBEK6qa/KT
         Iyj36Nygmq9s2UGybpynh/qMvDkVRQ3zpN9P9Zn33H1i6NEpUW9iF7essPFfzARq3stt
         8eDnx0X9C5IL9uhEl59AGOvfneK01XuqmXxZDAIAb9iwsHnFGLDsBLMBT7lpxYTSEY1t
         YcZpm30frtDyjUyCwhNnmlZ64nsBxWSYiOYIMI+0kjpGnmlrBvG4ibRKvUE+grqIpzrL
         ocKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p/8yGxcYM6iSIukk31dmmooOi7MQnJcGrmJxFuwpcHY=;
        b=nLHauz9oQpD37qtR3+H55Xbo0EWSB/gu0mAEtX1RlmKznwtMAKjmRYmNY4cpowTu8H
         2H5cXidmcxqbtwYuXeWoeGrYxl0CAK0t8WN9Z+bcT+0zS7KMII2wXVDbZ/krX6qJ3p8k
         z1qE35klHg3QaCqcM+rYLKCemuARDAMIC/RhYG6MwCwGOLoB+QqsA6H3/qhv7KBdFHkV
         08V284c/Uk9IQtysvd3VT0KN1Mltmfh6hRmOaVqiHS18Z/ycZJBEdwIbJEfv7vUBkXlp
         nhUeF8hxDt3bKbBbGy65xD6NcgzrZtpzG+VnxVpDcT4ATix/qL1d9OrZf31yagcRL9Hq
         ttEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ki2PPh1iG8PjH2FJOkaoa0E0e62HDRCK33Iqe5jRD3o5GwA1E
	QKLU1OJ9C74OpBIk29QwMyk=
X-Google-Smtp-Source: ABdhPJzzNZASO5aja1IrtrRXk+n5CG+eypxLBTVYkyA9pl1QuR6QINcxus8BXEYGbv8mls5selX3rQ==
X-Received: by 2002:a17:90a:3307:: with SMTP id m7mr5348054pjb.203.1596227261469;
        Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls4161910pls.5.gmail; Fri, 31
 Jul 2020 13:27:41 -0700 (PDT)
X-Received: by 2002:a17:90a:36a7:: with SMTP id t36mr5823396pjb.36.1596227261019;
        Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596227261; cv=none;
        d=google.com; s=arc-20160816;
        b=l0cCeofNNLxs7Y1EW2I+l30Iyk4aMBFQ+OkR98T5VwwV9LqRShia7QuSVMWkFJzYO8
         486r3JqVtmOlxJFbJZ+Ufkusv1mQLPmpXxRrEJR01EJwrdiTHxMcJ189Ic1u5J2RqneW
         rV8KXv6HBORHde2u8prUp8lBWYG1Xu946ryzdbjHyEcr4AyYYXGbVS5d12k/xW2evXiy
         gGM+wr2FqBgJ7tlKI5MUxuePCdwitfr+KKAC5aSB6i4pI6IooJnkAoL/y5G4adh2Y6YQ
         G3Dq6yvOXXBmLzmwI4+of94nxdvGFZpx5JU2czMR8qUI7cSt6aY4xEkmbBDt5K9E+TC2
         TB3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=mXwPeMu1XjGHX9Op5CjnYwN6D6BW1B34DbH0SYA/L18=;
        b=qPpTCczHg9YPeKfconmAu5z+C+aiSRh6f6vaSR1y6lok9ihuMQByvDn9D0ZqVBeRYg
         TLkanIyD1HVkJyPXlUiaHpGfzASH6v8Yh/w8ShMfHiIpP9msIq3gHfxeFqh8tS8CGEco
         M0NtgaNyR9wJLpiH4JbEaM3KyVFN8uV71xE2s17MuVz3AaFhnalkYgXdVC6iiy2/sbXg
         E0n8bpu/wIGWLQjdm5yh68t6f5zyC5CRIDRjhRhj/t1AJ1o0g8zP3A3zurSTw0wIML1c
         4v3ngOz1YjmhuKhw5iko+C1aslqDsxiTxWBmb41qXEVy/YkS3U5w6IHB/HTbZdpDgazb
         nnTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id a24si478497pfk.6.2020.07.31.13.27.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id b79so29949498qkg.9
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 13:27:40 -0700 (PDT)
X-Received: by 2002:a37:6556:: with SMTP id z83mr5396568qkb.406.1596227259986;
        Fri, 31 Jul 2020 13:27:39 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t35sm10607976qth.79.2020.07.31.13.27.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 13:27:39 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/7] x86/boot: Remove run-time relocations from compressed kernel
Date: Fri, 31 Jul 2020 16:27:31 -0400
Message-Id: <20200731202738.2577854-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

Changes from v5:
- Rebase onto v5.8-rc7 to resolve Makefile conflict

v5: https://lore.kernel.org/lkml/20200715004133.1430068-1-nivedita@alum.mit.edu/

Changes from v4:
- Move -pie --no-dynamic-linker from KBUILD_LDFLAGS to LDFLAGS_vmlinux
  Sedat: I'm not clear on whether you tested with the final LDFLAGS,
  could you confirm: i.e. if you tested with -pie passed to LLD?
- Replace runtime -> run-time to be consistent in wording

Changes from v3:
- Move hidden.h to include/linux so the EFI stub and the compressed
  kernel can share the same file

Changes from v2:
- Incorporate Ard's patches for eliminating GOT references into this
  series
- Rebase on v5.8-rc3

Changes from v1:
- Add .text.* to setup.ld instead of just .text.startup
- Rename the la() macro introduced in the second patch for 64-bit to
  rva(), and rework the explanatory comment.
- In the last patch, check both .rel.dyn and .rela.dyn, instead of just
  one per arch.

Ard Biesheuvel (3):
  x86/boot/compressed: Move .got.plt entries out of the .got section
  x86/boot/compressed: Force hidden visibility for all symbol references
  x86/boot/compressed: Get rid of GOT fixup code

Arvind Sankar (4):
  x86/boot: Add .text.* to setup.ld
  x86/boot: Remove run-time relocations from .head.text code
  x86/boot: Remove run-time relocations from head_{32,64}.S
  x86/boot: Check that there are no run-time relocations

 arch/x86/boot/compressed/Makefile      |  39 +-----
 arch/x86/boot/compressed/head_32.S     |  99 +++++----------
 arch/x86/boot/compressed/head_64.S     | 165 ++++++++++---------------
 arch/x86/boot/compressed/mkpiggy.c     |   6 +
 arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
 arch/x86/boot/setup.ld                 |   2 +-
 drivers/firmware/efi/libstub/Makefile  |   2 +-
 drivers/firmware/efi/libstub/hidden.h  |   6 -
 include/linux/hidden.h                 |  19 +++
 9 files changed, 153 insertions(+), 209 deletions(-)
 delete mode 100644 drivers/firmware/efi/libstub/hidden.h
 create mode 100644 include/linux/hidden.h


base-commit: 92ed301919932f777713b9172e525674157e983d
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731202738.2577854-1-nivedita%40alum.mit.edu.
