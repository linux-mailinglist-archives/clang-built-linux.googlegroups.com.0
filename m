Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYEHTTVQKGQEB2SZW5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 5731CA0DB0
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:44:49 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id t5sf1330482qtd.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:44:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032288; cv=pass;
        d=google.com; s=arc-20160816;
        b=CH4Zxz1WdznPvnU3fq9Rjnp1NcvwAlDekp6EnxM/MW1QlTYYnOvi3PO/bETxUCP7pm
         juQw1icekCrR02rNzC7OMHtrRcHf8ViClGfSCxGKRJK2URpDtiZRhdl/eLDESlbBPry+
         dGMQyA8KKZ7PPo9M7CgvH1HGL8U9516caPdAv2ZPisrOjp1zqMGp7w/J+1fAvddylYiE
         QjmldGgukzRki12AyTh6q6hbc52BhttGil8nrQKW6aaM72yu0k1r5Lr3NJnX/b4jo3gM
         wE/DfMALtjiYyYUpaznk7dIfwi/ePsPww3gsx7HW72IMK2vdBdhEWc4tSWqZp1a7TXpK
         MIqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zIGM9X2ZK/vdpeliorShofH0toMX9x/PRpcSE3UXGPM=;
        b=VHWISD23CZabN/eSi5gezU5oOzp0ngzhTAAf5PjHp5Rv0zw4raUedPcG1ce5FHp0Pi
         cmPiHwTt8IQAcf0FE4EClwNi7hpm9uazRgb14hdC5EUyuiO/Ny0hzD02M5YTHzdgfhzD
         VpjAY2KrP57tg1Un3Xpigjkxjan2NuAFw1HLdJRFfhYzBfw1UoW60uhGyV4m0ve2sNpR
         Xk9PQ91490WTkq6wWs/L87oLRgPy0cvUqK0JFqwFowz325KieotJOzmAp8cxOOtDCdgI
         THj9IB49BFOeIcEeAIxwSY/cBN3PmcmH26Z0qf9xTYYfejcuM649EiUsBHkzhpU15hB4
         mr7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rzXoLbnv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zIGM9X2ZK/vdpeliorShofH0toMX9x/PRpcSE3UXGPM=;
        b=qRipcYmEP3qxcBNbZuvN7xccUsiJWhYi8jCDm0DeMqi/psJRIM0it2dGmjc7O+1mpc
         XqZnTXOWQfjRvsKt4OCrp2C94srsmlYsTJf4C7YSBe6nl8WvDb6KUVPAIjpcx7kGPnnV
         N2aJXH4toniPFgmPghUGel4yH8nuuq5x419yOubw86efls/ROAGMcehPW4ePB+y/0JRC
         GOZ7zGMLGOH011btG8Gx9XQMYtAhw2POFEIM9I70kQLGnRdIUZknlRF7/3cpnRxvDbDQ
         3eC/psO483aaXw34pAWdQMJmgeqoI9ksHc1Py9yTMnJ3qNrcKNJA20UVeVwI6Yszp9MU
         /P6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zIGM9X2ZK/vdpeliorShofH0toMX9x/PRpcSE3UXGPM=;
        b=actsxCQMvRd/l21bx0p5hb7d/9KaCu6F9V/L6RtEaBa7GedBCm7bIawJ23EY2J35Gl
         uIhOj2EQryvKjui3nRvN5c04dDy41ccFo/3vwFQlWT1SVR4TD4k8U0wutix0VdKFXqBk
         t2+yiQ1DkMr0wlz7sNimudvpjMyYKfoyOCnXg7Tp6JP7MXft0GpbysFgcLfowjLGrZ1J
         kAY0V7MIRRNmRDKw0iklF6Hm7t51f20lOV/jZor+LZlR8twt2eF9J6n2r7+Y1NZJAhkk
         3XuLSCQ2teWsjtQEAMRC57YgQNGcq0tw0R/gncmGpXwQDxUFlCKwoEISOVpXIyDYPpek
         WdBQ==
X-Gm-Message-State: APjAAAU7XejZA4M6TJJ0Q7dizRkFxWylEGyb3RMG7QEqi82/17URTTj1
	DhfDS+ddmgqG/ygkG6Ndarg=
X-Google-Smtp-Source: APXvYqyfkQQRUzllBtdWYMRaSuPXliZx7fFDfn3/TlDUVBnIqAjkjPaGfOmeKaf8KFdGZneMZgG0uQ==
X-Received: by 2002:a05:6214:192:: with SMTP id q18mr4630986qvr.201.1567032288202;
        Wed, 28 Aug 2019 15:44:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3161:: with SMTP id 88ls130031qtg.7.gmail; Wed, 28 Aug
 2019 15:44:47 -0700 (PDT)
X-Received: by 2002:ac8:4117:: with SMTP id q23mr7015097qtl.305.1567032287954;
        Wed, 28 Aug 2019 15:44:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032287; cv=none;
        d=google.com; s=arc-20160816;
        b=JGYnAeWQv4Rsj6nB8HkNh/Z49TFOEd4E/esdai/ik3NVnK39NuVj8e1RbES2KlzWbY
         5kNTOJs+QhvVS19GAEiybcA8xJK4xVPBHmGDTY+/e9bwgS4q3tmUdkOotr0iA9Eb6Csa
         PpsUt3PuDCt733EI425CB2yntpPq6nluuH8Z4/YajupWLW25nykFE6VnaUj6jIsRBmq+
         a/8HKXeD4wCwXLSD8TWpvVAGZrk1iqZkPakOlNI8kZeRLN7qCaWwAS5BA0ADSwcnIC8W
         cb/kByVTaeTVQhPj1BBM+4TGyt6b/tJUhtXVss9ZThi+1YcOiiOisJbDSgBh/wRmqkBy
         F01w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fg4hkBW4Rh+wg07E+LmFT0I3S5Xi5d7e8tr7Ly1+a64=;
        b=fkT6xbWWiCJHAQHeR0dvidDFckJhdZimMRKj3ZaY89aY+HBVBPX3MrBZ/iw0Pyu82p
         AZqqx0pRDsnX88r/mWv3CJ5GY/DdMiZUzeIpqU71CRMLAdbYOg86Wk1gVIJv7iEqMdye
         C/SqhOL8QLIQ7gWOEd96whTeht88kbvxU4JKkkm3CUIncn006vpNphavJdMuX5g1oK/d
         aTw/HW7Yd3HkB2xVBrrIHB2WHhHlrWxoCmGgwvdP3IAiVE89gAz3j452EhVkjNHCh0Tu
         Helk9/lu8Rka6Q3vGmY6Rxr7sK/FKJyyYldEe1rv+1ep7gIItlQECGlBE1jRH+RwR/Ks
         nP7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rzXoLbnv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o56si42809qtf.0.2019.08.28.15.44.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:44:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y200so697453pfb.6
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:44:47 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr7594671pfq.3.1567032286687;
 Wed, 28 Aug 2019 15:44:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com> <CA+icZUVT8GJCPSSB=jLKLu=-OrWAj5W3Rkbx1ar0SGcEq0-D0g@mail.gmail.com>
In-Reply-To: <CA+icZUVT8GJCPSSB=jLKLu=-OrWAj5W3Rkbx1ar0SGcEq0-D0g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 15:44:35 -0700
Message-ID: <CAKwvOd=OsoWoRQ+drUR7c0L_NikmwJvdWCq50oU_TK4aVK0juQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] treewide: prefer __section from compiler_attributes.h
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, naveen.n.rao@linux.vnet.ibm.com, 
	"David S. Miller" <davem@davemloft.net>, Paul Burton <paul.burton@mips.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rzXoLbnv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Aug 28, 2019 at 3:00 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Aug 27, 2019 at 10:40 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > GCC unescapes escaped string section names while Clang does not. Because
> > __section uses the `#` stringification operator for the section name, it
> > doesn't need to be escaped.
> >
> > This fixes an Oops observed in distro's that use systemd and not
> > net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.
> >
> > Instead, we should:
> > 1. Prefer __section(.section_name_no_quotes).
> > 2. Only use __attribute__((__section(".section"))) when creating the
> > section name via C preprocessor (see the definition of __define_initcall
> > in arch/um/include/shared/init.h).

Case 2 referenced below.

> >
> > This antipattern was found with:
> > $ grep -e __section\(\" -e __section__\(\" -r
> >
>
> Hi Nick,
>
> thanks for the v2 of your patch-series.
>
> I just checked v2 on top of Linux v5.3-rc6...
> arch/um/include/shared/init.h:  __attribute__((__section__(".initcall"
> level ".init"))) = fn
>
> ??? ^^

Right, thanks for checking.  That case is a section dynamically built
via preprocessor, so that's the case I'm referring to in case 2.

>
> > See the discussions in:
> > https://bugs.llvm.org/show_bug.cgi?id=42950
> > https://marc.info/?l=linux-netdev&m=156412960619946&w=2
> >
>
> List CBL issue tracker to discussions:
> https://github.com/ClangBuiltLinux/linux/issues/619

Will do in v3!

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DOsoWoRQ%2BdrUR7c0L_NikmwJvdWCq50oU_TK4aVK0juQ%40mail.gmail.com.
