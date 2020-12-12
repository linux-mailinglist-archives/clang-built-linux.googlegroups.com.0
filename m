Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEFG2D7AKGQEXL37SFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 762EF2D8396
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 01:47:14 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id g7sf2987032pji.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 16:47:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607734033; cv=pass;
        d=google.com; s=arc-20160816;
        b=GZZR9nfwKoCPY+muURnoRBPsQuRSt9wCqoOfl4uphOsNpJxMxmJ0FnZxV0oa+nz36c
         EJnpeFcI1LBUDpweLq6ynKHV9fAtPkKXeoBHYYPR2uhz5fXGhpffkyNf7L+4BG2RYssb
         b9sW4buvZbWF57WuudyvbkK+1PWKI6fmKRzZxZ7pArAseEZ6+dz9ti/GbJU6mTci+k0x
         0wIy97DFpsr0FlbvOhbv/g+aAGf6p+Li0GLLaXB9Pqsu4vF9Birf4LsHLn5a5qByJDgW
         HNTqwBIOmRx8HtUFe9kRHGnkQUe+sKMEDG5814Xkc9vTv9cuqjlxBkg0tTOVxhqq0MK3
         ubXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5OxhGWAbScUg87kEWHRiFDe3auHkqp7zE/kubuaYa2Q=;
        b=ywaaTAMWyMVJNux0mHkSJq+TtxSaqb37h49sYTV+IeOB4pky3xROTA6jNEt5NClGh7
         B7cHiclPC2YJCi9r5cb0Usy8KRkzT5441JCVHCyQwxPk0evx0keUKq/g/oGI4P8sym1b
         A9QHk9tdg/yhqn54exKn/V3rkMfWRytAOMVus5Aq5Yavz+vNXB+6mB2sFDAPcREzPB5E
         9TCBe9l8mzk0ankUNDzVB42GuQVVba0pjpey1wcIRPm9HO7pRtPISImXUrb3a52wpEWN
         g4iZPWlHVT520PwVaIoCecWnCmY8O7+FymCJsHzsDFeM5E7EfcNDukXQRtRnM0c3dL6S
         XB4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TPT8/EC6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5OxhGWAbScUg87kEWHRiFDe3auHkqp7zE/kubuaYa2Q=;
        b=bNb+6dkdviKJC+tT1UTcEqCYkmtbOxDaoVpEwBkNOYbR0DgTBHGt2EQY6A9Mpm+Bg4
         NSdMrs8IUuRxxrEu9u6qx5cNDpbmP3Sd5cQJOz6zsBc09Ez66G6z1Rx1NZ8bGI0p4n3d
         uYnsYhctRIU6tUFLaIdmQlAhVjpgtlaPRQSFB2uhB4+CqElnBg8vnkQOcd99vfQVRyUf
         /bJJt0++OHjs9opTsbi6Ptw0plD4MLoEcur9S/P9YNHJX2sdFc/KybdpL2mMLjbJdwWf
         t/FLVCxyN+/sEaztz3ibtp2ufMHURvUxeFf6eLP1g+wAqHg855ZjQY1ZGpm4pguCxXUy
         eh7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5OxhGWAbScUg87kEWHRiFDe3auHkqp7zE/kubuaYa2Q=;
        b=b7CCbnpUkdeo7ZHWpkROF10moeB1Bt7bRadlz3HGiuxCqgdHJ4mlg0UD1kYpQ06/rm
         cX7Ymkv3uu9l5Tomk9PwDHGvHONgGXMEjODrGX940VVC25/HLD6JUtxEPsI+d2UI0ae6
         KqWAd/a8C/fDq4DqkG6Y/O/vCxFcZAZLaMaWtjXaJzPduGQBZCN5tBmsDFglTUv00V/S
         OW1DASJZ1FhrgPW2wjaYpnobmmpC16Fjp2c/BGc73aCUEC9Vr/hTTp/OT/Oo3sqbbirH
         HZgmP/+yuc8m5JTX5nT7wdUkN7PLAQoNknw1m5Jnx+H+qP5H2dsUttaA2sIW7UsPXpe5
         utFA==
X-Gm-Message-State: AOAM532zt+jnzyeuG4ROl8kEf+CfgT6bCjIA8BvWnSczRFgdNWo+lMBs
	qJASIQcL+pGP1CutSkL7Rdk=
X-Google-Smtp-Source: ABdhPJy2+FmfGocpqzW1aUcurdwG0/1OxiKiQOd33/KV0kTHHcrUQFJfMhoPeODtUmzDwK8UK6UowQ==
X-Received: by 2002:aa7:9ec5:0:b029:19e:bfaf:1b24 with SMTP id r5-20020aa79ec50000b029019ebfaf1b24mr10318885pfq.51.1607734033151;
        Fri, 11 Dec 2020 16:47:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb95:: with SMTP id v21ls5656091pjr.0.canary-gmail;
 Fri, 11 Dec 2020 16:47:12 -0800 (PST)
X-Received: by 2002:a17:902:be11:b029:da:ba30:5791 with SMTP id r17-20020a170902be11b02900daba305791mr7255795pls.13.1607734032489;
        Fri, 11 Dec 2020 16:47:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607734032; cv=none;
        d=google.com; s=arc-20160816;
        b=uP2YR/BJaHRO3okVodK/kXnRUfxz/oEcrkujtsXOO0rW/iSc506o4/LW+IRRx955s0
         8x+SIOsdlkKTDW/6H8winNuKj7N7c7YmTaD28MMusYO4kfurnkNFBLrfCGWH5nU9y0pf
         3bSx1zLE3sztL9HKnvyI6X+EAKiwcI2kiw5MRQ6ogvtxPzdksDYb5lkGX+bgCam6YxFL
         3G2HaseoQa+iG63oMudhSk6eSm7g8J0gUs0KR1+tFicv4u6jl8tfuBFZPeNC4IMM/V8T
         MX9c+qIPtJYayrjwKsArcvLNKQfu9K38ShcirMqskTGFUkI1J25fvItziAf0PtwbAp/Y
         JWbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PamJb6v/nzXAYIWeQwRsVjH70oEHhC4JSEBOe7vfIGk=;
        b=JXHBtKFhDQeBt/8RI2F/gW3QyNmUQxCz+E36pjyq6dk2OGE4sOEVgzRqGDehIjeC6/
         qTjpEamUZt2HRHRg9FG6GBVOTWXPMLMI39DIonvYzPARCEiH5202HolYAMqRepRXlPDH
         GjvuLZFCXmcdi75Zg9ne8nATOExmEwDAFyw2pmlfIqJkqc9WQahq5xor+EDlc+VsMjPX
         t63hc3Ma5h2fXyHvHdeKU+9Avoed+Jibj5HQddEzJ4Cb1e0h7ydxw8xc35BH/Sr+EJJd
         y0opKUswUfdvNnp12mirLLA3LaKiTjUFF4dX/7dLXEa9ewf7SS70ORg6Wj1xcUGONFTJ
         UcbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TPT8/EC6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id q15si843609pfs.1.2020.12.11.16.47.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 16:47:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id s2so5464240plr.9
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 16:47:12 -0800 (PST)
X-Received: by 2002:a17:902:ed14:b029:da:9da4:3091 with SMTP id
 b20-20020a170902ed14b02900da9da43091mr13198016pld.29.1607734031484; Fri, 11
 Dec 2020 16:47:11 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
 <20201211093205.GU2414@hirez.programming.kicks-ass.net> <20201211163748.b37gashl6an6misu@treble>
 <20201211164915.GA2414@hirez.programming.kicks-ass.net> <20201211174610.2bfprpvrrlg66awd@treble>
 <CAKwvOdkWU3qQ_m3v1xn1Mm6+obC202NWEaF8g_gz3oqeeLkMQA@mail.gmail.com> <CAKwvOdmVq2StZbKZ0eaLEZmrPMgRUJMZFso+2G8tLJA_Nd-swA@mail.gmail.com>
In-Reply-To: <CAKwvOdmVq2StZbKZ0eaLEZmrPMgRUJMZFso+2G8tLJA_Nd-swA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Dec 2020 16:47:00 -0800
Message-ID: <CAKwvOdkdBxucLOf-9a+PK7K+yFLjjPWgncGrXwtE5BHK=uevDA@mail.gmail.com>
Subject: Re: objtool crashes with some clang produced .o files
To: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Cc: Arnd Bergmann <arnd@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="000000000000d8361605b639bfdb"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="TPT8/EC6";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--000000000000d8361605b639bfdb
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 11, 2020 at 4:42 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Dec 11, 2020 at 12:57 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Thanks for the patch!
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1207
>
> Arnd reported another objtool warning/error from another randconfig in
> https://github.com/ClangBuiltLinux/linux/issues/1209 and CrOS just hit
> this as well.
>
> I haven't been able to isolate the configs yet (Arnd has posted the
> full config: https://pastebin.com/wwwhUL8L
>
> $ ./tools/objtool/objtool orc generate  --no-fp --no-unreachable
> --retpoline arch/x86/entry/thunk_64.o
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn
> at offset 0x3e
>
> Is the offset 0x3e referring to the final `ret` instruction in
> preempt_schedule_notrace_thunk?  Observing insn_to_reloc_sym_addend()
> (with your patch applied), it looks like both calls to
> find_symbol_containing() with offset and offset-1 returns NULL.  I'm
> curious if there's another quirk going on here, or possibly a config
> from the randconfig that's messing up the special case? I don't follow
> the comment about:
> 119        * Hack alert.  This happens when we need to reference
> 120        * the NOP pad insn immediately after the function.
> 121        */
>
> Attached the object file FWIW.

Resending with the attachment renamed; I just got a bounceback from
Josh's mailer daemon.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdBxucLOf-9a%2BPK7K%2ByFLjjPWgncGrXwtE5BHK%3DuevDA%40mail.gmail.com.

--000000000000d8361605b639bfdb
Content-Type: text/plain; charset="x-binaryenc"; name="thunk_64.o.txt"
Content-Disposition: attachment; filename="thunk_64.o.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_kikzam8x0>
X-Attachment-Id: f_kikzam8x0

f0VMRgIBAQAAAAAAAAAAAAEAPgABAAAAAAAAAAAAAAAAAAAAAAAAAKgBAAAAAAAAAAAAAEAAAAAA
AEAABQABAFVIieVXVlJRUEFQQVFBUkFT6AAAAADrGFVIieVXVlJRUEFQQVFBUkFT6AAAAADrAEFb
QVpBWUFYWFlaXl9dwwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABCAAAAEAAAAAAAAAAAAAAAAAAA
AAAAAABTAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAjAAAAEgACABgAAAAAAAAAGAAAAAAAAAAMAAAA
EgACAAAAAAAAAAAAGAAAAAAAAAASAAAAAAAAAAQAAAABAAAA/P////////8qAAAAAAAAAAQAAAAC
AAAA/P////////8ALnJlbGEudGV4dABwcmVlbXB0X3NjaGVkdWxlX3RodW5rAHByZWVtcHRfc2No
ZWR1bGVfbm90cmFjZV90aHVuawBwcmVlbXB0X3NjaGVkdWxlAHByZWVtcHRfc2NoZWR1bGVfbm90
cmFjZQAuc3RydGFiAC5zeW10YWIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABsAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAo
AQAAAAAAAHwAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAABgAAAAEAAAAGAAAAAAAAAAAA
AAAAAAAAQAAAAAAAAAA/AAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAEAAAAEAAAAAAAA
AAAAAAAAAAAAAAAAAPgAAAAAAAAAMAAAAAAAAAAEAAAAAgAAAAgAAAAAAAAAGAAAAAAAAAB0AAAA
AgAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAHgAAAAAAAAAAQAAAAEAAAAIAAAAAAAAABgAAAAA
AAAA
--000000000000d8361605b639bfdb--
