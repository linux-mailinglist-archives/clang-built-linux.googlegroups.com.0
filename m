Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6UL7KAAMGQEWIGYPFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31481311D03
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 13:05:15 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id p16sf8557403ilj.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 04:05:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612613114; cv=pass;
        d=google.com; s=arc-20160816;
        b=SRZVa7Y4ItwG6EaAOAwTMjEt0zgqYaGbMBcNvdGGrxVVGFiPL3il6HQpwPoZTEnzsG
         KU4qATw/T1iBE8obldmc+K/b37Y1qMRl/yZLwvpx+MgZqoGl6MSYPkwroXAYQN7mf0DC
         igfgD9jNxFJmxHldYkF8PEQMhQEnD6OsMCMZ2mxwH5Z6odSeYhlUQ2t7egb8NQbuDxMi
         3KDvHAWOAUcULX8LiVq0xVJHLkVVTxzrVogGIRMOgKNSvY2d5s92vBn9hZWt+imQQIl+
         SAY4LEuraaaWOsRmZYrwSTEMFx2RaMzLcmAl6AVj4z+4Cl6GzXXJyU4k+IFH51L+ktIg
         oLGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ZAc3IfUJX/H7zLYMVI2RH8bgbytqQz2QuOe4oFVvH8s=;
        b=jFXgVaz5DtQujaNrXS/a0jQyM4Vsxh5Z67DLj284i4wErFMeQvt1IU4JfNBNEtU/39
         4OWgxk4AeW4CBBs9rf3zPXgT2GL2qxUCNHZeRftav8+ZDdsLiF23lzNTcs3wM82BRYk8
         VAGk1EE1n+RYv8SmF0s70qI/3LJ/JORyyVVkYPEIL5J/wHHFZiCfVUdKp1Ep/IDjRws3
         X9rfMxX+4pZnyh19soyntYOMiAn8NUOx7ghOTfwjmLcb1P8iXP0kVHCk93g9IFW3Ndhp
         xKlt4zb9xmPxg1CfsjH6QB9elo5NBQ4nlZkniiST/aijAZ/k0jDpZSJ0HXBG7HnIBL6R
         p7VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=K3geEpuh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZAc3IfUJX/H7zLYMVI2RH8bgbytqQz2QuOe4oFVvH8s=;
        b=jaMb1lvhUyqCbcA/AYY1fK102hZKPAbIoJu2WXouhOURRjHjfWQk/sVFJ1DUqexmez
         VlmqWhKcuNaLZQLiTAlVHGxdNa5mL+pLEYns88CpmS7yWSrNQArpP7TMGilbu4ZB2H1H
         egIUXnAPO4MgOGfYDusnTzdVkjR2aSqsN3TJlwjxXi6x4Cn0Mxd/Tn1uKGr9p5yPt5Yb
         slspvYoa39rABDAxyWmBZkL0zDiJscy009bnViTXt46BLh31Q1rxllQE+HKAjuzzSryQ
         G0+UnNFaxq5Z//9AEvV7lv0GW6spbDnnefCwbY8lRFD85jVE8m3mygRnmU/xM3LPX0RX
         LytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZAc3IfUJX/H7zLYMVI2RH8bgbytqQz2QuOe4oFVvH8s=;
        b=Jk0q6RestbPlSx5eZYiym+MoqNX4y3hIQJt6aEDRrDy04P4ai5T3lGQnMCbidLr2pf
         uMw4nzI0XSsziGf/0X1r62fX0Ow+gzkNNrwfwGntu4yYCAsKzKl7WbRHoBL/dm8/IRCx
         aNoqph/btuOvmJkOTgJtB3BvXNsuOYu4D74PTQ1b4lh7SjexR1/2Bflj04EgD2jwK4q5
         OMSpztuUsQO1yD/zLygDlr3wCRlc6oJbiUiTzSblDF4/7ppeAmCBtktpY3WctwmPJbYh
         Em906JNLOxefHggpk49irHWigCXu14hbH84uX/DZ71a6JJoB5pHnPrNw0rfbPoUiMjN9
         S0Og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JZ3WSDGCYrwe7FRIQ6Rh24vT+gwKRYwAaI22ZGZiULvMgL1K4
	CBDKnj5kpt8xQHwugSOAzFY=
X-Google-Smtp-Source: ABdhPJwNjhKYl1ajPurm1sM96+Qf6eRqsJTDLWNlm1uDbDogF3gpRX1SKc/0N9LWHfnzPsccx6UbOA==
X-Received: by 2002:a6b:ac83:: with SMTP id v125mr4426226ioe.180.1612613114145;
        Sat, 06 Feb 2021 04:05:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls2944756ilj.10.gmail; Sat, 06 Feb
 2021 04:05:13 -0800 (PST)
X-Received: by 2002:a92:6b11:: with SMTP id g17mr7833359ilc.163.1612613113756;
        Sat, 06 Feb 2021 04:05:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612613113; cv=none;
        d=google.com; s=arc-20160816;
        b=Ey37AHHaDaZeUPvQ7mCe4bJUVVliKvyqxkem01h4gjA1SKLIitBlFo9ZVrHUIvPBG9
         M03ZSbKqLDPh/1MN51k9yQP49n/Yaz/ZVjJbgo91t2wYYsD+nhPg2nOZg5kDTTlGKnzk
         Cyb5p5+hnDonrRD4P8H0iRrRHzJACUiGZjRYNlMk3HMKXdWIt6xfGajUavr0bjlLsMJ3
         slNXdSfwfYQN4BdNdU56P5m26nyu7ATUbuFddnCajYYp7yM37H+0G5nYxe45EHhbOrSG
         HOWAYAQs68GpouxozJq0Y740gwsisin2MOvfr3nfSvCPyR+b2H/KuHTL7jhnY4leDLJI
         5IMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=MyNqLeD8oVO7QhYdCXn23TUBvKfzTHuvCBPmk1/AVSQ=;
        b=rwk5DgLdC0lTikXdm7zZXasjdIdCwxg+LNFl18wNQiRTorswTUi6GwJNlu+IXmD+AJ
         g+ci/sWkU9BIDG9lV7/6gdP/wte4Q0k1XqihgQjTfeIKGSUMXpzd54lECWv8pNfVIgV8
         Mf4LxgCEKpaNoN13McK4i1Xg8M1RuL2lUE/9FwHtHonxMJI/76cFIMTovSbiR6RKSN62
         GItJpvtBtXkWk7rIrdEzbzztlqvftr/wykmf3PWPkYs3LXBDOyShfR5Wxt+Bmv9hHdvf
         mVwQemTulcuSzvkzAU5BLOd2Zdt4+moKGJfXdjaGpqfaa5tWha144fqn6e2Ckx0c1tbL
         OLVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=K3geEpuh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id m132si498270ioa.3.2021.02.06.04.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 04:05:13 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 116C4scc026759
	for <clang-built-linux@googlegroups.com>; Sat, 6 Feb 2021 21:04:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 116C4scc026759
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id cl8so5065694pjb.0
        for <clang-built-linux@googlegroups.com>; Sat, 06 Feb 2021 04:04:54 -0800 (PST)
X-Received: by 2002:a17:90a:5403:: with SMTP id z3mr8631933pjh.198.1612613094061;
 Sat, 06 Feb 2021 04:04:54 -0800 (PST)
MIME-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com> <CA+icZUW3sg_PkbmKSFMs6EqwQV7=hvKuAgZSsbg=Qr6gTs7RbQ@mail.gmail.com>
In-Reply-To: <CA+icZUW3sg_PkbmKSFMs6EqwQV7=hvKuAgZSsbg=Qr6gTs7RbQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 6 Feb 2021 21:04:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT8rjo=MdLqpjRXR2fnJ8XSeoA=uD633Pj1ENs5JOciXQ@mail.gmail.com>
Message-ID: <CAK7LNAT8rjo=MdLqpjRXR2fnJ8XSeoA=uD633Pj1ENs5JOciXQ@mail.gmail.com>
Subject: Re: [PATCH v9 0/3] Kbuild: DWARF v5 support
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Chris Murphy <bugzilla@colorremedies.com>,
        Mark Wielaard <mark@klomp.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=K3geEpuh;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Feb 6, 2021 at 6:00 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Feb 5, 2021 at 9:22 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > DWARF v5 is the latest standard of the DWARF debug info format.
> >
> > DWARF5 wins significantly in terms of size and especially so when mixed
> > with compression (CONFIG_DEBUG_INFO_COMPRESSED).
> >
> > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> >
> > Patch 1 places the DWARF v5 sections explicitly in the kernel linker
> > script.
> > Patch 2 modifies Kconfig for DEBUG_INFO_DWARF4 to be used as a fallback.
> > Patch 3 adds an explicit Kconfig for DWARF v5 for clang and older GCC
> > where the implicit default DWARF version is not 5.
> >
> > Changes from v8:
> > * Separate out the linker script changes (from v7 0002). Put those
> >   first. Carry Reviewed by and tested by tags.  Least contentious part
> >   of the series. Tagged for stable; otherwise users upgrading to GCC 11
> >   may find orphan section warnings from the implicit default DWARF
> >   version changing and generating the new debug info sections.
> > * Add CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT in 0002, make it the
> >   default rather than CONFIG_DEBUG_INFO_DWARF4, as per Mark, Jakub,
> >   Arvind.
> > * Drop reviewed by and tested by tags for 0002 and 0003; sorry
> >   reviewers/testers, but I view that as a big change. I will buy you
> >   beers if you're fatigued, AND for the help so far. I appreciate you.
>
> All 3 patches NACKed - I drink no beer.

LoL.
Other than beer, I am fine with v9.

Personally, I thought v8 (no CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT)
was good too, but I do not have a strong opinion about
leaving the compiler's freedom to choose the dwarf version.

Unless somebody has an objection, I will pick up v9 for the next MW.


Meanwhile, if you want to give reviewed-by / tested-by
please do so.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT8rjo%3DMdLqpjRXR2fnJ8XSeoA%3DuD633Pj1ENs5JOciXQ%40mail.gmail.com.
