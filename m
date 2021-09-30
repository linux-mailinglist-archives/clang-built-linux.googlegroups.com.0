Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYP53CFAMGQEXZ7DVAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B680841E41D
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:49:06 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id a16-20020a63d410000000b00268ebc7f4fasf5090068pgh.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:49:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633042145; cv=pass;
        d=google.com; s=arc-20160816;
        b=p4lZyEoA3ewfUNBUH6gN19Muk9V+/yV2PmwO/lfCmxwUKQ1z0Qydag37GUnmqactmI
         cZQBZsEEuvGitt3WXQvOIPLhFyV90G0diLd5PztuN6ZGwI0rWpQ5kZzVHdFIKe/ZJkr/
         FjwH2tKigxVNBPqNlgc++ms73agwjynYhpV2pO1qFQYPsAn/c8iyysLljdT3m31zfoL2
         rkkjonHD+tlbZz7/40WEedOtEZVUbdgg95loTqh/jnHzBOyprwyFrWEoTJS48SDa092E
         B/Ke98Cq4dz5i+q6EX7JZ5kNz6pd7vRVDlNek37LuzciibiLlKDFNCBpd0Q/ru5E6wdQ
         NwJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ktcPxjtbyS1Hm6sBDJD+/9XTRE79PB6FVx5h6ki6QCQ=;
        b=EziEiADwLN78EHYmIBRAxGpF89DftQtAGYG9b77JoqGTJyi8ZkOY9hepwaK7EhuHjC
         dUpArmIuc7IalSub4v/+q6jL4ZXzB+5vSWFissCW6ATfSy07CSIOv+6tJuuqtY+GW5HL
         GzEFEF9xMAjHp+QLqxfBO5xrWsL0OlqCPFUoeFVPt9qIAj1xdRjx1+Cx3lNro6yW+pT3
         cjP5ofu0b33Y6XewyPuZFvngAbFUZMYT5HmnVR+2n1D6PCzApsHhEv6AgLxNKbltsgnU
         ujLFykbBQq8zsVsgXI19AVotj8zL9aeGgzBrFQjHloIHkjf+migWl4Pu93BOOxI49KqS
         uGaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UsJzLo6Y;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktcPxjtbyS1Hm6sBDJD+/9XTRE79PB6FVx5h6ki6QCQ=;
        b=nvCVhAlwFq+MC4JClY2TEtDn3td/GVxLiOm99gEI74HY/Vv1U8fFMMujw4Peb3CWvc
         6t4HTAEJW6det6CIIdj0OIfHRYbutFLxff3X994RoD9XbJCPj1Q6iZanF2u8vFg5KnBY
         pDVnYBUg2BPxEMbT7co9GtPfCrp0IiWFIOVCjEm3dannaq8QZfoml7vWFhGsrkiFfi/D
         72pCMHCIVKdC+L0D/LGeZW4MX+lW4xcL3xoj3lvRiM+oSfJv/aV2K3hsVjipR5K2uLUe
         TKjqn6kSJWfGcKheuIKfDn/l9Wfh+dh5jYnjt9G++4aGuLLbCOlAV9nhwIMfhQCZcOHG
         QDng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktcPxjtbyS1Hm6sBDJD+/9XTRE79PB6FVx5h6ki6QCQ=;
        b=piz4eYpLqQWopkkKUof3V3OAPnGbkH3zP97GZRBRfTo5NvSClewTAvyrJp1WHss2ZF
         kdxApP68wMEhvx2mgCfB7rlEM9AWPDB6o3hZlapVgLBMLr9ntbKjZngolXxNevJ9krcl
         eHCXiefGdi2NgT09HCLvBtdO6DBAWV8MdAKKJQV86l3zXOkXlhb9mS6QVTsczhsTW8Sh
         zwhbpJhfMZDYKU1mzwEzagZdpI9vOSBHSw+nv6lU0WAYzz4MSVX7UQhrBUetwzJ9GNfb
         pkYBOF+kkx9ekdRgSlDipPVlx4AmhtOJ2qS9RuwxIBKCbFiHeh2jnvo54pG1+IQlxBjL
         E1ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktcPxjtbyS1Hm6sBDJD+/9XTRE79PB6FVx5h6ki6QCQ=;
        b=mM9sHlVx5Ic2zrZ4ljzCXoRxID4zE+nHo6z7xUpkPmJAbEYT4jgXGOWRTwHHQjb/oe
         +yMJMLUG4J+v3S/98u7FapJZq+ijkZ1pfPOw+G52afr1xZlhIm6BJs0K+YxCu16E4fRI
         Kt90wh8ZmAtqz2pViLGgnjhCTjs9KfRi2zQLhzsl+RoayW6b6u4ywROqDBPRq5FHp1d7
         QNCuzAlzrVLNF+gL2VYgC15CYnvIS+GMNjZi8GbMCFiK/SkRqW6zIL70q9DCIcOdJ0/o
         sxKS5h0tP2OHjNDrHLxavv4wLKoAC1hiOZ+EjKxrcGJSZTjNEicBsJqQOTkB39DiLxEs
         xndg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532t4KA7Ydrm15+cO1RLEX4zxjz8hvf5JsSXyMmyvdxmbLcoPyIy
	RWSQDoL2Zj0afyfwAou8NBo=
X-Google-Smtp-Source: ABdhPJw9qP5bv+wJEK8Yjb2FoXan0U72ynxTd3eXha3ifWWe8qWsyvQwyUm3UcqR56+WjtnY0R529w==
X-Received: by 2002:a17:90a:6649:: with SMTP id f9mr9034523pjm.15.1633042145278;
        Thu, 30 Sep 2021 15:49:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5b52:: with SMTP id l18ls2945710pgm.1.gmail; Thu, 30 Sep
 2021 15:49:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:1789:b0:43d:ea98:7ea8 with SMTP id s9-20020a056a00178900b0043dea987ea8mr7983750pfg.67.1633042144636;
        Thu, 30 Sep 2021 15:49:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633042144; cv=none;
        d=google.com; s=arc-20160816;
        b=TxdwzHz8DhkJ+pDfIq5DsIqCvvJ54LCwBvwayVg/WT7w+tTMvy2ZyGA2e5qPtCLYVq
         TFYkH6+deVkbyc5P6sEX1KZJGt8VlY/iklJscTN92r2+gEF5vT98/yJ9gF49dh1UfI+q
         wORxlNqHkjaPwif3sKG0DNJ/qw89idXggIDpgdxVeRYTwa6w3vjSyPObOI25Nsb6L7qm
         JL6Y8BO2yWlDothZgmfSfxrvFmjuKJc5UTWXVrhlKo5Jm7qifMp4ysGPrf+5QVKTzCBl
         1z+HDQTXbJsSz2aAoznE6oqPRTAN2p8kxCp541CqhKafn5gBEsSiHJwsPHQCdaj9vSXn
         xFQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vOtIXIDfSsulhUrItDNQERb0f0g8vwOd+YpN2bOuFew=;
        b=DFVKCkm6iSaVZuKbGvLySsljEFreJKY5SkxBF2mb+AZaVJnqbcjYBhELr7CP/+Uzl/
         0Wu9lujptYN6uSycXfPSgfhvB5l9OKcdDJcz/a5At1eV2x0zLg8XU+VkWcT4k11fdofw
         ghY/vKgrDZBFKm/Y40YHVVSScXIg0bKk7jU4ROiGyDJl0NCbn7GryasSTGojjEiCseeG
         kHtmKCX3km0MFcn+8lVozG+J5C2u3AQr4xa3zOkpgD3LbbhYv5Q3eDLFRyqJCQn3YpYx
         FozEzJTULRaDy2sL9KYRxxlJenmQlAO96hRTPxJ29QBL5PkRCLb8N0J10WAhNOiRm4UN
         ITUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UsJzLo6Y;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id i22si451005pfq.4.2021.09.30.15.49.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:49:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id e144so9553366iof.3
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:49:04 -0700 (PDT)
X-Received: by 2002:a02:a60a:: with SMTP id c10mr7053135jam.131.1633042144130;
 Thu, 30 Sep 2021 15:49:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210930222704.2631604-1-keescook@chromium.org> <20210930222704.2631604-3-keescook@chromium.org>
In-Reply-To: <20210930222704.2631604-3-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 1 Oct 2021 00:48:53 +0200
Message-ID: <CANiq72m3=pD=D_dt1SUZRAp19WV86LjWRj9xd-tt1YNtnkqy5w@mail.gmail.com>
Subject: Re: [PATCH v3 2/8] Compiler Attributes: add __alloc_size() for better
 bounds checking
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Andy Whitcroft <apw@canonical.com>, Christoph Lameter <cl@linux.com>, Daniel Micay <danielmicay@gmail.com>, 
	David Rientjes <rientjes@google.com>, Dennis Zhou <dennis@kernel.org>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>, Joe Perches <joe@perches.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Pekka Enberg <penberg@kernel.org>, Tejun Heo <tj@kernel.org>, Vlastimil Babka <vbabka@suse.cz>, 
	Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Linux-MM <linux-mm@kvack.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=UsJzLo6Y;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Oct 1, 2021 at 12:27 AM Kees Cook <keescook@chromium.org> wrote:
>
> +ifdef CONFIG_CC_IS_GCC
> +# The allocators already balk at large sizes, so silence the compiler
> +# warnings for bounds checks involving those possible values. While
> +# -Wno-alloc-size-larger-than would normally be used here, earlier versions
> +# of gcc (<9.1) weirdly don't handle the option correctly when _other_
> +# warnings are produced (?!). Using -Walloc-size-larger-than=SIZE_MAX
> +# doesn't work (as it is documented to), silently resolving to "0" prior to
> +# version 9.1 (and producing an error more recently). Numeric values larger
> +# than PTRDIFF_MAX also don't work prior to version 9.1, which are silently
> +# ignored, continuing to default to PTRDIFF_MAX. So, left with no other
> +# choice, we must perform a versioned check to disable this warning.
> +# https://lore.kernel.org/lkml/20210824115859.187f272f@canb.auug.org.au
> +KBUILD_CFLAGS += $(call cc-ifversion, -ge, 0901, -Wno-alloc-size-larger-than)
> +endif

An amazing journey!

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m3%3DpD%3DD_dt1SUZRAp19WV86LjWRj9xd-tt1YNtnkqy5w%40mail.gmail.com.
