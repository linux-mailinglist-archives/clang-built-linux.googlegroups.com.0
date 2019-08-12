Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEV3YPVAKGQEUAVV4JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C15EB895C4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:31:30 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id u5sf4141116lfu.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 20:31:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565580690; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQsolgdZys5iR7Ycl5bBIO53T5awhkFCNG54KD/kVO/1x+NQPBgq7ilkkpqd87oG59
         FGFUDxtizNeGwIj+ab/YOgDxJhewPlTgbqxT3/N2nmvsoVsx3+jmhxUBqaBrTA1Y1Gfj
         dfjLnsO2UehreR+E/gShKmuUyNFvJevHo/laisM3vZMXOm3BMH6bR6aV/eXuVFMvF+t+
         LUtJnxizqtkBRMczwHfCFfS8GufVjq/D9q680OwVwpYqbF6OUSnTZ9eicPLzzYUseSoN
         a4u/4RspngFZ5pwzRLeiiea7gC4lj5CBeYVsWuM6UlKOPhnJGD0AulP65FFXgybcE4Qw
         yTqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=qfvqoTR5Ts1vH+2I/re5fZ1i58fEcVV7vkmPamK7dpo=;
        b=GSaV+5BQCn3VkTHWjSEsAkyOZQF/ifOmnCy46+mjMyUHhoh2lWMASgCSo83iwS9TLL
         CSGzW/p39GzqB1mG4p0dLLuXR+cLg27OSUEz38o/X8eRRZ+gtEoembZwIORMGV4v0lQ7
         r1tczPfXpvQZV/hBRAzFZTlqnnUD+LrKSjgXUlEFruIARzdPqq1cNtqsm0/oHbvVsTjm
         ldxz7VCs4CHf2/Q1pzP92vqsjEG3u07HZ1KkdFXQx9p0NpkhFlzacxvvlRIxbZ9Qlky+
         QTDJsPYJhphLP6sve1IruNI77pPE2fDqMORyK1RqGnHY6pyK4T5yiJISh+yZTP5BQDMJ
         ZKuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtsyS+GK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qfvqoTR5Ts1vH+2I/re5fZ1i58fEcVV7vkmPamK7dpo=;
        b=gQzIKz34YlmC3YQmd/zUL2BmXMHhG6qnF2SA3WqMHdNt6Dp8xa2hrjsskWbm65M0TP
         Kg4pW6hUULfjD/JrkuvHIsJhefPLZif0z5F0mXG3PUDn60Mfu9PEMZxY+iqtv0bDA1Tr
         pxavcU4i8wYQHKdDBUQL4Ld3vas1s3NrXttndUiariweUL3wMZTWetyNUAQ8aXG5g4ji
         nTYjM0KrVqLyUASxx4bn5N++JqlhGgvr+iONoLcxVlLymmIYfmtcBpsWpXV8PtOxHIB0
         hPyQ8QCaf9KZ1oq95a8PZ4jsP1mJylCMPQ8dF98m/WsfTBEfIDoz/MyEViL+y/qVfR4P
         x/yQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qfvqoTR5Ts1vH+2I/re5fZ1i58fEcVV7vkmPamK7dpo=;
        b=AVlMp0wrsFDk3iPRQ3YaZUsqe9Jl3+2+Bwy3xoadw/fUNeyPP6KT94dFBA8wfUhBu5
         NJWRwvwmXfa0lQCKwa2S1TM1ZSK78Mih/4ql/ZmzUljtNPz1Rr++aec4zucrdrM59vNK
         S5arKWemEVYgCVpiYrfHfFHuNR+7X3cE2OhieR63lnQ/yYXPB1ZY0DVPkhUeda816Aja
         q8XsJKxbDC44D66KYiKMpojq6kNJHRrLm0WBNSOJAcICXVZU7ZM3IofyD0gA2qD5mJcB
         Jb/vNEvMD387vPm7CTzLRvxpxGZK1S9xSaUDNW1AR/8xbJWOqIt9ei+nxopS+N3GdLoG
         Vcew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qfvqoTR5Ts1vH+2I/re5fZ1i58fEcVV7vkmPamK7dpo=;
        b=mSV2bFsKFvQ4RML+Kzp2WYB4Z6Y81SYBhH9A43Wvwqejzkin5Z1vPdD3AxztAnLZya
         ELj2x09E+U6OKbUeAsrIPU5wXBanEwev90AARwWXf+wuKM8A8Zy9ZUt7U+TBK8/6rvCE
         MNyV5x0okH/SYz8o6Yd1ZX5tAkRk5oRpBgYM+EJ0YOIV3MLecT+Y92+M3AGgAjWFmMY2
         cUI8uDEiIgs2OIm4wjXtCUpO89AxsfDRg9YAZcrFRfd+i2ngsoXg1qEcH/JDODhR43uh
         dhdEvyQR6clFcYptkX1Z7GgSZNBv/vGBlwERnx9SC0jS4plrK9l1ajSWDkhdvSXpieL5
         SKBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMghv0GTQoBv062sSIOXspLlqjzFx/lkOE2g8D0ji2TQyOj5Y6
	Mg31sv/nAcC3fmktmb8J5ks=
X-Google-Smtp-Source: APXvYqwUtng9SigNbgJ2JNFpnavDbOHtzNCZlDUjmty6V1AQu0dVknIWGX3Bovefx2xDlMfX4Ht93g==
X-Received: by 2002:a2e:96d0:: with SMTP id d16mr18073331ljj.14.1565580690371;
        Sun, 11 Aug 2019 20:31:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5605:: with SMTP id v5ls8773424lfd.6.gmail; Sun, 11 Aug
 2019 20:31:29 -0700 (PDT)
X-Received: by 2002:ac2:4c86:: with SMTP id d6mr6935420lfl.3.1565580689940;
        Sun, 11 Aug 2019 20:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565580689; cv=none;
        d=google.com; s=arc-20160816;
        b=pYQuuH/RKnxk8CFn/FFKqhMuh89H5vQs5I9IP9PRTVF/hRuvyL1zKmhSz/wsDbFKWj
         hp0V5x7dwZ1lD7mUxC6na2dhyXTtGf6NFYTfQ0vP3PEEYHXO56wd51Ire+aWBYmAU9vx
         koluDdMVMnmDgCR46SrwoWNAC5RHATxb+VzLvYGxS6IjOz8oHKthFKWowKJMO+LlQs5O
         qwty3BrtOWe8wBnsGQobVX6jzd3ChVnL8nZK408joULwF4dzv88FGHEGkNeISQWQmvSN
         yLYOj45KqVtTIn3RM0xRpM5IDcCW6xp+xy7Izc46+lobt6HsL9ReE+XSb66QGSHuehhD
         mb+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=015uEYjEdFgD5EcbxQBzasE/Mke0/bgRh00o9GHZva0=;
        b=yJsyGdnzC0DofHRqIW+8SdBdjH+23zLb4nW9YzZ1YBKXT06XBzr2BkV9J+d9fHvjt0
         eyknFJAHJZ9TdvcGaXT/N9MtYA45CCUipdLjHgRIqfYo6BFn2BCOESM9W6sQxNT+mRv9
         NHbLA4BRP4p7HUoIfavJfkfFgiriz75qH8y19dlWkJAOegavFlHdUTkrpddw4FhvsZs2
         Dw70+ehreQNEiicYqU+Dpf6JerpDwPXACT8GO8KUDGvLfc8JYkueP2SabpVIHN/mlMjt
         mPwl/wMGUGu7oIRSmsaaF/3K3zPlGBcrokKz1EpJOr41p/MQi3DVQcDRAQU+gQdp/qSx
         3EAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtsyS+GK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id u10si1367507lfk.0.2019.08.11.20.31.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 20:31:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id v19so10466421wmj.5
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 20:31:29 -0700 (PDT)
X-Received: by 2002:a7b:c8cb:: with SMTP id f11mr11575599wml.138.1565580689506;
        Sun, 11 Aug 2019 20:31:29 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f12sm117299330wrg.5.2019.08.11.20.31.28
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 20:31:28 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 0/5] Clang build fixes for MIPS
Date: Sun, 11 Aug 2019 20:31:15 -0700
Message-Id: <20190812033120.43013-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jtsyS+GK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

As of clang 9.0.0 at r366299 [1], we can build a QEMU bootable
malta_defconfig kernel with the following fixes (mostly due to -Werror)
and Nick's patch [2]. This has helped catch some potentially dubious
behavior with -Wuninitialized, which is stronger than GCC's
-Wmaybe-uninitialized.

If there are any comments or concerns, please let me know.

[1]: https://github.com/llvm/llvm-project/commit/7f308af5eeea2d1b24aee0361d39dc43bac4cfe5
[2]: https://lore.kernel.org/lkml/20190729211014.39333-1-ndesaulniers@google.com/

Cheers,
Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812033120.43013-1-natechancellor%40gmail.com.
