Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVFLZT4AKGQE7XGDU7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF5C224C79
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 17:31:33 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id a5sf4831079vkh.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 08:31:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595086292; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vqf3pggbixTgjW4gGCtBxmwCtUq5ri+JQYklZSk81zKlqEbaN/T+UAWNbbTf4PG2Qz
         Metnu5Eo703dXuC0Jw/aaEU/qZlHJ8oGWlkVyFOt4OohxZWOnVh1dZSYIMWx5cbCPCIC
         GDXpfg4YN7ekuY7LZKkomDSZNO0T+XJW0Z6xnCPbUBaatBb6yyxyqW/6YHMb1A/nOR3z
         cDDcBMl/4lfRojR8IbS5nBJoht30K7Jihdp+dY6APuxM12Sfo8IcZxXQjhgdphprJC0W
         Ja4HpjtECazDeXZ/FxodJY3TPYT7UIJGvtf1BnxhdbSpd1xgfMaT6JDgpuqE7hPFt8LE
         oz/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=oC+byPsOL+bbA1oD3lg69FFXSNFVyw5wvCQhD7cIEfs=;
        b=sYmLfSqZyldwakyUS++jevPGFeeOeAysbFesQ7U70m5muin0oFOvUF33opUxNZ2/LD
         qf9s1evvxc4E5pFHeuCVLzWU5by5mT20v8IECpn/v6FrL4+TtPYAaTNXhJbk6b5dwPzQ
         pMnclLgy6ec/SoG2uIZDTHNermsk+uidRzBQDuyayLsKotcOtEs77snj3RAd2ABOA7ue
         kBZgpZKDgyNVGC+E496f4F1YqxiF/D0LEtEHGEsYYPVPuRQTSFTmcULIE2meDTuo3nzw
         iIMeNDtqNVtPZDVLzwEa9cJZb0xxLXkzVUwpWwlQGEgVYh1OE/2TmuNmBaZHoGIwRmqr
         pjug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rn7Jp+F0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oC+byPsOL+bbA1oD3lg69FFXSNFVyw5wvCQhD7cIEfs=;
        b=GGlmMOw27oxhZk4N5s62slKEtZhLDoQVvw+e28bvgtO4P5Qz6T45fEeqNKSgmlTh9n
         HWE90Cgxd/kWeb3t3ah7jdPfyQ/r27CGtP1s/BLzN7IX0C+TMmJgo5oirNHv2FcxU9kW
         D/+r0r3vcfG/mlGj+fwDaQ7Yk9GQGpTfxlzz2L7ucd27OrAC0povp5hvjiRLRsbzPaMW
         5sclQmCK+JNp/KU+IBh79TjwFW7jTDHbFPYUKkcxtLxz/yPF1N1Vc1kRR2dF4moHY7aQ
         NXni32sydicfn7LWNqqwTyZOetUTnkoc314iCPTsBmbMSS49+9NB4Lm8UjUeqCGhrqia
         9Vhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oC+byPsOL+bbA1oD3lg69FFXSNFVyw5wvCQhD7cIEfs=;
        b=koS75NImvqFFYqxd5gJ4ogFFAK4cYwjMOoG7kyiTy2JCR4z8KEznWzbK0TES3kBxAt
         xG0zeYyfY9Jm59VLFI75CEAOiMBDjCXLlHfYIq6wsaG95XTAblAC+HbnactEkAubLema
         zBMFvfs4TPIySeOBTgNfHErKe8X9TNvl/Bm6MRqckix0qFjWums5Xa3C5INlPkalKCBN
         GtW8E5O8tg1r3wt9EmVlnuwr3Lf9qdCoiCoC3tIOuWzMv70EWt/UJxYMge9JV9CjG0dM
         AOUyUsepPDgxm0DC8domQutAazubXEWtzB+/7uVxMXyQa1Q/Ep+tuWVoXme2SvbBaudH
         i+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oC+byPsOL+bbA1oD3lg69FFXSNFVyw5wvCQhD7cIEfs=;
        b=sxn5AB4t391fqcGn4JKxyJUu1BKPdjEiQwgMaut4aT5+0ZO5XAomYOzyNvS+H3xkJB
         TCDRun0WiFf2zobJkQ1ysSR1bxPpj3ZsLWmuhgni/1cMBMwtrQHrc9LVUSLndWEOggdR
         NNNusAGPZO37puf4XP1mn7mg7gYR+dVnieA0VwLBzmo8s+FbKniHRGLH8JaRQ/dNQSRb
         +HF1DWavO5j364cVx8HMihZ7IeQpIsENVwOm6nK9s5NEFldR+fNLN2q7L6YqHsLbF6Ws
         u2JAEWjlZihezO7Tmnz1GgKMab5nq5KxpohZrgPhaUUjltzdcXuUGX0LVcGhGzDP2Nd6
         E0KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oPIu8nP7YL8TOrweRw6EzEjV7+qM7poUx8QnHHbnHUM6Y85bk
	l7f6BKz1FY8WS1Ijem+pvTM=
X-Google-Smtp-Source: ABdhPJxkkDbz7qtt6XfTlgQE5E6iXvuD5rw4eB9Tv+oJDZzE0nbSfjtRmNOarX29Hp4tReTPeLevqA==
X-Received: by 2002:a67:30c9:: with SMTP id w192mr10735976vsw.170.1595086292126;
        Sat, 18 Jul 2020 08:31:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:634b:: with SMTP id f11ls161409uap.5.gmail; Sat, 18 Jul
 2020 08:31:31 -0700 (PDT)
X-Received: by 2002:a9f:21a3:: with SMTP id 32mr11150618uac.50.1595086291753;
        Sat, 18 Jul 2020 08:31:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595086291; cv=none;
        d=google.com; s=arc-20160816;
        b=smOXuJiwOD0VpnHjfx6PzmvRX2J4VuIrQVXjNLSALZq3lRa+YGZyn8PO6QJfsG0qCn
         fLgADzqP3W2WJQTW0/70V3wyMsHzkL6dHx37spHQROkNHG5peJlAASYgkyUKqNgEo+GI
         pjgNY+Xy6va4s23GpiieBVoV1TgNg2SlHhFFPJ6xgOffKF7IUg0BPQXIfDlXU0SPuYpZ
         1GZHxom/gfSjyup/ErttPbPlHMCbKhbrlQpiugxyNPYAwj9IWoRCZzew+8XwMGi/Lxde
         DVXuwX5cG4kXB4XeWFjkRLbefisQyq4ngfi8HC3NKAinJYv4nsWNeBq00lioAIPM5+Rr
         KpTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=auwkIRQjT6Uc69u2UKmP1cyyXbEWBz03molj5iU9OA4=;
        b=pOqVQFR3wK9+mRzdDwI76D1CMiFgOtg3dLlixgkM4O3SFkhbSobZbmFehZvfBxrSPe
         7cpJ76FM3JPuMC1tKJUNFzPBjI22OwjWWcy7F2tzLlXOnl+yLG46JuWmXy/fWPF8nQ37
         xzg6sKSObfhVEYTev7g7Qfp3zo+xfjT2WPg/6ECXTvCFDTA6igbk1C5xWSjsO+pSIosg
         Um+q82io7Hwbk8+XGsYQDnZ0aMwfQCPZNrBs4ZhxPyRTBB4Qy4JavH97NEu77e6G10Xp
         647GPT9Au1jTPJ06pIdUbXnF2VqSUleIxecl96CLXonfjq7Bq5TokijIwQ4mlVaHKhdS
         w9GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rn7Jp+F0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id s7si735801vsm.0.2020.07.18.08.31.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jul 2020 08:31:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id e3so5549694qvo.10
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jul 2020 08:31:31 -0700 (PDT)
X-Received: by 2002:ad4:5a46:: with SMTP id ej6mr14203491qvb.52.1595086291245;
        Sat, 18 Jul 2020 08:31:31 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id o12sm13740812qtl.48.2020.07.18.08.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2020 08:31:30 -0700 (PDT)
Date: Sat, 18 Jul 2020 08:31:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Geoff Levand <geoff@infradead.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Joel Stanley <joel@jms.id.au>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
Message-ID: <20200718153129.GA1815449@ubuntu-n2-xlarge-x86>
References: <20200624035920.835571-1-natechancellor@gmail.com>
 <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Rn7Jp+F0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jul 18, 2020 at 09:50:50AM +0200, Geert Uytterhoeven wrote:
> Hi Nathan,
> 
> On Wed, Jun 24, 2020 at 6:02 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > arch/powerpc/boot/main.c:107:18: warning: array comparison always
> > evaluates to a constant [-Wtautological-compare]
> >         if (_initrd_end > _initrd_start) {
> >                         ^
> > arch/powerpc/boot/main.c:155:20: warning: array comparison always
> > evaluates to a constant [-Wtautological-compare]
> >         if (_esm_blob_end <= _esm_blob_start)
> >                           ^
> > 2 warnings generated.
> >
> > These are not true arrays, they are linker defined symbols, which are
> > just addresses.  Using the address of operator silences the warning
> > and does not change the resulting assembly with either clang/ld.lld
> > or gcc/ld (tested with diff + objdump -Dr).
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/212
> > Reported-by: Joel Stanley <joel@jms.id.au>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/powerpc/boot/main.c | 4 ++--
> >  arch/powerpc/boot/ps3.c  | 2 +-
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
> > index a9d209135975..cae31a6e8f02 100644
> > --- a/arch/powerpc/boot/main.c
> > +++ b/arch/powerpc/boot/main.c
> > @@ -104,7 +104,7 @@ static struct addr_range prep_initrd(struct addr_range vmlinux, void *chosen,
> >  {
> >         /* If we have an image attached to us, it overrides anything
> >          * supplied by the loader. */
> > -       if (_initrd_end > _initrd_start) {
> > +       if (&_initrd_end > &_initrd_start) {
> >
> 
> Are you sure that fix is correct?
> 
>     extern char _initrd_start[];
>     extern char _initrd_end[];
>     extern char _esm_blob_start[];
>     extern char _esm_blob_end[];
> 
> Of course the result of their comparison is a constant, as the addresses
> are constant.  If clangs warns about it, perhaps that warning should be moved
> to W=1?
> 
> But adding "&" is not correct, according to C.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

Hi Geert,

Yes, I have done fairly extensive testing in the past to verify that
this fix is correct.

For example:

$ cat test.c
#include <stdio.h>

extern char _test[];

int main(void)
{
        printf("_test:  %p\n", _test);
        printf("&_test: %p\n", &_test);
        return 0;
}

$ cat test.lds
_test = .;

$ clang -Wl,-T test.lds test.c

$ ./a.out
_test:  0x204
&_test: 0x204

$ gcc -fuse-ld=lld -Wl,-T test.lds test.c

$ ./a.out
_test:  0x60a0f76301fb
&_test: 0x60a0f76301fb

I also did runtime verification in QEMU to confirm this is true when I
was testing these commits, which are already present in Linus' tree:

63174f61dfae ("kernel/extable.c: use address-of operator on section symbols")
bf2cbe044da2 ("tracing: Use address-of operator on section symbols")
8306b057a85e ("lib/dynamic_debug.c: use address-of operator on section symbols")
b0d14fc43d39 ("mm/kmemleak.c: use address-of operator on section symbols")

I did a lot of work to get this warning enabled as it can find bugs:

6def1a1d2d58 ("fanotify: Fix the checks in fanotify_fsid_equal")
79ba4f931067 ("IB/hfi1: Fix logical condition in msix_request_irq")

-Wno-tautological-compare disables a bunch of good subwarnings, as I
point out in the commit that enabled it:

afe956c577b2 ("kbuild: Enable -Wtautological-compare")

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200718153129.GA1815449%40ubuntu-n2-xlarge-x86.
