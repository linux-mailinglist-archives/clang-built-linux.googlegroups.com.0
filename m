Return-Path: <clang-built-linux+bncBCIO53XE7YHBB7EOZD4AKGQEZZPO2HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F7E22450C
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:18:05 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id 204sf6765256qki.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:18:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017084; cv=pass;
        d=google.com; s=arc-20160816;
        b=EvuHQ9efe4TWBnVOLFYs/nqUHdcSeZYqNHIQ4bvlb456MX4FW0y/4e5WLqZV8eEiIy
         qt6psEfGfz/AW3NZdQVGt8VzjT2Mr7f1VL7CeFoUXSuwOrEqjlnp9BbBSQ/WX+jhuCPS
         mb1luyse7jlhZDuYoHXckApwwh5cpGkWtxVq8ql1BU0fXw4oTBIwFXw0IVhu7Inqqvj0
         WtcqXGWkxal3kKiWc+6LQS2kChj/AM0wGXh6KIeEy8z9eSR81/fGFxZ8YxdifPVBBDQY
         VoXPkZKOEeiWrwN6CDUad4bySQ2o0Xbc8jSGqYgRr/f8xY38Q7dneI9z1b7S3jc3vxdb
         j+dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ws3TDsHRreILPex+M5PdBjQ3c3r1AJXAFo9l4UpVAa0=;
        b=pp4z8FBlYZO3IoDfqz/4SqmreGTHhktizx7jsi0J6nRrSkxj4K4xGH2B+PZoqsfytK
         +i8W/v03Yzvcd5a72Nd6kb0wtp5nylpLmOIOV1Gac0CeuGgrT0MD8EvdwFhsN3apPznW
         4LkQxh70XXgqNU5p5VrkFtqV+8vByLgg/xhEfGNv5Phdz6BfQLsnQ7Sj1zF6SnIahZMW
         RTI7dsQNLinWpkuWziudG40RpUQ+0z38pWPZ1XplNT8KdAGa/3Sy2f4MbMs8mlkGMAn0
         PkQHRpdGkQ2HjPt+Dt6KGKhJNXf0seJbP3JUywspeQARzJ6l/FYS06KAPGyzMaQIUdP/
         Aqhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ws3TDsHRreILPex+M5PdBjQ3c3r1AJXAFo9l4UpVAa0=;
        b=fDPa92oYSp/vQqG+FZCtheYeOLKGvVezb+degSUCfd8DAyPY7qHFxcFZGyhRgrapgY
         BzqvXIKZIbo+ghq3KXQgS4TSpyuOHJRVjQhj0eUeHnCv6HZvtWh1yJGWNEEWHIlivdq5
         j1mH5CpPJBIdfPgZVIByxNXNVzrXqNLyWAxeL1FGzbL5mpOui9I6hP7ASk4KMrT+e1y7
         nLC+PedkGggiqtMAxj0rL9xKB85OcA4jXPr9L2Wog7sojK+T9vLxgn7AAJiFdrLHqSeX
         GGcjUEU1XcNzmGOyVWZGG96uz6J8E5NTUhdbA4WcXqrVTnlkI2l/3rMQCzANr4wkh7Uv
         pGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ws3TDsHRreILPex+M5PdBjQ3c3r1AJXAFo9l4UpVAa0=;
        b=XgpnjEBiRp/+9/L1ikBk4iD8ZWvYdnC/rHB0YovQzUtGjA9GUJCA06lWOQ5WGjVlw0
         P1+YxGfpOdDT1c6mY+ZHmaH8q26nJTIVRTYgfQzHUNwHHCNOaCzH4IMQnP2MiNkLSlJh
         8T/1kVAMzZ2KMcS2QarR9BrtC2ZFW6F0LnByOOjZQ5TS6LHpNmgQiSDKM/aS2oEhcjq2
         V9XXd5GIT1kYf6dA1RJV0byGB4rHWqntCjmuxu1ZTmh0Y//cq7M10kWgpGo0gzNfqg9Y
         rlpoEp7gOnz/6aoXYB0EboYFN5Z8eaI2CiIRekl3x+iLNAO27xFWUE+u3BOXG79VsUAa
         szpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336O+DXmRnD0Z0BjXAXV0dt02dV2tkGKpSOEiYDdhmLqjJcECHM
	DUxiWjXQTFqyfJwjgmi1Ees=
X-Google-Smtp-Source: ABdhPJwyxqYEm6aK4QEKGmQMF+C7yrXT/eY65IVbpxu7nc+3d5SMM2DIlLBbk4C7M3t3zxLylvF9Jw==
X-Received: by 2002:ad4:42a7:: with SMTP id e7mr10781608qvr.212.1595017084149;
        Fri, 17 Jul 2020 13:18:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5c02:: with SMTP id q2ls515475qkb.11.gmail; Fri, 17 Jul
 2020 13:18:03 -0700 (PDT)
X-Received: by 2002:a05:620a:525:: with SMTP id h5mr760580qkh.96.1595017083681;
        Fri, 17 Jul 2020 13:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017083; cv=none;
        d=google.com; s=arc-20160816;
        b=bB+KOq4G2hwLJIRNarO6xzDMcx3dGO1HLb+TggLQlKWc4/nRrMv6Fzf/MxDrv+kws1
         tXHU0LQ9y9HE6WL/2vIoJCle6v7XxWK0625zT7lFmig88koup9N5dLK+kDrvfudPTedZ
         Fz9igHnMdbH3iMUo04epVe4TqwMNws9RrdMYq88wpbaJjK3QzzHe+JrT1gAbGDDz6Hwi
         /9m6IpaPP0zzkiDeEL+zlnfqpVCqsOpMe0wnwMv/Qy2IZfEgmu6iPCvhhGVqbEQzUSWj
         +41MZ6NlROfXVWytLrzisp6oqVJM7SDOfzP+klPwDBGTnsC2CyZ+haw1mmr2H6RBDwxm
         xUUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=U+b+56aZeJ+dA/DwFU4piC2yXOfEGm7UE3mUYxXe5/o=;
        b=0CVLQulOkHpksAGUn7uB23JNUd/l/HqzezN2Y8hxObjrZLscm25bHr3c9eokThMIZX
         zkmWPjhc3Zh4Pq/H9tGElr+owekJ/m44UqLJAr871L2okWJiTR0HV88DVd4rnNV8djtE
         4rLprUjdSrv9QhWgzyGjQ3LmRpGmCly/92pW3XzzEHirirbHsOGslbxSzjOkPhbrMmsz
         ZaLMo6vKbJXHSXegxRwKBu5/aOIGyyRCYa14zF2Nre6y9WXYr2VLKdyaIUGEUeHlRZdD
         7XllHLhdvE2iJwITwVNqIAl1pSlhjKeyyhXifRfwA2887yuTIH/ligXT8etD1TXsgfPU
         cvDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id t55si551099qtb.5.2020.07.17.13.18.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id j10so8599705qtq.11
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 13:18:03 -0700 (PDT)
X-Received: by 2002:ac8:7b38:: with SMTP id l24mr12617917qtu.122.1595017083332;
        Fri, 17 Jul 2020 13:18:03 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a28sm9509977qko.45.2020.07.17.13.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 13:18:02 -0700 (PDT)
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
Subject: [PATCH-next v5 0/7] x86/boot: Remove run-time relocations from compressed kernel
Date: Fri, 17 Jul 2020 16:17:54 -0400
Message-Id: <20200717201801.3661843-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as
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

Same as v5 previously posted, but rebased onto next-20200717.

v5: https://lore.kernel.org/lkml/20200715004133.1430068-1-nivedita@alum.mit.edu/

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


base-commit: aab7ee9f8ff0110bfcd594b33dc33748dc1baf46
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717201801.3661843-1-nivedita%40alum.mit.edu.
