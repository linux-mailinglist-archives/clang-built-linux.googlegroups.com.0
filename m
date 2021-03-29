Return-Path: <clang-built-linux+bncBC2ORX645YPRBVGERCBQMGQEVU6OQRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4806C34D79C
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 20:54:13 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id h134sf12902539qke.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 11:54:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617044052; cv=pass;
        d=google.com; s=arc-20160816;
        b=ObX7TVOdRGaKrE/3yVz/rs/K3lFP2t1a5UbjG7fvzzt4wPIOBFgHWwbVOqLaR07WIW
         dyjnXT0yzG2iy5d+lqwe9P7dsR0mhsE7qNgKr/PaStw6e3QWEdDpk8h7y8lUHECNxfA6
         q6YnngT5mRpHef9HWBc4iuqZqAOhpamP1a5iT4zOVJFYKSyQSuxM2zzgUe37WGMj+cNH
         aGtq2URgWjNzv3nz2+dAPciAhRmitvAbPlaPoG7AypXN3+NVFb3GkpihxSuOISGr4Fim
         U5HITCQs1zFHJ8CYmFB3IpPgwlYUu3vlXJa39oStSUqHnufw8BedCaA6+gRhLBmNQpJ4
         WRxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qVANAJlOj5h79VOo07oX18R+rv+62EPPcRc4TJC0plw=;
        b=LsLs4AlWE+lBXiQ0dZgPYaH3WA4QxKE0vH+MA4rimeKqbM2paz6FXdBiA8MOq1h+Zm
         2YVxAYZhqg6/nr8EXIKr+73kpmlw8lwxMciSHtiGBh3feSbulo2Di9R4OodsLRslYE4L
         tljehK/1RnF6Q55E1UL2IezSHxwgxee8pIOopBw0o0JEIzOdKNKwiux1/wxT/gSVLBM8
         B5X3G+aZmfMBn6ACJWm78jbFXCCoruEO3xYGJKogP6w49kpHpexsCmflyeL6+YaJKf/b
         AGyWs2VImQGhQcDzaETJRlMBUxErbbQjM08iJKkY9R1CfJ7DiT48WcihLzzWe+MeegD6
         ZvDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KPT/sTYI";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::932 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVANAJlOj5h79VOo07oX18R+rv+62EPPcRc4TJC0plw=;
        b=g/zhzTiNsUHyzsRPYYrP588McZ2apTsE/eULCT2SFFLCFN1ifG+B8GVEfxx/XbbZl7
         u10wbl7AwJx8GGQ8R00YDKAnrHhFgF155cx/cXag1N5glVS1LazwpauR9SdWEE8+SgCp
         6FbdSIE1D4YHiwSoy7PrIlKaPg5ug2r7IwTbOiWUIvrtYxUC84Lh779SytlbPw+5zB3Z
         Nq87wtzTOVkq9i8cnM4UCsgLzR43f7ZUfoyxgjAZFpzYmmz9BBtgy2yquckndSjDI8yD
         KdhcTKOyMq70WPV9LgysaByLai2exFi2NosXduk2+ATFx4L4rpoISv69DJ1B4BFsGeDG
         C9Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVANAJlOj5h79VOo07oX18R+rv+62EPPcRc4TJC0plw=;
        b=GWKfEAWbtTUgTHfrgnoNeR/FN6Rser6qR4A3bcw0udU0LtcKvUyuDbu13/w6xK1hdB
         cvYFeK2dzyLlMqzhFgSns7tFcetWk40HYxPGFEnG9EjcNjS6D4TixUT6UTjkMp2aL3il
         vKXkAMHNAJ57xAj/GdguiFndcGfz7PTlc49gZ86MIZU6DIrmmMnGWouzH/ZBt3L0xVPq
         s+7fsDJs+VPdmK4q79KXCbBEZ5MYiICPz+gp8jJk2ox4rhK8jJ4RqkW9+xplLV6TwWed
         Dkywh47uPahrKNJEH8U729ZEz9IhDN18qtW1bxnGzZCgn00pEWnPSm5uFr+UN7vO/vD5
         4W8g==
X-Gm-Message-State: AOAM532Ojabg6rG6BdHJt4QVhMr5M2o1mMB7oo3dI2x38Rdh2JUEThx2
	EKPEbCi3zwTvbSCoUaCwIIQ=
X-Google-Smtp-Source: ABdhPJyypacCvhGUxVpAJUyBs5Tel/QoWClFUBXfoWM+p2nAArwJ3i2W7MJVYxIWpmPEG6g0NSg4bw==
X-Received: by 2002:a37:6796:: with SMTP id b144mr26631227qkc.432.1617044052391;
        Mon, 29 Mar 2021 11:54:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e82:: with SMTP id 2ls6329756qtp.2.gmail; Mon, 29 Mar
 2021 11:54:11 -0700 (PDT)
X-Received: by 2002:ac8:4415:: with SMTP id j21mr23870052qtn.87.1617044051911;
        Mon, 29 Mar 2021 11:54:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617044051; cv=none;
        d=google.com; s=arc-20160816;
        b=c7KOlQAW10ENSLekvvIaNJcetKKPVchq0P1asHU903FlrZ/gf/PwmTtTdFsjT6tm8E
         m6FoMbem9sXmNfDuhsREvtKWZZhXRAGlzFh6sdIZyGT3hWSjqAh9D4IS3bpPNKW6zxXt
         /KYRLXY2lNHxVVqZG65HPzyIfz2N4jI+sQt+DpYfh64kfbFkdEziIS3v0iCoKSkJNTG0
         fm88RdsqnMkfqIUbDbjDYbMu0Ucod/hFtIhGe/mzUnT+j6oapGvWKXdKg5Zn58LHHWLM
         7DykR6f5hDlzG2BBokJWYyo/l7980uwjzuxlpUn59za00Hqbmv33RF3iXpTMAOIGQM7f
         ZKhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nCdRNu9nqi5btDJh+asjbx2Cpbgyp15X6M7/d9V4DNk=;
        b=dxfYTTiomtO3xaN6D+vdB0hMTweJlLK5fYyR4YYcUbe1VA9x7ibaC4TC2+Ysh/h0kk
         ohQ3w+mY/kdLLPVggI/4b1y5ln/lx5AuFntFlMP6wPWLnho2munuCr6Uu777lCKdlBAV
         GIDHuJGoBbVzk/LrkowAjOQBsLNREXW5cngnHeTUSRW6UAk2gvZccn/1ywpf1L3yCloN
         HilnSpzk40BtUwR9rQt+ZKS4YtiFhRGEtOODkQBCGSgljxw0zzEwut6QODtp6thfCxGj
         7oOgf7K3mQotGwD6XATZ45dCVaTOKftg1PP2i9gA/WuC8lEhZrdR5Jw2Mx/e3G7uR/8P
         CynA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KPT/sTYI";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::932 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com. [2607:f8b0:4864:20::932])
        by gmr-mx.google.com with ESMTPS id b2si343743qtq.5.2021.03.29.11.54.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 11:54:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::932 as permitted sender) client-ip=2607:f8b0:4864:20::932;
Received: by mail-ua1-x932.google.com with SMTP id j19so4275755uax.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 11:54:11 -0700 (PDT)
X-Received: by 2002:ab0:b14:: with SMTP id b20mr14390167uak.52.1617044051356;
 Mon, 29 Mar 2021 11:54:11 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064b16905be4e0722@google.com> <CA+icZUXC2YTR356yYhLDjeh6ibZ9OAY6o1U1keygPdWHWE2chg@mail.gmail.com>
 <CABCJKucPFP1ou2FGQfH8=2WsL03Z-UF01LdJx5Zr9RN6=VgZ4A@mail.gmail.com> <CA+icZUX8FVQwU_jQ_QKWgOCTALJTT-RN6hyVgyc+LTwWgYmQYg@mail.gmail.com>
In-Reply-To: <CA+icZUX8FVQwU_jQ_QKWgOCTALJTT-RN6hyVgyc+LTwWgYmQYg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Mar 2021 11:53:59 -0700
Message-ID: <CABCJKufGhrTyH38PtfaUOWW7JT4jsoL4=rG6VmiX_-SHEKq-1w@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - March 24, 2021
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, android-llvm@google.com, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="KPT/sTYI";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::932
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sat, Mar 27, 2021 at 5:14 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Mar 25, 2021 at 3:58 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Thu, Mar 25, 2021 at 1:48 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Wed, Mar 24, 2021 at 9:20 PM ndesaulniers via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > http://go/clang-built-linux-notes
> > > > Meeting: Hangouts Meet
> > > >
> > > > March 24, 2021
> > > >
> > > > LLVM_IAS=1 ARCH=arm landing in Android
> > > >
> > > > Probably going to skip 4.19.y, one last assembler bug won't be ready in time, 27 kernel backports required.
> > > >
> > > > https://reviews.llvm.org/D98916
> > > > https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net/
> > > > https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com/
> > > >
> > > > 32b PPC BE builds spun down in CI
> > > >
> > > > https://github.com/ClangBuiltLinux/continuous-integration2/pull/111
> > > > https://github.com/ClangBuiltLinux/linux/issues/1292
> > > > https://bugs.llvm.org/show_bug.cgi?id=49610
> > > >
> > > > Riscv crash on -next, requires earlycon to get more info (or GDB)
> > > > CFI patches need help review+test
> > > >
> > > > V3: https://lore.kernel.org/lkml/20210323203946.2159693-1-samitolvanen@google.com/
> > > >
> > >
> > > Thanks for the report, Nick.
> > >
> > > I am a bit astonished that ClanBuiltLinux Mailing-list was not CCed on this.
> > > Can you Nick or Sami comment on this?
> >
> > Ah, that was an oversight on my part. I'll cc ClangBuiltLinux for the
> > next versions.
> >
>
> No problem.
> Please CC me explicitly as I am not subscribed to LKML.

Sure.

> > > Personally, I am interested in the x86-64 part of Clang-CFI which I am
> > > testing for a long time successfully.
> > > What is the plan for this?
> >
> > I'll focus on that after arm64.
> >
>
> OK.
> What is missing/trouble-maker/needs-to-be-sorted-out/etc. for clang-cfi/x86-64?

I have to figure out why CFI jump tables need to be mapped with the
entry code when PTI is enabled. That's not exactly ideal, and the fix
probably involves making sure the compiler doesn't replace interrupt
descriptor table pointers. Josh't objtool patches also need some
changes because they assume the compiler always generates jump table
symbols, which it doesn't.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufGhrTyH38PtfaUOWW7JT4jsoL4%3DrG6VmiX_-SHEKq-1w%40mail.gmail.com.
