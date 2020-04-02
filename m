Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBZXPS72AKGQER7ZIOBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id CA43319C44F
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 16:34:14 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id bm25sf2834350edb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 07:34:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585838054; cv=pass;
        d=google.com; s=arc-20160816;
        b=xv+hyaBpvMblUyFo1Cx5VsN0z/gQnPo9laqQMHgwU+o/RsM48KoDdiy56WF0XuiGl7
         VuJOOOKpF4ycFOBA7Jyl9vU89h/hXMCv+2CMjMUAqiwS6WPectUuVNUGEokgcLxANwSm
         wVdbN0GE62H9G4qTO3ru6GpfYrWi49cpH+DaZnFtOc7p0vKgAy81aRRb8QheLt3RX+kv
         FdG1YieDd1OUEidoMDdeBNwQULqjcVV1mBQ10uBTet9zAxnIm+9x2ibWd1wCHzAtvfIv
         z0XEFrFnAZE+Zqg3xsa2FIQKLbKaiejZnjiVFueOqO4iKV0Cy/5ateP3oa6DC0UR2I9+
         o/Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:content-transfer-encoding
         :mime-version:sender:dkim-signature;
        bh=9R6l1n4RIUIPiX9z45mg0KnX4i2YaxlAlZTjpjnW8Qs=;
        b=oCKUVzIOqgOsQSMSqpJFGq6c2B9PrMpFHf4ikuN1OIjhKVZK7YAQFctRXYu18HVP8i
         FytJ2Xm4O++xszdhRE0xJ1yAXcwameq6NUEDd+QLgOR6bkuDKH0bZmlWqNH+MNymLf7F
         Jqro4P6vc3nHwsotyu4O2nnHMkgi2S45Xwv981HQlYvBQORI1+fs3DZ/YTj8pLad7W5e
         8MTbBvG+VvayXBt1FgdknOwa56+cUwjICVaLgfdoRT3yxCbbHB6dRC6UqnE7nOfALOve
         ALmFGQ3AjnF+kHNrSV88R45kPcR6vV3WDaZ2zh/UCz3LKV2+L4kDkRU3QIXtI3YRGOQh
         +ZlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=riWQSs+J;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:date:from:to:cc
         :subject:in-reply-to:references:user-agent:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9R6l1n4RIUIPiX9z45mg0KnX4i2YaxlAlZTjpjnW8Qs=;
        b=j+9olvOvqg0As7SMsCoH77pqJB4EeOqsuDIYxDJtOHcWA78ULJqJyOZMgYSPsk2T89
         /CeYIEtIw2OVDVbBxzghGUyGkaVfiGWgfvEQneWwfEW85NJsr6+mBSAhHDQ7bytdzaJJ
         ZoLD8UJ15fLHf8j5m0vqtqgAna2YkkxEUZzIcMMqoB+pUe5zbIaGbrA84wQGgjPrGhrZ
         ndG8D8h9j4ou/9Av9fJUNLsmP4p3VnxTiWngI34Z6Q1K15StZZhCcuedFfkCwgUiKsUX
         NrCmXtqEU6k7oeyomy4w8dnHJ5xYF+Umeeua5z7xcYMLjjA/X75FfZWwZcXJ/p5oieq+
         veyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding
         :date:from:to:cc:subject:in-reply-to:references:user-agent
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9R6l1n4RIUIPiX9z45mg0KnX4i2YaxlAlZTjpjnW8Qs=;
        b=KATBbrf/EJNclbEMMqmnRH2pHfyaISEgYccWpFLY12AtZZRysLubRswXinVE4BfHUj
         RqOzVRksgdXeaqdbMIP57VFtgj2vbcC+xcMaL39yPCoIEuQ9TrOf7P524/D26vyUe2q8
         hv866OFmOE1c8rODJdn0Fz/eJKJ5oM8yTIgeysLVg+t0EpV5EXvXDEAfZnbDl0QIWMUn
         smqVgUygvBluJWmIiGZdFkaX74yKrNifGtHQQledzsPwkSMyD5s1PNqJWoJ1Sg3yUVCw
         PcNU43vv0pV+z/jViJN2E1T989G4J2wwzz9PtciMYzVInZF0motSPCUHtDgnwd8T+1o0
         ilWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubgJtMKwPRDVNxnukoKO5+Oo0n2Jz5hmw07Y5xNROgQuE3f2hc6
	dKncJudSwjmdW5sv0sVqBp8=
X-Google-Smtp-Source: APiQypIIDILBz6clkfR3nW3x4Pfbs9CUrmh9FBz7QiPh8ATBTAjFbJMCSKKn0Z+PK0rE6Zsnidoc9Q==
X-Received: by 2002:aa7:d604:: with SMTP id c4mr3236763edr.43.1585838054563;
        Thu, 02 Apr 2020 07:34:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d8b0:: with SMTP id qc16ls2015144ejb.1.gmail; Thu,
 02 Apr 2020 07:34:14 -0700 (PDT)
X-Received: by 2002:a17:906:3ec5:: with SMTP id d5mr3654636ejj.106.1585838054027;
        Thu, 02 Apr 2020 07:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585838054; cv=none;
        d=google.com; s=arc-20160816;
        b=xrtvATAZcbFd2d4D3q29vY14RZR1e8lTDZP+mt7y1FFA8D7ckwuo9mivyWZsfkOk7t
         LnU48ZzKW9nRXYrP1GMUkrIL/oDhxCLZyW30WkpsVoF0aivXvFuoyItw/T0WwKeULveZ
         Zp63LqWs6As8QIacARWwLCnNXsUXyJU58bI2M4SV8MAD2AGeuRxO6qTCJqUOjTsZfnBo
         zehN5fUXoqzeNxqeTZzhsztTuiQJJaxyigp8SKF9PFiHkfpgk7hpfwJbvTt90FZIIW0x
         DAdJff4tLCgHCn1f1Yt4ZXKj9vJsRppfIMEgUbKHUFOF0VvCArjEcnMYCB5YKqYF160d
         Ikuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=5W45807pAC71hL/yM35fhSQ/isq694lE2RzwHUJCouo=;
        b=ln5hmahAHV66bGhIMrNWNp/Qad3TN3ynaTpi69KhgsiL64HQDJ0Auj6KMbC5Fi4o7Z
         8gXkQGq+hCf6AJTUjmvu849Qo7MQHJuk8rMygnMGi3hUQ5xLw8/pMQ30vEZOQ+4QE0Db
         RVeMlU2zREc7DW+8KDpfxFO0vndB2cmJWjLu1g/ncgHEEC+3RkZwIkKqMqBfFwFAk8+k
         7oHjE1L0TQc+Xu/DxfJ/0C391O2g2xiulEqy9AucGycEob7ZCyxmmQLwCtLFBrzTWMGG
         J+jc+QEnIS2yWQ/41DGJf3rXkZaKATk5pivvaLFf3+ejOiQJ1lPw8d/l1ZudL5wVZfgV
         ypMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=riWQSs+J;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id v14si291721edr.4.2020.04.02.07.34.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 07:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 5F61E5C0842;
	Thu,  2 Apr 2020 16:34:06 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Apr 2020 16:34:06 +0200
From: Stefan Agner <stefan@agner.ch>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Peter Smith <Peter.Smith@arm.com>, Nick Desaulniers
 <ndesaulniers@google.com>, nd <nd@arm.com>, Tony Lindgren
 <tony@atomide.com>, Russell King <linux@armlinux.org.uk>, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, linux-omap@vger.kernel.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
In-Reply-To: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <e0c125ea492670c7069c407b6b0c5958@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=riWQSs+J;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2020-04-02 14:05, Ard Biesheuvel wrote:
> On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
>>
>> > I take it this implies that the LLVM linker does not support the
>> > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
>> > expanded to a pair of adds with the appropriate relocations, letting
>> > the linker fix up the immediates (and the ADD vs SUB bits)
>>
>> Not at the moment. I have a patch in review to add the G0 variants for t=
hese in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC doe=
s not have support for generating the relocations either. This could be add=
ed though. I agree that using the G* relocations with a pair of add/sub ins=
tructions would be the ideal solution. The adrl psuedo is essentially that =
but implemented at assembly time. I think it would be possible to implement=
 in LLVM but at the time (4+ years ago) I wasn't confident in finding someo=
ne that would think that adrl support was worth the disruption, for example=
 the current Arm assembly backend can only produce 1 instruction as output =
and adrl requires two.
>>
>> I'd be happy to look at group relocation support in LLD, I haven't got a=
 lot of spare time so progress is likely to be slow though.
>>
>=20
> For Linux, I have proposed another approach in the past, which is to
> define a (Linux-local) adr_l macro with unlimited range [0], which
> basically comes down to place relative movw/movt pairs for v7+, and
> something along the lines of
>=20
>         ldr <reg>, 222f
> 111:    add <reg>, <reg>, pc
>         .subsection 1
> 222:    .long <sym> - (111b + 8)
>         .previous

Just to confirm: The instance at hand today seems to be working fine
without adrl, so I guess we are fine here, do you agree?

There are a couple more instances of adrl in arch/arm/crypto/, maybe
that is where the adr_l macro could come in.

--
Stefan

>=20
> for v6 and earlier. Could you comment on whether Clang's integrated
> assembler could support anything like this?
>=20
>=20
> Thanks,
> Ard.
>=20
>=20
>=20
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit=
/?h=3Darm-kaslr-latest&id=3Dfd440f1131553a5201ce3b94905419bd067b93b3

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e0c125ea492670c7069c407b6b0c5958%40agner.ch.
