Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG7BWCEAMGQEBR6T2CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B42DD3E1B82
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:40:27 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id f20-20020a1c6a140000b029025b066428ebsf1768926wmc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:40:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628188827; cv=pass;
        d=google.com; s=arc-20160816;
        b=R7z8Vfj7j1zLSzskgDS6FjDMRs09pJGuDW/tTarf8P9p6Unr1s3TeGRpJ1yS39r+0N
         Eegdfn8YMKxMgF4Mqd+NmgEUiHnPy2rIsa5QLHOhFLSuCtmiFWHo0y4P21bOm6YAG914
         3XmX1MTp8aK9000l0/I2gMPcNtVb/bad2gWBrY9XLCA5fF+8n4qC+LQtS7/iYXC0+v4y
         ScoSYr4t5HCYT7rDduyB5km4ajYHvOcb0wv2D7OV4qkVw2TsgNxLgtMwmr7ZsVturIgy
         CQscLe26ftXl7ynwC/ArY7gDVlP7XdYP+/+m8hROpu/9iTYxeL3dtgzZSLhW3XEipPCW
         dADQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YYF+dBB4UP9/0ZiaYrLmqWgWpsH6pJr7h/HdJGpCWYE=;
        b=ltp6ftfYcp7U6OeRw6WikANZ+hGSa/cLW6kaMmCnhAx66SCIeNXErtIa6D1/NXX0sN
         HC4QDY0P1Cg9SNCEB7a02XezNct+nAa6eJyJVoiMj35KKI7/4iGU7gAl/YtaCkDuciMK
         cI6f5vnpWGjyu225pVUUTbZzWnYZpls4yF3PQK1Ia/f9btU7oBC+6R1NpPMZvkksXSCY
         PyEo77SpqKl56m8lJEysJsG/gqDF7NQkee/VDTsV9YIo2YPWcSm2R+PBUS+6STgLfSdI
         TRWKgu+lp12IMSya9ezuMmb4GLa0BgNhikZpyTWeHxFKK9oXLS1tYSgb+4ul6XBXBn2O
         Bq+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jk7ddJUf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYF+dBB4UP9/0ZiaYrLmqWgWpsH6pJr7h/HdJGpCWYE=;
        b=mbZnSKf/tqno2ynAccp6AKbaM5i+pi35C1M8pFWZvmD4RCE6DJ1vZCwk8cibaF+Vpq
         Z7DwmUnGUlbInX9ARDoIN8o3mA4pVUmpE+ncNKmjYcCmzz4x8bjLSvtFCau96YyNtIGp
         eaoEidSJj/uZq4Je50BivTYHgRj/IScrHbHF5QwoHLUbAIw8FlOXtOVAzS2M9pqrBEYt
         /zExL0jO15jhCQ25VLA1y8XWOBETlXk00uVh6sEKuH6pNprCoqgmZJAloutskX3MFFnz
         lY8ndg0z7G7uclAvpoRXi9CIPz+qHIJwhPDD4xRu4z3Y5ppFJIUF81xVDeCjFu9I9Tvb
         KiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYF+dBB4UP9/0ZiaYrLmqWgWpsH6pJr7h/HdJGpCWYE=;
        b=iMhDKBSMh5tE5GqDaG5hBE+XiHBlED0MHH6w1FZf7EmWTpOsfGsmZ6C5LBxuLeJmkM
         IHoMn/DD/QlWqDIC3N9DI2mH+fB6gYhaRXGT5C2GxET1OFlO+XpSmerio5Ooq4jR/loe
         RaNt8kDo6w8+mvcqa8LUjzFqJe2QPonzTOKYttFT+hJ5cMMl/AirvC/N/59zwE0Ib1oU
         biSSWHX1p/K61/vIjTsBbOPHVTjjRE5hQuimGDzUijzYouYHWwO9RVSFdH42qxxqix5Z
         psibKRt//RHcxHgh4tymHJjmC02z7TgLpFKTXRB69FpNmvm+9RUdRqqXL3Md1CZIdQq5
         5DBA==
X-Gm-Message-State: AOAM5311KrJ0WBwPnQaz/RzHKU3yX4m66YAhG2d2SevMtC1lMtOTcOVT
	h0l2+g+8KkVURfHDuoLZvdM=
X-Google-Smtp-Source: ABdhPJzFIpvIFS7wWxBH0CObnXPm5P0GkFmDFUcYslkb93PjmpKuzdEjpPC8dtDnIXv8+8kY/h9Nyg==
X-Received: by 2002:a5d:4cca:: with SMTP id c10mr4481060wrt.170.1628188827539;
        Thu, 05 Aug 2021 11:40:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a2cf:: with SMTP id t15ls1238661wra.0.gmail; Thu, 05 Aug
 2021 11:40:26 -0700 (PDT)
X-Received: by 2002:a5d:4a85:: with SMTP id o5mr6723449wrq.67.1628188826637;
        Thu, 05 Aug 2021 11:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628188826; cv=none;
        d=google.com; s=arc-20160816;
        b=LfKJ6ELbbJKMF59yxsdplSsE7QpHVb2FMb5G/W3fAWVDaiizFjUZcNfqf5rFzs8WR1
         PF3XxNmoGvIrocbb7pNo0loJiffZdvwo5qjVaqmDOgF0peEIIPmhPTU5KQnC+VpuGUFb
         8inbyfrH3uKm++H1uUMvtTXngWkfD5UVYRhPNDAe9b/FZv7zEud99XPjdVQUCjatxtnn
         MqF9IScTQb906BrcecBqVwmOFT/1vckbLEeOv/dn0H0ONz26HFjcFNRCKVq3ZeaJWB1u
         4+lYiCvbmgEcF82BglvfA3l5R6G0r7cAJGuQPRGLY1VYwQw25hqztNto/N7t6t3+Jw/5
         5oTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PIMmN8s4yzOklVrFNPAhUIzghEwqDAddYwZBgHlhoQY=;
        b=g4WbbAYWe+7W1lvgGIUKnZceUS6Z40SHeSuCGPVYg4sVyzCGvJ/3kV5xzpxo/Psekx
         XYsqypvZEMtfOSICJwAsFxt/TVaWLDz8e/6XG5ckihGhan4uCPJ2h63cXwJXL5970053
         OJ1bYgYTH0HDzU3LaAAcRlE728XjUMmFcNfBcETZ8PgBRWF5rrBxcUfEG/mnA5qdVnV0
         IGkOxG6VRF42UcPDGPelfzmyxk0rhJ+ZsKgtsM1pxpDE15zymQ4BGTR4iXHVOzVfVN1V
         dvqIx8c6MMDFtxpXhBYJlYAtAjPmCUz/AsGHWBrEgy1owml4QC8+WDqZ+AumcNAVCyPw
         GE7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jk7ddJUf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id u16si384362wrg.5.2021.08.05.11.40.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id g30so8699931lfv.4
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 11:40:26 -0700 (PDT)
X-Received: by 2002:a05:6512:71:: with SMTP id i17mr4612395lfo.368.1628188825887;
 Thu, 05 Aug 2021 11:40:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210802234304.3519577-1-ndesaulniers@google.com> <CAK7LNATWm94K=UcSNn88PyPST38rfe_31vLLpDf=ERPnKnBvVA@mail.gmail.com>
In-Reply-To: <CAK7LNATWm94K=UcSNn88PyPST38rfe_31vLLpDf=ERPnKnBvVA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Aug 2021 11:40:15 -0700
Message-ID: <CAKwvOdkVuzD68bQuAWS7fS0tat_wdR0bxb=Eh=Te84RtoRgZ8g@mail.gmail.com>
Subject: Re: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Khem Raj <raj.khem@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>, Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Jk7ddJUf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Thu, Aug 5, 2021 at 8:16 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Aug 3, 2021 at 8:43 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > diff --git a/Makefile b/Makefile
> > index 444558e62cbc..b24b48c9ebb7 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -845,7 +845,7 @@ else
> >  DEBUG_CFLAGS   += -g
> >  endif
> >
> > -ifneq ($(LLVM_IAS),1)
> > +ifeq ($(LLVM_IAS),0)
> >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> >  endif
> >
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index bc74afdbf31e..807f7c94bc6f 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -41,7 +41,7 @@ endif
> >  ifeq ($(CONFIG_LD_IS_LLD),y)
> >         KBUILD_CFLAGS += -mno-relax
> >         KBUILD_AFLAGS += -mno-relax
> > -ifneq ($(LLVM_IAS),1)
> > +ifeq ($(LLVM_IAS),0)
> >         KBUILD_CFLAGS += -Wa,-mno-relax
> >         KBUILD_AFLAGS += -Wa,-mno-relax
> >  endif
>
>
>
> Please drop these two hunks.
>
> I will apply my patch instead.
> https://lore.kernel.org/patchwork/patch/1472580/

Sure.  Will send a v2 with Matthew's suggestion as well.

> When we negate a flag that is enabled by default,
> which is a common way?
>  - set it to '0'
>  - set is to empty
>
>
> So, I was wondering if we should support
> not only LLVM_IAS=0 but also LLVM_IAS=.
>
> What do you think?

LLVM_IAS= looks weird (so I agree with Khem's response), but if it's
common/expected then maybe if there's a way to write a concise check
for either =<blank> or =0?  I don't feel strongly about how it's
specified to disable the integrated assembler, but let's sort that out
_before_ I send a v2.

How can you tell the difference between `make CC=clang` and `make
CC=clang LLVM_IAS=`? (maybe that doesn't matter here, as either imply
"don't use clang as the assembler when compiling with clang")
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkVuzD68bQuAWS7fS0tat_wdR0bxb%3DEh%3DTe84RtoRgZ8g%40mail.gmail.com.
