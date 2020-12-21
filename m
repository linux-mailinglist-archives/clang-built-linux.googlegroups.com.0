Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK7IQP7QKGQEQE3MMLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A562E00CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 20:14:52 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id c72sf10045983ila.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 11:14:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608578091; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLwxqKhEx6O8CMNYv9G2gXg2vyx9ixDJKPSIjG6o4liq/EX6FMgt4PjLTmnmfeUhQ7
         /xo7XFaqPJgv6pHzdTXNiCRmKdiTtZBvTurqy6TTAHXa76G/L40cgXo9I8/VIMXxDHqE
         SFBGxgG6YTC5C6HW/PSkdck+ODjEmk7LHeUwtimpHUEiGBWbJcQQZ7ZZySDjashqa97e
         uQWlgM350RLN1UY43HydbLkAxYdhLd0S/2TpU2ZuJUlCz6I+YG+awN4zt+yX5odxTlOt
         Vst8mNqtgOXrxKQR+h8y+AhH5+r2jqtxFjTUBfcb+krSvXKJ9mJFeu6XzjWw7dZGlorx
         Vs2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9UHG1LAoOKWALyi66JUlpqEx8IDlKBEpwfSOENMxhCM=;
        b=h8zUwW9Kppdwp42C3huXnvwVhJ0aS7mFhk4wrVW45UE+HVKJYUmFUbPK8s1HgGiMbO
         Bmc2M29YCvA9IRy7ZjLfrPqanCufZRYp/r8MwEZZvPEm8uh0W4klS5vwX/felkakG9F4
         3efUtMvxC+j/yegStlpsRdX5XlwesXJMecFjGcpXn00IJoDvJ5D6sRgeYE6cULSNuNJf
         yeNEQZp6DbsadZbJH3kaOJPVa46OQVb17yX/y6oII8wbFc9KhSr3p1Viv1YmTlw59S+k
         QMllf4G076yaCdxwMjRcT0+EaHhaRsVZWLb9ivypl+0b8t9QOM6GcuCJsndkzlKq8lcP
         /kqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RnJD9TXQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9UHG1LAoOKWALyi66JUlpqEx8IDlKBEpwfSOENMxhCM=;
        b=Rbhqw2jigj5CZ6a8lIIz3QUBTWJMn5y+f1o3ZiuFL4ynFUclXOfVvJEsAKHE/VxK93
         GuluUOqYlg0EknAyR3U1jI0XHLvdM8VVU5JxwESNEu4ATrkipPWzkQvB5tMZmnYWGmz6
         bhBRVJyKxAXCPWOrDwXUfwZc9GAZ6i6dCk8J2tX5OHlltcNz+vxh+AoZdp1nEmO7py1Z
         HtLdBxhzI5dxBnVCgUbsmADiczqMrLzBYQDkaXW30NVH/4e7nXMIQ1rMGLuH2BMwp8V3
         4V6GuLbJ5a+RghhP1aPBmglw7h/CauCGV0R3bmfg5Xtn2VoEVcJMcH0NZewet1CtY9hX
         fNDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9UHG1LAoOKWALyi66JUlpqEx8IDlKBEpwfSOENMxhCM=;
        b=n2FIRMi4Z/JI1s/FNkCKPZ1a27kUcfWHW3hW1jjx1bzPSP3NJI0GUVvC4tXYW5XsvR
         Ip1KNnfLJ24jBGXKMAONKn0hs7A/FI31ox+rH/7Q2hUG5D2m5o3t/smGTCN0+HLcf03J
         gN41+EAA9Az2MRBdl6oMAM6+bT4jSKNJV44xNetUJtk+hGqp705NWX+DjA9KWn3uVN5c
         QjnyFuxWsfuMWbAdb6qM+ZJPdpTBN0JTbi2VvhiMqwxlau4+ggbC7Uws1tVsbsUA3W/w
         9A5mn9Qm5vvA0AgdjWxmmrXBsQZsDGIqy1OPL6rYCo1DfBC3S9vh0z9K8IzG12u5AVOM
         GmqA==
X-Gm-Message-State: AOAM531VfIPSceikUZGbd/36meTTC+FavQFCqyLxl12Qm9sCYLmJyflL
	5j7S9vKuNIAZyxbJgarB1Rg=
X-Google-Smtp-Source: ABdhPJy+gj3cw0un8wkXiZ9UXyLQwPQy0ZzKbmlKRsuCvQ2a2b/cFPONIR3yeLbzae/uLiPfXkUkJQ==
X-Received: by 2002:a92:9806:: with SMTP id l6mr18888469ili.304.1608578091737;
        Mon, 21 Dec 2020 11:14:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2681:: with SMTP id o1ls4714128jat.3.gmail; Mon, 21
 Dec 2020 11:14:51 -0800 (PST)
X-Received: by 2002:a05:6638:ccd:: with SMTP id e13mr16100176jak.140.1608578091330;
        Mon, 21 Dec 2020 11:14:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608578091; cv=none;
        d=google.com; s=arc-20160816;
        b=ufjrkBu2VIR+TRUTbcz0NdC893UfBRnbhA10ezi70sgtu4nGGjUaNezYNLPRVBPAwI
         OT0WxlyiT/E7/aSJHmxAfYl3hLBXGAr2vPJf7Gu6R/9STAn6Nhit/hU+xT9Rl49hmEeF
         8VXjCmFiX2f5sRGmoCZMRiMquJ4v6YcM5fbMA4AXAU22JvlDA1Dot5hEZsxcLvBeFzfd
         CbE+hfmgTQdTIoziEYr+BnipbnL3D4jnvhXF6JIgZPmg2zx6CG/szrvhjN4TchXY4nuc
         i4RXGZo0lZ8XgToaxeaCdt2kthggB0PlmefUo5eXNu42hEmBYLrN1+ZOoRyZIrb6KbGZ
         j/Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vzo/MfTCuEzeZ+aBdIfqWlbxinkOGPQuFxT7Er5XPmM=;
        b=PxnmnKyR/2L8viWLWjo9ZMoTq5kimi7FTtGbrZr9gJ1sYIGcR5kSGo01CpBG4KoTwr
         ybpXkKlFSjOmIFJP0XrRoIlb5ofzZkNZLEPFe5uqAYCcxLrEdo/ERhGr+U4VicqtKFyg
         jnP4cIIQ88tXq4CZb8G7Vyz1O4NsqtD+hQR62Bye60bVEN+hu5n6PCufNOjXSoQBduUs
         b4w+gSkt1ju/IA1pi54tPbqlePj+Rdh4ADMvk3S8ft4QyjVvQiGH6m1gavfATyzdAlkS
         ivmOJSL4RvBPDLLU6569Gfp5TfeiXnknkQ0xv69Jn9+mnEbmMWm39MEk0whKgbHXdIWD
         p84w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RnJD9TXQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id b8si1846540ile.1.2020.12.21.11.14.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 11:14:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id c79so6999058pfc.2
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 11:14:51 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr16700013pfy.15.1608578090769; Mon, 21
 Dec 2020 11:14:50 -0800 (PST)
MIME-Version: 1.0
References: <20200903023056.3914690-1-nivedita@alum.mit.edu>
In-Reply-To: <20200903023056.3914690-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Dec 2020 11:14:39 -0800
Message-ID: <CAKwvOdm8qUpueOdO7e-rQotO5UynrgU2TZ9DEe=O4f9eU5EY0g@mail.gmail.com>
Subject: Re: [PATCH] x86/cmdline: Disable jump tables for cmdline.c
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Tom Lendacky <thomas.lendacky@amd.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RnJD9TXQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
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

On Wed, Sep 2, 2020 at 7:31 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> When CONFIG_RETPOLINE is disabled, Clang uses a jump table for the
> switch statement in cmdline_find_option (jump tables are disabled when
> CONFIG_RETPOLINE is enabled). This function is called very early in boot
> from sme_enable() if CONFIG_AMD_MEM_ENCRYPT is enabled. At this time,

Hi Arvind, sorry I missed this when you first sent it.  I'm going
through and mass deleting my inbox (email bankruptcy) but noticed
this.  I couldn't reproduce jump tables in cmdline_find_option with
CONFIG_RETPOLINE disabled but CONFIG_AMD_MEM_ENCRYPT on today's
linux-next. Can you please confirm that this is still an issue? I will
reread the disassembly, but it looks like a bunch of cmp/test+jumps.

> the kernel is still executing out of the identity mapping, but the jump
> table will contain virtual addresses.
>
> Fix this by disabling jump tables for cmdline.c when AMD_MEM_ENCRYPT is
> enabled.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  arch/x86/lib/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
> index d46fff11f06f..aa067859a70b 100644
> --- a/arch/x86/lib/Makefile
> +++ b/arch/x86/lib/Makefile
> @@ -24,7 +24,7 @@ ifdef CONFIG_FUNCTION_TRACER
>  CFLAGS_REMOVE_cmdline.o = -pg
>  endif
>
> -CFLAGS_cmdline.o := -fno-stack-protector
> +CFLAGS_cmdline.o := -fno-stack-protector -fno-jump-tables
>  endif
>
>  inat_tables_script = $(srctree)/arch/x86/tools/gen-insn-attr-x86.awk
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903023056.3914690-1-nivedita%40alum.mit.edu.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm8qUpueOdO7e-rQotO5UynrgU2TZ9DEe%3DO4f9eU5EY0g%40mail.gmail.com.
