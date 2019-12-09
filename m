Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT7RXLXQKGQEOKOTLUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AD311781A
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:12:49 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id a31sf8597180pje.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:12:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575925968; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNZ98WaR7kCEfji4yrNfYV7gAhuk4nqEym+ihl3dSN1VctW998Wa0tbEkhuTRkSChI
         OolplOwuSc1a96p5kSkf7jcjLMQ4L2kqdzW40fSu9WJajjahzHQ0/rmH/62040/BKlvv
         wixEc3ezhjMtBA/UZoDdrKoggeXPH5lvUOnZi+nF/w3wjUehjAiC9h1Ik2L75ids4V1y
         ncqdcSS6J8riKCtWFVutjn816X2ZJpbtCINTN301e3ggxqLgHNkLS5R/FcJLXzIpAUsC
         o6zZWXEuFHkEifLMzVHqixME6yPI1kumE60xrTtd2XJsMTj7nbIKu/9lhcXp3zZ4qjIx
         JD5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AfX1NYtIYRSs0DFuvWa5Yz0GI+5/sTgVtJsdUSNcVe4=;
        b=WZ+Z0/1BXsESTfA1Qse7XaqlxaJCg4cJIApDAVFxlcu0hcaBMzLXEk4wng3H75J8zn
         7PHuBhJeV23fz3CWPN4XXY9IFRGH//8yVq/eRE3ZequEIebJHIxiX6+zGt6yvucFiQq0
         QwhofwbG925nGmVyX5XrsqWAWuuei1mxEcq48CDaJ/Diu27UFzy+XRdZhg1KSnBM1Obv
         uePwCl7vELtUcgEkZIjD0ki297Zk572PArF+RXRUmsWLGVqsIw7ZPdaUxl+BdknIDIxi
         HCpH1MH3hRRtGHe8GXip+ErlDnzaou3gBEhiskWR3adISBKCeOhgMdAUwKBoxBPjxt7l
         WmKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wTf08lNe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AfX1NYtIYRSs0DFuvWa5Yz0GI+5/sTgVtJsdUSNcVe4=;
        b=T2IP7v/wbYhF8xg2y0TjBL+fRa11KzYV0VZv63uafAVihBh5ZTy9j6h5rdD/isvQD/
         bm40VAUEQplgZOVyUryiFGEnzZc3pBLjpdf61tHSnSscTojdmyzf+8W96AGeyLtg23xo
         F4XxglhrP77TCXnRMslhMffHmA7biJaDWsdEdgE4Q8dWWfaptcK/1sWTNCMYSlwk6Wbx
         nRUVR2MFFi2qdNTEz+LegnyieT1Y85kzaiNLGWK4QQx12HX4px+nP+X2oOG0Myhp+xDV
         8+DhxRWRBToZBmZdnn4tg+fEKO9goWQI+cX5fsERY23740/CBNXn1D7KzvGAkHwq1qAQ
         eNVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AfX1NYtIYRSs0DFuvWa5Yz0GI+5/sTgVtJsdUSNcVe4=;
        b=IZu5ovr5tGoL8NfIPpgWhwbWxx8KNmVwsFCIMn3+kyeE4qBRi1vjUAYSba/w1xTrgR
         /OvgBYQohr/izHmhZRDFoTnJ12iXYiWmKWiy5F4B2KYqXnolaibituIEnIuHAz68Gij5
         faRvdW+We2A5FM7xGJvAL9F9ogIGw8B+fVuXJV1qlYo7yO3bFWz/hONYnp5bXJ1vKk+d
         UCdowVA0OlJ0v4TjuGvthHZ0bkucV3E8c/WMvehfEmlqcoAx50jvQnBUbP5EN3TRRT/i
         PNz9GJXUHMyJdPDtNNT77SyoXhlJfheg3gP8bmXEjHjhjMDCoGJUTO8OKOuZiQ4Mmk1H
         LJZA==
X-Gm-Message-State: APjAAAVd+053j9WyNxoiY+aBC7W8MLjoGKagY76pAWiKqdZ3JdejLkXf
	sKkd2YMaDTA6xvTv13DBoFk=
X-Google-Smtp-Source: APXvYqzCdlIsvrWcdYfrjlKXYra9voqWUOpn1q2TOatmWUFfsfgqUiezU/cXOF6WHt3cR8wpfTdx/A==
X-Received: by 2002:a63:d442:: with SMTP id i2mr3194951pgj.349.1575925967799;
        Mon, 09 Dec 2019 13:12:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3ae2:: with SMTP id b89ls163211pjc.2.canary-gmail;
 Mon, 09 Dec 2019 13:12:47 -0800 (PST)
X-Received: by 2002:a17:902:21:: with SMTP id 30mr30853655pla.338.1575925967369;
        Mon, 09 Dec 2019 13:12:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575925967; cv=none;
        d=google.com; s=arc-20160816;
        b=RHqfvJmGaYF3u/PZV8YYmSzpDv8yOIT/LDQLGoIuoY5Nd64Ty7hXo4sbQoQpCuj8Sm
         cQqjjFeSSrQGaGin0s0tlhBOS40fnfoT1iHJDvVsuiTQTUs9QdSvow9/xDrwg1zpg3dg
         ivA08LzjnI3EgP7sJub2+Xzhs/AtbKGVflxl6iSoBpOG++yr0GS/McSqpR7zE9gaC6N+
         XbO4e8tSlQ7VZIQ6ZcgpvBzkeO8J7e8zAigdPJFxAbrf7fiUCh2qGgXheX/aYrUsl8gx
         3yGh/WA/667bE3uiQv9vC+Srhw4Ld7QJ8b9z0Npy02LaR2TY77fc42moVK9GQYe8db2q
         ncfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=reyZZJheLd9yHQxDntXi/qlyLtQlfdLU5vTmTSU2J4w=;
        b=CuqdovYeFYmf7IS+ZvjvzZPMKTAm1ayXYXK6+pDBhCOBJHtr2iTsO+9oNjCWks+6my
         BaJvggSO1ezA7FWi6BPUICc6s09CV80+tmKsJfD8TgMdq3xpLjmr7nrP0a8bXvW8a/O5
         GkT/v7PuvU2AbItX7LV7QX9Ri7oJ1J2vVaIZ9Pq4C93uEo7nbnEJ4duibPkh58SSpimP
         dLJAvvvpwWryq+ybAMNfNwcIT8sNYw5P/JFfWlwiDGNTN0OeglwZkCcAX+caeabidZSq
         l4HBezzlmHbAGmGvgEuDjf6ronSv3wBJ9pHviffw5WuiPLgeOGU+KwuFg4DF+sOXetVG
         7qvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wTf08lNe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q207si32554pfc.5.2019.12.09.13.12.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:12:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x185so7858631pfc.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:12:47 -0800 (PST)
X-Received: by 2002:a65:590f:: with SMTP id f15mr20500805pgu.381.1575925966701;
 Mon, 09 Dec 2019 13:12:46 -0800 (PST)
MIME-Version: 1.0
References: <20191209200338.12546-1-natechancellor@gmail.com>
In-Reply-To: <20191209200338.12546-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 13:12:35 -0800
Message-ID: <CAKwvOdkWYqYD-036putggpCyq44xuLVsN9krzC98pmHoKe_0uw@mail.gmail.com>
Subject: Re: [PATCH] powerpc/44x: Adjust indentation in ibm4xx_denali_fixup_memsize
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wTf08lNe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, Dec 9, 2019 at 12:04 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../arch/powerpc/boot/4xx.c:231:3: warning: misleading indentation;
> statement is not part of the previous 'else' [-Wmisleading-indentation]
>         val = SDRAM0_READ(DDR0_42);
>         ^
> ../arch/powerpc/boot/4xx.c:227:2: note: previous statement is here
>         else
>         ^
>
> This is because there is a space at the beginning of this line; remove
> it so that the indentation is consistent according to the Linux kernel
> coding style and clang no longer warns.
>
> Fixes: d23f5099297c ("[POWERPC] 4xx: Adds decoding of 440SPE memory size to boot wrapper library")

ah, can even see it in the diff. Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Link: https://github.com/ClangBuiltLinux/linux/issues/780
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/powerpc/boot/4xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/powerpc/boot/4xx.c b/arch/powerpc/boot/4xx.c
> index 1699e9531552..00c4d843a023 100644
> --- a/arch/powerpc/boot/4xx.c
> +++ b/arch/powerpc/boot/4xx.c
> @@ -228,7 +228,7 @@ void ibm4xx_denali_fixup_memsize(void)
>                 dpath = 8; /* 64 bits */
>
>         /* get address pins (rows) */
> -       val = SDRAM0_READ(DDR0_42);
> +       val = SDRAM0_READ(DDR0_42);
>
>         row = DDR_GET_VAL(val, DDR_APIN, DDR_APIN_SHIFT);
>         if (row > max_row)
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209200338.12546-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkWYqYD-036putggpCyq44xuLVsN9krzC98pmHoKe_0uw%40mail.gmail.com.
