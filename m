Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3O6YX3AKGQEENJPUBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A26641E88D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:24:13 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id o12sf1641886edj.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:24:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590783853; cv=pass;
        d=google.com; s=arc-20160816;
        b=s9UJCr77S3XjTt1ePKS5pShgwXA2+nFIHOGfYPsLIs+hTOjEBcyZkasVyVdMX90BwD
         iOTjnzy4LRLhfFZxNdxHQKlxpIL1Qh1+LwCPPBVfIEFSPmGm7jtLIwbcs5dJuHbg32qN
         GjAtsUtvitCKwccMXyaNA48+21TmftfAJ1uXMFL6wifc3rhQIrCq9MnBrK0rPYPU2ix5
         VXmau1f0D7ogIGoE8/rERGz6M2szuX6hGuVprRpS53dds0PbQ2ceE2Vgk1lqtLIBrrnG
         SQDL0Hd/k3x/JAy136ppulUOPFXiwiNNcTh8UtHQ3GSrjqW+LmQtT0ewo32KfQAgW24S
         0Y+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Cl87Pb65ZHKPijudNcKoRaFveoO1+omez8nkRsQXvcI=;
        b=bl1Bve0RtOKhnWJjncHJLOEU50QCaB7B4wpYro6MEmUPKq3ro3lvxHGJeomUZceEB9
         czntXUzU3UB1VpVkQtyQtIDLHG8H2Krwv2V8bzrDL3tOmhzGvR5JpMF3nHP7eCJwe8Fw
         LCqht7EUAwxAhf2rHdbbDTF+PCTqcubAGssSawRcAl0IAhrIB83IBGyN0WguNEYY5Q8S
         yyMU3St+XKDBbbz6cfg2L8quXHFno0N19t0+f/Oomf+dWD7/g0vo6EWqODP6rHqmSXuQ
         lYhsZgUyM8aRrJ4jTbc4dlWAYa9Uw7HFf0n9Jd1olirbRuJ1wpT2uQToh1ind5DZflzs
         0yqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cl87Pb65ZHKPijudNcKoRaFveoO1+omez8nkRsQXvcI=;
        b=MIHcOGatW/xsIbpnlTe+rRbiOpWRMvHd1UjtzuIVrJ3o2zaIWdHrp6Houybm2mJ5Zp
         dFBSRwtXOpbtMYXI6mDVJp1I5BdDl97uKddWxMN1GJJQmrOlzrqKgGXXoSxRY+zYfSZP
         TIErVqcHcIvwX9NFRF5ekTYMG34d796kKAs5KTsreOtynhQPw1+8caGDwFvMkVVMQCrQ
         FlEQNPDq/lUvcA1UZw/Yox8XaUBaCCdDxLHDzVtni5Q47EmWnjQUD8EW7oBFk9YOXu3F
         AXKsHTTktMx8/aYHDBk2XhTN4rLmZXPkatDppurCFqX7Mg2n0b21gj5eZ3B0U5pPTvUH
         AJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cl87Pb65ZHKPijudNcKoRaFveoO1+omez8nkRsQXvcI=;
        b=RNSwXTft8BZ9Gpz07Kl8cI41S/n27JVZeLWmaApueXHnkjvn+IfIQsoccgS4VSS1Ql
         a58Dhtowzpo/pVTO1BZcQjeJL4UKZF6mWdlnDo1/r5k2lK6d61tmi/jKy1QNnuS5of88
         pFuZJy9WHKKmOcwJkAxFFBu/rjBN/0qhOXinRcrSAIUMbj9/wMqZnyebbAQtWXDPPQgA
         UdVplinfU39fRpgWjyqhEdkCXE2vCWlqY5pbz6xuxRQcN/znP/JfgaLEOgxBO+dXg/XU
         W39+kSs1Iqb3eo/DgpBDso9oFnlbLf6Waxg0/m3ARdjKQU6CKh7LowB1yT6+93BgaRlU
         13cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sHDnq2wnnb8lHyU6Sb0QY/qqTrW+xMA2AV3OeeVZ2XNBY9shW
	1flBVeYIKHQTnWMhDfr+amw=
X-Google-Smtp-Source: ABdhPJzRy91V/WdYDZ9iqk0INj6rZ5caAQa4Ihiay61uy0aZaGERnHxN2Z8vl1/ztS31pP5ufILA0g==
X-Received: by 2002:aa7:d985:: with SMTP id u5mr6404515eds.160.1590783853282;
        Fri, 29 May 2020 13:24:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5c17:: with SMTP id e23ls3140062ejq.3.gmail; Fri, 29
 May 2020 13:24:12 -0700 (PDT)
X-Received: by 2002:a17:906:7c4e:: with SMTP id g14mr9672959ejp.353.1590783852829;
        Fri, 29 May 2020 13:24:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590783852; cv=none;
        d=google.com; s=arc-20160816;
        b=bQ5R5bs/A/ODeBMdZo/BUHWt5mOMAFNC6SPLbQPqipnqFC3JU47vSVtj3sxm1GnWME
         7BTcMa29h8OBd8y6Ae/OuNYvWkYokvnW/fGD6NEgxqpfKT6hQeMn0emDGRJWZqES8o/E
         dKcCq1IUZn0qrIbhqcFLHG6ZWi38nRgKYMmSSkUy3SzQB2ImAq2+lmjR+As04nw/rfVQ
         gb92S6gMG+YEJLClcv3snsicbQGuNGcUaqCHkCPSyofMxjVZPKUScF8XzpgNbO4HrMH0
         zE78acG0ikMHafL567MFHVxsfOz2zO0UHj2YEfFrJQmdglyQIEik72As5+TA7gvJcsne
         5DcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=aqfNyyXPO/c6T3aUTigMVUjFr4PBiu5NcbE6Kyk3MMs=;
        b=nETZdEEB36KGEKjaLkk1UWmLoxg/deM+r++FML4iPH/xO7rosjv/bW+Xw4G1Yo18zI
         WKWfLLvlJPqkSKNnaQS/fFoBhwjrQRKEoao5bYVkhbrtQG9s0JQGOXzM1C/mcN9ReGjI
         l6eZzYykiihK85+pGzc3WLHAqkzsIEZW4SyHkMkt//QKP/Eab6dgpZW2S/qoK6tqo7m/
         /d0RFamB6AoMzbe7/+Og1edqYCFhXqAnQeRFVncS9CRGSzgONTNgZNoO5GI2+8QXp5DI
         fqNGfKk4Z+XRFomhZauqQH/PX8BBhhHBkpwIpKpE0nG8q7DD5VZPC+AopfElv3NgGl1w
         Ed4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id cm25si502482edb.5.2020.05.29.13.24.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:24:12 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from mail-qv1-f49.google.com ([209.85.219.49]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MlwBf-1jEk7b0yVn-00j2l5 for <clang-built-linux@googlegroups.com>; Fri, 29
 May 2020 22:24:12 +0200
Received: by mail-qv1-f49.google.com with SMTP id fb16so1706666qvb.5
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:24:12 -0700 (PDT)
X-Received: by 2002:a05:6214:1842:: with SMTP id d2mr5946816qvy.197.1590783851109;
 Fri, 29 May 2020 13:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200031.4117841-1-arnd@arndb.de> <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
In-Reply-To: <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 22:23:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
Message-ID: <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer check
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:zlwlG0OjDlUoNpdcZadJdEFz/Hhm0boSvGFZZwS8zMpJ5tXaUKc
 acbPOroudXQ7XEuRgmI4iJK0lrX81GiXW398KIc2ufM5FWApfKkGMMkhAPtPtoqZ/tD7z2C
 CuV+Hq/3UKyeQx5p2OzCf1BCtmRgpDanTSe5KL/1T69v/kXWzlwVfxGeNoiXfROpjdY5zld
 V+ghdQNOrGjqaeuQO8aPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hMpNVEEousA=:qEDP+Dx6xJpvAECFGreUAD
 XZdu1ca50LeizQFjAkOMak96duY746GElJbPKsWvzfNJmX45BWByoj+4c/eYvH9amiipR/XfU
 DwVRnqZGg8zO+K+z3NfYqfk/7lEy4gRtbvqvHtZJVobNk4rOOyPPh1QOPRvcnA8m7qNn6ULVA
 GyxWKi3q9+hQP7fbj2mmc0qoUTTutK29XbfKaixarZXbVen5oCZrMphEtClvOsvKrrgMgCm2c
 xgeRqAbV6tfWVaJyf6VrO+jPqbjmdP6AzAaeDekmXvSh864A/kn461DUGFbrEys/KXhFDa5z6
 7tcLKfyAzlITh7jYhT9zJ1To68Gvfk9vIxHyDZOl0v8PY06vw+BwJkLvSXNzJQZR6VbmFUw+o
 jCDRF1T6G3njJXNKvQxPk1Z7PdfxqASJvu6zKNhv2lQpEc0Ty81QelTOJe71D9/tv6jg46Iwx
 4XBUc+6oKl4OkE9ytaaqcvspMt+xeg7wQW7XjZF8mvhlIwzDIfjDpvNPTtYF1OQtE+X4naC2Q
 aKoDcG/yJZO7gDBi9+dvA9oCWsmBMaV6XG9vdoSlZ7MnNu6QOUr5jPfk7PGQeHxQ81/uUC51m
 Tr7KvEOwC2v3lZ4IROPmj4jdAj+hRsu3EW9Bed1FA7iZJl+p68wiz/eXN4w8kRrPhLQce8lEN
 AlRoMoFMDDIz87aWSsYCCZfq7+6pLXzJTrdstMN2cKYzs4BJ7Z3Ms49bdWOdzSI4VMBzwbMJD
 jKSBKV5Dv72lDOq9B+2ngfyt29k2fgFQs8eSdcYSdMRkvwktuunJUnhp7UJVJdF3Rsb7VKhzs
 gdrUcQGDn39UeHb7GbdBgxnudYKqras168cX7VCWZnIljVOP5k=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> See also Nathan's 7 patch series.
> https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
>
> Might be some overlap between series?
>

Probably. I really should have checked when I saw the number of warnings.

At least this gives Mauro a chance to double-check the changes and see if
Nathan and I came to different conclusions on any of them.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2UKC%3Ds7re2P%2Bqfxz8eqeC%2ByCcPGuYKkgji9N_ugdgWhg%40mail.gmail.com.
