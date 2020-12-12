Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZVD2D7AKGQETSWJNWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FE62D8387
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 01:42:15 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id f19sf8589098ilk.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 16:42:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607733734; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y6mlitgoPBGjAIysfZ6Qq5g3Wj+ghm/D5r9RqMX5vLtDlmpuAFHG+WX3/+jleD3ujF
         ZeuGvSTDDZeXWqRGWiQNcyOdiDvQjGxyKcS762N6O7AzV333sDdus/MKEprroCnl98sr
         TB0Ndu1bdcFxjOuodnG1HTSScOfcDs+UFKorKc1fAm6ljYxW9QEVfkoDQaAyG7eOTf0i
         4IjZ4PXV86LM1XV5dyJwuxXAECHcKXUS6KECfsYyR8I95ZiIG1UK1Ro2ghi0ed2r2NXT
         i4VZynSM3jcI2rxZJvNgdBcBuplG6VKldTbfQgR0rJdsR+YavG7lU1dimnuV3V4tse8K
         2WaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ETHi5jmpOrUwEA9ay7skEYHitZMgU6ewB3ICEpTrAiE=;
        b=bLpODE8ZSo7MVrS9n/alGsuCehJLKiMW7ctuHlAh7t8LK49F6SSvOhM2o8q4uVRuMT
         ugfxWp+JKuoMOnByZLx55Tiji8M0PMHgFD34oHv4bIxjFubzEYwRA94CjFeVeP1+ORe3
         M6qwWYmnmvMGBpjPqNsBaBY4x886yVIUOHuhIvCBQ97Tn9PyqIo5zDsfk8l14eson4nC
         6RU/RwNHQcYsq4EYhpaS9CxCpab6U4A9DBs6NM9lDaeRvK7pTBPWs5QJ07KbU4CX/omg
         rdz5Aq0D9i7qNkzhK/+1XSSg6TOoMazVGlbQ/Axl7aEgLjtfj3A49nHYoCbjHt3DbXuR
         KGcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ri1fHgSK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETHi5jmpOrUwEA9ay7skEYHitZMgU6ewB3ICEpTrAiE=;
        b=E+L+DcePHSNXmS1aQcD1b4fuccMf3sxdZgy58riohOsoGu3rqxnnaESKYmiaSbwpxs
         1LwsmIcGnrz73thFQ9eJ+uUBrHBdHKTMFNDtaY2/s17GCIvD9yhIXsdzYYA2kd5X5bF/
         /sU2vAyjs0KRgEEecmyZrtDO2BRdwtEL7H/n7zUD16VfnPaAv2FdM5yN3PdW9JdleaLc
         r8aWrfg2jbhJ90myYm1xWx3MjYr6YLA70cTUZ9yFE1R8j3UzAqAAJ54S8A3w1vMXQyL7
         hKq3InyqiI4x5WOD2x0Y7MZXMZwHsuZcoALT456e83yGcV87c7z57aMSRIQtKYTq1IJv
         7i+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETHi5jmpOrUwEA9ay7skEYHitZMgU6ewB3ICEpTrAiE=;
        b=VSs5nCrw3ZvbyXH4GeWboZSdU53RcIMiw1bdVcXQJvqRsjzSqF9u7UO/2nLD9kxlN2
         di7kGFL9BdDvorZ4ambsOYqe/RcMPzH+IhifVgGfg7m8zTzwuWXdMbab6lqWArIa8mA7
         BuYBwKW8YJi7haEpoixbWDwXY2zmlBcShLR5AWyr2YgDDooe+tk75plH66CKJdoqpDXN
         AqZFPgpE1amDurCIKHvtXsOSuK/xvES5G/w3L331fGHrMTHmGeQsvS/gWvUvHEMUijvJ
         3hs03hRBjZFTdtfjQ+9YBSsmuJH/H6pk16zP09CVktLm4U0iZuvkLYnMfdhoGs+xzyZp
         ck7A==
X-Gm-Message-State: AOAM531xxg9eqb5b2vKNz1kpXgLPQ/jHVYLs5MuXzIuiRxhgebk1A+C9
	5vWdC/gPk1cdRRcEZzBR7Zk=
X-Google-Smtp-Source: ABdhPJxnnlzRBOi8knPu7UMW9ebkpgf/ZzRYSUdDygxp7+h2pBlZ4H65/7Cks6O4O7qTFp+/iofU5g==
X-Received: by 2002:a05:6638:248a:: with SMTP id x10mr18675698jat.29.1607733734215;
        Fri, 11 Dec 2020 16:42:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9e46:: with SMTP id j6ls1749177ioq.8.gmail; Fri, 11 Dec
 2020 16:42:13 -0800 (PST)
X-Received: by 2002:a5d:8ace:: with SMTP id e14mr18892980iot.7.1607733733677;
        Fri, 11 Dec 2020 16:42:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607733733; cv=none;
        d=google.com; s=arc-20160816;
        b=g1hvqJOyssmtPAulJryc+BuPI6ohIXTNkaPjRtT51LOPpfPolNv8/YUMOkp02MDZc9
         lxtuBCZWjqgA5x/TmLRZFoJxMBdj1EwTqr5TWEk+9Y3jlr3lYfeQac35aC01Yh8iKm9c
         QL6GLKnkqBZidaJu9eYJDECypePUwBp7yft8DXuJsttYee8fGkpKVPl7P5whKobhH1Jz
         QvDuLaEMmQHC4rQId72bRAsrmnR88s/E5i1AIja1ul5PB30vWOCwhAbysVwmAAY4aInH
         2TdDv6xdXRRiIox7bde5FRtuwc3LBq02CP01jOtoWXBWXUCpl6YOud4P53OdgL92Geev
         QNYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m++FJGCpjdIsgXi9J+g0QKXQurSaVcqOL9EcUIUCaes=;
        b=u1OtQPxiR34gUWcyGK/Watf5Y0Xm90u0k1Q+WLXgGnAyt4FhKoWdKja5rSwqD154Uf
         Y5S8ZpVgmN0sZd325YMXvGyfhIqKo6yde/VcVpfSW1frw7RxoozC7WHQ//WCsn3GTKbb
         S/uW8iHfs5zLoVw0YfcJvQob3wvorOFE+wxdd6x9kF0V/WkF03imzhEssvfEqQYd/URB
         0dvWY83kw/IVh3jK8c7gGFY079RyQmWAErXP889rasbMqQACTwJiPFcoy2CwkVr/H9F/
         z2TDQNMlW34vbiPb7AfpXytS5CArIRaKTTHjsASHvwRpJrEmYY3cY0k7TP1laR1Eyee6
         3lzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ri1fHgSK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id q4si797920iog.3.2020.12.11.16.42.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 16:42:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id p6so5465007plo.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 16:42:13 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr13423128plc.10.1607733733005; Fri, 11
 Dec 2020 16:42:13 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
 <20201211093205.GU2414@hirez.programming.kicks-ass.net> <20201211163748.b37gashl6an6misu@treble>
 <20201211164915.GA2414@hirez.programming.kicks-ass.net> <20201211174610.2bfprpvrrlg66awd@treble>
 <CAKwvOdkWU3qQ_m3v1xn1Mm6+obC202NWEaF8g_gz3oqeeLkMQA@mail.gmail.com>
In-Reply-To: <CAKwvOdkWU3qQ_m3v1xn1Mm6+obC202NWEaF8g_gz3oqeeLkMQA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Dec 2020 16:42:01 -0800
Message-ID: <CAKwvOdmVq2StZbKZ0eaLEZmrPMgRUJMZFso+2G8tLJA_Nd-swA@mail.gmail.com>
Subject: Re: objtool crashes with some clang produced .o files
To: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Cc: Arnd Bergmann <arnd@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="0000000000000e2f0405b639ae57"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ri1fHgSK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

--0000000000000e2f0405b639ae57
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 11, 2020 at 12:57 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Thanks for the patch!
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1207

Arnd reported another objtool warning/error from another randconfig in
https://github.com/ClangBuiltLinux/linux/issues/1209 and CrOS just hit
this as well.

I haven't been able to isolate the configs yet (Arnd has posted the
full config: https://pastebin.com/wwwhUL8L

$ ./tools/objtool/objtool orc generate  --no-fp --no-unreachable
--retpoline arch/x86/entry/thunk_64.o
arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn
at offset 0x3e

Is the offset 0x3e referring to the final `ret` instruction in
preempt_schedule_notrace_thunk?  Observing insn_to_reloc_sym_addend()
(with your patch applied), it looks like both calls to
find_symbol_containing() with offset and offset-1 returns NULL.  I'm
curious if there's another quirk going on here, or possibly a config
from the randconfig that's messing up the special case? I don't follow
the comment about:
119        * Hack alert.  This happens when we need to reference
120        * the NOP pad insn immediately after the function.
121        */

Attached the object file FWIW.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmVq2StZbKZ0eaLEZmrPMgRUJMZFso%2B2G8tLJA_Nd-swA%40mail.gmail.com.

--0000000000000e2f0405b639ae57
Content-Type: application/octet-stream; name="thunk_64.o"
Content-Disposition: attachment; filename="thunk_64.o"
Content-Transfer-Encoding: base64
Content-ID: <f_kikz03r70>
X-Attachment-Id: f_kikz03r70

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
--0000000000000e2f0405b639ae57--
