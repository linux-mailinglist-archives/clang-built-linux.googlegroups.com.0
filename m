Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCGHSXXQKGQEBV4DWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A4310EFEF
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Dec 2019 20:18:34 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id m18sf357409ioj.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Dec 2019 11:18:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575314312; cv=pass;
        d=google.com; s=arc-20160816;
        b=QoOAHGwoDPB9J/WgWhaFzd3L8VShNlgCor6vUst6OMm4gleq5iUMz6mLd23nxn1Sgu
         ORLVNfp06d+r8Tz/AP1MQX07PznG50/HpH/fInBBjXK5n8hsjQbfMNSe41yWYmXHzRu5
         sIiE9NNQjGhjA8d/jxn2p8TrWCZNi+3vHPSPjXZRCF4HMjEjzafaueIR1JivFfzQi7BH
         sXex6khHNNkGKtqijSUKIraZfVdCaZZhc9IR0mOnzzlYfLrpAr3aa1EtEQltveNmOUOZ
         +zT+3eFRzHzKnGtmR/udSXaIIZqkjvHBvhEnjKJHc7k5HGnX582t0+UERtr7hxTl4VvH
         Oebw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xPMm6rAigjfPJuDYmxXr+eZfDU2Ani5oMjaMHLZ6InM=;
        b=Tk0rPel5pJF4cWSGbtAcKynal0/7H87rK5tqZS2+p/VHjmT5hHfc/Skc6dEnJ6RQzP
         51FJMkWUcOwqICLvWhENiN2t3RKZGD4BCUAlI+JJSVoKLFJVVrB4rgUL9eLLlCufRTgU
         oSMOPLcxZV2+Q4B7TmxXMoQMQkw1/ogzjvFbs5oNAkDlZODcZ9OEalQozZIJzVxLw7uI
         w4lzf4ID9szarCBhfQccpPvKf9bHH7Tvv2CT6h/h6VZwZf12FTP4dvPEoKwmdEBgiARt
         H2F1yWoaLs36PnsVQ8uHF5SPgaXjjKNINsi/VunhRKet4LXn33pp66mZ6HDVDtbSLTNl
         KqRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ofPd/sJG";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPMm6rAigjfPJuDYmxXr+eZfDU2Ani5oMjaMHLZ6InM=;
        b=ZYU8EMh652+dLtk+hSmion2mBDa3UVbJEBc3r0jm4Df33twLdBC+WfDBMTtxTefsei
         gsO9Ha6Eai2/8D7X+a7n+rh1Cjtr9ztu0UCjAXpPpFAhOKDVYkpSWeDqzVl9PGD/Ff2/
         f42AERXjwWhytIx66wyxgTx5WZoqL7449mCGVSLedabHPbPD966cmMaD24udSOGVuis3
         fSNhAJdr/uw9JbHyJAhgs5gqmk4YYjly6RbWl4CufhDiuAarvNGWV45RQQrMeXyOnxHb
         k6g3YFKxVpgvmXAe4sRTNzZBTkxBz6JRyo9G6Fw3eJL4LkJoWbkJYN148pPe8zLP/RjD
         AYQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPMm6rAigjfPJuDYmxXr+eZfDU2Ani5oMjaMHLZ6InM=;
        b=P+EkEYOuWvqaYZxchZ4/LbfiSzlNx1dGyoVHVC1pOvx512xgUFZx2q3tAnA3187CZ0
         OpO1KUFZG9uMaavor6c6b8BUT0Ixlj9ireAa0Gka5T1IczY/TktrF/AIqh90xuVLyV6N
         5sC6jrY3N3c73dnpdJcPnBQnVfbOeTnXYsmp83Eyfemg8dYRfomCtuxYGYhnccIJ913T
         mWZgYYfBL6ToPy5o+auSTCZ7xcLORlg4Fj3xrfz4aCUBBpY3Z2ALHREEVJ4O3LpRBxbi
         2spINQP/6pZL7WI4+m7xhYlngv38Iz8KCeevZ/igYUgDdyMqkITRLv1DWp+fUJdCmv2t
         ByHA==
X-Gm-Message-State: APjAAAUkvmABDRrfwGbFA4E0bo11cZxMqxslKeOkTBH2nPFkEsPqmizC
	/vOG6EGev36zxhwpuKQquvw=
X-Google-Smtp-Source: APXvYqyVNMfGaTQNulpINprfb0WnKPQgZsBGG6VJrBF5l05mKiyhu4+yFusQ2aiNYJOLTFvgWOg0fw==
X-Received: by 2002:a92:af08:: with SMTP id n8mr312940ili.217.1575314312637;
        Mon, 02 Dec 2019 11:18:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9912:: with SMTP id x18ls118023iol.3.gmail; Mon, 02 Dec
 2019 11:18:32 -0800 (PST)
X-Received: by 2002:a5d:8501:: with SMTP id q1mr199401ion.268.1575314312305;
        Mon, 02 Dec 2019 11:18:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575314312; cv=none;
        d=google.com; s=arc-20160816;
        b=fMSWQko2bi4CB0Bryfk2dTjORG8R0G1lZj6b+jZhIPah1q+PVNwC8Lh1cXk13oSn8p
         OVyhtTXMziW0L9P1nIJwFJVyNJJnNw+23Sslm1lhfI4pnJFag38RgxLcTfAeVSJBbHDM
         Z7E8x3x5OOd2rVTVDZR6chKaPXrwvatkkXPLKgwxjDIz9hjtJzIT9MRl/uuxWrylQegp
         MuvsTDbbfcvqYf14QGSgM4O9hR47V5MeIrA5/lJwLfzgTT6cwiF2div/ma2cELUdrZ6U
         FET2CRuRLfTjj81V0XwjfhnHSVmHUAhQvQTY6cpQYAwrl1Tiu8hiRrd2EaXqIDzc49Sh
         dIPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AG/LZstzo//ptLVf07PatyOsdS+AHHPAwpIXLlE6z3Q=;
        b=nj0rhcXkp165osk0owsIxyyGhbahgUqDIvR2IAF1u7bsXBoInFZnF3TOp4nXGtLUfY
         2LFcuH2hmueuvbjns6d13DDwFXr1RVR/WO15AXoF3Ooer03fNjPBTxXnnJl0IIL9lRks
         HUjXKVnBfmnomGLf3gQGtBClyUq9YmiSISdSsQjoUkrmzXorFnFhsAagnjwlqHgEczry
         m5W2MJFZr8GqgHBnW7Nvq4ovyavvUpfaSpHr2MlMNqRX+x1WZHcjar+0+R7gc/q4yteg
         vs86WObYLNfrFBTiCj/6l5bXLOBMO52T+6yc+LqlkwOVdGOYiDmnTHbvYmAMJOCdIABK
         PZFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ofPd/sJG";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h4si28759ilf.3.2019.12.02.11.18.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2019 11:18:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id h14so131974pfe.10
        for <clang-built-linux@googlegroups.com>; Mon, 02 Dec 2019 11:18:32 -0800 (PST)
X-Received: by 2002:a65:64c1:: with SMTP id t1mr677588pgv.263.1575314311159;
 Mon, 02 Dec 2019 11:18:31 -0800 (PST)
MIME-Version: 1.0
References: <20191123195321.41305-1-natechancellor@gmail.com> <157453950786.2524.16955749910067219709@skylake-alporthouse-com>
In-Reply-To: <157453950786.2524.16955749910067219709@skylake-alporthouse-com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Dec 2019 11:18:20 -0800
Message-ID: <CAKwvOdniXqn3xt3-W0Pqi-X1nWjJ2vUVofjCm1O-UPXZ7_4rXw@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Remove tautological compare in eb_relocate_vma
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	intel-gfx@lists.freedesktop.org, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ofPd/sJG";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Sat, Nov 23, 2019 at 12:05 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Nathan Chancellor (2019-11-23 19:53:22)
> > -Wtautological-compare was recently added to -Wall in LLVM, which
> > exposed an if statement in i915 that is always false:
> >
> > ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> > result of comparison of constant 576460752303423487 with expression of
> > type 'unsigned int' is always false
> > [-Wtautological-constant-out-of-range-compare]
> >         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> >
> > Since remain is an unsigned int, it can never be larger than UINT_MAX,
> > which is less than ULONG_MAX / sizeof(struct drm_i915_gem_relocation_entry).
> > Remove this statement to fix the warning.
>
> The check should remain as we do want to document the overflow
> calculation, and it should represent the types used -- it's much easier

What do you mean "represent the types used?"  Are you concerned that
the type of drm_i915_gem_exec_object2->relocation_count might change
in the future?

> to review a stub than trying to find a missing overflow check. If the
> overflow cannot happen as the types are wide enough, no problem, the
> compiler can remove the known false branch.

What overflow are you trying to protect against here?

>
> Tautology here has a purpose for conveying information to the reader.

Well leaving a warning unaddressed is also not a solution.  Either
replace it with a comment or turn off the warning for your subdir.

The warning here looks valid to me; you have a guard for something
that's impossible.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdniXqn3xt3-W0Pqi-X1nWjJ2vUVofjCm1O-UPXZ7_4rXw%40mail.gmail.com.
