Return-Path: <clang-built-linux+bncBAABBKWC5GAQMGQE2K6ZGGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3F0326D7E
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 16:11:41 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id z81sf1155979oiz.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 07:11:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614438700; cv=pass;
        d=google.com; s=arc-20160816;
        b=DkhBpvFgtw1A/BKfeHqGE1vMmpnjGShPzZsh6eqm4JEPgrnZc+hI91zX3c//VebPC8
         FzBREW1V5Smp29JHJXTmMgmSLIedJ7xNPzCnnouhkEx9y+gogixYwdDMNHeggm9TqmJ4
         cF2nHFhUqBZaD7kuzcq80eHexlmZyzYjFlFfabjMYRoY7v79mztJQIQfSnoDjA0KfosX
         QNFKAa22RAa9r1FiDyPvL+xv0431gcvNjGt5MJRsGEXjiLmePucu1OnQYBwwXfFxrgOm
         x508T7DjxnFEuTw+pcPjQPGqj+uStuqIApkBCXSB9NjPG+5JfuVjiBwqytad3h92JuDD
         g9VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7VJDZk9h/uYe5eLKrkHIlDagIZArMeUhwIPLfECa+qE=;
        b=baMXsv+/RO+XbnVXohDHSiIY1CEqnAoWnWpzyvw5ou/QPCvvdMcqBm3TNhD/8d9Hu1
         NA7NWs/8FFXAh4BWbr1fqwb1lZq0lHzd2t+7JWpA05cv5DKpf0LZN43pbQ8+wNc0zybe
         PrX9wKfpYw+8ITjo6hW59g03bjBTqS6Vl2X/HShimY0LayozXvQbJ8H8IQH8M+MO3iux
         TcFZxBzwrdouY+YXyBre88zTxqkc2h6jkKLnJICZMcH+Wuln2+/wmUgwCNNLyvjVWQNk
         3hucHo12ojmChO0qud2mQvVJibYyyDJuC0GqtsL4vWDNATN1lGr+25xH0ruPVjDXwmN2
         G5Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O9F5GQj9;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7VJDZk9h/uYe5eLKrkHIlDagIZArMeUhwIPLfECa+qE=;
        b=PudMcOtndXRbAbHoEjm82uCi4eSf5ydxzXA7hEqfjtgR5dsEZngx3CBDvf1nR88mDq
         Pczh5OpOeJcg+fkrs4Fk97GEfXcY2YyCGvTBZ03jJ/9W2bw5DVEDBINB+IYbkcF8z8zm
         mX2WTA+h8xjez9FXjtEwITfDDVq2WbK1SvT4zzxhtxEehqlG+z3BCupxSAkL5+zlD4o4
         K6SsAHyY2Io4IcxaU9jOouIKAbMD+Ywg1U+GJxKZfIO7rBvQmN0yxDcQlnl/CtJV0ffR
         ey9caARFfU/kHPUeMnQ3ExMC/TxuI+89YNIjmcS1DVXrTcztyglVBGOnv3+auD9wN6vJ
         1uPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7VJDZk9h/uYe5eLKrkHIlDagIZArMeUhwIPLfECa+qE=;
        b=YM5Inhj2Vo2ZeSlcY8JJCAC9IM22vt6THf1Q82EVKGa3qxzPKrSrnNQmEdxgFIUfFI
         XH2qF/AJCfLCyAuNUsACPYjN9RJOPZveau0gmvnvIAL7Zl7cWLulM6vfpOJ+pTJkqNRg
         r0/L3s4XwV60q8z6sN9oTxDswqDuKuRoqmSL0BxkXrsGY329ZluF3f0xgj217zIkrvz4
         qPO3i6TWs1yKyBNYCQLEZDserfzxwfyn72+7IN9y2xgPynIKdrCBYuVgFsYQtX//LJzW
         hpZG/qJXYvDBRjXqX9PQTs77m8Xnz+FfKLY7qsml6AOAWbyqn88wgLBtKVIyFD4ZeMNI
         WbSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Hgqg3cLkUBRoLkaejzEnKLHhqA9AfeGppMgz/Z/wiKjKMs3mG
	rmS0G/fSIB4LgoVt675yp8A=
X-Google-Smtp-Source: ABdhPJxnKpYvRd8qJNuLmBYK12Crb7MDwU7UX/kpX08KTiC9dRQG9Z1ApB4tXuIR1vf6ibPAXLCjaA==
X-Received: by 2002:a05:6830:c9:: with SMTP id x9mr6378157oto.295.1614438698967;
        Sat, 27 Feb 2021 07:11:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:923:: with SMTP id v35ls3397397ott.0.gmail; Sat, 27
 Feb 2021 07:11:38 -0800 (PST)
X-Received: by 2002:a05:6830:199:: with SMTP id q25mr6775036ota.275.1614438698647;
        Sat, 27 Feb 2021 07:11:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614438698; cv=none;
        d=google.com; s=arc-20160816;
        b=GZl6US41IrWjEOQdL+uA9ZT+dkc+xS7PfDUXTNwtrGrG+cNL8iBZbYcBIr9BTo7pA+
         7A+oeyhbpl+/EFuniRfgVbAMzTBD/ixsEaqui7HUQqcW+HRpiR8Lo1f4Zr0yAi225Xvu
         nrV72c6RwvVLlt2SuZnCc37rMX0vMbmm14ONyg0+D+v/CR3KFtVnBCY81IbBhRaIxJsX
         H4VSgcyGwaKYcOfbQ+m3MxMtWh0Fq+T13Y5YlaYmSK3TxKMAZn7N1nxm33Z5YS/ntrgO
         EgdQollq43vHhWDC+keC5g8+CMyW4g9euZDKZwrq3TdjzLnV+oIEBhFXxFfiyQpO5pa2
         W/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KeSyOzBTfwo4vPjgoTok9I/DekK5s609UKIVOyLOLo0=;
        b=YktyKMlCdqj9XpZA9OSfRdyY8XdunjJ7Lo7VdmALBdaOK6Ybbgsk3YgjqYi3zreSDA
         Z0TVqWchnHPxC6i1TATeqxMK/LHYKevFAh9C7TDitXX2SxBnhfbdFVd/wV/Y442n/SFb
         Gi4Z+TQSFLu7WIuRv7UOq4Clc2NHZeiPW9YeMx0OUYOitnFn43piuD6CyKObiH8QY4MX
         fe+sAtLWTIlt5aBi54ZXANGJKuBa+k0ajkGpkqNuOqiVsc2f2d68Nf/vk6PRYp2/eWhk
         PGMBGIvBPH8l4ufz1Q6gCepRtysPYZnbHfPfohoE7mTaLY7KQe0mlS4m9jlYHCIkd88J
         RxDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O9F5GQj9;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c24si257313otd.0.2021.02.27.07.11.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 07:11:38 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C146164D79
	for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 15:11:37 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id f33so12010419otf.11
        for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 07:11:37 -0800 (PST)
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr6847492otq.251.1614438697150;
 Sat, 27 Feb 2021 07:11:37 -0800 (PST)
MIME-Version: 1.0
References: <20210225112247.2240389-1-arnd@kernel.org> <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic> <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
 <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
 <20210225213300.GF380@zn.tnic> <CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw=HevQ=Q@mail.gmail.com>
 <20210226081327.GB19284@zn.tnic> <CAK8P3a21A4nAraeUeabNjHe3QNc+sX6XFYTHA=K0wX1nV-Qetg@mail.gmail.com>
In-Reply-To: <CAK8P3a21A4nAraeUeabNjHe3QNc+sX6XFYTHA=K0wX1nV-Qetg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sat, 27 Feb 2021 16:11:20 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2niRdnVMMtBrudLAq7s=2c1sH=YC2REwujm5piHmnH6g@mail.gmail.com>
Message-ID: <CAK8P3a2niRdnVMMtBrudLAq7s=2c1sH=YC2REwujm5piHmnH6g@mail.gmail.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "the arch/x86 maintainers" <x86@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=O9F5GQj9;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Feb 26, 2021 at 2:24 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Fri, Feb 26, 2021 at 9:13 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Thu, Feb 25, 2021 at 01:58:48PM -0800, Nick Desaulniers wrote:
> > > The config that reproduces it wasn't shared here; I wouldn't be
> > > surprised if this was found via randconfig that enabled some config
> > > that led to excessive code bloat somewhere somehow.
> >
> > I'm sceptical it is the .config. As I said, those single function calls
> > which I could replace by hand - the wrappers simply make the code
> > cleaner. They could just as well be macros FWIW and then the inlining
> > will be practically forced at preprocess time.
>
> I managed to track down the configurations: This particular function is
> not inlined whenever CONFIG_UBSAN_OBJECT_SIZE is enabled
> and CONFIG_UBSAN_TRAP is disabled, plus obviously any
> configuration option that is needed to build the file.

And I now had another look at the output after reducing the test case
with cvise to:

struct b {
  void *c;
};
struct {
  struct b d;
} extern e;
int f;

__attribute__((__cold__)) int a();
static inline void early_get_smp_config() {(void) e.d.c; }

int g()
{
  if (a())
    return 2;
  a();
  if (f)
    return f;
  a();
  early_get_smp_config();
  return 0;
}

See https://godbolt.org/z/8qbY65

Some observations:

- The early_get_smp_config function literally does nothing in the
   reduced test case, but is still not inlined.

- This happens regardless of target architecture

- It happens in a code path of the calling function that is 'cold'
   at this point, which presumably is an indication to clang that
   any functions called from here are also cold, and not worth
   inlining.

- I have found no indication why -fsanitize=object-size should
  make a difference.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2niRdnVMMtBrudLAq7s%3D2c1sH%3DYC2REwujm5piHmnH6g%40mail.gmail.com.
