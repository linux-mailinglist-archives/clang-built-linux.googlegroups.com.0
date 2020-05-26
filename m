Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBSOZWT3AKGQEJLD2YCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E441E247A
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:50:50 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id v186sf1855200vkv.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 07:50:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590504649; cv=pass;
        d=google.com; s=arc-20160816;
        b=OwrMikeCtxJtGwCgwG0oeCyqPPSdL/XZiOkAWsCKiGdH9I3pk90grkQQWeAnbquZLh
         ecWUNYcsJjmejHbtbaWzvuZgji5q5CIaun+E4quipdksxDnjC6yDwfHIDuWGp5KsfORj
         L1Wu35NGxLxCzyzjCRAjPCuBpQKZCrmEeIisyO2t8ja0XJMNMDpMM/eY7IUegSEGJxZZ
         ycofmrCZ9P73Tldg/dqL4OmXIfaIpLc+WSaFb+6w4PQ9fuXOuobzcn16+uiUVDNeYlOX
         xRxLIoe0qtcA7TobCE+QsdSiiVvuJkwm+5ITlAFQ5my66iC5KkXAWXa5t8+Dc28KXi5y
         vbCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=n+5szbeMMulZ/7IunDqxfVBzKo8k+/uoLZ5WfsnTY2Y=;
        b=sria8HwXfztF6nTiyUX+HdB73IdEh54zSEIQ7mektCodySrB8CrD2kxXAj/UdD47Lj
         6Hs/ZZz+W7Jsk23RmllLRl405yUOuZCx15yLxV9iq5yH0C7G2e8JfkR6CkS+2leMr+OR
         +xPXttLbhTjb2JshwU+sUqBsjBix/6mM+IPLN2Ex9MscgwoOcfpiXczZGrOOC7k910GW
         EWweuA9FpheoEO4lACmYlZIxp3RSsdGmI2PDUWAPQf6NB+KmnqxBhFXWYLPF07iqmqPK
         9pxlB/aQeLf/sZY6pTSMx/pq4XTK69Ul90e0OFYCxao3vn/tbDyGeRIaOenOqrEb8Cjg
         FVtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VLDQnXvJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n+5szbeMMulZ/7IunDqxfVBzKo8k+/uoLZ5WfsnTY2Y=;
        b=m5SBHSwTL2qO9Y97sjLF1qP2dyKlys3RHinK/AVR8wP+4kT4Odc+sf7pKajVGWs4VR
         urmiDm9b/NRHvuMS6S+0W20YiZ9F7MS/8M5IkiGo0BqYXuFVii2fKWG838/5utlke0tm
         7TiwvWE8AlyB1gzIksaPhorzekJTNaJfGzNOHWYjTRbTg8/oQ+qPevmPy4UIwqrrJUPX
         3sduCcwQF/e7ZPzv/WD7hCoODW8wNcFvah8tC3/ChZ4LzB0+8OQ57dXKz4TjheHmWFBb
         24lDJJqwalKBCSEIJN3c5SAWuC6zNggSQ5z1yVd3Tzf/xVWMTD8Sz4KLvtTM7kBCORyp
         5oxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n+5szbeMMulZ/7IunDqxfVBzKo8k+/uoLZ5WfsnTY2Y=;
        b=rUqsLGeZukbDdIBKZJAHEYguiyOuU2W7o5WC4q4h4VyokDpdEgjO+j/rjEp5pvEjGI
         UtalrsB34T76+lkvzwDo/SoJVtxKcZeDzS9qySvoQyRYmozZFczreVgiOZEHSQoFHyQv
         oXHHa8zo4Xs+ez6dE1h7vM2dNfHgpGhaBvWnLptncHzuwg1gxT0Wx55p3u+w/8o/7kYc
         KRBg3ifAI63UHwj2A3/mmF9StYwYhYCdIMBPy+q8S5GShZ8r+eEklub9OmdAVM0xx136
         tVHN2ofUE7dY6zIkuarOhzlM4JQdMEymuJK+iwKaKKyrY+tqUjvPPNi7SdyoUEBcpUAu
         a3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n+5szbeMMulZ/7IunDqxfVBzKo8k+/uoLZ5WfsnTY2Y=;
        b=srZwhYJS9BtapT8iw2RmQUAwUE6eow6cjAIj1jLZP7PT8enn9XLiwiYWvoaACBtalf
         WGcQmV+jE+CDMVg77qjETAkOfR2O6w3Nh+ArnoY8uXNW+JMfhZpnN6q3d6yLvuReqxqi
         pEVdjwQV0JH2jrjysKlEXClZT2rw99ZBurzym1G0JOST7wwubjwTAAvm8FHxsHIWMlKt
         lEzDLuCxMKUnIeE1Yl3ayJhKlKNfySe3vBqpKze+CBNbkOF8IvBqN65Cx5/RPI4y0Xbw
         L2EBO5NtHTCQaQfwKmY4QbjY1bMW7AETYBuB6HWH54RnYWGXbx8jxZKAHRZw2P3tUaQK
         FZRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oLc1KNw9udDk0PRrRdQ4OOsRzjIlltAWXDIssGh/Su3pQUe0w
	CiK+38uRSegCF/VZ2tmcuV0=
X-Google-Smtp-Source: ABdhPJwI5hiQXzzss2hfb+W9V9UWITfWUZjVsNiIuBH1IIIp0atl00DO10DFXkj9izCUQXct6HysyQ==
X-Received: by 2002:ab0:26c6:: with SMTP id b6mr999112uap.55.1590504649433;
        Tue, 26 May 2020 07:50:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:418:: with SMTP id d24ls1144863vsq.7.gmail; Tue, 26
 May 2020 07:50:49 -0700 (PDT)
X-Received: by 2002:a67:c299:: with SMTP id k25mr1252929vsj.153.1590504649129;
        Tue, 26 May 2020 07:50:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590504649; cv=none;
        d=google.com; s=arc-20160816;
        b=LzLVDuHKwgx5SQzVyzQxSF3Ki10FQCQWQbnqMDdgEEcI/6IPibbFvop+LUyXO82Nhh
         whBfTkvTWysvUZ45A9BZUaNSWB+7fw4ffpUUA8bffT17bYSkeFyGrXhvZhYpVmnPdim7
         JVFcvJMBd8kdnr/THz4fBSzbOGqQQZ7W2xYBWiDTkN7xJwjIZVoqLfdhB30kiU+busTH
         SdSBrXkl2Czo5rkPCNJ4WJaUfeRYotVdI9DSdHRJ9oweGJkpf2pA/jESNlnrxVMKO3hc
         ZXYCGs+lz0q2acp+Yd46O9pA/M9osv6gu6l7m0AltE9gO4m7DX4r/p40RqtzrX8YdNcJ
         P+/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FbUiuUW4vTI9FkH1b9x6UXie+S/h0OMRQDnvFR1qG2g=;
        b=qDTi56yM50NCIguJfaE0Hi/1WXH0OdOO0tGkTINoovzc3iq40Rl/hMCEw8/ked38PF
         AMvwSQ+g4Vjjcw1znR4FNlErnDmaT/W41tfSnfqC0vcCCzvhBtxnNnzsCTEr+Z4HlzIz
         kwrQDWHl86S8DqaJZs9/jKkYUyKdJfwCQKqt5E5bMJze7iWY1lGOyaF4UxOJMbWiISFQ
         2KNGFOE1PwxGA94Ewe6YGAKMC2BWeenIqYEHBrRrwNkRW+1WWp5IdJ2Ekm2Rmq4tLhhM
         UoKDGcVcGuLA6XrCVrVQop/4j4lBOtTnjV4QtqIHn47ZO9y+w1D3hvJ13/h2hfbqvnv2
         ASOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VLDQnXvJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id m12si11600vka.2.2020.05.26.07.50.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 07:50:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id p20so8841724iop.11
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 07:50:49 -0700 (PDT)
X-Received: by 2002:a05:6602:1616:: with SMTP id x22mr17674825iow.70.1590504648661;
 Tue, 26 May 2020 07:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com> <20200526144748.GA2190602@rani.riverdale.lan>
In-Reply-To: <20200526144748.GA2190602@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 16:50:38 +0200
Message-ID: <CA+icZUUY7a5XGwcQQ511OeoTjOzWbrgF8BZdTrLDK09QWG4hwQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Dmitry Golovin <dima@golovin.in>, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VLDQnXvJ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 26, 2020 at 4:47 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, May 26, 2020 at 02:44:29PM +0200, Sedat Dilek wrote:
> >
> > Are those diffs correct when using "x86/boot: Correct relocation
> > destination on old linkers"?
> >
>
> It looks ok, but that patch (and even marking the other symbols .hidden)
> should be unnecessary after this series.

You mean _bss, _ebss and _end?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUY7a5XGwcQQ511OeoTjOzWbrgF8BZdTrLDK09QWG4hwQ%40mail.gmail.com.
