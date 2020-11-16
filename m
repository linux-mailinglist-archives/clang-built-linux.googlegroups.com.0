Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGUDZD6QKGQEMBUUNHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C8F2B3C27
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 05:35:39 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id o5sf17654059ybe.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 20:35:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605501338; cv=pass;
        d=google.com; s=arc-20160816;
        b=RKxfogyM7J+C0h9/S8rQV0AJh/QZHwHBt4j18eKIa1J5PRxuB9c5AAdaapAAXGFtyE
         w4e/MGddVBBFvSJq1dqOlooh6CxQTKcbAWvuUvbW79jfjAIvfHYYmwqBWhnXTOzKR3A/
         zfmFRmWRt034rMIzpIkOpbEsaxE6Vk1roa3ZAu3thf4hReNEZPzNg0AczPlPumH0zqud
         mGA8/gk47ARmfwrUZMZ3kMwp69xX3TGpY1mAm6HOHmpoDZ1bwmJMk6OJIZbc1hHHd5Bp
         dGb5WRmASMDOX34nvqKxFxxEZVU5ElhlNaNu1ipVjO8zDDNNwZ/3+VCUkwVIwYS5q4pj
         eudg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=THvoywzRBPWu5v6RWIq3r/90RNaRZ8nes9hLhQelNxU=;
        b=wJ9kFjwona/tymWQ0nnqcFaZ4zfefGLqrIjbGgVaepaAWer/n3OJgbQ2D8PaeHwtvp
         JRQARP9nK1ryJGovA7uZxpHY1EMYWMqinurvQQRHdkYx2HsG+kQN+JUqX1xwCF4My8K4
         ZrcuKc/BMWXmsnrMxNZj48iTfmxeL+XOPVq04U6J8OA9lgcKCBZfqvl5WHr9KBe6d2cB
         o0fCH8NRoQGtrYRTdTbzEyJX32/6jFJxMmBREo8f+WMr6SDyZbVULazkkMw0ZqSJqh+1
         FomQL0T7N6Q3XHTuwGZJ54Am7JX0KI1gwleMXZAsUg5QfrpEFTAvswpenM6Bw9Nh4fa6
         LTbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H99SKUXX;
       spf=pass (google.com: domain of 3mqgyxwwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mQGyXwwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=THvoywzRBPWu5v6RWIq3r/90RNaRZ8nes9hLhQelNxU=;
        b=d+H25nuZGdtGxX6SHcj2f6iAinZ3sgkd18cSdmMx43vfu2ZFT09dj+DJ6M8FVqzWKk
         U9v6holDYY0Depyv7HYISeCEsnlHxhwa3ClqpD3GeQQWOq4KjnAMngD0zi5HfB8Pdb85
         KmX1ICAuBf+P1XxSZNqFpjQRCKxshssT/HnRQpIzAdSfKr9XCf0OeAwIzdaNJORxuuv+
         9vyot89EddED7VKFS/PIH8E9T7m2Kw4W88Mq1AIsDJSSrr2psvckhc/qibffPuL/y3M0
         LJQ3EIbQLKTCOo9yZ7nKVB44oL68l432X2M1mwcL7H8YJ6e/pYpukVjktpnhD2xmVZkd
         dEYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=THvoywzRBPWu5v6RWIq3r/90RNaRZ8nes9hLhQelNxU=;
        b=XZ4AQwiFUwxjl0nQtycFyOI2be31eVfKZI6UZsKoGw4M04nwz6+lnLv/r/dANo+g8v
         w0BIijVSsVy+bV12IEFf4dq6E2I64lBc0aZ5eOnWDfSFvbScVnWnRidKQc6xnFchuHX8
         j0Joeg2GUfd/G8Ui7wG9x/parGOvVMSeyVdpDCkuwCFJlEwZz9oLdiB9AUHfDKZ0me6p
         AKoVR3A1ubnAva+eNfR+VIVtH1iUD37ceVwaO6sLmirWIjSYpkEAwK2a70HMLuE/srwn
         YNlWkVPylqwe/GZhuy92FzixRjPlZPrwKMcnIie4kPtJX+pPp/vmqNsSunCpVy07zLdO
         4pPQ==
X-Gm-Message-State: AOAM5320v0xYQdoMWD9JOtGZzaWvGH33kpoopGEHvAvgv4CeKIvkjU/H
	e7liaCuI3r/lRgtowqQqoOU=
X-Google-Smtp-Source: ABdhPJymH2HrwYmfL+2948KY78NPSGYKcfwfLZ27xwB3nusw5DiP0ppQhKyCj7PkHPx9DIP2hT64Zw==
X-Received: by 2002:a25:250:: with SMTP id 77mr14840700ybc.316.1605501338560;
        Sun, 15 Nov 2020 20:35:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:4cd:: with SMTP id u13ls6271179ybp.9.gmail; Sun, 15 Nov
 2020 20:35:38 -0800 (PST)
X-Received: by 2002:a25:5806:: with SMTP id m6mr20857376ybb.449.1605501338056;
        Sun, 15 Nov 2020 20:35:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605501338; cv=none;
        d=google.com; s=arc-20160816;
        b=xKTIgBkOKFdVsb/vsIRNIq4yplSUpdcWOerr1zemCTUONq8vRHngXnFLuzMC32EX/6
         lZvVIlKEwyNWoNJH1X9jUk+tzpLzVfGhnG9f39KIOhwnLDD8ycXJdBV5JA8V+ICb2Jxt
         JeMU5zrZUg0/+mdglzaXLZPQp9/WEyv01Za4TkNdLMztGLLhy0mI1jHfc1/1qMYmeabT
         r0XeUppidUwStkuObiqcctSY1xKJdA9d09E4JeDokwyksLa3my9NkmNGWn2GOktxL14k
         xjTw8tUq8Pez8A7ecUqQQELc0QVzBOxqprwFhQ70Wki5s/MzN7UOppFRr2BweE+KtQ3D
         K3dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=dwGE+EuvUvxVOeNwuorSmE5DCZ0byzW0xaKhrjXEexc=;
        b=1CRs9dc6MG53CqoKgELxqP/YUMMMjkTQsyGQkPrgKTF++PHAIBLgwTXKOJ7SAdeBBk
         W7mweSdkQj7pB28cyn6goMWHmV8v+Zck1AvKeY1jusS/DM+tJjhTy8VMytqUITDzcmMx
         aF38hT7Dnjj0Be/kdrJoqWXVWL+GgUDyGRtQyw70kgAdhDVA84huIIICoZY0+IkimA/f
         q2ERz75rrlSr9vfMrPcUu2W6dFUm3hUGlsD+CeUch1d4Mnhn6oEj5UveNe3on8a2wvjB
         K4iJ4v0mVlwTTDpBsNZIt1M8K6QfOd8zm3Jm7LAlJOEQG+iUe0qqJEAJTW+uJGeRXHiw
         VS0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H99SKUXX;
       spf=pass (google.com: domain of 3mqgyxwwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mQGyXwwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id y4si1107272ybr.2.2020.11.15.20.35.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 20:35:38 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mqgyxwwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id c71so9289400qkg.21
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 20:35:38 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:524b:: with SMTP id
 s11mr14139796qvq.3.1605501337720; Sun, 15 Nov 2020 20:35:37 -0800 (PST)
Date: Sun, 15 Nov 2020 20:35:29 -0800
Message-Id: <20201116043532.4032932-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH 0/3] PPC: Fix -Wimplicit-fallthrough for clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H99SKUXX;       spf=pass
 (google.com: domain of 3mqgyxwwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mQGyXwwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
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

While cleaning up the last few -Wimplicit-fallthrough warnings in tree
for Clang, I noticed
commit 6a9dc5fd6170d ("lib: Revert use of fallthrough pseudo-keyword in lib/")
which seemed to undo a bunch of fixes in lib/ due to breakage in
arch/powerpc/boot/ not including compiler_types.h.  We don't need
compiler_types.h for the definition of `fallthrough`, simply
compiler_attributes.h.  Include that, revert the revert to lib/, and fix
the last remaining cases I observed for powernv_defconfig.

Nick Desaulniers (3):
  powerpc: boot: include compiler_attributes.h
  Revert "lib: Revert use of fallthrough pseudo-keyword in lib/"
  powerpc: fix -Wimplicit-fallthrough

 arch/powerpc/boot/Makefile     |  1 +
 arch/powerpc/boot/decompress.c |  1 -
 arch/powerpc/kernel/uprobes.c  |  1 +
 arch/powerpc/perf/imc-pmu.c    |  1 +
 lib/asn1_decoder.c             |  4 ++--
 lib/assoc_array.c              |  2 +-
 lib/bootconfig.c               |  4 ++--
 lib/cmdline.c                  | 10 +++++-----
 lib/dim/net_dim.c              |  2 +-
 lib/dim/rdma_dim.c             |  4 ++--
 lib/glob.c                     |  2 +-
 lib/siphash.c                  | 36 +++++++++++++++++-----------------
 lib/ts_fsm.c                   |  2 +-
 lib/vsprintf.c                 | 14 ++++++-------
 lib/xz/xz_dec_lzma2.c          |  4 ++--
 lib/xz/xz_dec_stream.c         | 16 +++++++--------
 lib/zstd/bitstream.h           | 10 +++++-----
 lib/zstd/compress.c            |  2 +-
 lib/zstd/decompress.c          | 12 ++++++------
 lib/zstd/huf_compress.c        |  4 ++--
 20 files changed, 67 insertions(+), 65 deletions(-)

-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116043532.4032932-1-ndesaulniers%40google.com.
