Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG7XQ76QKGQED63ZZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3FF2A5B3D
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:53:48 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id d202sf8101374iof.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:53:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604451227; cv=pass;
        d=google.com; s=arc-20160816;
        b=eyzE/Yv64I8GTsbIXHGaRiEDtLMJd7X3uxllBNsXoi/SNf4Ok3otzxFespLwVDBdd6
         P8dDeP3XJMO/tVFfHN4HH9qfgH9MVmfYtETa5xchuXe+mcJk49An5RzqSNPi5L599UjP
         Gh1Zzu07VLW8WVXTSqucfnJ4sEw6UkMDd6e8v1kcAhJDklEARckCQMyYcF1VCQxwuidr
         E6I1MqJS5XGaOB/9U00eV8j/IaTEMrJ+E4QvrD4p1NtCsie9X2G8It5tYJxNlOnqnd7W
         Pc9PEm3pnFQC5wPDWj6bJTvZJ9EQsUdjUFnhZX66YC3Rora5VstAHgJVp8LdZuUY4BbS
         XyEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=kzrKO4bXaOfBOCSPpUEHRN3fxglFaDGkpdX6JYOtHQE=;
        b=Hl6p8s6Ydl4oTSUg0WLD56O/U+rVS+1Yq4X9iUbyvcyrvPzJLVDElgrMHxmzTuDXz/
         zuOLusNRosF02Tr4iUlfVrdjGlxGwWHoJgL/xRIjny80WoZBQr1ND7bAqhNSYsVmG4et
         Y179APe1LEIe5dlTkKgtWHso69ChEru/fCvsKf33OZQdcluN35sokCAtqGnlWU0hHNu3
         lVkHe/YS92d8f+0pkIBUsMgGhHXfyemfoW8yE2fZ80UaDfcvfa59+qBIXLd5+qPpCGJ0
         JdJ/w1qh1IVVketNv6qwyEm/h8M6v2ccWoe3m7bsHmjSozZ4ejC8WDZ4p9dDSiY2WFH7
         Jvig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bxOTw/FS";
       spf=pass (google.com: domain of 3mvuhxwwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mvuhXwwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kzrKO4bXaOfBOCSPpUEHRN3fxglFaDGkpdX6JYOtHQE=;
        b=eKsbEbTmK/yAjFSVMxAXou5zOMY/v4O/hS3XWyPoi5Bx4i02b/UCHLC+1vSgXPI+6e
         ydYd96ShxObh7vwXQFDFKe+1B9pnprkATNeZLw8NQSmrSg+UCJiDi7qlaMklKWfORbv1
         N9JByJ7SNh7BAM9fuffzuB/y4/8DLwpwcRcQzcA3scivP9P3DKddPpoXXkD8tD+dIP+2
         UIlVA3ZGZ0U+3iMG2VrzeBs3Wv4wy06VzQn+WBX27Bj3kYAS9GZyG9TpbMk1cDpX3Y8A
         MrVHd0+LGzDaprDUqJfA/KA8RqEQaT0YtlwReQeMU0DOq/Zoo1MnD26FFcUKsyPE3s13
         ddTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kzrKO4bXaOfBOCSPpUEHRN3fxglFaDGkpdX6JYOtHQE=;
        b=cVdIko9i9Zw1eWLpr7KMWnx52EzAWJ8D488c6ZRGBeDKMu9AfWnKpIwhoV66UVqcBN
         MFQHaD/I+2CTrqzltHDbYTKZCUd/EpU0ZZ8CmIL0Gr+KNh7YM6rYwf7XvL7QHE2ImX21
         StM6D5oS2xYug3A593hy1Oq1mdo6mTfMqua7GDTotmAxuHvWyv2ub1p77mjlSQ0qEsly
         4GWODG1cK1e6fcRWt+crGe9Vnt06YPtUvcAbEf/k658cRsN0W2XZAHBlZiw2OaPs6kaC
         asdhTzLMYgUr25BUWsBaHEEu6g9jD/L9GJUmC3yR7k5OCNTyFxrdcD6c2HuvPonfJZeP
         7MiQ==
X-Gm-Message-State: AOAM530RBuo0D/jBDXciVd123PJsKpsi6oDj3r6Va/APm43c61+tIAAO
	knAvhLOfoCWJehMiiSlgCuk=
X-Google-Smtp-Source: ABdhPJxJydoyrRBqM8P44fX/ZNzXW3m3jeIHU0YctucuraCMDsZNtNm9nEgrQHjIfwFPR8haCK+hxA==
X-Received: by 2002:a02:dc3:: with SMTP id 186mr4699179jax.141.1604451227667;
        Tue, 03 Nov 2020 16:53:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d990:: with SMTP id r16ls47574iln.7.gmail; Tue, 03 Nov
 2020 16:53:47 -0800 (PST)
X-Received: by 2002:a92:b617:: with SMTP id s23mr13038007ili.20.1604451227277;
        Tue, 03 Nov 2020 16:53:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604451227; cv=none;
        d=google.com; s=arc-20160816;
        b=M7egRLwVNKwR9WuY5AD88Z5KgPBhPftRFvT5b0E0UWawk9DbMQngsoe/e3jZofIvJu
         4p2h85yO0ELQ0dYUnmobUemDiEFDD88XbsYJlFILNunlcNpvt3ZAYKAGxQ9cJ75sZXst
         9zgpuy4OojNnlzQQspfdzcKy4Vxez2P240EI5nQ4pCxVOiouEc3i+uQ7+mewRNwTEXuO
         25ZvQDbClRgq6DsQYTbQkekUPjJen4YLZjr0h6kgmas1hAv2SdazP/up6UtIHT6mV+xz
         qq/WXB6jRkMVi1CfAbodVZCczFwuPw7he6Z1JcKlHN4A3+W3TiTZXpO9rfhEOUbYY4yY
         NF6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ozY6qdV80EEdEz3LDLEtJ+2VRilA83Eh+aRjlDLkLJ8=;
        b=yfe/+0xT/bxHvl/oj8YJ9tbD4Ex8YsmD3n+pLCZ0f1aCTn304L2oiJpEfczvmk8jh8
         9+oqFyEENXoLzz64SV9zoWVg2Sm7L2XCG56zIXSG13N9Fxj6ujVXePPo/tjiBpZ9uCuf
         ytmNIWefOB7bouBRB7gd2EEdR82feHf1woDyGEgxFOqxWHTwgyOxNZJCJItJZ5wg3Bs0
         XGpbnP22rqDpAcR4KxowF/QAcygCicMUnwTqw85DrW7uj+MMn7YAWOHt8KOfy3KlWHb4
         rd4/wC088s9KiEQamhvW4BXsOacxuLL5B1AfjymU2fC4AXHvH/0XAAZaR3irH6yOpfKr
         TV3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bxOTw/FS";
       spf=pass (google.com: domain of 3mvuhxwwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mvuhXwwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id o19si31767ilt.2.2020.11.03.16.53.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:53:47 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mvuhxwwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id q18so8863844qke.9
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:53:47 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:192d:: with SMTP id
 es13mr28271108qvb.27.1604451226656; Tue, 03 Nov 2020 16:53:46 -0800 (PST)
Date: Tue,  3 Nov 2020 16:53:39 -0800
In-Reply-To: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
Message-Id: <20201104005343.4192504-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v2 0/4] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="bxOTw/FS";       spf=pass
 (google.com: domain of 3mvuhxwwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mvuhXwwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
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

DWARF v5 is the latest standard of the DWARF debug info format.

DWARF5 wins significantly in terms of size when mixed with compression
(CONFIG_DEBUG_INFO_COMPRESSED).

Link: http://www.dwarfstd.org/doc/DWARF5.pdf

Patch 1 is a fixup already sent, but necessary for trying to use
LLVM_IAS=1 with ToT LLVM.
https://lore.kernel.org/stable/20201103012358.168682-1-maskray@google.com/

Patches 2 and 3 are cleanups that lay the ground work and aren't DWARF
v5 specific. In particular, I would like to see Patch 2 sent to stable
so that Android and CrOS can move to LLVM_IAS=1 ASAP.

Patch 4 implements Kconfig and Kbuild support for DWARFv5.

Changes from the RFC:
* split patch in 3 patch series, include Fangrui's patch, too.
* prefer `DWARF vX` format, as per Fangrui.
* use spaces between assignment in Makefile as per Masahiro.
* simplify setting dwarf-version-y as per Masahiro.
* indent `prompt` in Kconfig change as per Masahiro.
* remove explicit default in Kconfig as per Masahiro.
* add comments to test_dwarf5_support.sh.
* change echo in test_dwarf5_support.sh as per Masahiro.
* remove -u from test_dwarf5_support.sh as per Masahiro.
* add a -gdwarf-5 cc-option check to Kconfig as per Jakub.

Fangrui Song (1):
  x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S

Nick Desaulniers (3):
  Kbuild: do not emit debug info for assembly with LLVM_IAS=1
  Kbuild: make DWARF version a choice
  Kbuild: implement support for DWARF v5

 Makefile                          | 13 +++++++++----
 arch/x86/lib/memcpy_64.S          |  4 +---
 arch/x86/lib/memmove_64.S         |  4 +---
 arch/x86/lib/memset_64.S          |  4 +---
 include/asm-generic/vmlinux.lds.h |  6 +++++-
 lib/Kconfig.debug                 | 27 +++++++++++++++++++++++----
 scripts/test_dwarf5_support.sh    |  9 +++++++++
 7 files changed, 49 insertions(+), 18 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104005343.4192504-1-ndesaulniers%40google.com.
