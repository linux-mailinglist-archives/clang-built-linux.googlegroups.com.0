Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR6NY3VAKGQEIXBJ6VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DACA8A4DE
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:50:00 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id c14sf4038817qtn.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:50:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565632199; cv=pass;
        d=google.com; s=arc-20160816;
        b=oBUL9rsQLpOeHub7T1DpsNpyaUdaTsDzF7D73KhUFyA2vidUatpTEE/bBhJnOuMaWf
         wagBJZMOVTpHuZ0FQjHpCn0VQuIhcpP7lwMNnEdvJVBcMwjqLP4HxxkzS6kT4Gy7hY5i
         NvHftGfRB3nSEDzQzjniqb+WjeqwNZS9mcOlfuHsLicJXJF4LRFm6BSZPwnGFNJLA+47
         jrM+VxJ6M3dYpVJk/TwoLx0vzTzfnHCjvpBLitkkaevcyE3LKHtI6hosW/Q1/fnoUHQK
         F3MGv1fdKzkwUcsQ1Ss2mOOrWdrIfxthEVdLRjlWTTCQ648PcVMZEfBfZB8KVlbmd8S3
         ppdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=c+Sr3kh5oh4B+J7J94Mlryw40/6FaVu/2+dQhSoHg2c=;
        b=Mh0NNoORglWQhVxPj1rLHC1wrplCM/tV1gef7bAwyyOyFOJU9Qic0FgpsFbvAqT+WZ
         jhzQAT6HNEcXS78x3iaTo3oKfkMeC39D7yuS46XBCZ6PUql1X0G9VKTppk+aQdWIb2OV
         A8B77VBIj7jdtPHMfREpsItItc2PsNtMr/fV9tXkKHZtoXhHRfta5ECKbhtHAua0iKxy
         ISOG+0ubGm3d5QC62QgWSTSVbeaUAtphlNbKfzoj23ePniWroorMzgm6eNjXqmy8Z4b2
         KgqK/XUY4PsxGO6qyWFLSpcyhNH08zwhdHKKWMNnGg7GBGmHmzzBSPq6+0HmHaEZzufJ
         bUjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qmuOq+hr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c+Sr3kh5oh4B+J7J94Mlryw40/6FaVu/2+dQhSoHg2c=;
        b=qUxo4nbe+A94EfD/G8U+3DWPJmcSmFwry6yFfbGM+aIbNS4vqywRVXkl4rocrb+Vwt
         pIt7Pgi4a8o/Ok5lyeSBTlvjIbhcO9q8OZPNrdxyfcRkGJUoA9KZNAterkxvN2XL//4l
         gJgxVMq8tGAEpxxgNW9RBm4veQt3UYy0t6B2Az3A4hg94IlusgBdBgz/t/TcdHlsNAqn
         vgkJSf0zCTL7VY3ZFe8HDsK6V9siJtcVRv52I7jXkDWt8G/3xz5tVFdYv3lqrvHmMJNL
         YzDLO+Mny91UyLy0nBkdno5myJGgCwRKWkuaYCR9x9o8q4yFUilBYwTPmM0EdF5LkUXL
         /+Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c+Sr3kh5oh4B+J7J94Mlryw40/6FaVu/2+dQhSoHg2c=;
        b=byk16OJJyGHbnVw4M1r4LtCMUcGW7X8kXurfnbSnphjPZJ2WTmnsovm7E8KL75Uc1K
         FuI+Eu8kS0CMT94baQsNJsFvGAC4A0XwOxMvQtCl5FqqeLwFXt9x7upSqp8C/FJ0w6n/
         1Y1mkkQ8orz1frIF7lWptf0zqGwMde4puyMcSVUhhJnk/W2XL58IwhVOlrQIZmrHnOv9
         W4/naLiyiZ2KGdwnTavlJDq1uOIU2MNhNdpizXr/lu2HBQHpjyrv6GSrod446raZDtbj
         NGRWi54bUZrY4SBddOHF31LHRu1UXbWDH4Ugu/rE6zdXxhzF3xxLwd59trcAEnzpWEEL
         2Qvw==
X-Gm-Message-State: APjAAAVjSO+d7+qYk832KY43Kp/NZjsfqRFgQ31lNFvsEzw0ySqjSgYf
	9ioHeLjBTFsQT0oLkNTAS6o=
X-Google-Smtp-Source: APXvYqxGqLt0X1S8Bj9B9TT0rhYe6L6aWjAR/LJM9hDAvA7CkhF69u4Z1/Noe2XUmikjJP8HUAkXsQ==
X-Received: by 2002:a0c:8809:: with SMTP id 9mr31524686qvl.141.1565632199615;
        Mon, 12 Aug 2019 10:49:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls6289245qki.1.gmail; Mon,
 12 Aug 2019 10:49:59 -0700 (PDT)
X-Received: by 2002:a37:7144:: with SMTP id m65mr24600258qkc.149.1565632199425;
        Mon, 12 Aug 2019 10:49:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565632199; cv=none;
        d=google.com; s=arc-20160816;
        b=Wmx13RRzCHHYZm/VqhD5bFrb6y3RhoK1YdoCYBqY7imd80Szj5zVTOX+kx90RXDUfc
         riTto4pVQEzQI/+Wi4lQAVMM54vSmR2AR/HCVX2LjyDmgRmA2Hvj2O3Ppg5RP7mOS5il
         /pDdMyFD3gNLKkgU/c1UKwH4K3MR908JZk5KPiGYiuIskhYAWEvczeRVLepKiHVzyQJI
         NcaPjq51dEy1m8y4+onq6kiMHoC9pzrkRhYPdI2xJAESErjfQyzHq4bDT2RLZWNmEzbz
         MaxaBBn/KprFj6l66KlZyZKF1M0OeaEdmDDCcQA5NkXmW0WJg7947XI1R4A/DHIyTtTw
         TI5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UlfP/u75yTdzDQjbiZ58yMYBve2dKK0PO4ky5mg2Pt0=;
        b=MZ0z3tv65/dmvA0GaYz7kRzS/jodVgDLatU0HEjupX6GqAqX+6lCAs2AzbRYhQr/iz
         6UIGrb7fe65dbWV7TlpzhfPOOV10iwAGFVEyB1JbzeEWDTbXd/3P5tDJbUY35PGo30FG
         Uj8fxcQp7xBMuB15iJ7EVp9Dcn64VphqZaA8pP0oCVqTCD4qKho52ZKzaA76Fpj4Dduz
         TA8nKV1c0tnIMZCYpWIDRqUbCNjzr59PsCxWu4iK5bujSkLGVYnHqHhH5/Pk9YH/LgG3
         6bxKzSqRZuQQo50hN0vn6kKl/MR047V3fTrIC1nJ2QvygRZPgOdSi8cQeJe49BjSxn8/
         NGZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qmuOq+hr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id v19si3820971qth.1.2019.08.12.10.49.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:49:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n190so9048159pgn.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:49:59 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr8591359pfq.3.1565632198197;
 Mon, 12 Aug 2019 10:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <201908120108.9KdVOsTD%lkp@intel.com>
In-Reply-To: <201908120108.9KdVOsTD%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 10:49:47 -0700
Message-ID: <CAKwvOd=JpUsD1XDSBzgwDWcAO+1VuGOLjbGNCTFne-WAqjGzXQ@mail.gmail.com>
Subject: Re: [stable:linux-4.14.y 8386/9999] drivers/gpu/drm/i915/gvt/opregion.o:
 warning: objtool: intel_vgpu_emulate_opregion_request()+0xbe: can't find jump
 dest instruction at .text+0x6dd
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg KH <gregkh@linuxfoundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	"# 3.4.x" <stable@vger.kernel.org>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qmuOq+hr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Sun, Aug 11, 2019 at 10:08 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Daniel Borkmann <daniel@iogearbox.net>
> CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> CC: Thomas Gleixner <tglx@linutronix.de>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable.git linux-4.14.y
> head:   3ffe1e79c174b2093f7ee3df589a7705572c9620
> commit: e28951100515c9fd8f8d4b06ed96576e3527ad82 [8386/9999] x86/retpolines: Disable switch jump tables when retpolines are enabled
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout e28951100515c9fd8f8d4b06ed96576e3527ad82
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    In file included from drivers/gpu/drm/i915/gvt/opregion.c:25:
>    In file included from drivers/gpu/drm/i915/i915_drv.h:61:
>    In file included from drivers/gpu/drm/i915/intel_uc.h:31:
>    In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>    drivers/gpu/drm/i915/i915_gem_object.h:290:1: warning: attribute declaration must precede definition [-Wignored-attributes]
>    __deprecated
>    ^

Was there another patch that fixes this that should have been
backported to stable (4.14) along with this?

>    include/linux/compiler-gcc.h:106:37: note: expanded from macro '__deprecated'
>    #define __deprecated    __attribute__((deprecated))
>                                           ^
>    include/drm/drm_gem.h:247:20: note: previous definition is here
>    static inline void drm_gem_object_reference(struct drm_gem_object *obj)
>                       ^
>    In file included from drivers/gpu/drm/i915/gvt/opregion.c:25:
>    In file included from drivers/gpu/drm/i915/i915_drv.h:61:
>    In file included from drivers/gpu/drm/i915/intel_uc.h:31:
>    In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>    drivers/gpu/drm/i915/i915_gem_object.h:300:1: warning: attribute declaration must precede definition [-Wignored-attributes]
>    __deprecated
>    ^
>    include/linux/compiler-gcc.h:106:37: note: expanded from macro '__deprecated'
>    #define __deprecated    __attribute__((deprecated))
>                                           ^
>    include/drm/drm_gem.h:285:20: note: previous definition is here
>    static inline void drm_gem_object_unreference(struct drm_gem_object *obj)
>                       ^
>    In file included from drivers/gpu/drm/i915/gvt/opregion.c:25:
>    In file included from drivers/gpu/drm/i915/i915_drv.h:61:
>    In file included from drivers/gpu/drm/i915/intel_uc.h:31:
>    In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>    drivers/gpu/drm/i915/i915_gem_object.h:303:1: warning: attribute declaration must precede definition [-Wignored-attributes]
>    __deprecated
>    ^
>    include/linux/compiler-gcc.h:106:37: note: expanded from macro '__deprecated'
>    #define __deprecated    __attribute__((deprecated))
>                                           ^
>    include/drm/drm_gem.h:273:1: note: previous definition is here
>    drm_gem_object_unreference_unlocked(struct drm_gem_object *obj)
>    ^
>    3 warnings generated.
> >> drivers/gpu/drm/i915/gvt/opregion.o: warning: objtool: intel_vgpu_emulate_opregion_request()+0xbe: can't find jump dest instruction at .text+0x6dd
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DJpUsD1XDSBzgwDWcAO%2B1VuGOLjbGNCTFne-WAqjGzXQ%40mail.gmail.com.
