Return-Path: <clang-built-linux+bncBCIO53XE7YHBB3VIZPZAKGQEOW6SQHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFA01699D3
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 20:37:20 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id d16sf4777410otq.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 11:37:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582486638; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2/h3Cgzjh5Sb77xnloTAQ12zFqjtD05/+8kVb5qeW+7fqZDFzC/4xzSpSARLZ/wSq
         K3LAWtH6toEkPRGBW4h9FOneuNTsfReL494AkJhTWfojx6yH0tQguUvCedggC9YWDUlF
         hdoZ7oDwkE2lcSrYAtCpIwcjWJ4VObOa5tkpLKp8WxRoPN2GUDHkt+aQT1y11HY0p1BU
         GlrktxGHe2/Aka7nuAEDnXwQ3LfSi97fd/4msabpy6HfG3JnLAn/z3bU1fORiMoBoSSw
         U9mN8eyn3LP2gp0AmpTeh+rHPg/4XOnBcQZa5COj9RHk4oSyv+dB+gMd2iq0Cv+a7rYh
         IEBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=J8Kp1965/oxaskICIbUv2M3wolqiI76b+662sXHoi1c=;
        b=Wre7Lg8va2UH/DGBEGUG1PYdVFy3dISQsQJg1wMpR0V9hwzOLKGUV3P2qmXPfK4Mcc
         1QwcJlhPIsiU28UBP9V9YRO3xq7tXUsx3VV8QacvCW43oIjfgykRZhSoQy4OzXXhJDUc
         8hIDHpgtTNsEZXSipL9TBx4IzBMh/g5S20+AE3lTxCGK7FoSfNkOCAwsm4TQHnjXVedb
         eHi1xkZnOMkMJWx+k/brEYqNHrW6KgFUe7GP8fSv3YCZu6FdrKjieQgv1QUeKB+lUWy0
         SA24GPUvidpjV6r/pUD0d6lHJQtFsRjjgrVZ+yh0hGDd9AKyVZGyjsqiiBgdVL4QEiGL
         NJkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J8Kp1965/oxaskICIbUv2M3wolqiI76b+662sXHoi1c=;
        b=cd5jwqIT4aTdMoCl0DcsDuuN/G2M6+x9jIYQ7JsgdQxtd9+TExPs87qcUHi6DrNIPx
         Kx+6ep2qaMsuYDvVsDHU1+aAxxP001t5ypM3AyP3ghfbvs7xs9RODz0XTYmaMrfm7BZw
         tzwKo5e3ZkwvRKKslgiTRxF0LD6g2TTzgpF/hvQc9eup3exF+C6maB+hxIyQuxnCIxro
         ZAERMRHlc3BvyUvToj7R5ge2tJqa2SSv5ddGTie1TqOzCSdDHCzGWbSXWdLReidc6X98
         yYNs6EYFlYj2b9SQW14DPnRD4ch3Iq84R16QZW46oigxbo2CM1LDPT7jt2d7RRPVvCoi
         NrWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J8Kp1965/oxaskICIbUv2M3wolqiI76b+662sXHoi1c=;
        b=WU6na78g6dBkEoqUvd2yST6JfzMT4+FcLH1pp233DhYuvCJRDEHWZ4rwJNj99YZlBy
         eN+t/JFrhA55itFuAT65PSGvVnBC+hGruU38LBGub2PsGqLPaM8iAZtZHBpXlr3uxoaA
         VzwwIEM3zosrrxnbKz/53v9/KCyxL8+ml38KtGiNcnhjWtpBJJBhSjQ4F8z1GkfEfxGf
         lgHp+DBa7jUcdlrO49ed9qagkrLGxLGe2OYgyuCkJGSJmLMGabONLyUlJloxk8jf37hV
         p3XXAcqPnNrDIYh5iRYXCkIiAuU83ff/nRi9NXYRkLEU9tCC0BALLYK4sWxXc72HeAHx
         9Isw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUyUJTJj7vUlkK1PdLRSuhDdduqTNv0be7NRSf9K7rjG664Z6nk
	GGWhWj6W7SOUbAKB0d5+1IE=
X-Google-Smtp-Source: APXvYqyB5V9KtyM/ID2tp1dk9wKD6D6v22YK4VL4laSb1p6K8KafBvSqPQEJycMr/ZyHSdyG3s1BsQ==
X-Received: by 2002:a05:6808:b15:: with SMTP id s21mr9715815oij.123.1582486638613;
        Sun, 23 Feb 2020 11:37:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e15:: with SMTP id a21ls2309715otd.8.gmail; Sun, 23 Feb
 2020 11:37:18 -0800 (PST)
X-Received: by 2002:a9d:750b:: with SMTP id r11mr38929599otk.310.1582486638172;
        Sun, 23 Feb 2020 11:37:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582486638; cv=none;
        d=google.com; s=arc-20160816;
        b=TqUuBHEhWhC/372mjn/jMMMSBQ+KRFOEUXScfoOfOiKtcFDBNe1YBrG3uxDlqClWFI
         UkwbZroYx90sBaCijbSUk6PRljx2x3MghVEv2GYvr866Y/YygPtUl8R3i8KIj9nBkPEC
         +zGqiaxEGC8lb/zQVFLAeTkQggLFsUdFRa5zQJBVhVyIvGt50TJKmNiJyVm837TX3kTC
         OVN1wEp+0d4+RrGccDgOZf51l3DerPdCiyNg5ZpTlRiI8iZNcrfwSCVA/qEGhfx+5TnD
         0w/d/+paF+5QLiYKE2JG8YIPleA10acHC/qPJz2Je6mcY4ret3SWAYmwJSsH5CfiIy0l
         J8Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=DfzkHhlgdItc8s3ky+addnwXQZ/kxyiQG/TmfWXJMrQ=;
        b=UAsazcRf9zEPO8qiRLtzpl0bzMfcz2+mEy+WsapWdYYqIzi4x0DeTUokCHJEmFegAZ
         EQaWHUZ2EeePPcYlNXktuMufDpW5Uroq5Ph+EBXqSvtETX7KWKC6C1yB7VBpph+/xnph
         ziQR97S9l2LalTC9gYWqnW9qhK3iYMqbLenSxRInQi7uQu//mUhYz2CeSdUvyqSlYR8L
         M/2hDyCki5bGokoKnZ8WpsTJyjpVe7H87QsWiYopIOxkQKRhg65hZJcul2Z7oF/Q3twl
         rF8zZoXF0Blbn3SvTZf/pZB9hb+/cX1hEmzH39e2WVM6IJvdshewwrt0RmH9R8bjF+WD
         oeYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com. [209.85.219.65])
        by gmr-mx.google.com with ESMTPS id t18si551642otq.5.2020.02.23.11.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 11:37:18 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) client-ip=209.85.219.65;
Received: by mail-qv1-f65.google.com with SMTP id y2so3260842qvu.13
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 11:37:18 -0800 (PST)
X-Received: by 2002:a05:6214:1933:: with SMTP id es19mr39919830qvb.14.1582486637564;
        Sun, 23 Feb 2020 11:37:17 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 204sm4780976qkg.74.2020.02.23.11.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2020 11:37:17 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: [PATCH 0/2] Stop generating .eh_frame sections
Date: Sun, 23 Feb 2020 14:37:13 -0500
Message-Id: <20200223193715.83729-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200222235709.GA3786197@rani.riverdale.lan>
References: <20200222235709.GA3786197@rani.riverdale.lan>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as
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

In three places in the x86 kernel we are currently generating .eh_frame
sections only to discard them later via linker script. This is in the
boot code (setup.elf), the realmode trampoline (realmode.elf) and the
compressed kernel.

Implement Fangrui and Nick's suggestion [1] to fix KBUILD_CFLAGS by
adding -fno-asynchronous-unwind-tables to avoid generating .eh_frame
sections in the first place, rather than discarding it in the linker
script.

Arvind Sankar (2):
  arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
  arch/x86: Drop unneeded linker script discard of .eh_frame

 arch/x86/boot/Makefile                | 1 +
 arch/x86/boot/compressed/Makefile     | 1 +
 arch/x86/boot/setup.ld                | 1 -
 arch/x86/kernel/vmlinux.lds.S         | 3 ---
 arch/x86/realmode/rm/Makefile         | 1 +
 arch/x86/realmode/rm/realmode.lds.S   | 1 -
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 7 files changed, 5 insertions(+), 6 deletions(-)

-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200223193715.83729-1-nivedita%40alum.mit.edu.
