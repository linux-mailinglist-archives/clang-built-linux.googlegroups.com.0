Return-Path: <clang-built-linux+bncBCT4XGV33UIBBG7XS33AKGQE6SJXUHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BEE1DC2C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 01:22:05 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id r3sf3799266pfg.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 16:22:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590016924; cv=pass;
        d=google.com; s=arc-20160816;
        b=XihuCUkyC/DBAwsxK/SRtp0fa0lQz4YZ/w5l6DRstU6S00BmhXkkeruRPJZKZQtFFw
         D3D5qwU+n4ZtelbV2TA8mU1G/MrmeABHAFgL6YmWQmjFan4sNmsEYSXdyiQ/O7tbI/sN
         cKePouYMtJPY9BkOTFZEHkw6IAZ8Te3oHOCx7k2ngKW6xl2VkMeyVdRfpGk0Ry/qHplr
         q95AM0WFHSkQcWvTh+8xu87zwr5O1bCIORJu7ZFHpUDqKq8ZGImvonejXNh3QAFdJ7p3
         UQ6a2/Sv37ldRm9Mlc4dPtvIM3GCIyre5li7ucKVG5grQ0HkS2hF0Lt305heD5TVqUeg
         mIUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=SJ1hp1rHFXrKAtuRCSvzaDwe6fZyB0J6ctOfTLlDrso=;
        b=B16HWr7L/ZcYW8n4kwUBa4/bX+VCD+eiscol4ogPvJnldgI9c/VEQbrFsCEACShwci
         6aYedI63SvkHrXdraPFlW1OMBoACmzQNocQPzNsLorX7cxQpwhtdui+YmJovZyTQLpwQ
         anVV5NqcZ1Nveh2GvCsEUWSaCFe8ahYT4Dr6BfQHnL3IU2utEl7bAvdSTedP7DgNwGmu
         LiBQCbfrA8XeJNSuwucjQls7LXrZHc7yA5XBNkItEukI7fIiDignJApN+W3xNsqIKrqz
         bkjAIT/sM0UitIcZulp7nngpNPtcmOtJz12NbnhShqhJ5iqF2eAI0EU7arjBY+9kbb7r
         09Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lLOeQzkh;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJ1hp1rHFXrKAtuRCSvzaDwe6fZyB0J6ctOfTLlDrso=;
        b=Ns7o25CjEJ+oNqXXDeKxBWiwYgCNZq1sCOwLc2gXBWuTpjZqCI8mi/oNPYitFEo5Os
         v31CjUJvapbduCOCaiFnsKlrhSbuQPMtkmQdJ3j/8303OhQJPc4wELT9PoygIRf80tbk
         eaWizRn6lp1VlbkEYmdBMNy9KLlKUB2Ug9ki9YVXqd409dmyeCLREfR3fdRvMYeNOPnj
         /jNhYUSF7BftcwcYCCHdK7xoiGgJgF8Rg2sIzPXQeqXC3ktZf/XD4w0etmeBC363z2ZQ
         PQenFZOUmdZtWMnQrxIKuWJuRZZ2eCT+clXg8Ct9c2f+iKuRusFX+0A7IdebP0hvPokY
         FGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJ1hp1rHFXrKAtuRCSvzaDwe6fZyB0J6ctOfTLlDrso=;
        b=t2i3d55xQWhonBDDNm5pIDFLOdHcMZ83y9OdyDA52pdWSz9QJj+v1dT0C27NDSa1nA
         Opf1MYUWssnJfUGK/jPl4G3l3cMWTNptIuewbjBqAGkgpt1QotroHDh25J5dAQAAb0IQ
         86K7ietmkd+TntsNQpkbM0dkc7gQL7ZGkwgqnAg8b8q7dLHt44T/ARNt5XO6c2tudxB4
         8MVbjHO0uPf+2OwWpCva8wgLyVqftFq9+DQ7cbJhPH6Tb+unZCQqoAt5NyMfyfw/Um8m
         Mk7pWryZ22YxKiNjU87tOo8vJIrrWoeftXDlxHLxyfAXzEhw08wma6LpuzcwDNNHmuJf
         FqQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307WaM0ix9BERtY2ARDLqi+u/V99lc/OzssftohwuigFPtzWLrM
	kzkO+kCzzDy0/fUN/AuRGi4=
X-Google-Smtp-Source: ABdhPJwoMZokH06K7TP8qAB3SgKcVnRGNz2Bv9o+0BlnE+iMhu7vk1xzMo/d4QnCSl9tNJN1cRloAg==
X-Received: by 2002:a05:6a00:14c5:: with SMTP id w5mr6480693pfu.160.1590016923838;
        Wed, 20 May 2020 16:22:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9307:: with SMTP id 7ls40602pfj.5.gmail; Wed, 20 May
 2020 16:22:03 -0700 (PDT)
X-Received: by 2002:a62:cd4a:: with SMTP id o71mr6635558pfg.115.1590016923299;
        Wed, 20 May 2020 16:22:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590016923; cv=none;
        d=google.com; s=arc-20160816;
        b=PdLecmVQYS33puFUjAdQyf6QmuvTjOmO5O6i44TFhAJlii/glH1NziEI+P1pXCd2QD
         HGW0Pstma2DhWGXiSl9AEoFrRpv5hI8NUgsjR+o5YiCRXEulJV5vBknifYy+yJxd0zvp
         d4sk20LamRYc13DjG/rdCcMakKP7vG8o6B+ldPlt7T3e85XwBKDfEpZbNaYCKUcQlWR0
         C1rBMRTwhLeM52NlSPpvYpIL+lMTF2cCh1tQzJD4B8m44cjL6yKGZa71aW3uB8ZekB1x
         jAeF6ms0A1z1pejYmViwcva/7YnXKMaGtr6UpkN2BqwyrzVMLvI/a0NrENCV8FIQKKZ3
         EAhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8g3Dac+0vDO5MefIu70MRuqaKQAyM6L5XLCOcEhaZOY=;
        b=aHKHy1dajAZfD4dFDqNEt+cihEXrqYpgoiOHYa2eGl6BU2y+C9vjoH4hEv9Mxlv9S0
         lGMB+W0nKlGwuem0W03TUjSISlXjb+jCSuWevHiBIjy/SWPLrmkkZ8GHwoaaTLhSWTBN
         DbDgRdoEtz4Gwsu04+fC8UTDEUA5CrPl4UQGxLLEGE113CwLUOy4JAeHGB2c78+e5zZx
         24M2QnOgmqEFFIRE1YE2huza79I0BsintIzuDCHdjxoMRRkWcNFliTT/oynHKH+/gC5m
         tgCnZVYfw6JGQvbW1rmN0amsL1Hh648pALAtErpWeBqurpVQ1S/89WR8g6AavVEpUPvh
         QH1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lLOeQzkh;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z145si372912pfc.0.2020.05.20.16.22.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 16:22:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 56BB52070A;
	Wed, 20 May 2020 23:22:02 +0000 (UTC)
Date: Wed, 20 May 2020 16:22:01 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Sedat Dilek
 <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, Nick Clifton
 <nickc@redhat.com>, David Blaikie <blakie@google.com>, Michal Marek
 <michal.lkml@markovi.net>, Changbin Du <changbin.du@intel.com>, Randy
 Dunlap <rdunlap@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Anshuman Khandual
 <anshuman.khandual@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] Makefile: support compressed debug info
Message-Id: <20200520162201.0d18667c12c144c09112cdfc@linux-foundation.org>
In-Reply-To: <20200520193637.6015-1-ndesaulniers@google.com>
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
	<20200520193637.6015-1-ndesaulniers@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lLOeQzkh;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 20 May 2020 12:36:36 -0700 Nick Desaulniers <ndesaulniers@google.com> wrote:

> As debug information gets larger and larger, it helps significantly save
> the size of vmlinux images to compress the information in the debug
> information sections. Note: this debug info is typically split off from
> the final compressed kernel image, which is why vmlinux is what's used
> in conjunction with GDB. Minimizing the debug info size should have no
> impact on boot times, or final compressed kernel image size.
> 
> All of the debug sections will have a `C` flag set.
> $ readelf -S <object file>
> 
> $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
>     vmlinux.gcc75.uncompressed.dwarf4
> 
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +18  [ = ]       0    [Unmapped]
>  -73.3%  -114Ki  [ = ]       0    .debug_aranges
>  -76.2% -2.01Mi  [ = ]       0    .debug_frame
>  -73.6% -2.89Mi  [ = ]       0    .debug_str
>  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
>  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
>  -70.5% -9.04Mi  [ = ]       0    .debug_line
>  -79.3% -10.9Mi  [ = ]       0    .debug_loc
>  -39.5% -88.6Mi  [ = ]       0    .debug_info
>  -18.2%  -123Mi  [ = ]       0    TOTAL
> 
> $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
>     vmlinux.clang11.uncompressed.dwarf4
> 
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +23  [ = ]       0    [Unmapped]
>  -65.6%    -871  [ = ]       0    .debug_aranges
>  -77.4% -1.84Mi  [ = ]       0    .debug_frame
>  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
>  -73.1% -2.43Mi  [ = ]       0    .debug_str
>  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
>  -65.9% -8.62Mi  [ = ]       0    .debug_line
>  -86.2% -40.0Mi  [ = ]       0    .debug_loc
>  -42.0% -64.1Mi  [ = ]       0    .debug_info
>  -22.1%  -122Mi  [ = ]       0    TOTAL
> 
> For x86_64 defconfig + LLVM=1 (before):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:22.03
> Maximum resident set size (kbytes): 43856
> 
> For x86_64 defconfig + LLVM=1 (after):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:32.52
> Maximum resident set size (kbytes): 1566776

I'm not sure who we're expecting to merge this, but I like shiny things ;)

> --- a/Makefile
> +++ b/Makefile
> @@ -822,6 +822,12 @@ DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
>  		   $(call cc-option,-fno-var-tracking)
>  endif
>  
> +ifdef CONFIG_DEBUG_INFO_COMPRESSED
> +DEBUG_CFLAGS	+= -gz=zlib
> +KBUILD_AFLAGS	+= -Wa,--compress-debug-sections=zlib
> +KBUILD_LDFLAGS	+= --compress-debug-sections=zlib
> +endif
> +
>  KBUILD_CFLAGS += $(DEBUG_CFLAGS)
>  export DEBUG_CFLAGS
>  
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index b8f023e054b9..5a423cbfaea4 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -225,6 +225,21 @@ config DEBUG_INFO_REDUCED
>  	  DEBUG_INFO build and compile times are reduced too.
>  	  Only works with newer gcc versions.
>  
> +config DEBUG_INFO_COMPRESSED
> +	bool "Compressed debugging information"
> +	depends on DEBUG_INFO
> +	depends on $(cc-option,-gz=zlib)
> +	depends on $(as-option,-Wa,--compress-debug-sections=zlib)
> +	depends on $(ld-option,--compress-debug-sections=zlib)

huh, I didn't know kbuild/kconfig could do this.  Does it all work as
expected when cross-compiling?

> +	help
> +	  Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> +	  5.0+, binutils 2.26+, and zlib.
> +
> +	  Users of dpkg-deb via scripts/package/builddeb may
> +	  wish to set the $KDEB_COMPRESS env var to "none" to avoid recompressing
> +	  the debug info again with a different compression scheme, which can
> +	  result in larger binaries.
> +

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520162201.0d18667c12c144c09112cdfc%40linux-foundation.org.
