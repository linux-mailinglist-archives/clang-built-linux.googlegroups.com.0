Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBIXM6CAAMGQETLEEACI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FAD30FA72
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:00:03 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id j37sf2859887pgb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:00:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612461602; cv=pass;
        d=google.com; s=arc-20160816;
        b=xBZzliGwE+aXyKzXD4E0UorGq43KNHtqqFVshR+2l1/6bPPoMha/TcwA5TNFsNA8Av
         FA8B6b+63PzXNaFTmXDFEF9/WQanbL925JFzlMDBuH1wV8xkEWNbTThF2cOBPaOGAqLD
         g0de3cWD8McU6hQw9YPfdTlAFVSCVZFxufRxVEVE5GGJQpN9gSSQFO/fPnee6ftvFjOR
         i+qCJOVCXjoy1Cz6v7Z3MIh3h3eJF/vUYb7UmuGg/SO9J/oVQc2OZTqXojaUfD5f+0Y1
         znftWXFOOqSPHoZ67JHrMuPEGUnYzleInA45LkYXlcfIGnAkdz0oGaYM1PAplY0WMYex
         SFQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=e5Gf+hpHW1oJ4ghdW7TU/NT/XG3L2nZp4s69DXMYhlg=;
        b=bLsYH468icJ0AKlMkvV0e4DQqqnI5oYa2P5FXbQdnvn/byyCJ/Y/g7QMhUAuVxBl9/
         rSD1EeDQ3km7LHIPvqcmyTi4RAWwHgtMvDGKlEjQ9Og2xkejm9zcezfQsTCQkEs4dSmG
         6CQ3Ff+ZTgbXK3UI6Xc4FCmF7f0Lp471JYcidNTbRX/OsM/fh/ZbtEKmEfvuSN5LxKvU
         zWOFroM0PCgQFLPBJPIsyS/QiD7+aPK7k1MDT3bdciBNqBjkggGraWTE0XowJWTSFobB
         +ad0fy9sZhwoQ5/jmojHF+YFvEmHBmbVzinxnxzD22Z0l/1CTawjK1yz4AWd3U0Mjsia
         vkTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f7kcb2En;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e5Gf+hpHW1oJ4ghdW7TU/NT/XG3L2nZp4s69DXMYhlg=;
        b=YYv9aZmWew/pxV37Jc2wZpbZnkVdHeldWFbjWgUGhrlJD1ocGfwkWWmPrN/K2CAB09
         PCv2dpfu9md/I4P7ltEE/VGBj896czM2dPGdxMHUAjy9HyPSyybTNEjBQT8xh1OCN4X8
         GBuPaPU7dWc84LrUMIBqk4EaZiDG/kOpmdmlIgA++cy+3rZATvZWF+BiSY+7x5cJEvyC
         j8UMhbRP+d3MjYrHCFFUEyLoP0eLSvfhd2gPAsV3LdvR9kWtJ+/n3m03xVVMnB7Va4Zk
         kA0KPfexpJn5s9m6ec9m6DKbVzoNm1+wVHL+Oq8S9PEx1NMZhbbQpS/pAGdhMO760eI9
         CuXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e5Gf+hpHW1oJ4ghdW7TU/NT/XG3L2nZp4s69DXMYhlg=;
        b=FJ60LnUlZVpriHj9oTVDzlQILfkqM1eqZTOM4WmdRD3R9QfvprSg1USg3eyzPwZzWo
         CAkZ25TBB0iTPz6wDUSMHXprwMkiqtQ2t4tjT/5QLDDy0D5LCaCDzY4IHWO5FRpYBCBM
         dqQZjhIcWg0+lBtL13ZaFt7fPidOC0QY9D2SXg2KoVB/eUZyoCn0z0MZzkpaTC2EfboR
         w5pcRqrRsIOWYpP6ACAQGEYK4Nq3dH8fSp0zVoeyNGfmJHoGYwAq/UoQWpMcAL2Xr+wj
         Do+3jEajFgePrSWUJmO7FoNim0akGfYcejszfGlfpYAK1+IlimxQc1zDugAaijaie7Uk
         3F4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e5Gf+hpHW1oJ4ghdW7TU/NT/XG3L2nZp4s69DXMYhlg=;
        b=nDUKHnglh3NQVb1p/0VQFFhpsqa7bc7hBJdxrSwLk/ux9OfIHCkik8X/xi10CjKZ/Y
         KIvxiOReUFWepWt3tG1aHqY1S+vl5aGv3GFdeXO2WyPbNQfyt/+OD3Ehd6CRclaX8XiN
         JQjjgFa+lu94nZchGpu2FrY5za77JwJAiU5kWXYbO3EGfdBAji6yesILa+AIL5iv5RxZ
         IgJQGcvcJ8v79VyD/SyPGojPGXl5Dsf2LEpOlkX/KdW9sVGysY3oUkK8Pw65V0qahmQR
         46tFKQ+5FOT5XpsE3wrwf2+1dAigfRjhUOpfjyJvHhAtsQstfAc7BnhHC4f5CdHNP5ot
         EfTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xLoavg2omP2v9XEk80CMpSBeDRP3BNqwzREc3IYyHm8UuRG0F
	ut7lDAgdxzYJley/lYC/HwE=
X-Google-Smtp-Source: ABdhPJxMdklT+2ADtL3ypSjbROGqDusSRw8GqE7NZ0qeDWPzAZ1HV6fJO+iqtto9hShGetnvyFXxKA==
X-Received: by 2002:a62:8244:0:b029:1cf:e4ac:6cde with SMTP id w65-20020a6282440000b02901cfe4ac6cdemr446526pfd.27.1612461602487;
        Thu, 04 Feb 2021 10:00:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:92d5:: with SMTP id o204ls2602147pfd.6.gmail; Thu, 04
 Feb 2021 10:00:01 -0800 (PST)
X-Received: by 2002:a65:458d:: with SMTP id o13mr160751pgq.450.1612461601739;
        Thu, 04 Feb 2021 10:00:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612461601; cv=none;
        d=google.com; s=arc-20160816;
        b=piwt1uUreHxyPsjoGIdPDZjutPx9TXraNPpCvohHivApmilULdxTElLxVFtw9YzEW5
         nWHvXNRVOJyKr0bL/ovtJucXGKDhOJvdmshUi7umwnRNqC+bKTlGxHEN5FZy5c7s6NCB
         dMU8cCoSq2OyJicIGSS8EPfWRTXFzZuklM8Wr0poqa9bHDhS0Cu37F4GQvsXrjZmal+w
         UB/Fv5Qet7cviHqJ4xwhRP1hbVKMcYHEqVzWaosJbBabXhpOstVIbtnh1On/5KkvlsKk
         f5VZaV6vH5C4v1J1nwAUJx7+QdP6UsMdUuLHXtTkO5gP+Qo3Plce8/5q4onbHJlhiD/t
         RIUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IEmV5AocWCx/cWe9dO53Bo51ZWcrtedaegFD4oICCVQ=;
        b=AebK8RHjhE5Przak39uIXyr1mgQCCT/MTkj01LtI0WHC1812K6DS/d9HHtYIx6jgHg
         KzsmWea1kjv4UUTmUuA3offsG7SfQqfDLN+RLbLSFXzBFLoYs3+hNcOxUY13gInOIVDH
         zGP5sJiean9UK2MW3uHB6O3QefJnYe9h2qqKWayaCLQJGAcHFmtJ0MZhziPL8edcZgHE
         f3qUPIwbJGnLJYq7djadEsCucb3B4t7anfqf17O7ef2wPW8BkLVjd23AaD0TagDBqGOW
         YU9QOA52Hc9dkAcvpewxMUJK8yVjiifwQpS9C+ylnO+7BrkRtrdu2egWyWqr8UZ40Cep
         RTKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f7kcb2En;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id y16si380685pfb.3.2021.02.04.10.00.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:00:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id y17so3366684ili.12
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 10:00:01 -0800 (PST)
X-Received: by 2002:a92:58ce:: with SMTP id z75mr252234ilf.209.1612461601360;
 Thu, 04 Feb 2021 10:00:01 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost>
In-Reply-To: <20210204175010.GA2988776@localhost>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 18:59:49 +0100
Message-ID: <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nathan Chancellor <nathan@kernel.org>
Cc: Rachel Sibley <rasibley@redhat.com>, CKI Project <cki-project@redhat.com>, 
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f7kcb2En;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129
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

On Thu, Feb 4, 2021 at 6:50 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Thu, Feb 04, 2021 at 07:07:49AM +0100, Sedat Dilek wrote:
> > On Wed, Feb 3, 2021 at 11:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > On Wed, Feb 03, 2021 at 10:36:32PM +0100, Sedat Dilek wrote:
> > > > On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:
> > >
> > > [snip]
> > >
> > > > > As far as the panic, it was was triggered on our upstream LTP test, I
> > > > > don't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > > > > bug which is causing our jobs to abort while updating the kernel for x86.
> > > > > You will see the following in the logs:
> > > > >
> > > > > 'failed to validate module [something] BTF: -22 '
> > > > >
> > > >
> > > > Guess this is with CONFIG_DEBUG_INFO_BTF=y and LLVM/Clang?
> > >
> > > I read that sentence as there are issues with BPF issues with GCC, not
> > > LLVM/Clang.
> > >
> > > CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:
> > >
> > > https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369
> > >
> >
> > OK, Thanks.
> >
> > Can you give me the link of your (above) response in the
> > ClangBuiltLinux mailing-list?
> >
> > - Sedat -
> >
>
> https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/oNIZyE6fBQAJ
>

Thanks for the link.

You need a Gmail-account to be able to read the mailing-list?
Asking for offline readers.

- Sedat -

[1] https://groups.google.com/g/clang-built-linux/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVV3q3Jr8HEi%3DLmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ%40mail.gmail.com.
