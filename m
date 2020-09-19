Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYGKS75QKGQETH2QUOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C97270D60
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 13:02:58 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id h20sf4039141oou.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 04:02:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600513377; cv=pass;
        d=google.com; s=arc-20160816;
        b=pPFOhvl8BR7bLahXSDvCXIuYcdGpXCcAu4aj4+aicsCR8/ydOTEG/hN27DNmEd9ZcA
         pJso8FZLUeisFvOqKSwafKjhiMB1ejDda2/0GBwYg7RKVRc0ujAJO+jvJ4p+SKfH3ctt
         HzVvC/Om+Qh4QP3RQaWZTYXtCf5B5LCRzVUWdAv5HE2BKoF3tMuOxtwustoq2rM/LHM9
         wpHXQ/EVeJv/CoMHcEPQgW2S+/ysOrQ+iwTCiHN2qYz+4EdLAoriPYR+oO7MzKtp4mYl
         iv2uiKVQggZCwZr/qwdUK+fOf8DDo4NSnx1mXS7nr6VPnhFG44iB/+JIv10fmGW9OxuM
         /ihw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TKCDK9twC3Ggqo6RMSDzhLo3xM9SwW8cYok2mo3TDwA=;
        b=xGZ/w+3xZM97hnxPEDn6e76tjzcFVeXG0kwfcIlHs3D34Uf4n4svjlgGTJomVOZTrK
         WqsZsZlGoVhn2vnSg56S5jHAP5RR0Mnz3D1uFQOoC8ntxRbBgHGU957741R8ZI/kOxGZ
         VxXQD0RaCQGTAZ6boKlZXginnI0ylOqVrstqzx0kROqdF4V3++lMtNFZOVXuwD7Zfdqp
         GhHcbBjOmSHq0ggTFyulwe18/q7rINH6rwQmRgdxvrWaB7JiiwSHfFJOZsdMtRBbhh+s
         J8sD9yQhZ7l6mui5qHzrKfAems0kCH8A1kJwASLY4nC8t/EfB/gONArvMhUkaNh9dNFM
         C2ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MCIFkzn4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TKCDK9twC3Ggqo6RMSDzhLo3xM9SwW8cYok2mo3TDwA=;
        b=ay4P5csYalJXszvQjj7J1xXEpy3IqxfpoCxRbz6Y1g+AEls79p4eJrxY1eN1RF7W2l
         TLUXrEPUSZhizgtaJU7FIxedBz52yvWcFiVZTnVrYvYXplh8bdXZWam88/ed6F4gpsEn
         WG9RZwMxbOYlY6YoUZnGfuG2Tmr+EJljbIIXT+0L2EZRxyaROdKEzC9j6SyiHmUBNQZH
         vwLfT+zWFzVeNGBfBVy7MqRGYjukUIpAb33bys4SdU1qJ9SRHBmZ+ytPewo7UGvHFXH6
         JzFx8x+wtwRBlITcSPGB7x+iXbpRLPcZMCZpFXJPqHYIJe+E4HAc6MY3ijYkmzLbUkX8
         L3Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKCDK9twC3Ggqo6RMSDzhLo3xM9SwW8cYok2mo3TDwA=;
        b=dIqlOc0VBNxDdbOQwA5D+b1jGY2yvjm1lQMb+QIH2TyMZshVKdHSGjiq0pCkPIn0kD
         kB7guB6VgNBxb8DrYLkt6j7CAy7/dKi0+Vm2LhZz1/Hjuz2oQuZQoHRaYSyawqKutXwh
         /18sGkaXKuMtfWLjo/JETh75WV7mpGFfpNTFSyhEoixqKa4/lYtrbR8VaxK1w5uke+m8
         sfRBy7EbIzPdMM1BkepXL91PGBK+vLTMIS7brOXw93hVFNYz70Rt7qJLBHejlrwjCH/i
         4InrbIF7M1lyJ3n+/B/a5o2xS4A8m6O4ck/byc6roCoJ6d69B5y2gUDKMWYn4aVhDpZn
         PSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKCDK9twC3Ggqo6RMSDzhLo3xM9SwW8cYok2mo3TDwA=;
        b=OGc0jtSJ3lePNwTkFr1Av/m2QrHhF5lcuUS2hEuulKvVzOnbC2EiLid9QR7gZNi6tV
         pZzZYKHZEHleapDOnvxto1cu5P/1MuduTDMp6w0vIBJiR/fSoOqJmbkT+b2dFdjPSzX8
         BCcJPWqQSTbu34ydmb/CtWJk6Zbum2j8/nWtJy7lVqGdr0QxX6A+acGXv1kM/eGSutaq
         izFVt+xouvUZQg/iLnnFVyQhuNm2gq+9M46RZByCzqgJyRenWDNSG+uVyNORBhikH5Cw
         mviYGpLwUpFxpXLMF6Zq251hweiY933plWa+Wl9oAXF/L3OlCed0hNe4oH0/g6DiA6kd
         47oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xJjT8T/ZA9utShA8O0WubeRyCxj7CTxe/i00wzsA8rLE4NGEA
	0sYxdtxStJOPqlKsBzx9pkA=
X-Google-Smtp-Source: ABdhPJyWYma8QzgSWVuR7IFrEaG98+Zt67ppkHnhbTza2Gid/uYzBFbg275e4pfoX78yGkCOOo3MNw==
X-Received: by 2002:a05:6808:102:: with SMTP id b2mr12071549oie.79.1600513376985;
        Sat, 19 Sep 2020 04:02:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ca86:: with SMTP id x6ls483127ooq.5.gmail; Sat, 19 Sep
 2020 04:02:56 -0700 (PDT)
X-Received: by 2002:a4a:e862:: with SMTP id m2mr27286656oom.33.1600513376363;
        Sat, 19 Sep 2020 04:02:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600513376; cv=none;
        d=google.com; s=arc-20160816;
        b=VbDfuS5bnac0Q6ZGncDLw80J70dQW7/X4adhUmdm8qP0kocEtmDLfg3Srv4Epx8EKk
         14OZ31k8WTT2TErHSKhXlcbKvdHNEA5oN2LuH4UBt8bbTgvNYWx3hImM1nmA7ZBXuJff
         LrjCK4Hes04PaCNmrLiM0pYZc05COYiDcUvcVoIHQAjKL9XREwP3yVvdTa0p5pdzm+Yb
         x4eVNMXyPB+ZouHPn5yYk7knD/bDNies1AbFxje2suScLv2m0ld48GgJjPslrWKKzIQZ
         Nw9PfRqNO9tqqUtu/qW6/DhgcuWdEWJwEh/rZQ9STir5DF9mRmebv6DDk5BgRPbF5Ckf
         MnjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3h23YiWPGuupu0L7W8TUBUUA4TL4R9nY/LN+gBcZbe0=;
        b=S48611ob6aDC/FLs03s710C6EDvO5rtFZG297wlWXBD2kbIiFhFO0Is91vpRodiQEo
         no3cWowhM6TX5FlOlsioy6B3zyfx9k4o9nAinGj0ZAVHpQOvqCYWNEkZH8CN/nS25Jbf
         88BZxQAHwk/ilPgDesyiy8S3/QEF+UjEvoP6VP/o112yCpewOK5wMQ6FBvjLxwTvOQ/z
         b3vl0DH8nuQwBZFtew2Fus4EpG8jr3BYW3RtPO1+yYuwTcRe5iu2EpvX96Qvlt2goJ9e
         qvf9cyzOdyW6K+OCFCLoXKAGDNvWF+GLwMifSKCSyY828Pljh854et5aVfDD18LEmmrE
         0f2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MCIFkzn4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id u27si429763otg.5.2020.09.19.04.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Sep 2020 04:02:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id u25so7883248otq.6;
        Sat, 19 Sep 2020 04:02:56 -0700 (PDT)
X-Received: by 2002:a05:6830:110b:: with SMTP id w11mr24254895otq.109.1600513376087;
 Sat, 19 Sep 2020 04:02:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200918154840.h3xbspb5jq7zw755@treble> <20200919064118.1899325-1-ilie.halip@gmail.com>
In-Reply-To: <20200919064118.1899325-1-ilie.halip@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 19 Sep 2020 13:02:44 +0200
Message-ID: <CA+icZUVxsXXocAkiLM_Avv3vmFn=Gzm6B3s6aRrE+ycQB2Bxng@mail.gmail.com>
Subject: Re: [PATCH v2] objtool: ignore unreachable trap after call to
 noreturn functions
To: Ilie Halip <ilie.halip@gmail.com>
Cc: linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Rong Chen <rong.a.chen@intel.com>, Marco Elver <elver@google.com>, 
	Philip Li <philip.li@intel.com>, Borislav Petkov <bp@alien8.de>, kasan-dev@googlegroups.com, 
	x86@kernel.org, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MCIFkzn4;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343
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

On Sat, Sep 19, 2020 at 8:41 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> With CONFIG_UBSAN_TRAP enabled, the compiler may insert a trap instruction
> after a call to a noreturn function. In this case, objtool warns that the
> ud2 instruction is unreachable.
>
> This is a behavior seen with clang, from the oldest version capable of
> building the mainline x64_64 kernel (9.0), to the latest experimental
> version (12.0).
>
> objtool silences similar warnings (trap after dead end instructions), so
> so expand that check to include dead end functions.
>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Rong Chen <rong.a.chen@intel.com>
> Cc: Marco Elver <elver@google.com>
> Cc: Philip Li <philip.li@intel.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: kasan-dev@googlegroups.com
> Cc: x86@kernel.org
> Cc: clang-built-linux@googlegroups.com
> BugLink: https://github.com/ClangBuiltLinux/linux/issues/1148
> Link: https://lore.kernel.org/lkml/CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> ---

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

>
> Changed in v2:
>  - added a mention that this is a clang issue across all versions
>  - added Nick's Reviewed-by, Tested-by
>  - added Reported-by
>
>  tools/objtool/check.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index e034a8f24f46..eddf8bf16b05 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -2612,9 +2612,10 @@ static bool is_ubsan_insn(struct instruction *insn)
>                         "__ubsan_handle_builtin_unreachable"));
>  }
>
> -static bool ignore_unreachable_insn(struct instruction *insn)
> +static bool ignore_unreachable_insn(struct objtool_file *file, struct instruction *insn)
>  {
>         int i;
> +       struct instruction *prev_insn;
>
>         if (insn->ignore || insn->type == INSN_NOP)
>                 return true;
> @@ -2639,8 +2640,11 @@ static bool ignore_unreachable_insn(struct instruction *insn)
>          * __builtin_unreachable().  The BUG() macro has an unreachable() after
>          * the UD2, which causes GCC's undefined trap logic to emit another UD2
>          * (or occasionally a JMP to UD2).
> +        * CONFIG_UBSAN_TRAP may also insert a UD2 after calling a __noreturn
> +        * function.
>          */
> -       if (list_prev_entry(insn, list)->dead_end &&
> +       prev_insn = list_prev_entry(insn, list);
> +       if ((prev_insn->dead_end || dead_end_function(file, prev_insn->call_dest)) &&
>             (insn->type == INSN_BUG ||
>              (insn->type == INSN_JUMP_UNCONDITIONAL &&
>               insn->jump_dest && insn->jump_dest->type == INSN_BUG)))
> @@ -2767,7 +2771,7 @@ static int validate_reachable_instructions(struct objtool_file *file)
>                 return 0;
>
>         for_each_insn(file, insn) {
> -               if (insn->visited || ignore_unreachable_insn(insn))
> +               if (insn->visited || ignore_unreachable_insn(file, insn))
>                         continue;
>
>                 WARN_FUNC("unreachable instruction", insn->sec, insn->offset);
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200919064118.1899325-1-ilie.halip%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVxsXXocAkiLM_Avv3vmFn%3DGzm6B3s6aRrE%2BycQB2Bxng%40mail.gmail.com.
