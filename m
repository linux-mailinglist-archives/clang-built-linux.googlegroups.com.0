Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBXBVHWAKGQEVDRCYLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 77090BD2C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 21:37:43 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id q5sf1781840pls.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 12:37:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569353862; cv=pass;
        d=google.com; s=arc-20160816;
        b=l60FKTs2vcd1DisI5/JV4JQeMeA6yNOWJt9pr2Ms/dHngVCRgg6xtVOJI2/B881Z1g
         fh7pVB5yxWSGJZlgVQTERlYMh7wKB4HLJzwTE5Elwpa7EnODyK8RNzmNrR6Gmi+x63Kr
         fBeMYOY8BsqToLLPlElMu5RjLUt3Vt00bn9RdW31NFWRg0pDGeceeNgm4cBOdNNGvIDM
         bCdbpuJ9PaFdd+X70lIHnuONC6lvWIktEaEvTMz3d4qjZ9UwtEcfv1McA1ErLDP2seac
         gxIiP3Ffa+ujsnQMRhkRBZQs1OLw7uIeuqOOueRhCg1RYNFIqZD+mTNt6ox7ggZ0mQTr
         nNUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vZTgcAiNZFTaypCRDpp8rOvyV+lHYLEV5IU3C7InTds=;
        b=u5hfRQnboVbFIYnKfAE9zb7B934oTAeAXRqzD0k7w61vTalb6Wp2q51Mv86wb9T3PR
         bSRTdvSC8eK0Daf+YFpz/p0sBuuoADYaa+PZgpJmznlzmxQMiA+XAezL71VRI3vjWzfB
         Vdh6B3Mfc05mZpb8enJSQ5llzkhR0Bovi2kP8y4hePFbA1nVUke/7dckfj/jnVg2KWT0
         m2zGaoivYV5F8YppmcEnpSJIYUl1F+HcJsk+p9OZQw6MMEy8aRUHyQwT7kEMd+o8GmUr
         9/C30sQv3F2pTIm21Lz55uasmxpagYYUekGdzj5NA1nNKxkg9EYpKwjuKNqhXNeBI+1k
         pEaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SktUiaLd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vZTgcAiNZFTaypCRDpp8rOvyV+lHYLEV5IU3C7InTds=;
        b=X70QghW7Q5SYf04xzCY6j1pxQQlv2G7XMO3wOs08M8v43wLB04QJcgeD63D38zOsMQ
         oH0p0HvlfWSYxTH1IZA6uS9fcmeN7ocqolg7Mp4v2Mn+WVlCjtSdsByf22zmJmRnZM48
         1nDbPet9Y5SvThCtVWtS0NUA0dfR415SSBAV/rneYcUkWyeaArN6sYYLr4uwPQFei4i0
         GvDJ2XCMmJDlxbuadO3r9aceiZQGWXy0tjuxZRVlWSO06H6wCZ4d+F53of9FyKWDPR3w
         MImLB1dEUoq+W3o1ZNjBlUnTbicSRF8p6OTbvb8Q5li2zR9aWDHFk3bNMPrBp8zNClbz
         SYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vZTgcAiNZFTaypCRDpp8rOvyV+lHYLEV5IU3C7InTds=;
        b=bev0Wa4S5T/twD+VlE1nWRyAgO5FYsCFdpq+1tjz9fBd3csnRQh0rHsx6aAwbgN7fd
         rC9EjA4MKlIoO9J9Ygu3n+03tYLoTICRcmBSM/ZlRF40Y7Xy0VyfaH4Ppb/80k8fWxEm
         3sVsXF3F9ZEPbwZVoWKKMaRZdPYsx/6PXBmhs5CxPRODwJUmUWllbGrJ+dusKHKoTSHp
         OdBWwNs+hrQfxNtncyo9ZhhK0ymP60KZL93BgERXjHTbzZvLsFJKnfeCFQ4LT+JTKPtF
         uAeJy4f+Qc0q0mnKZwgkxqS9ky96d5kFmRXLYCpjTJh8vuk/OFs1pJ4N7O04fUOmJn3Q
         PrWg==
X-Gm-Message-State: APjAAAU7/kzRdUMj1laRHkRsn+cpOUPYVjDQrWG7pRCCKZ36z6ZI7JBO
	0cyUBRU5fq0CO9im8RU9N9Y=
X-Google-Smtp-Source: APXvYqxVh7PYu8sbr6WT2msW2UiBU4Se38sTIpEpFLb8jf0B/J+7sFy06VfynQDIQiw9t7Ap/EDZgg==
X-Received: by 2002:a63:ed08:: with SMTP id d8mr4847153pgi.239.1569353862130;
        Tue, 24 Sep 2019 12:37:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f004:: with SMTP id bt4ls26806pjb.1.gmail; Tue, 24
 Sep 2019 12:37:41 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr4940052plp.25.1569353861855;
        Tue, 24 Sep 2019 12:37:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569353861; cv=none;
        d=google.com; s=arc-20160816;
        b=AnaYQyjUtPMR+9XfAI45zA2pqlXxz1j+6Sgzjp2AUzWMIqrKorye6SqUSvQHeVIG4P
         w0AvD8S4vnk5N0a+EQ55J+7xYocbeTguzYGV9pVxpa44rUDkndMWqiV7I8VhbEsQf3lB
         n6rldkvHfgT24GmhtWKFNBqApu8UJYymTNt4FNnghaHyuqb4VUcePhuqpfyR/SdMECjc
         u2GZBl8iibcqPlcEOrSBEYwb8zz87PiJm7edByzD9XWCYsq5AVLVrKwn0Mqj1uUT7eyA
         Dzh1vjKqelG36Zlau6KgVx0vpHVxyj4UQ2BoF3oeiGP4S3wD1INWz7TbQZI86BdihX6Y
         4E4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=861g/thnt5QkfvdcsmgCyLRARPkFspYG3nF0aXDzCWA=;
        b=KqXS2jquQ/CJmhWO67boH64H7cQu2AcTfOA3PDbGF+kD0C9VpTfuKCC7WmnSFdkGxf
         qRKdKZ+7PPi6JkpDo2A6oKgWH+Gty3s6VrsJoPTCy51TD7ShtAqRG9iPsB4zlSiLVckx
         UYXPDq2l+Lragy0QDLpIiQESqPVQ8JJRWvdqC7qKMiHTMBCK6hjAD5EBG1auLhcEJiEQ
         a7WWWQhY0Em+vo2SC99+m4MVJF9o/doGOV1GoF7J71baKKEioLZdLJ8h9lpNzZy8heUs
         ydDzrssRgtLNiA4Edzks7ZtNkGgTBAxTj3EWQP5hNlDkXsfCLVn9EsEiIDEBx894raoX
         tORg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SktUiaLd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id fh7si176907pjb.0.2019.09.24.12.37.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 12:37:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q7so1948517pfh.8
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 12:37:41 -0700 (PDT)
X-Received: by 2002:a17:90a:ff18:: with SMTP id ce24mr1747977pjb.123.1569353861100;
 Tue, 24 Sep 2019 12:37:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
 <20190924193310.132104-1-ndesaulniers@google.com>
In-Reply-To: <20190924193310.132104-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Sep 2019 12:37:30 -0700
Message-ID: <CAKwvOdnesgP8uVv3x9Ywqy0U24d_V9G-ovD5y__xJKB+t==6hg@mail.gmail.com>
Subject: Re: [PATCH v2] x86, realmode: explicitly set entry via command line
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Tri Vo <trong@android.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring <robh@kernel.org>, 
	George Rimar <grimar@accesssoftek.com>, LKML <linux-kernel@vger.kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SktUiaLd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Sep 24, 2019 at 12:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Linking with ld.lld via $ make LD=ld.lld produces the warning:
> ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000
>
> Linking with ld.bfd shows the default entry is 0x1000:
> $ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
>   Entry point address:               0x1000
>
> While ld.lld is being pedantic, just set the entry point explicitly,
> instead of depending on the implicit default.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/216
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

I meant to pick up Sedat's reported by tag:
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>

> ---
> Changes V1 -> V2:
> * Use command line flag, rather than linker script, as ld.bfd produces a
>   syntax error for `ENTRY(0x1000)` but is happy with `-e 0x1000`
>
>  arch/x86/realmode/rm/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
> index f60501a384f9..338a00c5257f 100644
> --- a/arch/x86/realmode/rm/Makefile
> +++ b/arch/x86/realmode/rm/Makefile
> @@ -46,7 +46,7 @@ $(obj)/pasyms.h: $(REALMODE_OBJS) FORCE
>  targets += realmode.lds
>  $(obj)/realmode.lds: $(obj)/pasyms.h
>
> -LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -T
> +LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -e 0x1000 -T
>  CPPFLAGS_realmode.lds += -P -C -I$(objtree)/$(obj)
>
>  targets += realmode.elf
> --
> 2.23.0.351.gc4317032e6-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnesgP8uVv3x9Ywqy0U24d_V9G-ovD5y__xJKB%2Bt%3D%3D6hg%40mail.gmail.com.
