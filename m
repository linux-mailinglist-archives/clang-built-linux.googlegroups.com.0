Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBW5SQODAMGQEL2HUQGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA283A1897
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 17:08:13 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id v3-20020a2e99030000b0290144dc7b6cf0sf66864lji.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 08:08:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623251293; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGfzORubzoEfMEBa1i26tYQpcx0AQFyGnHaFGSgX3sZQKqgc8SNeT5Ntt5UeWmtuD/
         XQIJbC8CBJ7I+Kmh51+5TSPpeLZedyUrkbZIdcvLagPrso18sQ9X3neKsVMFXHKMA3qM
         DLHd2I9r3EoGqd1BHwR3J4tnpl6pvd2H8e6HRVsBV/dcCFpx2n8mUe3y2whZE9/slvJx
         Gw8E9g0lkfNOBaAXt1TCMKKuFjZaNGSi1AUOa2/963LVN8U/mN/injEskLSfvpA0zB3X
         j8fJ35YGsEu/2RMK9HUpyD3ob2oRbf7KmRRmG6q8RuCJc2YcpMEHur+fonE54p2/uGoe
         cMPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9xHxzzoJsLwQJIfkrklY6LF3mfKs21B4SqBw8QNMNsM=;
        b=DDqcDuDG4TQos2mOFzTvkpxPt99Xudyy88TwdlEpt5B01wF4xEdYyFZyVP3pkVRoSx
         qbdUKo7sWPMfELdY15/TAfUHWhRkcj7X/8ixRQ4AbVSrSbSXRRqggsb/rOzwALrxXoGh
         K+kyomDN7G8tmYYZptJTHT5i9bvOtrOVqdO10HY+CIMaivOqb6X+vxvNxRM5LWPK+GvS
         fjmJinayTfwZjEFNhNzdqF06PT7GhttY6uESOhVQznnr1XFPr6HKzaXj9HZ3AKO25kXL
         94tGJS6TEJqVYsxcHOnrGzjdtetayee9vordADK/XAZGxJLVUJHFuSLUynXzGR7Jv/VD
         yX3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=alauMrl6;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9xHxzzoJsLwQJIfkrklY6LF3mfKs21B4SqBw8QNMNsM=;
        b=RUX60BXOGDPeLyaUJ7HHasicb+H4y21IH55nLyYBVoxsNfSPBCORgEZeq6ftXRUNPV
         7cirt/PLn/FLVZE01kPnBoDk0QQdxKzZjtjRU5iPsx3oGWGuhOb2+WVqvCIMvE1f70uA
         ISl2EA+MKOAIpzxWBNWw+ga3E6C57M4x2gx96gso0JQAk4xql0csWzmJuoqrkb1sfxiP
         uiiP8DbY5FPcpsaKHiwm0a3gNs60xq5dNxBAKNvj7Ejiwg9NfYoPBPef4DY9IW3B/e5m
         OEaHHfuvAG+MJDZ0zLUg9rjhjSOsvURBclfuuRR7fL14UqDSuGvy9IvH74Plha8FRAvo
         fYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9xHxzzoJsLwQJIfkrklY6LF3mfKs21B4SqBw8QNMNsM=;
        b=iCaA7Z31knHygSXYhmHoaObDBxtSciQg1buCVk4wtQJd6BlrFxqEJ5ashBRqtI90Sh
         CA7SbleYPFTwOsBG4fh3eXiJPSJa6I1a1dVIVxUCRP0v8UFnxXvn3hT5P6VvEQ72TURN
         q+zTppYn2je3E0J4ZaUQNLKfHuRX27dBAcyEUazWQIsmGV8+UjbcRhh8Qf0zfIuPqHM4
         pa0Wqw2Q+6Ixz8a2XnySW1zf9oY8GwncoCUR6Uon5MpLMGvtKfoREu0EctCfWH27VrND
         1yUL7E7qReJ1uemNS+chWbo9PD5ZqKe2ij6ZJEfvzIxecILXojgUFpOp3QrZYiJV1AoX
         TzMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Yu2vMTRzgz/ICifn1gzM4hrSrYm4+R6frWMPu+ICwgMif7IrU
	hTUYtjRjSa8OdgnjaIH5FlQ=
X-Google-Smtp-Source: ABdhPJx8wMAJ4izsXi6gayyTfraFGT+PAeA0TdZV7TyusWreIoEUJCVqtrOs7Z5kRiZCBkAZC2TXyQ==
X-Received: by 2002:a05:651c:321:: with SMTP id b1mr353501ljp.102.1623251291894;
        Wed, 09 Jun 2021 08:08:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls2071815lfa.0.gmail; Wed,
 09 Jun 2021 08:08:10 -0700 (PDT)
X-Received: by 2002:a19:dc01:: with SMTP id t1mr30945lfg.264.1623251290735;
        Wed, 09 Jun 2021 08:08:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623251290; cv=none;
        d=google.com; s=arc-20160816;
        b=AQIXT23LgvQyIcdakgSi2ZCQy7IFPh7gcKyBneTtUSMbzParc8T5gdWJZzu1I+DCJB
         AdGXS0YJWD3rdswwOrhBmCkCSDSFBfm3MzburvBmgPQBUYbGZ8Bmorb2ng6ks7N34J4c
         LT9bIAI7GNgcacPuJQxpum4BATlAJqAUlOHDaieqaxwaHgndpMK0egzo7OSFfVFW52aF
         NtNRa6rGIlLsbEfdxvaZt7OxZsrqAcBh9YfpvqmhSL+5/NVLc6wFh5dfTyrJNZkhq/S/
         BG2dnfCRN5SpU/06GCga1GRBVRacBKHpaaN9ie0UfLOa0/lLpjxfUlBTp4VPnnqXxgJH
         NtLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=bGSDp9v/6VI6NXx/o7FnCwfsLH/DQ2C/TbgATT+JAzk=;
        b=KSza7dtJXXKrYGOl9oCD8mIELrBSmTL+hdkYa0ZO+qLmqD4+Lap8ErqIboZZzb3GKn
         FavP9p/kabWjGBicCMpox+BQohAlBk/hCgJR7ARgfMxwvQWyCO0oRjOtFyEj08gM/sQo
         UVWynxb5uDE5rSptWUU3x4mkUZO1CBLUeiOuHPg/1m+nfQr8U3ESOMcJ2zpMqWp5hMna
         Sj/BNsEe18mBEt3B8mUHhLhlPqqdbP3WhWz3skpvpRped9ld3JRpFpzL6Hk1OrTsqBsH
         iqkkB+IEVxEBcXH0DEiuD+SgoJG57nm1NElieZw9qi8+fyWKsn+5vXtWmEj+HbluN+io
         /RVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=alauMrl6;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id d18si9319lfv.3.2021.06.09.08.08.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 08:08:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqzoG-0057e5-CX; Wed, 09 Jun 2021 15:08:07 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id F3A239867D0; Wed,  9 Jun 2021 17:08:04 +0200 (CEST)
Date: Wed, 9 Jun 2021 17:08:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Lukasz Majczak <lma@semihalf.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	=?utf-8?Q?=C5=81ukasz?= Bartosik <lb@semihalf.com>,
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <20210609150804.GF68208@worktop.programming.kicks-ass.net>
References: <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
 <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
 <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
 <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org>
 <CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq=P03k8HHW=B4sH0V_uUg@mail.gmail.com>
 <YMBrqDI0Oxj9+Cr/@hirez.programming.kicks-ass.net>
 <CAFJ_xbodWTQQaJ-3yJ4ZQOiTFFXo6M+cn_F0p157o=80BwrQAw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFJ_xbodWTQQaJ-3yJ4ZQOiTFFXo6M+cn_F0p157o=80BwrQAw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=alauMrl6;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 09, 2021 at 02:23:28PM +0200, Lukasz Majczak wrote:
> =C5=9Br., 9 cze 2021 o 09:20 Peter Zijlstra <peterz@infradead.org> napisa=
=C5=82(a):
> >
> > On Wed, Jun 09, 2021 at 09:11:18AM +0200, Lukasz Majczak wrote:
> >
> > > I'm sorry I was on vacation last week - do you still need the request=
ed debugs?
> >
> > If the patch here:
> >
> >   https://lkml.kernel.org/r/YL3q1qFO9QIRL/BA@hirez.programming.kicks-as=
s.net
> >
> > does not fix things for you (don't think it actually will), then yes,
> > please send me the information requested.
>=20
> Ok, it didn't help. Peter, Josh I have sent you a private email with
> requested information.

OK, I think I've found it. Check this one:

 5d5:   0f 85 00 00 00 00       jne    5db <cpuidle_reflect+0x22>       5d7=
: R_X86_64_PLT32     __x86_indirect_thunk_r11-0x4


+Relocation section '.rela.altinstructions' at offset 0 contains 14 entries=
:
+    Offset             Info             Type               Symbol's Value =
 Symbol's Name + Addend

+0000000000000018  0000000200000002 R_X86_64_PC32          0000000000000000=
 .text + 5d5
+000000000000001c  0000009200000002 R_X86_64_PC32          0000000000000000=
 __x86_indirect_alt_call_r11 + 0

Apparently we get conditional branches to retpoline thunks and objtool
completely messes that up. I'm betting this also explains the problems
Nathan is having.

*groan*,.. not sure what to do about this, except return to having
objtool generate code, which everybody hated on. For now I'll make it
skip the conditional branches.

I wonder if the compiler will also generate conditional tail calls, and
what that does with static_call... now I have to check all that.

---

diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decod=
e.c
index 24295d39713b..523aa4157f80 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -747,6 +747,10 @@ int arch_rewrite_retpolines(struct objtool_file *file)
=20
 	list_for_each_entry(insn, &file->retpoline_call_list, call_node) {
=20
+		if (insn->type !=3D INSN_JUMP_DYNAMIC &&
+		    insn->type !=3D INSN_CALL_DYNAMIC)
+			continue;
+
 		if (!strcmp(insn->sec->name, ".text.__x86.indirect_thunk"))
 			continue;
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210609150804.GF68208%40worktop.programming.kicks-ass.ne=
t.
