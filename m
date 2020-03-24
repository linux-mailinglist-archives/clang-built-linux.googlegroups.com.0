Return-Path: <clang-built-linux+bncBAABB7FT4XZQKGQERB4ZF5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id DE12B190317
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:53:17 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id d5sf13811677qtw.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:53:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585011197; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nn/P26cg9TycsAQAvMEzUvPtBiknyqM9jqzZUK98xdZsOgGk4gB0eT7PkgY4KtSUoR
         NgY/HwxQNipo6CTm/ZhJGuV/8gRFgbLrOPAgh95BwVhvTyV7SjRVxKPHrgV5JIXXwp/M
         nk6kYj0HBr3P0y/Q2tUp2VSMLo+wPBQKFDO8zsaq5jM3PDyRHaqen//acIaozGjGvWx2
         Glkafhrs6ZlZL8dRyDDgW//2uytTbcRXXrUNCJKpUfOhHJAceIF8+GvUZkqlvIXrkxxi
         wiDFzGMSXCac7nCfpeurF65MsCxNKgziEmtoZbCfKheuUA69L+4lTAgMvmVnZ+jlMLxG
         2i8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=B8vPTOLilkes9ecg7iw9XJZQxB5oImLUOOfz4cDuXi8=;
        b=la5JI52FQ8jClJaNDXw+lbXCtB+SdVBYB/Z/lWOPPClMAZuU4I9fkSKm+qvqrdr//X
         qVoZ1mieSlrV4sUODCMFJAvrGsTGxhroWorDGIG5M/82W1QiS2SOyj3tkfVPub2I3QMN
         1C+sfNb0ntolK9E2cjr2Oj7hPEXzmJQn07dznOQG2mPfwJdp0YH34tyyBCNR7M0/QIN/
         8XyaL8689ftyWp9mTZAm5c6nq+CvTTjmUVafgm8QAjdHOYpNzIfTChzQdR85oWhOGvx9
         CAfBlZrDYLxdrrMsmwAR4DKIeRM3+TieNjV5c/kZVQJya4myYUIRr3wYE2OQaFV7BkkH
         zEZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=c9jILnI8;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B8vPTOLilkes9ecg7iw9XJZQxB5oImLUOOfz4cDuXi8=;
        b=oYJxJa9YbIsyE/xnWCs6sIgg56h7RN6cD2jKUkov/rQ+qhL17qPPyn24s74zc1QEj0
         3MZGJfQrjcEyLqUbyclnz6mUfXxHwdA1NdtMHoet/tzrT60J+ZrMi7OAth3Y1Vv1Fs2c
         fLMn2Ef3AgNKrGjnjBgAVIcVWOjfhy/LhRB+uRsx8auTarRxmrEev/xefP8hFmEGA1pP
         0Q8Oxzn31zdHPtBArbLkD/1KswamtD0GzWIVT9GWrfYbPUmzmrAZPw40pHHIulnPGGt/
         Zeiz8sqRlE2RpI2qkjM6mesWwJjO6NaiSyhw7FcF2ntjdk3meghSBqhyGUg9SEm1rupV
         bRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B8vPTOLilkes9ecg7iw9XJZQxB5oImLUOOfz4cDuXi8=;
        b=gge9zSYoMwZAmrAxmDgS46jFy2bBmGZpfVzMMNCfjyCEtnqfKPGPW3uVpXPf4MYbZP
         dQ001Yp8LXPCSfb3k1mXGUPNdbCWwd6LxqGf+i1DcC7mRcPP/2cMVlKR9XRqENIb8oeX
         Mls1EAJaI4GHhmL/XZRCISDLDPj8/0rDxbrpMndcvqVe7dTzHtCpW4jlb4cTNKEAfkX6
         jX1oqk897GylhTHugcIFNUouXhjZPL/8CgutyQ9tgv5AYQ8u9NeJn4mR8flm9JM4SIdP
         VzrXmDoHRwSY46cNgBIjKnWgJ2VQnbxpvYeN+GuKZQtU8HHE/eZ5yeDrfhQI5j5ADtOX
         LOsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0IcASQq7jm+w0tvy5iIQYrv1GjfcdqwbwBDmVR2P/F2LFMrXlE
	kJHZpeLVP5bo4WtMaY1JCxY=
X-Google-Smtp-Source: ADFU+vsH0/6a6AXEw0LQt+XgivXc/HiRF6M046O9udNuAoZmgUIa/EfLoKq0jitypqc3vOQRvr0AMw==
X-Received: by 2002:a37:aec3:: with SMTP id x186mr22984235qke.419.1585011196979;
        Mon, 23 Mar 2020 17:53:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls768424qkf.2.gmail; Mon, 23 Mar
 2020 17:53:16 -0700 (PDT)
X-Received: by 2002:ae9:ec0c:: with SMTP id h12mr19369419qkg.285.1585011196543;
        Mon, 23 Mar 2020 17:53:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585011196; cv=none;
        d=google.com; s=arc-20160816;
        b=w4MMzM4Ehbbg611fZ8sqIT57uGFFa+GGjSMb1r3sb1z20veHsN3eo3PxDnLMoKRvqx
         lbxntUUt5vURxlJ3DG8UfgtA2RnFxwoE+gfLWvDH5CAKGyxjQC8y+A/8w9OA3WMTCD24
         wJp49CHIYkE6Aoo0qpx7gDbXkDeWi+rF5bf5bbPfKBLoetroHJZ0YEzbiFEL2UNPVRJD
         uCEurbPl8rx1ADHwtX2gQbIJ6SlEnf7Ui42CrrIJ2EFFDI/KGGXPtUYgWnh1Wb0uq8YW
         niNAIs+abi56TzQI9BiG8RhYXD/nGHvvzUYyiyy2KPdvIfgxp4aHEiWlDZ1f7vkTBjd4
         g1Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=P2oNbCx5t1xyZdNzp1UD6mwTvprw3BqkCsk+lW4PZQw=;
        b=Spo8PRkw+L4zsT/+qwRMfQV/TmRGJHiZFGEjnxySM2noNeDAF8/5doEeQX/39rE2h2
         mGK5wPDyDlcfSjL4hI3x7ghSkv+LHs4NvDvWfxLLjWxaljvMMRRNiN2cG4Fqh/VTlgB9
         1b9aYoQr8UZCBMN7GUwUezIpxw08/axMycUWwvA6x+R5MBJPt9S3b7HwuKYe3fXyjOgx
         lgoIWsIiwnln1OTbX936sRkoXiUTptr+iiISvXoun0EpvKnLxad0HfoJ5qstuE69LGse
         bvK0HYCMk1g6px64QUT5IJRY6/2K12yqRcesEM9M9t6/U0BRduKfRsxSHnBbfmJH9EmV
         U75g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=c9jILnI8;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id j56si842948qta.0.2020.03.23.17.53.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:53:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 02O0qrlc025321
	for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:52:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 02O0qrlc025321
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id t10so10142251vsp.1
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 17:52:54 -0700 (PDT)
X-Received: by 2002:a67:2d55:: with SMTP id t82mr17504165vst.215.1585011173169;
 Mon, 23 Mar 2020 17:52:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200324001358.4520-1-masahiroy@kernel.org> <CAHmME9rdoo2Q3n4YA59GrVEh8uaCY_0-q+QVghjgG3WwcHkmug@mail.gmail.com>
In-Reply-To: <CAHmME9rdoo2Q3n4YA59GrVEh8uaCY_0-q+QVghjgG3WwcHkmug@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 24 Mar 2020 09:52:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNATQG4ABWxkShbgTpW78M4FYY_9Fmg2GSxXDTE51yWF=MQ@mail.gmail.com>
Message-ID: <CAK7LNATQG4ABWxkShbgTpW78M4FYY_9Fmg2GSxXDTE51yWF=MQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] x86: remove always-defined CONFIG_AS_* options
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=c9jILnI8;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Mar 24, 2020 at 9:29 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Mon, Mar 23, 2020 at 6:15 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> >
> > arch/x86/Makefile tests instruction code by $(call as-instr, ...)
> >
> > Some of them are very old.
> > For example, the check for CONFIG_AS_CFI dates back to 2006.
> >
> > We raise GCC versions from time to time, and we clean old code away.
> > The same policy applied to binutils.
> >
> > The current minimal supported version of binutils is 2.21
> >
> > This is new enough to recognize the instruction in most of
> > as-instr calls.
> >
> > If this series looks good, how to merge it?
> > Via x86 tree or maybe crypto ?
>
> This series looks fine, but why is it still incomplete? That is, it's
> missing your drm commit plus the 4 I layered on top for moving to a
> Kconfig-based approach and accounting for the bump to binutils 2.23.
> Everything is now rebased here:
> https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support
>
> Would you be up for resubmitting those all together so we can handle
> this in one go?


The drm one was independent of the others,
so I just sent it to drm ML separately.

As for your 4, I just thought you would
send a fixed version.

But, folding everything in a series will clarify
the patch dependency.
OK, I will do it.
Who/which ML should I send it to?


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATQG4ABWxkShbgTpW78M4FYY_9Fmg2GSxXDTE51yWF%3DMQ%40mail.gmail.com.
