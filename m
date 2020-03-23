Return-Path: <clang-built-linux+bncBAABB4V74TZQKGQE5DAQEAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613518FFB2
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:45:39 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id d13sf12861509ioo.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:45:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584996338; cv=pass;
        d=google.com; s=arc-20160816;
        b=jMnKM1b7BfAEJPMsxNgpuaUUeQ8magu8TfObsE0NrghV/UJsFHerEC+nxMDpGL72nr
         SMhv6F4lKNB+hPeBo1HucLStMVLB+XHoFryxlPHyUPu1mQNj+L9ezaEkaQ8vZg1uan9B
         N7VHgflBY8iL7u92vfR1GClMY1TGyETKGOixIl61pfrz4F9sP2RwYbWbToqaS1jdjOqQ
         yoPdXprqZLRw3AEN43yYOEDCa/oBF796ECqcn6Dj2yexptxN5p2q2LfGHhoofANdOjIf
         Fa8349435GLmuuV4uVmfUnBAOvsmF6GqWAa/hVyP8j1taVDdeAC5QwgjGLrTOFlbVzg/
         RbUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=1dan9zqFSlhSXXmRbMWInZni1/9l9rTBGbpQ7K+SgTU=;
        b=IH3amMURl3v1zcXwear5ka7RDj/SYerCv2cBuuPN3MqNisVMfcAWwdDie+K5T1SPVI
         dMlcw6CdPG6evx4OmP5sP89f8Cj05skfCrFhNyTCwEXrtF66NDK7oFaERZ08bn+EwAWM
         spHerRJpAa6O88vZf2NOPgGvCaEW9rC8bzB7NYjWjxsB1r1nuOigD7+dbI+LMJEnwXSa
         bTm08m5+kVYp3j5+DVTnb8L2TZaJDhF+LLJWicjt6haGlFGOm1xHh+0O+fz6F29XB7n2
         KCPNNq8E9gOn6D53C6AMdt8EOi2hFyFgXIPQQXQX/DLWRQwz3sL2cmvkgYwdbQqXZYo5
         vypw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="s5jpUf/l";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1dan9zqFSlhSXXmRbMWInZni1/9l9rTBGbpQ7K+SgTU=;
        b=erWZuG7Eb1kmeCLLXboCfdXSFXOHGyhMXp3QcCo+oHgZClgR+N+GOKrriiqA8+Jx1e
         +7Hry8OoNPrQ2qYKXwyJVAo9QHuTiUHdJCuYHTsjll6LskRBsrJqUd1Kstb9UnZO+9or
         Nlf6nU5mq0Tajbl+pAGhz0Gr/PQEZYROmmWJKE6qukeKd0DLm0BdqKYvQdcCHlnh+tZb
         oCDncUyufFZsJDsYf/9jjvrLrHfGu8Z4G+8RAp48GJFRf3hMPLKJb7vgb9RonLiJQyJp
         qF3G/iCCBDpo6+acjxWvkG3VMcwF2hGPHbxR5Je6X6d34NyN0EW06DnjPViIXdcREwZw
         5E7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1dan9zqFSlhSXXmRbMWInZni1/9l9rTBGbpQ7K+SgTU=;
        b=rr7xQ7zVlJJxJPyE3wNIy/OmOP/08FYn2ThgpGnBxyqpfBxiNH1gPMqAJlcKM76TZf
         DrM//sjREl+0jDpoWm1gJzsboxssaxapgnAgGrufnYz+RnrKIQHOLi5RE79Exh1kbdT/
         EHNc/V7C6KA2quZTwShmhLs14tXvxy1i0j3fUB3mKopc1vS/jrFyv2ZLAI7AQd1yT4xm
         2OL3N5P35RuGwKjUJYZaTEXNuBImkzxSt8fijlN2yEusyP7SuBDLPrwn+h7ibikXYYKE
         qe8h7WLjOiNnn5Pk4ojH7754oT2wIAAdzLTdaFRMDkFDZcARtkvAzrbjhbveKaf7mcDX
         q4qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ32UOWd86YpLjnNQwO7ig/0YzGyCWDoychETyR2FG4YUNxPM4fY
	b91YLDCz6bdL5YTMgAE+qx0=
X-Google-Smtp-Source: ADFU+vs+xZVWEuamdExJIbZOk1CeANeMQeGUYLslzSMK8Pqjg7D+tp2o+7B3c9mdfYc1COdTIqroJA==
X-Received: by 2002:a02:3808:: with SMTP id b8mr22484920jaa.136.1584996338457;
        Mon, 23 Mar 2020 13:45:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls3756087ilb.4.gmail; Mon, 23 Mar
 2020 13:45:38 -0700 (PDT)
X-Received: by 2002:a92:b6db:: with SMTP id m88mr23684885ill.115.1584996338159;
        Mon, 23 Mar 2020 13:45:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584996338; cv=none;
        d=google.com; s=arc-20160816;
        b=jt8JtmjIZhBpSI70tUDckjgaPDJlHXqf462FWU56zwmV6XDGUkt/wn60bewm1XtRU0
         RtECZzVFqVL3PXN6xkbVR8gKP3ikqupzWzulKtZjjle4JOS99nFmCXBcBjkfKNdhxQt4
         pCKOJKJ1h4u0YJ/5DQftjcxPEvbXyA//izQ13uF+VXKHJXs2HSSoM4aFpLwb4RuPbnLt
         Q3+C15LDqGkGGbkl9h83l8EcMkpXhLGZ43DyYl3e4fkgh9I8s/kGGa2IbABT+ywunoC3
         BpfKQdHKc43iirOLqfxKIXvePaHCZvgOyXth3T36CbcMv/85C6qZ+2xko7c675+efp1D
         0/yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=hUtKM2nMkTYl4DL3Ic1dJCsmQpx5qHZvnRbsbWAyEBI=;
        b=ycSCd+zVSjuTQ/YPZytdI/PGwYhzkzgd4rIpYaNRI1aQumYfqCtBItKixyfXLzU6HG
         C+uPg7ZmgftXTUvzKqavJFPJ3nOijAHKoprKpb5n0BUUWOYJwuLc2dw4OX9ZTgXU4CAt
         R8XMd/3XaH73JiCNMWxT7EuBdIluh2yOK/cWUiQa5W2WQku0WZC6sx7D7otCqhlw7tK2
         sb0UcMa8Pv8Aret/iw48mxXGOr1Hse1pmF838E94XiEmrlF61+0CNIqEL1b6O6FM1lPy
         sJj3NAskhFzNqIn8UTq6OU56SabDtml0BXZ8AOsBm8b+5tTXvQfzjm2ORBfc5XEXLMjU
         KY/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="s5jpUf/l";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id j25si343569ili.4.2020.03.23.13.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 13:45:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 02NKj95c019738
	for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 05:45:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 02NKj95c019738
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id y17so1696278uap.13
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:45:09 -0700 (PDT)
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr15499035uad.25.1584996308257;
 Mon, 23 Mar 2020 13:45:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <20200323020844.17064-6-masahiroy@kernel.org>
 <CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4=pzqFRj3E9C-bM+Q@mail.gmail.com>
In-Reply-To: <CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4=pzqFRj3E9C-bM+Q@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 24 Mar 2020 05:44:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNATVAq_Wkv=K-ezwnG=o8a9OoKspZJYOyq+4OXX7EZHPnA@mail.gmail.com>
Message-ID: <CAK7LNATVAq_Wkv=K-ezwnG=o8a9OoKspZJYOyq+4OXX7EZHPnA@mail.gmail.com>
Subject: Re: [PATCH 5/7] x86: remove always-defined CONFIG_AS_SSSE3
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>,
        Allison Randal <allison@lohutok.net>, Armijn Hemel <armijn@tjaldur.nl>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Song Liu <songliubraving@fb.com>,
        Zhengyuan Liu <liuzhengyuan@kylinos.cn>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000ecaf1405a18bb520"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="s5jpUf/l";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

--000000000000ecaf1405a18bb520
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 24, 2020 at 3:06 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Sun, Mar 22, 2020 at 8:10 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
> > index bf1b4765c8f6..77457ea5a239 100644
> > --- a/lib/raid6/algos.c
> > +++ b/lib/raid6/algos.c
> > @@ -103,9 +103,7 @@ const struct raid6_recov_calls *const raid6_recov_algos[] = {
> >  #ifdef CONFIG_AS_AVX2
> >         &raid6_recov_avx2,
> >  #endif
> > -#ifdef CONFIG_AS_SSSE3
> >         &raid6_recov_ssse3,
> > -#endif
> >  #ifdef CONFIG_S390
> >         &raid6_recov_s390xc,
> >  #endif
>
> algos.c is compiled on all platforms, so you'll need to ifdef that x86
> section where SSSE3 is no longer guarding it. The pattern in the rest
> of the file, if you want to follow it, is "#if defined(__x86_64__) &&
> !defined(__arch_um__)". That seems ugly and like there are better
> ways, but in the interest of uniformity and a lack of desire to
> rewrite all the raid6 code, I went with that in this cleanup:
>
> https://git.zx2c4.com/linux-dev/commit/?h=jd/kconfig-assembler-support&id=512a00ddebbe5294a88487dcf1dc845cf56703d9


Thanks for the pointer,
but I think guarding with CONFIG_X86 makes more sense.

raid6_recov_ssse3 is defined in lib/raid6/recov_ssse3.c,
which is guarded by like this:

raid6_pq-$(CONFIG_X86) += recov_ssse3.o recov_avx2.o mmx.o sse1.o
sse2.o avx2.o avx512.o recov_avx512.o


Indeed,

 #if defined(__x86_64__) && !defined(__arch_um__)

is ugly.


I wonder why the code was written like that.

I rather want to check a single CONFIG option.
Please see the attached patch.




> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4%3DpzqFRj3E9C-bM%2BQ%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATVAq_Wkv%3DK-ezwnG%3Do8a9OoKspZJYOyq%2B4OXX7EZHPnA%40mail.gmail.com.

--000000000000ecaf1405a18bb520
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-x86-replace-arch-macros-from-compiler-with-CONFIG_X8.patch"
Content-Disposition: attachment; 
	filename="0001-x86-replace-arch-macros-from-compiler-with-CONFIG_X8.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k84xt5210>
X-Attachment-Id: f_k84xt5210

RnJvbSA1YjMyNjk4YjA5YzE1NjQ3OWUxNmY1NTRkMWFkMDI3MTQ5YTZlZDA1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3Jn
PgpEYXRlOiBUdWUsIDI0IE1hciAyMDIwIDA1OjI1OjIwICswOTAwClN1YmplY3Q6IFtQQVRDSF0g
eDg2OiByZXBsYWNlIGFyY2ggbWFjcm9zIGZyb20gY29tcGlsZXIgd2l0aAogQ09ORklHX1g4Nl97
MzIsNjR9CgpJZiB0aGUgaW50ZW50aW9uIGlzIHRvIGNoZWNrIGkzODYveDg2XzY0IGV4Y2x1ZGlu
ZyBVTUwsCmNoZWNraW5nIENPTkZJR19YODZfezMyLDY0fSBpcyBzaW1wbGVyLgoKU2lnbmVkLW9m
Zi1ieTogTWFzYWhpcm8gWWFtYWRhIDxtYXNhaGlyb3lAa2VybmVsLm9yZz4KLS0tCiBrZXJuZWwv
c2lnbmFsLmMgICB8IDIgKy0KIGxpYi9yYWlkNi9hbGdvcy5jIHwgNCArKy0tCiAyIGZpbGVzIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9rZXJu
ZWwvc2lnbmFsLmMgYi9rZXJuZWwvc2lnbmFsLmMKaW5kZXggNWIyMzk2MzUwZGQxLi5kYjU1N2Ux
NjI5ZTUgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9zaWduYWwuYworKysgYi9rZXJuZWwvc2lnbmFsLmMK
QEAgLTEyNDYsNyArMTI0Niw3IEBAIHN0YXRpYyB2b2lkIHByaW50X2ZhdGFsX3NpZ25hbChpbnQg
c2lnbnIpCiAJc3RydWN0IHB0X3JlZ3MgKnJlZ3MgPSBzaWduYWxfcHRfcmVncygpOwogCXByX2lu
Zm8oInBvdGVudGlhbGx5IHVuZXhwZWN0ZWQgZmF0YWwgc2lnbmFsICVkLlxuIiwgc2lnbnIpOwog
Ci0jaWYgZGVmaW5lZChfX2kzODZfXykgJiYgIWRlZmluZWQoX19hcmNoX3VtX18pCisjaWZkZWYg
Q09ORklHX1g4Nl8zMgogCXByX2luZm8oImNvZGUgYXQgJTA4bHg6ICIsIHJlZ3MtPmlwKTsKIAl7
CiAJCWludCBpOwpkaWZmIC0tZ2l0IGEvbGliL3JhaWQ2L2FsZ29zLmMgYi9saWIvcmFpZDYvYWxn
b3MuYwppbmRleCBkZjA4NjY0ZDM0MzIuLmI1YTAyMzI2Y2ZiNyAxMDA2NDQKLS0tIGEvbGliL3Jh
aWQ2L2FsZ29zLmMKKysrIGIvbGliL3JhaWQ2L2FsZ29zLmMKQEAgLTI5LDcgKzI5LDcgQEAgc3Ry
dWN0IHJhaWQ2X2NhbGxzIHJhaWQ2X2NhbGw7CiBFWFBPUlRfU1lNQk9MX0dQTChyYWlkNl9jYWxs
KTsKIAogY29uc3Qgc3RydWN0IHJhaWQ2X2NhbGxzICogY29uc3QgcmFpZDZfYWxnb3NbXSA9IHsK
LSNpZiBkZWZpbmVkKF9faTM4Nl9fKSAmJiAhZGVmaW5lZChfX2FyY2hfdW1fXykKKyNpZmRlZiBD
T05GSUdfWDg2XzMyCiAjaWZkZWYgQ09ORklHX0FTX0FWWDUxMgogCSZyYWlkNl9hdng1MTJ4MiwK
IAkmcmFpZDZfYXZ4NTEyeDEsCkBAIC00NSw3ICs0NSw3IEBAIGNvbnN0IHN0cnVjdCByYWlkNl9j
YWxscyAqIGNvbnN0IHJhaWQ2X2FsZ29zW10gPSB7CiAJJnJhaWQ2X21teHgyLAogCSZyYWlkNl9t
bXh4MSwKICNlbmRpZgotI2lmIGRlZmluZWQoX194ODZfNjRfXykgJiYgIWRlZmluZWQoX19hcmNo
X3VtX18pCisjaWZkZWYgQ09ORklHX1g4Nl82NAogI2lmZGVmIENPTkZJR19BU19BVlg1MTIKIAkm
cmFpZDZfYXZ4NTEyeDQsCiAJJnJhaWQ2X2F2eDUxMngyLAotLSAKMi4xNy4xCgo=
--000000000000ecaf1405a18bb520--
