Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX6PSWEAMGQEKRFSDEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC953DC689
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 17:10:25 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id s16-20020a170902b190b029011aafb8fbadsf9847122plr.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 08:10:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627744223; cv=pass;
        d=google.com; s=arc-20160816;
        b=mWXJUhktEgmGakD5iXginuZXgdrIR4q04GjYyBsIuuOt6efAgXo8HYgjK0sVPzlqaD
         i+CioSOH6dCkdYskXndVBtKDFDn06JJdFqjBl+nrsl1770GKkhlMAUwESIUlu+W1D3+8
         4JOiyYVmj5voHnIySAC8WK5kAn3pk9wGp+AxPpW1JiI9X386CugPKa1s7IZBsBpqhvSU
         uM5ZhQisauJYeM+2Rok79vN8mHOnVA46ElfMYPh7CVus3u3iGoAhcpHvDPxzVQKRn5iB
         pDkDSaVvadNLgf0HfwYChQlRO9bUo9iKP3sug8CJRTFuk7bOPu5csUcfo6s3YZjK+xfn
         P5LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BbPc+CEXRX60Nne8XYUqsy6t5Ae2oZCh6FI5vLNUgF4=;
        b=kIuS1E/EYdJhIwyEATWEAWM1I+rgrRuJMUtXlQyWHcZk8HIXSyvs58siwa9yIHyG3Y
         N2YPPEjWxgJlJ7AgOOPFqcNiI9FreDhLy6IpMicSBmn6EM+Zb8+cFihxRYtsZ2BPaYdj
         jcVlQpAvOh8sRDfExVuPlbKVE9hTorT/S156pU8cVmEfBNZhUitSoYRexPt+ii6JTm6f
         mA9WbLQovtgZkQnN/JagsGu+xFh+6vpSh/o1VndJddgZUU5W9XHWvsAuLGl5GdDLEfL6
         0+YNMow9BLWlmiW1qv/iTvtwph2u7hOcUFKW2clo1zF57C3qutUybLyFFEwDc3vrIbcX
         KNHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L1DNvP8P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BbPc+CEXRX60Nne8XYUqsy6t5Ae2oZCh6FI5vLNUgF4=;
        b=CbWmB+AsutIsrxhKK8CB8XnR/RqfH8NEmHtY/0MHk4uQo5BteJ4rY0TJrCr9M3FC0Y
         vbIJOTICqCAirEG/ucRdx5F8ZMT9wje6lDqk7T20dqS0Y6fRcP7EJ72itJuja0XNR62Y
         HwTQ4laSjqU5HFOJbq+oaADsD0EBnyftF+USY7FoeO3LdxPQqe6YCw1IDykbMIzaA9M1
         o1SzuuRIsJOOuwgneFyy5pXOdCf/gGXj+krAzJiifbD9uwj94WRAqs1qtw8HqpWnMcNn
         ONk2fUQLpYQiINNngb160u61uOMMojmp9EcW5xF/ffF6mNcHYBp48OaT+whtZt0x6KUW
         M36A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BbPc+CEXRX60Nne8XYUqsy6t5Ae2oZCh6FI5vLNUgF4=;
        b=bEkgEaw/dYZ5SnkfQ1bgEY2d7hf/4D1PZKfmw+I0PYcWMSSWVZ2zBR2+qNwosF63bO
         UiKL8hQ7CiAHYussH/4RG8s3hMT6EFexWVYF25Qm4JBzWhS9l3urQCxfbcHFWPlzRXEg
         J33dMatrUpT6ocXu/ov0k9TuULpbw3EzQOrpCpsHdJbxI9aOpq5DHo7qct+FM7vJc6BY
         25NH4iGpq2vZYHXmb6F2+9kdDiKB1tukEWdt2URejo1mIH/rX7yjHLmOKsmfQsZePa7c
         BnxXNg6Kd8EbvngliFBqxNA/FFaTqk0up7Xw/fbJK8Xb8qlCoFdR1KAWpOqS0zCCtxDX
         FWZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dd7ihlFqjwra1Xn3MX//ZVgyzmzdqMPMWCW8KOwFhiOLKyl1i
	oktn1p7Ssfi/K83Eu2kxG+4=
X-Google-Smtp-Source: ABdhPJy+rThlRM+B73X78oY5zvpH30E9cBDknW7T8VQqBuopzAHS/7jJpQbC2FRbTQJxuoE2skjIJw==
X-Received: by 2002:a63:4a57:: with SMTP id j23mr1379520pgl.440.1627744223191;
        Sat, 31 Jul 2021 08:10:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b8c:: with SMTP id w12ls2417319pll.0.gmail; Sat, 31
 Jul 2021 08:10:22 -0700 (PDT)
X-Received: by 2002:a17:902:70c3:b029:12c:475a:96ff with SMTP id l3-20020a17090270c3b029012c475a96ffmr7178517plt.1.1627744222565;
        Sat, 31 Jul 2021 08:10:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627744222; cv=none;
        d=google.com; s=arc-20160816;
        b=uCaUxscseU6b7WFI3QKGDTPb4a9xs645Hw1+yH9Jypxea5BC2rLfchKW7rEncU2uQG
         zlAirYi4nmNVh/bJBJCwSgL3lVPLYAa3qLFgCQH2VQhjAgU+aCqlqrVx0ruzGyYzLc5c
         wxjpC6xMZNfx3o8FxiA90lmrLm+yPDtD4SLd4zj9e+v2apdVcYl2t8Jit1ICNrTRnm0z
         0biCY8qVRpclJES9PtlH9kvyUzNzRuKPkoINJL21PNQzasoRuQKSP+Q5ceJXOuc1NuuE
         FNnGKKkqmBoIIcj4OfnEBsDohBVeVR6zt8rfp46hWxWIM5JheONUWCySjzRKoupxqRjF
         pQgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lfME4cjM5NCmgici7VQUeLVxABhRdomGydOStVoPzx4=;
        b=Z9w2GxDBboLhbIoxbY0IDyNMI2PwZPb11zom8flB6BM4AUmJY+vjnSgqLqQ4/Kwih2
         77SWCxh9y18QjfXNVGId5+aP6MXxXMOkboq+4ScAgz8sw0wbsCz2BnA9k+kaAf4lb4XZ
         Ij29XjPrgdldwfOt4dtLzyvKA2GeO7vmitzm5NBkeBxH8VYYbpqI7dJnKL7Jkd7D9Ev+
         DT2QrpVIINTXLi7JMvA3jBV4XSF+VYJoF5FGrceY+/5JRyxL+zSnKGetgz+BQHGeWVqu
         XiBfHa6N+nkO3Qfq+edB6ch/wjbT4/iDsh6nrPAGUylQJTJzOcBnymtfVLFG4IaYFydA
         +yPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L1DNvP8P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id mu12si388039pjb.2.2021.07.31.08.10.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 08:10:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id m11so2391984plx.4
        for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 08:10:22 -0700 (PDT)
X-Received: by 2002:a05:6a00:1488:b029:332:5e67:1198 with SMTP id v8-20020a056a001488b02903325e671198mr8347873pfu.9.1627744222329;
        Sat, 31 Jul 2021 08:10:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n1sm891630pgt.63.2021.07.31.08.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 08:10:21 -0700 (PDT)
Date: Sat, 31 Jul 2021 08:10:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: "Williams, Dan J" <dan.j.williams@intel.com>, keithpac@amazon.com,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	akpm@linux-foundation.org, gregkh@linuxfoundation.org,
	dri-devel@lists.freedesktop.org, linux-cxl@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, linux-hardening@vger.kernel.org,
	gustavoars@kernel.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org
Subject: Re: [PATCH 04/64] stddef: Introduce struct_group() helper macro
Message-ID: <202107310806.CD5D546DB7@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-5-keescook@chromium.org>
 <41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk>
 <202107281456.1A3A5C18@keescook>
 <1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com>
 <202107301952.B484563@keescook>
 <CAKwiHFheDv2pwsm6Fa+-KnOFyvk7bfZQjb2BQ-CSwH61gxgVYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwiHFheDv2pwsm6Fa+-KnOFyvk7bfZQjb2BQ-CSwH61gxgVYg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=L1DNvP8P;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Jul 31, 2021 at 07:24:44AM +0200, Rasmus Villemoes wrote:
> On Sat, Jul 31, 2021, 04:59 Kees Cook <keescook@chromium.org> wrote:
> 
> > On Fri, Jul 30, 2021 at 10:19:20PM +0000, Williams, Dan J wrote:
> > > On Wed, 2021-07-28 at 14:59 -0700, Kees Cook wrote:
> >
> > >  /**
> > >   * struct_group(NAME, MEMBERS)
> > >   *
> > > @@ -67,7 +73,10 @@ enum {
> > >   * @NAME: The name of the mirrored sub-struct
> > >   * @MEMBERS: The member declarations for the mirrored structs
> > >   */
> > > -#define struct_group(NAME, MEMBERS)    \
> > > +#define struct_group(NAME, MEMBERS...) \
> > >         struct_group_attr(NAME, /* no attrs */, MEMBERS)
> > >
> > > +#define struct_group_typed(TYPE, NAME, MEMBERS...) \
> > > +       struct_group_attr_typed(TYPE, NAME, /* no attrs */, MEMBERS)
> > > +
> > >  #endif
> >
> > Awesome! My instinct is to expose the resulting API as:
> >
> > __struct_group(type, name, attrs, members...)
> >
> > struct_group(name, members...)
> > struct_group_attr(name, attrs, members...)
> > struct_group_typed(type, name, members...)
> 
> Bikeshed: can we use proper nomenclature please. s/type/tag/,
> s/typed/tagged.

Ah! Thank you. I went looking for the spec on what these are called and
couldn't find it. "struct $tag" is the type, then, yes? So IIUC now:

       |    type   | members  | name
       |       tag
	struct foo { int bar; } baz;

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107310806.CD5D546DB7%40keescook.
