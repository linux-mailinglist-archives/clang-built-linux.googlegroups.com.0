Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWWF5GCQMGQE3JMCJCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA1D39BEC5
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 19:28:58 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id p6-20020a0565123126b02902cafc21ffbbsf4104518lfd.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 10:28:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622827738; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTqts74o+RNi53ypGekmEQNZdu4UWKH1Lf63IzhOvsKAhJpB0ACAetOjb9Qv3rj0XY
         uY6pAlSfdQOYvPcGxU7sh51YEflDhsE7eWTRXuK2xsppdZI8+nf+BixPMUMuDAsKz2D3
         h7GBu1CzeGVPwqohM+92KxpoSyq8Xem3Tv0w+03zI8r4LmxcpshFVa0IgwOh102y4ajE
         8pOCPxy9WObKDx7w6mfSg9VA3yVAtTNcaDbicdqOtbBzKemjj1jxYCxH7hdnYv81YpP6
         V6/pTNeCvaHTkeyehkEB5ftntGWckd9kIHoqGTvBl/WSW5OITIZYv14O98/O/lHsCl9S
         D2fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pT9CvSWXuUSjJmwtzSpMIl0UK6mB2FYyydFE9pbdtDM=;
        b=Nlno5DzwsnP9NIJ8v1cL8pwM/tVnDBoaMe+ltqnM56CDwlwpOVQg0DT9HJthwkcN8U
         Wa/yVAzilYO6mmzMLv6GIFQYPA2tbJzV/vgvFQPQkScfQlGFGUb0jnqGmGkcG8B1VEnN
         /h4cKWq3ISlAalQOt2G6oGbF+fBq80rBGYnvJQynx8dI+C2cFRspFBH6FGbw4TDgPNBm
         oCiz/zxnyf3JZp8lNr2gdNIsdcI8u2J0UixfRvXWgSA492SyqfLCYeG2kWEnLW8cdeYs
         FXi/Y6tP7dgZ524xlk3Rz0xGnPJHgIC5GdY7CnCKv3uBZcNI95mEwyt4mO7H9GyouXs/
         UTQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NvFLRGLW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pT9CvSWXuUSjJmwtzSpMIl0UK6mB2FYyydFE9pbdtDM=;
        b=EnL92yOVfRM0YYX+/QywBz4qdaKFkDpSI++ZDHlr43wNz4s9E65nFjofUEqitFlD+L
         y5nMCMF5FFSRhF/CbHsUgdZAQ2P+DD6Da+6qRwMKF1T4uyuvzN6wO+oDQe/PyBvQJuky
         j48NuKbGHpTDhravnNP+FX+mUvLApsFat0CMHqTtW/ORUXvPZCzJsnbwGeOHK9HtvWHx
         nRffztC0b+FcgNuYk/FX9Fb1YukDsbM88xs4EtUI5i8jfnj9b0KuKLeQ0+iIQgZvyDrF
         uac7tvhng6qtuKsHKZnWNpeo3rmnqne50Re0+oDnesGqoKOyD3lDAWP7LzCeZMhM6/Al
         qcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pT9CvSWXuUSjJmwtzSpMIl0UK6mB2FYyydFE9pbdtDM=;
        b=a3CIu6aP7/ZDqDKua3KhOWmUrsTH6BLkFpzeJVw7/yJyIRxJj58iGVDDd5Zvf+imWZ
         HzR/UoGTO8pLth1qaKUUiB2wFcR4l3Tvg9THXxMu3ROnYHkl370vJv3FT0vesVrTyVgM
         zqxz9J+mnSQXKo3yh8ZQ7aFt1SKPC2m8yYfXt1S/uYbas0sRIIuyl74GjjgBYtoMSzMZ
         QRL0SIhoALXYEcL/wWVxwuGFhGSdwHDLbLfcXJpuUgA2EX+jTOyanYnz3k+0kG91A3Sd
         zqPXiAWG4z8PgoZ6tZHGkNrFsUN9uFDisSwAsNZofamJKmR1r0av9HfAC1dYCJkxJAI4
         rI/g==
X-Gm-Message-State: AOAM530reun1qVwOBjcco8uRdws1tUUOMlU2EEFZ4RFY2FSGGPMAIQuw
	ZSFDivwNTySld43t5ZMchbg=
X-Google-Smtp-Source: ABdhPJzmsYNUaHM+/7NYrvxI7iGChCP8C6HoUZ6eAgznMIVHm1k1qiVbnBzpDNjm2uhsdqDZLn8BMw==
X-Received: by 2002:a05:651c:50c:: with SMTP id o12mr4203906ljp.287.1622827738244;
        Fri, 04 Jun 2021 10:28:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:54e:: with SMTP id q14ls1831971ljp.9.gmail; Fri, 04
 Jun 2021 10:28:57 -0700 (PDT)
X-Received: by 2002:a2e:9a57:: with SMTP id k23mr3225207ljj.254.1622827737189;
        Fri, 04 Jun 2021 10:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622827737; cv=none;
        d=google.com; s=arc-20160816;
        b=JsuMdf6UF50XEajkVgVewK1056LwKGdAAfEsyKkePIWyY1tZ6eLDP8LsLc5baftjyj
         WL8kr6D759ZQG/Y1IA48mucaO2DGlcI9FS5YIaOrxReQyAC8bLb0zEis+w80kP+IK4ye
         SrZzsxC6S9JIvUq9F5Omih94WYWso6zy7n7E0c+MVFUDjbluhF1bZWYiGfH6BNampBEd
         Qf8yOdQ8tJAQrQoizGh22nt547zF2li+Vhr8ewb3DlXrQMi9g/dLhDz0KLcAPh6SWRxA
         /RccQgD+ZPFiVA9V5yXKIHbnA8xtDI779hrAf5MWCmkNXVxXF0Yf4IdWFM7BT3gQ8FKD
         So1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QKFzPq8aab5JwJksCUS9Z59L9/ulxj+Lc/VprNH13LY=;
        b=aWaSPXhAASqsUDZQSjVtkx1eYOSbsQMy9zozkYTh/guiasfGSn6VMxqEiBUTVjeIEf
         QynbO+R76Rm+gbSYlHUcQZPN7vzJuGq361XH7ziZmL2tO3JIaqb5BBPOgf3gRK640bEC
         4Jp2eyccvLmsHPxsdxJIQWpGFkgDsThlLoItNbCS6kxTyclW8VAVtd91iaAgAXRiICJG
         6n/MIHTLF0JomKkN19eWlAb+K16ozaJULlFerVvewZJiViGiaK518WOt20W8xBbzD84H
         TbeoWOHzba6y0bcoD+Qnkl6cHKAcJHmORSREkdaRME7piHw5o0C33G9CMSHofuYrEkWG
         Es1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NvFLRGLW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id w26si285416ljw.8.2021.06.04.10.28.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 10:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id p20so12524648ljj.8
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 10:28:57 -0700 (PDT)
X-Received: by 2002:a2e:8056:: with SMTP id p22mr4222936ljg.341.1622827736693;
 Fri, 04 Jun 2021 10:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
In-Reply-To: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 4 Jun 2021 10:28:45 -0700
Message-ID: <CAKwvOd=4yRVZGCK36M-X_9TSxfJNWBWKfVnWO4-MQr47YkMPPA@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] pgo: Fix allocate_node() v2
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NvFLRGLW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
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

On Fri, Jun 4, 2021 at 10:03 AM Jarmo Tiitto <jarmo.tiitto@gmail.com> wrote:
>
> When clang instrumentation eventually calls allocate_node()
> the struct llvm_prf_data *p argument tells us from what section
> we should reserve the vnode: It either points into vmlinux's
> core __llvm_prf_data section or some loaded module's
> __llvm_prf_data section.
>
> But since we don't have access to corresponding
> __llvm_prf_vnds section(s) for any module, the function
> should return just NULL and ignore any profiling attempts
> from modules for now.
>
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
> Based on Kees and others feedback here is v3 patch
> that clarifies why the current checks in allocate_node()
> are flawed. I did fair amount of KGDB time on it.
>
> The commit is based on kees/for-next/clang/features tree,
> hopefully this is ok. Should I have based it on linux-next
> instead?
>
> I grep -R'd where the memory_contains() can be found and it is only
> found in #include <asm-generic/sections.h>
>
> I cross my fingers and await if this is my first accepted patch. :-)
> ---
>  kernel/pgo/instrument.c | 23 ++++++++++++++---------
>  1 file changed, 14 insertions(+), 9 deletions(-)
>
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index 0e07ee1b17d9..c69b4f7ebaad 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -18,6 +18,7 @@
>
>  #define pr_fmt(fmt)    "pgo: " fmt
>
> +#include <asm-generic/sections.h>

^ What about Nathan's feedback on this being just `<asm/sections.h>`?

>  #include <linux/bitops.h>
>  #include <linux/kernel.h>
>  #include <linux/export.h>
> @@ -55,17 +56,21 @@ void prf_unlock(unsigned long flags)
>  static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>                                                  u32 index, u64 value)
>  {
> -       if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
> -               return NULL; /* Out of nodes */
> -
> -       current_node++;
> -
> -       /* Make sure the node is entirely within the section */
> -       if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
> -           &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
> +       const int max_vnds = prf_vnds_count();
> +
> +       /*
> +        * Check that p is within vmlinux __llvm_prf_data section.
> +        * If not, don't allocate since we can't handle modules yet.
> +        */
> +       if (!memory_contains(__llvm_prf_data_start,
> +               __llvm_prf_data_end, p, sizeof(*p)))
>                 return NULL;
>
> -       return &__llvm_prf_vnds_start[current_node];
> +       if (WARN_ON_ONCE(current_node >= max_vnds))
> +               return NULL; /* Out of nodes */
> +
> +       /* reserve vnode for vmlinux */
> +       return &__llvm_prf_vnds_start[current_node++];
>  }
>
>  /*
>
> base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
> --
> 2.31.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D4yRVZGCK36M-X_9TSxfJNWBWKfVnWO4-MQr47YkMPPA%40mail.gmail.com.
