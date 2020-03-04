Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYHL7TZAKGQE5CKMYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 264C91789CC
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 06:00:18 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id q135sf685477pfc.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 21:00:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583298017; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sPxL5HF7k0O5kyPpbTaUmCt5NtmAvud0dRCAyMgOn1CSVHHr0aYrGVwrvKi3+dAR/
         4N7Q7fRN70nRBIVMFpwrSElIx1bE2vR+UHy3meRnBmOX+h5InegOz05iqOkRXF/v6riP
         83XFtVoHpEr+/CUp2HJGNc7fv0SETOy1IlkMcFmaqMZKxzYztivAVXpFTrjyLi3CiZWZ
         76kuT4MFfSkCvmSBZG0olh1XmmZI57yU36w7wJcjyEI0DQA/QV57Hl6njXOYmANWm1x6
         Jxfh5FGoggeYHpTkAOfMiEhnBGEBA+qDsd7j6h9jLI4NomuTz6eEr+hvdgtDwpYrdcjS
         itdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RARmH53IDRKSkUv8cQwrxGgAXOKmqE7/FYjJDPQytu0=;
        b=QAJ08YSrCD0t5zs9Js1qZF3CozGlpVZMxWfHVi3EEAa/8ShYHrj0XdBzGnyKq0PSyH
         0Q92PQWOSi43XxKrcs0YgoA1yisl0gpiZ2zHqxtHCwlCJlomQ0Gt2gRQQ22wTXfBUvnm
         mI5msjfkE5HeML30VBCWx93TUTnUF5BcEOOgXyd/6KbRZomVhuzOY/Pw+hd/BWP6iPYb
         r3ROKqbXWjb7wHjFaEmaUdt7kAHQlWeVpY8bsPL64usFUJyLTAf8BPnQGlhQf5cnKD4m
         zJuLcTtdjFqiVeSjsW2g3RuwYIBqa1ov2K4m3CikO3KFzIKqafOxH9WjivKBot/RdEVL
         KK0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fXXaNqoi;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RARmH53IDRKSkUv8cQwrxGgAXOKmqE7/FYjJDPQytu0=;
        b=PBqgsL7HQMer/xhLeFXv2fEig//IOCXv+MZtAJOHQnrvsBVyRskMm72IrVJ72Xs8yj
         7GpvdR57AEB4Haf9cFiyRBWAwSZNX7TU6x53OJtcDg9Kz4sy91WOqRUk3oxCoHW1TGq0
         ppHN0Yq/gDorTXcXd2h4w0EE0PYeXWBHy0YxLhhumsoArrnqq/ZsQ8qQAgIHLA4WudNX
         lw+78hFhM7NxkAeHeDYlOCQzwwGu9UFF2cReWs676WlEeXMj/EWCqOv7RVBfH7gPhMJ/
         G2WPOuxyxsEwWXgMpoc605kMBYhGMk7Ump3nRD8gcYAuUitJcofY83i3JsW+UsDuc3Rm
         3JNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RARmH53IDRKSkUv8cQwrxGgAXOKmqE7/FYjJDPQytu0=;
        b=tQuf37RUWpaTg5WhikAYLlq72KRvO2XMMbrKb+kB02WUhN/bXGSoXMByqRydKjBWbP
         UKL916R81FwTydxxIL7BT5nX1JJcUIDpCUZ344jJBofaypSvX7fRVQDwC2PxIT/EvMpD
         B85lf8Q+OdY/16/AVTVDkIBca3y3G9VfLeVvWp8upG2BAJ0g251qjo+PlZTmIxq4ddXX
         e8yQvM/QH6VM3y6CkGtRklGTbgFtRMBhwKDkZNSki6u0tvmuaovTvkv5KUDkO/SlpV7y
         SdFOAzRwMCxbQgevZFsFs6IUH/65r0nTcXy5zWMyK9l7R/Xb0etLyfamlYPFrMJwCdmL
         Kgtw==
X-Gm-Message-State: ANhLgQ1SQjtsUuAL34Z3Z6M14XPAM88HXWXbw90HAAlL1GqHu7SRQ1jM
	0EP87WgZRxFEE8nOQlfI8nI=
X-Google-Smtp-Source: ADFU+vvMWx5CCPU9omuqFcm3M9mKS41iS++JDiipTph+QmTZpbg05sg+LKV09g7NIu4ggANeKW+c0Q==
X-Received: by 2002:a17:902:ab97:: with SMTP id f23mr1434436plr.182.1583298016772;
        Tue, 03 Mar 2020 21:00:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b601:: with SMTP id b1ls357602pls.3.gmail; Tue, 03
 Mar 2020 21:00:16 -0800 (PST)
X-Received: by 2002:a17:90a:9b8a:: with SMTP id g10mr1222511pjp.163.1583298016300;
        Tue, 03 Mar 2020 21:00:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583298016; cv=none;
        d=google.com; s=arc-20160816;
        b=jTuklq2Rq2TwupFDPyXtIc1sLv9XmoJ2xOJh8gZSHf7rbsZXz2zheYoeHxJkaHNnIg
         Ute4EkC3ZweB3cxL5O3cCGayA9sqtdlGlG888fqto5yCtUNKiN/drfs4Z2nn33oH2TVZ
         7HAEi38WC9hAPMA2kU6J3gknmWGRGYaWaRKpsHU4DpC9HxdszVRvjNHZxQY8q2yxjDq2
         DOr/lRnO0Zg66hp4WlXK7JMuATlVO8aZxBjN3GEPh8ChKaNxFp45d8hBQI2QXtR/2xUG
         OAcw4n6E1tN2+qk9g8GqbRG04d41xTbWwhFghOFmjMDPiDwLb+XY5WSJn619YFgdwWeB
         O0FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fWqhM71qdeipb2iv8w287UkX52XUZx5tSHx/mc0k7rs=;
        b=UxnWAwvkMPLEbeIattVf+RINT1XGrC/ICMTd4JOUzNBIbAAP+1WM/faj5XZ6j9yWTa
         vyfzODZ2QhkVvIeBsj1gaT3LoR2MHASpvoLUCRfPyR6vzjJ0NltFw1t71h4AcoQQ2djb
         kUT5hm2m3AhGEIuUWNuWjlHVUa2ZO5x3LRxtNHcjfDQ3q1kFXjiXhHcRnz4/7mQ1/0ap
         h3eW68cfh4y4+i+FhpHmdfr7SgJD11hDoAAq1y3r4OG5/MAM2sWc5y/yB96ibWn3tueJ
         ONTRfXy2mTgQHj/0XspwjSEJ6s6ZYBE7ojiNVsQNFZAj8/w6W4FxoLhrLSPp7GFyYZeD
         R90Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fXXaNqoi;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 59si44009ple.2.2020.03.03.21.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 21:00:16 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id nm6so360245pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 21:00:16 -0800 (PST)
X-Received: by 2002:a17:90a:bc4c:: with SMTP id t12mr1211341pjv.138.1583298015616;
 Tue, 03 Mar 2020 21:00:15 -0800 (PST)
MIME-Version: 1.0
References: <20200115115249.27774-1-ilie.halip@gmail.com> <CAKwvOdkdD9VF1k==G4vMeo4bBLarYz8gPvWfv6+N2kejeoXfjA@mail.gmail.com>
 <CAK7LNAQ1pS0nK7JoUbgOn0aMtaYH69XukjNELZNxTtV_iMmR1Q@mail.gmail.com>
In-Reply-To: <CAK7LNAQ1pS0nK7JoUbgOn0aMtaYH69XukjNELZNxTtV_iMmR1Q@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Tue, 3 Mar 2020 21:00:04 -0800
Message-ID: <CAFP8O3+cEinopXVP5yKWG2WBP=TOdudxUnVikfh90SF7muEcSA@mail.gmail.com>
Subject: Re: [RFC PATCH] lib: move memcat_p.o to obj-y
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fXXaNqoi;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Fri, Jan 17, 2020 at 10:01 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, Jan 17, 2020 at 7:30 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Jan 15, 2020 at 3:53 AM Ilie Halip <ilie.halip@gmail.com> wrote:
> > >
> > > The semantics of `--undefined` differ between ld.bfd and ld.lld:
> > >     $ echo | gcc -x c -c - -o a.o
> > >     $ echo "EXTERN(test)" > a.lds
> > >     $ ld.bfd a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
> > >     0000000000000000         *UND*      0000000000000000 test
> > >     $ ld.lld a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
> > >     $
> > >
> > > When building with CONFIG_STM=m, there are no in-kernel users of memcat_p()
> > > and ld.lld discards this symbol because it's linked in via --no-whole-archive.
> > > It's marked as undefined by a linker script but ld.lld discards it anyway (as
> > > seen in the above snippet).
> > >
> > > Work around the ld.lld behavior by moving the object file to obj-y.
> > >
> > > Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/515
> >
> > Thanks for the patch.  This solves the observed linkage failure.
> > Maybe Masahiro has more input based on the discussion in the above
> > Link?
>
> Sorry, I did not notice that thread until now.
> I will take a look at it when I have time.
>
>
> This patch does not seem to be a proper fix.
>
> If this fix-up were acceptable, theoretically,
> all objects that contain EXPORTED_SYMBOL
> would need to be turned into obj-y from lib-y ?
>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Hi Masahiro,

lld ELF maintainer here. This seems to the only blocker of `LD=ld.lld
allmodconfig` (https://github.com/ClangBuiltLinux/linux/issues/839).
Hope you can help if you think there is a more complete fix.

Below is some (probably obscure) explanation why I think the GNU ld -u
behavior is not consistent and lld should not match:

If a.o has an undefined symbol foo, `{ld.bfd,ld.lld} -shared a.o` will
place foo in .dynsym .

GNU ld's EXTERN(foo) and -u foo behavior is consistent with its
documentation with regard to .symtab, but it is not consistent with
regard to .dynsym.
`ld.bfd -shared -u test a.o` does not place test in .dynsym. So an
undefined symbol added by -u is different from a regular undefined
symbol.

The different behavior for .dynsym is understandable: if GNU ld places
foo in .dynsym, the shared object will likely have an unresolved
reference at run time and will thus be rejected by ld.so.
So for .dynsym, GNU ld's behavior is actually similar to lld's: -u foo
triggers linking of an archive (if the archive defines foo).

Additionally, lld has an extension --undefined-glob=<pattern>, which
is similar to multiple -u. The only reasonable behavior for a pattern
argument is to trigger linking of archive definitions. This is
consistent with lld's current interpretation of -u.


Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3%2BcEinopXVP5yKWG2WBP%3DTOdudxUnVikfh90SF7muEcSA%40mail.gmail.com.
