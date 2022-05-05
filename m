Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBHFMZ6JQMGQE5LP5HQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB2751C14C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 15:50:22 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id l3-20020a05660227c300b0065a8c141580sf2909616ios.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 06:50:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651758621; cv=pass;
        d=google.com; s=arc-20160816;
        b=irnjnWvkrPx1pGunwRkk74ibLyKydtkO3ykm4F+MRWQEzdUzWHhItlh0OoKUAsu/oK
         IVwnSSwzO/phlu9uwjoukDXh4tsJfw7vhSag7wt5hCDxWZ34Yi3eZxw0dDTNDIYeoide
         qvjUnx/hD1coeIuiLBmeHeiE9LnSFiah7qRcXzgCRRKSNcyGq0SkP6qNjzjkDIIg0dAG
         f2uv4DOy0jVG5DFiBZTPHtqHjVsK9hYtmOnTzILJftg/X4H6cuMU0asWpNy3ffiBOFWF
         xg7euuY5iCaHDmwn63A8k28eK3EW7PsREKf0eT0CJfb2nKzPggy7UnwnCYqIAcAG3Rh/
         h/dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=XvHwmYPUd5VdYtI4UaKbu7S9SM5QPTfitijDClA6Ngo=;
        b=HNGnOSpmQlxuRDyenXY2sLjN67VyG7eImsWG5n5fQ0rRSHqU2i2GrW2E//+SxKyGhr
         yaAX2ZjyquUuu2B8JERy3zCmpd0oRA0venz1FGqnOhljNq5YscHuqwi67q3iMPFxj3ok
         EcAFrdP4R6uU/va4EwG75qTCFI8R5KypbMGwY2kjbBQT6hksg6OJHzEvpbslel75EDXg
         Nc5TK5DhhwiA4uIZF2PZN867ZDKalsYcipsvYhMuGv4L5VpF4bWJbtrX/K4tZVnETyCS
         sYlktkDoa6l1qv69PsSguPT+wfvsTQBV4VFVmbkc1gQEtUio9lek+J+IQ6HZQ2ZQ3JIb
         QbJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WCAi+X3i;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XvHwmYPUd5VdYtI4UaKbu7S9SM5QPTfitijDClA6Ngo=;
        b=p6zFD2UHImD+V/dE9m3CdddRs63mY1GzVcqGD1zAmL8I9an+Lj0U1YKDkZPGqOVBqQ
         rKe7YvkHb+8jwd6RjYB3dq4jJEPhLPClYA4pMPnBCM2SrlTGxDFTo4DSd30rxzsnKN+Z
         2XB2tgt0wyxSq7dbaj3kUrZkCTK8jjlAPiMHjgd+Z9tfNnoC85j61vm3+sE0kMvaS6GI
         n3pRopOFxiCGsGwLgYbIfeK3MP6xgHSP+DCHkhnGMh3M2wbMvTweqSM4r3m+T1WWDanf
         24ARztWCyN3PwDNK8PujbPOuSFSfmStMEkUuwHKNKHDHJhjdxbw/n/kTAfiDHBe4+sXp
         tjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XvHwmYPUd5VdYtI4UaKbu7S9SM5QPTfitijDClA6Ngo=;
        b=O2jMtGOXQ5sWg7GR6WEJEXWUnCkqtUXXGhkdwXY09RRTz/Sbf6hohpfUkLS/I4VJVu
         Z5eDVbphfajW+PWVVpamDTPkg19qqViBiz9Atj7nmSK0tQ1DJbVjBenBTOacTbSc0vsR
         acVSuBVJfmbUwm10jizw/vBr1sgWgiJ1bGOb3svonMxQHjsblZUvUed/x0V6LIaLsZms
         T2l2vfzNiMVmQDxNR7Q12lmoW0trIXnmPQdeNJAWkeA55V4KnPRLf+izYsP2ZQ0lPbNa
         JFiw8S8LtE/xUapOSWOdiTArKT/YW3Yoo24+cMBkcCmeNrbed5qT/klcJ92hpgCC6slW
         v6YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530g93GfKIe4ReUS8TGvMAtwojpbJYe03MXG0hbbPaI0ydAdvROn
	qhGf6Ct8o2TNWfrGKXGml/M=
X-Google-Smtp-Source: ABdhPJxu011SQ4qw2GpILbli39ctXZ3P70U9xfKQD+YGLOKNp6qAV2gMtRrc8Y+Zko86FJZvHhoSzw==
X-Received: by 2002:a92:cac3:0:b0:2c9:a265:4cab with SMTP id m3-20020a92cac3000000b002c9a2654cabmr11021293ilq.241.1651758620780;
        Thu, 05 May 2022 06:50:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:14c3:b0:654:9c82:d7dc with SMTP id
 b3-20020a05660214c300b006549c82d7dcls504925iow.1.gmail; Thu, 05 May 2022
 06:50:20 -0700 (PDT)
X-Received: by 2002:a05:6602:2ccd:b0:65a:a371:7ce5 with SMTP id j13-20020a0566022ccd00b0065aa3717ce5mr3320928iow.152.1651758620360;
        Thu, 05 May 2022 06:50:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651758620; cv=none;
        d=google.com; s=arc-20160816;
        b=mgiKOivMulPqTLvosXLlM5G9l85/p6v3iZBuTSfvjI4n9Bod/dcL6UxhWTLssDZZx8
         oE3p6qQhSUeEsAmGSxAG76CIEgLhC+Tkg0bCoTVehMoC7hjrGUV+wxmKPBWLJcVTaniP
         4yOyJ2gWHwRd7siLy5Loz7usPmr3vAkrXIm8pST9yAJKcHF+obzYGDrVS1uzdVQixbjE
         m1hGymRCIpTKk9FT6Cb9jZktnUDxP5ybnT8hh0RmRGHnnnSN+cOy9Y9uRSBVTFUDSMMj
         0iWvX/eafOR+sLNZkO1g0FO3HQtaPHHJnGBBuGUmTPjG76rWBXrFvPKpgSqAwqMinm6y
         2yiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=9oRpkNgyXXtV+zgGcTivzSiWJg6PL7lzsKUtb+il+xA=;
        b=aYtDu5w5K1bBKuAagOLcCMLLpQ8DC1seNhKENMLB2vXgmslxggKvrieTV9pC7fG4DY
         TWedOG3XN8z6fSMBhdsilk3Blo5GBzzZwQyYzCRha9mCA2D1rkTiOrso+8j7eQ3kj1xj
         nMGtIt6XI7Ee0W/bMDHnpabRTTLxLFeyhcDnOxtEc9ae9szC48HICv0AQmnXGbEieVpa
         zcd7GRKYwITIXZ/KXypHL+BBwd8N+paxSelBWt+JLMYw319KfoSIbjZ/ipkbK53YamaA
         w/WHD4O8+qdwv6uZZ/cyx5QDCrvDxB8dlYDxY7jfSb7jf9wS6ZqL6oWd7GJCZDODuK30
         /+Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WCAi+X3i;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id w17-20020a056638139100b0032b22cd5f74si195368jad.0.2022.05.05.06.50.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 06:50:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 245Do2TL018791
	for <clang-built-linux@googlegroups.com>; Thu, 5 May 2022 22:50:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 245Do2TL018791
X-Nifty-SrcIP: [209.85.214.174]
Received: by mail-pl1-f174.google.com with SMTP id k1so4450566pll.4
        for <clang-built-linux@googlegroups.com>; Thu, 05 May 2022 06:50:03 -0700 (PDT)
X-Received: by 2002:a17:90a:8405:b0:1bc:d521:b2c9 with SMTP id
 j5-20020a17090a840500b001bcd521b2c9mr6301241pjn.119.1651758602352; Thu, 05
 May 2022 06:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220505072244.1155033-1-masahiroy@kernel.org> <20220505072244.1155033-3-masahiroy@kernel.org>
In-Reply-To: <20220505072244.1155033-3-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 5 May 2022 22:48:55 +0900
X-Gmail-Original-Message-ID: <CAK7LNAREQt5rPGK8zsti_UA-dGFKfqHsVWbSgMLw-yLoeNkJeA@mail.gmail.com>
Message-ID: <CAK7LNAREQt5rPGK8zsti_UA-dGFKfqHsVWbSgMLw-yLoeNkJeA@mail.gmail.com>
Subject: Re: [PATCH v3 02/15] modpost: change the license of EXPORT_SYMBOL to
 bool type
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        linux-um@lists.infradead.org, linux-s390 <linux-s390@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=WCAi+X3i;       spf=softfail
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

On Thu, May 5, 2022 at 4:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Currently, enum export is tristate, but export_unknown does not make
> sense in any way.
>
> If the symbol name starts with "__ksymtab_", but the section name
> does not start with "___ksymtab+" or "___ksymtab_gpl+", it is not
> an exported symbol. The variable name just happens to start with
> "__ksymtab_". Do not call sym_add_exported() in this case.
>
> __ksymtab_* is internally by EXPORT_SYMBOL(_GPL) but somebody may

I mean
"... is internally used by ..."




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAREQt5rPGK8zsti_UA-dGFKfqHsVWbSgMLw-yLoeNkJeA%40mail.gmail.com.
