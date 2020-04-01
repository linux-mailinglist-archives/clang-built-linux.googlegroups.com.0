Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV64SP2AKGQEPFS5PFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4AB19B67B
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 21:41:12 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id a13sf895137oii.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 12:41:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585770071; cv=pass;
        d=google.com; s=arc-20160816;
        b=hn29KCh4MCL/myzD669vKC+11WzQ4f1QcICB+uVRm693sDrHDJbhSPkTv529UkKQGf
         tS2QqyekRvoBZThv6jue6FkP6vCr+8QKA2g0tzts33N8CejWjbSCvU3FlY3xmc2R2LVi
         XkNXbpbg6MmEspNdGuDuT8WCJLg0zMepIhb/GsejsbvTz3DJmy7/CJUapanKBGh1hcqv
         vsmsIEnKNl0G/DzQhPCIVQXjRSy0Rwi+Un9QsZnGPKg2M5i4G0j0OHl+5pUHWCi0KrsK
         GlZXcwkDDcvmQrVDahDy7PwWXuCT79H3xIdh0iu/BG1rMpWoVs6iwml6LI5z99sBOMQH
         1ghg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GhiTHeHK+YryiOwtTvfNeicHDHcr1Swv95MJu84JUsE=;
        b=qWaaiG4Q5acC40qg7mmCY7haS5CbUZ4FaiuZtHFayQzsTS/TrERORUYzypvLmkieCP
         NX3C/VviDG2dql4gq3sK7NPZ7mwROxtFHRiHin40kReMiSFDMbS+77wrmOYtpvEwa99v
         /DUEa4BkHGxO7WymPaAQHdPRUTeKI7dPeQz5x0fKDe6yRBzmdZ/4m28Lh2H77ZKR0Bl4
         il8QfQXtfFoUTa3mRsmP7gq029O4fGlot7WgrGJhPTucRreRAJXvdN53lC55zH1Yu62j
         tG4FsPbWByQlgrZLsK1eERceq4wYZSq06T7mBiucpSlHMCayETEMFBocInIZOTu9AYOT
         HHQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sSSfsOBj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GhiTHeHK+YryiOwtTvfNeicHDHcr1Swv95MJu84JUsE=;
        b=qR7C8VS4kD3AX2nfmgwoLgtely7L3mzBmL7H+A1pFqLIca9JLUm8LosZS0Im5FrCGc
         U/KEb/l/oMgIhmTwa0RklB8iPGVILiYvwImTFZhfRISozIARbSmjA0S6qoZQp/5pKsc1
         0j6XiJkOT6uISmsgH92x1Pb+ZzrdaKbVNxybXZgmB9RV1jXDZwEQNwhQbbq60Q5cEKns
         7ewuGheBn2Gb1PmIBnocFlT+qOQUUqAbSueHhbTjQCV7654vt/LuZBX3pfo43evJOQnF
         U3GIIF0b+Rjv3rfYpKZ2CQbqJF3EXEkKCJlRXtVhMBD7CfrSwjW+wN7tmKXiwk14PRyY
         NS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GhiTHeHK+YryiOwtTvfNeicHDHcr1Swv95MJu84JUsE=;
        b=E+Fkcz52h5PwciydOrJt8NxGG0kjOrD1qW2XXpCUbsBzG3I1NzId2WdqtUl0mQPN7g
         zAjw9I4QF1qL3f9k0aM9mtRJoxP3XimH8+8G2gsFhFHACqelm7of2NRTK7kDaf7TJ4h4
         SPNsdJnVU3E1XCCrZewLqLGClicPrqTvISM++9oGF9jsSRbM2FySJeSLfJLQKSsh24e8
         y9HQQQf996nk1LuUt8LYEhuN5oF2PNzgTzRHqaxZAcscI68YHMM3lP97Y/kg3E4VgSrv
         202YDQbeNePX5wSZrjg4JT4O6rWapw18IP/eT6nBdpbRlZxTukvY1P8RS0a142L3XZul
         6nOw==
X-Gm-Message-State: ANhLgQ2Exi0Z0cN4JpvqATgULZsTbwkl5tZM36Zhux1MQUdYIqHzkkLs
	xpB6zqHm5kt5RrtAUDHJSuE=
X-Google-Smtp-Source: ADFU+vs4fAxIbBDTe0JMDMM8vrN3yDjVylByYg9Z86Uo2Igaaeil0KozoGkMQmIv91h2xHHbQJIlqQ==
X-Received: by 2002:a05:6830:104c:: with SMTP id b12mr16620862otp.121.1585770071628;
        Wed, 01 Apr 2020 12:41:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4557:: with SMTP id y84ls121430ooa.8.gmail; Wed, 01 Apr
 2020 12:41:11 -0700 (PDT)
X-Received: by 2002:a4a:a88a:: with SMTP id q10mr18425022oom.17.1585770071168;
        Wed, 01 Apr 2020 12:41:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585770071; cv=none;
        d=google.com; s=arc-20160816;
        b=iuhesIOyfHAIlx9TfLLHTIjWn6VktE5OdFdier92aMZNtsBa05E/lC7FRptF+p5nEy
         xW2hsvaVDLm69kUYLJeOdsCC9t2KhnySG6AnOGN0FDD6M26AWm55D8OQtGrth2d9xopL
         0zQ3dX5GVwhid4O7SWSfU2ffEYp4yorhbn0c9rA5nROWSwh+9ew70btGMvEhKBeMLZSe
         JoU0bLX/dCLSB+eoGnN9DrvLIBDM1+aIRCs8FYBf25LSD8tjsn0yDRWpqrkz5A5DPE7K
         RDBrqJ2xfkZ485PZ92wkb7LIXrSDHZelgmfNc63SEf/C0DbaVkZKOvsrFjfGESELLAP5
         1pnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZcY1waND0as3Tkxi0wf6Ktbv3TwPv4nUKifTBp3599g=;
        b=xR5ZOkKGjq96EN5Xwtwfl/Uui9L5TrJk2a282pO2xZpfkjzAyxg42drjq6yPTUsK6E
         nJJD8xredDcJu/zqFPxDVDYwyR4070aLbEfhs34lwH/tAy7zqh8UpqYjflopQ9sYJzUp
         Xm8wvfowcwctNcXDURGbwjl+utH0hfmQZEGPXJG+mBJQczKktSDqTSEL0lczULiih5Ha
         Jwh8w9A0K+HCPfCkJq8Sj3Kmda1mMksq6GfvZQzE/FC8Zo2YUJ+GHIdo6ljiUDfW+esb
         NGxAQhjgzbDHnlqZdHbHW+4YNOPPRWoBA7NWyE9h3ieGPSnfaTd5y1+fQOLKMvnTo8ad
         VJig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sSSfsOBj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n5si282411otf.3.2020.04.01.12.41.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 12:41:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g2so382473plo.3
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 12:41:11 -0700 (PDT)
X-Received: by 2002:a17:902:22e:: with SMTP id 43mr22826120plc.119.1585770070325;
 Wed, 01 Apr 2020 12:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <202003260212.EDh6YemF%lkp@intel.com> <CAKwvOdnQY-w0mad2=D936i7BYOshH5Heo+naE4uC9MrEPC6G3w@mail.gmail.com>
 <a7fdfba0-dd65-179a-60d9-b87b61a209cb@intel.com>
In-Reply-To: <a7fdfba0-dd65-179a-60d9-b87b61a209cb@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Apr 2020 12:40:58 -0700
Message-ID: <CAKwvOdkUYBQQ=K2X9K0p9tjZVB8sUPTUk_rATpwk-cauGpXnxw@mail.gmail.com>
Subject: Re: [kbuild-all] Re: [linux-next:master 7819/11710]
 security/integrity/ima/ima_crypto.c:514:5: warning: stack frame size of 1152
 bytes in function 'ima_calc_field_array_hash'
To: Rong Chen <rong.a.chen@intel.com>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Rob Herring <robh@kernel.org>, 
	David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sSSfsOBj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Wed, Mar 25, 2020 at 5:23 PM Rong Chen <rong.a.chen@intel.com> wrote:
>
>
>
> On 3/26/20 3:08 AM, Nick Desaulniers wrote:
> > On Wed, Mar 25, 2020 at 11:37 AM kbuild test robot <lkp@intel.com> wrote:
> >> Hi Dirk,
> >>
> >> First bad commit (maybe != root cause):
> >>
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> >> head:   bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
> >> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [7819/11710] Remove redundant YYLOC global declaration
> >> config: arm-allyesconfig (attached as .config)
> >> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2093fdd429d52348e08969180ac6b1e705fc4ff6)
> >> reproduce:
> >>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>          chmod +x ~/bin/make.cross
> >>          git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
> >>          # save the attached .config to linux build tree
> >>          COMPILER=clang make.cross ARCH=arm
> >>
> >> If you fix the issue, kindly add following tag
> >> Reported-by: kbuild test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> > Please ignore, these warnings and the identified commit are unrelated;
> > we have a few -Wframe-larger-than= warnings to clean up for 32b arm.
> > I have a tool that parses debug info to find these:
> > https://github.com/ClangBuiltLinux/frame-larger-than
>
> Hi Nick,
>
> Thanks a lot, we'll blacklist such warnings.

One day we'll want to turn these back on; they are useful for
preventing unintentionally large stack allocations.  The issue is that
we don't have all of the existing cases fixed yet, so it's hard for CI
systems to know if this is a new warning introduced by this patch or
not.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkUYBQQ%3DK2X9K0p9tjZVB8sUPTUk_rATpwk-cauGpXnxw%40mail.gmail.com.
