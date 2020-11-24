Return-Path: <clang-built-linux+bncBDX4HWEMTEBRB2HH6P6QKGQEIEFYVPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4486C2C24FD
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 12:52:10 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id t13sf13532312plo.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 03:52:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606218729; cv=pass;
        d=google.com; s=arc-20160816;
        b=cc91pLQchBgZWZa5UyQGF2MyoawEkS5A2lYkwqpcf71ZfJjEX/87n2OZPT5c2Eoo6a
         BkoWCHU+jtutIwd5oom/CMrhvlfSNi4rE+5ul9Rdywgytn7Slw4SKTTKOqw8X1zT5zq7
         QMf02+j7X+cqRrls324yvKFAk0rDZSarH2rjlA5ucd2NRUNgUxE1gaotlvmoDtzRBe0d
         uDF7nc6BVzmA5ENoYoS6bcGPfpQFO3D+sC6UjwB3URVnZyc5uRbXiMrSiuZX1Gtlzdjz
         yKzbM4TL1fXga8/FIqctwrKEZg9z0WnZcIKNsAasZ1ptc9sFTj6BCy+pLRgZi/4OyNi/
         IZAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FolHKzuTsOPiyX76YxDHcVMn9pgYMbkPq9Al06DBtR0=;
        b=zuiKGluw93MQXGoIIL27wWEnj2877tZvSfXLQKciESpBqarOxRTXRD272KiJShEb8B
         Ef6M1mvooEBYJml6SQf53OufcfUf+xXMsCzpK+3h45zF6YKEX4h4Fk2av6vVVAiEhWE9
         DsosRX+8vNN38GEQsWne25hLJNtdIceUNQGOY0XolJQn9COw3f6Ioe2GYtnDZCsCpd1p
         HviQxGkpPjoeVUuL2bszIAXgmMqdTO26X6xFhZLO3GlpkfulAHx0JIjsqN+NMM83EXEu
         FB6hOwVrdbyRGIpVb4bmLxXqlt9K+XIWvTb5nfMzTeBv9h/uiUs9sto5Yh5oDFgSFHt2
         10bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oXPgSdbP;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FolHKzuTsOPiyX76YxDHcVMn9pgYMbkPq9Al06DBtR0=;
        b=pt6hObePeCRWabXYebpxR/aNXMM5/XUMCcwx2L7Ns31vUogeWqmPhSsCdtEgoBb6eo
         eEVGAAHJjK7wIl+HUir5BJTRF6b7fgyWQIcZABZJc0K/9cgz6Oo1p2xb7qBQrMhF+KpE
         0s0+VbYhfIA7LHz1viicB4In84IEvzYGdh3/Jvjns/tAy/XQENAl05k7ft9ZCsZqWSuq
         8Lsqvd0FzlU0s0r/ehrrDGEIZ2on3539E60ZUWT/1nvt4lVtS53EukGJxMbjzM0D8Qwx
         0GaYra9MhIlMFt+nTtyNVom3rsJre/xxlzUuB3AeHw6UXbO78NCsEo7hbwcqjfxD2kRq
         oWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FolHKzuTsOPiyX76YxDHcVMn9pgYMbkPq9Al06DBtR0=;
        b=SkuPaCBftzg4nI18NiBEwKv6rmIUw2FrWnI9ot3KYuVlDQ87ax7nO0se8BcAtUMWmq
         eYIWR8hxvSFy/noYJLTvMfh6iBLB+Tbgox0vo59jvAsJnPfwoQW1aLm99b6Din3iA4xn
         eFfWlJusP0EbOO5AX5qQkTAyotGuWohxAVkPgQKnzrWertw7qEBeuSynIaTR3/122vXv
         RBaNhEAUDeF8CgcQYZpY5t6pVkNoiliYA+MvI7SkSyp/wBEieoAWX2WtV7Og4hzuhoXj
         /l9sEekUnSYoB/okAeLi7muYVe8CxTSoSwFRk/r8dDRK2iP3EE2GTFqQMXD90S7pggg6
         9QZg==
X-Gm-Message-State: AOAM533Hu2HoIJ7lG3q0ZJRGxrutyEkVDHHkxLMkdNhY7F2pGly6BwoU
	bRwbf38o6NrL1Myrh+5F+jw=
X-Google-Smtp-Source: ABdhPJxfbc4xicUi5tUzUnn7Lm2U9oA2EWzedWFt8HWegp0BVrEOVR1LBA7PjGuQRstL74w81d/dsQ==
X-Received: by 2002:a65:67c2:: with SMTP id b2mr3380458pgs.39.1606218729014;
        Tue, 24 Nov 2020 03:52:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls7715656plr.3.gmail; Tue, 24
 Nov 2020 03:52:08 -0800 (PST)
X-Received: by 2002:a17:90a:db03:: with SMTP id g3mr4455854pjv.41.1606218728326;
        Tue, 24 Nov 2020 03:52:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606218728; cv=none;
        d=google.com; s=arc-20160816;
        b=izxndSbhgHKsj5HvmJoBltN+m4aUuzX01ZzxFRTIiOIpIS8xehfWO73rj594bD2fl7
         UbZNhG6imTEZyaRiqBKnJtibmVnNiH10SyAq87CnHpLvoZiPvQgUQy4UrhoVKzLbGenh
         utrvsU60OKsya3zrwwKXmS1aie8DKcFOFeYXBWc0dizUMJSTaSeAbugT5Zzp/lByfeop
         TAJ1XfodRiXxZz6wCVZA/ZSdshA7Pu0MKyCCCxfE1aq2HF/mFbTCKE4lwgjYAIzUg3oF
         c+UK7DGYrLBN0JytQ/F8ObbD6UtJNfibrAgLZQFYsS1KBLg0NZqAFpgn9dnWJAvr2+ZF
         8yNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vNU3GMWTx/DC3GaJXt/7EgHjQNLt/FBx4UlGxf6Gj2U=;
        b=lKpL48363yxXiLemGf07sXi4W9FSDMWyMab8GSQgJzhdQLCpWslYnqIH4brt04zDi3
         p9Nv8wj4HS+zjWJP1Q2Et+lJIqCwA8BO19M/zgDnMJWBjfi5exfE4XWjfYhncvEflSzn
         kduNOm6oWKwvKHWbtauWzE5QugKm9es3g4UwC8TiDCSpVgAwyI00ObucWSgEEevjJLJA
         BGSlTl03Z8uVUmOKcz827KR0SOcHaYDTpkZIgIhY+9jjgLDDI57xRB8H5MZ4l5iQqHeD
         q/Xg8dweDyMxWLc7dPRTaoFgwcnlBLT+qWVpJxhqKl4O2VWdXh2HFIzRRpwXb4BfqAXO
         t76A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oXPgSdbP;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id bg19si234888pjb.2.2020.11.24.03.52.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 03:52:08 -0800 (PST)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id c66so18274860pfa.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 03:52:08 -0800 (PST)
X-Received: by 2002:a62:3205:0:b029:197:f692:6a8b with SMTP id
 y5-20020a6232050000b0290197f6926a8bmr3638811pfy.2.1606218727772; Tue, 24 Nov
 2020 03:52:07 -0800 (PST)
MIME-Version: 1.0
References: <202011200603.Fq2dmeMk-lkp@intel.com> <CAAeHK+zykqmcDPAa5GAeu4hSfyWF-D4PAa15y=CSgtAxSQTkGQ@mail.gmail.com>
 <71e44c1f-3c9f-db89-0347-3e23699d67cb@intel.com>
In-Reply-To: <71e44c1f-3c9f-db89-0347-3e23699d67cb@intel.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Nov 2020 12:51:57 +0100
Message-ID: <CAAeHK+wc=A=52o1fwK3KeRMk7k6QE-nuoU51TrkoRTWhAF44rQ@mail.gmail.com>
Subject: Re: [kbuild-all] Re: drivers/net/wan/slic_ds26522.c:205:12: warning:
 stack frame size of 12288 bytes in function 'slic_ds26522_probe'
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oXPgSdbP;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Tue, Nov 24, 2020 at 9:02 AM Rong Chen <rong.a.chen@intel.com> wrote:
>
> On 11/23/20 10:15 PM, Andrey Konovalov wrote:
> > On Thu, Nov 19, 2020 at 11:16 PM kernel test robot <lkp@intel.com> wrote:
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> >> head:   3494d58865ad4a47611dbb427b214cc5227fa5eb
> >> commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
> >> date:   3 months ago
> >> config: arm64-randconfig-r002-20201119 (attached as .config)
> >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
> >> reproduce (this is a W=1 build):
> >>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>          chmod +x ~/bin/make.cross
> >>          # install arm64 cross compiling tool for clang build
> >>          # apt-get install binutils-aarch64-linux-gnu
> >>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
> >>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >>          git fetch --no-tags linus master
> >>          git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
> >>          # save the attached .config to linux build tree
> >>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> >>>> drivers/net/wan/slic_ds26522.c:205:12: warning: stack frame size of 12288 bytes in function 'slic_ds26522_probe' [-Wframe-larger-than=]
> >>     static int slic_ds26522_probe(struct spi_device *spi)
> >>                ^
> >>     1 warning generated.
> >> --
> >>>> drivers/gpu/drm/panel/panel-sitronix-st7789v.c:194:12: warning: stack frame size of 18352 bytes in function 'st7789v_prepare' [-Wframe-larger-than=]
> >>     static int st7789v_prepare(struct drm_panel *panel)
> >>                ^
> >>     1 warning generated.
> > Same issue as reported previously. Copying my response from the other
> > email just in case:
> >
> > This is the same issue in LLVM that was reported by Arnd for generic
> > KASAN (also see KASAN_STACK_ENABLE option description). By default
> > KASAN shouldn't have stack instrumentation enabled unless
> > KASAN_STACK_ENABLE is specified. Perhaps it makes sense to disable it
> > for KASAN_SW_TAGS config on the kernel test robot.
> >
> > [1] https://bugs.llvm.org/show_bug.cgi?id=38809
>
> Hi Andrey,
>
> Thanks for the explanation, we'll disable CONFIG_KASAN_SW_TAGS.

Hi Rong,

No, no, if you have a CONFIG_KASAN_SW_TAGS-based config - keep it
enabled, just disable CONFIG_KASAN_STACK_ENABLE to avoid these stack
overflows.

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2Bwc%3DA%3D52o1fwK3KeRMk7k6QE-nuoU51TrkoRTWhAF44rQ%40mail.gmail.com.
