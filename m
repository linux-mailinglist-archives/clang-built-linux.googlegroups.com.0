Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL5NUXXQKGQECH6KCRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF40114786
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 20:12:48 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id e37sf3230009qtk.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Dec 2019 11:12:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575573167; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lh3TJvqOJMQUod19VNZPZjWTmM2cWlBKKcWCpFS2S16KCqLh9gN9EfKFZ01ByVWsII
         fPpQv6CGM1aYghFYd03VMiuFKlMcHn47gRkvmJuL8wPU3QREZrPX9MeyyKX8yOgRknar
         X4DhVmujc02gYCkFXKa/GtNePH1sbg0xdXgK2V4h6DpXR0utFXz7bHEi9Y6zDfrkiqJ1
         kTvQ9imt+Xbv8vqAZc43wrC8A6HkxAvIhA9XuJ7zxVykif6zQFKe+2yoh6+JLrl6ybzx
         nV2bGkHk0jwyeFUObGp9w9CQWEVU/UEWFaOJonPRMmE7JHecfsbG8iMRyqquYX3N1W9F
         xgrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tm0hn84QMDbosfvnLDul/y2uM8pTcpUIWEB9b4VkOiU=;
        b=WxYhhBOsD3myGm0uLukUBXfxjaaZ8GLgrhaULejyK5yzdvc6hm6KzcwmJcGZUaI13k
         HSKn3cfaD6pp5bI2blPS0qiFLNWliVwruGicL4ekvGelASA3wLKCdYge4Yq0OxPeWs9d
         w70ZuV57HWIucvnmAcuPc8RL4Zwg0zrrZdKXC2A3xG8iSjElEhGwsEQq50YlwlR/Hnsu
         pHjIFNTpATj6ooOioNHk0ZXKeC71zI9E3e0ow7kvERSk5M4rz73FN6Ko69jLWbfCTATT
         2dyB3tnJsC6Sjgj3MgVZBp6eT3kGarUclHyYFsMWX9Sk1iVhZ7IR7qXVNETaVw13fOBm
         bUsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mX1xhLUJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tm0hn84QMDbosfvnLDul/y2uM8pTcpUIWEB9b4VkOiU=;
        b=M7XWa2QVaIip87f3iZ2W+yYiMM65vQAv3LusiD8UFcnT6AjTfD++8C21NzOOeN3CFj
         yZSG3PhTmQW7LrPHS8xADKglQYWr7boFafeTeOA9N9Db83kgg/pCyXQPYlkCvYto48q3
         BpV7J8oUASBZf1kIcKX6le4Tkbwh3V24OV8q20MTFiGeweND9QiBq/EQ1NpMpwQFOzgb
         tfrx54WB4dHWGLnMG4EUaoJpSeFZKviChNFfVB9CN9K6tD6YIzJF6DUdga77xAO+SXoD
         j2GvjyIg5zhmzo4FfYh0P3ffWrUox1mpU25qSExOaprHyKdrexiKu+AVYeWBJkfC5hFH
         q3yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tm0hn84QMDbosfvnLDul/y2uM8pTcpUIWEB9b4VkOiU=;
        b=brQMB2t+cAmAW6z+UPG/wRrt/UEifPUVGEVsMy2bCWvlzvDkVrbjFb5NZqejp8Fz5w
         jFWXO846cOWZqJ1RA2Xzf4QHqbaUSzpRO4BjvDuHD340UlpDwBRv3zpl0Xdr8AuFx5zi
         nPJjzwIRrY0RlOHWak38gPlWRpSaOfpN0b2FB/s1602+GbV/dm5p59hlyBGg0MCej4xB
         m286FEdLZuq34UXnZ3Frsd3XCTOohbe5v08XzT2UKJPMtDIq1y6P4menUGAclDKhxqsw
         cY70p5Pt7cfvBbXbVHCS8V9ddXplF1LmtHl59NOYqCJQxgADZMvwCKgPEnv8mIq8OnHa
         5VVA==
X-Gm-Message-State: APjAAAXQ9KOY3VbrwXv0htCtBl4rbutN3hxbnrkRphhLAuXvn4KoPzgj
	EK0076iGpJavOmw+/hWYE2k=
X-Google-Smtp-Source: APXvYqwWg5P0AqwAkaH+S3uEZzlYcPtZ/vCTOaGFXfuY5FSDeHJML75kx/j1FrL4oFecBT/qdEAYMQ==
X-Received: by 2002:ae9:c318:: with SMTP id n24mr10339257qkg.38.1575573167652;
        Thu, 05 Dec 2019 11:12:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a143:: with SMTP id k64ls1458524qke.6.gmail; Thu, 05 Dec
 2019 11:12:47 -0800 (PST)
X-Received: by 2002:a37:7f44:: with SMTP id a65mr10149132qkd.442.1575573167228;
        Thu, 05 Dec 2019 11:12:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575573167; cv=none;
        d=google.com; s=arc-20160816;
        b=KC3+5Ebt2OaSd9jsWsNuoqhcy47/A4K2dqI20eNcywZIm9+/D8sTR3ERGwlqF73uCh
         nsyRzR6S8C0gYZZdcXv/qXuiTPNth28p/P6bNdlYUAYFXTWvCdiKWxPGlwd4/98O13rp
         D7/KSMnLMWk29hlJBOZSoTJe2U4/lEnWT8Wl6koHODSiskXNKNqisAUVs1jD8QOEwqCJ
         qIKj1vxuFyJyTB0xSdo4cTIqOaPDlzYA/HaQ+e7JiNmm2AS7nZxPhD9EcSg91NR0QseO
         kPVxTill37XiOZDRLlCY2V7h2gnfyZCjUotUI3c5a2MSnL84bPM7214HNEcQLNiNWB95
         BCkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r6w70NAlMzaodJa4iYt5L1qRmriw18flqdDHWIPT8ak=;
        b=GUfkiZWLpo+hmbRUzfbKR3xrTlJ83KXM0rfln97cj7dwYpTuElb5Wwk9aQbPdCAZaq
         YUvMM2JuhF0sO4nFEvj0EkmY0NJ8+t6tuXl4VhJcEgs5ASpzeXm7ORX+vXc6xFuC0tnm
         OffZ/DJ6spq4nojszXJrZ502B9PTPRysWVzXoFD9kEU3RKIWntaxMT7dh/fjZK2ncIL0
         WQa2wxacaRFb5YZW/eMvd+BZ+khpvCd9EIKC5SgY3JMrKlaTNiLGUOC0aTVskzTRWOoE
         xiJInR1gIG8rOhRHXgdOmezop1qza8A0UpFlR4A3xt/4RsYM00DbV2RhwCxo24jI9wnI
         hQAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mX1xhLUJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id b11si624983qtq.4.2019.12.05.11.12.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2019 11:12:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id o8so1633981pls.5
        for <clang-built-linux@googlegroups.com>; Thu, 05 Dec 2019 11:12:47 -0800 (PST)
X-Received: by 2002:a17:902:8216:: with SMTP id x22mr10452351pln.179.1575573165908;
 Thu, 05 Dec 2019 11:12:45 -0800 (PST)
MIME-Version: 1.0
References: <201912060234.8XYvgYSn%lkp@intel.com>
In-Reply-To: <201912060234.8XYvgYSn%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Dec 2019 11:12:34 -0800
Message-ID: <CAKwvOdkQqipt82KmnmLO4Ns=5VdsCq2Ma_M=OA6c2E8oZTJBtw@mail.gmail.com>
Subject: Re: [efi:urgent 6/6] drivers/firmware/efi/earlycon.c:33:10: warning:
 incompatible pointer to integer conversion returning 'void *' from a function
 with result type 'int'
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, ardb@kernel.org
Cc: kbuild@lists.01.org, kbuild test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mX1xhLUJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

+ Andy, looks legit. should be `return 0`.

On Thu, Dec 5, 2019 at 10:39 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> CC: linux-efi@vger.kernel.org
> TO: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> CC: Ard Biesheuvel <ardb@kernel.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git urgent
> head:   93afe6258b5ae6bd32981f5249f7b0c1a32cde01
> commit: 93afe6258b5ae6bd32981f5249f7b0c1a32cde01 [6/6] efi/earlycon: Remap entire framebuffer after page initialization
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project d6cbc9528d46d30416a6f9cd6c8570b704a0bd33)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 93afe6258b5ae6bd32981f5249f7b0c1a32cde01
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/firmware/efi/earlycon.c:33:10: warning: incompatible pointer to integer conversion returning 'void *' from a function with result type 'int' [-Wint-conversion]
>                    return NULL;
>                           ^~~~
>    include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
>    #define NULL ((void *)0)
>                 ^~~~~~~~~~~
>    1 warning generated.
>
> vim +33 drivers/firmware/efi/earlycon.c
>
>     22
>     23  /*
>     24   * efi earlycon needs to use early_memremap() to map the framebuffer.
>     25   * But early_memremap() is not usable for 'earlycon=efifb keep_bootcon',
>     26   * memremap() should be used instead. memremap() will be available after
>     27   * paging_init() which is earlier than initcall callbacks. Thus adding this
>     28   * early initcall function early_efi_map_fb() to map the whole efi framebuffer.
>     29   */
>     30  static int __init early_efi_map_fb(void)
>     31  {
>     32          if (!fb_base || !fb_size)
>   > 33                  return NULL;
>     34
>     35          if (pgprot_val(fb_prot) == pgprot_val(PAGE_KERNEL))
>     36                  efi_fb = memremap(fb_base, fb_size, MEMREMAP_WB);
>     37          else
>     38                  efi_fb = memremap(fb_base, fb_size, MEMREMAP_WC);
>     39
>     40          return efi_fb ? 0 : -ENOMEM;
>     41  }
>     42  early_initcall(early_efi_map_fb);
>     43
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkQqipt82KmnmLO4Ns%3D5VdsCq2Ma_M%3DOA6c2E8oZTJBtw%40mail.gmail.com.
