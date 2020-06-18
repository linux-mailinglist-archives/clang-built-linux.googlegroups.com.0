Return-Path: <clang-built-linux+bncBDYJPJO25UGBB27TV73QKGQE4BXECUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6230E1FFEA9
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 01:34:04 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id w2sf5370109iom.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 16:34:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592523243; cv=pass;
        d=google.com; s=arc-20160816;
        b=AJIss8FR+qS60D/mTWd7xYsN8gyyAhMZI8GpFbfZtuUQIbOqGU+Ff0SGgioQB369FA
         ZzLQ0U3ZzQiWkmSzddhQF0iDfCHuNgcwmQyK6MpOvhRPbPM8t7s6qM8XR/W7B3UVJ1nZ
         lez1ljgfTdHqI5YcPV8rxXt889hcvx85jREPHB9Jmp6ipXURKIsGQQE/IhsaPh6OIUpu
         eqQmvvZdpowWwCtlYMr9lQpeRYAbGItyLyDtc+eOmBKudy8pHONJkWFU62QKbtujimOC
         lQD0S/ZKqYXpWyzmtW7kC6h8yYptVMDnieqBsqoJng2AJG/BzR/5wz4TlWzKK4+vvbZh
         5nmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dfE5ALUcmpPSzmkGcnPzmB8LcWECOZqBQIi5Z+7L9SM=;
        b=aUW6szLZS/ZBD/w9MZhu0lvQJ5/f+5tdEkLjVrNKyq/dhHtNKWMT2THtTz2PPmDYiv
         fNDVFNngbvLylEOEa6nCIVvI9WzydRs3Td3Tfc5Xsy19wyF/cmlLaD/1gyQfW+HfJLOG
         G/4eyf/cRqcxtWo4JJa7vcCfIVzr9tPw5WNPZ4VO1Sn/CPGX3E1lVPoiFS+7EzOl2/kB
         f5HBkaDeJSVP+13IOgaRioFknNYDnj+JPOmSy33bUOWjR6fgpEn1Lx1eimAkbpvwVoR5
         XvxFKzmSaGLd7ABXHYPjugvssUpABxm68/D2Z0k3CAKd+TOg7rVfF8hG9EimeDe4D88a
         Aydg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ewi80sWV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dfE5ALUcmpPSzmkGcnPzmB8LcWECOZqBQIi5Z+7L9SM=;
        b=nimyttTKIB4mVXji0H4dp8OShUmRKywo48k/wPgVtHuDq4Nj5XI0+BGwnuKnyBaK4/
         wFq/nkQzo/N9KGH5KWlxBPItBHoTIZsbkWqbO4bV/qZa4b27254XnDfzNUWRKmFdHCed
         bA2MY27pOwcJ+QejpuMXC8U+mbh1a5p5p6LdOgEO7TGEIIa2GjRYDmvSXFUKhbpdobTk
         xgQAEo7UfRe31wjI9Ju1giLTxXlMQ3yowalzCUGxN5aeU+QGaQMX64+y4FtYtDiqKerY
         mdMaEc/eaK0lIRYsfSFku31XiCEMe3i8+xodJ5y8a6ruodyJo/XAx3ZSJrtZeLekJO0A
         uzRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dfE5ALUcmpPSzmkGcnPzmB8LcWECOZqBQIi5Z+7L9SM=;
        b=F+SCNHdDUwWXd/TJWvnB/hb/NoUWIr0CjI1NPUXmzOY4b2tJ77g6790QsbH3hV8Uy4
         LcmPHgMkDmt6tVJVtKao0NhYvNGsOWR7WFlM7gC0WMkJwzXBiBBWm/EMYbgd66IYyvkQ
         BojbQcZtfSbf/ndr85JB8pO+coo+mOPZAx60ApV5Z9X8p7MWNo3jrDpWPEAJTRwNBE9z
         xbLyuioy3OGmr5eBzd7RF5L6mgTTihszQiG8xB4qUVZnyar/wxh/Gs/VJdXB5rs/3Rsr
         aJLAoheovUuM7zLCfmk9rhJDKcW+WZMSo8crWc5f27DY/oook2JPhnTfkXiLa/V6V31/
         jMng==
X-Gm-Message-State: AOAM531T6hs8st6xnEhajIxgeNPM9HuOTjzpVQKuMr3C0gwbw2W5GD1T
	1pKjobKeeHmxnYw2uYU8Wuc=
X-Google-Smtp-Source: ABdhPJyYxrcxp1u95gieDhUuD5I1vmZHSGB34csTwad5W26BVrnrF7bbJHfp/PjwzPUcyTZaQ4Usgg==
X-Received: by 2002:a05:6602:5c8:: with SMTP id w8mr1324037iox.64.1592523243259;
        Thu, 18 Jun 2020 16:34:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c80c:: with SMTP id p12ls948192jao.7.gmail; Thu, 18 Jun
 2020 16:34:03 -0700 (PDT)
X-Received: by 2002:a05:6638:12c7:: with SMTP id v7mr1131502jas.56.1592523242972;
        Thu, 18 Jun 2020 16:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592523242; cv=none;
        d=google.com; s=arc-20160816;
        b=DOCe6wagn9G96fxl2dChEdRdHi0WK8AMnrRROH8r3os/tHkWeLStyRfmlSQDBxx+3J
         2Zcos1w2MNNVVHmu8pe0ZQyA0eNjrEGPv4lzDucfFXt6SKq0H/GmMfCQxsYxnc+RrsCp
         A/A1PGTPirP/GDjttkGmA1C3wWUHHqcm/0YCHl2rWxfL9czoGJ+gyB+hDpeIyDdsL8P4
         0YqhSJhbhL9Mr+CICMEbo6faNOdpBe3T/QpyNGaXujuk7DC8+PcJz5uxdluCTXWpqSkW
         olo0UkpzCLaNMRb5On9KFJ5/UjjGHy35Q8cj/+NGLOUKTTrYbaTVnSdApSEZTlXjk7lP
         AuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vzMoTDgws5PlJ9TvYEmWHyaZ7Qpk9jmHSWqWqw0ANTA=;
        b=fiGutRSVnMFvplkdVzdypMxdx8kjWewNty5pfXenwMFojojscWg9HcUadYcwWO2Suj
         BMW/e5ZJSeIF2XtmTS5fVoBGn7g/ynkd1pjLoXaBbWZqaftJoU3ZrdrAPul1rRhGEuCh
         1htgkRQXIY+Dwmhi3V/AbV4oWok2pyePICSdBzzZ0Sd25nwQhTa2zPraG29ct4DuG4jn
         Q0zhijZ9VFFzL7gjkZgtrlJEju3AQyFffBOoyGCcF40kosRJ+tPVv9OJ4q57nS5j5PKH
         DqQMyJ2SJNC9v9MKxEdwQXkSWdEixcq1IdsjuP/aAIW1dMFMBF3glfRlrVNF60IEd2Ld
         sqMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ewi80sWV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id g12si158855iow.3.2020.06.18.16.34.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 16:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id q22so808696pgk.2
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jun 2020 16:34:02 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr772906pgf.10.1592523242019;
 Thu, 18 Jun 2020 16:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86> <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
 <20200616181630.GA3403678@ubuntu-n2-xlarge-x86> <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
 <87bllidmk4.fsf@mpe.ellerman.id.au> <878sgmdmcv.fsf@mpe.ellerman.id.au>
 <CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA@mail.gmail.com>
 <87tuz9ci7e.fsf@mpe.ellerman.id.au> <20200618031622.GA195@Ryzen-9-3900X.localdomain>
In-Reply-To: <20200618031622.GA195@Ryzen-9-3900X.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jun 2020 16:33:50 -0700
Message-ID: <CAKwvOdnGPFndupGj0dZq8xfepYahVvsASGGbS10Ki19YmbqZHQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <michal.simek@xilinx.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Arnd Bergmann <arnd@arndb.de>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Greg Thelen <gthelen@google.com>, 
	Robert Lippert <rlippert@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ewi80sWV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Jun 17, 2020 at 8:16 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Admittedly, we really do not have many PowerPC experts in our
> organization

Not with that attitude. :P /s
https://www.youtube.com/watch?v=Kck_upSlx60

> so we are supporting it on a "best effort" basis, which
> often involves using whatever knowledge is floating around or can be
> gained from interactions such as this :) so thank you for that!

That said, Google does have a significant amount of POWER machines in
the fleet used by our "prodkernel" teams.  Anecdotally, I've been
getting cc'ed on more and more internal bugs regarding ppc+clang+linux
kernels.  "prodkernel" is still in the process of moving a massive
fleet over to clang built kernels, but ppc is very important to
Google.  ppc32...I'm not so sure...let me ask some of our ppc folks
more about which uarch's and word sizes they really care about...

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnGPFndupGj0dZq8xfepYahVvsASGGbS10Ki19YmbqZHQ%40mail.gmail.com.
