Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBSFXSP6QKGQEOUQBZUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5942A8EA7
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 06:14:49 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id w79sf38255lff.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 21:14:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604639689; cv=pass;
        d=google.com; s=arc-20160816;
        b=aS5dXmJqeLApDjlHLdZE7HrfJIR1m8YzfwFrgdRRvFqqgHk75jmTpXeTrMp0T1U6K7
         AF+YQQ8tv8vWs1+r0HvnvaprY/hT7KIeoUBC2lRzVjccwa8M9aUpi5DgA75nVmiEwMzX
         TaQQi61s0tQExEOjkIVRYspJZ4oGc9X+m1OJsH+1Qrby/gtAUTLDHyNK2lDazajepvRY
         B1nWiMTGeDyadHx43KqKnsJGWpVGhqwc1v19cTijih8GK1OSNO6zea3qIUSbIcP6SSqQ
         KDk8XP3/TOSpS2TFFz3rxpHb5BtymQPD43RT4JX4T11gYhTBjq/EAybIO+y810iOjzVu
         i8Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=SxNWt4npnw6hBvwGXjtnNYNsqMEzchgfJ2gN5zyRGu4=;
        b=LuEZXF0oV6/QFg+mH6ocKuX8NH6M9TxBkimnkX2vXqEtgGD3SnL84R7nG0M9wFFybz
         7jALEbSFdUJ182r1WS2XCYGuOz79IER8XUPrj2IzA0hvO193JF5NK9R5srEU0ROCiHgQ
         oxXNPiuke/i5Gt3mlRYq9ojHrVNawLtCuKXqtGAo4+B7dds7zglWqu2fVkL/A+g41lEq
         vxjleLZ5Wkn5/BKb62odvgGx6sg2IoRCGeQD0wM/HbC+aImN0oYhSm0dnzQ9vY3UljoV
         n92V55GtmN287cXmZZ9wAJ9cbIUjikApXgTZNOQ2hruj+/oERfRLUODgbWzbTb99iprA
         cOtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxNWt4npnw6hBvwGXjtnNYNsqMEzchgfJ2gN5zyRGu4=;
        b=KYsm9lVxnlrSKAVArzH7C3YD7FXUtQTVuxux0Ci10nqH92j96l3zj4zP/zWzbz2aT0
         kOpKRQmOcf0rgxgTMddIl2KTFM5eqpd/g7x1kgY89OYsWfbtKBBb2a/mFBGBrSOrTs3f
         /Q8wnPgMPiclBQmIZG5JRlB6VeY7WmT8+OPsOIBbGYnFePSKA7CyW4trk0nTn/IVbDQB
         4LrizLuJYVBhX/snTzp92QuHlyijUqY+8DwiU+frZnu037bo7HM+jH991w2t9t4Qghux
         qXBeiZrmcHgQCJq4792tMaf049ra2ardQTqpmAURVS3lKzIkPrNn0teM5LgBatKeD1sl
         cVhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SxNWt4npnw6hBvwGXjtnNYNsqMEzchgfJ2gN5zyRGu4=;
        b=LU1Z42guNN09I2jAfixXd2djU6hy3xlSModFvQgTE+mNRLhNkr0ap3EQQSnlKsVThU
         I/vp3T51VTOKdTLMB8UucetL3qEjTfZu1fWGtyQdxKf/RWPvpbYPVMRXsXv34I9fFHPN
         KadbDuijY62Tq/EaReWrOJPqpJO4G9scJKfDVCRd4D0bY8Z4JnCJ+oEnECWwOzlliGwe
         r6PL2E2TYWePO3Vp0P9c5fzU/wRPVTerWwXgitkw26vnMXfIgED44or78vM4YwcdhvA+
         JT7HYGq8Vst4xpcieYFH3m60XfaPGvk6hWcmdj5JU/d5/tGzQR+K7AFVaTO84RTzG65O
         Ykhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jsRAWWZJlJD3hNITgotaa+Y1/hDmXPs38z5BsbM+32HCxBL/2
	4J+TsIRpayNJotxqAP3zGPU=
X-Google-Smtp-Source: ABdhPJy5L4J6t3pMqZhfrrXJYmrR0uXykB9mZPQWs1e82ftPymKm1jHWiGQasZOPko95iWDgtmo8ZA==
X-Received: by 2002:a19:7f93:: with SMTP id a141mr181265lfd.169.1604639689215;
        Thu, 05 Nov 2020 21:14:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:d0e:: with SMTP id 14ls105573lfn.0.gmail; Thu, 05 Nov
 2020 21:14:48 -0800 (PST)
X-Received: by 2002:ac2:5962:: with SMTP id h2mr176505lfp.587.1604639688156;
        Thu, 05 Nov 2020 21:14:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604639688; cv=none;
        d=google.com; s=arc-20160816;
        b=QPZCWev/P7JIBoxbX5uLRqNmaBlwM9ZIwEqzEVGP6knIxwwYw7PUO1X2hkmLHwfTen
         R7ReZzIx4XTtRtxGwpNGYdItPKvFqoBS85rxIMF50/ThRvxI/bAU6UkAST/+iW35XTf/
         dNPG3XTMPCcDJvmnAyB8A4AB2KVNSaImCnBXlM89wqXHvsv5EiGLdNRpAhPQ2WwImu49
         JjCISwIPtmEUpCgsATVSddYWecVRbornL7n720uYNm4tDrDCfOfIcdFt7iFp6Od/kzSC
         5/295fdMrr/TBtnRb/f61M8cQsqY7wvmdv/6RIAOcAT2I2yGGl+9h8VqnZENDAKhnhoZ
         WxsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=nZGs+FaFeIXL1i8d3k/VNNYTJpJYMl//yE1yX406CWA=;
        b=Di5GQIeUQoVZcubFG21TqWJon4/0VHr8OlNkyrOqnq3ipcLhwJhU54gc/n+FTbKVn0
         HliJB+dyArx3RcJ4GJyu6Y2SlsVdOxOqUpiLAajCxplPHLAr/lxrtxjmqD/yMpAAPPiB
         o4XyxBBzGfZeV+RoRtJ86qX5kKNtDqGy9YlC8IDGbyFGfSzAE6cfZaCZowIof2yAO3d7
         lD+Edh9OwqWzf6KqXACB0anAdzLPXrXvGPyLtFv4+hRFt1M7D5v1DSKQEHGvCXJs5do5
         rtjqd52Y4Fit3rXDneESam1aJzeuSOsjVuiXCnYUu/UEKkrhf49L5l3oUUZajyEbCyiC
         tO5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id v24si5782lfo.5.2020.11.05.21.14.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Nov 2020 21:14:47 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id BD5F01F46653
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux@googlegroups.com,
	Russell King <linux@armlinux.org.uk>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 0/2] arm: lib: xor-neon: Remove warn & disble neon vect
Date: Fri,  6 Nov 2020 07:14:34 +0200
Message-Id: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Dear all,

This is my attempt to close the loop on a relatively old discussion
[1] caused by a compiler bug [2]. In a nutshell, the Clang build issues
a bogus warning about GCC while it silently botches the neon auto-loop
vectorization. :)

Many thanks to all who have investigated this issue before me. Arnd
posted a workaround for xor.h [3], but I very much like his first
suggestion of disabling the broken feature until the compiler is fixed.

Tested on latest linux next-20201105 using bcm2835 & versatile configs
and Clang 10.0.1

P.S: While testing aarch64/imx8m I also noticed vectorization is broke
there as well, but that deserves its own patch because it's a separate
xor-neon implementation (if this approach is deemed sensible).

[1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20190528235742.105510-1-natechancellor@gmail.com/
[2] https://bugs.llvm.org/show_bug.cgi?id=40976
[3] https://bugs.llvm.org/show_bug.cgi?id=40976#c6

Kind regards,
Adrian

Adrian Ratiu (1):
  arm: lib: xor-neon: disable clang vectorization

Nathan Chancellor (1):
  arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning

 arch/arm/include/asm/xor.h |  3 ++-
 arch/arm/lib/Makefile      |  3 +++
 arch/arm/lib/xor-neon.c    | 13 +++++--------
 3 files changed, 10 insertions(+), 9 deletions(-)

-- 
2.29.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106051436.2384842-1-adrian.ratiu%40collabora.com.
