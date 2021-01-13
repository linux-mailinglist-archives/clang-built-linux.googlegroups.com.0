Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMH77D7QKGQEYBLARZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6A52F3CBB
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 01:32:49 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id w13sf344601pgr.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 16:32:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610497968; cv=pass;
        d=google.com; s=arc-20160816;
        b=ySIUPZNSL5Lx5Jps6ynruOyb1GiGDm/jHtozKqqOFepu10OTwSG/E0r362FWNGCmRR
         b5ZYAfYqektIv1L5XJUJIOWEnodWrEQ52H5qpIlwKQWNfLURjpu0clKokljg0aYT6snX
         RiDXDm52jY8gNCbG82BjNxDCdIoAeCTHeYGvrsNnKYHjWvtxem+4L/E5/Hj0k405vgtb
         QV6JTSwIqDG7cqFzbsrNoLlrpg/DLTfBkqn3Qy2svbbFFaZDRUNJuhzBpMbvdIax8h1s
         GA+hRnPwYjUewyv/cPMXoB/Gi0QFwm9Ob3FLhbvmHDatLjJ8YjWlVmECxLsA9+bYR6r3
         rzYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=v0id9gwInYWYh6Iwzza/LoKvlJXKsp/QyMrcMGEL3OY=;
        b=S+VHDMhNfsXLAYsLfRAgPvbekD6TKTB7t47wDzZg+RsCbv+qThbkIsXQ4r69AlHQ0S
         a3ptD5sHLFfhQ/+caUBn+/ExPsARhpcLPGEZzOpMkXePYzR0trdarzfHsuLCk+txCLLN
         BNPJwLINkN7/hygI703isHWzSzA5+nQ2opjnuK+AWHwjraDmEo7duvBA+XG8NGzMRWar
         B7NsUjITDqjuDYOmO1FijSL69NCD2IjnLFU9QtvdFuIXhRmg0vrJl5TPDhaWYlF/pk83
         fDXYfl8c2CFpEzbRgO5oEZ3UEgPZfNcEt2nZ8jVrHcHzMXhjqC1S1WsnCStRo3CVSmnJ
         BPlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="p4mDtQ/J";
       spf=pass (google.com: domain of 3rj_-xwwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rj_-XwwKAC0WMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v0id9gwInYWYh6Iwzza/LoKvlJXKsp/QyMrcMGEL3OY=;
        b=RfH2Yo6C+axdjiKoITaq8TUeUwmc1Wkk6OwObk7Lwc4MVjO2fKIsPkzq1TWKUEPa5G
         dv/BXOiptmIwW47vz9SdlDoK9ve/arOUZFvT98hh/UxGxHeLmRoJKE0LW2CaQSPZDN5z
         ZRXM/T/KwVb8ZEKGFeivHKGwJGbjrBcK5ymsuc959XPMMIRx7pi4pyUS56bonH8fGKSo
         cwe/Td7yra707jFqPn/cRmnU5Rl5WAJ0V0FHSdcY+Zpt1VQU7QJkTl4hZyzamtmIHVOY
         Jkjpdk3/5aDs87kUN5fZJ+azhLHJOt++U08scjdNiPyB505YpwAOqvPk/5JDb2MPYAd0
         hDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v0id9gwInYWYh6Iwzza/LoKvlJXKsp/QyMrcMGEL3OY=;
        b=lUO+dIugO8iU2bv9GszErG7xz4jF64SMKDBYm3Ae/gdlpHaNXREG8xMCvto1dGDrI2
         oZkGBs/oeyOyIAFr569D7WqQ/7LKdb1LC0AI0x6c5ZWYuSYqdDE5VWNQHfx7pSio9iJ6
         qr6qOWmWL6G02DP+bHINpkBrrE3qA91bOOxzLUq5MErQke4RO2ua57Da/mgSo7pRlb4t
         PiLB+GThUq8PM/kfku/VIHat/QtyK4+wvv+Rq097KHujLp5TRl9gq6qdb66kJjL6dUDi
         qbZYzQcfj4eciN9VIVegUMjC6bjWuNEtOw+p9ft8hIaBimmWSlE8LUbIr8mcCpPXbzUa
         K06w==
X-Gm-Message-State: AOAM530n+Fcr5kGDfx+1+ST2Ya0152v0VzNauM+NwqnZU9bga5hGuak1
	AHPVLcvjBbiKTqggEyrROf8=
X-Google-Smtp-Source: ABdhPJxbbFyOw8ANJsXLbbJ/uAFdeO3PWGA8xVVlHtfCA5R/mfd3hOf9u+L+4Fin9Hx00xh7hxmmhQ==
X-Received: by 2002:a63:e10b:: with SMTP id z11mr1681811pgh.40.1610497968408;
        Tue, 12 Jan 2021 16:32:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c205:: with SMTP id 5ls136245pll.11.gmail; Tue, 12
 Jan 2021 16:32:47 -0800 (PST)
X-Received: by 2002:a17:90a:5303:: with SMTP id x3mr344925pjh.54.1610497967803;
        Tue, 12 Jan 2021 16:32:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610497967; cv=none;
        d=google.com; s=arc-20160816;
        b=ojfkg0LdK+cWe57nzJr0ZQFI+lLMJauhYzO00GR24k7hr/cMLkVX/UUu1HwFQeSZ9M
         RXnXO+1Jb7bzY0lq/KEiyvA0POlXjprXvBGxSPpsyqX7CraRIGtrpSS/008Zbo3yOGdQ
         LYgtbVfDzfTd0z9mGTyy+vRqLu4s2PXqv4sv99uRiRlRJEVuvG4ukgcZBQxNoy9pMAcu
         vNluoU3gKQI5ggRYn298yY1HN3mr+Ka6b9usxgWR7z+/Sqyhh4jAY79yHLdm/+13lW43
         cCtYpNj9Go5NjZ4LImRuT1fUGQes1Cj/yJ5Hc5cHTKdOxppof7IppKfWRT8Y0KK6kHzH
         AvTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=5rko6s7/MxxtN4vVcBpBg113Pb8TIp2GhMMzMhRrSK4=;
        b=O8niow+vOX+ZeVdmRtAQIZ8iqQX2dcICEl8a3ZBqoGXmrpCtpZ0nf4e3VG1DabciR7
         x39qC+gkHvv1pIbUyPMjBsM6EkdmqpOoUfiLl2+pKP6HXfRBq/IQRyr4cWCrL74V5WT7
         XaVVCjO9H28RINU6sqSDDmTndkjBD4/7CaIGWu7fAc0TH6mM6TUp/U3FtNdYl77UvEt3
         FxECRhSwCjxErVItetLkE6x3JBH07S7PaU3w0wBWixdlrnGQG4cs4a9j/YA6+CR3Supt
         saVU2bNYZ3GVcjZNezvZi0fW5pu1bWvVLrzdy5Hb8lLK4USEAHSZFpRaoGJ1ncCuQOHH
         4bew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="p4mDtQ/J";
       spf=pass (google.com: domain of 3rj_-xwwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rj_-XwwKAC0WMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id r142si22795pfr.0.2021.01.12.16.32.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 16:32:47 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rj_-xwwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id c9so582259ybs.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 16:32:47 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:9387:: with SMTP id
 a7mr3131575ybm.73.1610497966973; Tue, 12 Jan 2021 16:32:46 -0800 (PST)
Date: Tue, 12 Jan 2021 16:32:32 -0800
Message-Id: <20210113003235.716547-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v4 0/3] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="p4mDtQ/J";       spf=pass
 (google.com: domain of 3rj_-xwwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rj_-XwwKAC0WMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
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

Patch 1 is a cleanup from Masahiro and isn't DWARF v5 specific.
Patch 2 is a cleanup that lays the ground work and isn't DWARF
v5 specific.
Patch 3 implements Kconfig and Kbuild support for DWARFv5.

Changes from v3:

Changes as per Arvind:
* only add -Wa,-gdwarf-5 for (LLVM=1|CC=clang)+LLVM_IAS=0 builds.
* add -gdwarf-5 to Kconfig shell script.
* only run Kconfig shell script for Clang.

Apologies to Sedat and Nathan; I appreciate previous testing/review, but
I did no carry forward your Tested-by and Reviewed-by tags, as the
patches have changed too much IMO.

Changes from v2:
* Drop two of the earlier patches that have been accepted already.
* Add measurements with GCC 10.2 to commit message.
* Update help text as per Arvind with help from Caroline.
* Improve case/wording between DWARF Versions as per Masahiro.

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

Masahiro Yamada (1):
  Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4

Nick Desaulniers (2):
  Kbuild: make DWARF version a choice
  Kbuild: implement support for DWARF v5

 Makefile                          | 15 +++++++----
 include/asm-generic/vmlinux.lds.h |  6 ++++-
 lib/Kconfig.debug                 | 41 +++++++++++++++++++++++++------
 scripts/test_dwarf5_support.sh    |  9 +++++++
 4 files changed, 58 insertions(+), 13 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113003235.716547-1-ndesaulniers%40google.com.
