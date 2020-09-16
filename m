Return-Path: <clang-built-linux+bncBCM33EFK7EJRBQPRQ35QKGQEA62WRVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5325626BD9F
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 09:03:30 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id d23sf2007683ljg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 00:03:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600239809; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q3t0LSBk5fVcD+MAHl3ta3LwNhCIZ02QGNnFKxiNHU9OVu3F+942rgiPAsleuW6+d7
         Bgu1q+pQTBB+nkF/rK3SV/H7CTvKQZ5gW4X9VipXxdJ8CInMJIKFipJsXTu0lAPJpY2O
         HmZnvgjQcaYSthGOvCY/Wrpdngt4lZFT5C+MBOFXin3qMxDbXF1oaiOOr6M2q3JtB1Zb
         eynnjLNGJiCzfw60ytVkL6U9kDW0d/LBwaSOVFP9qC1LRhVwojMklQWfrN0TA0NeMmfN
         GM39c8MBMBnkX2IcLBm5gnl0jUk2fCxlTb3pwdJFIHv8ihVW/knnuNvdB0pjr1tAsrQb
         Z6FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8FKNuJv87rxzcAETJYGrKNBMkMruA0kpsFRnEw7BUtg=;
        b=WY5Btktw+eAFWp1BhDVbQyk+T9gLpUXnLC5kV29GyiyVJ46sNL5pCW6AYRUYzV7FcF
         PHEP3jTjRPGwnfnA1VrWltId8pyvC+xe/0vH08zAGWi07OGzzmAhE4qlXVqswPwe/B5w
         2exTmNBrWbkPiX7ajTH5oRtW9qlsgf9bv/ukW5dukRZvYN33Ol57x7Y6H0fbJl3TS6ya
         CiuELQ5/7kQuo688cLE2mD1U4GXPlagnhy/yJY648oXSg3Mw0PxHoyvZzFcG0doYa/Su
         8PPN4TalaiBlvrK+3fGD6AL9CcnmNIztNyeEX6wUFkdnD8wtKS2ALvUPW5Ls9nJM4yik
         7oww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+UdvNV0;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FKNuJv87rxzcAETJYGrKNBMkMruA0kpsFRnEw7BUtg=;
        b=Ijoo0wzkY3LmHuTSXPnLexu+LkM0YAG0smCGR5fx6wFAIzU7qL6h/Rs0x66n+MJSjM
         RCbTJvpyI6wOJs6/KJl52xICi1sBNcT5eqII/5ul0KjqONsN50ixKnnA4u6esikG0lWZ
         F99sUilsW6tw7h6IHadG/bq/IgfJi6allpGnsBwNF+gi4Se3Ow++5BzjzKpe42Sc7kyN
         l8ghsji9xrBzEqkjUnZjNvFfUub8TSoZj2Rm9nTZpzcD6zsmJ5A7OAsVWYeFCXD1dnB9
         d0XYYvMpr7DjyDExCnwcOGT/Kk9duNNGniBCX2VXYtV9+A7U6kOOK51T0r0SonTeiCzq
         gNxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FKNuJv87rxzcAETJYGrKNBMkMruA0kpsFRnEw7BUtg=;
        b=ifwZTVGE8z2ejrNrTts1JmtPf4ZI258YET5tHlw96mQqB/8EtsLkaudDaVDfEq/Ggf
         eATW8wVf6JecZGtlsdx7S+mA+/7h7bYV+52Dmva07mODN8CDR1mlHGuQmkLVKgtX5E0+
         eIC1H5IZQBDX1bvjyoFjdRQ6wLaJMliZ20foK9C6ab1NMGDCbDoci0XX56e7bywxIMkD
         jvqRE0ZBK7PO3UeKsCK+FvVlzxr58ES1ij+lgpLE3EdcXxuR4x+2v+SV2DODN269egjk
         gh8Oy1Lvmj71Svlfv+hf97+cFasEd15u7HxEg7xjjn5to6zlvSDNfYbfo6VIiytxFZq4
         B8Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FKNuJv87rxzcAETJYGrKNBMkMruA0kpsFRnEw7BUtg=;
        b=CW0vCeO1yhBmbha4yLpOtrDRXIxlmbOq4eW/awtZJ2H8kAl6ZhVyPOJwRl/wr/Yn+0
         hT9pl0RktolxpVcaWLJ/OgzhDMOhPRFW61cABr4KeaouLz/xXPG3z0CaN/bmDJZBv7Zz
         byoejBfCm3fRBkI/ieMJp5Emla/eoK6CwDZjUrx0gGDdFw0BWglg2P4PXMfiVyxWJ3De
         y0H4yVHIeKs1jTbFNoi/02lbXt5CLvIF+qMQ0KrGgV4qL3cGOCu0GxLa0b2heKATnjOd
         SSCynB8FoJcD5NWEe5MgofSnZgnj3ofbydzhpEAYo7FJzQ2HpgxP735Pl2PtqafAeCGE
         390w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EhQQPyMYF4wtt4aqAHXple46wM3UBF43bDJK8YwRGNJ877dYr
	v/xEJdauj3p3xfofOi3AuDE=
X-Google-Smtp-Source: ABdhPJxdTiihA7kJMymI3SUZDaDWWG58DhsM+lK21MmVHhDnja/fjCK9/ksusAlX8juhga+Dz2VS5g==
X-Received: by 2002:a05:651c:506:: with SMTP id o6mr8298447ljp.233.1600239809641;
        Wed, 16 Sep 2020 00:03:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls133440lff.0.gmail; Wed, 16 Sep
 2020 00:03:28 -0700 (PDT)
X-Received: by 2002:a19:cc43:: with SMTP id c64mr7657235lfg.123.1600239808432;
        Wed, 16 Sep 2020 00:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600239808; cv=none;
        d=google.com; s=arc-20160816;
        b=g1lMLJCFUNK6JszZ1K1wMkQNBhJIUjrUDM/eQzftq6ZUke5cREcGt7zve6GMb4mChW
         7zmvq+4p22JIdCPSPD34KVqMxPAS6NfO9fo+bHMZaknVu/jYx0Ai9lz72V7HLzQCAsl9
         KKNaN94+CJXbB9RFkTf9cyEoXR0dznTlS/6JiqG0nXvwTuKTqHYnfkEWVT5DyqOlGrPa
         UwEHmENklAobZQcgO059Kx+oB7FVobrNskQ7nZ/qR6PHrX6R/pEPahhMcuiqpGvTq1jQ
         1zaG1ENT/SvJW+QZ+yQ+4J/E2OVaTJd6SHyVuULfFqa+ZfOVH3m1YodZTgvl107kJGU3
         CCiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M12YDuTVvt+O6a6j14Ji1m8Yc8t57W8FWhVTEPcXPko=;
        b=0wHdxSaymmWnz+dVzAC8D5Xxc/qQ24LZZOIyfchU8pcYKo3WTVttGBz+KFtk104/eY
         MpUTPNqx9sRxpuqqdSfIDE4ZnBeQ8Eg5AHbW6GcA5oK+5edvW66ox4pr3rhsi+2JLcZ7
         URx2SIVL+P3RABfZrbYNzgWtcWvasKYpfsfpZc8HbXgju/Y33XSa6Wu68P5AqBI/MRtV
         V7wuQdO9w1myNa9O4EhZROHQ0c9t5aHR+0SuzUbRKDusEyf2MZ6Fl6goTWzMEOeuj7bE
         rKq901jA2mweZSA6J1UTsT4a4ElEKd5C3IAuwlxdwNnqQ0LxArjtqXg5bCRnOu4BS1qp
         Aj7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+UdvNV0;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id h22si512448ljh.7.2020.09.16.00.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 00:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id y2so5747586lfy.10;
        Wed, 16 Sep 2020 00:03:28 -0700 (PDT)
X-Received: by 2002:a19:189:: with SMTP id 131mr6663801lfb.331.1600239808160;
 Wed, 16 Sep 2020 00:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic> <20200915210231.ysaibtkeibdm4zps@treble> <CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com>
In-Reply-To: <CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Wed, 16 Sep 2020 10:03:16 +0300
Message-ID: <CAHFW8PS0WYdfO01XwmLa+3w2W-z_FF_a5eeF8Z-YfuCMQ15ccw@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Marco Elver <elver@google.com>, 
	Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, 
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X+UdvNV0;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::144
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
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

> Should objtool be made aware of the config option and then not check
> traps after no-returns?
>
> I suspect the latter, but I'm not sure how feasible it is to
> implement.  Josh, Marco, do you have thoughts on the above?

This seems to do the trick.

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index e034a8f24f46..9224e6565ba2 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2612,9 +2612,10 @@ static bool is_ubsan_insn(struct instruction *insn)
                        "__ubsan_handle_builtin_unreachable"));
 }

-static bool ignore_unreachable_insn(struct instruction *insn)
+static bool ignore_unreachable_insn(struct objtool_file *file, struct
instruction *insn)
 {
        int i;
+       struct instruction *prev_insn;

        if (insn->ignore || insn->type == INSN_NOP)
                return true;
@@ -2640,7 +2641,8 @@ static bool ignore_unreachable_insn(struct
instruction *insn)
         * the UD2, which causes GCC's undefined trap logic to emit another UD2
         * (or occasionally a JMP to UD2).
         */
-       if (list_prev_entry(insn, list)->dead_end &&
+       prev_insn = list_prev_entry(insn, list);
+       if ((prev_insn->dead_end || dead_end_function(file,
prev_insn->call_dest)) &&
            (insn->type == INSN_BUG ||
             (insn->type == INSN_JUMP_UNCONDITIONAL &&
              insn->jump_dest && insn->jump_dest->type == INSN_BUG)))
@@ -2767,7 +2769,7 @@ static int
validate_reachable_instructions(struct objtool_file *file)
                return 0;

        for_each_insn(file, insn) {
-               if (insn->visited || ignore_unreachable_insn(insn))
+               if (insn->visited || ignore_unreachable_insn(file, insn))
                        continue;

                WARN_FUNC("unreachable instruction", insn->sec, insn->offset);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PS0WYdfO01XwmLa%2B3w2W-z_FF_a5eeF8Z-YfuCMQ15ccw%40mail.gmail.com.
