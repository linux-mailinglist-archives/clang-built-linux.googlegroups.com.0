Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI75TD2QKGQE4BKV5FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id F117A1B9509
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 04:08:36 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id j21sf18783676qtq.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 19:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587953315; cv=pass;
        d=google.com; s=arc-20160816;
        b=zO2M0S6CPgRw4maLRnrH4wmp8wZrTHYHycNX6D6A25j1tAQJtv6PwuGsQcD5rd7Thm
         Rn/VDgyHTdoCrROrHTmscbP9/06fWpM/ntXwi6Mex7Qqww9v2MDSFt5oZplgpIaENBeP
         rIi0jiF30xhbKb+X/UnCm9cnAobwSGQTRXFSx51MEGZ8eLcHe+qC8nE+LfIC/BdgggOD
         UqpzisftpGvabBsk+SuaKMwzOx8R0vZ42dpcE2D4bNfBxh/v7g1EJvakf/P46jsFSaKo
         3Tt/ol+b9XOO0rkC626ncIvxfhsrffjOE7tkvvwoWDDw4qyN5d45gceNNlXrx2Hz9w32
         k0FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=5Dvz0zkPv5LzIxkbp8KoIMXMHvNxxMfmC3EJSYniWKk=;
        b=q+zUt9lBzBrB9oJEyk7rr8e4k50kB+/icPR8P8A+J2g1ppkC+WwXZ1/6ECbO5ehYM7
         8vnjIcwSca3455paR3bfOA0A9gEpdXwjcQpzUahshwIlCREDU3OOJa3H48nrcwtNdiuq
         k05T4zPSOj5TqyBS+e72DvONJxMhtGgrfddtDlti3+N3vFDm5G9gYvN0noX0gCowQepP
         VSl5PnENyzUOC/suqrhlafyPVP/wj88rtoZ5jKwRoGtli1su6LE/prMHnogl98o70hm8
         1nSqs41CsXUi2mscHFCBePFJ1Lqzzwhxvw8SIz25Qt7dJCMy+B+CVzoWMBYnCKpT06x9
         016A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bhyxtfon;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Dvz0zkPv5LzIxkbp8KoIMXMHvNxxMfmC3EJSYniWKk=;
        b=r7hfUYT2vtDaXT/+yNj6xSAdVoIZ1WSUAbcDpw4CcuXpSFEJEoa2BI1daj01F99o7s
         GbLY5eII9eUHE5NsrUy53B52vagQNdYxmAKM9yljNJtXO3KsgpcrVZq2qhja1looZTLW
         wIkY3CSsqnfSuio+hEnJgOF64JuecEzARtvAdXBZvEUadw7kG8EloESRj23a7yslxI0F
         Ed5S10BaTVZ5IEZf5nhM7rsw4YgqWi/RZXKzhPFTqBJ7gXosSPpn/Q7X/rnZgTzVrSYK
         Ce9aEIWAat5l5y/iMCQgXA+FB748O4jh3db8Gr32uOTpTcs39uxHkhuDS6O0umNJIrWO
         Tcnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Dvz0zkPv5LzIxkbp8KoIMXMHvNxxMfmC3EJSYniWKk=;
        b=P92AiHljI8hsKDKMMxyt9/Yf1yQkBrAqTPBftI47ajk7R5PaZbNW7OADIEk6G7Zbd4
         0gYy8elqiZh6xkyo5SbaXO07TXyeyYr128+TWzv+ddtebgkzWaOEIpj6/eFzpuFLdFzW
         d+Xvzp5LjXOufRyaGVKKwrogTGPaRzPyuuuA3SB6XPAzPyzAh/tuP/VNL7TBYSjc7HIl
         pL7UJKUek734J4+MbzfMUFF9fTRQWVmFdTedH1uKE+VVZ/lQamKg04szbhcEF/tGP2Sq
         hHQFM8+msC/npP+RaU5Gikr4ZyuDTH5RbPeUszcYah/5YndcGCcJkrVwWuDbEExUjgIO
         G49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Dvz0zkPv5LzIxkbp8KoIMXMHvNxxMfmC3EJSYniWKk=;
        b=k1Eucq29ywN4mH1jxhTyxXML3OP8Za5kXSYrl2LjNzDBdHfa3wr8JJVFlvy6eVSixo
         7Jg1/w1UVFO6ac63nk8nLs2ufwMNuL2pYoXqjq3mEpJC1j6j7fOJSJyZzrb0gtx52lcn
         5ZGTTitacX/f1MHVLjCRHyrxNiBw/MiY90LwhqRrdJMuEbz0Wzdtghf3vMZc4R+B1r60
         tQw6ZoOf8s8rzHUejQOz1ESUF5OHrWkBRo4U/t4cqEK33ZZcyEnjirtJJ73dPDn2mbVp
         Jc0qgEl8d0BkuXbw3EFR+A94aTxnvVUMrtlfguK4gEfrcfDKJBhhJvD5XZJqXQH5J0+A
         P7Ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaVFnBNuKvwXe7kcI8Z2SFFai/fq2pAdiNi/9Eb903KrnfH3Hh5
	1QGCJl6v7hRNDtsPLXkYrkE=
X-Google-Smtp-Source: APiQypJfc5OPvSAkTDDtIDW2yfFjqbJp+EFh6+73Q+xuqI0Tj0keg1Je6zLv+98D06QOUMhiNTO+/Q==
X-Received: by 2002:a37:58a:: with SMTP id 132mr18630630qkf.303.1587953315463;
        Sun, 26 Apr 2020 19:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls9960098qth.7.gmail; Sun, 26 Apr
 2020 19:08:35 -0700 (PDT)
X-Received: by 2002:ac8:893:: with SMTP id v19mr20798086qth.40.1587953315170;
        Sun, 26 Apr 2020 19:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587953315; cv=none;
        d=google.com; s=arc-20160816;
        b=Ixc1uYIp2IGP/J79lncnkcOBjktV8DqKT8zHW512j6PYdXVEz1s0A8EdGPMpWBF8eG
         YgKH0igENGptMEwxUyv+XSCUVeaegPTxcE+0rzmC1qFflNiMJRS80T+yZYX4WDddZTpM
         Q7c0QxcQb2F3bUkmzj5ssA5bsL3Xbu/8KodNV73SAusUmK9/wpxObj69QFIfeSpBb83B
         PQ3XSHJKHdnamYWg053FTDcewoG52JMPC1wNH3TE2EIo4v/7xdZdZ46fJg5ifdB0YCq6
         wcUiWtORTJF6N+nysfXRALDo5V2MUg/aBqA77WKbIOrClKbQfnrBX7qV5ZkFAmTU4MG5
         NZEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YqeGjbRkHRifTCZxJaGXA8PQirJ4wk+R8m4oliZtO60=;
        b=OFs9tuzNTWPA3PZuWWn887FdeBTUI6IPw41kF2vGpZIu/GQbfvvHsVFd8rdL480x5S
         9kyf5eb/s4fQMr5zMHzLQ5Isb5we5RL+MgAdFFlhKtnW6ts8iXavAvXKKAw2cR47vmm3
         5fCmvKSes0eJ5jgjouh8/00c0WEVhitIfgaaAD1SbS/q5TC2KacxOuJoUmInLBWIl/VK
         rgmig4CoVQaaa5R0o77NEuylSDuYKZwkFqHSFE/mM9cpncgRhYUftUGFQCbsybG0c08O
         y7ScFOck07sWH5El/Ra59owM1UG/Yw1HQJlwmzj70herXS92h9x82c+Icl0eSNirS1nn
         M3+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bhyxtfon;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h25si334836qkk.4.2020.04.26.19.08.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Apr 2020 19:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n16so7962476pgb.7
        for <clang-built-linux@googlegroups.com>; Sun, 26 Apr 2020 19:08:35 -0700 (PDT)
X-Received: by 2002:a63:1510:: with SMTP id v16mr4873757pgl.17.1587953313922;
        Sun, 26 Apr 2020 19:08:33 -0700 (PDT)
Received: from Ryzen-7-3700X.localdomain ([45.152.182.77])
        by smtp.gmail.com with ESMTPSA id d29sm9179662pgm.83.2020.04.26.19.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2020 19:08:33 -0700 (PDT)
Date: Sun, 26 Apr 2020 19:08:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200427020830.GA260@Ryzen-7-3700X.localdomain>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
 <20200423171807.29713-3-natechancellor@gmail.com>
 <20200426162737.GA9322@alpha.franken.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200426162737.GA9322@alpha.franken.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bhyxtfon;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Apr 26, 2020 at 06:27:37PM +0200, Thomas Bogendoerfer wrote:
> On Thu, Apr 23, 2020 at 10:18:06AM -0700, Nathan Chancellor wrote:
> > Currently, the VDSO is being linked through $(CC). This does not match
> > how the rest of the kernel links objects, which is through the $(LD)
> > variable.
> 
> this causes build errors for me when (cross) compiling a big endian target:
> 
> target is little endian
> mips64-linux-gnu-ld: arch/mips/vdso/elf.o: endianness incompatible with that of the selected emulation
> mips64-linux-gnu-ld: failed to merge target specific data of file arch/mips/vdso/elf.o

Thanks for the report. I will look into it tomorrow and hopefully have a
v4 by then.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427020830.GA260%40Ryzen-7-3700X.localdomain.
