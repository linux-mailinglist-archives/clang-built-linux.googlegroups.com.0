Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHUKYP2AKGQE5AOY3YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 699581A4A31
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 21:12:32 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id m19sf2521947oie.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 12:12:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586545951; cv=pass;
        d=google.com; s=arc-20160816;
        b=oxhstzk6LaHd0HNIS5IJqjmQtUWDNpjce+FfUqbRqrfGYYngdqFNL/u6tQivU/VmV6
         zyS9+22W5KQdLh2hfU4Tnj+2sTAeqMzA5yVg3kPkQTJeqduH1RxBn2/lTGUzcVsreckf
         Zp5BFHa14itg3unbXVP4O3gAKRTsCErgXI7QdZE5AGIsRKKF5/MF7wjaxgJnT8O7Nrq7
         DOvBLMb0FhpCq5AP8XaIkYifrzrBq4l3jlj4op7GC32NLbkEAybb379cy4tC4UDLqVhN
         RMEv7eG9a+XyugwvVXTBM9cBERQpRdjopYTolAYkJWABwPo1sH/MI8NtvCgTMUdMRtix
         yOEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rWOCSmWtlLRPW33Be3NfJ8CDv235Z04X8SZLvhSAClw=;
        b=Ep8qxGQL/EvYoXtaFmKqpCKUwnhnkwJ94OmUeYFi0nEHomhn/tbVtpOMKYTLdY04AU
         /gwOiSMyx1jAkVKvMF93Vhno/ZXwk+fkb/K/bB7lSfMtSPbhJJ4AATt9eUVCcNQjDRo+
         ZcfOZSYArx6pwU+nRnqltXGyzOULcJvYuDhgKQS3uQfAEm0eLjPGk6P5BWrngi5jeJ7b
         VWo9FY4pA8R6MwTY83RWOD7M7AtHVHeDiKbgnIZQcyYQzXRPdFz/J+d5pPFC6/0PlLwL
         In7y3Ydgfw3PoKHLXrju1FlFmPkK6PK4j9tsH2YviCFdhaFq30vxKRumjq+LctuEdaMf
         yzQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H+d2DRuC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rWOCSmWtlLRPW33Be3NfJ8CDv235Z04X8SZLvhSAClw=;
        b=Az/dCCXG25ZO7Hq9fEdUbbbjok0ZFFO48ajn8lybIaC55ZYtgMSNhSWMJIDniWfPdQ
         vq6ozLIsxNOhm0B9OFRxeia2aX5bfTIi3sdxf4OLbsbp5o9OU8CmstUO46fV0VDM/XLk
         MQy/feVwRFwW1YscD3B8XDnR096Vp1QNU3LCKv6kq1cAzoLTJ3RjPuwnvV5yvA/BIbSa
         KXPfx07VlUFEABFx9oEfabUcKwY+J+nH3hICIG8CPmUeue2Z/nFPxQMySfigJlM0nlwu
         zjE+gFs9llCYUID4a3jxCS41L/scHOjIh5+hzCVyKyYMDPBxRyU+krWqnHsokvnnXabQ
         Hh3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rWOCSmWtlLRPW33Be3NfJ8CDv235Z04X8SZLvhSAClw=;
        b=K+hdXePbDazwfHRcuWHOoLUAkLEHQd4/MwgSHOf3WeZgsHmaUdLOpKhvA7b71+Xp7C
         lzkC77Nuidi3WSqECt0NLE48Ng1eFxRNPFeGsZcgSZskyCvTkOBbNRCPX5nP6W+91fJC
         hFW0XLtKwV1bJcY2znTC9c3I7HV/hrUn9KzluuWghP5tsUeYBVJCr4/haIdU/wG8CFUh
         9qYjs8HoT1fmdlMoSH0Z3/EA8eB2iBAIB4Ln1ifEy+wSubZbsCjju9h8QzZob73Nn2i+
         rM+7eQS4M1zvcatGEPLgMt0Gg/X3P28YjazraBFJoxkiNPaEwEV41a2yGoVmN68xFr2R
         nSnA==
X-Gm-Message-State: AGi0PubYjzagjDhfS5Mfpuk/9klI2c6FVIolxi1X4PR82otpy38dFj51
	xYXHObxtP4Aa2m4ypyOrI/g=
X-Google-Smtp-Source: APiQypLKepHUk8+h1K82hItYwqrAiM/FjkeSj98O88bqDHFyudgDG+vFSM9i5Icd/2RB8LEFH2sBhA==
X-Received: by 2002:a9d:6413:: with SMTP id h19mr2851140otl.203.1586545950839;
        Fri, 10 Apr 2020 12:12:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls5854834oia.0.gmail; Fri, 10 Apr
 2020 12:12:30 -0700 (PDT)
X-Received: by 2002:a54:4482:: with SMTP id v2mr4486878oiv.114.1586545950396;
        Fri, 10 Apr 2020 12:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586545950; cv=none;
        d=google.com; s=arc-20160816;
        b=ttnvOxwAV0E4j/xsCLejK1l2NS3Nfen5ieNoCvlA7KyqdBceUgc3wR4pqH3sXZYn/c
         wn0hmrsCqmoTENaz6N8gQj5ttHew3WU+Qqbe+7OZucvCzI17+sWVGXl3VChTmDjqyw2I
         YcPdqw9B+UdJJqM4OCYIZamyDeAREH0nWWrcIkMFegz7x4cBBR/S0LyWabUEwUoi3+Y9
         pajmXczE+9D22wNjtcOCSv1x5wbLS4lkdMl9LHnYCmF5Yk6IWAxveROIYTfrNkLEdzUB
         J4fxC4OwX21KjNjAjClQJgqKjb5BrCj9wy0P9GHxXUAj2JRS9M2T3Nbqsrjs5MiebaGo
         Jn1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3NQtoOnuEyxQY/FXT5lwephyBfBpFPfFqIghUX3xTuc=;
        b=h41vg9zb914xUVoDkFLg1sjyxqFT45nAX0/pXWo/tT9IJZXPPthUvDUXujADH4z0wm
         jr4t/8+QL1ncwSAe/IJDNIc75VXIhIQmdsLxg/p4XdtVfY/KqG/OwWEUaye5HRpbBTK/
         jhEbMLDOzbxjvG9g1JLlqlUJmlUOyscY2nbevHnpQF6RFNUEYl0kLCEy3B3W3IibMN/8
         D3YK8JzPHUyU1/yB/gjiTHZZCLvyq6P8mrIgYFultW9f6IkE4fD/faM35iLS/NNuK4r8
         JPLqiFvo9D5TgQIaS1JdZ1tnxma+WHaVBJrMJEdU/FAPsWyM8KzHA1kTNmgnLemP4AbO
         4oeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H+d2DRuC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e21si143796oob.1.2020.04.10.12.12.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2020 12:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id c21so1411311pfo.5
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 12:12:30 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr5543148pgc.381.1586545949327;
 Fri, 10 Apr 2020 12:12:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200325231250.99205-1-ndesaulniers@google.com>
 <CAKwvOdm8tQaa6BW7EQAz4TxFZETnJCS3z9isY4HvcU7UYqWZUA@mail.gmail.com>
 <20200403222458.GA49554@ubuntu-m2-xlarge-x86> <20200404004020.jilng63qqyccbgke@google.com>
In-Reply-To: <20200404004020.jilng63qqyccbgke@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 10 Apr 2020 12:12:18 -0700
Message-ID: <CAKwvOdkjJWDcN1bNJtcGjNJ0KStRH0Lk+Ge7wEU4gxXPDWQ_PQ@mail.gmail.com>
Subject: Re: [PATCH] elfnote: mark all .note sections SHF_ALLOC
To: Thomas Gleixner <tglx@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, LKML <linux-kernel@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H+d2DRuC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

(bumping for review)

On Fri, Apr 3, 2020 at 5:40 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-04-03, Nathan Chancellor wrote:
> >On Fri, Apr 03, 2020 at 03:13:34PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> >> dropping Jeremy; I got bounceback from the email address. Ping for review?
> >>
> >> On Wed, Mar 25, 2020 at 4:13 PM Nick Desaulniers
> >> <ndesaulniers@google.com> wrote:
> >> >
> >> > ELFNOTE_START allows callers to specify flags for .pushsection assembler
> >> > directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC. For
> >> > vdso's that explicitly use ELF_NOTE_START and BUILD_SALT, the same
> >> > section is specified twice after preprocessing, once with "a" flag, once
> >> > without. Example:
> >> >
> >> > .pushsection .note.Linux, "a", @note ;
> >> > .pushsection .note.Linux, "", @note ;
> >> >
> >> > While GNU as allows this ordering, it warns for the opposite ordering,
> >> > making these directives position dependent. We'd prefer not to precisely
> >> > match this behavior in Clang's integrated assembler.  Instead, the non
> >> > __ASSEMBLY__ definition of ELF_NOTE uses
> >> > __attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
> >> > so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
> >> > and just always use "a" flag.
> >> >
> >> > This allows Clang to assemble a working mainline (5.6) kernel via:
> >> > $ make CC=clang AS=clang
> >> >
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/913
> >> > Cc: Jeremy Fitzhardinge <jeremy@xensource.com>
> >> > Debugged-by: Ilie Halip <ilie.halip@gmail.com>
> >> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> >Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> I asked on binutils@sourceware.org whether GNU as is willing to change.
> https://sourceware.org/pipermail/binutils/2020-March/109997.html
> I'll also ping that thread.
>
>
> Reviewed-by: Fangrui Song <maskray@google.com>
>
> >> > ---
> >> > Ilie has further treewide cleanups:
> >> > https://github.com/ihalip/linux/commits/elfnote
> >> > This patch is the simplest to move us forwards.
> >> >
> >> >  include/linux/elfnote.h | 2 +-
> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
> >> > index 594d4e78654f..69b136e4dd2b 100644
> >> > --- a/include/linux/elfnote.h
> >> > +++ b/include/linux/elfnote.h
> >> > @@ -54,7 +54,7 @@
> >> >  .popsection                            ;
> >> >
> >> >  #define ELFNOTE(name, type, desc)              \
> >> > -       ELFNOTE_START(name, type, "")           \
> >> > +       ELFNOTE_START(name, type, "a")          \
> >> >                 desc                    ;       \
> >> >         ELFNOTE_END
> >> >
> >> > --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkjJWDcN1bNJtcGjNJ0KStRH0Lk%2BGe7wEU4gxXPDWQ_PQ%40mail.gmail.com.
