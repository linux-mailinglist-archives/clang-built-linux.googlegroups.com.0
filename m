Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQF56SEAMGQEIJZRHUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 882B33F0724
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 16:52:49 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id g12-20020a1709026b4cb029012c0d2e483csf712426plt.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:52:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629298368; cv=pass;
        d=google.com; s=arc-20160816;
        b=iKeVzUt6qSJaNd+ar/CO9B+0GbshMt9gHwUu2BfKlt7YCr2iOGlY8ZYhhK0EVMVTnH
         W9fjor1chYVR5eDhv0b23u9/TDreJ93C2QK6f/v4F56KRFwUYMDpkSLDLWNdIgPUi8oD
         jrb0pBd6xHOZ3tY8Aq7tMsxdGyoBex82DCTNhI8Z1eo2MkCWQgfOllIGuzQkjM2CQxyo
         v7XEjlKmsh1AsEfNwxqv8pW6qCjabbGI2W592bRvO1CV5ErM9C3b0ZDu4GwWpseh44sM
         umenQ5vYggt1Wly3niqofN0Fua6VH2O3pFPcFKD5Rm04l6az+u1Iu93/smG4wH+nmxj6
         /Qjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=5S3E0xtB4RdHMHeOn0EGfKeweXuydLWs6ct4PIBR1rw=;
        b=cbqTgRjPeRy7ssh1X5VDpHKGiiuUVuD2CPyKz/aP63IMa5dJ9Rh6c04Swbd1ZxsdSV
         j9vGmVGexr3z5xWx6F+rnqMFknFUYTeihSjsdtLXoDFiQXM2MIrLG5xlu6YLfeErg9dD
         jd8lFWy09QZ1FTRr/79alRCYUyje1qoS2Fs3ZWbQ83CqqfI01xgk/bLTzn3qzx67y5rl
         dYDIKiwKz9l8iurL9vN6cE5dmEOv+1KqL4AXze2Aa9HD0VDwaokIoQJFqxKdbU+3bOVg
         JallT+3OSANRLGqtaW/wnkbkPC7C15qGwhHhMnVoiOmN+E6GFkk5a6d8NLANySxxx6V9
         vpCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1uOJg61l;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5S3E0xtB4RdHMHeOn0EGfKeweXuydLWs6ct4PIBR1rw=;
        b=nlyv72uZtwLI2WLYWZqEATC7PB/GAFDL8NvagYax+BoIyByRhfyNAX21LIkU5mYRAS
         yPAbf+E84J8jnd891c+Pa559LQHoIq7YHIQgGle/k/hPyxP3hXhJSsDnhFtIWCY9aRI9
         9DLG4y/3sl05K9ow5/tRGVp6Kd0yHNlBNLtE4G9LrThJsKmZIDViLoixiO/HpMJRNZHs
         uH7ZWdHkLWTzMx+qN/wCGr2zdb8rEt4W2WvgWlcnG5mTVMcG10OxMSsf0jh6h1Ix+S22
         yKvkU9ISWaZLtIGqy/uP5yvXnMusjGyAtP223Od5tBKtJKomPTddbDv4nSsTBtBbr2vM
         uEcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5S3E0xtB4RdHMHeOn0EGfKeweXuydLWs6ct4PIBR1rw=;
        b=j+6zV0gMNRge2NmJOv8+OwY/5iUvPtO3ZdEjknl0N13pgxhjZHkvFF8M5ANJf0oGZP
         wuGxqomUGxXQLip+/70nUyu4nMsXlTlusctNGm0E1c8QdvuVo9qH2LiSxBfhJURmP0hY
         ezKozz9F2+Guj6wqndqaiR3wAzUmsUCB2nwlnkLV6b6t7lIxnG/nuCP1rRIPm3x07sqL
         SjY/qZ9ZaEfbE7eHK11RjyDqy4tJ5TWOiQ6ySIO4l8Lbvdi9nbLzoXYRTe18M5uC1Kv2
         C43DDwWROHl/f1PjS1y4anOLXzOfopizjbZZfVqsVm9YLcBv9sb36a6g3XH6uYLhi1A6
         eZ/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306Mpp+KQlCQ0lmJ5FcfuWJU35WgB05l2aS2dhGv5L1gspH6LV9
	9BPw+XEJT+0ApaV7zLBYNSM=
X-Google-Smtp-Source: ABdhPJyvTQAEBehr0HfYiPGDPOUStC3ohkwVMb5gUKEkKJRAtLC1hQ0v4v0VWvBL66tCf/69rngBcw==
X-Received: by 2002:aa7:90c8:0:b029:32c:935f:de5f with SMTP id k8-20020aa790c80000b029032c935fde5fmr9772945pfk.79.1629298368214;
        Wed, 18 Aug 2021 07:52:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls1295566plo.1.gmail; Wed, 18
 Aug 2021 07:52:47 -0700 (PDT)
X-Received: by 2002:a17:90a:a382:: with SMTP id x2mr10038979pjp.86.1629298367435;
        Wed, 18 Aug 2021 07:52:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629298367; cv=none;
        d=google.com; s=arc-20160816;
        b=cag7Rrpb9MQXJkGu6/nCGfzuBQ7DsBZXqoRlOcTJZzpw1/0lXAyYXfv/eRbiob6y+T
         oIarJyfJ4FZZI2B701clG4Ww9Zzt2Y5vwaB65EsKv/7cHxsvLHlUhB7wHarTzcDGVnA+
         JSYk0SZ6kC3FX7ejDHsNqnGVNZwc+l0935PZfhV3Bbznk+NhjtqwsIUfI/43q76cdADA
         kGstYTxavxUM+lR2V+miAVyB+rDt3tLM+NhfUZNiZlPHp4IKWEOUeXPN/1Ul+pScBhap
         m0W2gtgEpP6XussOXuG5uMPT8nlZ3UA+FX7fJcHA73U1pK9Z276g3CPlishao9JNLD5F
         i0Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=4xBGs3s+HePiP6vkus0TyPzdPu7uR7OKLc02dzXS7u4=;
        b=REbUOif6hduUgIlr2lymW5zxLDAg4R1+ZCpXDwNrpGeVyYg0g+qKNlk63Gw4iAOwbR
         gs7J2xBw3mLMYI6ACYQSOqPvNUiI8P523zpN1VGkVmKlZAwbjiJgh8m9sajgIdQ61lEh
         gAI+XfNW7B3+GwcZXdg/yGv8x2ARWsr/zURWD86PprQ6COEiDHEyYMe5Pr42xNDf06R0
         PHWIy/imwLJj+7K1LduPvLnb56hQ5MK6A0ezxDlUrJ3vofK//WUY6jsoXbXDMMby0ioD
         RWDWZ8FXJelxoLnXeclQLpwOghuydFzW032WVZPHjMpg+I4mVFOz5Cofp9x+IOjoXDae
         H/YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1uOJg61l;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id m9si21429pgl.4.2021.08.18.07.52.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 07:52:47 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17IEqLgF025130
	for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 23:52:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17IEqLgF025130
X-Nifty-SrcIP: [209.85.216.44]
Received: by mail-pj1-f44.google.com with SMTP id oa17so2796596pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 07:52:21 -0700 (PDT)
X-Received: by 2002:a17:90a:7384:: with SMTP id j4mr9455656pjg.153.1629298340800;
 Wed, 18 Aug 2021 07:52:20 -0700 (PDT)
MIME-Version: 1.0
References: <269701460.117528.1629210189833@office.mailbox.org>
In-Reply-To: <269701460.117528.1629210189833@office.mailbox.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 18 Aug 2021 23:51:44 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQQh6kM3k4=UP9R1HQ5+QWzRZZ1Cse_nWv8nOOSkJ93wQ@mail.gmail.com>
Message-ID: <CAK7LNAQQh6kM3k4=UP9R1HQ5+QWzRZZ1Cse_nWv8nOOSkJ93wQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] x86, Makefile: Move the CPU-specific 64-bit tuning
 settings to arch/x86/Makefile.cpu
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "x86@kernel.org" <x86@kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1uOJg61l;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 17, 2021 at 11:23 PM torvic9 via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> In accordance with the FIXME comment in arch/x86/Makefile, move the
> CPU-specific 64-bit tuning settings to arch/x86/Makefile.cpu.
>
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
>  arch/x86/Makefile     | 11 ++---------
>  arch/x86/Makefile.cpu | 12 ++++++++++++
>  2 files changed, 14 insertions(+), 9 deletions(-)
>  create mode 100644 arch/x86/Makefile.cpu
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 307fd0000a83..94105d7ad22c 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -119,15 +119,8 @@ else
>         # Use -mskip-rax-setup if supported.
>         KBUILD_CFLAGS += $(call cc-option,-mskip-rax-setup)
>
> -        # FIXME - should be integrated in Makefile.cpu (Makefile_32.cpu)
> -        cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
> -        cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
> -
> -        cflags-$(CONFIG_MCORE2) += \
> -                $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
> -       cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
> -               $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
> -        cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> +        # CPU-specific tuning (64-bit).
> +        include arch/x86/Makefile.cpu




See
https://patchwork.kernel.org/project/linux-kbuild/patch/20210724183556.76680-1-masahiroy@kernel.org/





>          KBUILD_CFLAGS += $(cflags-y)
>
>          KBUILD_CFLAGS += -mno-red-zone
> diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
> new file mode 100644
> index 000000000000..fb407ae94d90
> --- /dev/null
> +++ b/arch/x86/Makefile.cpu
> @@ -0,0 +1,12 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# CPU tuning section (64-bit) - shared with UML.
> +# Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
> +
> +cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
> +cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
> +
> +cflags-$(CONFIG_MCORE2) += \
> +       $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
> +cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
> +       $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
> +cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> --
> 2.32.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/269701460.117528.1629210189833%40office.mailbox.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQQh6kM3k4%3DUP9R1HQ5%2BQWzRZZ1Cse_nWv8nOOSkJ93wQ%40mail.gmail.com.
