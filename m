Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBMIUT5QKGQE5KNNOOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A33273326
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 21:50:30 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id d10sf2959102otf.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 12:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600717830; cv=pass;
        d=google.com; s=arc-20160816;
        b=ITJlGNHKJFEGcRD/TQMOnvOwnybp9cBPED6krGSfv1lVicMsDmXQc3bKCDvaZHh7k5
         Xmz6KGV20S9btAMeJ84zCiiTs8k75gaqOz18FseWVmnIzZ6eUABXNOM5fYxdBqlLtbD/
         6h9xLv1Mi0UD+zGlGeS1HXntCKZ4OO7JYfRxYbmkueSmZ5wLF/FplLjAdFxFSaPUEwqd
         /RGireP+O3Pg+LmgjGf56uE6GyN2HBS9LqaFa6fK3RFHH3LTxdiZWOP2CXPXte7ee+9f
         OsZRuKo09DZT7NtrQ4eSOu6DWeOWkIMYRBWKJrR2tzqyTL5Zlfw57i0kvXptbkQNt31j
         M29A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gRh+GvlMFNJBhcuqYWlpAmd1l1WhJXUgrTdzXtIDmuo=;
        b=W2fdR/u3aFkHZU9QMRUnvSgU/4U5qHMKxIf4YVJQkYldXIbgliFYnVcw1kig8MgsoZ
         FPx4388YAL7m5d0c9pwO4TfFMznwfCsDdl4J97PCcQ4+RhKudarcf46yE3bYSCTIjK7w
         GYGIedDIEDqOr4p0fKVLWWU+6CqD03SxIixTm6E5fDHDynEitEB7lAc2JGNL7AgM4GcL
         EiOjWazP0kdXVpNNf6wxf1uLvRxVwqvmk7Oru704fMY/fEGOCWsm5CYSW7iTmt8VivtP
         AD1hLH39lFp3y0dV2nHsFGactTKeeK8ZiIg4csPa2WHG3O2kSIYw+x4vmDucBtedSbQG
         fR3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MzlFGtZx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRh+GvlMFNJBhcuqYWlpAmd1l1WhJXUgrTdzXtIDmuo=;
        b=hheoil2ncWZtkcNT/9kSO8kH18DRbcASDtuQA3ofRLX3m7KlpLPGwYr+9tKw+2IoLt
         IsreI9G8dO8yepCCGjOqi3nCGZ5vpWNprvYob/PzDt1KBXaifHXyid3IqcWHhFwld89y
         PcEF+Mn2ihZsTuSAYttUrPs8IOamIvTJAM477A6F45SEhszaRyKrFybm1IzUiADmAXOr
         P8mkYHN58RZD9SvD10jmY7IFntbav9VMdnEMI+EY2Xu1m/wvphnxD9Zqhq5QUTcC7JWe
         k3ScnPkRfd30WvqwxPOy7F+ZZXjdrfb5c1hooZ4UlfFoBEWU5SVHWWB1vB+dMybep7Vv
         uTpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRh+GvlMFNJBhcuqYWlpAmd1l1WhJXUgrTdzXtIDmuo=;
        b=B/RmFLMfsJ60h2hKs4VBCaBbMEqE4hMHWiI8rpekp3c7eDkIpw9sFKpRNaySEQewoD
         vKyudcDVjfy1PWCDQXylWh9eKT1WmCrU7RLu36ssA0NA3oNJqH3hOaO1CKwezDI8/QYy
         ESaH2CehljpWarZB8KH8xIKYOxgcfrL1BW0X7FuRSxca8LO6RwarnHEoyeGI9nIyTpu4
         M9LedgIjSN8ZW5hh4Waf3DRzt4aO0Q2FqSWDOfULcjrwV1HsK23fgqL3zm9+VH5BcsrK
         hQImQLvPkr0lM7NbiboMzVxkRk03e0wX8+0KhmjAevxclsvFpgFfRyKi07ciqA8RNPK7
         uexA==
X-Gm-Message-State: AOAM532YaCwBdU2PfXxxMBTMTG3HR8xSaeVyxFFwBPCGmvfr56cD7q9X
	sWQG8NpaQyMhvINAmNSoewk=
X-Google-Smtp-Source: ABdhPJxAXKrADaMBSzboa4FGb3R7OZOoQGzHVjAAK4DXMEH/z3/hZ2ZXKN/7r6+ob4QJh31oerRq9w==
X-Received: by 2002:a9d:2d81:: with SMTP id g1mr663469otb.352.1600717829923;
        Mon, 21 Sep 2020 12:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1b72:: with SMTP id d18ls3138680ote.6.gmail; Mon,
 21 Sep 2020 12:50:29 -0700 (PDT)
X-Received: by 2002:a9d:5910:: with SMTP id t16mr718262oth.155.1600717829587;
        Mon, 21 Sep 2020 12:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600717829; cv=none;
        d=google.com; s=arc-20160816;
        b=iF8RkdcCkQ2WYW8/M1mJIWRV6iIxnn93r+VwnZoPQuNYzDDzxi/JaSSlmSxfhOGbtp
         uUmK4vpnXVnhB/tdIwKwTCm2eX/8+5mUWC4o6v5nWERVDy2wbbg67L0wd0zlHBKnXtl8
         alFeOb92wrKmNcXw9iGkHWjReY+o+ZizFmRc0WFPEkxRBukc3QO3xpPQcz2ZSMqEbSzo
         vnbPwa6ukALRL9bwp744hZZkxlT9sz/nJm42KRbtM+H+jCLDEiYioVWGw6C//9QLZTRK
         ErU0m6EinCo2yVnYRDDcOLo4mA2bgE+7Qes/QD3AG16hNrJRpxk9b1p9nZ+JHdnEPgqD
         6Lig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hfum0xk/RZI5/Ob/LotdK/fUqBVcECeLZPhlAXF7GSA=;
        b=09spBpf49dLhe2Rb40SVMuilgHZDupIb7MGLXGQoGrKCGW2qmQi+bPRoFrNxP1ptzZ
         /de+47NBlqe4RUKagdZGaZJ5aE9AkBbqhcHXNgJEjVc5T79l8JbDlAd+WFpzLtfEt6pg
         de47DUPkW1T+8Z2mZwmbRiwVLabtr6iDUaNi1Z0zHFAL2VkO7RvcduZBZz/AF11W/XI/
         IT/uo4q8AEiDpX+mo6MaDQftPshwphqjUej2QHmITAaU3MCi4D2+PtaKcF6iN1Z+xWZ8
         JQTeZ8sOBQL34UDXESUffQvr6Uv+pPpOVVMl/qqSUip/xKkwFsGRPcucS4iyuj6ruxk3
         OybQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MzlFGtZx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id o22si777494otk.2.2020.09.21.12.50.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 12:50:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id f2so9950965pgd.3
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 12:50:29 -0700 (PDT)
X-Received: by 2002:a62:5586:0:b029:13e:d13d:a108 with SMTP id
 j128-20020a6255860000b029013ed13da108mr1208250pfb.36.1600717828686; Mon, 21
 Sep 2020 12:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkGd6mPw_OKHwmpVs_xxFW2oqAoXyr7M8hu3PCCwkqCEQ@mail.gmail.com>
 <CAPcyv4jZfbuS8zHZXBNqRTi_1HzHLUztkxDmsruMk5PGinGhPg@mail.gmail.com>
In-Reply-To: <CAPcyv4jZfbuS8zHZXBNqRTi_1HzHLUztkxDmsruMk5PGinGhPg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 12:50:17 -0700
Message-ID: <CAKwvOdnVeAFu_Zb2KNuCUcVRWcqsX9r855uyKAMR4+FM8LTdoQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IGVycm9yOiByZWRlZmluaXRpb24gb2Yg4oCYZGF4X3N1cHBvcnRlZOKAmQ==?=
To: Dan Williams <dan.j.williams@intel.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>, Dave Jiang <dave.jiang@intel.com>, 
	linux-nvdimm <linux-nvdimm@lists.01.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, "kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MzlFGtZx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Sep 21, 2020 at 11:47 AM Dan Williams <dan.j.williams@intel.com> wrote:
>
> On Mon, Sep 21, 2020 at 11:35 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Hello DAX maintainers,
> > I noticed our PPC64LE builds failing last night:
> > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047043
> > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047056
> > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047099
> > and looking on lore, I see a fresh report from KernelCI against arm:
> > https://lore.kernel.org/linux-next/?q=dax_supported
> >
> > Can you all please take a look?  More concerning is that I see this
> > failure on mainline.  It may be interesting to consider how this was
> > not spotted on -next.
>
> The failure is fixed with commit 88b67edd7247 ("dax: Fix compilation
> for CONFIG_DAX && !CONFIG_FS_DAX"). I rushed the fixes that led to
> this regression with insufficient exposure because it was crashing all
> users. I thought the 2 kbuild-robot reports I squashed covered all the
> config combinations, but there was a straggling report after I sent my
> -rc6 pull request.
>
> The baseline process escape for all of this was allowing a unit test
> triggerable insta-crash upstream in the first instance necessitating
> an urgent fix.

No worries; just checking that failures are root-caused.  I see it on
top of v5.9-rc6:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/.
I don't see it on -next today, but assume it will be there tomorrow.
Thanks for the info.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnVeAFu_Zb2KNuCUcVRWcqsX9r855uyKAMR4%2BFM8LTdoQ%40mail.gmail.com.
