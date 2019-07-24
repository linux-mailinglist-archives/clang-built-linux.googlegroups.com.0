Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB26H4LUQKGQEZP75DRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 462B873699
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 20:31:08 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id f16sf22694321wrw.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 11:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563993068; cv=pass;
        d=google.com; s=arc-20160816;
        b=G8/ICKmT7seERBk6K82KS92KffEXJlXDmeHQPwfLAXB3scy16AijFY1AnF+SXXYhv9
         BTF8HffWzW4+qdpIHPXpcab98B85tQ+N8OA4w18tMlsREKWkl7Bx7xuSoZ+BL0bjjwuA
         UmS0GsJEqyeNesdQnOuMnEAoOeMQKJ3YRFJYhqNNmWO54hr9//XKTWrefiV6yaqfQ7bL
         pmermExyBmwhRS0kQ3mEcjkFbUKWGR7rAudzAMjCeMHoJWHjV+Hn1VSsUt3LM0zwPOR2
         22GjN99UuLzOLfyORDJlQjnXMy/ktbINPsWrr/YJxx0oBAfwNtpQg3vW8iTDRD1fQh52
         VbzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4MDxS9Wb6KS1hxWfJM5qzYfwBsYg+kv+BxKQim4eLlg=;
        b=o23zQxvhq86Pse8u/fNl5DLJz2phJ3t+9jVwyH769DzL+ei0a2hI76oC3RSBIu6V8B
         mzU++qDAbdZjc+GWN0HxQn+1j/cK1TSLFg51nEkAAAM3r7DfqEDm/NTEbG90r8qWl4PY
         Eag4mlbKXNEmNFpyuahcv8bZ0H12RnVyjTfs7GYeOxHpWf3x7ODrLFVhM4K7Cn0n/YlO
         qzpDkftw+9kJUJg4EVdfFtIRH8G3AUAiHD0MKdC7HZQolJKZHiyZS4MiEps8Z0qnBXXG
         uovlcWRZqkVgaPP6gsCHceZMddHCjUCiGAN8FgDXBXXSFraGJsnFLIphXTNBUJ4vSpMm
         UJqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=llpCdpQj;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4MDxS9Wb6KS1hxWfJM5qzYfwBsYg+kv+BxKQim4eLlg=;
        b=a+9FYY3lPuLdcSmSHCc9BaKnRfKHwUQaNiAsb2Y8kMMMSl0C3iA3tv7zJhK+trPCI5
         8e1QKBI1vneAVkqWen9DzSLpteymOyJTccEPPD+F4Kc7iToIOTQUXNuSI76SLaATUrwE
         II0zr850BCHeTafHsI33Gjx5V/K9oW4fPkTWb37D2Jt5CrUgqxkjmRmMGsGyWOte3/7c
         ahwiCCK6YpMCE448oV0r4qJyR5yrzb8/fKOdpPmHtK7hRZx844T4kNXADesTvO5fixLM
         bngbO2qhFiw4XVvhjD5YI0pCy4SWGitJD2JrbOBXqGBtrVLYdBaeN7TdiEYcdWYYT1se
         vsmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4MDxS9Wb6KS1hxWfJM5qzYfwBsYg+kv+BxKQim4eLlg=;
        b=Bt/WK4uojMzl3Jqjb+cqzPpOOmujQh+wrc4iRyMqCFq3zaZbhQU2E0BENPLiUT0Ufl
         lz+ChhXstPLjxaEMaLpgj6fD7urd5oCcCfZTp4FrkkPYuDcrke1LqWLuTT62fjWVQDT5
         2IHe5u5Okz40NwvLV2+IJuU7D7IkTsCuoB8XBChcW7AMEZWXQZhZnKzU819BqxkF1BHH
         MJPu9EHMzZuxh1YA6yyhyIt+rpNrrEZr0Nhum6Bti3iylELTbaay23hf/k2QddnHT+UA
         ZYHyLljWShjrRGVHkQg4HtBiv/gZK4IJK17aY/8+Y8mNwDhHl64q5u4SQROLpQwbgBFv
         NajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4MDxS9Wb6KS1hxWfJM5qzYfwBsYg+kv+BxKQim4eLlg=;
        b=PuE6HxLSjWVkGcLiRXvNStv5mEM+AveiCVVlEKSHoky/ZzAAsT2KL5IszlrIQVlH2+
         RHxORElGLohnLXKX5EmaprohzuF6gu0jbk8RTMwuuNRyi9f7ore7SqrMIOXPdGt/4Bww
         Gm6w7zZYKsP3D3TN4qmCfAbbIT/r9wk4isoNs2QxyMbbVe5gR26WjOGTqz6CNBCLziCC
         +JBPqHT8vn2XlGgZwkCuo4N+sziQcHIImqShDFnDhuX3HULf7a21XP3uFNITf411dF9V
         EPGv7R8AI2DYXKV50LMHMDqUp5gk60bsGCXDHDnDLow1FHnHokPUhs2ado9UJq7NypTe
         yT/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlKC9rwaBG/LZEAWJjgrvvysPGBGtk0tFvJB3sZpFRsZGfbVA5
	Sz5qWLoNwj63TcOzxPRISIs=
X-Google-Smtp-Source: APXvYqz7bpEHUDIG7J9k2FO6dE7EB51ycSC9MS8zyvzRcpdCMonru3FGGR8ninAbODJReLrgOLxCgQ==
X-Received: by 2002:a05:600c:389:: with SMTP id w9mr49865698wmd.139.1563993067931;
        Wed, 24 Jul 2019 11:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f78b:: with SMTP id q11ls4977933wrp.10.gmail; Wed, 24
 Jul 2019 11:31:07 -0700 (PDT)
X-Received: by 2002:adf:df90:: with SMTP id z16mr42295829wrl.331.1563993067292;
        Wed, 24 Jul 2019 11:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563993067; cv=none;
        d=google.com; s=arc-20160816;
        b=z7SYFaNPnKZc/DQ5E1gyDS/J+jQMF3zmO9LeHj78hAHJ/INhr6qZeTYlX+7kM2c5Af
         Ou65nW+UXvpMz7IS73EdDesWP+EME+3cmoVRcUF1oKwbuVkpGmqO/3UwnZYFQ9q/Wa6u
         vqs4Di/tjkIkIkPQswHpSqDOwpASJthJEPpryryJsSSP429Z82J2Fa5v7JPgreAcA4t2
         l3ATHszFL6fFCs8XVU6pNUQjnIfqfMRESPmU5CxIkDCZFapXiZyjS8GiGLwT6D1KHORY
         LXjG78c6vR9XdB5fyxqYxD0i97NbLm5Pe7SM4oyu7iY2Ub3+co9BqlJlwbKebHAuGjEt
         j4Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8zlDZzsAAvON27k3Pf9Ie+llM2L+UReRB9e0skwMC2U=;
        b=mytz3onlPRtMjM0wB7VsrBmj4gpdgWlT0kOBi1miFA6kplAk+ToGvXoauEcEvjurfl
         wVZxSiwLs5m2FEVrlCXI0wFt6ShKm/+nvPNjeUL6s4Yp0R1dgOy9HBn9nyAlMiIyBLDH
         ttznSdVHsPqISq2K3BzN8nYoLj9k5zbvKo6oxZ/fy4IyLDZ7iUpn4S5oEn2O0fUbou7p
         sO0kjpcabBj6Kd2RFrSrL3NXZGgfpX1d6QdwqJUUsKjgGzcTODv8bBRwZUTnXie88Ju+
         63a55F6JEv9ZsWkXfpQm10qmQenuxRKqd+/AGRQVm1l3rJxgAN3+MtJ1XBoCDsJ9zKvd
         4ySg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=llpCdpQj;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y4si1228486wrp.0.2019.07.24.11.31.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 11:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id h19so34051058wme.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 11:31:07 -0700 (PDT)
X-Received: by 2002:a7b:c215:: with SMTP id x21mr75720175wmi.38.1563993066886;
 Wed, 24 Jul 2019 11:31:06 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble> <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble> <20190724133516.GB31381@hirez.programming.kicks-ass.net>
 <20190724141040.GA31425@hirez.programming.kicks-ass.net> <20190724164821.GB31425@hirez.programming.kicks-ass.net>
In-Reply-To: <20190724164821.GB31425@hirez.programming.kicks-ass.net>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 24 Jul 2019 20:30:55 +0200
Message-ID: <CA+icZUVt0QK9SoWHU3G8e8MXOYOJSsh70+PCCWx15buZDvu8nQ@mail.gmail.com>
Subject: Re: [PATCH] objtool: Improve UACCESS coverage
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@kernel.org, 
	Arnd Bergmann <arnd@arndb.de>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=llpCdpQj;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
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

On Wed, Jul 24, 2019 at 6:48 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Jul 24, 2019 at 04:10:40PM +0200, Peter Zijlstra wrote:
> > And that most certainly should trigger...
> >
> > Let me gdb that objtool thing.
>
> ---
> Subject: objtool: Improve UACCESS coverage
>
> A clang build reported an (obvious) double CLAC while a GCC build did
> not; it turns out we only re-visit instructions if the first visit was
> with AC=0. If OTOH the first visit was with AC=1, we completely ignore
> any subsequent visit, even when it has AC=0.
>
> Fix this by using a visited mask, instead of boolean and (explicitly)
> mark the AC state.
>
> $ ./objtool check -b --no-fp --retpoline --uaccess ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x22: redundant UACCESS disable
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xea: (alt)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   .altinstr_replacement+0xffffffffffffffff: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xd9: (alt)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xb2: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x39: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x0: <=== (func)
>
> Reported-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Reported-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Thanks Peter Z. and Josh P.!

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

[1] https://github.com/ClangBuiltLinux/linux/issues/617

> ---
>  tools/objtool/check.c | 7 ++++---
>  tools/objtool/check.h | 3 ++-
>  2 files changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index 5f26620f13f5..176f2f084060 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -1946,6 +1946,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
>         struct alternative *alt;
>         struct instruction *insn, *next_insn;
>         struct section *sec;
> +       u8 visited;
>         int ret;
>
>         insn = first;
> @@ -1972,12 +1973,12 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
>                         return 1;
>                 }
>
> +               visited = 1 << state.uaccess;
>                 if (insn->visited) {
>                         if (!insn->hint && !insn_state_match(insn, &state))
>                                 return 1;
>
> -                       /* If we were here with AC=0, but now have AC=1, go again */
> -                       if (insn->state.uaccess || !state.uaccess)
> +                       if (insn->visited & visited)
>                                 return 0;
>                 }
>
> @@ -2024,7 +2025,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
>                 } else
>                         insn->state = state;
>
> -               insn->visited = true;
> +               insn->visited |= visited;
>
>                 if (!insn->ignore_alts) {
>                         bool skip_orig = false;
> diff --git a/tools/objtool/check.h b/tools/objtool/check.h
> index b881fafcf55d..6d875ca6fce0 100644
> --- a/tools/objtool/check.h
> +++ b/tools/objtool/check.h
> @@ -33,8 +33,9 @@ struct instruction {
>         unsigned int len;
>         enum insn_type type;
>         unsigned long immediate;
> -       bool alt_group, visited, dead_end, ignore, hint, save, restore, ignore_alts;
> +       bool alt_group, dead_end, ignore, hint, save, restore, ignore_alts;
>         bool retpoline_safe;
> +       u8 visited;
>         struct symbol *call_dest;
>         struct instruction *jump_dest;
>         struct instruction *first_jump_src;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVt0QK9SoWHU3G8e8MXOYOJSsh70%2BPCCWx15buZDvu8nQ%40mail.gmail.com.
