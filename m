Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRMWRCAAMGQERPKLEQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E9F2F87BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:38:15 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id 3sf6379993pld.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:38:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610746694; cv=pass;
        d=google.com; s=arc-20160816;
        b=fcuKzUSjxYd5GBtBVo+aClfFizEarpjlTdyDAxtGrVe1fQfuTjJCj2D9YYElGLrOSx
         LJjcqQJ48n3uPruPBSKNLIJuVMatM49I5e23Ny03INeGFsuUovK+SNEZxwbCKcgZR1jy
         6o/ObG8xF3bZ4hwaBbsY+atqW6I0N5xgAjA3ekDhfU1PrDkD0k8x/2P/j80M0bz3lqh0
         MttPTmhhFHCCsrUMonSy+AroYWHdGHbK6aJk23mS3KiJfa3nQlIDJodJ0EuTZQ0xsA1d
         Hd9K4lWaWFkPk4TBTNJSUIEPKGr8hnfMsyEmK0SwVtKClVsQrWTYSDVAgjObvuKGe8VX
         j+eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZdbVxCNgpuA8TLdhXrSAufK7o2n7JvtubPQT2jCzaBk=;
        b=VqwwUudcFN6adQ8iG0nfvhFYT5cAoqkeK2DSPKVt92imrvBH4R6tHimymCqR8GtKZq
         UHnMkmPUoObo4+Sd95OFAoWZdhZ9pEg9zUJfY5Vq1q1WLLMeeo7KKYgy/Ya4WaoX1krN
         MJzLRYMO4PnhEAK3J8Tf6OjBwPJ4LHL5vP91t2/zmS0fwuf3nGeSsc9n55pjuCK/0rXD
         xu/16L/DShnBLbuYwecgisweFlmvl3EqrLEww9F3WwFUHfMnwVe2yeex7bvrrXwpH6Ju
         mKJYyoIJiZkcqFmj5W7h8TQX7UUzGqu/q2eijeWq7ViRYHzp9Vy5q19VVkWtOg9+8rU+
         baXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HGLPYaH6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZdbVxCNgpuA8TLdhXrSAufK7o2n7JvtubPQT2jCzaBk=;
        b=HlYoodkfnSp1joUzBtMCEGyAb1wYsttf2itdl5jwskRZwlHmzTKC2oDbn65/ijRgVN
         hrUlK8+0KF6cKkGHhMPPEcrpWZJ8dP7QkPA0CwhzkETYih0mc4AC7HUg0S4J+iYXvZ45
         NIrK7KgQzlXqf434uRFbe8wGR4YSoDBAoKEymLf2sbL9E98vPwDhgxUBVatTZ5jBhAAz
         PibxjzNmEuso52/8Yr1f08mcw2aqzhlFbj3aCXdRVkh44h70ZxZrHsZkIz0k4OCvRnvd
         WXUPxhVSDxWN85gHbA+MNm+aNWpnB4dWDKQmP/L0OgCNDWnOyboyr05wmn+PnA1Vnyww
         ME8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZdbVxCNgpuA8TLdhXrSAufK7o2n7JvtubPQT2jCzaBk=;
        b=GHo36ywqn+mBBeHGL+ypjfWy61rGArL0nizVgEBg0V9zEJHe5Flv9FOaDX3qkp88M7
         tOsUxRKyYvFiuLLpv3CTDkRsp3JbxwYXDs5a/XQ+zRXv+GNOso/+OYMZwGGWlFZ12zct
         9IK5w3JI1EG35m1vXiD+vRAkPiwfpTS/tKlsojoYx3TplG37DZjQA6MwqhaBMtEvJZkb
         LmpHwLOQRSWPMMNAU13idwfTAoKwg0viRkoZvZvPeuiU2kf93v+8UYpfxn/HfFc/Cq5A
         DmhWB5kUpbvrV1ozhw0ZkERi+ad880q7LO0Ep789SVcu+z8dHarGouhDm2yLUniaK6gQ
         91DA==
X-Gm-Message-State: AOAM53114PrMjvHO6iNq081aj9J/jQycw8Oo18aKNHDQMOngUCVaEFoy
	Epn7dHcBNUrTuAhQBRgSI1Y=
X-Google-Smtp-Source: ABdhPJya+wdsCSVW7BslaLh2SgOtfctJqc1iKJ6/X/yw9iHGS6/PBCZVWaLVrT73EuEEWwjGBYV4YA==
X-Received: by 2002:a05:6a00:238b:b029:1b4:af1d:d3ff with SMTP id f11-20020a056a00238bb02901b4af1dd3ffmr2514804pfc.66.1610746694192;
        Fri, 15 Jan 2021 13:38:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5c85:: with SMTP id q127ls3978041pfb.11.gmail; Fri, 15
 Jan 2021 13:38:13 -0800 (PST)
X-Received: by 2002:aa7:8d12:0:b029:1ae:4344:3b4f with SMTP id j18-20020aa78d120000b02901ae43443b4fmr14447960pfe.16.1610746693060;
        Fri, 15 Jan 2021 13:38:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610746693; cv=none;
        d=google.com; s=arc-20160816;
        b=BISpBgNFo+1M684npUiJ/oEjErp9vPTgnPpE6orQCe/yv9O/WC1iXM8IvhQkoObPM6
         /t1DwzcMmAHVzZIiqWUaWDHQjrMuNt+gmjwS/6Uri7jDtLtJJftzp9R+tN7YAGcrEvVm
         64YIa4ys8JS8KQYSDNtzXrd0aGCMAjshSiKiGBI1aLV53LMoMJyVpobCV0cSU52Uf5zp
         G2kbBCvib0MGX4CYOeO9voJQh0JJmQPybgo0MPQHetDu4I0oKyeM3Ysfzp5Oz6jbK48N
         +H0OZyVWFdKctBCwJgI09yQKdgAS3H1slH7wjb71OzPTD62JxlW9XOJHR6rI+GZWsK89
         Hj3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CF//WQWTc4Y8qbEJKZF2URWI2D6qR9O9d862hAE7gGg=;
        b=DsbdvsovCiX1tax9+wn+uhFJFbkRHuJh5S5TQ70D0GHP4+Xqd9snq8X+v3ziBXk95B
         54D/sBRj4RiuoSUA/R0rof2gN2WgJd2+RPB5yVL6PMtDGoJdPqEs7ZtUWgNb6V25gPDg
         6cpTseNtfjBIhQtTTYiU6i5YMBKfzD1htQva8lvk2YG3P5HSaAkDSjD/zU+vpJzfWZTM
         mMNpjMOSqpsZGQ03GY5vk5N9z/zl9SKSRnGzJPl/KHAjKMoneBPGmOKb7ZebYABncFwO
         9815MKGPFDDFMfJZ4Un171H2DhayhkiJexChu40cUkPNd7JZ1xkbaSRM2cPahaPHiMDx
         hXYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HGLPYaH6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id q15si782571pfs.1.2021.01.15.13.38.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:38:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id p18so6820709pgm.11
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:38:13 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr14661639pgb.381.1610746692600;
 Fri, 15 Jan 2021 13:38:12 -0800 (PST)
MIME-Version: 1.0
References: <20210115184826.2250-1-erik.kaneda@intel.com> <20210115184826.2250-4-erik.kaneda@intel.com>
 <CAKwvOd=16U7n=d3AoVq6X=kVimHVj3LcuMUZHzn-99f_WmKPkw@mail.gmail.com> <8c447469-0cea-0d30-14cd-7108314fbd34@embeddedor.com>
In-Reply-To: <8c447469-0cea-0d30-14cd-7108314fbd34@embeddedor.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 13:38:01 -0800
Message-ID: <CAKwvOdmaS2aJw2Xv3b5YkzeA4Fq4ZR5a+Zgs6ZnNxohzOhHg=g@mail.gmail.com>
Subject: Re: Fwd: [PATCH 3/9] ACPICA: ACPICA: fix -Wfallthrough
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kees Cook <keescook@chromium.org>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HGLPYaH6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

On Fri, Jan 15, 2021 at 1:32 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
>
>
> On 1/15/21 14:39, Nick Desaulniers wrote:
>
> > +/* GCC did not support __has_attribute until 5.1. */
> > +
> > +#ifndef __has_attribute
> > +#define __has_attribute(x) 0
> > +#endif
> > +
> > +/*
> > + * Explictly mark intentional explicit fallthrough to silence
> > + * -Wimplicit-fallthrough in GCC 7.1+.
> > + */
> > +
> > +#if __has_attribute(__fallthrough__)
> > +#define ACPI_FALLTHROUGH __attribute__((__fallthrough__))
>
> Why don't we define "fallthrough" here as in include/linux/compiler_attributes.h:

We do.  ACPI is an external project though, so it's not guaranteed to
have that header.

>
> 207 #if __has_attribute(__fallthrough__)
> 208 # define fallthrough                    __attribute__((__fallthrough__))
>
> --
> Gustavo



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmaS2aJw2Xv3b5YkzeA4Fq4ZR5a%2BZgs6ZnNxohzOhHg%3Dg%40mail.gmail.com.
