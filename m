Return-Path: <clang-built-linux+bncBCIO53XE7YHBBGGYWT3AKGQERZ5OCXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 756791E246E
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:47:53 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id g20sf20477129qkl.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 07:47:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590504472; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bs1nloP0GbIs6bt6AVVIXc0Drbyf/l7GD8Mik0sSn0tdCnPPgaD1BCiD0tCtxb85pb
         rg0sF4q23oQIUTVJXOfLWeN8HFDoRK3nKiJOjJtzcfbibc4vZBwRBH10YCtEuKSxyGt9
         VgWp9tfX//9d715FwE8VAhLURnEQk6xGAVHraqi0LyaoCSqlqYSW0/YDpN+jTClT1oeP
         CT95KY0Bo6e2JcyNz0k1FXeJRLI9+qJhbg0BJUJIOFti0LrPlntR/nsNRgswF6OcSz35
         N3/T+ugubjGngbfKikhOmeBCvXFXAe6oepmuQBWsO9+0AX3yzoANmB7hsoaVJdyBQg57
         B4YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=SVjdasFZzNCJJaJia6gY96sQwHniQJrAVGN7qQubjcg=;
        b=qJOR+/rpipAsnbBpeuUP5QT9XM+ZNxmOs0SL63EwQY0bg1vQ3oVniXh0C5pocjpde4
         xWycUkVO/GxomHDLahU/+zjnkLBxlI5ZTFcHVcGB4e7IWgmruw2sMHMs1t5FHxXofRYv
         yR8aIs/7HRJTAWxtxosWTnFkTP8O2TldjznvUS+c2c6EnL40AyByp224QGFDaFVV8DGk
         tuyxO8pbvHZ2+VsBIPNS4ROG/+EF5grKY4RrF21PY3bnzQYjQvr8iFhnyTeP1xUE0sdl
         5C+gISaOz+Pnbxqgopy/0oXTDa2/6PguEPteMe/PM9i24YDXF/8MAYXUsbMBM1IC8uAq
         i76w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uoMTFB4J;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SVjdasFZzNCJJaJia6gY96sQwHniQJrAVGN7qQubjcg=;
        b=UBkVfE4BDb3kBmkyDtmo9XVbzm4DjpzDTDvzvtXMwsoGG3Nh5ZpSLO9TKQIzXXtsUz
         E95d10QzUflU/Hq2GtoPFTlHtKenPQ9y1VtnoNbYBgQhSggOjys5I4NGhcCBA2kzclrI
         x2BGQAt/Yh6fkXld6O6mpsFDa+WbjxfUBW2B6v5PTLZAy/fxWVbhmOhb4+dHAazygcYl
         mUcAANmUEHOl14zV/2AKGoB5S2hrkIDSahgd4+qJTVBicnkt3rUvQKdE+g8vX+oS0P8l
         /3ERKkUaIvun+xD/FFiz3aNf49vCqiToGHY5i0ouS1l8Cw1DgXxUoXMbS2TZk5DLsICr
         rsog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SVjdasFZzNCJJaJia6gY96sQwHniQJrAVGN7qQubjcg=;
        b=O+v3zP8lfJO3KPCpeTwJU33TVBqmSLDDdIe4Lvri5vRNp0uG+nhy+kBr1meivChtaP
         jNi1v20rzEtGDXAw05xfjcMhrzU8mxoqjx6CXgweTVOx0KZsqWIHC+hX8grvIJ5nl1i3
         LZ56/f1bmSUO7DAmNsb/3RXMidRur1wycdtvjND4AO56HOR7546oKbEoU6xMK0syiowJ
         SNwuPTJ1PN25tDv9ZBC8akqhPEowRlEZcrDwFWp3ABLho1R3d7eWBkfvEt4+1ACbsSdW
         lVvQGof3mDo4SclwOs7o36qQz6YFln41UgeoQd/lxmritFvwB8uMqFF/FiaJqmLcARPl
         jZvA==
X-Gm-Message-State: AOAM530AZkYzojPoOTV4PhdWZoG64P08H+5wqHtV4O/5s/AH76yncXvL
	eHSPhO2EJAOpuryoQI5o97I=
X-Google-Smtp-Source: ABdhPJy7O1IjEW7ZMfG+euRiR4Wqa+2W4mp2kiz7LFd25SSpjKEOYAbLV5wKqLllDlGeTjR81BBGEg==
X-Received: by 2002:a05:620a:556:: with SMTP id o22mr1755630qko.434.1590504472441;
        Tue, 26 May 2020 07:47:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls323324qth.7.gmail; Tue, 26 May
 2020 07:47:52 -0700 (PDT)
X-Received: by 2002:aed:278d:: with SMTP id a13mr1685985qtd.23.1590504471848;
        Tue, 26 May 2020 07:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590504471; cv=none;
        d=google.com; s=arc-20160816;
        b=vVqp0Pf4RZMAsXDP2LLU47Da3b2qHo9emQTtcKDX/sg0ddM9UN2MWCqFqsH4MZomsB
         cWGiTPmtnOJxeRtYokAj5+GZe/gX2byDbs8Xvmh0pvH15DVJi6MgfXDAF64jFs39oVDi
         a9cnCxVDzxPg4qdPsIIULwb4/nhDavAtU9pF7RKRPmAGKFMJcbH6MWlw4wmcKY3U4jy/
         NvvQkj3687Xo7KyWpA7440GkaQJ4mj5MP6Hll1l6VEuZ3Rgx2U1Ttb6fAt87YV/vjE6s
         S8henwWyVfZGsVFy8mNnMBYtqEWJbkKRQmJaJbjnAgNmv3muy8j8pU7D3Qvgef8Dxd69
         QgQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=DF52Yl3w2y2rZvHSbpSmCXcEBNFth4QYKFFksKvfyHA=;
        b=UGoeeiNTzyer1N/YXK7UrGEIMW3DZQiUAEuwlsECbUfCNwzonvUGR4n6FEEaZiElj9
         e7qGwJNHbfVN45SAmdWMR2nubDK9joZrNSaWv+1jvtKvK26Phpzc6/wk0yJlwesAKY8m
         g9S1Oy3Zlp27w9zdodHV5/RLyCAfsg/3ukYT/GYjooYducFw3FODW5vYV5pYmhXeTlM7
         o0fvMxA8zW4JMAHbPnYU2AuFt+5dw5/H982h4egpPQioKM5mEXjNboFekN1QCkHDkK7M
         fVDwX6ilz3rP7xun0aZ1Ag2GPRHpoYaTYt1ASJsJysETWXPHknNLM+dYxs/8KQptnEOz
         2Teg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uoMTFB4J;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id z206si10412qka.4.2020.05.26.07.47.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 07:47:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id f189so20783223qkd.5
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 07:47:51 -0700 (PDT)
X-Received: by 2002:a37:7904:: with SMTP id u4mr1723991qkc.297.1590504471446;
        Tue, 26 May 2020 07:47:51 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id b189sm7453670qkg.110.2020.05.26.07.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 07:47:50 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 26 May 2020 10:47:48 -0400
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
Message-ID: <20200526144748.GA2190602@rani.riverdale.lan>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu>
 <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uoMTFB4J;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
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

On Tue, May 26, 2020 at 02:44:29PM +0200, Sedat Dilek wrote:
> 
> Are those diffs correct when using "x86/boot: Correct relocation
> destination on old linkers"?
> 

It looks ok, but that patch (and even marking the other symbols .hidden)
should be unnecessary after this series.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526144748.GA2190602%40rani.riverdale.lan.
