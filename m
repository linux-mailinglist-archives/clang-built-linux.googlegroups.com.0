Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBS4SS6EQMGQEASS2EFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id A08953F6E7E
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:38:36 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id n64-20020ab044c60000b02902ab5cf38d51sf6259485uan.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:38:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629866315; cv=pass;
        d=google.com; s=arc-20160816;
        b=kUmEsw7evP+JY5AzLm6VU7GdrmSuIMDqLYKX4be/Ky/yvV8eG8LWudkvdim8F6a9vY
         vb7gxQuanh2gvm6IBWAS1aj9D2N12EerxNKR8zmPV4OP9pTKqnC6uAC+xM8FPDjM6Y/O
         bFxZcBVKC97WwNPrGCYTgszb4887rbnnPXgnKpd2/CyaXGXQqjC33rWMLsSqraSQZ/yx
         x+Etu7ml+sji5As4DVY1S6OGdrhTYcTdVd4R1ZkXFQwIqIT76k6yAhEvj8a9PJ/UfMyu
         S59qJn2EeZIzSROrrtNpHbeqhspkVAl8+YUdwmCdrJ/Z9kbCRc080Vyk5Vlb6+cns+qr
         TQCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=/LvoRe3bVQ0jZhkI0KecbyQr+TsCSEak4eF9VMhIkP8=;
        b=jqV/eoauuOHckGev8RG5ttUJNH2Enq6kyNZLaHVPsoKWuBZizwMMAo/oc3LInqRm6K
         frCCiajCb16Kq14FyQZOXYclbr73B2kOhEv1PUHE7rMQ7/FD6babjUfcHEAqYPmHmK+A
         gClZPt7Aw3jaEPMTn/ZPY0BbicO2xkShm1xKB/NPYewqWDn+wnb6OyMXWmt9pxXwJfkP
         ilaMcaBDB12ipIPKGlTwJwZnqMyJJjGdEZYZqKhJH0OtKO41y5bfByq87zni9lNSEsCB
         OpZOcmYnGUHEmLwHJ/QvxIM+iSgsEjKBGNnJKkS+e18wzDS3zlkoUlHCKEFVZ1v/zZDM
         kHVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gBblxi6s;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/LvoRe3bVQ0jZhkI0KecbyQr+TsCSEak4eF9VMhIkP8=;
        b=PLIH1GCJZC06EECTspTGHc9/FPiAAF+fIQXV5g1yrGF4XoC8d0Xt0+zhNzqB7e2I16
         200y9zYLDt92q+ZrS3cM7+72MVL+k/IuF+ME3LKx+4vanjnr3WJLWXpFfc64B51KK2Mw
         ad1dL8hz1N5wWzKYKJYaaEvl3no5BzHSHX1ETsh4kQXfaI1GgRJisd5keRxwHJ+KMRxj
         Xhg1QdO0quY+ndpQ3CvUtjSumruD86KKOIMcTpiOSJJnQVarmVyUOOfaO6Y8KM2kmhOO
         KCboa16Hy3scOnjf8v++jRueKcU3/WOpdQgZ9CVY1Jd7UzqcbPS6qysuTN54ktdtplYn
         iA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/LvoRe3bVQ0jZhkI0KecbyQr+TsCSEak4eF9VMhIkP8=;
        b=H2lQz3Tk7kCXpmInGJRQba3jZQlrhqd1m7sXzRi32/Px06NiGs6OZXMY3y7PrNvbEo
         a00MMf70VXUmdC8wTj+0d8wRMF+fmSWd3w1QgVjPbOuvwLBJghvuwP8kddGvkQ81r1LL
         CiwSU9nX7VkuP+czITmz2pL+Ml6JFaiyjxuSho8EAaesT9706R+yXgFQNBozkYmf9FJk
         hMFmsGyRrT+09C04YA1CHPM21sPUQxyAHrnB7iJRHGoYvBBrV1UMIVCy4RllT6A/xx91
         YIFftUgLfo9V4+3Rottn88rkG8e+ZURI5XEw1L7sgrJvMEWqqQkJUe/2O8n3u4/pmRNk
         rUxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PPcEtI0Mx3ak6hRWnixVZa9YBQaTguqhRhvH3EhPW9CKZj043
	+LesN5xV5qns5CtSaIcC70Q=
X-Google-Smtp-Source: ABdhPJwzQph/axH0ubnTj7Gkjm/A1V6mi5TN5ppoAj0/KkbvgsW7zbNSwlKl6P3ot8eJpPZZ8pdYGA==
X-Received: by 2002:ab0:729a:: with SMTP id w26mr820920uao.118.1629866315666;
        Tue, 24 Aug 2021 21:38:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c89a:: with SMTP id v26ls169834vsk.0.gmail; Tue, 24 Aug
 2021 21:38:35 -0700 (PDT)
X-Received: by 2002:a67:de83:: with SMTP id r3mr9805184vsk.28.1629866315108;
        Tue, 24 Aug 2021 21:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629866315; cv=none;
        d=google.com; s=arc-20160816;
        b=twIoJhXZ/diSEDNJqwGSmDPnXDeIsweNH3sx4e0iU/cqjksKFNWhh2bpjBMyzXzWmk
         RYSiM34iggJoMauIN8HsMxEeKEkT/UAxZl7KUO6FWOmL9v5xzWwAskvH2hsns4Tk5emG
         XHEN+eymPHVVhXajjKA/XPJgLj9d87k/ZIVlbTuA4VoNJ83JyrhE5eyfWeOMywiy0DXf
         vYBWMJeCruMhtEyn9hm4goGJkdDuJETjuJsqxwfK9ZIgM6oiWiZC6DzqsgoU4Ndk6/v+
         ODFbHsjWl4KmQNUoiUdamUXlOCuDRA6/VHmlW2LXsdJD9Np5SqyPqSgMmfxCsqfb2wgd
         oD2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=185z9fBx84g4EeM7cWLgAxqs/o1lYgR8mgEZJhnnvEs=;
        b=RxoJzJj4o+2VvADw4r+EBB69eGLjrPVsAF2DpWPhyP7K6Qutq8Uuhr3SEHyVykPXPp
         CHdL4iMl0lcaKWLTYs10VVp6yEfkd3tkOhOpsBNw7BHfSdKfvmJxnbYmGMQFKykmK66V
         HHlSEcNej63gSbTAF5zarK5ynFQ+KhfodRW19vLCxjgloj8ibQEgTapq8N0PhiQzkBwL
         h4zy5DfY1Qy1qZ7Q3d3q22oLlIKw0CyO4mxgojRtcGU19Up7ptk/j4UUTJo1fVaokauA
         CnWbclOBe5LZYNCZ1bMy606fjfyOkhZPXgjk/fsHAqMVzHDlv1R+TURRWmv7+ZQaH5u0
         qMPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gBblxi6s;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id m15si44194uab.1.2021.08.24.21.38.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 21:38:35 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 17P4cBWU007080
	for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 13:38:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 17P4cBWU007080
X-Nifty-SrcIP: [209.85.210.176]
Received: by mail-pf1-f176.google.com with SMTP id t42so17636459pfg.12
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 21:38:12 -0700 (PDT)
X-Received: by 2002:aa7:98da:0:b029:3e0:8b98:df83 with SMTP id
 e26-20020aa798da0000b02903e08b98df83mr42751636pfm.63.1629866291328; Tue, 24
 Aug 2021 21:38:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-3-ndesaulniers@google.com> <YSPePKNwZ/znykqf@osiris>
In-Reply-To: <YSPePKNwZ/znykqf@osiris>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Aug 2021 13:37:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNASupkuA=vY3NOUWW_mX1Mnp+NFeGAUxuFC=k-ADMFd35Q@mail.gmail.com>
Message-ID: <CAK7LNASupkuA=vY3NOUWW_mX1Mnp+NFeGAUxuFC=k-ADMFd35Q@mail.gmail.com>
Subject: Re: [PATCH 2/7] s390: replace cc-option-yn uses with cc-option
To: Heiko Carstens <hca@linux.ibm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=gBblxi6s;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 24, 2021 at 2:43 AM Heiko Carstens <hca@linux.ibm.com> wrote:
>
> On Mon, Aug 16, 2021 at 05:21:04PM -0700, Nick Desaulniers wrote:
> > cc-option-yn can be replaced with cc-option. ie.
> > Checking for support:
> > ifeq ($(call cc-option-yn,$(FLAG)),y)
> > becomes:
> > ifneq ($(call cc-option,$(FLAG)),)
> >
> > Checking for lack of support:
> > ifeq ($(call cc-option-yn,$(FLAG)),n)
> > becomes:
> > ifeq ($(call cc-option,$(FLAG)),)
> >
> > This allows us to pursue removing cc-option-yn.
> >
> > Cc: Heiko Carstens <hca@linux.ibm.com>
> > Cc: Vasily Gorbik <gor@linux.ibm.com>
> > Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> > Cc: linux-s390@vger.kernel.org
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/s390/Makefile | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
>
> Acked-by: Heiko Carstens <hca@linux.ibm.com>

Applied to linux-kbuild.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASupkuA%3DvY3NOUWW_mX1Mnp%2BNFeGAUxuFC%3Dk-ADMFd35Q%40mail.gmail.com.
