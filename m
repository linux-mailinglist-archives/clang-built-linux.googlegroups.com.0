Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBWXH32EAMGQEXJZSWEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6209A3EC28A
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 14:15:23 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id v25-20020a2e2f190000b029019bb571862dsf3896950ljv.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 05:15:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628943323; cv=pass;
        d=google.com; s=arc-20160816;
        b=TLRxvV0PYA/DW2/HoVgZiHefhuE0+29+cSe9QWLNTcH4m923G8xw98sFXLWoN04+b7
         e9Wxthod/H1eVmJa/6yElZuk+HU++zQd3lnqyy08N5JOprg8VJCyd6XmPr5swy+M3e7s
         cb4BooRULYgE+2RN1fyc+Y4HZAJvBbMHLVN3LRdRDZhg7VoiQgvR250qxSgg/tv7T9Pp
         cBl6odfzoPWJAnXK7fvW2Iy6qKc5H6v1w1GaF+9fg2ITQ1MKAnlPbtrufkkLQCjICtKp
         bIljv+bo12YZvwJyV//qmyTQv72SRgIxWv7FzozxUJQWtTV4ZOCoAFkCm7mvoEuyvVZX
         9S9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kLZ/EtI9o4KZjPsM2qbrWcpc+A84RSZaRh/Lrsso2XI=;
        b=d2oy70vpqSewq2phc5trzZfgZ9v+98y0ztXf4H5kuAPkuGywtu0xpXWsXj42+qdkeO
         tW+NT97DnqHxe6E+fAUFeSp3jkaKAP7Ncq13JKVvNIPXvVQe53jKbGdnJzxaqGRjU+MI
         X9rYQoDbFQFyS9U8rKX1eCkc8uUXCCCFApXplNP1Xdc0Aw3Tv/tQKzBT4yPRczF+93+C
         HXsgdeDutBFcqIIWUpUbSQ/9cJTLTpR9iMYT3ezOfdsKwhi42oK2OMLizlPwmXQyQoh+
         p94B/LFlMsp0RAsIiB2z3iaSbeV2KxpaJ0kF+efxQX8Y6AGPVvDQbXUB63k/BkCF2kMF
         C+Zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q4cdUOVW;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kLZ/EtI9o4KZjPsM2qbrWcpc+A84RSZaRh/Lrsso2XI=;
        b=VqU8eqKANWNV/B4/qQqOntBy4UKNrSbl0XVpWYj04s3Ld73ZKckAMTXaBm2TZnKRkO
         UAYCXcYvkLmg+PJpVWktwNhD3jC47pf+TnMppEr3oyTVHmR2CGJt/khDvf2nUzgrWW1l
         0ZSCFeVUu2RiVpmrfONN2Pq/pFJc0ECtY7fSa1tCAd6nUL5QwhZUFBolZ+PuNJEXkQIi
         TvxwoqQRpaUzKEE6zYFob3u9CPtmkuvniCpKiHM0pmwyDRkeBochrLCTeenJBcbe9bnb
         oUxmQ+L+XSajumVqDz+DKqhVdK9mDqWdTeCsGJlKN3fHecfiQHQPBdoUg5wsbLbqzGBl
         g6zA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kLZ/EtI9o4KZjPsM2qbrWcpc+A84RSZaRh/Lrsso2XI=;
        b=Gv7kVoI7fepTpLFR+bPWHfmAQy7PU1lDh5H1bu5Gog1GUvEmyg1/d4EJQd76ZijT6V
         oMiea9nVh4NN+JQ7EAblippVc+ZH5cTTmkxRMXw7OCOsZ2jbusfqpUMUUpmtjAbf5akv
         nn2+uw5cmvQDbRlcqckVhmy/qEcJDo2v16cTUkiw8x2Wgh256TkWJhmRrF7WS3rNSw6a
         9xqxzCiYzo2iSk7ToOKn8V3Ru49x2koNuzNIRKpOts1WsMbZuB1G/k743G+Bu+KBho/q
         P3UHLFudTZGDGEBGxlp+8IyxCEpfmYpaattiecL3VHKNkeSZZtFnqpg/jqB5JCC7tkrO
         OEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kLZ/EtI9o4KZjPsM2qbrWcpc+A84RSZaRh/Lrsso2XI=;
        b=WQO+juHCp2jL0rRMH2mYI8zZlRYAF8NOvHVdeChgn/sYJmWHCQzkqFbtbj2JGwOh+E
         e+9idu8LgJcZSNU4eMlr6/dceppT6uL89noo81S6V1SOhM69wG6XuwR0RtmkOCtWPigT
         EZTtG2yMes6CcKnZZt1K8aMPTPtLtmb+8ULeVOQVQct8ob8buzbFhcDBLcniDkif/1CD
         6qk3NA14U2j7nB3NYoWSklgxBIzQy3BMnCKgmzVwe4jE6bmK8SfIXzjW9nnhbRNLf4Xa
         n0nUDKT4KSH/V8A0BdEF87caFynDTvfK2v/rowPZYv8m1WJTYOEPghv85wmv/QExq1pE
         xBAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bRpuTueF/ew+FcUIi/UC7dQUHqhzO0WgR6T3hise/XeyMk40N
	5iE+0CKO9q6skAGcPXS+d8A=
X-Google-Smtp-Source: ABdhPJxWYt1YqR0vyl6RARGSkdQDvjZAVcDKztCFjRGjWdF566I2lRXkdA5pePM3KMB5z5ybk3IoHQ==
X-Received: by 2002:a05:6512:3c9c:: with SMTP id h28mr4928885lfv.7.1628943322815;
        Sat, 14 Aug 2021 05:15:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls675839ljq.3.gmail; Sat, 14
 Aug 2021 05:15:21 -0700 (PDT)
X-Received: by 2002:a2e:8e62:: with SMTP id t2mr5377445ljk.477.1628943321848;
        Sat, 14 Aug 2021 05:15:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628943321; cv=none;
        d=google.com; s=arc-20160816;
        b=nfBNKI1n+WS3KsKp5YfBLllJLXYne0LbsyEAOpohK4+CSlThInRyNHcSah650UiJaS
         dyDV+ocdFazORQmBvQO0Jw9yeCb/SOC7tvrxI5DtMcT2UQSZhoKyLZr+d+8twCvRK5yw
         ILpcSyLBGYuy2T3/IGKgKN9CQxyQ+4T7HCQcjhwsabIkw+ee8Aos9Gpq3zxkCPtnDlGd
         Rz681HxcefEJU588RlLrhphpDHiZHf1ZRPMNNskevsrr9OjKcckYvrPJb9okfZAANpjZ
         U7LIrhXuK2gXjHUslIHEQxcoia6TRbOcjDFz6Dse7PpLop9qA4u2qPgelynYaHU+EKDK
         9JFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6xH4+wad8SY6UvYHBVuUN3m2CgUddoKpHqr+9P6lAjc=;
        b=w6cGj4tp37CW+VtK0+pDCOiaZPehKpri3oBwBlioYsO1oUhD8yyv4UJaFHIvdA6NUC
         Rjx4HWJxi1yJB1DsE63vG+dfaQ5OskP52dBl2w9RJ1WTy7ZBavaU3Vrvrami8s8gjQGg
         Z5hZCFjUDU2WljeHruCk63ZMgvOLgvJYkyisUzF0r6rJeGk0QD8XYAZzX9fvF49kib07
         e0zWy1vECi/ACwr6GIcDdrU7qx1x9DN9ZVJwh7xaJD5QWynMjOwnFeWYlf1LH6QnNisz
         ouCRJsuZDZ1zYoBksdOzrDZrUbTygjkdF9RhnFdwkoe0DAgW95GA61VKtJKnTm8zT3SQ
         ONFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q4cdUOVW;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id h11si257879lfc.4.2021.08.14.05.15.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 05:15:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Received: by mail-wm1-x32e.google.com with SMTP id f12-20020a05600c4e8c00b002e6bdd6ffe2so5736900wmq.5
        for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 05:15:21 -0700 (PDT)
X-Received: by 2002:a7b:c354:: with SMTP id l20mr7091891wmj.159.1628943321084;
        Sat, 14 Aug 2021 05:15:21 -0700 (PDT)
Received: from pswork (187-64-142-46.pool.kielnet.net. [46.142.64.187])
        by smtp.gmail.com with ESMTPSA id i14sm3996907wmq.40.2021.08.14.05.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Aug 2021 05:15:20 -0700 (PDT)
Date: Sat, 14 Aug 2021 14:15:19 +0200
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jessica Yu <jeyu@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Miroslav Benes <mbenes@suse.cz>, Stephen Boyd <swboyd@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4] kallsyms: strip CLANG CFI postfix ".cfi_jt"
Message-ID: <20210814121519.GA5871@pswork>
References: <CABCJKuei==gaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w@mail.gmail.com>
 <20210805232741.9501-1-treasure4paddy@gmail.com>
 <CABCJKue6dYBYTJtyX6oE8Lq1LVHcS+vq+Z4cRE2-Tut8GRHjPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKue6dYBYTJtyX6oE8Lq1LVHcS+vq+Z4cRE2-Tut8GRHjPQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q4cdUOVW;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
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

On Thu, Aug 12, 2021 at 04:05:25PM -0700, Sami Tolvanen wrote:
> On Thu, Aug 5, 2021 at 4:28 PM Padmanabha Srinivasaiah
> <treasure4paddy@gmail.com> wrote:
> >
> > Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
> > For e.g. this breaks syscall tracer that doesn't expect such postfix,
> > so strip out the postfix from the expanded symbol.
> >
> > Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
> > ---
> > Change in v4:
> >   - Remove redundant check; irrespective of LTO type (THIN/FULL),
> >     LTO_CLANG will be always enabled. Hence will be used as entry flag
> >     to check various postfix patterns.
> >   - And prior to stripping postfix ".cfi_jt", added a comment to
> >     justify why we are doing so.
> >
> > Change in v3:
> >   - Modified commit message to indicate fix is for Clang CFI postfix
> >   - Rebased on recent patch from ndesaulniers@google.com.
> >     https://lore.kernel.org/lkml/
> >         20210707181814.365496-1-ndesaulniers@google.com/#t
> >   - Fix is enabled even for CONFIG_LTO_CLANG
> >
> > Change in v2:
> >   - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
> >     extern function name.
> >   - Modified the commit message accordingly
> >
> >  kernel/kallsyms.c | 23 ++++++++++++++++++-----
> >  1 file changed, 18 insertions(+), 5 deletions(-)
> >
> > diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> > index 5cabe4dd3ff4..1b40bcf20fe6 100644
> > --- a/kernel/kallsyms.c
> > +++ b/kernel/kallsyms.c
> > @@ -174,13 +174,15 @@ static bool cleanup_symbol_name(char *s)
> >          * foo.llvm.974640843467629774. This can break hooking of static
> >          * functions with kprobes.
> >          */
> > -       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> > +       if (!IS_ENABLED(CONFIG_LTO_CLANG))
> >                 return false;
> >
> > -       res = strstr(s, ".llvm.");
> > -       if (res) {
> > -               *res = '\0';
> > -               return true;
> > +       if (IS_ENABLED(CONFIG_LTO_CLANG_THIN)) {
> > +               res = strstr(s, ".llvm.");
> > +               if (res) {
> > +                       *res = '\0';
> > +                       return true;
> > +               }
> >         }
> 
> I confirmed that LLVM renames these also with full LTO, so the config
> check can be dropped here.
>
Thank you sami for the input I missread your earlier review commit, will
re-genrate the patch

> >
> >         /*
> > @@ -194,6 +196,17 @@ static bool cleanup_symbol_name(char *s)
> >                 return false;
> >
> >         res = strrchr(s, '$');
> > +       if (!res) {
> > +               /*
> > +                * In case of non static function symbol <funcsym>,
> > +                * the local jump table will have entry as <funcsym>.cfi_jt.
> > +                *
> > +                * Such expansion breaks some built-in components,
> > +                * e.g. syscall tracer. Hence remove postfix ".cfi_jt".
> > +                */
> > +               res = strstr(s, ".cfi_jt");
> > +       }
> > +
> >         if (res) {
> >                 *res = '\0';
> >                 return true;
> 
> Otherwise, the logic looks pretty good to me. Nick, are you planning
> to resend your earlier patch? Should this be just folded into the next
> version?
> 
> Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210814121519.GA5871%40pswork.
