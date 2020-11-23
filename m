Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBEMI576QKGQE7HRAQKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2B72C0D09
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 15:15:46 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id g3sf11923096pgj.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 06:15:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606140945; cv=pass;
        d=google.com; s=arc-20160816;
        b=ra6PiJxiaHTPKzGrQMT1Vn3YPjiOTSdMoUGCCuiCKL9NLepRG/oV8xzwTxaD1HsC/a
         EN2UeUtqgW2OFYyD/0B4BxmUpCvnr4fn/xQj+voNA6YdOTztgU0eaJTg5RE8w0hl6+0u
         CO8xAISdrfsq9S3M3bAuQ7W3dDXaQjAnDXWrJcwnLYZlY0eaxIp2c29hczQlcjCx/pdZ
         kdUcebn1gOn5iAINF5o5Yi370FtqAA2vWtxg88UqA63fmRRJMUmZoFhIMON0AeQ9enk4
         5xit8NChBVOpW4gl0DrOr/AVb3Nl/DbkY4cb8ZuYu7RbkVl6IX+494CgS6gYJ76BneHd
         31VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eQqHt3MoK0D9epz6dL+ckJfw69AI7ak2+kKExRhAed0=;
        b=KBhZT3W0It3DGqNGziW4nu+NOx6ktVnSH/MGfIPNQl2r0YLncgWttYdP7s+zFwcbiD
         EMpXKAw8UnhtfuWJHb9XFXxSqYzNif1R7XU6eCnZI9YD4FyDlT25DTfYNs444FlSYaAn
         Eu4+nciQvMh/n3y3z822fVhHBEzEeIrXzAesMWgWDB+Isf7oJXPEjdHKu1cqjxcoc/q/
         mThSC7hxV/crddtIZpGXsQAJYflhKPP5ih4Pt4HKevJO40Vil2sBMxiWVA76ERvAkm7E
         0k58oF+FigFpUtLtFmmwC9VhCLf+DyOkD1rFBlvGIw4N3XIciKcvK3izKkXpavx0h5Ku
         tLGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lxg2G0DJ;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eQqHt3MoK0D9epz6dL+ckJfw69AI7ak2+kKExRhAed0=;
        b=qymJyHT3J7+pHE2XPdPC6C+Hiy0a1NeOcbMN9dfEFzrxlCY4xQEkA131xy3a+yIhCQ
         UACbnDGP4AURJ3NpN0FiRrCPwDviUIfGHiUToKGNKABIB5JpZnF8vgXsZ5V9MsM0s9od
         Q0SXMtT0nPoZW292EfY0wswk3CdVK6a5YQ3JfA6Y2zbcmMHsWVGxBZjNMFFpoLFeDOXq
         uXG9SV3mKiBIWbingXSdlJ3UUWYIy+B1u0ff57gLbsq1zSK/LaRlaa8I5wiUBKMoCO15
         FbtFv/iaPfJ4/BD5gHqXNTOsh3O63/0o+gp+zon+E4lQYHE9mOAwsPJZcQuriU0Qfs9J
         iWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eQqHt3MoK0D9epz6dL+ckJfw69AI7ak2+kKExRhAed0=;
        b=LTwGzmtB2hg/U8+6pnixjII86MbxVw4JXD/kkIvyEjcqp9PBV4FImohegHriCe/ZeP
         KRE3ot4lkTsLHRmv59aQRpQ9S/agQyKMWe+u/Qk7UxduLyQlf00LLpX22JL1/n7fY2pX
         7ays01VAdHFc4b5aOE2xV2whGVUIfcHK4pEgU8UQiuHj+TT4pXgd5SNiyHGnjB1wBsju
         e9tjJy5l9zzag6QwUfuKHmU5VxAE93sKcGMPjZDk+cRN8E5Y3l/ThgzFHA9NxSKAfaL9
         YZkJqpvK7vqLFNLIkAOoAk5IwijXsJb77hJabhSji92Pme/4rJWb7vzAJZMtznWX7FU4
         KC8g==
X-Gm-Message-State: AOAM531Z8mYVw+mUsJ1OvFIdr+ziG4pXbIp1VNJhfbmwSQ8up7JTQEgu
	ONTEWEts5nf36c82wv+NNGM=
X-Google-Smtp-Source: ABdhPJyydn+PJLXhDa8RKn0YK9hmsi9V8GO5p2pKoXTz8uFZMoI6jFUuC9mP1syTRY32dafytOGDjg==
X-Received: by 2002:a63:4083:: with SMTP id n125mr27139890pga.356.1606140945281;
        Mon, 23 Nov 2020 06:15:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a8:: with SMTP id q8ls5094671pfs.9.gmail; Mon, 23
 Nov 2020 06:15:44 -0800 (PST)
X-Received: by 2002:aa7:972b:0:b029:18b:89f:df0 with SMTP id k11-20020aa7972b0000b029018b089f0df0mr25330647pfg.39.1606140944543;
        Mon, 23 Nov 2020 06:15:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606140944; cv=none;
        d=google.com; s=arc-20160816;
        b=WD+hqY2D/O45LaCB/RYyWXtq2FuqSDCw9eD14pLNr/rOeS9s2Xzc8O+9eH8jbaL+Yj
         F2lPEVMq50Hj3r1ovh1eHeEd7kafZWa6otlcz7pB41MoZp21dkDGtX82OISF3RpYG+bs
         qxW6LgYAQ1Lzc5mVCV2VJGrlgKiqAIafGXDUOV0D7r5qhmfTiq45S4pO/s4vRPGKbXyw
         XeLIFc5FAQqV0pQ9bL84IlsEwmGSYhO46Fyd1Y1vw3fnkJt4R1R/aiY/5KGPTeIOBvtA
         p4WE8GqdKDWBZGdkUZyS5h66nglwJvWVCSodxZ1PYepc6/UuUsgO56N9hPBP3ZdPu0ov
         iyOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Mh93lDv4R+xlWArTBZkqpnMY0gZ1j0TNR1Mb4V4ZZ6A=;
        b=A4dT1Vxu1her1LPBIN69VpKPrbyi/n2DiC7w/SwniwwV8jH1PvIDKqrRjLhquJ6pOm
         djjW3bimV793iLm27iogz816brcXlzQpV4bsJSBxroXwjzE3Tuq4Fj8tj/OpfZ3h2w66
         l8LAqYybpcLV9mAaQJ3faWUH/yLmqI3G4tkuM2JZZjglI0JkVT/S30s9bIH7cTKKr9Xc
         BQz5dG4t2gJ6Af0mhQiobcAdJm+o/yrEdCwMEd26U+trxXZq4cFjY1zvSHesiex2vqDj
         jirI88AuuSB7H6b0tNNlhwUdWPGpDB9/DVy6DJ5hGMh2VwvE6mGb/jCY5UwYf14LIzYK
         YBuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lxg2G0DJ;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id gg20si1048115pjb.3.2020.11.23.06.15.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 06:15:44 -0800 (PST)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id 18so8893187pli.13
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 06:15:44 -0800 (PST)
X-Received: by 2002:a17:902:8c8f:b029:d9:eb18:3a99 with SMTP id
 t15-20020a1709028c8fb02900d9eb183a99mr11883435plo.13.1606140944111; Mon, 23
 Nov 2020 06:15:44 -0800 (PST)
MIME-Version: 1.0
References: <202011200603.Fq2dmeMk-lkp@intel.com>
In-Reply-To: <202011200603.Fq2dmeMk-lkp@intel.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Nov 2020 15:15:33 +0100
Message-ID: <CAAeHK+zykqmcDPAa5GAeu4hSfyWF-D4PAa15y=CSgtAxSQTkGQ@mail.gmail.com>
Subject: Re: drivers/net/wan/slic_ds26522.c:205:12: warning: stack frame size
 of 12288 bytes in function 'slic_ds26522_probe'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lxg2G0DJ;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::644
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

On Thu, Nov 19, 2020 at 11:16 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3494d58865ad4a47611dbb427b214cc5227fa5eb
> commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
> date:   3 months ago
> config: arm64-randconfig-r002-20201119 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/wan/slic_ds26522.c:205:12: warning: stack frame size of 12288 bytes in function 'slic_ds26522_probe' [-Wframe-larger-than=]
>    static int slic_ds26522_probe(struct spi_device *spi)
>               ^
>    1 warning generated.
> --
> >> drivers/gpu/drm/panel/panel-sitronix-st7789v.c:194:12: warning: stack frame size of 18352 bytes in function 'st7789v_prepare' [-Wframe-larger-than=]
>    static int st7789v_prepare(struct drm_panel *panel)
>               ^
>    1 warning generated.

Same issue as reported previously. Copying my response from the other
email just in case:

This is the same issue in LLVM that was reported by Arnd for generic
KASAN (also see KASAN_STACK_ENABLE option description). By default
KASAN shouldn't have stack instrumentation enabled unless
KASAN_STACK_ENABLE is specified. Perhaps it makes sense to disable it
for KASAN_SW_TAGS config on the kernel test robot.

[1] https://bugs.llvm.org/show_bug.cgi?id=38809

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2BzykqmcDPAa5GAeu4hSfyWF-D4PAa15y%3DCSgtAxSQTkGQ%40mail.gmail.com.
