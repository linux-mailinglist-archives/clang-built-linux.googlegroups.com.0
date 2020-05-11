Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBI5L432QKGQEOCSVQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CFA1CE258
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 20:12:51 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id c20sf1395319lji.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 11:12:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589220771; cv=pass;
        d=google.com; s=arc-20160816;
        b=I3OdGGBnIBdnKm6aM82WhXy+2mjhqDLQIueG6zStKQ0VDpxq3DPJaSWXL2NZqMPOZo
         Nbd6OcXrdcrsI1FLWUeh1nqkhKRg3MUZmvYh6Ows3BqW0tIqHemx/fhi8KoUm/OT49uH
         QRNCHwaQ/TfJwA/iiIPx/3lvxtUDroe4aP74FQ9TNSQ9F7hO9aiH0WCU9DD0LPwrMYNB
         VE0KcIvZYHFsx94oRxI3WRCESfDdRPR5y631Vtrkei2pF7HQhIiXaGGE1YNfoV96b5g/
         hKHnH/obHhsh0y5Zhv1tEYDeN47LRzEKB1Y1ACYP5BXK2f6PeXb5/qn9fT+dCtHZQEXF
         Q1wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=iGQYMP5hwBCt11T4DyxTV2xmJ+ZLpE1aXRuBYmBK6yU=;
        b=bxYm3QmW19WIrvbVGifLF18zH2CW+e4FJsMfyqWyC4kKhBaggwtUpwvUdI7yrsU0T/
         ciV9rLwUGy029etn925GYHFPVQUoS73jqp6oDz8jPuDQlGsgdIC1/kzxA6arMjibEnfC
         ORUvL5JkJDcNbXw2na1hHxthZyGBdR671wZPMG/AZBvnEeLNHO5YVmA0iL3nXMuYLWmL
         z6BV1L5fLCdtAoRKSim7qlYtlXt+w0MdQMC8fN50Bp/qH8Aqwj4I0nJ9DMWNzpumnFyJ
         ak+lisX9I2YZKO4T82qo+pomEvkc769wfq0MylPHrqhbcuobri14mb+DgxBn8tuvUn/n
         mG2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=bDQ3m7zI;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGQYMP5hwBCt11T4DyxTV2xmJ+ZLpE1aXRuBYmBK6yU=;
        b=RYL2V1vMW45eeXgqbPOU5YecRKzY+oBr8z8uU5CdnqrpH7cJmteO7JkFQ++isKL+mC
         U15o2z1FmJ0vQ3zWvrSV+gY5SnWb5UCphGIMBf8m+IgVrahYAVGayde2ykyHUZ9wFZvX
         UIG43R4fSPY92Lim7cSaNj7IXWc9YdoZR8a6/SISyYI9wwDiRWoMH6KPx1Y+qw5BZ/EX
         OJGb1sF35v1ES4qLQb4S0kie3e3yiqhlVQxp9dOEaMDUE/z9y1eZHK1J/kn/l08BxIqt
         x6m0sTU0DS/9cyCVYAUnUv6O38//iBOSyTthOmY31QKgY7/rQ6kXY3FKiQjeFwPsjwmA
         b5Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGQYMP5hwBCt11T4DyxTV2xmJ+ZLpE1aXRuBYmBK6yU=;
        b=ltYpgB9hAlHcGynyqDagKXk2aJZL9hdU0vWjV8nOa/wO4nTTCjct0q/50p69uvvvu+
         b6z/OFpqO5eRnO2PDXmYCQHlBEfwlXi9HISjhErIXTeJHPsrWjh8xzUIfVus5L7eSunv
         /jBzh22qXDdSMt1JXtCEtfhvcUHLBa0M26cIou/667/hgAnwAQf1QihythsztKH7bJ8B
         IRXmz9gtets2uWfZdwTNMoLA0l8AXsYZwfTwpTqcr635Kcj8ue2czxB8GTlLAeLBREZ1
         4uvTILiWU42oyuUZW6yOPB9LDXCkKhJKwg20xLfYXx5eZa8rV1lWxwbCYupvavzgcTL8
         lHLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OUMEDGxKVvtyZ9KfW0VeLPxPyurRr9B7FxJveUxlRSSWCtilE
	JyYpPPb0lcApZLyCT08/Y1M=
X-Google-Smtp-Source: ABdhPJzkKHt3fPSBU82X+G5U2kFU+npcA8A+B3kztTyoO4cl1aWwwXDpeXHcacGIYOdEysGm0SMbDQ==
X-Received: by 2002:a19:5518:: with SMTP id n24mr11883370lfe.61.1589220771125;
        Mon, 11 May 2020 11:12:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5eda:: with SMTP id d26ls112372lfq.3.gmail; Mon, 11 May
 2020 11:12:50 -0700 (PDT)
X-Received: by 2002:a05:6512:61b:: with SMTP id b27mr1194538lfe.207.1589220770362;
        Mon, 11 May 2020 11:12:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589220770; cv=none;
        d=google.com; s=arc-20160816;
        b=jfM7P447IMQ8ptVyCCtA3Kby6rRXFHYwbGMtyo9DYhWzlj7dQEHOgPFmw+ycQ8W45y
         tEL2VegZitGzyF02CYNpuaFq1EPR5b0bslZa5XtkKHJU1h0B1togCfVAsiFu/VEYmmfi
         63hsCE+irGxMwd00OxJRGMrNuTN3C+OW6OCIU+z6aSUWImTANbAJC2HgpUjgaZST/k/B
         0ULcr/VJWFES8uEGwLn6X6N43ILoSwLDfquAJuxiZxwmu2lF6ERJ9TSX347+56/eIkl+
         +VkGd7S3jOgKld9UA0E1HUfJNFArIC0J2ccIbXCcPJ2XdowzmPDDJjEZXrlkGy09rmhE
         eKdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Wr1ycv+siaolsKCvcq8pIOR365B5ZJOgX6Pl3lWLVLc=;
        b=DH8A9aneEMI9JSwuyaJ+6IDMHihN5ZZbZwahvd4/OpXBPet3HeariBfJdX3VeYGrBg
         OoYBWxmPzqhqWIDC/P/urBNPfdadxXSMfltrlNDz9CCKklrAm3dOerCvC9FE9eYjBYPJ
         RfRW8H+iNCZR9G/wkMEYobpMJ3X9sle4VFROR4mzUjLIgqFd8p2ZrNdajpxGjocBBwX6
         QAp6bWgtMQNCHg/xy7fuFwSC1zCsaBuHJZwM5P8V4w6Q475J7lRXgYlE6DQKg4IKh/Nu
         2JBeh4UfHTy6+mmwL9ql7OpdohmtIsVCawGmurZhPbbHtc5/iVqOPNgA84HVErcqTfd2
         Mpcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=bDQ3m7zI;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q9si594780lfo.4.2020.05.11.11.12.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:12:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id a21so10565173ljj.11
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:12:50 -0700 (PDT)
X-Received: by 2002:a2e:7e0b:: with SMTP id z11mr10770421ljc.284.1589220769886;
        Mon, 11 May 2020 11:12:49 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id r1sm10582188ljg.50.2020.05.11.11.12.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:12:49 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id 8so5612940lfp.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:12:49 -0700 (PDT)
X-Received: by 2002:ac2:47fb:: with SMTP id b27mr12159503lfp.10.1589220768686;
 Mon, 11 May 2020 11:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com> <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
In-Reply-To: <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 11 May 2020 11:12:32 -0700
X-Gmail-Original-Message-ID: <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com>
Message-ID: <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=bDQ3m7zI;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, May 11, 2020 at 10:24 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Bumping for comment+review.
>
> On Mon, May 4, 2020 at 4:03 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > -                   : "qi" ((pto_T__)(val)));           \
> > +                   : "qi" ((unsigned char)(unsigned long)(val))); \

I find the extra casts really annoying and illogical.

I kind of see why they happen: just casting to 'unsigned char' can
cause warnings, when this case isn't even taken, and the sizeof(var)
is something else (and you cast a pointer to a char without going
through the 'unsigned long' first.

But that doesn't make this change any more sensible or readable.

Would using "__builtin_choose_expr()" be able to avoid this whole issue?

Because I'd rather re-write the whole thing with a different model
that doesn't have this issue, than make the code look insane.

And it does look insane, because that whole thing makes for a very
natural question: "why do we cast to unsigned long and then to char,
when we just checked that the size of the type is 1"?

                 Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwif%3D_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ%40mail.gmail.com.
