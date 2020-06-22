Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW5UYT3QKGQEQEHCSOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE0B204231
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:53:49 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id h25sf513845ote.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859228; cv=pass;
        d=google.com; s=arc-20160816;
        b=pV5tX485Ow8y7Nn+P5Hox1vI5U0gwWw7EAQykYHCmlBPESfOkmcbneb/LAzKnQBpKy
         HyJSPWgmjhMvHEKF0eQP9dxwlT7ObWo7PfDtFPGa4S2nepN7FaBUiuMv/+cuSPXoeN+1
         RvgIi/JUzg6obywuLBUeidLsb9NQYszCbiRfxXKV6WsAfKQGzJO2NrJAfcoCVErPWtGS
         /r3wYzEzvprDyi3/q2SwyUCmFiAvtRvb3M0Xfou2ztel+d27NDdzrWnWraya8M+e2R11
         nN2O0afeG1XdVvgprVH0otcwn9mGjzpIgYKBGqvg3L7sOtSl7oL3wqtS1EI/qkDLs3uD
         zHCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=7wNQSZu4YT3Ic3a5PamROo6iAYO4YWSodvjWdE6yGWg=;
        b=A9w+B5ntRIEWJjGjHVnlGbcf2npLtRwdBCeQBMyzOjSz9R7VfYoWf0JRv6+0xOkMIk
         i7bgs5qcZ/7/Wlb4szBYGpxFAM8BW6oLGzoy2g/iPtJZFHg0CPzEPV9/DZCSpEzJ50Ji
         xFaBWR952Cpibp7esVeqk2YwqsDMi1/kewz5C6uS8vELWM+av1iw9VjLP0fy829hR5uq
         FF9TgIO5Twy0bILRhxZi3cmHWXJtM2CFu+9vWrH6FxiwcKZTrwAmk23Pb3fZdELJjFKP
         ZtxTjFM9FyOaXGjx2q9dULDTWnaMfFyJ5cUMBdbrURw16SZxNjIuegAfeQUvZUyHdPbD
         rnhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="jPi/b9t/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7wNQSZu4YT3Ic3a5PamROo6iAYO4YWSodvjWdE6yGWg=;
        b=jnu0qHXaydRgwiPeGLSqow1WaLM4ZodNwgTy7r1JWLwsphsbQeiTIF2gWkCYq1z4/P
         8hDxMXVT1CCWx11tzgFs6J9SdD2eEHd9iX/mK+xjypIH0fcQlltgJ4MIdYgmseWx6QBY
         YqPDv9JwGSTXumtAFsfPRGuP98k+nq+lu7g8zlXA6Lm4Nx0VtgESlwOFWn+5NQ4y0kgT
         Y6mjBO7gyfl+i8PK/OzEr/vMkEHxnP2/VJhqfyuApkaA1oVzLjl0F8SFNlX/LupsRJ1Y
         +XFWNgSlh9ZXSOxtlJ8CYxzGM8kAxmuBZFwce7Z7DMjvBWejEmFQbKab2DPI1lll7YZ+
         jfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7wNQSZu4YT3Ic3a5PamROo6iAYO4YWSodvjWdE6yGWg=;
        b=i0FrkkBaiFXNXcgTYxo6jQo0nSPZIVbE9sKxrsn+lMspywHzF6qSMQKCkiABl6G07O
         hpAdnOEQ5qC7BVBSmPJ3nGW1wK+pLPaSVmHOcMBoG167Ao3LS1ynaS/iBUtYH/E99r7b
         heM+MxMo335i2iazGyyNHEeEFaN5oGKTJaPkbFAEUfZRPgXRFON8uDexIgPZlRRf/zBd
         p6As5WoTZQxJU+ohrSZojigJ/cDGT0dttCIUeA5/77mf8oEQZM0KPYZgcgT/obwdR5Pv
         mr+3qG+A0eYDrtbrPLMeLD+KZqhjHEu1v2wQultyYFEN9I5RRch31mikgDicSydoXFe0
         2pfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310UoOOXTNOVvv8qvBqevLOASE6VVfGnXFYNAoaCvprbcJDy/22
	RcZEeZdRug9xb7PgmdGnGVk=
X-Google-Smtp-Source: ABdhPJzwL1Ck36pzICgaYydS0WeoW3fdZlYeL6iIwud1n+iK88B8DuecFOd/Dle+gHxfKUGS733dAQ==
X-Received: by 2002:aca:902:: with SMTP id 2mr13409880oij.151.1592859227876;
        Mon, 22 Jun 2020 13:53:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:bd16:: with SMTP id n22ls1008981oop.10.gmail; Mon, 22
 Jun 2020 13:53:47 -0700 (PDT)
X-Received: by 2002:a4a:4245:: with SMTP id i5mr6672067ooj.47.1592859227588;
        Mon, 22 Jun 2020 13:53:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859227; cv=none;
        d=google.com; s=arc-20160816;
        b=sEbW3lFUAj6zvcuf8ffoU1ElP00xCnzv+15mzyoHLUYy3vq6misalkzIeSbpvbag4+
         DZoJJJYukghDmQbd2DAy+8ytfsQgU6574QMy2+qupJHDo5U/gESEsXktsXmGDLuQv7y3
         eVBteY03nuWBy8q/W5Dm5ah79147/IrohNH5YS4pUuXgBov8UKBLQMkB8nfsd7CJSmgh
         pEt8rxDKp2kFv1L7Q8fcx7UADg+XYmOyz6sS/WI8BDPWKzycgnAb/PtmiAf1FOCsk9Qm
         7rY5qEX562blXRcxoda9afK5EmD2FpllPM5TCsM7uj9T5BNXIZOwqrfhXc0bGTJZ5GNZ
         Ik0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mDXLfB+PQDLRQ6NmPDmR2JF3Ok4ZVjhNHcZbi8M58JY=;
        b=LXt0xv61Uxzzyj5HpxrOXKfSpDlyDhcb9xdbkH+Ww74I1PsIZ5ZMH/4fPT+20n8/p1
         CTHGYJxiYl3pSTuyNgkoIxTvCZU3cGAxj2fB8AWsVKMYmFs5fxh6RA1oyoHkgtaTOZI/
         Kmgj21n/BKrqfsotcbSgRBewN8I2SpTuMlWr+ODFHig5eFW7BwLNxc8Y5JwH5ykNMhIS
         uCTmLXvpG5Trk+O4KdmQnLZnEa/1smOYPLXaFrNl9w03oCI+vJcxcinGNzP6VrmqBavm
         eNJ9jtqG8fyM1ZDfnd1rqlyDeYGlcBZ55Q6w16rqfdhku31QSCKk296u/a7EDKtU52dB
         RbQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="jPi/b9t/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l18si1021503oil.2.2020.06.22.13.53.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id z5so313096pgb.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:53:47 -0700 (PDT)
X-Received: by 2002:a05:6a00:7c6:: with SMTP id n6mr20534999pfu.120.1592859226960;
        Mon, 22 Jun 2020 13:53:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q22sm11005302pgn.91.2020.06.22.13.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:53:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] x86: Warn on orphan section placement
Date: Mon, 22 Jun 2020 13:53:38 -0700
Message-Id: <20200622205341.2987797-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="jPi/b9t/";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

v2:
- split by architecture, rebase to v5.8-rc2
v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/

A recent bug[1] was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similarly, the recent FGKASLR series brough up orphan
section handling too[2]. In both cases, it would have been nice if the
linker was running with --orphan-handling=warn so that surprise sections
wouldn't silently get mapped into the kernel image at locations up to the
whim of the linker's orphan handling logic. Instead, all desired sections
should be explicitly identified in the linker script (to be either kept or
discarded) with any orphans throwing a warning. The powerpc architecture
actually already does this, so this series extends coverage to x86.

Thanks!

-Kees

[1] https://github.com/ClangBuiltLinux/linux/issues/282
[2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/

Kees Cook (3):
  vmlinux.lds.h: Add .gnu.version* to DISCARDS
  x86/build: Warn on orphan section placement
  x86/boot: Warn on orphan section placement

 arch/x86/Makefile                      |  4 ++++
 arch/x86/boot/compressed/Makefile      |  3 ++-
 arch/x86/boot/compressed/vmlinux.lds.S | 11 +++++++++++
 arch/x86/kernel/vmlinux.lds.S          |  6 ++++++
 include/asm-generic/vmlinux.lds.h      |  1 +
 5 files changed, 24 insertions(+), 1 deletion(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622205341.2987797-1-keescook%40chromium.org.
