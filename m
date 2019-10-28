Return-Path: <clang-built-linux+bncBDRZHGH43YJRBRMT3TWQKGQEF3X43KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D2894E7526
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 16:31:19 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id c27sf2236598lfj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 08:31:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572276679; cv=pass;
        d=google.com; s=arc-20160816;
        b=q2n/nBAytl3tP222ibkcVJ/jP4WQJ4L1Klc5aDbiVxiUTqlQIcY37dutaY0p8GsrkC
         AcbE7VTsVsJthOX9HxEZZTZi0oXBAG9kfMnOylvdNOW8xP2BuZGFwFQYR4N5VX2taUqJ
         +gkEOEIpQzt2phrDP78Zj0AWlzGGW/AJxNuxEndJ5i5Z3kpN8tR9IhuiG1LOBU42KURA
         KOzLjWo31jhvNFVgmNYsrilRBBLIVoobug4sncbiaYY4CCth4/t9k0Xyn/2R/RlI5Pjn
         tZ4rFseUYErE564yizBBO459cMzCwS0sGmYQlVDgBQSIQEcA0PgChjJ3gu4kKT2eZpIm
         Vv/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vZvU6hAGgXLm/R4L/7fi56GhsZVIVbqfet7+1zJBBgY=;
        b=zVzYcA7vV17fnEchIT3lrb2SmlPiU3y9RRF6SpLEyY9zmEjPiGHdN/vjXlA4/DtmWb
         DillkSId83pc5TCuSkN4uxeCgWBB2Fas7dXIgePUBb9ONRTFMcKanhPUW15IIPfApisv
         uriwo9tTpbZcOfFCuR6MP/LTUxNFd3NuGhI9eVrDE/yovn/BPqu3I1wuRl3L37j5d++Y
         UactxCuEvvVMaRvDPMoPDSAeQpjt/4t3M3t/NkjgqOWCoPO7Yx/zPy3rPM93njfxG13R
         loNmB1kfjXJ7rhZOA7WI5SG25wt5PjXS0bhO5/F1LgWk8o+xQWGxukFgDRA9RaHemxxU
         XeOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kb+fNmOy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vZvU6hAGgXLm/R4L/7fi56GhsZVIVbqfet7+1zJBBgY=;
        b=m/U3tTSM1+hoKAsWO1XmAi54YIvCk5K9vydaNiUImVr14kWg6FqYSEkfGEjadZ+SFH
         O6WgONtsE2Zlhiz5iAq7Ec66dvvGe/mYziFDrYxKnO3DbzUnPBDSrhEP/r6JADfugFgV
         ub2SpT4ETJ0Eame3Ru4VZtlrEH6sNuZxgcsqtZrJyR/KxjCSUaTilevLsrYNrayM4EWh
         HThho8LGZNY6f7ivwh6YMi4w6pSuFx2sL4K7hR8lROBzCSbZ7s+B/H0QcXX4kAF63Kh9
         JcI3WXbCAU4zLam4Cmi8zOcEIdAkhMbgndWEoFuVi8ltnpg9s5JaZY2MXRm6Km8rDfeY
         RqaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vZvU6hAGgXLm/R4L/7fi56GhsZVIVbqfet7+1zJBBgY=;
        b=kzMhM7IGDgyhA0OS8P2VyVjrBzillMRKA4dvVUETwD0+lUwbNZn2i4fvI7WFyvfkng
         b0BVy/HOTkjTXjHkTyVjCokr0Ow+VbyQtSaqYtM4dJcKb9hjV+3KaSYX2ASvqAlcAcv0
         mYO+U/MYVPCbyrnBOMtCNkNfyAkuNu454EAi2iWtUycLgN1SQjzz9A4wNmpn0FpvD9JG
         rz2k49cCDhQwBOqCW0ZuRo3MElaqxansQGod1vQ9jIhC/aOMdkqKSxBivyxwNPGTTLny
         KAz44SM+mgvQs1vGyOBW1OE4/nBduyDMNAQV2rkr9k4xX3geb7TJxDOvcDMguCyVDnoY
         DQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vZvU6hAGgXLm/R4L/7fi56GhsZVIVbqfet7+1zJBBgY=;
        b=Np08520fRjoeW2O9md+QOM3aM37b4tyogdBiln3twuAWBTN7NDzW5ULloFYwMIdh5I
         RF5WG/1oPCkAKtmAOa795rPbnIIueEMZRUqL2DnfEj04oKcd0kGdK4ZbbLsGz9VPdCFi
         ClDi1YRpKzRcTZKJN9W5F0+Dx+ei2qTNceUoVd6VLf7AwP5a8CfuJklpkYoNvknoVsp0
         lidNuVKWO2UVG8zAzOwfE8jA/a7VGhBOr4us1rbfzweDpkuAV+znK/1OpZmSXlpros9Q
         ia+TNTfBp6XiYV92qKS5kWZuT8zgzpE7aYYpEbKmg91v1vtY1oTdV9Vd6S05Wk7bKjNs
         9Jeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcLC1zksAf2GIa7EEPmkJyfTbrkERglVO8YzcTgCgd0fFz3Mda
	5DIuG++C+ngYTXp5G2C3V8g=
X-Google-Smtp-Source: APXvYqyZWWDY5oJOQ58iEIwK1ZwUgkx/+DqWkhtuMuGtYtBoxmIJ5fAWa8kd13iO33vXsx5BbL5o8Q==
X-Received: by 2002:a2e:9655:: with SMTP id z21mr5353819ljh.120.1572276677390;
        Mon, 28 Oct 2019 08:31:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9786:: with SMTP id y6ls2603127lji.3.gmail; Mon, 28 Oct
 2019 08:31:16 -0700 (PDT)
X-Received: by 2002:a2e:b00d:: with SMTP id y13mr4029407ljk.216.1572276676680;
        Mon, 28 Oct 2019 08:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572276676; cv=none;
        d=google.com; s=arc-20160816;
        b=e39+VCnbIV4vZeyWnp2pW1qZbV79d+G324o1UuI+005ImTnHn8iDTBcS//X+kqRDL7
         9tjz9K6cDyUsnVPp7yaM1j9AufU2PJxnYxmXzK2K8zCh1iGXD5KtbrvY6Wnh4owj+c0i
         PvHFZ3PKVL9i3MeFna0HEd2TDDCyvl31aFHjI7GOhalB4t8eZSWT9hT7aWr4QijuhJqF
         qEzVVHBDbHC4+IKuQtNDCiVQiedGruNpLBUaiLrR1AVlIX0mO/ycvx6bpAHAFR2txRT/
         67459GOUin+Q2KN+coik1PQ736hN+59SlYNM0pspHCpenZzxW5twj3GCkrecgvenFFwO
         W2uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UJd/INtZ62ePu3Mr9spOryjxzJY7mlwm/OzzNOTYmY0=;
        b=Bb8UTtctEBWDtgSS7en51XMqWizML/5BA4Z1WOzvFlEUwk+ikW1wZLE+D+CdaLhjMt
         zn1AuLiQk8j1SVxXwu6DGAvTJuxoc4qC2GgQ7MoFyM21ua12/s8QFlgNcsO/CC5ZwSKX
         9JPkWNka8bavtQbtaFCCpFtaeNxhHT6cQtUm/gB6rTfdla2hmJU/g16LrqBlle3y3qqC
         UKgggBRl0YGHxfYOfa8IeUEAtY+TBtg4itZuB1RGMxLaLgbghjEGKyCfMYXDe1kXo4IP
         dofdKCOAcdCB4LzVsycvSPzm3zSTk0c8fYl9f8gT8aCH7c4J8pOsW9vJg2Bv80SWWgFm
         ARdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kb+fNmOy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id b22si61323ljo.3.2019.10.28.08.31.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:31:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id 195so8127177lfj.6
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 08:31:16 -0700 (PDT)
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr11775734lfg.173.1572276676498;
 Mon, 28 Oct 2019 08:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-6-samitolvanen@google.com>
 <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com> <CABCJKucUR=reCaOh_n8XGSZixmsckNtFXoaq_NOdB+iw-5UxMA@mail.gmail.com>
In-Reply-To: <CABCJKucUR=reCaOh_n8XGSZixmsckNtFXoaq_NOdB+iw-5UxMA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 28 Oct 2019 16:31:05 +0100
Message-ID: <CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAhKvdzzN7v1tNontCQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Jann Horn <jannh@google.com>, Joe Perches <joe@perches.com>, 
	Kees Cook <keescook@chromium.org>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, LKML <linux-kernel@vger.kernel.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/alternative; boundary="000000000000ca982d0595fa30e4"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Kb+fNmOy;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

--000000000000ca982d0595fa30e4
Content-Type: text/plain; charset="UTF-8"

Hi Sami,

On Mon, 28 Oct 2019 at 16:20 Sami Tolvanen <samitolvanen@google.com> wrote:

> Hi Joe,
>
> On Sat, Oct 26, 2019 at 8:57 AM Joe Perches <joe@perches.com> wrote:
> > > +#if __has_feature(shadow_call_stack)
> > > +# define __noscs     __attribute__((no_sanitize("shadow-call-stack")))
> >
> > __no_sanitize__
>
> Sorry, I missed your earlier message about this. I'm following Clang's
> documentation for the attribute:
>
>
> https://clang.llvm.org/docs/ShadowCallStack.html#attribute-no-sanitize-shadow-call-stack
>
> Although __no_sanitize__ seems to work too. Is there a particular
> reason to prefer that form over the one in the documentation?


We decided to do it like that when I introduced compiler_attributes.h.

Given it is hidden behind a definition, we don't care about which one we
use internally; therefore the idea was to avoid clashes as much as possible
with other names/definitions/etc.

The syntax is supported in the compilers we care about (for docs on
attributes, the best reference is GCC's by the way).

Cheers,
Miguel


-- 
Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAhKvdzzN7v1tNontCQ%40mail.gmail.com.

--000000000000ca982d0595fa30e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Sami,</div><div dir=3D"auto"><br></div><div>On Mon, 28=
 Oct 2019 at 16:20 Sami Tolvanen &lt;<a href=3D"mailto:samitolvanen@google.=
com">samitolvanen@google.com</a>&gt; wrote:<br></div><div><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hi Joe,<br>
<br>
On Sat, Oct 26, 2019 at 8:57 AM Joe Perches &lt;<a href=3D"mailto:joe@perch=
es.com" target=3D"_blank">joe@perches.com</a>&gt; wrote:<br>
&gt; &gt; +#if __has_feature(shadow_call_stack)<br>
&gt; &gt; +# define __noscs=C2=A0 =C2=A0 =C2=A0__attribute__((no_sanitize(&=
quot;shadow-call-stack&quot;)))<br>
&gt;<br>
&gt; __no_sanitize__<br>
<br>
Sorry, I missed your earlier message about this. I&#39;m following Clang&#3=
9;s<br>
documentation for the attribute:<br>
<br>
<a href=3D"https://clang.llvm.org/docs/ShadowCallStack.html#attribute-no-sa=
nitize-shadow-call-stack" rel=3D"noreferrer" target=3D"_blank">https://clan=
g.llvm.org/docs/ShadowCallStack.html#attribute-no-sanitize-shadow-call-stac=
k</a><br>
<br>
Although __no_sanitize__ seems to work too. Is there a particular<br>
reason to prefer that form over the one in the documentation?</blockquote><=
div dir=3D"auto"><br></div><div dir=3D"auto">We decided to do it like that =
when I introduced compiler_attributes.h.</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Given it is hidden behind a definition, we don&#39;t care =
about which one we use internally; therefore the idea was to avoid clashes =
as much as possible with other names/definitions/etc.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">The syntax is supported in the compilers we c=
are about (for docs on attributes, the best reference is GCC&#39;s by the w=
ay).</div><div dir=3D"auto"><br></div><div dir=3D"auto">Cheers,</div><div d=
ir=3D"auto">Miguel</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><=
/div></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature">Cheers,<br>Miguel</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAhKvdzzN7v1tN=
ontCQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAh=
KvdzzN7v1tNontCQ%40mail.gmail.com</a>.<br />

--000000000000ca982d0595fa30e4--
