Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJGFV2BAMGQEZLTS6OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B236339490
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 18:19:33 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id u9sf12445066oon.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 09:19:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615569572; cv=pass;
        d=google.com; s=arc-20160816;
        b=cA+Q37PhJ0uc84X1at2AkI7QdQLk0aCEG/e5X4Cl6BNtXjbOulCnzI/RsWSfuO9BD8
         T4X5wF7KY3sPStWvq1qGJpwk4a1VbEEBN1xIFYP6IiJF2fQDu3U8lce2AVYm6bywSmrd
         ERrz1KjmjkbGN4j71vdHWUWXoHSwR1K/NyqacbyCtxi1LL9svSUvvWGFLdZ03WkAonin
         NMgbZHqaECtOCaITogIHVuit3LyoLrKERPz7MlvTSixyJ9FPQQsNWm7uuUH3Icvawont
         vosVWhezwKN5JTO5VpHfBoDi71ICDq8ORFtXUjXYwRjBSO2GXb0JS6SsiXroenRa3uuR
         R/AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=kmtACuqDVM3sq/kbCtp3vZXHWGYvC/XmG5R4/U562Ik=;
        b=gozEzueSFbtbhe1q4Al1Jr2W++w02u5c+EPDppYWVY9AxFSECuv01SmXicADkOGvGE
         1TuIvbd66RHafetYdPf7iAI//J3BV+8S0oBVMkKEX39DgareWBrgNVRSDUe/mQsaWenC
         5dgOc2JPkpHbn94d0RAHs3h+G1EbGrEDTqbnaSKVtdDPnwUOsoiAblWrf+TxX5/oi5dh
         n3Usrzqt7s4BARWklQO+LrPN7GZDWailQ1Zhc9diZJoSFSaLPc95FYdzpdvAiXW61WGw
         ZN96KQZo5R+9Y3rQz2YRV6xVJ+iSDKB7BX8fYbR0AQhTrbUcAiYOl6kDk5udQyELl3z1
         jSQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="ckIYs/z2";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kmtACuqDVM3sq/kbCtp3vZXHWGYvC/XmG5R4/U562Ik=;
        b=Mn1R1wlVo2QdfcavQ8ZgZ7iEqQYY2HYLTkrpcfTZV3zw0IkWauxflP2n1IDTVXTZKi
         RmEgle56jisuQGid+XMzLef/skcKrDhQ/oX2VNvcwCjtH/+9Q1TAVWkfexxKm32AJnMQ
         PbxuW1LneniRvLJ7lBbwc78vw9Ld4Y34B0IDr1hHIPU6xiZdDwx4R9lJSe2n5uhnhXgb
         2iFVq7wZ+PY02rOt6uUj6Y4HdW9VbWcKTDv5PUK5/zhHJUoWqLm5gtT/MKzhCHUxVJCX
         Xi+beewaQ91mrBlOMqey0emMMRsmkiR7PUuVwLgP0f1aXiOQuW8qudL/BbZr3p080O2D
         lFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kmtACuqDVM3sq/kbCtp3vZXHWGYvC/XmG5R4/U562Ik=;
        b=rx4VXxyv8R8jn1xK0ZoMqXQFnK/JHyYyjrJTdpaLBrrOs2ELYgG15S3R/PvBeJIogC
         4yZNvTA8DK9BHv2KLKAvyNjsnvgOJXoPn3HrDuKWx/rTzJP8kngvSb1ZM1+/OhIdpe+t
         PCoC45Ot7mLTyZEIC1AfAhPBw0fgtgPWNlW/XNfnlVcWnwgT0k0urkOiKNHasbfJ3t38
         Wi8qk22/llA6YVXIXn6evY6Df9wiTFzWARyu8AC299E5UqAzriSo40y9KEs7FRpRXRfc
         CJ3UzgJ+zPMaMkWw1TawAUXywwLHjPM8JqttFrdkoj5Hm/CjJPkC6FczodVCb4eWcgVg
         mvIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eV2qnIAOGxoNqBb0vwyUMCSICK1ofQiRf7uG+aobQbsKU6Ivn
	1zdBsCCqEU2QjX/HaSeglBw=
X-Google-Smtp-Source: ABdhPJzuYX6J8+acbyFMBZ0yY0Jy5kQ6gkWYdCd1K1GGi4GVy5Kr+jOhlwVJzWphLmtSuabaoDbE3Q==
X-Received: by 2002:aca:4d55:: with SMTP id a82mr10558915oib.23.1615569572346;
        Fri, 12 Mar 2021 09:19:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4390:: with SMTP id u16ls2334485oiv.9.gmail; Fri, 12 Mar
 2021 09:19:32 -0800 (PST)
X-Received: by 2002:a05:6808:341:: with SMTP id j1mr10687874oie.173.1615569572018;
        Fri, 12 Mar 2021 09:19:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615569572; cv=none;
        d=google.com; s=arc-20160816;
        b=V39JAKGmCK4M9mqPcoKxKFVjGZ71/tR+jqoqeg9ZHAqYtNHj9fYAIx2qPRDTIbU0Kk
         D53tBegxZH4N3xNjlaqF2iRofoS9ybl/xaWzztdNTeCE8fgViz/iVcut6z696msef2jN
         iVaXVPMBLTyC2RUeyvCAUjPfIkn4Qo56sbde+VUC26YXcyDGC8fu1f8pwvCBroG2V9CW
         7cmwAU8xWXLJe45pcNDnRLM1aj1vjaWw54KhFJh9s1WIO15cx+aafN72X6vQBMzrQMp6
         fC6w9VngOrexYYgk8BSKqTzmV1c0xSZhh+tb+5WQgU8LFQoq5kVF98mE9iypkKsaYtx8
         wBdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=GozglGRmJ4MmfZBSlP11BHzsPKe31X7+unemMC3S8jQ=;
        b=YNJfAQhSSraUoSVu86at3AZ2pD7dvb+UuFg/CcsnMsAy4Qkt47igR4KHGtQ6lnvmdb
         bVXjb+kyFx6a6uuRY9tC/qoB3UKIeGti5yMl2iwAY75x6ZorZgK6/1nBP4F0OOt6ZHE4
         ruNT4lfPrguke10oFjlMILWC5IIwEC5WYCkhz5Ug+SoZAuPe1DC0nT9PT6tQnORF3+Dt
         SyYk8IiLs2xZUa0tUFg35zJgfwgnxn26EQCadDUWtIdfqeDHdca45j95mmCuTpVeljcU
         2IqLPhA2NkT6sf04cYNHB5hWbfUIshy5lA+F28kH4NEINa4Fho7LNdk8KkKjlQHuGo4K
         PZRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="ckIYs/z2";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id c10si381871oiw.3.2021.03.12.09.19.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 09:19:32 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 12CHJ0aH003424
	for <clang-built-linux@googlegroups.com>; Sat, 13 Mar 2021 02:19:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 12CHJ0aH003424
X-Nifty-SrcIP: [209.85.214.169]
Received: by mail-pl1-f169.google.com with SMTP id a8so5709984plp.13
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 09:19:01 -0800 (PST)
X-Received: by 2002:a17:90a:fb54:: with SMTP id iq20mr10676742pjb.153.1615569540243;
 Fri, 12 Mar 2021 09:19:00 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-4-masahiroy@kernel.org>
 <CAKwvOdmNKKpZY38=ayM3NfU5K_27P_CqkKtLx7CbRw6_mFuxPA@mail.gmail.com>
In-Reply-To: <CAKwvOdmNKKpZY38=ayM3NfU5K_27P_CqkKtLx7CbRw6_mFuxPA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 13 Mar 2021 02:18:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNASBQ-WOWLgLCWa1Qb74PU_HrU1jk=SeRwH+XoT_NF93AA@mail.gmail.com>
Message-ID: <CAK7LNASBQ-WOWLgLCWa1Qb74PU_HrU1jk=SeRwH+XoT_NF93AA@mail.gmail.com>
Subject: Re: [PATCH 4/4] kbuild: dwarf: use AS_VERSION instead of test_dwarf5_support.sh
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <nathan@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="ckIYs/z2";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Mar 4, 2021 at 5:44 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > The test code in scripts/test_dwarf5_support.sh is somewhat difficult
> > to understand, but after all, we want to check binutils >= 2.35.2
> >
> > From the former discussion, the requrement for generating DRAWF v5 from
>
> ^typos: s/requrement/requirement, s/DRAWF/DWARF
>
> (in vim you can `:set spell` (`:set nospell` to disable), there's
> probably a nice way to auto set this on buffer entry for a commit
> message)


I cannot be accustomed to vim.

I use emacs for coding, and nano editor
for editing simple text files, and input commit log.

I invoke aspell from nano (Ctrl-t, Ctrl-s), but
I sometimes forget to do spell checking.



> >
> >  config DEBUG_INFO_DWARF5
> >         bool "Generate DWARF Version 5 debuginfo"
> > -       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> > -       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> > +       depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && AS_IS_GNU && AS_VERSION >= 23502) || (CC_IS_CLANG && AS_IS_LLVM)
>
> Would this be more concise as:
> +       depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && (AS_IS_LLVM
> || (AS_IS_GNU && AS_VERSION >= 23502))
>

Yes, this is simpler.
I will do it in v2.

Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASBQ-WOWLgLCWa1Qb74PU_HrU1jk%3DSeRwH%2BXoT_NF93AA%40mail.gmail.com.
