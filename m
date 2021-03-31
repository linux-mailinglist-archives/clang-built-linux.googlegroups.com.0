Return-Path: <clang-built-linux+bncBCQPVKWLVAIRB25RSCBQMGQEN5GGBAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DBF34F8D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 08:38:37 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id p12sf650712plw.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 23:38:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617172716; cv=pass;
        d=google.com; s=arc-20160816;
        b=WrOvYHM154MsYzlsYPJe1i7RiQr8QR0gxQzVK8YvUyM3Gv9OLQNTRKnuGDT+y01o3g
         waNYUZA5MOchbNRErL+Asv7+SDlgpKhtsUF7v+OzzfiVPvDqeXsxQmgqgvhw2fDFf1wR
         VQNnMovesV47iHETBGftamPuVbw1SDmdnSopKEas7lrpa2hu5C9QEootWJkqoFQQ9Iu6
         yh0hcKE6kEnxLvrSvhvajIt4IBVuk18jvu9rMzKeJr4GShLiIN+v2ODU6s3RngyLVfyZ
         FUCAShNPvPXXoHLqQ1gUIZmwxLtxi/Hxv/PR97MGLZaP2n1PSiVU+51qAJK67Ht6Opfv
         itQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TPbMH7fsLJPzRDKlS90ZCK4NnHuGCAvdKyh1FZjElRo=;
        b=EU6tnu00sOPhbzPTcIuLrbIdbOHj2RnBO07vCPajERpKtSD5mX3SDHZOO8CrkrVTPa
         TiOaOrzP3VshGW4c3mo5KpIek3EuIb3/3PEXoCCqYI6uEBZ3tbvYtI7e9UiVmtB8E2xu
         EeIWkOXex4AjhflMk1eoHUtN/5Q40IjX2I6WAFQKvvy4pylDZiZwAzI/jl9HsD2LoNr1
         nftdZpzUCoOUp4npe/MbSqDaxhEfeJeWvrsXIHvn7zJ25lkJL4FSicOKsbTDDLfx7Enm
         cK241TnnWpDhwl4S2QDMGF6jB/pjx4K1yipHAXSjHJ/VAkoBB3XJsjYS9dGde4qU4Z8I
         X6RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TPbMH7fsLJPzRDKlS90ZCK4NnHuGCAvdKyh1FZjElRo=;
        b=erlAJg+cldE6U+VJcnkjkyC59BCZPOpuqf7SYMobD0HN2CKlwnKyuD3Fu9h6TEt0pH
         rfvPDnzoxh9HpQQWKNiNNd0K/Z7KV3b1V+oi6GRFXrVYxnWp+JVYzYQmlsVFVNhZSkiz
         fFzjbuWMNou1V7WVNDw2OgKpWO+AYwp/s5QQjirsXKt+kOwqAVJ11CEEz6rlpEaxep6R
         EfiIQDFsnPfQg98knI3mzjOEFSOyhv9OXvjMhSqyomrccfjPeCrO0dSBrA8Q9pO51NZh
         25HD7WvdHOqE9pXlI3GNQH/HbHmVqtzlSyW25R0CjLAmkQPWiqLwWV3Qa/8J1vzvl2Up
         S98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TPbMH7fsLJPzRDKlS90ZCK4NnHuGCAvdKyh1FZjElRo=;
        b=C9mKkJcWz7cuVlzTcZHNxxWe82H9MS58cOQK/CxSDHzanp98xAJYaK13ym5fg0If2/
         v7rj/OASPylLxrdG6cR5eeW63VOTMRknkty1fRFIEE1IwowF2JW60ka32NeZKim02kdg
         BSkFNUssnXAkEq0ebTiOpwGicacM0hHIJVA7uOSYV/rqpniV9CKz535B80QPsjlfpRdV
         g54bZwSwlqopXN55XGzK9qBCuQpp39ZdUrmT3Wm4QuRze2swqiKG5oQMo6pLCPVzsw/U
         jjmy7Fp0RJ+qcKXaN9ZLRfns7/FHCf9zoSn1/q0enAVEt3xALbzNvg2YdVp/TYfndXb3
         i5yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530C26dQuHUfWMH7cRDAZtwA4ENkHGmXAEDzIlU6smnVbGjyg2R5
	r806plWNqWtjjaW60K3CV3k=
X-Google-Smtp-Source: ABdhPJx5nMRkja8YdiXp4/y+rluM5VESMRZ9qRQh1fC/FSEkZ+HJUNCDfqe2z+CEf/7xZHpONQjRgA==
X-Received: by 2002:a17:90a:1696:: with SMTP id o22mr1963872pja.0.1617172715684;
        Tue, 30 Mar 2021 23:38:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6256:: with SMTP id q22ls540108pgv.2.gmail; Tue, 30 Mar
 2021 23:38:35 -0700 (PDT)
X-Received: by 2002:a63:1f05:: with SMTP id f5mr1841888pgf.84.1617172715048;
        Tue, 30 Mar 2021 23:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617172715; cv=none;
        d=google.com; s=arc-20160816;
        b=ygFdPmF45kI7mtTY4gHtIygYRh7/fIaSqznas8UbrtG3vdDwnP7JT/H16yG9+uSPCB
         4sj8Yu8hGTv4gW5rUy5ifw83bwfmYZMwyEE2BwpzQxH2Ix3SSn+sLqoZuZq2BpxX1uJa
         iSPPGtz8oH/V1aARpxRVRiapQJQ4HG7iSXAoYZmQFIZQGMdJJJcP+Qy6HQZ57Kcqlobg
         9dlRQE1s03HZG2SixPUnLKqPIgcpr/Xchh3FUNfa80dfkrfQAzxrNYgM+kzohfTvOaEU
         eJWSqHwTRmHsL/GbZVChqHRlMBRdmQB3nsVTPwW0wJRDWGSBPnzAHKfRtKIxidfNvdse
         hiOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Z0PuvUg2mdjw/4+8hKxCVHQZ0Ux13E8NhP0BTsEfCd8=;
        b=x5JlTD8/f9LhtnM/PuBDwGlEs4egRN15K0G8ooSHkFsCacqF4QzhZ/DfRDtlP7jSDD
         XKG1xme9h1c46t6qVZnM/iwKvnrGYFzZjMHmFzvH8e/Z5AwMk7j1EDuPxdD/zOhR8f+7
         A5Xucvp8kjY838IhyipUli1Ob9hFZhkLhzdK0AEjRBwOlI5F2N7H0udc16S5QUUyM76U
         uHSYFGPVQg5X2+NT8F/ioUJ57aDgfoDFMBLYzdTbD/71FI5c3jB6pCGY7r8gI7aUVq0O
         B1p7dJ4i1q47BFoDy1orD+/MOXHJVNfnkOxgjl7QmDSbPWQtAGtQKNDohmbQVhsiPXvs
         Np2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id e15si65956pjm.3.2021.03.30.23.38.34
        for <clang-built-linux@googlegroups.com>;
        Tue, 30 Mar 2021 23:38:34 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 692A780C3;
	Wed, 31 Mar 2021 06:39:37 +0000 (UTC)
Date: Wed, 31 Mar 2021 09:38:31 +0300
From: Tony Lindgren <tony@atomide.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: arch/arm/mach-omap2/sr_device.c:207:51: warning: variable
 'sr_inst' is uninitialized when used here
Message-ID: <YGQY53/F5morEPN/@atomide.com>
References: <202103271303.BNY18cjh-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103271303.BNY18cjh-lkp@intel.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* kernel test robot <lkp@intel.com> [210327 05:06]:
> >> arch/arm/mach-omap2/sr_device.c:207:51: warning: variable 'sr_inst' is uninitialized when used here [-Wuninitialized]
>                            name = kasprintf(GFP_KERNEL, "smartreflex_%s", sr_inst[i]);
>                                                                           ^~~~~~~
>    arch/arm/mach-omap2/sr_device.c:191:29: note: initialize the variable 'sr_inst' to silence this warning
>            const char * const *sr_inst;
>                                       ^
>                                        = NULL
>    1 warning generated.

Thanks for the report, FYI I posted a fix for this at:

https://lore.kernel.org/linux-omap/20210331063556.30654-1-tony@atomide.com/T/#u

Regards,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YGQY53/F5morEPN/%40atomide.com.
