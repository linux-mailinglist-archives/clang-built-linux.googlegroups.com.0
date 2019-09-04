Return-Path: <clang-built-linux+bncBDTI55WH24IRBXEJX7VQKGQEM3UBLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A39C9A850E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 16:06:21 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id h3sf13248096pgc.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 07:06:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567605980; cv=pass;
        d=google.com; s=arc-20160816;
        b=faQBQwVHm3C/6mkCYHoKN544lB9vVAuNZoD4nuqAjnTRKjfFBqDqvPTHCg9gnKJZJJ
         UCbOcGhAFwiVEhw/yyZIqjy1yJtg/uk2br2BPlkoOBAyCR899sCS46kWaXsV8s8+U0k/
         PipJ1bIOfca5vrwu99MEHszUU3aLXhdXSqxxwr1aEIFDp5aptx+/vPIN8ZwWa7PruLgq
         qtul32scjjqdKw7xwalbRnPgA7ZKv+Eorhlt2iRNHeC6TcCHkKEZJvOQdfOBip27N8yz
         cu8qbtf8act9NZ5sCLErqgnC+KMO75Ooez0pgF6P2WGw0TR7GA/bmLiD0NhdWsC/PI4P
         CXMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=uEiyRbJXkBc+v56Q0V/pkVD0SFq6/lM3GmMllkKqSJA=;
        b=w/HcoCnW81ad38eb+Wk0jn6T48Nl4T9e3hdJHMdZua0VSzaAagKS8tRY3cdKQT/RlG
         LiHY/UpGweCtqb/43rjwXBBZKfz1fbTmd0n5bXklNepumeTUfnxEY+sb8E+IAg9jmYfQ
         PO8/XH0gG+i3p0dyDWJWtaflJgsPwN6e4pMMKRf97Z3OiErNnxiPhn+cQKBVnbhBlKq1
         e1NB69BP08KDeIXpbhKETjo/3RY21yaPPlCfUdJdQ2vUF+OpeV5UiR1w6HbbyPaPBHLK
         /bnOqymZZuLr0a6zJtklLJJkVRoWse6i05drrSucS+2ejHoZbdr7Kg7Y8iZxvCN3xia2
         59fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Ctf67tOB;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uEiyRbJXkBc+v56Q0V/pkVD0SFq6/lM3GmMllkKqSJA=;
        b=G8SPXvvy6UjCpp7PC6IatwtZN35P//rQRibpGsfeLJqv0fa6Lt92GJLhINBUfkA9ED
         /LTAvWOK6zCHweyr+2XqofUeo7V/v7bvxKOO6Nf3wWwYoFlh1fA3rexYPl56ca48eP4L
         1cP1NZfSpHSzPT5SKN19RNHbxe5nsTOJcpAmnie6xYPXRkYXrOuAjB5kGtT29pRR+Wdw
         /smlcrhBeRphvO0Srtt3oVOUWdlZKvbYwVhHbSiLmC2C5VdVvaHkjMO6hA8Y3rpSNohp
         m3Z48bbne4O8JM1SZr6tEz3yv7ukNx1mpeHUxuIG85iA5Z7EsTj27VB2YCtRiDe+EK0a
         u0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uEiyRbJXkBc+v56Q0V/pkVD0SFq6/lM3GmMllkKqSJA=;
        b=OgFH9t4wLkUryhCLyAO2rT46Vk0HlVERao1vsVGlbcdnTv/ni/wb55mQKHmc9wHpBc
         Gi40tILLGOF0p2bLDGR8I4gWs3U4P7LMphKhSd0kPy3lt9SMYiRckmfEyxPnoINHAZvc
         eNeA7YmpFbOi4S1rh6yEjevsuDwGjUIVydrxL9fDuLj9/17GbK6srlhnVQWQ+5W15UGs
         IP9UIMieA8vFyTtBexKMIWyzHhJVIgzJL6MTI4jw+y5os6uCDCZ1a57FRdI+H+bXr+dg
         ioNtWNt0wSTCPFU4uXYvj0n6s1/lFi5unSezA1weT8UY1s+ULgkzs1Uvx1ge4HnELq+d
         9c9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbJwCBkNSd5iJm8RC/fm2yZwTTi06whL5Trq9xiqJdfj618Ph7
	sdaGG7w/pBemfder+zXp2Pw=
X-Google-Smtp-Source: APXvYqy4RU4fSZS7V5GEiKV3uUv+n/Yub4031BqPscoG++qF0DwRcm6JfUKXhpagCJkUYlsPR+zpIA==
X-Received: by 2002:a17:902:8d8c:: with SMTP id v12mr41464451plo.198.1567605980375;
        Wed, 04 Sep 2019 07:06:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:45cd:: with SMTP id m13ls4778590pgr.3.gmail; Wed, 04 Sep
 2019 07:06:20 -0700 (PDT)
X-Received: by 2002:a63:6244:: with SMTP id w65mr21313475pgb.410.1567605979955;
        Wed, 04 Sep 2019 07:06:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567605979; cv=none;
        d=google.com; s=arc-20160816;
        b=kxGTVbnE6S/1wBLmfTnzkYykjYR6GRaBLSa+s9lg3fvB8vl35LPmQHXusZZT4xBj3j
         ATgb5DQ/dcDktkDtK0z1wtojmBzh6gmjmc6DVjtMqgRg4jjjPxjZd8wQGnRdHke+p94R
         gdjCHMMia6KfwVGTK1hgu2b2JCVn6zyuwdVGlTbw+IoFb2Mk70yxqfyib7Pn0D+UKwuQ
         SJR7m+Qtkgv1BAFB6czRhke20zsFTySMOKRHE265Y6ibQB0ZXXCIwS+MChZ/kiVF6SfV
         s7POD563e+UdRyoOuoUIAhkiPzyHv9jd0NMjnx8XjiNJLO5KPpRJlE/iGY76LibB18U4
         Yj3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=EIcW7nuR2BwIgm+8fvmv+3/OtKATqWDtbykL5X1yVEI=;
        b=n8owKtHpSehq6Ks8YAsrI4hIBlgiplQ5QEtSXHole5YG2cBXBW1N82WujtDIfUqOmW
         9iyTtJPZAX2V9cj4eMOS5/qbkOzGOL9MBDmLZbOGMYszt4H35uPjam1KojYtB5bRF5tC
         DcJkAsWPBop5g9Xoyt9Ntqd7sVmBnz0+I4ETchJ+GA6GHnb2BfMCj/Kcs6B/JpMTHSBS
         ozzXK3qqCHH1/WxOQt9l06lYHRf5ucSE5NkshvkFDlYwNmJf8jrmWCrfnKtT8vEQnA8y
         FzokXdHYOkAne/8SMExfm7wD04KAiGewgoYMGbD6KXBLXnSOVUuRSsUWMKHB5ip9zalT
         iT0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Ctf67tOB;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id c6si694916pls.5.2019.09.04.07.06.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 07:06:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id x84E6542010083
	for <clang-built-linux@googlegroups.com>; Wed, 4 Sep 2019 23:06:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x84E6542010083
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id f25so4161099uap.1
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 07:06:06 -0700 (PDT)
X-Received: by 2002:ab0:32d8:: with SMTP id f24mr19579922uao.121.1567605964838;
 Wed, 04 Sep 2019 07:06:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
 <20190831162555.31887-2-yamada.masahiro@socionext.com> <CAKwvOdm0zcyaBLdSVc7PmjUa-wyVuCaN=6qZoPLvnoJC1ammog@mail.gmail.com>
 <CA+icZUWzSsFXLmrO2G7ochE62e=kByEV6UKregcJqZrJN1WJxQ@mail.gmail.com>
 <CA+icZUXboR-0TzpSHf7a8MSjxPWxdC13Oudu8D+b+umtvWCCkg@mail.gmail.com> <CA+icZUVN1zRi5P8PPWMjXoXwtSCkbzTFNreYXi+0HtTjPnfkTQ@mail.gmail.com>
In-Reply-To: <CA+icZUVN1zRi5P8PPWMjXoXwtSCkbzTFNreYXi+0HtTjPnfkTQ@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 4 Sep 2019 23:05:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ28VedOdiHX-tKatT1ebzDNXM8b5CxcxKek3b271PgzA@mail.gmail.com>
Message-ID: <CAK7LNAQ28VedOdiHX-tKatT1ebzDNXM8b5CxcxKek3b271PgzA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] kbuild: rename KBUILD_ENABLE_EXTRA_GCC_CHECKS to KBUILD_EXTRA_WARN
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Ctf67tOB;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Sep 4, 2019 at 6:58 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Sep 4, 2019 at 10:07 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Sep 4, 2019 at 8:58 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Tue, Sep 3, 2019 at 11:50 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Sat, Aug 31, 2019 at 9:26 AM Masahiro Yamada
> > > > <yamada.masahiro@socionext.com> wrote:
> > > > >
> > > > > KBUILD_ENABLE_EXTRA_GCC_CHECKS started as a switch to add extra warning
> > > > > options for GCC, but now it is a historical misnomer since we use it
> > > > > also for Clang, DTC, and even kernel-doc.
> > > >
> > > > Thanks for the patch!
> > > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > > >
> > >
> > > Thanks for the patch.
> > > I like the backward compatibility and am OK with pointing to 'make
> > > --help' for the documentation part (KISS - Keep It Simple and
> > > Short/Stupid).
> > >
> > > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> >
> > If you will do a next version...
> >
> > - @echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
> > + @echo  '  make W=n   [targets] Enable extra checks, n=1,2,3 where'
> >
> > ...clarify on extra checks for compiler...
> >
> > + @echo  '  make W=n   [targets] Enable extra *compiler* checks, n=1,2,3 where'
> >
>
> +KBUILD_EXTRA_WARN
> +-----------------
> +Specify the extra build checks. The same value can be assigned by passing
> +W=... from the command line.
>
> For consistency reasons might be better:
>
> - @echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
> + @echo  '  make W=n   [targets] Enable extra build checks, n=1,2,3 where'
>

OK, I will squash this. Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ28VedOdiHX-tKatT1ebzDNXM8b5CxcxKek3b271PgzA%40mail.gmail.com.
