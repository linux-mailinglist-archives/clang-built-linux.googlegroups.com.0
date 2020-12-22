Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPNORH7QKGQEC6ABIVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A2D2E0F5F
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 21:29:50 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id l18sf8101384iok.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 12:29:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608668989; cv=pass;
        d=google.com; s=arc-20160816;
        b=p5ujGE5Lgtr0cQ1cRSPMHp+0CJtiODH/iSBjdrD3a5UzL46chXvcZ6kdwg4pQB4cP1
         hSIcjWudFUAVvqs5j1cCZBtjk0BQB4gWdSpoe8wy0b9kq+44RYiF/sdXsW0MHavWRkbO
         MUOl+AGx4kvXHvS8Fu1mYpWH9wJsTpGXwoEHa0vlJtKUBNApeZ2TFqQfY9+Fb7vFulsU
         h3tJP4bPYkWMygt1ARcr3Lx3AEx89IH+9UC3Fc+3KiLQpYzGHy5EAYPnhBfFv+7L5P8Q
         NfL+orskfc4Yt1vQWr3yT5j2V9ZvplAXg1q6OcN1kBtkghj3UOiDow7AxtFRUocUqQuC
         hkHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=XOSFxsO2xB9Nb2vLi2Eu3fl1pG+5YxPMYfUJ24ZxoSc=;
        b=AFbSuP5tnVVboYeDH6MEiQG8f5baxuf5LiZ5qgrzlvS4nj8sSxxJguKeJFHWHziETc
         BvI8vIvvRTVwRhBE2pnhq6FYPom9K1y24xpFKV/Xn0HU2T2jH7krPkx+vVubykdmrx1O
         qm34AX+Y0/VbquwLaIQVd5Wycev44VaYU40nUXirgoufbOjCNFVuglrPdDDvTmqR3ITF
         DjcseP6ev/W+98hb+pJx+3ad0oD7eQtLM7O+QWAoU4gUyIBZwDd+l/7uvhWhCi4MYlvf
         B29RgXlKGw2SJ8oQ3wtLG7oUpgKN7YIuKE5E1rF01CDylkHh1c40+dzORsXLeqhP8oaX
         z7+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tNmThOcE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XOSFxsO2xB9Nb2vLi2Eu3fl1pG+5YxPMYfUJ24ZxoSc=;
        b=Ww4nYsps1lpfmpkD6EDcmBP9VK7jwK/va5P0nd14ADkaH+BGunc6Y6qbFE3lHt2o+v
         Mz1gb41hPlos+mJBpl9zQT6sS/UqH3BLPsvLCG8L36ZGWGvFeaBcPEYJN45OnomIOyNm
         yXgdn6HJDkWPCfPXRfZVew3PicO6FJTgtTijwk9ybZKQ2s7Fe6bbupbTvc2/H7tzcP0U
         TQzFFAZKEmQZ8SqShgI4+DZRSOrW+M6dot24Ry59o/b0ddcFNBx6Jugd3jIz33qbSri0
         AaM+QIDRzBumaODNsjNdE3cUCGQamkEOKIBEwjNqBmGt85tRKJQfxAYjeqyvrRZhAWe1
         MfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XOSFxsO2xB9Nb2vLi2Eu3fl1pG+5YxPMYfUJ24ZxoSc=;
        b=i1DVE7L6Yn/51C+MZ9/Eg/DVLQ1L3FgMqcn6vQXYBOhGDPgfjf0wmzo2nMWvVVSCTo
         gKYsYFA2hMyeVImZtG6ZHOTHkOzHw9mWLSSrJsc9uAbouBV6XzHDjYT60VYxr+VcfpH4
         q+tnRWDKMrTSGE3EQMDq7/ecAr2I9Cwllmnz4UON0lVSytrt+DMfGSsentJ0s8MrVbuB
         58hW2UifRGiXp5/lmT1CBytc+KL+EXAe/caEJT/gaMNXoerFRhTasFjYRqkFsup1IJV4
         vS8V/RP6Q9JEZi5n0toQswqehUA/FwN20gaXI6QZ2Xp3I+5a0SC+f3grYNgQ4t7rE+t5
         wTWg==
X-Gm-Message-State: AOAM5325nZVCz2Nc8rAFDL3GY+W5TEvYOH2Li1LPnKN68ne7yfdvZyJl
	3ybv10Tr7jFxCPjDSFCZMvU=
X-Google-Smtp-Source: ABdhPJzcPQyY0mh37atugPkNRwbd0d42/VQPzd1jDceyJnJQvP2QJMXirQ3p/uflga/6PhljXINbng==
X-Received: by 2002:a92:6f12:: with SMTP id k18mr22844175ilc.66.1608668989172;
        Tue, 22 Dec 2020 12:29:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:170c:: with SMTP id u12ls7606961ill.9.gmail; Tue,
 22 Dec 2020 12:29:48 -0800 (PST)
X-Received: by 2002:a92:845c:: with SMTP id l89mr22440844ild.114.1608668988772;
        Tue, 22 Dec 2020 12:29:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608668988; cv=none;
        d=google.com; s=arc-20160816;
        b=UPnLNvRAYl87aFTwgJqx+Q4/+uiFfr28OA7MglorLIEHatxv3cRijbrB219rhjBQUq
         g4YMQzFLbAsrPosOHLSP43++mrLz095EhM1TQHfQxmKSkQpoks0DT6+gV54J7GEplmR3
         RmRsFQ+58LENVBiJsSMBwBWIWJ6lVAd66DE03Ewqm/cH2DmotSs4S4arp+e4E9/hhrmh
         qQ948RQ+Z1u/r3HPXKxOk4oOPgYHBCTmvPPSSK3oruNaEy6fr4oJvPCcBLLd61SYJb31
         RGPRdKNPTTV5qSo24AhJOX+BWkp8cf3BvMkH/+mMzIsLDEwyWE36QhG+ZsCVqg97kjJ+
         KTpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1uYO5gb8l22kkJBNYBKF4BpoBbkwVbyfFkGg5GIkRf8=;
        b=rOlDhwYtqKUulZHCLliKM+oWYxQQ+6k8mxTiJFEVpe5Tu6UhZ6xgiN9iJT6TPYhUU5
         /w6sC3r9zNjEFcA8gY5g6JNSKe08wguepm9MZdI/w1E3xQSN6E5aN69q7T6JMBtOIoED
         f6QBZpEE6aj2gczajlikjgZjtQxhnKD54zDavrsrepeY1UT1MXHA0L4ZNPzZSQN2WP7P
         eDcLBodz4lWOhsuJoPZm7GOrhcUcQOcmtqP3nWHQKBN84vyVMKnVcS7l/Fw8lonzPV4m
         UiQEsWWASDuYrNaCf5X0uGzQ8e137Fmmn6nvuUhYEYWNrGkDm0JF0SwD7R3pt1KyyB2r
         w8CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tNmThOcE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id b8si2205565ile.1.2020.12.22.12.29.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 12:29:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id hk16so1963465pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 22 Dec 2020 12:29:48 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr22812796plc.10.1608668988122; Tue, 22
 Dec 2020 12:29:48 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Dec 2020 12:29:37 -0800
Message-ID: <CAKwvOdmnhsPU0UA9uEd1HTQ_yoBO8h741+sKrtebcPsXpXn8_g@mail.gmail.com>
Subject: building csky with CC=clang
To: Guo Ren <guoren@kernel.org>
Cc: linux-csky@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tNmThOcE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Hello!
I was playing with some of LLVM's experimental backends (m68k) and saw
there was a CSKY backend. I rebuilt LLVM to support CSKY, but I ran
into trouble building the kernel before even getting to the compiler
invocation:

$ ARCH=csky CROSS_COMPILE=csky-linux-gnu- make CC=clang -j71 defconfig
...
scripts/Kconfig.include:40: linker 'csky-linux-gnu-ld' not found

My distro doesn't package binutils-csky-linux-gnu, is there
documentation on how to build the kernel targeting CSKY, starting with
building GNU binutils configured with CSKY emulation?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmnhsPU0UA9uEd1HTQ_yoBO8h741%2BsKrtebcPsXpXn8_g%40mail.gmail.com.
