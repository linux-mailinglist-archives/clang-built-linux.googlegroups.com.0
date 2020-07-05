Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBDHEQ74AKGQEZA5A54A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id E4133214DA8
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Jul 2020 17:30:21 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id z26sf7883948qto.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Jul 2020 08:30:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593963020; cv=pass;
        d=google.com; s=arc-20160816;
        b=y/b3bFMwewKRxwjmDC63zZmch/e/40Y5SlvMs8cK8MOOEFoDXi6Co0aa9K1Gin8QTf
         /jM/pTx18XG1S5c3+aqHOr4o2m4+9uJdVUQ5+BLDBZrs5riXXn86uX6VJ0neJ3mP3j5r
         duv+005T9RgTieqC9pxh7nt6XBPoGpHxVM9yVMLl6xy/rnHZsShIOujS/BwqrZcqqIVP
         1wTUlLlk6cAbzUtBSn50fEaT7gPVVJ85cjEBxqgfTez+n3u55K2sT5gXTmpzGA+LR7jG
         EF3TTU5DQJHyNAfQskpNO1p3xApf9Y+4io1M7xeSypq/2R74/s9AAh4P6r/eqDLleG42
         Rysg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=IxMHxTuw57ngpV77wFbx8WtK+kI/at2AB1Jj6L20nIE=;
        b=qUrXSiYEGpcWSzbFQ69dL2AocGOmtV3jA+C6p4d/yLjOmp7RHFhswZJRtmLIhuUS+p
         aYr4EVvcdCG2QjWYOcEPxEuHM62HQL8wZ9nkGvIBpk/IfoqESaHqvyVHt+NRXh3X/q6I
         A4jdvjDhwmqVEXxq7tuW55rJQqNiWqLkukHiItXpFYbqd+X4wXprH+TPJwAqhFQzcR2x
         m4NYsol9LmJlHa6HlP4xXfsyRFUmKl0NkmH0w8eAX/W2cmLcgn8q+/VMr+5yKW3rpfKS
         J6sWelXzEL2WS6LBdL1B0sAKpeHUzen/12d2LhO3sgMuj5K2uVgwjkpb0kKSTrLlShLr
         vg1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="T/EFA6EN";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IxMHxTuw57ngpV77wFbx8WtK+kI/at2AB1Jj6L20nIE=;
        b=a7Gk4T42jJ9o1T7UkQ/BWKBbTI+BXobTVYrqbzVi8cyE888/+Ol3Q9ynAm9hObk+sR
         vx0NZyis0BBhg4nQ8lXMv+deBKST7luBRfwuCSUvlZudc6CuGh/JC5m9QUC7gUrlFTyN
         DAOWI6YkeV3PYFj+EK1KZ18yuOOtE6pfODNjfwbZmY5koi1MUitX29y/rteGEFJPPjFs
         Hn47ePQ67dfIG8/4MmInh6rcZKR36Okcxw9NYbp/YuoC4nr5YFGxme9wFpVwywOKIGtb
         q8jgKU+lZuZH5NAJHdCf2I4MqZGRHLoTjz8JCE6n+itiqCbeM+fKtVM+mSPh3Q9+YfVy
         BbEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IxMHxTuw57ngpV77wFbx8WtK+kI/at2AB1Jj6L20nIE=;
        b=KLpniqdZEA52CmsP01YknaZQbSG1pNhFzPxn/H5z8+0fF/PBnqXNjNvD9WX9PmRyh7
         9wNmj3ncDrPrKt1QoSuxEifytd7FO0UoXoaIgDuPTylSacI/U7sf6ePi9EkuKu7PbKXn
         dLI5GFVdhYuALBb+HtEuJSC2XixNCxnfcAWLXBOqN8Homxr0I+hO0RaP43AdRdtIDbHC
         AzbP0Rmh6L+NLu23PobYIHgqogmtMpRbCIvRXTrQwxNpUWoKVJv18gw1K7I5R+V/K4UM
         SLaLL2/fsEI4r7nF1yR9EMF/XnciTplXKXIfwzOyXoJG5nPA1IPwKzBR0EY2qkFYgyQh
         ewpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L1OTwU0AL2h/B3Vd/owwERrWXL6jgeB7JsvCp0fkd7e6koUCA
	E3M0yFLVBCINEiOCt8Numi4=
X-Google-Smtp-Source: ABdhPJzsZjtVIR5MfS9+9CwT+4ywaMArce32lu6EGJMDjwlCxSNaJdu9/JeBHjWaU6q2SHWqLXMRMg==
X-Received: by 2002:a05:620a:250:: with SMTP id q16mr44548671qkn.371.1593963020546;
        Sun, 05 Jul 2020 08:30:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b5ee:: with SMTP id o46ls3370651qvf.8.gmail; Sun, 05 Jul
 2020 08:30:20 -0700 (PDT)
X-Received: by 2002:a0c:e048:: with SMTP id y8mr43731554qvk.11.1593963020199;
        Sun, 05 Jul 2020 08:30:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593963020; cv=none;
        d=google.com; s=arc-20160816;
        b=YIuddF56f+QGb+nB9UudPFmqUJ4CeQYlwpdZMIEkKyxqbq6IYLjAT/4JHCWHfFonme
         YBZPzWQfgBHEdG8u/xt1f9zc4DvTHHrlWR9KL++bwOlXUR/2MqncEMys9u4FjWIVcJ4s
         owbEs/pmD5UedVwy6A3+n4O8GCSpMQwyiaoFsvYEHvC6cxg9Bsz0/eiYp2TAk9zn8ubA
         vndmxT6yZUr0b1oeLCHPYCvWBO0xyd1IF0EZF9+DWKlceVRwIjL87js3UWU+10gW4VIv
         S1KHK4j/F64M4A28y0ix/cd+nfTp4YLA15fXEaxRoQeQpv5wJy5uwQWnyT13w+wrVn8W
         sNvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=bXQYGMwFGx1Mq9judW5YHmqoj9lB8SkXZtg1zFbHUec=;
        b=iKX+nHUY1YWCcaRGo2mie3gN6mdsmUqDIInKeLSI16/gb/Tgp+waIywHopeHpZaGcB
         +bMBf/etritgktJUghXJpH/MPWqc7mV8wIVdEFIkmCMcSE4F7tk6B2/zyXewYdVuA7O5
         6CgD91YSnjQ9mIPgaUNlJEpTCAdyUF/tKDQ3AZM4jcDRATFCLiZqQlWWJeYmc5Ek3szm
         GZbv6X6EKB+bCJeMqgBQBlfEL9ooWDySQHsNsuMInfxC/LEGhEjF7znW+xRFhOqAlpFX
         Csip2lT1ktdLmBusAITWjv4jAe3yqiT0+dYjD2FnDo/1w3wMzz9EkzuROKAFa2Ls4+7K
         X3Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="T/EFA6EN";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id m1si645501qke.4.2020.07.05.08.30.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Jul 2020 08:30:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 065FTsrm010101
	for <clang-built-linux@googlegroups.com>; Mon, 6 Jul 2020 00:29:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 065FTsrm010101
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id h18so5353450uao.6
        for <clang-built-linux@googlegroups.com>; Sun, 05 Jul 2020 08:29:54 -0700 (PDT)
X-Received: by 2002:ab0:21c6:: with SMTP id u6mr15213472uan.109.1593962993363;
 Sun, 05 Jul 2020 08:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200629085911.1676554-1-masahiroy@kernel.org>
 <CAKwvOd=qe5KE1vdUYQmpsW2zmDbk5i-MgRujs9B7wqnAj+af0w@mail.gmail.com>
 <CAK7LNAR49jFZkEmBqpACE0V_-VyCXfFRcKe1Zq+cqO65QX1ozg@mail.gmail.com> <CANiq72nE+1F3yM+e9XzfphzOe3mb9DUcRCAtPuLMyFE4Rh38pg@mail.gmail.com>
In-Reply-To: <CANiq72nE+1F3yM+e9XzfphzOe3mb9DUcRCAtPuLMyFE4Rh38pg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 6 Jul 2020 00:29:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNATRAuEXp+Wz7f_VUTSFS4jqmdTE4Xugi1MZozimsj6zuA@mail.gmail.com>
Message-ID: <CAK7LNATRAuEXp+Wz7f_VUTSFS4jqmdTE4Xugi1MZozimsj6zuA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: make Clang build userprogs for target architecture
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Sam Ravnborg <sam@ravnborg.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="T/EFA6EN";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Jul 1, 2020 at 4:13 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Tue, Jun 30, 2020 at 6:26 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > I can reproduce this in the following
> > simple test code:
> >
> >
> > ----------------->8----------------
> > #include <stdio.h>
> >
> > int main(void)
> > {
> >         ssize_t x = 1;
> >
> >         printf("%zd", x);
> >
> >         return 0;
> > }
> > --------------->8-------------------
>
> That is the old implicit int rule. Try including sys/types.h or
> compiling with a standard like -std=c99 for instance.
>
> Cheers,
> Miguel

Hmm, adding '#include <sys/types.h>' did not make any difference.




If I add -std=c99, I get a different error.


$ clang -std=c99 --target=aarch64-linux-gnu test.c
test.c:5:10: error: unknown type name 'ssize_t'; did you mean 'size_t'?
         ssize_t x = 1;
         ^~~~~~~
         size_t
/home/masahiro/tools/clang-latest/lib/clang/11.0.0/include/stddef.h:46:23:
note: 'size_t' declared here
typedef __SIZE_TYPE__ size_t;
                      ^
1 error generated.





In contrast, 'size_t' has no problem.


----------------->8----------------
#include <stdio.h>

int main(void)
{
         size_t x = 1;

         printf("%zu", x);

         return 0;
}
--------------->8-------------------

$ clang  --target=aarch64-linux-gnu test.c
[ No warning ]




--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATRAuEXp%2BWz7f_VUTSFS4jqmdTE4Xugi1MZozimsj6zuA%40mail.gmail.com.
