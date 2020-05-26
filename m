Return-Path: <clang-built-linux+bncBCIO53XE7YHBBO7MWT3AKGQE5LNPE5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 259B11E257F
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 17:31:09 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id m15sf16839924pgl.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:31:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590507068; cv=pass;
        d=google.com; s=arc-20160816;
        b=YRP/kUtrlrqG2GEoVMFopIN5VhpMY26cMyhMXFmDuriVI94jXj34VvNaWk1ZZjPqX6
         qd5cFF/rlGbojK+5aUd33GnvwECXgGIzOZuAxWnDTb9yssrdyW50WW/X+r889Be2TTZi
         dCwNtUvo+7fCg9pj2iMk7QQmlr+tp/c3XQzt4pxSJnsuXgdnyEQi4wHvYWrsNByjGZ8k
         fYjQr6/8pu2dEDf2y4w2BNboT2C+9Ta9ZQlUkVeqrDsJ9mb5nRg4ZdcAvTKEy2pVQke7
         OHzj8YMIM/biwtIAWdfidooh8gPzL/Gs/JJy85B0lWpnABD6AKBQFkMs4CbdZD0amZYk
         Nbag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=q7KUBdtyAc3sHOnXCkn1IXCrav0J5IcI5AL4S5DSfPQ=;
        b=Z+UtZpjtSYURSkFvmh7qeXPOEBcmlwqhQh5ubiU2Jj55OUrjHdkm0WpIMtgKQcj5l8
         jaDBLi7V7aja2GoPome7zLlxeD44d1Q8B0fPPG+Ta7imi3Cg+UrowfP/Gi5MD3gYXb3A
         vhzaErDKIcvReBGkQJNM1ugNQ5Tzx2LHYJX1G1mLAsOPfsjvmgVe5FQPRrJIHIXhjDVu
         FgejA3WCz7zFNu5o95mNe5CQxx5RDX6eC1j+hr3jHaspJl+/304IPzBWDwWJbiMqnrs0
         onwG8UIujhVhu+tELea+4tU6icnzIVNaOkszRQGi0OEJNT/kpV1FFhaFp8pjNksdDDmG
         aigQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MlMqhymq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q7KUBdtyAc3sHOnXCkn1IXCrav0J5IcI5AL4S5DSfPQ=;
        b=DMxgMnpZ91DpeqmbM2+n+pV+3z+n+5aykacCxqvHhr4SCaNCHXm1pUiw098G1fRjDO
         P2ZhrKxPozmESypJuiNGzFh0Cmx2PK850+QlReAg0nxs/rdAMMzdFFA4B5OPV2q11Aa3
         ud77BCOid3sowxrD3ICdSfEaFPrsOpCK2ra7e0QYi524f+W0DtZPMlGdCOWNfDps18S+
         J3nxcVGo6ok/G0T30l9Fb7+wIOBA7SXJz9qG33h88CeCt2j6QRxvpCnSSkB7yWp2ocm7
         UwSYsEqgYuwyToTgLb2B7VqZP/e1mWIblCsaTb+FGZ3l/hX1HzHSY7cGuPJEj8GtU1qm
         +0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q7KUBdtyAc3sHOnXCkn1IXCrav0J5IcI5AL4S5DSfPQ=;
        b=fV3kroM4P+H4HkxqD4WmBcAEjXdWEZv4EH8RN1SG9HQ3m9HDPHuTOcEUF6bbPoXquJ
         +K+0E5Lh9MwNVN2zKqQzrQl4WtcyYy8fs5mKh+Cl00rEwQm2SRr8teqOGzOrKKOAA3gq
         qjGHFAeoJ8mAMXOrt2ng+HBzAC7MS7QZZ3sku6OnjkiJ2abfRFLEwYlTf8XdVUdVI0FR
         XQYatHgZbGw1JNs2qAVnQRetYI12bBQz4KQKtyk8BJ/6m8dKs9+PkoZd0wnSJywvMNwf
         6kYQtLFWBncPRKqeawEqRcxWQ8c/nN0GixI8qmNyQ0oakPd4GynsVT8eRrVvYJjcFtpM
         DPtg==
X-Gm-Message-State: AOAM532U0vwnTRF2V/jC59dywWxu8/SLaH9DQEMMJ0foMgmjatv34e2h
	yWLAm7e1uTDabj2W14hFqLk=
X-Google-Smtp-Source: ABdhPJzn6eD0TMTs8NxoGNtum8/iVYbSdfvzpVxfTIuASSeOQfutOATtjnf4wLQFyMPWql01eJ9PHg==
X-Received: by 2002:a17:90a:c7c9:: with SMTP id gf9mr27470919pjb.19.1590507067866;
        Tue, 26 May 2020 08:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c086:: with SMTP id o6ls6151408pjs.0.canary-gmail;
 Tue, 26 May 2020 08:31:07 -0700 (PDT)
X-Received: by 2002:a17:902:740b:: with SMTP id g11mr1644654pll.158.1590507067388;
        Tue, 26 May 2020 08:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590507067; cv=none;
        d=google.com; s=arc-20160816;
        b=NjtQUKZZDeePatB45byCkkNiOA3Gub+spVkLy1OKFp2644z2jXKNFt977ZoTm/tipi
         J0SqUKgNRCBxItA++7LM20MYJXcdVmWdt+8BKlQGtA38Faf+/eCtTe+noXl41JxzRUzp
         4pkbeLf0Ovg36ghyRlFjn2ugmb8gaAc71fpfBFc3Vuc5PrvRSPckNk94Dft56jc2W4Rz
         Zd01EPp4gw4ju+KMMyoiDTh+XHE9VGaYw2S/QlYZ7v0P4offFqZj+Kjs7h0Rls6PD02Y
         bMw6pOuwaI/oqJsSyk6LHjQHHhiA10j9IX+U92lQuFXWPZH0YOJlF5SAw48zEsuW7gWt
         HWXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=nVAali8dSpr9v23zA2CiQyVc5uAWU4kfctYwAsBlH/o=;
        b=a5KIjFoi8FKidxNSLREkxlNlS8fiBokYDFsS9zteEIgX7eRu5vzCHGOh5xNWP5j8NM
         V42E5mromgWYLUL02ENJlsgAMQok+6MdrmsRaPZ2slLRUy1rCxkRmN9hnXr3DmN4Wa1L
         vEQENK26Cir1tG9wOkT+kJvGk0aW1dI7ZznZWf8nbbthOqFZu+g0muIDzEJg11a8g9M0
         ENx55XhiTOOr1aev3MlYGscsQ71g033Iph8AUq9YnapPzZekSVfrbc+8CkED5Hf8MB+f
         jO5uQ9nIu/PYwESGQWtmGbFtg2jOayIYQeTx1sYg4wkOlDcob8lsFLHdUBJy9nhymqv+
         vb7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MlMqhymq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id i4si11902pgl.0.2020.05.26.08.31.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 08:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id j32so1486101qte.10
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 08:31:07 -0700 (PDT)
X-Received: by 2002:ac8:768c:: with SMTP id g12mr1859594qtr.51.1590507066478;
        Tue, 26 May 2020 08:31:06 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id n63sm7791312qkn.104.2020.05.26.08.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 08:31:05 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 26 May 2020 11:31:04 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200526153104.GC2190602@rani.riverdale.lan>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu>
 <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
 <CA+icZUWTKJ=-OGJPzqm6HNQMkB1uS_B0ydU-9Xa035wB7vA4iw@mail.gmail.com>
 <CA+icZUU54K8z2--6fS=LEaMJGgeWfudViT7ETMsSYF1i59_4mg@mail.gmail.com>
 <CA+icZUWH9fFURgbiCuRr5-mc5s=Ft97_TMP4YofDMX5zEu4_eA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWH9fFURgbiCuRr5-mc5s=Ft97_TMP4YofDMX5zEu4_eA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MlMqhymq;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, May 26, 2020 at 05:07:24PM +0200, Sedat Dilek wrote:
> > >
> >
> > Maybe this should be:
> >
> > [ arch/x86/boot/compressed/Makefile ]
> >
> > -KBUILD_CFLAGS += -include hidden.h
> > +KBUILD_CFLAGS += -include ./hidden.h
> >
> 
> NOPE.
> 
> This works:
> 
> [ arch/x86/boot/compressed/Makefile ]
> 
> -KBUILD_CFLAGS += -include hidden.h
> +KBUILD_CFLAGS += -include ./arch/x86/boot/compressed/hidden.h
> 
> $ ll arch/x86/boot/bzImage arch/x86/boot/compressed/vmlinux
> -rw-r--r-- 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/bzImage
> -rwxr-xr-x 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/compressed/vmlinux
> 
> - Sedat -

It needs to either be $(srctree)/$(src)/hidden.h, or we should add
-I $(srctree)/$(src) to the KBUILD_CFLAGS. The latter option is added
automatically when building in a separate builddir with O=${KOBJ} (which
is how I, and I assume Ard, was testing), but for some reason is not
added when building in-tree. The -include option doesn't automatically
search the directory of the source file.

-include file Process file as if "#include "file"" appeared as the first
line of the primary source file.  However, the first directory searched
for file is the preprocessor's working directory instead of the
directory containing the main source file.  If not found there, it is
searched for in the remainder of the "#include "..."" search chain as
normal.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526153104.GC2190602%40rani.riverdale.lan.
