Return-Path: <clang-built-linux+bncBDRZHGH43YJRBGN7T7VQKGQEAO7YXIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A93A1C97
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 16:22:17 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id n6sf295426wrm.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 07:22:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567088537; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kz2xZjRD5Mm9uAAPevzjB3P3wRkxOTGgj9noHiLPof+Zfie2sl72Z2+Jzrsi0LQZ77
         Neuf5NguO1KzBa6pm0/74Z1XK3v1GX969p1aLvD6tV8rSte1psQf+1DmtyFywwE1nKRD
         ivm/Oa/YODx0MPxyKRn7gKDWT2k5y0PZ9GOVrFC4IV9PO7btcnSHApECMzy4R/dzZsfh
         mE5R1wPEdM7weFYTyoQp3YRoxO3W6Su95Z3mCiYhF+KzIH08K/jH8koncTFs5Sk1xJz2
         A/J4gs/Vu7+IJiugmm4Z0dhjx8T8M5GUg+PhJJm+Tmg+fzdruzQ2ubF9nb7ResDZXJIh
         vJwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ahdOMAXATKWYtNja6AVsGvYEnEnw2EhnM+rVEeQxck8=;
        b=asaYyCJ7F6+I1JxY1XQsntq20sgSnkTsXf0snz89yDnBdOZwv7qFDIOSER/DDWJbV8
         tgis6NMkhBHrjMXC34T+7PSb3wTRiZLlJjN5jkEfpUx829TDgg2v+XSCJ7HyiV775+1D
         fSYAEUbmYff/a0DuSTkK1I+C9s0YYlNf/mhc/xWp0+c4v3tELOqEka+EZbqKwEksZP6U
         bZQzTVxL3bMEO1ZlEM4UhO2qalqx+FQ3pvrxtI0UEEiHKO6KhJrpXZ/UwefqVHw6tNre
         OoiMu5eTexqlnQ/YdZV9qXjDlM6G1IV26duSaHguFbPIqBEw7o8C1d1kYFL+rN3ilEvx
         1eeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tmaluovg;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahdOMAXATKWYtNja6AVsGvYEnEnw2EhnM+rVEeQxck8=;
        b=BBeaXsXuxGA5VaVSlc966q0HyePTor7PJZynqMp+J20MMwFC9oO8eS+TBOd/IDn/fB
         +3iImA+KOvSfNadX8KEGuiOPE5RRhJC+yM+RzWj0Fs7QRZwUSJ6mDXlvOUZE7KqcmAQr
         TYFYTNuVTj4haw+5+9fy5Syj5dTLGBrAlqP4J5BtjTA3yh/K6CZ9T1XDawwLr5Nqnrf0
         L8YcRZHBd+0PRY0JzJfeFsVrJ58xqsyUqDxH0zPgV6+2LLhjBlVGm6QwgfY1gRVZL88Y
         o5JC5A0zjiG3lJAZyhItW1GC3B87RR73+AAGs7YPYUoyMiHksHGXDchkCT4YqwL7OWEz
         Caag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahdOMAXATKWYtNja6AVsGvYEnEnw2EhnM+rVEeQxck8=;
        b=hUzr04+qpgbU8VLeS1hcIL1GT/epW9S4RWdcjRKRULvBZG4w7zP7U8J7I0759Wo91Y
         jMWFUaz8bKP/i6+xuiOeCKVGO7e8NVMXeXf+3295bF/BRRQOSnornM4yJHTTg/G+/qF7
         6yow1Vc9YBOnoHxG3gWvMnfK1YS5UPowJ59NA+pcxWptGd92zKXDjFx0nEioegLhJ/0s
         +WB59Bs6zDe37Q06QT1nmE2JxsHzgHYm4P3w7TF3ZMFFBOyqm2J12cNNLljqjxSUsaxy
         oZb90dyZ3qQ5VGDKsyZst3crAUSIinnx1j2E2LBgb0glGBH4IUMir4uaufeN/Rl0uEPk
         +BEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahdOMAXATKWYtNja6AVsGvYEnEnw2EhnM+rVEeQxck8=;
        b=binrHnZvy9YIvvtHvYrsfIIl6yvQ2vglkSvzb5oQagRwtMY6q8VGPbeH1HmsgRqj/v
         ziJPaZ39QK8C6tDP7HF2ugXWcSG/qpuccxQm363ETcdMTm2JQt1s4vEsg4SbRmB6HyO6
         9rTCyPNc0kn0V+cyr3L82sLmIME2EpI353g4u9WreDcqvN5FgULFxlp03POIRjZ16oR2
         fKxgch9xAZZt0dG16A1sGlLsH25af4OBzeZUM777iqyxH5BQbTOhr+mfqiZ24Cz6Ht7C
         qTar9CKNqAWhK5CmJ+/alBvGp5xJifAT9xIZnhj03hVT62VWlY9fbhzTkm+2WbMcvc5R
         3b/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9eDALt9Sle179svWWnEvy/qoBUL6fcIjcTJXCXI31Zl+VMl7n
	TyTRgzrgRx2JkkecenQE01M=
X-Google-Smtp-Source: APXvYqww/t1kYZBTP4kvkZBQy+NvunnrOYfcD8jLGYq31vvrNgNFJ8tIvop7cM3PSWfB0qlgfiLFtQ==
X-Received: by 2002:a7b:cb89:: with SMTP id m9mr12383553wmi.50.1567088537669;
        Thu, 29 Aug 2019 07:22:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6191:: with SMTP id j17ls862954wru.13.gmail; Thu, 29 Aug
 2019 07:22:17 -0700 (PDT)
X-Received: by 2002:adf:9222:: with SMTP id 31mr23060wrj.93.1567088537051;
        Thu, 29 Aug 2019 07:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567088537; cv=none;
        d=google.com; s=arc-20160816;
        b=JUGs40GeHfvCYcg2VkVfqcDBhGqUs+VDZ14sHgdvSwAFTYMVFDrSVAC4Z1jjFJ/shB
         VYc3fDGmC25D7gINpIDNMxsJQ9mwduoH75b9G3sBT6H2ozhIR0M4RREd8BeEe2pozPWQ
         uIEhoi6zRe/r17aPO9HagbbBtETerSaS1U/whV2PA6O3zHixQKQVcRd2nZI3JklOMTFh
         zLrdO8S4+nz891Q3Mtyggz1djT6pwSumDLxf76tG+zDH+1t2s2tjyMJj2dE2Gb4+FSlh
         dHBlaNENScVJeK3yJgEoqNwV/PeMw8UJU10c+LirIxPm6jrhXYVykivg2sebXyfd1+OI
         SlLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tZ9gxoV4mr1pi6Ly1BjKDE84gbCclEjPLCjdMs2YNBw=;
        b=u4R61iQagA2qwfTY/yvWKpW+5UWHzeiNaKtoRxtVOcjh7UVVqwwC9j7wxiNkJFaVmD
         99Q55PY601689H6EBMrHzSOJLTrffVUXBzusUi9G7HgZIM2cr9U7MTjx8Jdo1hTz9n8b
         czK3a8reaoTvCwVxLxRYzRdn+++IjO/9l0HwdRabrMsiiqwjvaPrhQsoCSCdvPSPg5CP
         R8BDLsCL+17rZ7sPjKIBuOiwl4WuRjsvv/mdw2B4DGs3bLAk7g6vM+0SiNKucGFzvziU
         bIYPKnpI6ig6zeNo7oGbKfGIrTTkEcawoSHSDYXPp9StL44eCSEHSdVzJRR+8rXS7Qhz
         Cdxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tmaluovg;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id w17si136878wmk.1.2019.08.29.07.22.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 07:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id c12so2682949lfh.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 07:22:17 -0700 (PDT)
X-Received: by 2002:a19:428f:: with SMTP id p137mr6519522lfa.149.1567088536577;
 Thu, 29 Aug 2019 07:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
 <20190828225535.49592-11-ndesaulniers@google.com> <CANiq72mQihii6xaP1pBfyDin3wZOOuMdh9PGAKbmuAPovhV7gQ@mail.gmail.com>
In-Reply-To: <CANiq72mQihii6xaP1pBfyDin3wZOOuMdh9PGAKbmuAPovhV7gQ@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 29 Aug 2019 16:22:05 +0200
Message-ID: <CANiq72mTMdwXKBOEvfqA_KzuTjwnsHQ4rNdNczAXeX_5nzYo4g@mail.gmail.com>
Subject: Re: [PATCH v3 10/14] x86: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, naveen.n.rao@linux.vnet.ibm.com, 
	David Miller <davem@davemloft.net>, Paul Burton <paul.burton@mips.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Tmaluovg;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Aug 29, 2019 at 4:14 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Aug 29, 2019 at 12:56 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > diff --git a/arch/x86/include/asm/iommu_table.h b/arch/x86/include/asm/iommu_table.h
> > index 1fb3fd1a83c2..7d190710eb92 100644
> > --- a/arch/x86/include/asm/iommu_table.h
> > +++ b/arch/x86/include/asm/iommu_table.h
> > @@ -50,9 +50,8 @@ struct iommu_table_entry {
> >
> >  #define __IOMMU_INIT(_detect, _depend, _early_init, _late_init, _finish)\
> >         static const struct iommu_table_entry                           \
> > -               __iommu_entry_##_detect __used                          \
> > -       __attribute__ ((unused, __section__(".iommu_table"),            \
> > -                       aligned((sizeof(void *)))))     \
> > +               __iommu_entry_##_detect __used __section(.iommu_table)  \
> > +               __aligned((sizeof(void *)))                             \
> >         = {_detect, _depend, _early_init, _late_init,                   \
> >            _finish ? IOMMU_FINISH_IF_DETECTED : 0}
> >  /*
>
> I see other patches that reduce unused -> to __unused, but is this

s/unused/other attrs like aligned and print/

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mTMdwXKBOEvfqA_KzuTjwnsHQ4rNdNczAXeX_5nzYo4g%40mail.gmail.com.
