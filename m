Return-Path: <clang-built-linux+bncBDJJN2O66QEBB7OJSH4QKGQEOGERZ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BCC234B2C
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 20:37:50 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id f32sf1374268uae.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 11:37:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596220669; cv=pass;
        d=google.com; s=arc-20160816;
        b=cHJYewfVlgvOF8yKNGmVszAawRj1mT0s6k3jD4s05b8T20rwfIYnwLmzwNzHXy3HKC
         rCjAb7tEnHLIV8zt705xOkbYUAgohqEHc9PjVrGaph+LzcprqLAR+8UDcKs/JNsPPpDv
         wLbR0+Fu3oIWm9ju583Tw997h6rkA+QVwBppuldFmIk93hQzafCeS2pmqiR9pISq6H/M
         SHaQyf/+2WcHi47mGvjLytjm9pjIalANY84y+fdphys1u9N6Ct+kAHdSZNDU5IDQ+4g5
         3idZHW4HBQO5ZCy4eScO2jvwQzDR3BEa7Tl8DWZnL4hf9ZxAETCrpEtOluq14P9I7oie
         Tsiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=fHNvszaMz5xnLTPH0l6SkH3VRYJZiFQPU312H2ARZ1Y=;
        b=lDTiK1j6Jp7F+IR34YZlzlFqB6DU+cCsusn4qsN1ab9SxHFWGQsp3wtyT+NUw+7LLN
         uQnVpJc2da3f0DQuBxYycsgxIUIgT/wbb2fqXhSGUoQ3c+KRChoGyOFcE7FHlAuVIk7H
         ePKwCrlO06E4OV85NuBPkI0u5WYN+Xeua8JioM+LBUpfu3wHImXHtVUE03YBUJQDiTzV
         HVk9NFevDq3F3z/mmC4kR1Kum+Iga8wxrjGTeKlQV36Gcvs6+uBiwGj6qmcDg8YtBE6R
         Xnlcz5wFx6jm/Hi6C3ILXY1WvYAuieIS6LghF0wfPzUA1mhlRdvMKAHYtmZXYdv6y9/s
         L3HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UHl+j2V9;
       spf=pass (google.com: domain of 3_gqkxwkkafc193cc3aan5dd5a3.1db@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_GQkXwkKAFc193CC3AAN5DD5A3.1DB@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fHNvszaMz5xnLTPH0l6SkH3VRYJZiFQPU312H2ARZ1Y=;
        b=m4RdM+VsCalqwyPMtkQbYKc5rRkFySh6iYoMmrwgAMUWQIB2M+5Qqv5aZ+MKW7PTH4
         RQ3tWAokPn567NYJMjyKGEsp8HUYUUtUkjAFEYVDaOXa0p3vsOkmsqv3Qv8FJRDtN0AP
         jIICCdBq6NCNxPLQP6TR/kmeA9e9RZUC8bj7nc78jGYy5F+4QLw4nVVYjB8UumdrpVz/
         GM5OpqIeKLoUyvckrIvUYA3K4S6oAmh790UiIyPOzFstvJZMKmNs0ZLLj1jTyQ+fdAw8
         6aj8IeIRttHIQOLukUVOQxCu5N3dgY8Kc4DwEGENrlmNHZdA7at09HIXXV/zB1lp8Ybt
         Tg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHNvszaMz5xnLTPH0l6SkH3VRYJZiFQPU312H2ARZ1Y=;
        b=CUQZHG9kA3uiPajthAvvgnOV0uVr3ZnNad/QKvQ+kAnUpvOxwMBD7Lfe+4oChS5cg2
         /xw2LMF6TzoJWGifPjRA9wSeFYBF8IjHkT5Nuzblum1LEAv0xrnBFNaJVLvyw0gxegNa
         OoSF5DDvwFsDVaxCncfxpcQN5uGAo+APsKCx+hbQBTXSbQyFpjRWQGr6w4YE5UiClNuD
         GStl80RcRKgAXcSdattOlf5JDN7qHmcAuVXfK0nszlNF2XaqJcDo7hSVYui4Jqp8CWOv
         GXgIbsQdwNvj1NvvOw5vgCJrYP2aqZA/4c+sXEshUhrkujcIAriMK9HiUVNV2dD2unX/
         alDA==
X-Gm-Message-State: AOAM5328YgK1x2sIKnHACrBgbudJJYyaVpnEFy7bYn7we6W2aprejGo1
	TJHetYfDDdW9hbDXhZ4ygVw=
X-Google-Smtp-Source: ABdhPJy7yRz61m8RjpmqiIp0q3PqdQ6n4//rvjafpbL+iMUXm+8TIpGi7gOi/KnrE4WBHLOWCoUSjw==
X-Received: by 2002:a67:7fc8:: with SMTP id a191mr4204060vsd.85.1596220669077;
        Fri, 31 Jul 2020 11:37:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:904:: with SMTP id x4ls1219403vsh.5.gmail; Fri, 31
 Jul 2020 11:37:48 -0700 (PDT)
X-Received: by 2002:a05:6102:232f:: with SMTP id b15mr4175351vsa.233.1596220668751;
        Fri, 31 Jul 2020 11:37:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596220668; cv=none;
        d=google.com; s=arc-20160816;
        b=o7XcsTPwHGtga4oKG7LkCdmsmpj4PBTG0oetQ1k+opxUcwg9DpIjpnX5OY43OfVbUL
         VhWPVaUma5u2DrtaRCZ4Qjgv2rQr7gXyOKBmHmGW+PgiX6snq94Avv5AxN76WWkX6oxM
         MErlp/4UrK3JNYhNBp0GTazflTWIkgSSbtKH+Z21dn5EhGpJVJKSFLuRTwN3bce1Pf3g
         +5eExbb5u0XdtaVQM+tP36OnvOEWNKu2SoaOQGXW3DUNfdyXshPYsGe5n5U1ZqiQnmFL
         M4p9nhr2nbLDxwTroyRSrgVOTJ6rLxZrFACtRYXeGmCfOeIwoZ6G6D3qYL/LisyuNP3c
         Y3Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=xWSYjHc+nNdSzqwJCR0Bklwg1NIcyWlbe0Z3kPyxnWY=;
        b=O0/+buVjvlpaUm7cyMnXnNogPeS152esP86jOWOfw3JiGSnPx4IU3WFX74ORyMqlDj
         6yGllb4xoXw4EBynJ9KUNB0cxW+bN59oDIUOX9EpMqUGDrAGcMKSAxmFNzad7opv7ZLS
         fqE0bzv44/f5ILPfKWTDhhmfv7sbhoyM2kSIH8E4AvMHDHjJUORGGpw1pxedW0zMsstq
         4JfJJa33eDSBWZq9wLPKkeIJklWc4wFtG0tomU59jR/lBgxMxCDJJjA62ecc1JX/BPjn
         qrXCbwZbXAxc8bCXUtKJN+zYE8lZVjrUILtpzqXEnr2xFc5mduynJ5V/xFYjUo64WQol
         aHtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UHl+j2V9;
       spf=pass (google.com: domain of 3_gqkxwkkafc193cc3aan5dd5a3.1db@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_GQkXwkKAFc193CC3AAN5DD5A3.1DB@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id g19si482142uab.1.2020.07.31.11.37.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 11:37:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_gqkxwkkafc193cc3aan5dd5a3.1db@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id l10so10670538qvw.22
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 11:37:48 -0700 (PDT)
X-Received: by 2002:a0c:d44e:: with SMTP id r14mr5459448qvh.105.1596220668284;
 Fri, 31 Jul 2020 11:37:48 -0700 (PDT)
Date: Fri, 31 Jul 2020 14:37:42 -0400
Message-Id: <20200731183745.1669355-1-ckennelly@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 0/2 v2] Selecting Load Addresses According to p_align
From: "'Chris Kennelly' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Song Liu <songliubraving@fb.com>
Cc: David Rientjes <rientjes@google.com>, Ian Rogers <irogers@google.com>, 
	Hugh Dickens <hughd@google.com>, Andrew Morton <akpm@google.com>, 
	Suren Baghdasaryan <surenb@google.com>, Sandeep Patil <sspatil@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Kennelly <ckennelly@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ckennelly@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UHl+j2V9;       spf=pass
 (google.com: domain of 3_gqkxwkkafc193cc3aan5dd5a3.1db@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_GQkXwkKAFc193CC3AAN5DD5A3.1DB@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Chris Kennelly <ckennelly@google.com>
Reply-To: Chris Kennelly <ckennelly@google.com>
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

The current ELF loading mechancism provides page-aligned mappings.  This
can lead to the program being loaded in a way unsuitable for
file-backed, transparent huge pages when handling PIE executables.

While specifying -z,max-page-size=0x200000 to the linker will generate
suitably aligned segments for huge pages on x86_64, the executable needs
to be loaded at a suitably aligned address as well.  This alignment
requires the binary's cooperation, as distinct segments need to be
appropriately paddded to be eligible for THP.

For binaries built with increased alignment, this limits the number of
bits usable for ASLR, but provides some randomization over using fixed
load addresses/non-PIE binaries.

Changes V1 -> V2:
* Added test

Chris Kennelly (2):
  fs/binfmt_elf: Use PT_LOAD p_align values for suitable start address.
  Add self-test for verifying load alignment.

 fs/binfmt_elf.c                             | 24 ++++++++
 tools/testing/selftests/exec/.gitignore     |  1 +
 tools/testing/selftests/exec/Makefile       |  9 ++-
 tools/testing/selftests/exec/load_address.c | 68 +++++++++++++++++++++
 4 files changed, 100 insertions(+), 2 deletions(-)
 create mode 100644 tools/testing/selftests/exec/load_address.c

-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731183745.1669355-1-ckennelly%40google.com.
