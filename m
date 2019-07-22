Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP6X3DUQKGQEHDGOJZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3114D70B80
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 23:33:53 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id p62sf10859948vsd.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:33:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563831232; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzvNRa3vyuShgbD2XMYh29gPBEL+xXI8YwYAvU+BFILjOhG5gc1UwJVBwS8REA1oi6
         fmUXKkiT1DY8GrBmlOzXqL5cnBoorYWgLDOs1DkGxMzdMzWTKUqBpc2+OWjkuJuS+nP2
         AzbV41VrFFVGcEbJ6rMEWBkMwgk1+fbc/0a6Qbc5oFsGIS4QZVPczLQ1ltCVsb5M/IJk
         cO7IYa7mAw4LYHTpx4zX4nTC1dcQA3aJ/S2OXB4d4arszU2Oa+VUoS5QiFRP7tDRanBf
         6Q1JEQUOMXs0TBRSC/yS2lKKOz335REiRbbjGkERNeUPIwI54vl5cfN0yflNeWdM2UzR
         i4iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=86r7W1AEZdH8FgQyvVBnKQAiktTaCKjgoXKTM3zyq+0=;
        b=Jc1G9I5Zl/8ZbBjdkOEXz6bNts/z2Q4vvunNkWO6s5djXjMQUR94m6eWZrZf+YgQib
         GCTblTN1paG5S6q0UVOOlvHZpkVfDuBuW9AnIIsX1SpTbI8qru894eqZ/03Ls0oK88bd
         4WNko8O4q8pCBTTZeLxd3uXDcN6t/3INsTkZpeCduTZkBB/UZtcQWKQpKq7Z8sYdjCly
         fJ/QsqneT0PAaE51dJL/3kClL8Ctl2k6lI/1kDGuGHXzB7ShLi+9MLqIemic65dyQwCD
         iH51mzfi+jjIpmuEONQobI6J486mjwKy+PpvtptjiXpTAK2W0wSzFysmx79v912Ob6Tl
         7EdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PMDKzgMr;
       spf=pass (google.com: domain of 3vis2xqwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3vis2XQwKAN0MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=86r7W1AEZdH8FgQyvVBnKQAiktTaCKjgoXKTM3zyq+0=;
        b=iVdEpdOLXWydpR13IBxYY9/74Nc3AgwFoHdEwjXcufUb6eIMGQIjdcJhPUYtb5a58O
         flR0sYLFl0EhOQbsDRkoByIH0lpuj7HaqXZNCPkX+uou1UTyen9JdGBPEb6Q/Pr7VECN
         sFz9X8SbdROJpJAHu8uq0N0rNyIRWFttjAvzciV0T7osXM2HBXEr12sti8eXRcD+wVqK
         4u0m8S5fS9kXYWbHFW4EDFXhJUZVgzbjgw7qKOO1JrMcEsNXMdAv/z5iUHSfkvDOVRaJ
         R2weh2OZi4yUCcuInXMdCm9SWvYGU9QP9g3qYDn1vNNU42NPED+tolKjF81GIqOIHIkk
         N05g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=86r7W1AEZdH8FgQyvVBnKQAiktTaCKjgoXKTM3zyq+0=;
        b=uUQnTZfXBz1xL7LUS+x6DSwL8KllERl+IKsxaAmopLDPFkFXFNVFC08BvPATmSyxa0
         yc0CmG2Bzpukf56yYTA9ZADMQ5w7wrXfukSZKKqE4BS1p/GhRTZ5gq+s+UjuE49SkBok
         aTZisG0A2IgFdJU72/ZwuFhQb6jm52EtcaXGDPqNhYqdWJXdx+oFOUAR7aFZjHNwGh33
         kgaYJhoaWSqsxPzBxD5kUXkQuAXGSBnf13GoO45y0Rh93TmGfV3TgP7eLIMVpBgm2qZ9
         9/Qm5ZSMOEuP5r1TMWf+4Y/EIBGOqoDRm1AmMuIHMsDX3AgFW2l7jLuSXCepIO9yeqiK
         Q4mg==
X-Gm-Message-State: APjAAAUEcSmLltk2PX318Pup/CuEhSaj2bRAPYAmrScVdm/tSpRIgrGx
	SPeSBqjwhJKQHXLuDqWWZ10=
X-Google-Smtp-Source: APXvYqzlfvge47YSw0SmvQZz5K9WhdgQZD5oH+EAp70MJviSn0CRQA9/Q+FtSwKwJ+0HLqFleEPAMA==
X-Received: by 2002:a1f:a74b:: with SMTP id q72mr11418031vke.55.1563831231973;
        Mon, 22 Jul 2019 14:33:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8944:: with SMTP id l65ls5116689vsd.0.gmail; Mon, 22 Jul
 2019 14:33:51 -0700 (PDT)
X-Received: by 2002:a67:7dd8:: with SMTP id y207mr46402292vsc.67.1563831231786;
        Mon, 22 Jul 2019 14:33:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563831231; cv=none;
        d=google.com; s=arc-20160816;
        b=bfRNvOu5otFKwMrqEZVh0UWBGRMOqq1UmmDvF8cCvTh5gyXhj1metF09hrapjAOdcr
         daiPnFImZl/QQ8tZ7APxnRkT49ws+Ew5dtHsRZpSTUtnuIERDvpQcjZanD5PC+xsfc1C
         TX0LQYTNStPaD0viqwciwqPlIVaDijSoNeUzmCL5b1UuVyQNTYw10iWBJ9Urxb7gbNC2
         kNMPQRuEFgXFwlKGIxypL9cs/sV40OlcVxvyPajyINXoLar43lGsgIFtsNdAh/4awtBK
         Xg3PDShWChX2k5Vhb5nzn2y5ErFwexmhpv3nWLufDq+BsSFwBqMzV0BJQcTRIzJAsJ/G
         zrwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=7O/JzQ/1n3zumga3kgVoNWZMaZ1xFFTDQSRPDNbJ4fQ=;
        b=fA9tyiFBjU/BEhVycd+EGMwYpKra49bVWGeJ5STlZWWwpPZTnH8IDcfdR9TQI9rjHq
         gwKd4R3s530NnyNcRKwu46UlL//V37LgrETY+68bBcBgd5NNZPu8M4uhfcUrdLle0s6p
         oeLOjHWOexNQnsIHUr3fokpauCEpp3VaJkrkcy+v3kNb5VWhEg2xy9i79NflWhPE7F+l
         2M7MznHBxKvzXTYuQXzAK86sBv29h1zvCi5KXvpimzqETeE6A7z38wH/SfX+oVDUDtlf
         2NqAG87HjVI9cuepFVaYiSS0A4qNGi9yeCKUiP6wU8POGs62qF5W1VCVWX1SoPeDcOa2
         UoBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PMDKzgMr;
       spf=pass (google.com: domain of 3vis2xqwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3vis2XQwKAN0MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id d8si1937901uam.0.2019.07.22.14.33.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 14:33:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vis2xqwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id u1so24470155pgr.13
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 14:33:51 -0700 (PDT)
X-Received: by 2002:a63:ee08:: with SMTP id e8mr19201431pgi.70.1563831230535;
 Mon, 22 Jul 2019 14:33:50 -0700 (PDT)
Date: Mon, 22 Jul 2019 14:32:46 -0700
In-Reply-To: <20190722213250.238685-1-ndesaulniers@google.com>
Message-Id: <20190722213250.238685-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190722213250.238685-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
Subject: [PATCH v2 0/2] Support kexec/kdump for clang built kernel
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PMDKzgMr;       spf=pass
 (google.com: domain of 3vis2xqwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3vis2XQwKAN0MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
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

1. Reuse the implementation of memcpy and memset instead of relying on
__builtin_memcpy and __builtin_memset as it causes infinite recursion
in Clang (at any opt level) or GCC at -O2.
2. Don't reset KBUILD_CFLAGS, rather filter CONFIG_FUNCTION_TRACER flags
via `CFLAGS_REMOVE_<file>.o = -pg`.

The order of the patches are reversed; in case we ever need to bisect,
the memcpy/memset infinite recursion would occur with just patch 2/2
applied.

V2 of: https://lkml.org/lkml/2019/7/17/755

Nick Desaulniers (2):
  x86/purgatory: do not use __builtin_memcpy and __builtin_memset
  x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS

 arch/x86/purgatory/Makefile    | 15 ++++++++++-----
 arch/x86/purgatory/purgatory.c |  6 ++++++
 arch/x86/purgatory/string.c    | 23 -----------------------
 3 files changed, 16 insertions(+), 28 deletions(-)
 delete mode 100644 arch/x86/purgatory/string.c

-- 
2.22.0.657.g960e92d24f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722213250.238685-3-ndesaulniers%40google.com.
