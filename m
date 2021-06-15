Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDHNUODAMGQEQ3A4PPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 178C43A88DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 20:50:53 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id bu14-20020a056512168eb029031226594940sf2551474lfb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 11:50:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623783052; cv=pass;
        d=google.com; s=arc-20160816;
        b=hAABVWMCl2GdR8ob97B4oY6yM45ceFpv7moKq2QkUYWSRzDytVNSj7Dt/Q2szrzcSo
         gQXsyJ4BEi0LjG43NpCAS2JK4u0R2ELEklBbQYXHC6ubbql1h++NOWgBPXI8nJguHEz5
         zyadgf12nlMCSOjlHP6P9VIYVYiMREP5zC3WQHJhcm1O4PS3ZSJFVFKtQ4+j770gDemE
         wriFgBSYNY+YQWJGeNtws52wVmb0Uh+UN1l5m49qaJRLR+F8wqHiYN+Tfy2yOyHasBME
         Yo/fdgAYDNoGT+eEHEVLmi3CjOlJHLkqp/amq+TGe6+xnn0i6HQW9t2V36WX2SORfhmz
         PoDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MkCQle8tsH9SOCM4+vsD96SzdE6DdF616gvtX40Lnpw=;
        b=trMdy3Wfcpn3rAa/ytlCKhvvd4Qvo4velS4hr2qwsTUQP/a0JA6Ch2u7IEqMqaCbnU
         d7MsK/8LSLwFPLjD69PVBSRwmWzWns4Kbz59TjK2LKCKN5W7dtY21PPeYZ29fSmvtuIW
         iuS7bTz+9azqyKS5ZdDyDjmJunifhYkXY2ASBLKRx4ZkJ9rCSu7JF6A7ohwXaQsksskM
         pm9hFrNfn+lJ5SoVTKuJHI2dPgniZkBwwMwoN1fuh7Iy4k2X80AFQTW4yqD/8tsBZL0X
         KQusUA2m/MKrtWgdJdWKvxy3sGD/IlzCY35IIU5snWD7RNJZF8nS+0f+KgGrvwYs6FQu
         /Yhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T9sPu37g;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MkCQle8tsH9SOCM4+vsD96SzdE6DdF616gvtX40Lnpw=;
        b=Uynx6WxqRVsZ9D6Q3bRasXesJQ/gDtxpx0XK9Dwv6hb2Jt14a2/Z4m5dmIcsVAtFcx
         VML1K383fb78LR4PMZaSevkIeWVwlqDp0KA1K2lt5Vwju9JySRtAItbjPTRkINW6v7aX
         eaI+EhUvWnoN7B/dUnVSv+PPYqvXOLDNYtR5hKySAuPqhlMSZ8XcRkja0Sc4k37aP/7z
         qRWXTJS1NWuDMhSfmM3XqMct5YmjX3Rp8+dpllln/QYZZEL8Qg6LkIgp9MC80vRUxmZ1
         Ygm7abAnhHSB3dAbwS96LdkAXF1oZJPJht6o6Vgeks+YJMAbTQbehvzgFvarrzaLSlpx
         3TgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MkCQle8tsH9SOCM4+vsD96SzdE6DdF616gvtX40Lnpw=;
        b=VSKh3cPdbSySQ8FjnmmY5gCezhSRQ0/uMpDKlHCcnOESAN8HKutb6TQvhg6xdKJR66
         DJOO1qbD6KDKaC3G6RWX1U7CCfqgs5kCNh5ESFbazrpnXKeWYeT5D+LY0KjyEpMSMudD
         fdSpK9r54LJJlr6jx/Bif86r1dO6X0IgpDLpojen8U6f3KiRAcLSlSl/hN/+K9EXm/8n
         t6bMpsUfDAqK5JKl1Ut1rtf8idiBO2xoMKDAS112PJyhJ3JMH/Ot+eYiKwDc/OdoLbkV
         5O5K4nBG/7iBpJjUwmIIE5poFvXS9nG9PiKyq4Mux0orSw2zkkFsewa2oZe9tz+GkW3U
         p1yw==
X-Gm-Message-State: AOAM5339Y3P/OrX6ZN7h+sGRilPr+eknqAMi28/qyKiTHkyFyhb/iHo4
	pmBNieLDEHyT3h1MwcYZ27Y=
X-Google-Smtp-Source: ABdhPJzJyM/58qim/ZR3+szS2y/0l3tlPb5ySp2OPk25SuKyPb/CWkWATdZWYjafYf345SuMnfkAFw==
X-Received: by 2002:a2e:a7cd:: with SMTP id x13mr943094ljp.218.1623783052689;
        Tue, 15 Jun 2021 11:50:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1799:: with SMTP id bn25ls4840584ljb.3.gmail; Tue,
 15 Jun 2021 11:50:51 -0700 (PDT)
X-Received: by 2002:a2e:9d59:: with SMTP id y25mr869850ljj.399.1623783051679;
        Tue, 15 Jun 2021 11:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623783051; cv=none;
        d=google.com; s=arc-20160816;
        b=I8raGXI/rnHsDAyiFLJTUG+qKcAXPMqCAUj82tGs4z8N03Zlp0JwxsHpN6VSsuK+fK
         8YyVRlsBIgXYowxkEy+KyukaoP+RhzRhu/xM+nyNAPeS2oBG/hQd4g33vmKIYl9V6A8a
         bZBb0nrTLPHrkZghvoq+dbJThkbqo6Aui6uccoV++q3MjYDn3BOPHMxa8K/o+jFyAMJD
         11leN8Jygn3KTH6wpbZ2vcJhHIqrwlw4cwIlZWmsj1O/6KZWxR76N60WLo3PzQy6jq6j
         eRIX1AatHBn1TsIARAW8EQHZuxfCJ99tbbcXJIRrELdxmoS2XXc4cRpQsMMTUy3Vl4SW
         4a9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Iubz5lzaW04IsVrDp95X3mdgjAzMibu4/D8e2h1KDTQ=;
        b=zB2QT9A81iTw6t91biOs7QRPfDSn3dd5FDZ4cLRXDGUNtRRO2wh9QYuqXGNlN3D96/
         s2BtWtm6WkBMbsIrkHg0W9oZ13YjGDWy0oCv1b498tkrYzPB9JEQqJYj4VGJSLQgfcM7
         EGknvOxcnjqDJ2mFXsJ0AyiB0QyEL5qZTmYhY7wcp/3Ffh37qJLvRt4720S5C8IyJTUt
         sYl9R5FaZ+hWYVWfEO3/w8l3P7Gqduhvo6/m2AuXGlgolJNBZWLq/L+RD3RJUbLPE8v0
         gpzxhpLkbuJj+BzC0HnQhS4mgQqAxviOHQBoYcp7rvVrlCFctyN4KGOU9Y5HBeYeI3Sx
         NiLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T9sPu37g;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id x23si108427lfd.5.2021.06.15.11.50.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 11:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id bp38so28720623lfb.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 11:50:51 -0700 (PDT)
X-Received: by 2002:a05:6512:51c:: with SMTP id o28mr578440lfb.297.1623783051165;
 Tue, 15 Jun 2021 11:50:51 -0700 (PDT)
MIME-Version: 1.0
References: <202106152328.Mh5S48hE-lkp@intel.com> <YMjPXKrHfqZKDisp@casper.infradead.org>
 <YMjyKtBiQJHN8JXL@archlinux-ax161>
In-Reply-To: <YMjyKtBiQJHN8JXL@archlinux-ax161>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Jun 2021 11:50:40 -0700
Message-ID: <CAKwvOdnh-CSPE9VTkqL3=-yVcePS8FdqTtBVAcV0_fa8sWrmDA@mail.gmail.com>
Subject: Re: [linux-next:master 9529/10007] mm/hugetlb.c:1591:9: warning: no
 previous prototype for function 'hugetlb_basepage_index'
To: Nathan Chancellor <nathan@kernel.org>
Cc: Matthew Wilcox <willy@infradead.org>, kernel test robot <lkp@intel.com>, Hugh Dickins <hughd@google.com>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T9sPu37g;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Tue, Jun 15, 2021 at 11:32 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Tue, Jun 15, 2021 at 05:03:40PM +0100, Matthew Wilcox wrote:
> > On Tue, Jun 15, 2021 at 11:58:36PM +0800, kernel test robot wrote:
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> mm/hugetlb.c:1591:9: warning: no previous prototype for function 'hugetlb_basepage_index' [-Wmissing-prototypes]
> > >    pgoff_t hugetlb_basepage_index(struct page *page)
> >
> > So clang requires the prototype to still be in scope, while gcc doesn't.
> > Does one of our clangers want to file a bug about that?
>
> I see the exact same warning with GCC 11.1.0:
>
> $ curl -LSs https://lore.kernel.org/linux-mm/202106152328.Mh5S48hE-lkp@intel.com/2-a.bin | gzip -d > .config
>
> $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux- W=1 olddefconfig mm/hugetlb.c
> mm/hugetlb.c:1591:9: warning: no previous prototype for 'hugetlb_basepage_index' [-Wmissing-prototypes]
>  1591 | pgoff_t hugetlb_basepage_index(struct page *page)
>       |         ^~~~~~~~~~~~~~~~~~~~~~

Since this is a commonly recurring warning for W=1 builds, then this
function either should be declared as having static linkage if its
uses are local to the same file, or a prototype should be declared in
a header so that callers and callee agree on function signature.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnh-CSPE9VTkqL3%3D-yVcePS8FdqTtBVAcV0_fa8sWrmDA%40mail.gmail.com.
